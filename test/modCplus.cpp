#include "../h/syscall_cpp.hpp"
#include "printing.hpp"
#include "mod.hpp"

#define THREAD_COUNT 10
#define ITERATIONS 3

static Semaphore* sharedSem;

static volatile int finishedCount = 0;

class Worker : public Thread {
private:
    int id;

public:
    Worker(int id) : Thread(), id(id) {}

    void run() override {
        for (int i = 0; i < ITERATIONS; i++) {
            sharedSem->wait();
            printString("Thread ");
            printInt(id);
            printString(" entered, iteration ");
            printInt(i);
            printString("\n");
            // Kritična sekcija – čekanje proporcionalno ID-u
            for (int j = 0; j < 1000 + id * 300; j++) {
                for (int k = 0; k < 1000; k++) {
                    // busy wait
                }

                Thread::dispatch();
            }

            printString("Thread ");
            printInt(id);
            printString(" exited, iteration ");
            printInt(i);
            printString("\n");
            sharedSem->signal();
        }

        finishedCount++;
    }
};

void modCplus() {
    Thread* threads[THREAD_COUNT];

    finishedCount = 0;

    sharedSem = new Semaphore(5);

    for (int i = 0; i < THREAD_COUNT; i++) {
        threads[i] = new Worker(i);
        threads[i]->start();
    }

    while (finishedCount < THREAD_COUNT) {
        Thread::dispatch();
    }

    printString("All threads finished!\n");

    for (int i = 0; i < THREAD_COUNT; i++) {
        delete threads[i];
    }

    delete sharedSem;
}