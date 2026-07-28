#include "../h/syscall_cpp.hpp"
#include "mod.hpp"
#include "printing.hpp"

static volatile int finishedCount = 0;
static  Thread* threads[4];
class Worker: public Thread {
    void workerBodyA(void* arg);
public:
    Worker(char name):Thread(), name(name) {}

    void run() override {
        for (int i = 0; i <= 10; i++) {
            printString("CPP Thread ");
            putc(name);
            printString(" iteration ");
            printInt(i);
            printString("\n");

            mem_alloc(1);

            if (name == 'C' && i == 5) {
                printString("CPP Thread C pings thread A\n");
                threads[0]->ping();
            }

            for (uint64 j = 0; j < 10000; j++) {
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
                thread_dispatch();
            }
        }

        printString("CPP Thread ");
        putc(name);
        printString(" finished\n");
        finishedCount++;
    }
private:
    char name;
};

void modCplus() {
    finishedCount = 0;

    threads[0] = new Worker('A');
    printString("ThreadA created\n");

    threads[1] = new Worker('B');
    printString("ThreadB created\n");

    threads[2] = new Worker('C');
    printString("ThreadC created\n");


    for(int i=0; i<3; i++) {
        threads[i]->start();
    }

    while (finishedCount < 3) {
        Thread::dispatch();
    }
}
