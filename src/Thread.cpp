#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/Semaphore.hpp"
#include "../h/syscall_c.hpp"

_thread* _thread::running = nullptr;
_sem* _thread::limitSem = nullptr;
int _thread::nextId = 0;
int _thread::numOfThreads = 5;

static size_t blocksForBytes(size_t bytes) {
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
}

void* _thread::operator new(size_t size) {
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
}

void* _thread::operator new[](size_t size) {
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
}

void _thread::operator delete(void* ptr) {
    if (ptr == nullptr) {
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
}

void _thread::operator delete[](void* ptr) {
    if (ptr == nullptr) {
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
}

_thread::_thread(Body body, void* arg, void* stackSpace) {
    this->body = body;
    this->arg = arg;

    if (stackSpace != nullptr) {
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
        this->context.sp = (uint64)stackSpace;
    } else {
        this->stack = nullptr;
        this->context.sp = 0;
    }
    this->context.s0 = 0;
    this->context.s1 = 0;
    this->context.s2 = 0;
    this->context.s3 = 0;
    this->context.s4 = 0;
    this->context.s5 = 0;
    this->context.s6 = 0;
    this->context.s7 = 0;
    this->context.s8 = 0;
    this->context.s9 = 0;
    this->context.s10 = 0;
    this->context.s11 = 0;

    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    this->timeSlice = DEFAULT_TIME_SLICE;
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    this->next = nullptr;
    this->id = nextId++;
    this->hasLimitPermit = false;
}

_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    return new _thread(body, arg, stackSpace);
}

int _thread::destroyThread(_thread* thread) {
    if (thread == nullptr) {
        return -1;
    }

    if (thread->stack != nullptr) {
        MemoryAllocator::getInstance().free(thread->stack);
        thread->stack = nullptr;
    }

    delete thread;
    return 0;
}

int _thread::getThreadId() {
    return running->id;
}

void _thread::dispatch() {
    _thread* old = running;

    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
        Scheduler::put(old);
    }

    _thread* next = Scheduler::get();

    if (next == nullptr) {
        if (old != nullptr && old->state == RUNNING) {
            running = old;
        }
        return;
    }

    running = next;
    running->state = RUNNING;

    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
        contextSwitch(&old->context, &running->context);
    }
}
int _thread::exit() {
    if (running == nullptr) {
        return -1;
    }
    if (running->hasLimitPermit && limitSem != nullptr) {
        running->hasLimitPermit = false;
        limitSem->signal();
    }

    running->state = FINISHED;

    dispatch();

    return 0;
}

_thread::Body _thread::getBody() const {
    return body;
}

void* _thread::getArg() const {
    return arg;
}

void* _thread::getStack() const {
    return stack;
}

_thread::Context* _thread::getContext() {
    return &context;
}

_thread::State _thread::getState() const {
    return state;
}

void _thread::setState(State state) {
    this->state = state;
}

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {
    if (limitSem != nullptr) {
        limitSem->wait();
        running->hasLimitPermit = true;
    }
    Riscv::popSppSpie();


    if (running != nullptr && running->body != nullptr) {
        running->body(running->arg);
    }

    thread_exit();
}

void _thread::setMaximumThreads(int num) {
    numOfThreads = num;
    if (limitSem != nullptr) {
        limitSem->close();
        _sem::destroySemaphore(limitSem);
    }
    limitSem = _sem::createSemaphore(numOfThreads);
}
