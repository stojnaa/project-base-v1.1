#include "mod.hpp"
#include "printing.hpp"
#include "../h/syscall_c.hpp"

static sem_t printMutex;
static sem_t doneSem;

static void busyWait() {
    for (int i = 0; i < 3000; i++) {
    }
}

static void worker(void* arg) {
    (void)arg;
    int id = getThreadId();
    for (int i = 0; i < 5; i++) {
        sem_wait(printMutex);
        printString("Thread id = ");
        printInt(id);
        printString(": Hello! i = ");
        printInt(i);
        printString("\n");
        sem_signal(printMutex);
        busyWait();
        thread_dispatch();
    }
    sem_signal(doneSem);
}

void modCAPI() {
    setMaximumThreads(3);
    sem_open(&printMutex, 1);
    sem_open(&doneSem, 0);
    thread_t threads[20];
    for (int i = 0; i < 20; i++) {
        thread_create(&threads[i], worker, nullptr);
    }
    for (int i = 0; i < 20; i++) {
        sem_wait(doneSem);
    }
}