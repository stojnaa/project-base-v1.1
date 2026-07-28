<<<<<<< Updated upstream
#include "../h/syscall_c.hpp"

static uint64 doSyscall(uint64 code, uint64 arg1 = 0, uint64 arg2 = 0,
                        uint64 arg3 = 0, uint64 arg4 = 0) {
    uint64 ret;

    asm volatile("mv a4, %0" : : "r"(arg4));
    asm volatile("mv a3, %0" : : "r"(arg3));
    asm volatile("mv a2, %0" : : "r"(arg2));
    asm volatile("mv a1, %0" : : "r"(arg1));
    asm volatile("mv a0, %0" : : "r"(code));

    asm volatile("ecall");

    asm volatile("mv %0, a0" : "=r"(ret));

    return ret;
}

void* mem_alloc(size_t size) {
    if (size == 0) {
        return nullptr;
    }

    size_t numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;

    return (void*)doSyscall(0x01, numBlocks);
}

int mem_free(void* ptr) {
    return (int)doSyscall(0x02, (uint64)ptr);
}


int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg){
    if (handle == nullptr || start_routine == nullptr){//handle je mesto gde kernel upisuje pokazivac na napravljenu nit
        return -1;
    }
    void* stack = mem_alloc(DEFAULT_STACK_SIZE);//stack pokazuje na pocetak alociranog prostora
    if (stack == nullptr){
        return -1;
    }
    uint64 stackTop = (uint64)stack + DEFAULT_STACK_SIZE;//stek raste na dole, pocetni sp na kraju alociranog prostora
    stackTop &= ~((uint64)0xF);//obrisemo poslednja 4 bita adrese jer deljivo sa 16

    int ret = (int)doSyscall(
            0x11,
            (uint64)handle,
            (uint64)start_routine,
            (uint64)arg,
            stackTop
    );

    if (ret < 0) {
        mem_free(stack);
    }

    return ret;
}
int thread_exit() {
    return (int)doSyscall(0x12);
}
void thread_dispatch() {
    doSyscall(0x13);
}
int sem_open(sem_t* handle, unsigned init) {
    return (int)doSyscall(0x21, (uint64)handle, (uint64)init);
}

int getThreadId() {
    return (int)doSyscall(0x14);
}
void setMaximumThreads(int num) {
    doSyscall(0x15, (uint64)num);
}

int sem_close(sem_t handle) {
    return (int)doSyscall(0x22, (uint64)handle);
}

int sem_wait(sem_t id) {
    return (int)doSyscall(0x23, (uint64)id);
}

int sem_signal(sem_t id) {
    return (int)doSyscall(0x24, (uint64)id);
}

int sem_wait_n(sem_t id, unsigned n) {
    return (int)doSyscall(0x25, (uint64)id, (uint64)n);
}

int sem_signal_n(sem_t id, unsigned n) {
    return (int)doSyscall(0x26, (uint64)id, (uint64)n);
}
int time_sleep(time_t time) {
    return (int)doSyscall(0x31, (uint64)time);
}

char getc() {
    return (char)doSyscall(0x41);
}

void putc(char c) {
    doSyscall(0x42, (uint64)c);
=======
#include "../h/syscall_c.hpp"

static uint64 doSyscall(uint64 code, uint64 arg1 = 0, uint64 arg2 = 0,
                        uint64 arg3 = 0, uint64 arg4 = 0) {
    uint64 ret;

    asm volatile("mv a4, %0" : : "r"(arg4));
    asm volatile("mv a3, %0" : : "r"(arg3));
    asm volatile("mv a2, %0" : : "r"(arg2));
    asm volatile("mv a1, %0" : : "r"(arg1));
    asm volatile("mv a0, %0" : : "r"(code));

    asm volatile("ecall");

    asm volatile("mv %0, a0" : "=r"(ret));

    return ret;
}

void* mem_alloc(size_t size) {
    if (size == 0) {
        return nullptr;
    }

    size_t numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;

    return (void*)doSyscall(0x01, numBlocks);
}

int mem_free(void* ptr) {
    return (int)doSyscall(0x02, (uint64)ptr);
}


int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg){
    if (handle == nullptr || start_routine == nullptr){//handle je mesto gde kernel upisuje pokazivac na napravljenu nit
        return -1;
    }
    void* stack = mem_alloc(DEFAULT_STACK_SIZE);//stack pokazuje na pocetak alociranog prostora
    if (stack == nullptr){
        return -1;
    }
    uint64 stackTop = (uint64)stack + DEFAULT_STACK_SIZE;//stek raste na dole, pocetni sp na kraju alociranog prostora
    stackTop &= ~((uint64)0xF);//obrisemo poslednja 4 bita adrese jer deljivo sa 16

    int ret = (int)doSyscall(
            0x11,
            (uint64)handle,
            (uint64)start_routine,
            (uint64)arg,
            stackTop
    );

    if (ret < 0) {
        mem_free(stack);
    }

    return ret;
}
int thread_exit() {
    return (int)doSyscall(0x12);
}
void thread_dispatch() {
    doSyscall(0x13);
}

int getThreadId()
{
    return (int)doSyscall(0x14);
}

void setMaximumThreads(int num)
{
    doSyscall(0x15, (uint64)num);
}

int sem_open(sem_t* handle, unsigned init) {
    return (int)doSyscall(0x21, (uint64)handle, (uint64)init);
}

int sem_close(sem_t handle) {
    return (int)doSyscall(0x22, (uint64)handle);
}

int sem_wait(sem_t id) {
    return (int)doSyscall(0x23, (uint64)id);
}

int sem_signal(sem_t id) {
    return (int)doSyscall(0x24, (uint64)id);
}

int sem_wait_n(sem_t id, unsigned n) {
    return (int)doSyscall(0x25, (uint64)id, (uint64)n);
}

int sem_signal_n(sem_t id, unsigned n) {
    return (int)doSyscall(0x26, (uint64)id, (uint64)n);
}
int time_sleep(time_t time) {
    return (int)doSyscall(0x31, (uint64)time);
}

char getc() {
    return (char)doSyscall(0x41);
}

void putc(char c) {
    doSyscall(0x42, (uint64)c);
>>>>>>> Stashed changes
}