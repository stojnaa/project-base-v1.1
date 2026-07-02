#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"

static Semaphore* sem;

static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;
static volatile int waitingCount = 0;

class WorkerA : public Thread {
public:
    WorkerA() : Thread() {}

    void run() override {
        for (int i = 0; i < 5; i++) {
            printString("A: i=");
            printInt(i);
            printString("\n");
            Thread::dispatch();
        }

        printString("A waits on sem\n");
        waitingCount++;
        sem->wait();
        printString("A passed wait\n");
        sem->signal();

        printString("A finished\n");
        finishedA = true;
    }
};

class WorkerB : public Thread {
public:
    WorkerB() : Thread() {}

    void run() override {
        for (int i = 0; i < 5; i++) {
            printString("B: i=");
            printInt(i);
            printString("\n");
            Thread::dispatch();
        }

        printString("B waits on sem\n");
        waitingCount++;
        sem->wait();

        printString("B passed wait\n");
        sem->signal();

        printString("B finished\n");
        finishedB = true;
    }
};

class WorkerC : public Thread {
public:
    WorkerC() : Thread() {}

    void run() override {
        for (int i = 0; i < 5; i++) {
            printString("C: i=");
            printInt(i);
            printString("\n");
            Thread::dispatch();
        }

        printString("C waits on sem\n");
        waitingCount++;
        sem->wait();

        printString("C passed wait\n");
        sem->signal();

        printString("C finished\n");
        finishedC = true;
    }
};

class WorkerD : public Thread {
public:
    WorkerD() : Thread() {}

    void run() override {
        for (int i = 0; i < 5; i++) {
            printString("D: i=");
            printInt(i);
            printString("\n");
            Thread::dispatch();
        }

        printString("D waits on sem\n");
        waitingCount++;
        sem->wait();

        printString("D passed wait\n");
        sem->signal();

        printString("D finished\n");
        finishedD = true;
    }
};

void deadlockBreakTest() {
    printString("Deadlock break simple test started\n");

    sem = new Semaphore(0);

    Thread* threads[4];

    threads[0] = new WorkerA();
    threads[1] = new WorkerB();
    threads[2] = new WorkerC();
    threads[3] = new WorkerD();

    for (int i = 0; i < 4; i++) {
        threads[i]->start();
    }

    while (waitingCount < 4) {
        Thread::dispatch();
    }

    printString("Main also waits on sem\n");

    sem->wait();

    printString("Main passed wait\n");

    sem->signal();

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    }

    for (int i = 0; i < 4; i++) {
        delete threads[i];
    }

    delete sem;

    printString("Deadlock break simple test finished\n");
}