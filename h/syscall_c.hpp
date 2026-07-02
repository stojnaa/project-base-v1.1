#ifndef PROJECT_BASE_V1_1_SYSCALL_C_HPP
#define PROJECT_BASE_V1_1_SYSCALL_C_HPP

#include "../lib/hw.h"
typedef unsigned long uint64;

class _thread;
typedef _thread* thread_t;

class _sem;
typedef _sem* sem_t;

typedef unsigned long time_t;

const int EOF = -1;

void* mem_alloc(size_t size);
int mem_free(void* ptr);

int thread_create(
    thread_t* handle,
    void (*start_routine)(void*),
    void* arg
);

int thread_exit();

void thread_dispatch();
int getThreadId();
void setMaximumThreads(int numOfThreads);

int sem_open(sem_t* handle, unsigned init);
int sem_close(sem_t handle);

int sem_wait(sem_t id);
int sem_signal(sem_t id);

int sem_wait_n(sem_t id, unsigned n);
int sem_signal_n(sem_t id, unsigned n);

int time_sleep(time_t time);

char getc();
void putc(char c);

#endif