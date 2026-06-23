#include "mod.hpp"
#include "../h/syscall_cpp.hpp"
#include "printing.hpp"

const int MAX_ROWS = 20;
const int DIGITS = 10;

int M, N;
int** mat;

int rowHist[MAX_ROWS][DIGITS];
int totalHist[DIGITS];

Semaphore* doneSem;

static unsigned long int next = 1;

int custom_rand(void) {
    next = next * 1103515245 + 12345;
    return (unsigned int)(next / 65536) % 32768;
}

void custom_srand(unsigned int seed) {
    next = seed;
}

class Worker : public Thread {
private:
    int rowIndex;
    int* row;
    int cols;

public:
    Worker(int rowIndex, int* row, int cols)
            : Thread(), rowIndex(rowIndex), row(row), cols(cols) {}

    void run() override {
        printString("Nit za red ");
        printInt(rowIndex);
        printString(" pocinje\n");

        for (int j = 0; j < cols; j++) {
            int digit = row[j] % 10;
            rowHist[rowIndex][digit]++;

            if ((j + 1) % 10 == 0) {
                printString("Nit za red ");
                printInt(rowIndex);
                printString(" obradila ");
                printInt(j + 1);
                printString(" elemenata, zove dispatch\n");

                Thread::dispatch();
            }
        }

        printString("Nit za red ");
        printInt(rowIndex);
        printString(" zavrsila\n");

        doneSem->signal();
    }
};

void mod() {
    char input[30];

    printString("MOD TEST: histogram poslednje cifre po redovima\n");

    printString("Unesite M: ");
    getString(input, 30);
    M = stringToInt(input);

    printString("\nUnesite N: ");
    getString(input, 30);
    N = stringToInt(input);
    printString("\n");

    if (M <= 0 || N <= 0 || M > MAX_ROWS) {
        printString("Lose dimenzije, koristi se M = 5, N = 25\n");
        M = 5;
        N = 25;
    }

    mat = (int**) mem_alloc(sizeof(int*) * M);

    for (int i = 0; i < M; i++) {
        mat[i] = (int*) mem_alloc(sizeof(int) * N);
    }

    custom_srand(12345);

    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            mat[i][j] = custom_rand();
        }
    }

    for (int i = 0; i < M; i++) {
        for (int d = 0; d < DIGITS; d++) {
            rowHist[i][d] = 0;
        }
    }

    for (int d = 0; d < DIGITS; d++) {
        totalHist[d] = 0;
    }

    printString("\nMatrica:\n");

    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            printInt(mat[i][j]);
            printString(" ");
        }
        printString("\n");
    }

    doneSem = new Semaphore(0);

    Worker* workers[MAX_ROWS];

    for (int i = 0; i < M; i++) {
        workers[i] = new Worker(i, mat[i], N);
        workers[i]->start();
    }

    for (int i = 0; i < M; i++) {
        doneSem->wait();
    }

    printString("\nHistogram po redovima:\n");

    for (int i = 0; i < M; i++) {
        printString("Red ");
        printInt(i);
        printString(": ");

        for (int d = 0; d < DIGITS; d++) {
            printString("[");
            printInt(d);
            printString("]=");
            printInt(rowHist[i][d]);
            printString(" ");
        }

        printString("\n");
    }

    for (int i = 0; i < M; i++) {
        for (int d = 0; d < DIGITS; d++) {
            totalHist[d] += rowHist[i][d];
        }
    }

    printString("\nUkupan histogram cele matrice:\n");

    for (int d = 0; d < DIGITS; d++) {
        printString("Brojeva koji se zavrsavaju na ");
        printInt(d);
        printString(" ima: ");
        printInt(totalHist[d]);
        printString("\n");
    }

    for (int i = 0; i < M; i++) {
        delete workers[i];
        mem_free(mat[i]);
    }

    mem_free(mat);

    delete doneSem;

    printString("mod() zavrsava\n");
}