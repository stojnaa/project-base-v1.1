//
// Created by os on 6/10/26.
//

#ifndef PROJECT_BASE_V1_1_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_SCHEDULER_HPP

class _thread;

class Scheduler {
public:
    static void put(_thread* thread);
    static _thread* get();


private:
    static _thread* highHead;
    static _thread* highTail;

    static _thread* mediumHead;
    static _thread* mediumTail;

    static _thread* lowHead;
    static _thread* lowTail;
    static void putInQueue(_thread* thread, _thread*& head, _thread*& tail);
    static _thread* getFromQueue(_thread*& head, _thread*& tail);
};

#endif //PROJECT_BASE_V1_1_SCHEDULER_H
