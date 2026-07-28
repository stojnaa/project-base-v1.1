//
// Created by os on 6/10/26.
//

#ifndef PROJECT_BASE_V1_1_NEW_HPP
#define PROJECT_BASE_V1_1_NEW_HPP
#include "../lib/hw.h"

void* operator new(size_t size);
void* operator new[](size_t size);

void operator delete(void* ptr);
void operator delete[](void* ptr);

#endif //PROJECT_BASE_V1_1_NEW_H
