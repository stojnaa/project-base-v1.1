#include "../h/syscall_cpp.hpp"

Thread::Thread(void (*body)(void*), void* arg) {
    this->myHandle = nullptr;
    this->body = body;
    this->arg = arg;
}

Thread::Thread() {
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
}

int Thread::start() {
    if (body != nullptr) {
        return thread_create(&myHandle, body, arg);
    }

    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
        t->run();
    }
}
int Thread::addChild(Thread* child) {
    if (child == nullptr) {
        return -1;
    }

    return thread_addChild(child->myHandle);
}

int Thread::joinAll() {
    return thread_joinAll();
}

Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    if (myHandle != nullptr) {
        sem_close(myHandle);
    }
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    this->period = period;
}

void PeriodicThread::terminate() {
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}