#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "printing.hpp"

static sem_t doneSem;
static sem_t printSem;

static Thread* threadA;
static Thread* threadB;
static Thread* threadC;

static void safePrint(const char* text) {
    sem_wait(printSem);
    printString(text);
    sem_signal(printSem);
}

static void safePrintMessage(const char* who, char* msg) {
    sem_wait(printSem);

    printString(who);
    printString(msg);
    printString("\n");

    sem_signal(printSem);
}

class ThreadA : public Thread {
public:
    void run() override {
        threadB->send((char*)"A -> B: prva poruka od A");
        safePrint("A sent message to B\n");

        threadC->send((char*)"A -> C: druga poruka od A");
        safePrint("A sent message to C\n");

        char* msg = receive();
        safePrintMessage("A received: ", msg);

        sem_signal(doneSem);
    }
};

class ThreadB : public Thread {
public:
    void run() override {
        threadC->send((char*)"B -> C: prva poruka od B");
        safePrint("B sent first message to C\n");

        threadC->send((char*)"B -> C: druga poruka od B");
        safePrint("B sent second message to C\n");

        char* msg1 = receive();
        safePrintMessage("B received first: ", msg1);

        char* msg2 = receive();
        safePrintMessage("B received second: ", msg2);

        sem_signal(doneSem);
    }
};

class ThreadC : public Thread {
public:
    void run() override {
        char* msg1 = receive();
        safePrintMessage("C received first: ", msg1);

        char* msg2 = receive();
        safePrintMessage("C received second: ", msg2);

        char* msg3 = receive();
        safePrintMessage("C received third: ", msg3);

        threadB->send((char*)"C -> B: odgovor od C");
        safePrint("C sent message to B\n");

        threadA->send((char*)"C -> A: odgovor od C");
        safePrint("C sent message to A\n");

        sem_signal(doneSem);
    }
};

void MessageTest() {
    sem_open(&doneSem, 0);
    sem_open(&printSem, 1);

    threadA = new ThreadA();
    threadB = new ThreadB();
    threadC = new ThreadC();

    threadA->start();
    threadB->start();
    threadC->start();

    sem_wait(doneSem);
    sem_wait(doneSem);
    sem_wait(doneSem);

    delete threadA;
    delete threadB;
    delete threadC;

    sem_close(printSem);
    sem_close(doneSem);

    printString("MESSAGE TEST FINISHED\n");
}