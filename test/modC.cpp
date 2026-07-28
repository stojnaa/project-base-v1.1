
#include "../h/syscall_c.h"
#include "mod.hpp"

#include "printing.hpp"

static volatile int finishedCount = 0;
static thread_t threads[3];
struct Args
{
    char name;
};

static void worker(void* arg) {
    Args *data = (Args*) arg;
    for (uint64 i = 0; i < 10; i++) {
        printString("Thread ");
        putc(data->name);
        printString(" iteration ");
        printInt(i);
        printString("\n");
        mem_alloc(1);
        if (data->name == 'C' && i == 4) {
            printString("Thread C pings thread A\n");
            ping(threads[0]);
        }
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    finishedCount++;
}


void modC() {
    Args args[3];
    finishedCount = 0;
    args[0].name = 'A';
    args[1].name = 'B';
    args[2].name = 'C';
    thread_create(&threads[0], worker, &args[0]);
    printString("ThreadA created\n");

    thread_create(&threads[1], worker, &args[1]);
    printString("ThreadB created\n");

    thread_create(&threads[2], worker, &args[2]);
    printString("ThreadC created\n");

    while (finishedCount < 3) {
        thread_dispatch();
    }

}
