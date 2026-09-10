# RISC-V Operating System Kernel

A small educational operating system kernel for the RISC-V architecture, implemented in C++ and RISC-V assembly as part of the Operating Systems course at the University of Belgrade, School of Electrical Engineering.

The project implements dynamic memory allocation, lightweight threads, cooperative context switching, FIFO scheduling, semaphores, system calls and user/supervisor privilege separation. The kernel runs in the QEMU RISC-V emulator.

## Implemented Features

### Memory Management

* Custom block-based dynamic memory allocator
* First-fit allocation strategy
* Allocation metadata stored inside heap blocks
* Validation of addresses passed to `mem_free`
* Detection of invalid and overlapping blocks
* Coalescing of adjacent free memory blocks
* Custom global `new` and `delete` operators

### Thread Management

* Thread creation and termination
* Separate stack allocation for each thread
* Thread states:

  * `CREATED`
  * `READY`
  * `RUNNING`
  * `BLOCKED`
  * `FINISHED`
* Cooperative thread dispatch
* Context preservation across thread switches
* RISC-V assembly implementation of context switching
* C and C++ thread APIs

### Scheduling

* FIFO ready queue
* Scheduling of ready threads
* Exclusion of blocked and finished threads
* Reinsertion of the previously running thread when appropriate

### Semaphores

* Semaphore creation and destruction
* `wait` and `signal` operations
* Blocking and unblocking of threads
* FIFO queue of blocked threads
* Unblocking of all waiting threads when a semaphore is closed
* Multi-resource operations through `waitN` and `signalN`
* C and C++ semaphore APIs

### System Calls

The kernel handles system calls through RISC-V `ecall` instructions and supervisor traps.

Implemented system-call groups include:

* Memory allocation and deallocation
* Thread creation, termination and dispatch
* Semaphore creation, closing, waiting and signaling
* Multi-resource semaphore operations
* Console input and output

### Privilege Modes and Traps

* User-mode execution of application code
* Supervisor-mode kernel execution
* Supervisor trap entry implemented in RISC-V assembly
* System-call dispatch through a central trap handler
* External console interrupt handling
* Illegal-instruction detection
* Preservation and restoration of the trap frame

### C and C++ APIs

The project exposes both procedural C-style and object-oriented C++ APIs.

The C++ API provides the following abstractions:

* `Thread`
* `Semaphore`
* `PeriodicThread`
* `Console`

## Current Limitations

The current version implements project levels 1–3.

The following functionality is not completed:

* Thread sleeping
* Timer-based asynchronous context switching
* Preemptive scheduling
* Periodic thread execution

The `time_sleep` system call currently returns an error, and tests that depend on project level 4 are disabled.

## Architecture

A user program calls the C or C++ system-call API. The API places the system-call identifier and arguments into RISC-V registers and executes an `ecall`.

The supervisor trap handler then:

1. Saves the interrupted execution context
2. Reads the system-call identifier and arguments
3. Executes the appropriate kernel operation
4. Stores the return value in the saved trap frame
5. Restores the execution context
6. Returns execution to user mode

Thread context switching is implemented separately in RISC-V assembly by preserving and restoring the stack pointer, return address and saved registers.

## Project Structure

```text
.
├── h/                         # Kernel and API header files
│   ├── MemoryAllocator.hpp
│   ├── Scheduler.hpp
│   ├── Semaphore.hpp
│   ├── Thread.hpp
│   ├── TrapFrame.hpp
│   ├── riscv.hpp
│   ├── syscall_c.hpp
│   └── syscall_cpp.hpp
├── src/                       # Kernel implementation
│   ├── MemoryAllocator.cpp
│   ├── Scheduler.cpp
│   ├── Semaphore.cpp
│   ├── Thread.cpp
│   ├── contextSwitch.S
│   ├── main.cpp
│   ├── supervisorTrap.S
│   ├── syscall_c.cpp
│   ├── syscall_cpp.cpp
│   ├── trap.cpp
│   └── userMain.cpp
├── test/                      # C and C++ kernel tests
├── lib/                       # Provided hardware and console support
├── Makefile
└── kernel.ld                  # RISC-V linker script
```

## Tech Stack

* C++11
* RISC-V assembly
* RISC-V privileged architecture
* GCC cross-compiler toolchain
* GNU Make
* QEMU
* GDB

## Building and Running

### Prerequisites

The project is intended to be built on Linux or Windows through WSL.

Required tools:

* GNU Make
* QEMU with RISC-V support
* A 64-bit RISC-V GCC cross-compiler
* GNU Binutils for RISC-V
* GDB Multiarch for debugging

The Makefile automatically attempts to detect one of the following toolchain prefixes:

```text
riscv64-unknown-elf-
riscv64-linux-gnu-
riscv64-unknown-linux-gnu-
```

### Build the Kernel

From the project root, run:

```bash
make
```

This produces the kernel executable and an assembly listing.

### Run in QEMU

```bash
make qemu
```

The kernel starts inside the QEMU RISC-V emulator and displays the interactive test menu.

### Debug with GDB

Start QEMU in debugging mode:

```bash
make qemu-gdb
```

In another terminal, start GDB:

```bash
gdb-multiarch
```

The generated `.gdbinit` file contains the connection information for the QEMU GDB server.

### Clean Generated Files

```bash
make clean
```

## Tests

The interactive test runner is implemented in `src/userMain.cpp`.

After starting the kernel, enter the number of the test you want to run.

| Test | Description                                                     | Status          |
| ---: | --------------------------------------------------------------- | --------------- |
|    1 | Threads through the C API and synchronous context switching     | Implemented     |
|    2 | Threads through the C++ API and synchronous context switching   | Implemented     |
|    3 | Producer–consumer synchronization through the C semaphore API   | Implemented     |
|    4 | Producer–consumer synchronization through the C++ semaphore API | Implemented     |
|    5 | Thread sleeping through the C API                               | Not implemented |
|    6 | Asynchronous context switching and C++ API                      | Not implemented |
|    7 | Verification that user code executes in user mode               | Implemented     |

Test 7 intentionally does not terminate normally when privilege-mode protection works as expected.

## Example API

### C Thread API

```cpp
thread_t thread;

thread_create(
    &thread,
    workerFunction,
    argument
);

thread_dispatch();
```

### C++ Thread API

```cpp
class Worker : public Thread {
protected:
    void run() override {
        // Thread work
    }
};

Worker worker;
worker.start();
Thread::dispatch();
```

### Semaphore API

```cpp
sem_t semaphore;

sem_open(&semaphore, 1);
sem_wait(semaphore);

// Critical section

sem_signal(semaphore);
sem_close(semaphore);
```

## Academic Context

This repository is based on the project infrastructure and support libraries provided for the Operating Systems course. The kernel components in `src/` and `h/` demonstrate the implementation of memory management, thread scheduling, synchronization, system calls and RISC-V trap handling completed as part of the project.

The repository is published for portfolio and educational purposes.
