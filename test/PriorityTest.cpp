#include "../h/syscall_cpp.hpp"
#include "printing.hpp"

static volatile bool highFinished = false;
static volatile bool mediumFinished = false;
static volatile bool lowFinished = false;
static volatile bool testFinished = false;

static void work(const char* name) {
    for (int i = 0; i < 5; i++) {
        printString(name);
        printString(": i=");
        printInt(i);
        printString("\n");

        Thread::dispatch();
    }
}

class HighThread : public Thread {
public:
    HighThread() : Thread(HIGH) {}

    void run() override {
        work("HIGH");
        highFinished = true;
    }
};

class MediumThread : public Thread {
public:
    MediumThread() : Thread(MEDIUM) {}

    void run() override {
        work("MEDIUM");
        mediumFinished = true;
    }
};

class LowThread : public Thread {
public:
    LowThread() : Thread(LOW) {}

    void run() override {
        work("LOW");
        lowFinished = true;
    }
};

class PriorityMainThread : public Thread {
public:
    PriorityMainThread() : Thread(LOW) {}

    void run() override {
        Thread* low = new LowThread();
        Thread* medium = new MediumThread();
        Thread* high = new HighThread();

        printString("Priority threads created\n");

        low->start();
        medium->start();
        high->start();

        while (!(highFinished && mediumFinished && lowFinished)) {
            Thread::dispatch();
        }

        delete low;
        delete medium;
        delete high;

        printString("PRIORITY TEST FINISHED\n");

        testFinished = true;
    }
};

void PriorityTest() {
    Thread* test = new PriorityMainThread();

    test->start();

    while (!testFinished) {
        Thread::dispatch();
    }

    delete test;
}