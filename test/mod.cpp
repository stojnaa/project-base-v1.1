#include "mod.hpp"
#include "printing.hpp"
#include "../h/syscall_c.hpp"

static sem_t printMutex;

struct Arg {
    char name;
};
static void busyWait() {
    for (int i = 0; i < 20; i++) {
        for (volatile int j = 0; j < 100000; j++) {
            // busy wait
        }
    }
}
static void work(void* arg) {
    Arg* data = (Arg*) arg;
    for (int i = 0; i < 10; i++) {
        busyWait();
        sem_wait(printMutex);
        int id = getThreadId();
        putc(data->name);
        printString("\n");
        printInt(id);
        printString("\n");
        sem_signal(printMutex);
    }
}

void mod() {
    sem_open(&printMutex,1);
    thread_t threadA;
    thread_t threadB;
    thread_t threadC;
    Arg argA;
    Arg argB;
    Arg argC;
    argA.name = 'A';
    argB.name = 'B';
    argC.name = 'C';
    thread_create(&threadA, work, &argA);
    thread_create(&threadB, work, &argB);
    thread_create(&threadC, work, &argC);
    for (int i = 0; i < 3000; i++) {
        thread_dispatch();
    }
}