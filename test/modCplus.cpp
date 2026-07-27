#include "printing.hpp"
#include "mod.hpp"
#include "../h/syscall_cpp.hpp"

static Thread* threads[3];

class A: public Thread {
public:
    A():Thread() {}

    void run() override {
        printString("Thread A started\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
        printString("A finished!\n");
    }
};
class B: public Thread {
public:
    B():Thread() {}

    void run() override {
        printString("Thread B started\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
        printString("B finished!\n");
    }
};
class C: public Thread {
public:
    C():Thread() {}

    void run() override {
        printString("Thread C started\n");
        printString("Thread C is waiting...\n");
        threads[0]->join();
        threads[1]->join();
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }

        }
        printString("C finished!\n");
    }
};

void mod() {
    threads[0] = new A();
    printString("ThreadA created\n");

    threads[1] = new B();
    printString("ThreadB created\n");

    threads[2] = new C();
    printString("ThreadC created\n");

    for(int i=0; i<3; i++) {
        threads[i]->start();
    }

    threads[2]->join();

    for (int i = 0; i < 3; i++) {
        delete threads[i];
    }
}
