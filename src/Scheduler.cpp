#include "../h/Scheduler.hpp"
#include "../h/Thread.hpp"

_thread* Scheduler::highHead = nullptr;
_thread* Scheduler::highTail = nullptr;

_thread* Scheduler::mediumHead = nullptr;
_thread* Scheduler::mediumTail = nullptr;

_thread* Scheduler::lowHead = nullptr;
_thread* Scheduler::lowTail = nullptr;

void Scheduler::putInList(_thread* thread, _thread*& head, _thread*& tail) {
    if (thread == nullptr) {
        return;
    }

    thread->next = nullptr;

    if (head == nullptr) {
        head = tail = thread;
    } else {
        tail->next = thread;
        tail = thread;
    }
}
_thread* Scheduler::getFromList(_thread*& head, _thread*& tail) {
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

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
        return;
    }

    thread->state = _thread::READY;
    switch (thread->getPriority()) {
        case HIGH:
            putInList(thread, highHead, highTail);
            break;

        case MEDIUM:
            putInList(thread, mediumHead, mediumTail);
            break;

        case LOW:
            putInList(thread, lowHead, lowTail);
            break;
        default:
            putInList(thread, lowHead, lowTail);
            break;
    }
}

_thread* Scheduler::get() {
    _thread* thread = getFromList(highHead, highTail);
    if (thread != nullptr) {
        return thread;
    }

    thread = getFromList(mediumHead, mediumTail);
    if (thread != nullptr) {
        return thread;
    }

    return getFromList(lowHead, lowTail);
}

