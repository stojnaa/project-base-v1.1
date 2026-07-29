#include "../h/Scheduler.hpp"
#include "../h/Thread.hpp"

_thread* Scheduler::highHead = nullptr;
_thread* Scheduler::highTail = nullptr;

_thread* Scheduler::mediumHead = nullptr;
_thread* Scheduler::mediumTail = nullptr;

_thread* Scheduler::lowHead = nullptr;
_thread* Scheduler::lowTail = nullptr;

void Scheduler::putInQueue(_thread* thread, _thread*& head, _thread*& tail) {
    if (thread == nullptr) {
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
        return;
    }

    thread->state = _thread::READY;
    thread->next = nullptr;

    if (head == nullptr) {
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
        tail = thread;
    }
}

_thread* Scheduler::getFromQueue(_thread*& head, _thread*& tail) {
    if (head == nullptr) {
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;

    if (head == nullptr) {
        tail = nullptr;
    }

    thread->next = nullptr;

    return thread;
}
void Scheduler::put(_thread* thread) {
    if (thread == nullptr) {
        return;
    }

    if (thread->getPriority() == _thread::HIGH) {
        putInQueue(thread, highHead, highTail);
    } else if (thread->getPriority() == _thread::MEDIUM) {
        putInQueue(thread, mediumHead, mediumTail);
    } else {
        putInQueue(thread, lowHead, lowTail);
    }
}
_thread* Scheduler::get() {
    _thread* thread = getFromQueue(highHead, highTail);

    if (thread != nullptr) {
        return thread;
    }

    thread = getFromQueue(mediumHead, mediumTail);

    if (thread != nullptr) {
        return thread;
    }

    return getFromQueue(lowHead, lowTail);
}