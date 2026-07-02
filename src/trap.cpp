#include "../h/riscv.hpp"
#include "../h/TrapFrame.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Semaphore.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"

extern "C" void handleSupervisorTrap(TrapFrame* frame);

extern "C" void handleSupervisorTrap(TrapFrame* frame) {
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
        uint64 syscallCode = frame->a0;

        uint64 arg1 = frame->a1;
        uint64 arg2 = frame->a2;
        uint64 arg3 = frame->a3;
        uint64 arg4 = frame->a4;

        switch (syscallCode) {
            case 0x01: {
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
                break;
            }

            case 0x02: {
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
                break;
            }

            case 0x11: {
                thread_t* handle = (thread_t*)arg1;
                _thread::Body body = (_thread::Body)arg2;
                void* arg = (void*)arg3;
                void* stackSpace = (void*)arg4;

                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
                    frame->a0 = (uint64)-1;
                    break;
                }

                _thread* thread = _thread::createThread(body, arg, stackSpace);

                if (thread == nullptr) {
                    frame->a0 = (uint64)-1;
                    break;
                }

                *handle = thread;//korisnik dobija rucku nove niti
                Scheduler::put(thread);

                frame->a0 = 0;
                break;
            }

            case 0x12: {
                frame->sepc += 4;
                frame->a0 = (uint64)_thread::exit();
                return;
            }

            case 0x13: {
                frame->sepc += 4;
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
                return;
            }
            case 0x14: {
                frame->sepc += 4;
                frame->a0 = (uint64)_thread::running->getThreadId();
                _thread::dispatch();
                return;
            }
            case 0x15: {
                int num = (int)arg1;
                _thread::setMaximumThreads(num);
                break;
            }
            case 0x21: {//ne povecavamo sepc jer ne menja trenutno izvrsavanje
                sem_t* handle = (sem_t*)arg1;
                unsigned init = (unsigned)arg2;

                if (handle == nullptr) {
                    frame->a0 = (uint64)-1;
                    break;
                }

                _sem* sem = _sem::createSemaphore(init);

                if (sem == nullptr) {
                    frame->a0 = (uint64)-1;
                    break;
                }

                *handle = sem;

                frame->a0 = 0;
                break;
            }

            case 0x22: {
                sem_t sem = (sem_t)arg1;

                if (sem == nullptr) {
                    frame->a0 = (uint64)-1;
                    break;
                }

                int ret = sem->close();

                if (ret == 0) {
                    _sem::destroySemaphore(sem);
                }

                frame->a0 = (uint64)ret;
                break;
            }

            case 0x23: {
                sem_t sem = (sem_t)arg1;

                if (sem == nullptr) {
                    frame->a0 = (uint64)-1;
                    break;
                }

                frame->sepc += 4;
                frame->a0 = (uint64)sem->wait();
                return;
            }

            case 0x24: {
                sem_t sem = (sem_t)arg1;

                if (sem == nullptr) {
                    frame->a0 = (uint64)-1;
                    break;
                }

                frame->a0 = (uint64)sem->signal();
                break;
            }

            case 0x25: {
                sem_t sem = (sem_t)arg1;
                unsigned n = (unsigned)arg2;

                if (sem == nullptr) {
                    frame->a0 = (uint64)-1;
                    break;
                }

                frame->sepc += 4;
                frame->a0 = (uint64)sem->waitN(n);
                return;
            }

            case 0x26: {
                sem_t sem = (sem_t)arg1;
                unsigned n = (unsigned)arg2;

                if (sem == nullptr) {
                    frame->a0 = (uint64)-1;
                    break;
                }

                frame->a0 = (uint64)sem->signalN(n);
                break;
            }
            case 0x31: { // time_sleep
                frame->a0 = (uint64)-1;
                break;
            }

            case 0x41: { // getc
                frame->a0 = (uint64)__getc();
                break;
            }

            case 0x42: { // putc
                __putc((char)arg1);
                frame->a0 = 0;
                break;
            }

            default: {
                frame->a0 = (uint64)-1;
                break;
            }
        }

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
        console_handler();
        return;
    }
    if (scause == 2) { // illegal instruction
        printString("ERROR, scause: ");
        printInt(scause);
        printString(",sepc ");
        printInt(frame->sepc);
        printString("\n");

        frame->sepc += 4;
        Riscv::w_sepc(frame->sepc);
        return;
    }

    while (true) {}
}