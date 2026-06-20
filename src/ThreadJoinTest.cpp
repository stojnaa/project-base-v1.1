#include "../h/syscall_cpp.hpp"

#include "../test/printing.hpp"

static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;
static Thread* threads[3];

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

class JoinWorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    JoinWorkerA():Thread() {}

    void run() override {
        workerBodyA(nullptr);
    }
};

class JoinWorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    JoinWorkerB():Thread() {}

    void run() override {
        workerBodyB(nullptr);
    }
};

class JoinWorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    JoinWorkerC():Thread() {}

    void run() override {
        workerBodyC(nullptr);
    }
};

void JoinWorkerA::workerBodyA(void *arg) {
    for (uint64 i = 0; i < 10; i++) {
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            Thread::dispatch();
        }
    }
    printString("A finished!\n");
    finishedA = true;
}

void JoinWorkerB::workerBodyB(void *arg) {
    for (uint64 i = 0; i < 16; i++) {
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            Thread::dispatch();
        }
    }
    printString("B finished!\n");
    finishedB = true;
    Thread::dispatch();
}

void JoinWorkerC::workerBodyC(void *arg) {
    uint8 i = 0;
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    }

    printString("C: dispatch\n");
    __asm__ ("li t1, 7");
    Thread::dispatch();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    printString("C: t1="); printInt(t1); printString("\n");
    threads[0]->join();
    uint64 result = fibonacci(12);
    printString("C: fibonaci="); printInt(result); printString("\n");

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    }
    threads[1]->join();

    printString("C finished!\n");
    finishedC = true;
    Thread::dispatch();
}

void threadJoinTest() {
    finishedA = false;
    finishedB = false;
    finishedC = false;

    threads[0] = new JoinWorkerA();
    printString("ThreadA created\n");

    threads[1] = new JoinWorkerB();
    printString("ThreadB created\n");

    threads[2] = new JoinWorkerC();
    printString("ThreadC created\n");

    for(int i=0; i<3; i++) {
        threads[i]->start();
    }

    while (!(finishedA && finishedB && finishedC)) {
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
}
