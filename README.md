# Verilog-implementation-of-pipelined-MIPS32-processor


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

### Code Structure
pipe_MIPS32.v: Main MIPS32 processor implementation.
pipe_MIPS32_tb.v: Testbench file to simulate and test the processor.
README.md: Project documentation.
.gitignore: Git ignore file to exclude unnecessary files (e.g., .vcd files).

## Contribution
Feel free to fork this project and create pull requests with improvements, bug fixes, or additional features. Contributions are welcome!

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments
Inspired by classic MIPS architecture documentation.
Thanks to open-source community resources for Verilog MIPS implementations.


---

## Explanation of Sections

1. **Project Overview:**
   - Provides a brief summary of what the project is about, including details about the pipeline architecture and supported instructions.

2. **Features:**
   - Lists the key features of the processor, such as pipelined architecture and supported instructions.

3. **Getting Started:**
   - This section outlines the prerequisites (Verilog simulation software, etc.) and provides step-by-step instructions on how to clone the repository, compile, and run the simulation.

4. **Example Testbench:**
   - This gives a quick reference to the testbench file that simulates the processor.

5. **Code Structure:**
   - A quick overview of the project’s directory and what each file contains.

6. **Contribution:**
   - Information on how others can contribute to the project if they wish to make improvements or additions.

7. **License:**
   - Information about the project's license (e.g., MIT License). If you don't have a license yet, you can leave it out or create one.

8. **Acknowledgments:**
   - Mention any inspirations, resources, or contributors that helped you with this project.

---

## Customize for Your Needs

- Adjust the instructions and features based on your actual project content.
- Add specific test cases or examples you want to highlight.
- If you're using a different simulation tool or have specific setup steps, modify the "Getting Started" section accordingly.



