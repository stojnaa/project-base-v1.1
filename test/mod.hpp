//
// Created by os on 7/2/26.
//

#ifndef PROJECT_BASE_V1_1_MOD_HPP
#define PROJECT_BASE_V1_1_MOD_HPP
#include "../h/syscall_c.hpp"
class Resource {
public:
    Resource(int N);
    void take(int num);
    int give_back(int num);
private:
    struct Request {
        int num;
        sem_t ready;
        Request* next;
    };
    int available;
    sem_t mutex;
    Request* head;
    Request* tail;
    void tryToUnblock();
};
void resourceTest();
#endif //PROJECT_BASE_V1_1_MOD_HPP
