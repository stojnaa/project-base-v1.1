
#include "../h/syscall_c.h"
#include "mod.hpp"

#include "printing.hpp"

static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
sem_t mutex;

static void threadA(void* arg) {
    for (int i = 0; i < 10; i++)
    {
        sem_wait(mutex);
        printString("ThreadA, id =");
        printInt(getThreadId());
        printString("\n");
        sem_signal(mutex);
        for (int j = 0; j < 10000; j++)
        {
            for (int k = 0; k < 30000; k++){}
        }
    }
    printString("A finished!\n");
    finishedA = true;
}
static void threadB(void* arg) {
    for (int i = 0; i < 10; i++)
    {
        sem_wait(mutex);
        printString("ThreadB, id =");
        printInt(getThreadId());
        printString("\n");
        sem_signal(mutex);
        for (int j = 0; j < 10000; j++)
        {
            for (int k = 0; k < 30000; k++){}
        }
    }
    printString("B finished!\n");
    finishedB = true;
}
static void threadC(void* arg) {
    for (int i = 0; i < 10; i++)
    {
        sem_wait(mutex);
        printString("ThreadC, id =");
        printInt(getThreadId());
        printString("\n");
        sem_signal(mutex);
        for (int j = 0; j < 10000; j++)
        {
            for (int k = 0; k < 30000; k++){}
        }
    }
    printString("C finished!\n");
    finishedC = true;
}




void mod() {
    thread_t threads[3];
    sem_open(&mutex, 1);
    thread_create(&threads[0], threadA, nullptr);
    printString("ThreadA created\n");

    thread_create(&threads[1], threadB, nullptr);
    printString("ThreadB created\n");

    thread_create(&threads[2], threadC, nullptr);
    printString("ThreadC created\n");

    while (!(finishedA && finishedB && finishedC)) {
        thread_dispatch();
    }
    sem_close(mutex);
}
