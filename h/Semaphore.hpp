//
// Created by os on 6/11/26.
//


#ifndef PROJECT_BASE_V1_1_SEMAPHORE_HPP
#define PROJECT_BASE_V1_1_SEMAPHORE_HPP

#include "../lib/hw.h"

class _thread;

class _sem {
public:
    void* operator new(size_t size);
    void operator delete(void* ptr);

    explicit _sem(unsigned init);

    static _sem* createSemaphore(unsigned init);
    static int destroySemaphore(_sem* sem);

    int close();

    int wait();
    int signal();

    int waitN(unsigned n);
    int signalN(unsigned n);
    static void unblockOne();

private:
    struct BlockedNode {
        _thread* thread;
        unsigned requested;//koliko resursa ta nit trazi
        int status;//0 probudjena pomocu signal, -1 preko close()
        BlockedNode* next;
    };

    int val;
    bool closed;

    BlockedNode* head;
    BlockedNode* tail;
    static _sem* allHead;
    static _sem* allTail;
    _sem* allNext;
    static void removeFromAll(_sem* sem);


    void block(BlockedNode* node);
    void unblockReady();
    void unblockAll();
};

#endif //PROJECT_BASE_V1_1_SEMAPHORE_H
