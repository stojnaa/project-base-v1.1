#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

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
    head1 = nullptr;
    tail1 = nullptr;
}

void _sem::sem_pair(_sem* sem1, _sem* sem2)
{
    SemNode* node1 = new SemNode();
    node1->sem = sem2;
    node1->next = nullptr;
    if (sem1->head1 == nullptr) {
        sem1->head1 = node1;
        sem1->tail1 = node1;
    } else {
        sem1->tail1->next = node1;
        sem1->tail1 = node1;
    }
    SemNode* node2 = new SemNode();
    node2->sem = sem1;
    node2->next = nullptr;
    if (sem2->head1 == nullptr) {
        sem2->head1 = node2;
        sem2->tail1 = node2;
    } else {
        sem2->tail1->next = node2;
        sem2->tail1 = node2;
    }
}

_sem* _sem::createSemaphore(unsigned init) {
    return new _sem(init);
}

int _sem::destroySemaphore(_sem* sem) {
    if (sem == nullptr) {
        return -1;
    }

    delete sem;
    return 0;
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
    SemNode* curr = head1;
    while (curr != nullptr)
    {
        if (curr->sem->head == nullptr && curr->sem->val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
            curr->sem->val -= (int)n;
            return 1;
        }
        curr = curr->next;
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