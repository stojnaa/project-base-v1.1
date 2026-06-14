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

    static bool isEmpty();

private:
    static _thread* head;
    static _thread* tail;
};

#endif //PROJECT_BASE_V1_1_SCHEDULER_H
