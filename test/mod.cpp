#include "../h/syscall_c.hpp"
#include "printing.hpp"

static thread_t threadA = nullptr;
static thread_t threadB = nullptr;
static thread_t threadC = nullptr;

struct PingThreadArg {
    char name;
};

static void pingBusyWait(int value) {
    volatile int counter = 0;

    for (int i = 0; i < 1000 + value * 500; i++) {
        counter++;
    }
}

static void pingWorker(void* arg) {
    PingThreadArg* threadArg = (PingThreadArg*)arg;
    char name = threadArg->name;

    for (int i = 0; i <= 10; i++) {
        printString("Thread ");
        putc(name);
        printString(", iteration ");
        printInt(i);
        printString("\n");
        void* p = mem_alloc(64);
        (void)p;//da ne baci warning da se p nigde ne koristi

        if (name == 'C' && i == 5) {
            printString("Thread C pings thread A\n");
            ping(threadA);
        }

        pingBusyWait(i);

        thread_dispatch();
    }

    printString("Thread ");
    putc(name);
    printString(" finished\n");
}

void mod() {
    printString("PING test started\n");

    PingThreadArg argA;
    PingThreadArg argB;
    PingThreadArg argC;

    argA.name = 'A';
    argB.name = 'B';
    argC.name = 'C';

    thread_create(&threadA, pingWorker, &argA);
    thread_create(&threadB, pingWorker, &argB);
    thread_create(&threadC, pingWorker, &argC);

    for (int i = 0; i < 1000; i++) {
        thread_dispatch();
    }

    printString("PING test finished\n");
}