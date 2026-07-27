
#include "../h/syscall_c.h"
#include "Threads_C_API_test.hpp"

#include "printing.hpp"

static volatile int finished = 0;
static sem_t mainSem;
static sem_t sems[5];
static int pairUsed;
struct ThreadData
{
    int id;
    sem_t sem;
};

static void worker(void* arg) {
    ThreadData* data = (ThreadData*)arg;
    for (uint64 i = 0; i < 5; i++)
    {
        printString("Thread ");
        printInt(data->id);
        printString(" wait ");
        printInt(i);
        printString("\n");
        int ret = sem_wait(data->sem);
        if (ret == 0) {
            printString("Thread ");
            printInt(data->id);
            printString(" passed ");
            printInt(i);
            printString("\n");
        } else {
            printString("###Thread ");
            printInt(data->id);
            printString(" passed ");
            printInt(i);
            printString("\n");

            pairUsed++;
        }
        for (int j = 0; j < 1000; j++) {
            thread_dispatch();
        }
    }
    finished++;
}


void mod() {
    thread_t threads[5];
    ThreadData data[5];
    sem_open(&mainSem, 100);
    for (int i = 0; i < 5; i++) {

        sem_open(&sems[i], i + 1);

        sem_pair(mainSem, sems[i]);

        data[i].id = i;
        data[i].sem = sems[i];

        thread_create(&threads[i], worker, &data[i]);
    }

    while (finished < 5) {

        thread_dispatch();
             }
    printString("Pair semaphore used: ");
    printInt(pairUsed);
    printString("\n");

    for (int i = 0; i < 5; i++) {
        sem_close(sems[i]);
    }

    sem_close(mainSem);

}
