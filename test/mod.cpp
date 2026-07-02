#include "mod.hpp"
#include  "printing.hpp"

Resource::Resource(int N) {
    available = N;
    head = nullptr;
    tail = nullptr;
    sem_open(&mutex,1);
}

void Resource::tryToUnblock() {
    while (head!= nullptr && available >= head->num) {
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
        available-=num;
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

    int ret = available;

    sem_signal(mutex);

    return ret;
}

struct ResourceThreadArg {
    Resource* resource;
    char name;
    int need;
    int work;
};

static void resourceBusyWait() {
    volatile int counter = 0;

    for (int i = 0; i < 3000; i++) {
        counter++;
    }
}

static void resourceWorker(void* arg) {
    ResourceThreadArg* threadArg = (ResourceThreadArg*) arg;

    for (int i = 0; i < 3; i++) {
        printString("Thread ");
        putc(threadArg->name);
        printString(" tries to take ");
        printInt(threadArg->need);
        printString(" resources, iteration ");
        printInt(i);
        printString("\n");

        threadArg->resource->take(threadArg->need);

        printString(">>> Thread ");
        putc(threadArg->name);
        printString(" ENTERED with ");
        printInt(threadArg->need);
        printString(" resources, iteration ");
        printInt(i);
        printString("\n");

        resourceBusyWait();

        thread_dispatch();

        resourceBusyWait();

        printString("<<< Thread ");
        putc(threadArg->name);
        printString(" EXITS and returns ");
        printInt(threadArg->need);
        printString(" resources, iteration ");
        printInt(i);
        printString("\n");

        threadArg->resource->give_back(threadArg->need);

        thread_dispatch();
    }

    printString("Thread ");
    putc(threadArg->name);
    printString(" finished\n");
}

void resourceTest() {
    printString("Resource test started\n");

    Resource resource(5);

    thread_t threads[6];

    ResourceThreadArg args[6];

    args[0].name = 'A';
    args[0].need = 3;

    args[1].name = 'B';
    args[1].need = 2;

    args[2].name = 'C';
    args[2].need = 4;

    args[3].name = 'D';
    args[3].need = 1;

    args[4].name = 'E';
    args[4].need = 5;

    args[5].name = 'F';
    args[5].need = 2;

    for (int i = 0; i < 6; i++) {
        args[i].resource = &resource;
        thread_create(&threads[i], resourceWorker, &args[i]);
    }

    for (int i = 0; i < 5000; i++) {
        thread_dispatch();
    }

    printString("Resource test finished\n");
}