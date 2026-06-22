//
// Created by os on 6/10/26.
//

#ifndef PROJECT_BASE_V1_1_THREAD_HPP
#define PROJECT_BASE_V1_1_THREAD_HPP

#include "../lib/hw.h"
#include "ThreadPriority.hpp"

class Scheduler;

class _thread {
public:
    using Body = void (*)(void*);
    enum State {
        CREATED,
        READY,
        RUNNING,
        BLOCKED,
        FINISHED
    };

    struct Context {
        uint64 ra;
        uint64 sp;
        uint64 s0;
        uint64 s1;
        uint64 s2;
        uint64 s3;
        uint64 s4;
        uint64 s5;
        uint64 s6;
        uint64 s7;
        uint64 s8;
        uint64 s9;
        uint64 s10;
        uint64 s11;
    };
    void* operator new(size_t size);
    void* operator new[](size_t size);

    void operator delete(void* ptr);
    void operator delete[](void* ptr);

    _thread(Body body, void* arg, void* stackSpace, ThreadPriority priority = LOW);

    static _thread* createThread(Body body, void* arg, void* stackSpace, ThreadPriority priority = LOW);
    static int destroyThread(_thread* thread);
    static void dispatch();
    static int exit();

    Body getBody() const;
    void* getArg() const;
    void* getStack() const;

    Context* getContext();

    State getState() const;
    void setState(State state);
    ThreadPriority getPriority() const;

    uint64 getTimeSlice() const;

    static _thread* running;

private:
    Body body;
    void* arg;
    void* stack;

    Context context;

    uint64 timeSlice;
    State state;
    ThreadPriority priority;

    _thread* next;

    static void threadWrapper();

    friend class Scheduler;
};
extern "C" void contextSwitch(_thread::Context* oldContext, _thread::Context* newContext);

#endif //PROJECT_BASE_V1_1_THREAD_H
