#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"
_sem* _sem::allHead = nullptr;
_sem* _sem::allTail = nullptr;
static size_t blocksForBytesSemaphore(size_t bytes) {
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
}

void* _sem::operator new(size_t size) {
    return MemoryAllocator::getInstance().malloc(blocksForBytesSemaphore(size));
}

void _sem::operator delete(void* ptr) {
    if (ptr == nullptr) {
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
}

_sem::_sem(unsigned init) {
    val = (int)init;
    closed = false;

    head = nullptr;
    tail = nullptr;

    allNext = nullptr;

    if (allHead == nullptr) {
        allHead = this;
        allTail = this;
    } else {
        allTail->allNext = this;
        allTail = this;
    }
}
void _sem::removeFromAll(_sem* sem) {
    if (sem == nullptr) {
        return;
    }

    _sem* prev = nullptr;
    _sem* curr = allHead;

    while (curr != nullptr && curr != sem) {
        prev = curr;
        curr = curr->allNext;
    }

    if (curr == nullptr) {
        return;
    }

    if (prev == nullptr) {
        allHead = curr->allNext;
    } else {
        prev->allNext = curr->allNext;
    }

    if (allTail == curr) {
        allTail = prev;
    }

    curr->allNext = nullptr;
}
_sem* _sem::createSemaphore(unsigned init) {
    return new _sem(init);
}

int _sem::destroySemaphore(_sem* sem) {
    if (sem == nullptr) {
        return -1;
    }
    removeFromAll(sem);

    delete sem;
    return 0;
}
void _sem::unblockOne() {
    _sem* curr = allHead;

    while (curr != nullptr) {
        if (!curr->closed && curr->head != nullptr) {
            printString("unblockOne found blocked thread\n");
            curr->signal();
            return;
        }

        curr = curr->allNext;
    }
}
int _sem::close() {
    if (closed) {
        return -1;
    }

    closed = true;

    unblockAll();

    return 0;
}

int _sem::wait() {
    return waitN(1);
}

int _sem::signal() {
    return signalN(1);
}

int _sem::waitN(unsigned n) {
    if (_thread::running == nullptr) {
        return -1;
    }
    if (closed) {
        return -1;
    }

    if (n == 0) {
        return 0;
    }

    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
        val -= (int)n;
        return 0;
    }

    BlockedNode node;

    node.thread = _thread::running;
    node.requested = n;
    node.status = 0;
    node.next = nullptr;

    block(&node);

    _thread::running->setState(_thread::BLOCKED);

    _thread::dispatch();

    return node.status;
}

int _sem::signalN(unsigned n) {
    if (closed) {
        return -1;
    }

    if (n == 0) {
        return 0;
    }

    val += (int)n;

    unblockReady();

    return 0;
}

void _sem::block(BlockedNode* node) {
    if (node == nullptr) {
        return;
    }

    node->next = nullptr;

    if (head == nullptr) {
        head = node;
        tail = node;
    } else {
        tail->next = node;
        tail = node;
    }
}

void _sem::unblockReady() {
    while (head != nullptr && val >= (int)head->requested) {
        BlockedNode* node = head;

        head = head->next;

        if (head == nullptr) {
            tail = nullptr;
        }

        val -= (int)node->requested;

        node->status = 0;//znaci da ce waitN vratiti 0
        node->next = nullptr;

        if (node->thread != nullptr) {
            node->thread->setState(_thread::READY);
            Scheduler::put(node->thread);
        }
    }
}

void _sem::unblockAll() {
    while (head != nullptr) {
        BlockedNode* node = head;

        head = head->next;

        node->status = -1;
        node->next = nullptr;

        if (node->thread != nullptr) {
            node->thread->setState(_thread::READY);
            Scheduler::put(node->thread);
        }
    }

    tail = nullptr;
}