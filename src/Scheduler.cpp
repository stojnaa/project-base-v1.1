#include "../h/Scheduler.hpp"
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
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

_thread* Scheduler::get() {
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

bool Scheduler::isEmpty() {
    return head == nullptr;
}