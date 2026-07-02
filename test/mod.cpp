#include "mod.hpp"
#include "../h/syscall_c.hpp"
#include "printing.hpp"

static const int THREAD_COUNT = 50;
static const int ITERATIONS = 3;

struct Data {
    sem_t sharedSem;
};
struct Args {
    Data* data;
    int id;
};
static void busyWait(int id) {
    int limit = 1000+id*300;
    for (int i = 0; i < limit; i++) {}
}

static void workerBodyA(void* arg) {
    Args* args = (Args*) arg;
    Data* data = (Data*) args->data;
    int id = args->id;
    for (int i = 0; i < ITERATIONS; i++) {
        printString("Thread ");
        printInt(id);
        printString(" trying to enter, iteration ");
        printInt(i);
        printString("\n");

        sem_wait(data->sharedSem);

        printString(">>> Thread ");
        printInt(id);
        printString(" ENTERED critical section, iteration ");
        printInt(i);
        printString("\n");
        busyWait(id);
        thread_dispatch();

        busyWait(id);

        printString("<<< Thread ");
        printInt(id);
        printString(" EXITED critical section, iteration ");
        printInt(i);
        printString("\n");

        sem_signal(data->sharedSem);

        thread_dispatch();
    }
}

void mod() {
    printString("Semaphore priority test started\n");
    Data data;
    sem_open(&data.sharedSem, 5);
    thread_t threads[THREAD_COUNT];
    Args args[THREAD_COUNT];
    for (int i = 0; i < THREAD_COUNT; i++) {
        args[i].data = &data;
        args[i].id = i;
        thread_create(&threads[i], workerBodyA, (void*) &args[i]);
    }
    for (int i = 0; i < 10000; i++) {
        thread_dispatch();
    }

    sem_close(data.sharedSem);

    printString("Semaphore priority test finished\n");
}
