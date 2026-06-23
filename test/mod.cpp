#include "mod.hpp"
#include "printing.hpp"
#include "../h/syscall_cpp.hpp"

class CThread : public Thread {
public:
    CThread(int id) : Thread(), id(id) {}

protected:
    void run() override {
        printString("    C pocinje: ");
        printInt(id);
        printString("\n");

        for (int i = 0; i < 5; i++) {
            Thread::dispatch();
        }

        printString("    C zavrsava: ");
        printInt(id);
        printString("\n");
    }

private:
    int id;
};

class BThread : public Thread {
public:
    BThread(int id) : Thread(), id(id) {}

protected:
    void run() override {
        printString("B pocinje: ");
        printInt(id);
        printString("\n");

        CThread* c1 = new CThread(id * 10 + 1);
        CThread* c2 = new CThread(id * 10 + 2);

        c1->start();
        c2->start();

        this->addChild(c1);
        this->addChild(c2);

        printString("B zove joinAll: ");
        printInt(id);
        printString("\n");

        this->joinAll();

        printString("B nastavlja tek kad su njegova C deca zavrsila: ");
        printInt(id);
        printString("\n");

        delete c1;
        delete c2;

        printString("B zavrsava: ");
        printInt(id);
        printString("\n");
    }

private:
    int id;
};

class AThread : public Thread {
protected:
    void run() override {
        printString("A pocinje\n");

        BThread* b1 = new BThread(1);
        BThread* b2 = new BThread(2);

        b1->start();
        b2->start();

        this->addChild(b1);
        this->addChild(b2);

        printString("A zove joinAll\n");

        this->joinAll();

        printString("A nastavlja tek kad su B i C niti zavrsile\n");

        delete b1;
        delete b2;

        printString("A zavrsava\n");
    }
};

void mod() {
    printString("MOD TEST: addChild + joinAll\n");

    AThread* a = new AThread();

    a->start();

    for (int i = 0; i < 30; i++) {
        Thread::dispatch();
    }

    printString("mod() zavrsava\n");

    delete a;
}