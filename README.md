# embedded-systems-prep

Comprehensive embedded systems interview preparation — C core concepts, data structures & algorithms, operating systems, embedded drivers, system design, and more.

## Repository Structure

```
embedded-systems-prep/
├── c_core/                     # C language fundamentals (pointers, structs, bitwise, macros, UB)
├── data_structures_algorithms/ # DSA implementations in C
├── operating_systems/          # Processes, threads, synchronization, scheduling
├── embedded_drivers/           # UART, I2C, SPI, CAN, GPIO, ADC, PWM, timers, interrupts
├── embedded_concepts/          # Memory-mapped I/O, registers, volatile/const, linker scripts
├── interview_prep/             # Tricky C questions, MCQs, debugging cases
└── README.md
```

## Build

Run all commands from the repository root:

```sh
make        # build
make run    # run the default program
make clean  # clean build artifacts
```

Run a specific program:

```sh
make run-one PROGRAM=data_structures_algorithms/data_structures/array_adt
```
