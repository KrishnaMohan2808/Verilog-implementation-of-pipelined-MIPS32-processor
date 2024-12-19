# Verilog-implementation-of-pipelined-MIPS32-processor

# MIPS32 Pipelined Processor

This repository contains the design and implementation of a **MIPS32 pipelined processor** using Verilog. The processor follows a 5-stage pipeline architecture, simulating the execution of various MIPS32 instructions with two-phase clocking.

## Project Overview

This project implements a basic MIPS32 processor with a 5-stage pipeline, designed to execute a subset of MIPS32 instructions. The pipeline stages include:

1. **IF (Instruction Fetch)**
2. **ID (Instruction Decode)**
3. **EX (Execute)**
4. **MEM (Memory Access)**
5. **WB (Write Back)**

The processor supports various operations, such as arithmetic and logic operations, memory loads and stores, and conditional branching.

## Features

- **Pipelined architecture** with stages for instruction fetch, decode, execution, memory access, and write-back.
- **Basic instruction set** supporting `ADD`, `SUB`, `AND`, `OR`, `MUL`, `LW`, `SW`, `ADDI`, `BEQZ`, `BNEQZ`, and `HLT` (halt) instructions.
- **Two-phase clocking** for synchronized pipeline stages.
- **Support for memory operations** such as load and store instructions.
- **Branch handling** with conditional execution based on branch instructions.
  
## Getting Started

### Prerequisites

To run the project, you need the following tools:

- **Verilog Simulation Software** (e.g., ModelSim, XSIM, etc.)
- **Git** (for version control)
- A **text editor or IDE** for code editing (optional)

### How to Run

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/KrishnaMohan2808/mips32-processor.git

### Example Testbench
The testbench file (pipe_MIPS32_tb.v) demonstrates basic functionality by executing a sequence of instructions:

Load immediate values into registers.
Perform arithmetic operations (ADD, SUB).
Execute a HLT instruction to stop the processor.

