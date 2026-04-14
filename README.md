# embedded-systems-prep

Comprehensive embedded systems preparation — C core concepts, C++ interview notes, data structures & algorithms, operating systems, embedded drivers, system design, and more.

The repo keeps language references split by focus: `c_core/` for C fundamentals and `cpp_core/` for C++ interview-oriented notes and STL references.

## Repository Structure

```
embedded-systems-prep/
├── c_core/                     # Flat reference docs for C fundamentals and low-level language topics
├── cpp_core/                   # C++ notes for OA/interview prep, STL, and language-specific refreshers
├── data_structures_algorithms/ # DSA implementations in C
├── operating_systems/          # Processes, threads, synchronization, scheduling
├── embedded_drivers/           # UART, I2C, SPI, CAN, GPIO, ADC, PWM, timers, interrupts
├── embedded_concepts/          # Boot flow, memory maps, registers, endianness, volatile/const, linker scripts
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
