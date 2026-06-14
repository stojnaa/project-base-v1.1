#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
MemoryAllocator MemoryAllocator::instance;
MemoryAllocator& MemoryAllocator::getInstance() {
    return instance;
}

void MemoryAllocator::init() {
    if (initialized) return;
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    freeHead = (FreeBlock*) heapStart;
    freeHead->size = heapSize;
    freeHead->next = nullptr;
    freeHead->prev = nullptr;
    initialized = true;
}
void* MemoryAllocator::malloc(size_t numBlocks) {
    init();
    if (numBlocks == 0) return nullptr;
    size_t neededBlocks = numBlocks + 1;
    FreeBlock* current = freeHead;
    while(current != nullptr && current->size < neededBlocks){
        current = current->next;
    }
    if (current == nullptr){
        return nullptr;
    }
    size_t remainingBlocks = current->size - neededBlocks;
    if (remainingBlocks >= 2){
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
        newFree->size = remainingBlocks;
        newFree->next = current->next;
        newFree->prev = current->prev;
        if (current->prev != nullptr){
            current->prev->next = newFree;
        }else{
            freeHead = newFree;
        }
        if (current->next != nullptr){
            current->next->prev = newFree;
        }
        current->size = neededBlocks;
        current->next = nullptr;
        current->prev = nullptr;
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    }
    if (current->prev != nullptr){
        current->prev->next = current->next;
    }else{
        freeHead = current->next;
    }
    if (current->next != nullptr){
        current->next->prev = current->prev;
    }
    current->next = nullptr;
    current->prev = nullptr;
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
}
int MemoryAllocator::free(void* ptr){
    init();
    if (ptr == nullptr) return -1;
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    uint64 ptrAddr = (uint64) ptr;
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
        return -1;
    }
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
        return -1;
    }
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    if (block->size < 2){
        return -1;
    }
    if ((uint64) block < heapStart){
        return -1;
    }
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
        return -1;
    }
    FreeBlock* prev = nullptr;
    FreeBlock* current = freeHead;
    while (current != nullptr && (uint64) current < (uint64) block){
        prev = current;
        current = current->next;
    }
    if (prev != nullptr &&
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
        return -1;
    }
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
        return -1;
    }
    block->prev = prev;
    block->next = current;
    if (prev != nullptr){
        prev->next = block;
    }else{
        freeHead = block;
    }
    if (current != nullptr){
        current->prev = block;
    }
    tryToJoin(block);
    if (prev != nullptr){
        tryToJoin(prev);
    }
    return 0;
}
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    if (block == nullptr || block->next == nullptr) return;
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    if (endOfBlock == (char*) block->next){
        FreeBlock* nextBlock = block->next;
        block->size += nextBlock->size;
        block->next = nextBlock->next;
        if (block->next != nullptr){
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
}