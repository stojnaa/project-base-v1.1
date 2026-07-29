#include "../h/syscall_c.hpp"
#include "printing.hpp"
#include "mod.hpp"

static volatile int finishedCount = 0;
static thread_t threads[3];

struct Args {
    char name;
};

static void busyWait() {
    for (uint64 i = 0; i < 10000; i++) {
        for (uint64 j = 0; j < 30000; j++) {
            // busy wait
        }
    }
}

static void worker(void* arg) {
    Args* data = (Args*) arg;

    for (int i = 0; i < 5; i++) {
        printString("Thread ");
        putc(data->name);
        printString(" iteration ");
        printInt(i);
        printString("\n");

        busyWait();
        thread_dispatch();
    }

    printString("Thread ");
    putc(data->name);
    printString(" finished\n");

    finishedCount++;
}

void modC() {
    finishedCount = 0;

    Args args[3];

    args[0].name = 'A';
    args[1].name = 'B';
    args[2].name = 'C';

    thread_create(&threads[0], worker, &args[0], LOW);
    printString("Thread A created with LOW priority\n");

    thread_create(&threads[1], worker, &args[1], MEDIUM);
    printString("Thread B created with MEDIUM priority\n");

    thread_create(&threads[2], worker, &args[2], HIGH);
    printString("Thread C created with HIGH priority\n");

    while (finishedCount < 3) {
        thread_dispatch();
    }

    printString("C API priority test finished\n");
}