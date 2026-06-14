

#ifndef PROJECT_BASE_V1_1_RISCV_HPP
#define PROJECT_BASE_V1_1_RISCV_HPP

#include "../lib/hw.h"

class Riscv {
public:
    static const uint64 SSTATUS_SIE = (1UL << 1);
    static const uint64 SIP_SSIP = (1UL << 1);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
        return x;
    }

    static uint64 r_sepc() {
        uint64 x;
        asm volatile("csrr %0, sepc" : "=r"(x));//isto upis, to je adresa na kojoj ce se procesor vratiti kada se izvrsi sret
        return x;
    }

    static void w_sepc(uint64 x) {
        asm volatile("csrw sepc, %0" : : "r"(x));//upis u sepc
    }

    static uint64 r_sstatus() {
        uint64 x;
        asm volatile("csrr %0, sstatus" : "=r"(x));
        return x;
    }

    static void w_sstatus(uint64 x) {
        asm volatile("csrw sstatus, %0" : : "r"(x));
    }

    static void w_stvec(uint64 x) {
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    }

    static void ms_sstatus(uint64 mask) {
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    }

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    }

};

#endif //PROJECT_BASE_V1_1_RISCV_H
