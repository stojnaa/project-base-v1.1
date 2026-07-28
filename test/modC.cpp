#include "../h/syscall_c.h"
#include "printing.hpp"
#include "mod.hpp"

#define N 10

struct MatrixData {
    int** matrix;
    int* rowSums;
    int row;
    int cols;
};

static volatile int finishedCount = 0;

static void worker(void* arg) {
    MatrixData* data = (MatrixData*)arg;

    int sum = 0;

    for (int j = 0; j < data->cols; j++) {
        sum += data->matrix[data->row][j];
    }

    data->rowSums[data->row] = sum;

    printString("Row ");
    printInt(data->row);
    printString(" sum = ");
    printInt(sum);
    printString("\n");

    finishedCount++;
}

void modC() {
    thread_t threads[N];
    MatrixData data[N];

    int** matrix =
        (int**)mem_alloc(N * sizeof(int*));

    for (int i = 0; i < N; i++) {
        matrix[i] =
            (int*)mem_alloc(N * sizeof(int));
    }

    int* rowSums =
        (int*)mem_alloc(N * sizeof(int));

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            matrix[i][j] = 1;
        }

        rowSums[i] = 0;
    }

    finishedCount = 0;

    for (int i = 0; i < N; i++) {
        data[i].matrix = matrix;
        data[i].rowSums = rowSums;
        data[i].row = i;
        data[i].cols = N;

        thread_create(
            &threads[i],
            worker,
            &data[i]
        );
    }

    while (finishedCount < N) {
        thread_dispatch();
    }

    int totalSum = 0;

    for (int i = 0; i < N; i++) {
        totalSum += rowSums[i];
    }

    printString("Total matrix sum = ");
    printInt(totalSum);
    printString("\n");

    for (int i = 0; i < N; i++) {
        mem_free(matrix[i]);
    }

    mem_free(matrix);
    mem_free(rowSums);
}