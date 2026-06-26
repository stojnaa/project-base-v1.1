#include "../h/riscv.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../lib/hw.h"

extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    userMain();
    userMainFinished = true;
    thread_exit();
}

int main() {
    Riscv::w_stvec((uint64)&supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    mainThread.setState(_thread::RUNNING);
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread

    thread_t userThread = nullptr;
    int ret = thread_create(&userThread, userMainWrapper, nullptr);

    if (ret < 0 || userThread == nullptr) {
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
        return ret;
    }

    while (!userMainFinished) {
        thread_dispatch();
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;

    return 0;
}
// #include "mod.hpp"
// #include "printing.hpp"
// #include "../h/syscall_cpp.hpp"
// #include "../h/syscall_c.hpp"
//
// // ============================================================
// // 1. Nadjes blok za modifikaciju koju si dobila.
// // 2. Promenis #if 0 u #if 1 samo za taj blok.
// // 3. U funkciji mod() dole odkomentarises poziv odgovarajuceg testa.
// // 4. U userMain.cpp pozoves mod() kroz neki case, npr. case 8.
// // ============================================================
//
//
// // ============================================================
// // 1. getThreadId()
// //
// // Ideja modifikacije:
// // - Svaka nit dobija jedinstveni id.
// // - U Thread.cpp imas static int id.
// // - Pri thread_create se inkrementira id i dodeljuje novoj niti.
// // - getThreadId() vraca id trenutno aktivne niti.
// //
// // Test:
// // - Pravimo tri C niti A, B i C.
// // - Svaka nit vise puta poziva getThreadId() i ispisuje svoj id.
// // - printMutex sluzi da se ispisi ne pomesaju.
// // ============================================================
//
// #if 0
//
// static sem_t getIdPrintMutex;
//
// // Vestacko kasnjenje da bi se niti smenjivale tokom izvrsavanja.
// static void getIdDelay() {
//     for (volatile uint64 i = 0; i < 30000000; i++) {}
// }
//
// // Telo C niti.
// // arg je pokazivac na karakter: 'A', 'B' ili 'C'.
// static void getIdWorker(void* arg) {
//     char name = *((char*)arg);
//
//     for (int i = 0; i < 10; i++) {
//         getIdDelay();
//
//         // Sistemski poziv koji vraca id trenutno aktivne niti.
//         int id = getThreadId();
//
//         // Zakljucavamo ispis da dve niti ne pisu u isto vreme.
//         sem_wait(getIdPrintMutex);
//
//         printString("Nit ");
//         putc(name);
//         printString(" ima id = ");
//         printInt(id);
//         printString("\n");
//
//         sem_signal(getIdPrintMutex);
//     }
// }
//
// void TestGetThreadId() {
//     printString("\nTEST getThreadId\n");
//
//     // Semafor za medjusobno iskljucenje pri ispisu.
//     sem_open(&getIdPrintMutex, 1);
//
//     char a = 'A';
//     char b = 'B';
//     char c = 'C';
//
//     thread_t ta;
//     thread_t tb;
//     thread_t tc;
//
//     // Kreiramo tri niti.
//     thread_create(&ta, getIdWorker, &a);
//     thread_create(&tb, getIdWorker, &b);
//     thread_create(&tc, getIdWorker, &c);
//
//     // Posto ovde nemamo join, vrtimo dispatch da damo nitima sansu da rade.
//     for (int i = 0; i < 50; i++) {
//         thread_dispatch();
//     }
//
//     sem_close(getIdPrintMutex);
//
//     printString("GET THREAD ID TEST FINISHED\n");
// }
//
// #endif
//
//
// // ============================================================
// // 2. SetMaximumThreads()
// //
// // Ideja modifikacije:
// // - setMaximumThreads(n) ogranicava koliko niti sme aktivno da radi.
// // - Implementacija obicno koristi semafor cija je pocetna vrednost n.
// // - Pri kreiranju/startovanju niti radi se wait nad tim semaforom.
// // - Kada nit zavrsi, radi se signal da se oslobodi jedno mesto.
// //
// // Test:
// // - Postavimo maksimum aktivnih niti na 3.
// // - Kreiramo 20 niti.
// // - Svaka nit ispisuje svoj id i iteracije.
// // - Kada zavrsi, signalizira doneSem.
// // ============================================================
//
// #if 0
//
// static const int LIMIT_NUM_THREADS = 20;
// static sem_t limitDoneSem;
//
// // Vestacki rad zavisan od id-ja niti.
// static void limitBusyWaitById(int id) {
//     for (int i = 0; i < id + 1; i++) {
//         for (volatile int j = 0; j < 30000; j++) {
//             for (volatile int k = 0; k < 1000; k++) {}
//         }
//
//         Thread::dispatch();
//     }
// }
//
// class LimitWorker : public Thread {
// public:
//     LimitWorker() : Thread() {}
//
//     void run() override {
//         int id = Thread::getThreadId();
//
//         for (int i = 0; i < 5; i++) {
//             printString("Hello! Thread::myId = ");
//             printInt(id);
//             printString(", iteration = ");
//             printInt(i);
//             printString("\n");
//
//             Thread::dispatch();
//         }
//
//         limitBusyWaitById(id);
//
//         printString("Thread finished, id = ");
//         printInt(id);
//         printString("\n");
//
//         // Javljamo glavnoj niti da je ova nit zavrsila.
//         sem_signal(limitDoneSem);
//     }
// };
//
// void TestMaximumThreads() {
//     printString("\nTEST SetMaximumThreads\n");
//
//     // Ovde podesi koliko najvise niti sme aktivno da postoji.
//     // Ako je kod tebe ime drugacije, promeni samo ovu liniju.
//     Thread::SetMaximumThreads(3);
//
//     sem_open(&limitDoneSem, 0);
//
//     Thread* threads[LIMIT_NUM_THREADS];
//
//     printString("Creating 20 threads, maximum active threads = 3\n");
//
//     for (int i = 0; i < LIMIT_NUM_THREADS; i++) {
//         threads[i] = new LimitWorker();
//         threads[i]->start();
//     }
//
//     // Cekamo da svih 20 niti zavrsi.
//     for (int i = 0; i < LIMIT_NUM_THREADS; i++) {
//         sem_wait(limitDoneSem);
//     }
//
//     for (int i = 0; i < LIMIT_NUM_THREADS; i++) {
//         delete threads[i];
//     }
//
//     sem_close(limitDoneSem);
//
//     printString("THREAD LIMIT TEST FINISHED\n");
// }
//
// #endif
//
//
// // ============================================================
// // 3. obican join()
// //
// // Ideja modifikacije:
// // - Svaka nit ima svoj joinSem.
// // - Druge niti mogu da cekaju zavrsetak te niti pozivom join().
// // - joinWaitingCount broji koliko niti ceka zavrsetak date niti.
// // - Kada se nit zavrsi, ona signalizira joinSem onoliko puta
// //   koliko ima cekalaca.
// //
// // Test:
// // - Jedna target nit radi neko vreme.
// // - Tri waiter niti pozovu join nad istom target niti.
// // - Sve tri waiter niti smeju da nastave tek kada target zavrsi.
// // ============================================================
//
// #if 0
//
// static sem_t joinDoneSem;
//
// class JoinTarget : public Thread {
// private:
//     int id;
//
// public:
//     JoinTarget(int id) : Thread(), id(id) {}
//
//     void run() override {
//         printString("Target nit pocinje, id = ");
//         printInt(id);
//         printString("\n");
//
//         for (int i = 0; i < 10; i++) {
//             printString("Target radi, i = ");
//             printInt(i);
//             printString("\n");
//             Thread::dispatch();
//         }
//
//         printString("Target nit zavrsava\n");
//     }
// };
//
// class JoinWaiter : public Thread {
// private:
//     int id;
//     JoinTarget* target;
//
// public:
//     JoinWaiter(int id, JoinTarget* target) : Thread(), id(id), target(target) {}
//
//     void run() override {
//         printString("Waiter ");
//         printInt(id);
//         printString(" zove join\n");
//
//         // Ova nit se blokira dok target ne zavrsi.
//         target->join();
//
//         printString("Waiter ");
//         printInt(id);
//         printString(" nastavlja posle join\n");
//
//         sem_signal(joinDoneSem);
//     }
// };
//
// void TestJoin() {
//     printString("\nTEST obican join\n");
//
//     sem_open(&joinDoneSem, 0);
//
//     JoinTarget* target = new JoinTarget(100);
//
//     JoinWaiter* w1 = new JoinWaiter(1, target);
//     JoinWaiter* w2 = new JoinWaiter(2, target);
//     JoinWaiter* w3 = new JoinWaiter(3, target);
//
//     target->start();
//     w1->start();
//     w2->start();
//     w3->start();
//
//     // Cekamo da sva tri waitera prodju join.
//     sem_wait(joinDoneSem);
//     sem_wait(joinDoneSem);
//     sem_wait(joinDoneSem);
//
//     delete target;
//     delete w1;
//     delete w2;
//     delete w3;
//
//     sem_close(joinDoneSem);
//
//     printString("JOIN TEST FINISHED\n");
// }
//
// #endif
//
//
// // ============================================================
// // 4a. joinAll + addChild, direktna deca
// //
// // Ideja modifikacije:
// // - addChild(child) registruje child kao dete tekuce niti.
// // - joinAll() ceka da se zavrse sva direktna deca.
// // - Ova verzija ne mora da ceka unuke, vec samo neposrednu decu.
// //
// // Test:
// // - Roditelj napravi tri deteta.
// // - Svako dete radi dispatch par puta i zavrsi.
// // - Roditelj pozove joinAll i nastavlja tek kad sva direktna deca zavrse.
// // ============================================================
//
// #if 0
//
// static volatile bool directJoinAllFinished = false;
//
// class DirectChild : public Thread {
// private:
//     int id;
//
// public:
//     DirectChild(int id) : Thread(), id(id) {}
//
//     void run() override {
//         printString("Dete ");
//         printInt(id);
//         printString(" pocinje\n");
//
//         for (int i = 0; i < 5; i++) {
//             Thread::dispatch();
//         }
//
//         printString("Dete ");
//         printInt(id);
//         printString(" zavrsava\n");
//     }
// };
//
// class DirectParent : public Thread {
// public:
//     void run() override {
//         printString("Roditelj pocinje\n");
//
//         DirectChild* c1 = new DirectChild(1);
//         DirectChild* c2 = new DirectChild(2);
//         DirectChild* c3 = new DirectChild(3);
//
//         c1->start();
//         addChild(c1);
//
//         c2->start();
//         addChild(c2);
//
//         c3->start();
//         addChild(c3);
//
//         printString("Roditelj zove joinAll\n");
//
//         // Roditelj ceka svu direktnu decu.
//         joinAll();
//
//         printString("Roditelj nastavlja posle direktne dece\n");
//
//         delete c1;
//         delete c2;
//         delete c3;
//
//         directJoinAllFinished = true;
//     }
// };
//
// void TestJoinAllDirectChildren() {
//     printString("\nTEST joinAll direktna deca\n");
//
//     DirectParent* p = new DirectParent();
//     p->start();
//
//     while (!directJoinAllFinished) {
//         Thread::dispatch();
//     }
//
//     delete p;
//
//     printString("JOIN ALL DIRECT CHILDREN TEST FINISHED\n");
// }
//
// #endif
//
//
// // ============================================================
// // 4b. joinAll + addChild, svi potomci: deca dece
// //
// // Ideja modifikacije:
// // - addChild ne azurira samo roditelja, nego i sve pretke.
// // - joinAll() ceka sve aktivne potomke:
// //   direktnu decu, unuke, praunuke...
// //
// // Test:
// // - A napravi B niti i jednu C nit.
// // - Svaka B nit napravi svoje C niti.
// // - A pozove joinAll.
// // - A sme da nastavi tek kada se zavrse i B niti i sve C niti.
// // ============================================================
//
// #if 0
//
// static volatile bool descendantJoinAllFinished = false;
//
// static volatile int nextB = 1;
// static volatile int nextC = 1;
//
// static void joinAllBusyWait() {
//     for (uint64 i = 0; i < 10000; i++) {
//         for (uint64 j = 0; j < 30000; j++) {}
//         Thread::dispatch();
//     }
// }
//
// class DescCThread : public Thread {
// private:
//     int id;
//
// public:
//     DescCThread(int id) : Thread(), id(id) {}
//
//     void run() override {
//         printString("C");
//         printInt(id);
//         printString(" started\n");
//
//         joinAllBusyWait();
//
//         printString("C");
//         printInt(id);
//         printString(" finished\n");
//     }
// };
//
// class DescBThread : public Thread {
// private:
//     int id;
//
// public:
//     DescBThread(int id) : Thread(), id(id) {}
//
//     void run() override {
//         printString("B");
//         printInt(id);
//         printString(" started\n");
//
//         DescCThread* c1 = new DescCThread(nextC++);
//         DescCThread* c2 = new DescCThread(nextC++);
//         DescCThread* c3 = new DescCThread(nextC++);
//
//         c1->start();
//         addChild(c1);
//
//         c2->start();
//         addChild(c2);
//
//         c3->start();
//         addChild(c3);
//
//         printString("B");
//         printInt(id);
//         printString(" waiting for all children\n");
//
//         // B ceka svoje C niti.
//         joinAll();
//
//         printString("B");
//         printInt(id);
//         printString(" continued after all children\n");
//
//         delete c1;
//         delete c2;
//         delete c3;
//
//         printString("B");
//         printInt(id);
//         printString(" finished\n");
//     }
// };
//
// class DescAThread : public Thread {
// public:
//     DescAThread() : Thread() {}
//
//     void run() override {
//         printString("A started\n");
//
//         DescBThread* b1 = new DescBThread(nextB++);
//         DescBThread* b2 = new DescBThread(nextB++);
//         DescBThread* b3 = new DescBThread(nextB++);
//
//         DescCThread* c1 = new DescCThread(nextC++);
//
//         b1->start();
//         addChild(b1);
//
//         b2->start();
//         addChild(b2);
//
//         b3->start();
//         addChild(b3);
//
//         c1->start();
//         addChild(c1);
//
//         printString("A waiting for all children\n");
//
//         // Kod verzije za sve potomke, A ceka i B niti i C niti koje su B napravile.
//         joinAll();
//
//         printString("A continued after all children\n");
//
//         delete b1;
//         delete b2;
//         delete b3;
//         delete c1;
//
//         printString("A finished\n");
//
//         descendantJoinAllFinished = true;
//     }
// };
//
// void TestJoinAllDescendants() {
//     printString("\nTEST joinAll svi potomci\n");
//
//     DescAThread* a = new DescAThread();
//
//     printString("A created\n");
//
//     a->start();
//
//     while (!descendantJoinAllFinished) {
//         Thread::dispatch();
//     }
//
//     delete a;
//
//     printString("THREAD JOIN ALL DESCENDANTS TEST FINISHED\n");
// }
//
// #endif
//
//
// // ============================================================
// // 5. send + receive
// //
// // Ideja modifikacije:
// // - Svaka nit ima mailbox za jednu poruku.
// // - spaceAvailable govori da li ima mesta za novu poruku.
// // - itemAvailable govori da li postoji poruka za citanje.
// // - send(handle, msg) salje poruku niti handle.
// // - receive() prima poruku za trenutno aktivnu nit.
// // - Ako nema mesta, send blokira running nit.
// // - Ako nema poruke, receive blokira running nit.
// //
// // Test:
// // - A salje B i C.
// // - B salje dve poruke C.
// // - C primi tri poruke, pa posalje odgovore A i B.
// // - A i B prime svoje odgovore.
// // ============================================================
//
// #if 0
//
// static sem_t msgDoneSem;
// static sem_t msgPrintSem;
//
// static Thread* messageThreadA;
// static Thread* messageThreadB;
// static Thread* messageThreadC;
//
// static void msgSafePrint(const char* text) {
//     sem_wait(msgPrintSem);
//     printString(text);
//     sem_signal(msgPrintSem);
// }
//
// static void msgSafePrintMessage(const char* who, char* msg) {
//     sem_wait(msgPrintSem);
//
//     printString(who);
//     printString(msg);
//     printString("\n");
//
//     sem_signal(msgPrintSem);
// }
//
// class MessageThreadA : public Thread {
// public:
//     void run() override {
//         messageThreadB->send((char*)"A -> B: prva poruka od A");
//         msgSafePrint("A sent message to B\n");
//
//         messageThreadC->send((char*)"A -> C: druga poruka od A");
//         msgSafePrint("A sent message to C\n");
//
//         char* msg = receive();
//         msgSafePrintMessage("A received: ", msg);
//
//         sem_signal(msgDoneSem);
//     }
// };
//
// class MessageThreadB : public Thread {
// public:
//     void run() override {
//         messageThreadC->send((char*)"B -> C: prva poruka od B");
//         msgSafePrint("B sent first message to C\n");
//
//         messageThreadC->send((char*)"B -> C: druga poruka od B");
//         msgSafePrint("B sent second message to C\n");
//
//         char* msg1 = receive();
//         msgSafePrintMessage("B received first: ", msg1);
//
//         char* msg2 = receive();
//         msgSafePrintMessage("B received second: ", msg2);
//
//         sem_signal(msgDoneSem);
//     }
// };
//
// class MessageThreadC : public Thread {
// public:
//     void run() override {
//         char* msg1 = receive();
//         msgSafePrintMessage("C received first: ", msg1);
//
//         char* msg2 = receive();
//         msgSafePrintMessage("C received second: ", msg2);
//
//         char* msg3 = receive();
//         msgSafePrintMessage("C received third: ", msg3);
//
//         messageThreadB->send((char*)"C -> B: odgovor od C");
//         msgSafePrint("C sent message to B\n");
//
//         messageThreadA->send((char*)"C -> A: odgovor od C");
//         msgSafePrint("C sent message to A\n");
//
//         sem_signal(msgDoneSem);
//     }
// };
//
// void TestMessage() {
//     printString("\nTEST send/receive\n");
//
//     sem_open(&msgDoneSem, 0);
//     sem_open(&msgPrintSem, 1);
//
//     messageThreadA = new MessageThreadA();
//     messageThreadB = new MessageThreadB();
//     messageThreadC = new MessageThreadC();
//
//     messageThreadA->start();
//     messageThreadB->start();
//     messageThreadC->start();
//
//     sem_wait(msgDoneSem);
//     sem_wait(msgDoneSem);
//     sem_wait(msgDoneSem);
//
//     delete messageThreadA;
//     delete messageThreadB;
//     delete messageThreadC;
//
//     sem_close(msgPrintSem);
//     sem_close(msgDoneSem);
//
//     printString("MESSAGE TEST FINISHED\n");
// }
//
// #endif
//
//
// // ============================================================
// // 6. priority thread
// //
// // Ideja modifikacije:
// // - Scheduler ima vise redova: HIGH, MEDIUM, LOW.
// // - Kada bira sledecu nit, prvo gleda HIGH, pa MEDIUM, pa LOW.
// // - Imas thread_create sa prioritetom i bez prioriteta.
// // - Ako prioritet nije naveden, u trap.cpp se podrazumevano stavlja LOW.
// //
// // Test:
// // - Pravimo low, medium i high nit.
// // - Ocekuje se da scheduler prvo daje prednost HIGH niti,
// //   zatim MEDIUM, pa LOW.
// // ============================================================
//
// #if 0
//
// static volatile bool priorityHighFinished = false;
// static volatile bool priorityMediumFinished = false;
// static volatile bool priorityLowFinished = false;
// static volatile bool priorityTestFinished = false;
//
// static void priorityWork(const char* name) {
//     for (int i = 0; i < 5; i++) {
//         printString(name);
//         printString(": i=");
//         printInt(i);
//         printString("\n");
//
//         Thread::dispatch();
//     }
// }
//
// class PriorityHighThread : public Thread {
// public:
//     PriorityHighThread() : Thread(HIGH) {}
//
//     void run() override {
//         priorityWork("HIGH");
//         priorityHighFinished = true;
//     }
// };
//
// class PriorityMediumThread : public Thread {
// public:
//     PriorityMediumThread() : Thread(MEDIUM) {}
//
//     void run() override {
//         priorityWork("MEDIUM");
//         priorityMediumFinished = true;
//     }
// };
//
// class PriorityLowThread : public Thread {
// public:
//     PriorityLowThread() : Thread(LOW) {}
//
//     void run() override {
//         priorityWork("LOW");
//         priorityLowFinished = true;
//     }
// };
//
// class PriorityMainThread : public Thread {
// public:
//     PriorityMainThread() : Thread(LOW) {}
//
//     void run() override {
//         Thread* low = new PriorityLowThread();
//         Thread* medium = new PriorityMediumThread();
//         Thread* high = new PriorityHighThread();
//
//         printString("Priority threads created\n");
//
//         low->start();
//         medium->start();
//         high->start();
//
//         while (!(priorityHighFinished && priorityMediumFinished && priorityLowFinished)) {
//             Thread::dispatch();
//         }
//
//         delete low;
//         delete medium;
//         delete high;
//
//         printString("PRIORITY TEST FINISHED\n");
//
//         priorityTestFinished = true;
//     }
// };
//
// void TestPriority() {
//     printString("\nTEST priority scheduler\n");
//
//     Thread* test = new PriorityMainThread();
//
//     test->start();
//
//     while (!priorityTestFinished) {
//         Thread::dispatch();
//     }
//
//     delete test;
// }
//
// #endif
//
//
// // ============================================================
// // 7. pair + sync
// //
// // Ideja modifikacije:
// // - pair(a, b) uparuje dve niti.
// // - Svaka nit ima pairPartner.
// // - syncOwner je zajednicki vlasnik podataka para.
// // - pairWaiting broji koliko niti iz para je stiglo do sync.
// // - pairMutex stiti pairWaiting.
// // - pairGate je semafor na kome prva nit ceka drugu.
// // - sync je barijera za dve niti.
// //
// // Test:
// // - A i B su uparene.
// // - U svakoj iteraciji obe pozovu sync.
// // - Prva koja stigne ceka, druga je pusta.
// // ============================================================
//
// #if 0
//
// static sem_t pairDoneSem;
// static sem_t pairPrintSem;
//
// static void pairPrintBefore(const char* name, int id, int iteration) {
//     sem_wait(pairPrintSem);
//
//     printString(name);
//     printString(" before sync, id = ");
//     printInt(id);
//     printString(", iteration = ");
//     printInt(iteration);
//     printString("\n");
//
//     sem_signal(pairPrintSem);
// }
//
// static void pairPrintAfter(const char* name, int id, int iteration) {
//     sem_wait(pairPrintSem);
//
//     printString(name);
//     printString(" after sync, id = ");
//     printInt(id);
//     printString(", iteration = ");
//     printInt(iteration);
//     printString("\n");
//
//     sem_signal(pairPrintSem);
// }
//
// class PairTestThreadA : public Thread {
// public:
//     void run() override {
//         int id = Thread::getThreadId();
//
//         for (int i = 0; i < 3; i++) {
//             pairPrintBefore("A", id, i);
//
//             sync();
//
//             pairPrintAfter("A", id, i);
//
//             Thread::dispatch();
//         }
//
//         sem_signal(pairDoneSem);
//     }
// };
//
// class PairTestThreadB : public Thread {
// public:
//     void run() override {
//         int id = Thread::getThreadId();
//
//         for (int i = 0; i < 3; i++) {
//             pairPrintBefore("B", id, i);
//
//             sync();
//
//             pairPrintAfter("B", id, i);
//
//             Thread::dispatch();
//         }
//
//         sem_signal(pairDoneSem);
//     }
// };
//
// void TestThreadPair() {
//     printString("\nTEST pair/sync\n");
//
//     sem_open(&pairDoneSem, 0);
//     sem_open(&pairPrintSem, 1);
//
//     Thread* a = new PairTestThreadA();
//     Thread* b = new PairTestThreadB();
//
//     a->start();
//     b->start();
//
//     Thread::pair(a, b);
//
//     sem_wait(pairDoneSem);
//     sem_wait(pairDoneSem);
//
//     delete a;
//     delete b;
//
//     sem_close(pairPrintSem);
//     sem_close(pairDoneSem);
//
//     printString("THREAD PAIR TEST FINISHED\n");
// }
//
// #endif
//
//
// // ============================================================
// // 8. matrica histogram poslednje cifre
// //
// // Ideja modifikacije:
// // - Pravi se matrica M x N.
// // - Elementi se dobijaju pomocu date custom_rand funkcije.
// // - Svaki red matrice obradjuje posebna nit.
// // - Nit broji koliko brojeva u njenom redu se zavrsava na 0,1,...,9.
// // - Na svakih 10 brojeva u redu nit poziva dispatch.
// // - Kada sve niti zavrse, glavna nit sabira histograme redova
// //   u ukupni histogram cele matrice.
// // ============================================================
//
// #if 0
//
// const int HIST_MAX_ROWS = 20;
// const int HIST_DIGITS = 10;
//
// int histM;
// int histN;
// int** histMat;
//
// int rowHist[HIST_MAX_ROWS][HIST_DIGITS];
// int totalHist[HIST_DIGITS];
//
// Semaphore* histDoneSem;
//
// static unsigned long int histNext = 1;
//
// int custom_rand(void) {
//     histNext = histNext * 1103515245 + 12345;
//     return (unsigned int)(histNext / 65536) % 32768;
// }
//
// void custom_srand(unsigned int seed) {
//     histNext = seed;
// }
//
// class HistogramWorker : public Thread {
// private:
//     int rowIndex;
//     int* row;
//     int cols;
//
// public:
//     HistogramWorker(int rowIndex, int* row, int cols)
//             : Thread(), rowIndex(rowIndex), row(row), cols(cols) {}
//
//     void run() override {
//         printString("Nit za red ");
//         printInt(rowIndex);
//         printString(" pocinje\n");
//
//         for (int j = 0; j < cols; j++) {
//             int digit = row[j] % 10;
//             rowHist[rowIndex][digit]++;
//
//             if ((j + 1) % 10 == 0) {
//                 printString("Nit za red ");
//                 printInt(rowIndex);
//                 printString(" obradila ");
//                 printInt(j + 1);
//                 printString(" elemenata, zove dispatch\n");
//
//                 Thread::dispatch();
//             }
//         }
//
//         printString("Nit za red ");
//         printInt(rowIndex);
//         printString(" zavrsila\n");
//
//         histDoneSem->signal();
//     }
// };
//
// void TestMatrixHistogram() {
//     char input[30];
//
//     printString("\nTEST matrica histogram poslednje cifre po redovima\n");
//
//     printString("Unesite M: ");
//     getString(input, 30);
//     histM = stringToInt(input);
//
//     printString("\nUnesite N: ");
//     getString(input, 30);
//     histN = stringToInt(input);
//     printString("\n");
//
//     if (histM <= 0 || histN <= 0 || histM > HIST_MAX_ROWS) {
//         printString("Lose dimenzije, koristi se M = 5, N = 25\n");
//         histM = 5;
//         histN = 25;
//     }
//
//     histMat = (int**) mem_alloc(sizeof(int*) * histM);
//
//     for (int i = 0; i < histM; i++) {
//         histMat[i] = (int*) mem_alloc(sizeof(int) * histN);
//     }
//
//     custom_srand(12345);
//
//     for (int i = 0; i < histM; i++) {
//         for (int j = 0; j < histN; j++) {
//             histMat[i][j] = custom_rand();
//         }
//     }
//
//     for (int i = 0; i < histM; i++) {
//         for (int d = 0; d < HIST_DIGITS; d++) {
//             rowHist[i][d] = 0;
//         }
//     }
//
//     for (int d = 0; d < HIST_DIGITS; d++) {
//         totalHist[d] = 0;
//     }
//
//     printString("\nMatrica:\n");
//
//     for (int i = 0; i < histM; i++) {
//         for (int j = 0; j < histN; j++) {
//             printInt(histMat[i][j]);
//             printString(" ");
//         }
//         printString("\n");
//     }
//
//     histDoneSem = new Semaphore(0);
//
//     HistogramWorker* workers[HIST_MAX_ROWS];
//
//     for (int i = 0; i < histM; i++) {
//         workers[i] = new HistogramWorker(i, histMat[i], histN);
//         workers[i]->start();
//     }
//
//     for (int i = 0; i < histM; i++) {
//         histDoneSem->wait();
//     }
//
//     printString("\nHistogram po redovima:\n");
//
//     for (int i = 0; i < histM; i++) {
//         printString("Red ");
//         printInt(i);
//         printString(": ");
//
//         for (int d = 0; d < HIST_DIGITS; d++) {
//             printString("[");
//             printInt(d);
//             printString("]=");
//             printInt(rowHist[i][d]);
//             printString(" ");
//         }
//
//         printString("\n");
//     }
//
//     for (int i = 0; i < histM; i++) {
//         for (int d = 0; d < HIST_DIGITS; d++) {
//             totalHist[d] += rowHist[i][d];
//         }
//     }
//
//     printString("\nUkupan histogram cele matrice:\n");
//
//     for (int d = 0; d < HIST_DIGITS; d++) {
//         printString("Brojeva koji se zavrsavaju na ");
//         printInt(d);
//         printString(" ima: ");
//         printInt(totalHist[d]);
//         printString("\n");
//     }
//
//     for (int i = 0; i < histM; i++) {
//         delete workers[i];
//         mem_free(histMat[i]);
//     }
//
//     mem_free(histMat);
//
//     delete histDoneSem;
//
//     printString("MATRIX HISTOGRAM TEST FINISHED\n");
// }
//
// #endif
//
//
// // ============================================================
// // mod() - ovde samo odkomentarisi ono sto trenutno testiras
// // ============================================================
//
// void mod() {
//     printString("\n============================\n");
//     printString("MODIFIKACIJE - KOSTUR TEST\n");
//     printString("============================\n");
//
//     // 1. getThreadId
//     // TestGetThreadId();
//
//     // 2. SetMaximumThreads
//     // TestMaximumThreads();
//
//     // 3. obican join
//     // TestJoin();
//
//     // 4a. joinAll direktna deca
//     // TestJoinAllDirectChildren();
//
//     // 4b. joinAll svi potomci, deca dece
//     // TestJoinAllDescendants();
//
//     // 5. send/receive
//     // TestMessage();
//
//     // 6. priority scheduler
//     // TestPriority();
//
//     // 7. pair/sync
//     // TestThreadPair();
//
//     // 8. matrica histogram
//     // TestMatrixHistogram();
//
//     printString("\nAko nista nije odkomentarisano, nijedan test se nije pokrenuo.\n");
//     printString("KRAJ MOD KOSTURA\n");
// }