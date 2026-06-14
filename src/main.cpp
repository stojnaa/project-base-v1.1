#include "../h/riscv.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../lib/hw.h"

extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    userMain();
    userMainFinished = true;
    thread_exit();
}

int main() {
    Riscv::w_stvec((uint64)&supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    // Za tačke 1, 2, 3 ne uključujemo prekide.
    // Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    _thread mainThread(nullptr, nullptr, nullptr);
    mainThread.setState(_thread::RUNNING);
    _thread::running = &mainThread;

    thread_t userThread = nullptr;
    int ret = thread_create(&userThread, userMainWrapper, nullptr);

    if (ret < 0 || userThread == nullptr) {
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
        return ret;
    }

    while (!userMainFinished) {
        thread_dispatch();
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;

    return 0;
}