<<<<<<< Updated upstream
//
// Created by os on 6/10/26.
//

#ifndef PROJECT_BASE_V1_1_THREAD_HPP
#define PROJECT_BASE_V1_1_THREAD_HPP

#include "../lib/hw.h"

class Scheduler;
class _sem;

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

    _thread(Body body, void* arg, void* stackSpace);

    static _thread* createThread(Body body, void* arg, void* stackSpace);
    static int destroyThread(_thread* thread);
    static void dispatch();
    static int exit();

    Body getBody() const;
    void* getArg() const;
    void* getStack() const;

    Context* getContext();

    State getState() const;
    void setState(State state);

    uint64 getTimeSlice() const;

    static _thread* running;
    int getThreadId();
    static _sem* limitSem;
    static int nextId;
    static void setMaximumThreads(int num);
    static int maxThreads;

private:
    Body body;
    void* arg;
    void* stack;

    Context context;

    uint64 timeSlice;
    State state;

    _thread* next;
    int id;
    bool hasLimitPermit;

    static void threadWrapper();

    friend class Scheduler;
};
extern "C" void contextSwitch(_thread::Context* oldContext, _thread::Context* newContext);

#endif //PROJECT_BASE_V1_1_THREAD_H
=======
//
// Created by os on 6/10/26.
//

#ifndef PROJECT_BASE_V1_1_THREAD_HPP
#define PROJECT_BASE_V1_1_THREAD_HPP

#include "../lib/hw.h"

class Scheduler;
class _sem;

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

    _thread(Body body, void* arg, void* stackSpace);

    static _thread* createThread(Body body, void* arg, void* stackSpace);
    static int destroyThread(_thread* thread);
    static void dispatch();
    static int exit();

    Body getBody() const;
    void* getArg() const;
    void* getStack() const;

    Context* getContext();

    State getState() const;
    void setState(State state);

    uint64 getTimeSlice() const;

    static _thread* running;
    static _sem* limitSem;
    static int nextiId;
    static void setMaximumThreads(int num);
    static int maxThreads;
    int getThreadId() const;

private:
    Body body;
    void* arg;
    void* stack;

    Context context;

    uint64 timeSlice;
    State state;

    _thread* next;

    static void threadWrapper();

    friend class Scheduler;
    bool hasLimitPermit;
    int id;
};
extern "C" void contextSwitch(_thread::Context* oldContext, _thread::Context* newContext);

#endif //PROJECT_BASE_V1_1_THREAD_H
>>>>>>> Stashed changes
