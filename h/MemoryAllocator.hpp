#ifndef MEMORY_ALLOCATOR_HPP
#define MEMORY_ALLOCATOR_HPP
#include "../lib/hw.h"
class MemoryAllocator{
public:
    static MemoryAllocator& getInstance();
    void* malloc(size_t numBlocks);
    int free(void* ptr);
    MemoryAllocator(const MemoryAllocator&) = delete;
    MemoryAllocator& operator=(const MemoryAllocator&) = delete;
private:
    struct FreeBlock{
        size_t size;
        FreeBlock* next;
        FreeBlock* prev;
    };
    static MemoryAllocator instance;
    FreeBlock* freeHead;
    bool initialized;
    MemoryAllocator();
    void init();
    void tryToJoin(FreeBlock* block);
};
#endif