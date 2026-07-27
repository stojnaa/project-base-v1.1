
#include "../h/syscall_c.h"
#include "printing.hpp"
static thread_t threads[3];

static void A(void* arg) {
    for (uint64 j = 0; j < 10000; j++) {
        for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
        thread_dispatch();
    }
    printString("A finished!\n");
}
static void B(void* arg) {
    for (uint64 j = 0; j < 10000; j++) {
        for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
        thread_dispatch();
    }
    printString("B finished!\n");
}
static void C(void* arg) {
    join(threads[0]);
    join(threads[1]);
    for (uint64 j = 0; j < 10000; j++) {
        for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    }
    printString("C finished!\n");
}


void modC() {
    thread_create(&threads[0], A, nullptr);
    printString("ThreadA created\n");

    thread_create(&threads[1], B, nullptr);
    printString("ThreadB created\n");

    thread_create(&threads[2], C, nullptr);
    printString("ThreadC created\n");
    join(threads[2]);
}
