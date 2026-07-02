#include "mod.hpp"
#include "../h/syscall_c.hpp"
#include "printing.hpp"

static const int MAX = 10;
struct MatrixData {
    int matrix[MAX][MAX];
    int rowsSums[MAX];
    int rows;
    int cols;
    sem_t done;
};

struct ThreadArg {
    MatrixData* data;
    int row;
};
static void workerBody(void* arg) {
    ThreadArg* threadArg = (ThreadArg*)arg;
    MatrixData* data = threadArg->data;
    int row = threadArg->row;
    int sum = 0;
    for (int j = 0;j<data->cols;j++) {
        sum += data->matrix[row][j];
    }
    data->rowsSums[row] = sum;
    sem_signal(data->done);
}

void modCAPI() {
    printString("Matrix row test started\n");
    MatrixData data;

    int expectedSum = 0;
    //for (int i = 0; i < N; i++) {
        //for (int j = 0; j < N; j++) {
            //data.matrix[i][j] = i * N + j + 1;
            //expectedSum += data.matrix[i][j];
        //}
    //}
    char input[30];
    printString("Unesite M: ");
    getString(input, 30);
    data.cols = stringToInt(input);
    printString("Unesite N: ");
    getString(input, 30);
    data.rows = stringToInt(input);
    printString("Unesite elemente matrice: ");
    int counter = 1;
    for (int i = 0;i<data.cols;i++) {
        data.rowsSums[i] = 0;
    }
    for (int i = 0;i<data.cols;i++) {
        for (int j = 0;j<data.rows;j++) {
            printInt(counter);
            printString(". element: ");
            getString(input, 30);
            data.matrix[i][j] = stringToInt(input);
            counter++;
            expectedSum += data.matrix[i][j];
        }
    }
    //obrni samo rows i cols
    sem_open(&data.done, 0);
    thread_t threads[MAX];
    ThreadArg threadArgs[MAX];
    for (int i = 0;i<data.cols;i++) {
        threadArgs[i].data = &data;
        threadArgs[i].row = i;
        thread_create(&threads[i], workerBody, (void*)&threadArgs[i]);
    }
    for (int i = 0;i<data.cols;i++) {
        sem_wait(data.done);
    }
    int finalSum = 0;
    for (int i = 0;i<data.cols;i++) {
        finalSum += data.rowsSums[i];
    }
    printString("Final matrix sum = ");
    printInt(finalSum);
    printString("\n");
    if (finalSum == expectedSum) {
        printString("TEST PASSED");
    }
}