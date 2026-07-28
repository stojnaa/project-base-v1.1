#include "../h/syscall_c.h"
#include "printing.hpp"
#include "mod.hpp"

static sem_t sharedSem;
static volatile int finishedCount = 0;
struct ThreadData
{
    int id;
};
static void worker(void *arg)
{
    ThreadData *data = (ThreadData *)arg;
    for (int i = 0; i < 3; i++)
    {
        sem_wait(sharedSem);
        printString("Thread ");
        printInt(data->id);
        printString(" entered, iteration ");
        printInt(i);
        printString("\n");
        for (int j = 0; j < 1000 + data->id * 300; j++) {
            for (int k = 0; k < 1000; k++) {
                // busy wait
            }
            thread_dispatch();
        }
        printString("Thread ");
        printInt(data->id);
        printString(" exited, iteration ");
        printInt(i);
        printString("\n");

        sem_signal(sharedSem);
    }
    finishedCount++;
}
void modC() {
    thread_t threads[10];
    ThreadData data[10];

    finishedCount = 0;

    sem_open(&sharedSem, 5);

    for (int i = 0; i < 10; i++) {
        data[i].id = i;

        thread_create(
            &threads[i],
            worker,
            &data[i]
        );
    }

    while (finishedCount < 10) {
        thread_dispatch();
    }

    printString("All threads finished!\n");

    sem_close(sharedSem);
}