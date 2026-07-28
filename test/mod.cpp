#include "mod.hpp"
#include  "printing.hpp"

Resource::Resource(int n) {
    available = n;
    head = nullptr;
    tail = nullptr;
    sem_open(&mutex, 1);
}

void Resource::tryToUnblock() {
    while (head != nullptr && available >= head->num) {
        Request* req = head;
        available -= req->num;
        head = head->next;
        if (head == nullptr) {
            tail = nullptr;
        }
        req->next = nullptr;
        sem_signal(req->ready);
    }
}

void Resource::take(int num) {
    if (num <= 0) {
        return;
    }
    sem_wait(mutex);
    if (head == nullptr && available >= num) {
        available -= num;
        printString("Resource take: thread took ");
        printInt(num);
        printString(" instances, remaining = ");
        printInt(available);
        printString("\n");

        sem_signal(mutex);
        return;
    }
    Request req;
    req.num = num;
    req.next = nullptr;
    sem_open(&req.ready, 0);
    if (head == nullptr) {
        head = &req;
        tail = &req;
    }else {
        tail->next = &req;
        tail = &req;
    }
    printString("Resource take: thread waits for ");
    printInt(num);
    printString(" instances, available = ");
    printInt(available);
    printString("\n");
    tryToUnblock();
    sem_signal(mutex);
    sem_wait(req.ready);
    sem_close(req.ready);
    printString("Resource take: thread got ");
    printInt(num);
    printString(" instances after waiting\n");
}

int Resource::give_back(int num) {
    if (num <= 0) {
        return available;
    }
    sem_wait(mutex);
    available += num;
    printString("Resource give_back: thread returned ");
    printInt(num);
    printString(" instances, available = ");
    printInt(available);
    printString("\n");
    tryToUnblock();
    int result = available;
    sem_signal(mutex);
    return result;
}
static Resource* resource;
static volatile int finishedCount = 0;
struct  Args{
    int need;
    int id;
};

static void worker(void* arg) {
    Args* data = (Args*)arg;

    printString("Thread ");
    printInt(data->id);
    printString(" requests ");
    printInt(data->need);
    printString(" instances\n");

    resource->take(data->need);

    for (uint64 i = 0; i < 10000; i++) {
        for (uint64 j = 0; j < 30000; j++) {
            // busy wait
        }

        thread_dispatch();
    }

    resource->give_back(data->need);

    printString("Thread ");
    printInt(data->id);
    printString(" finished\n");

    finishedCount++;
}

void resourceTest() {
    thread_t threads[3];
    Args args[3];

    finishedCount = 0;

    args[0].id = 0;
    args[0].need = 3;

    args[1].id = 1;
    args[1].need = 2;

    args[2].id = 2;
    args[2].need = 4;

    resource = new Resource(5);

    thread_create(&threads[0], worker, &args[0]);
    thread_create(&threads[1], worker, &args[1]);
    thread_create(&threads[2], worker, &args[2]);

    while (finishedCount < 3) {
        thread_dispatch();
    }

    printString("All resource threads finished\n");

    delete resource;
}