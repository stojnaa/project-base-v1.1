#include "../h/syscall_cpp.hpp"
#include "printing.hpp"
#include "mod.hpp"

struct MatrixData {
    int** matrix;
    int* rowSums;
    int row;
    int cols;
};

static volatile int finishedCount = 0;

class Worker : public Thread {
private:
    MatrixData* data;

public:
    Worker(MatrixData* data) : Thread(), data(data) {}

    void run() override {
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
};

void mod() {
    char input[30];

    printString("Unesite broj redova: ");
    getString(input, 30);
    int rows = stringToInt(input);

    printString("Unesite broj kolona: ");
    getString(input, 30);
    int cols = stringToInt(input);

    if (rows <= 0 || cols <= 0) {
        printString("Neispravne dimenzije matrice\n");
        return;
    }

    int** matrix =
        (int**)mem_alloc(rows * sizeof(int*));

    if (matrix == nullptr) {
        printString("Greska pri alokaciji matrice\n");
        return;
    }

    for (int i = 0; i < rows; i++) {
        matrix[i] =
            (int*)mem_alloc(cols * sizeof(int));

        if (matrix[i] == nullptr) {
            printString("Greska pri alokaciji reda matrice\n");
            return;
        }
    }

    int* rowSums =
        (int*)mem_alloc(rows * sizeof(int));

    MatrixData* data =
        (MatrixData*)mem_alloc(rows * sizeof(MatrixData));

    Thread** threads =
        (Thread**)mem_alloc(rows * sizeof(Thread*));

    if (rowSums == nullptr ||
        data == nullptr ||
        threads == nullptr) {
        printString("Greska pri alokaciji\n");
        return;
    }

    /*
     * Za jednostavan test svaki element postavljamo na 1.
     * Ako korisnik treba da unosi elemente, ovde se samo
     * zameni dodela matrix[i][j] = 1 unosom broja.
     */
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printString("matrix[");
            printInt(i);
            printString("][");
            printInt(j);
            printString("] = ");

            getString(input, 30);
            matrix[i][j] = stringToInt(input);
        }

        rowSums[i] = 0;
    }

    finishedCount = 0;

    for (int i = 0; i < rows; i++) {
        data[i].matrix = matrix;
        data[i].rowSums = rowSums;
        data[i].row = i;
        data[i].cols = cols;

        threads[i] = new Worker(&data[i]);
        threads[i]->start();
    }

    while (finishedCount < rows) {
        Thread::dispatch();
    }

    int totalSum = 0;

    for (int i = 0; i < rows; i++) {
        totalSum += rowSums[i];
    }

    printString("Total matrix sum = ");
    printInt(totalSum);
    printString("\n");

    for (int i = 0; i < rows; i++) {
        delete threads[i];
    }

    for (int i = 0; i < rows; i++) {
        mem_free(matrix[i]);
    }

    mem_free(matrix);
    mem_free(rowSums);
    mem_free(data);
    mem_free(threads);
}