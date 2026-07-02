#include "printing.hpp"
#include "../h/syscall_cpp.hpp"
#include "mod.hpp"

static const int MAX = 10;
struct MatrixData {
    int** matrix;
    int* rowsSums;
    int rows;
    int cols;
    Semaphore* done;
};
class Worker: public Thread {
public:
    Worker(MatrixData* data, int row):Thread() {
        this->row = row;
        this->data = data;
    }

    void run() override {
        int sum = 0;
        for (int i = 0; i < data->cols; i++) {
            sum += data->matrix[row][i];
        }
        data->rowsSums[row] = sum;
        data->done->signal();
    }
private:
    MatrixData* data;
    int row;
};
void mod() {
    printString("Matrix row test started - C++ API\n");

    MatrixData data;
    char input[30];

    printString("Unesite M broj redova: ");
    getString(input, 30);
    data.rows = stringToInt(input);

    printString("Unesite N broj kolona: ");
    getString(input, 30);
    data.cols = stringToInt(input);
    data.matrix = (int**) mem_alloc(data.rows * sizeof(int*));
    data.rowsSums = (int*) mem_alloc(data.rows * sizeof(int));
    for (int i = 0; i < data.rows; i++) {
        data.matrix[i] = (int*) mem_alloc(data.cols * sizeof(int));

        if (data.matrix[i] == nullptr) {
            printString("Greska pri alokaciji reda matrice\n");
            return;
        }

        data.rowsSums[i] = 0;
    }
    int expectedSum = 0;
    int counter = 1;
    for (int i = 0; i < data.rows; i++) {
        for (int j = 0; j < data.cols; j++) {
            printInt(counter);
            printString(". element: ");

            getString(input, 30);

            data.matrix[i][j] = stringToInt(input);
            expectedSum += data.matrix[i][j];

            counter++;
        }
    }
    Semaphore done(0);
    data.done = &done;
    Worker* workers[MAX];
    for (int i = 0; i < data.rows; i++) {
        workers[i] = new Worker(&data, i);
        workers[i]->start();
    }
    for (int i = 0; i < data.rows; i++) {
        done.wait();
    }

    int finalSum = 0;

    printString("\nZbirovi redova:\n");

    for (int i = 0; i < data.rows; i++) {
        printString("Red ");
        printInt(i);
        printString(": ");
        printInt(data.rowsSums[i]);
        printString("\n");

        finalSum += data.rowsSums[i];
    }

    printString("\nFinal matrix sum = ");
    printInt(finalSum);
    printString("\n");
    for (int i = 0; i < data.rows; i++) {
        mem_free(data.matrix[i]);
    }

    mem_free(data.matrix);
    mem_free(data.rowsSums);
}