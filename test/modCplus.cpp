#include "mod.hpp"
#include "../h/syscall_cpp.hpp"
#include "printing.hpp"

static const int CPP_THREAD_COUNT = 50;
static const int CPP_ITERATIONS = 3;

static void busyWaitCpp(int id) {
    volatile int counter = 0;
    int limit = 1000 + id * 300;

    for (int i = 0; i < limit; i++) {
        counter++;
    }
}

class PriorityThreadCpp : public Thread {
public:
    PriorityThreadCpp(Semaphore* sharedSem, int id)
            : Thread(), sharedSem(sharedSem), id(id) {}

protected:
    void run() override {
        for (int i = 0; i < CPP_ITERATIONS; i++) {
            printString("CPP Thread ");
            printInt(id);
            printString(" trying to enter, iteration ");
            printInt(i);
            printString("\n");

            sharedSem->wait();

            printString(">>> CPP Thread ");
            printInt(id);
            printString(" ENTERED critical section, iteration ");
            printInt(i);
            printString("\n");

            busyWaitCpp(id);

            // Namerno dispatch unutar kriticne sekcije,
            // isto kao u C API testu.
            Thread::dispatch();

            busyWaitCpp(id);

            printString("<<< CPP Thread ");
            printInt(id);
            printString(" EXITED critical section, iteration ");
            printInt(i);
            printString("\n");

            sharedSem->signal();

            Thread::dispatch();
        }
    }

private:
    Semaphore* sharedSem;
    int id;
};

void modCplus() {
    printString("C++ API semaphore priority test started\n");

    Semaphore* sharedSem = new Semaphore(5);

    PriorityThreadCpp* threads[CPP_THREAD_COUNT];

    for (int i = 0; i < CPP_THREAD_COUNT; i++) {
        threads[i] = new PriorityThreadCpp(sharedSem, i);
        threads[i]->start();
    }

    // Nemamo join, pa main/userMain dosta puta prepusta procesor.
    for (int i = 0; i < 10000; i++) {
        Thread::dispatch();
    }

    for (int i = 0; i < CPP_THREAD_COUNT; i++) {
        delete threads[i];
    }

    delete sharedSem;

    printString("C++ API semaphore priority test finished\n");
}