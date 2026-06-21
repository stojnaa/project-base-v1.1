#include "../h/syscall_cpp.hpp"
#include "printing.hpp"
#include "ThreadJoinAllTest.hpp"

static volatile bool finishedA = false;

static volatile int nextB = 1;
static volatile int nextC = 1;

static void busyWait() {
    for (uint64 i = 0; i < 10000; i++) {
        for (uint64 j = 0; j < 30000; j++) {
            // busy wait
        }
        thread_dispatch();
    }
}

class CThread : public Thread {
private:
    int id;

public:
    CThread(int id) : Thread(), id(id) {}

    void run() override {
        printString("C");
        printInt(id);
        printString(" started\n");

        busyWait();

        printString("C");
        printInt(id);
        printString(" finished\n");
    }
};

class BThread : public Thread {
private:
    int id;

public:
    BThread(int id) : Thread(), id(id) {}

    void run() override {
        printString("B");
        printInt(id);
        printString(" started\n");

        CThread* c1 = new CThread(nextC++);
        CThread* c2 = new CThread(nextC++);
        CThread* c3 = new CThread(nextC++);

        c1->start();
        addChild(c1);

        c2->start();
        addChild(c2);

        c3->start();
        addChild(c3);

        printString("B");
        printInt(id);
        printString(" waiting for all children\n");

        joinAll();

        printString("B");
        printInt(id);
        printString(" continued after all children\n");

        delete c1;
        delete c2;
        delete c3;

        printString("B");
        printInt(id);
        printString(" finished\n");
    }
};

class AThread : public Thread {
public:
    AThread() : Thread() {}

    void run() override {
        printString("A started\n");

        BThread* b1 = new BThread(nextB++);
        BThread* b2 = new BThread(nextB++);
        BThread* b3 = new BThread(nextB++);

        CThread* c1 = new CThread(nextC++);

        b1->start();
        addChild(b1);

        b2->start();
        addChild(b2);

        b3->start();
        addChild(b3);

        c1->start();
        addChild(c1);

        printString("A waiting for all children\n");

        joinAll();

        printString("A continued after all children\n");

        delete b1;
        delete b2;
        delete b3;
        delete c1;

        printString("A finished\n");

        finishedA = true;
    }
};

void ThreadJoinAllTest() {
    AThread* a = new AThread();

    printString("A created\n");

    a->start();

    while (!finishedA) {
        Thread::dispatch();
    }

    delete a;

    printString("THREAD JOIN ALL TEST FINISHED\n");
}