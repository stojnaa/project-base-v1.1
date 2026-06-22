#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "printing.hpp"

static sem_t doneSem;
static sem_t printSem;

static void printBefore(const char* name, int id, int iteration) {
    sem_wait(printSem);

    printString(name);
    printString(" before sync, id = ");
    printInt(id);
    printString(", iteration = ");
    printInt(iteration);
    printString("\n");

    sem_signal(printSem);
}

static void printAfter(const char* name, int id, int iteration) {
    sem_wait(printSem);

    printString(name);
    printString(" after sync, id = ");
    printInt(id);
    printString(", iteration = ");
    printInt(iteration);
    printString("\n");

    sem_signal(printSem);
}

class PairThreadA : public Thread {
public:
    void run() override {
        int id = Thread::getThreadId();

        for (int i = 0; i < 3; i++) {
            printBefore("A", id, i);

            sync();

            printAfter("A", id, i);

            Thread::dispatch();
        }

        sem_signal(doneSem);
    }
};

class PairThreadB : public Thread {
public:
    void run() override {
        int id = Thread::getThreadId();

        for (int i = 0; i < 3; i++) {
            printBefore("B", id, i);

            sync();

            printAfter("B", id, i);

            Thread::dispatch();
        }

        sem_signal(doneSem);
    }
};

void ThreadPairTest() {
    sem_open(&doneSem, 0);
    sem_open(&printSem, 1);

    Thread* a = new PairThreadA();
    Thread* b = new PairThreadB();

    a->start();
    b->start();

    Thread::pair(a, b);

    sem_wait(doneSem);
    sem_wait(doneSem);

    delete a;
    delete b;

    sem_close(printSem);
    sem_close(doneSem);

    printString("THREAD PAIR TEST FINISHED\n");
}