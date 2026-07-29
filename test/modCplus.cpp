#include "../h/syscall_cpp.hpp"
#include "printing.hpp"
#include "mod.hpp"

static volatile int finishedCountCpp = 0;

class Worker : public Thread {
public:
    Worker(char name, ThreadPriority priority) : Thread(priority), name(name) {}

    void run() override {
        for (int i = 0; i < 5; i++) {
            printString("CPP Thread ");
            putc(name);
            printString(" iteration ");
            printInt(i);
            printString("\n");

            for (uint64 j = 0; j < 10000; j++) {
                for (uint64 k = 0; k < 30000; k++) {
                    // busy wait
                }
            }

            Thread::dispatch();
        }

        printString("CPP Thread ");
        putc(name);
        printString(" finished\n");

        finishedCountCpp++;
    }

private:
    char name;
};

void modCplus() {
    finishedCountCpp = 0;

    Worker* threadA = new Worker('A', LOW);
    printString("CPP Thread A created with LOW priority\n");

    Worker* threadB = new Worker('B', MEDIUM);
    printString("CPP Thread B created with MEDIUM priority\n");

    Worker* threadC = new Worker('C', HIGH);
    printString("CPP Thread C created with HIGH priority\n");

    threadA->start();
    threadB->start();
    threadC->start();

    while (finishedCountCpp < 3) {
        Thread::dispatch();
    }

    printString("CPP API priority test finished\n");
}