#include "mod.hpp"
#include "printing.hpp"
#include "../h/syscall_cpp.hpp"

static Semaphore* printMutex;

static void busyWait() {
    for (int i = 0; i < 20; i++) {
        for (volatile int j = 0; j < 100000; j++) {
            // busy wait
        }
    }
}

class Worker_A : public Thread {
public:
    Worker_A() : Thread() {}

    void run() override {
        for (int i = 0; i < 10; i++) {
            busyWait();

            printMutex->wait();

            uint64 id = Thread::getThreadId();

            printString("Thread A, id = ");
            printInt(id);
            printString(", iteration = ");
            printInt(i);
            printString("\n");

            printMutex->signal();
        }
    }
};

class Worker_B : public Thread {
public:
    Worker_B() : Thread() {}

    void run() override {
        for (int i = 0; i < 10; i++) {
            busyWait();

            printMutex->wait();

            uint64 id = Thread::getThreadId();

            printString("Thread B, id = ");
            printInt(id);
            printString(", iteration = ");
            printInt(i);
            printString("\n");

            printMutex->signal();
        }
    }
};

class Worker_C : public Thread {
public:
    Worker_C() : Thread() {}

    void run() override {
        for (int i = 0; i < 10; i++) {
            busyWait();

            printMutex->wait();

            uint64 id = Thread::getThreadId();

            printString("Thread C, id = ");
            printInt(id);
            printString(", iteration = ");
            printInt(i);
            printString("\n");

            printMutex->signal();
        }
    }
};

void modC() {
    printString("C++ API getThreadId test started\n");

    printMutex = new Semaphore(1);

    Thread* threadA = new Worker_A();
    Thread* threadB = new Worker_B();
    Thread* threadC = new Worker_C();

    threadA->start();
    threadB->start();
    threadC->start();

    for (int i = 0; i < 3000; i++) {
        Thread::dispatch();
    }

    delete threadA;
    delete threadB;
    delete threadC;

    delete printMutex;

    printString("C++ API getThreadId test finished\n");
}