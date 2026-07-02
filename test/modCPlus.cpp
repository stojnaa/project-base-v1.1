#include "mod.hpp"
#include "printing.hpp"
#include "../h/syscall_cpp.hpp"

static Semaphore* cppPrintMutex;
static Semaphore* cppDoneSem;

static void cppBusyWait() {

    for (int i = 0; i < 1000 * 300; i++) {
    }
}

class MaxThreadWorker : public Thread {
public:
    MaxThreadWorker() : Thread() {}

    void run() override {
        int id = getThreadId();

        for (int i = 0; i < 5; i++) {
            cppPrintMutex->wait();

            printString("Thread id=");
            printInt(id);
            printString(": Hello! i=");
            printInt(i);
            printString("\n");

            cppPrintMutex->signal();

            cppBusyWait();
            Thread::dispatch();
        }

        cppDoneSem->signal();
    }
};

void modCplus() {
    printString("Max threads C++ API test started\n");

    Thread::setMaximumThreads(3);

    cppPrintMutex = new Semaphore(1);
    cppDoneSem = new Semaphore(0);

    Thread* threads[20];

    for (int i = 0; i < 20; i++) {
        threads[i] = new MaxThreadWorker();
        threads[i]->start();
    }

    for (int i = 0; i < 20; i++) {
        cppDoneSem->wait();
    }

    for (int i = 0; i < 20; i++) {
        delete threads[i];
    }

    delete cppPrintMutex;
    delete cppDoneSem;

    printString("Max threads C++ API test finished\n");
}