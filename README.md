# Quartus FPGA Projects

This repository contains a collection of FPGA projects implemented using Verilog and designed to run on the DE10-Lite FPGA board. The projects cover a range of digital logic designs, including simple logic gates, arithmetic units, and more complex modules like multipliers and adders.

## Project Structure

The repository is organized into multiple directories, each representing a different project or task. Below is an overview of the structure and purpose of each folder.

### 1. **Project 201 - Simple Logic Gates**
   - **Description**: This project contains implementations of basic logic gates such as AND, NAND, OR, and XNOR.
   - **Key Files**:
     - `AndGate.v`, `NAndGate.v`, `OrGate.v`, `XnorGate.v`: Verilog modules implementing individual logic gates.
     - `SimpleLogic.v`: A combination of these gates to form simple logic circuits.

### 2. **Project 202 - Full Adders**
   - **Description**: This project focuses on the design and implementation of different types of adders (1-bit, 4-bit, 8-bit full adders) for performing binary addition.
   - **Key Files**:
     - `OneBitFullAdder.v`, `FourBitFullAdder.v`, `EightBitFullAdder.v`: Verilog implementations of full adders.
     - `HalfAdder.v`: Verilog module for a half adder.
     - `DE10_LITE_Golden_Top.v`: Top-level file for the DE10-Lite FPGA.

### 3. **Project 203 - Full Adder with Testbench**
   - **Description**: This project extends the work from Project 202 by adding testbenches for simulating and verifying the functionality of the full adder designs.
   - **Key Files**:
     - `OneBitFullAdder_tb.v`: Testbench for the one-bit full adder.
     - `OneBitFullAdder.v`: The full adder design under test.

### 4. **Project 204 - Multipliers**
   - **Description**: This project implements signed and unsigned 8-bit array multipliers, focusing on arithmetic operations in hardware.
   - **Key Files**:
     - `EightBitSignedArrayMultiplier`: Design for an 8-bit signed array multiplier.
     - `EightBitUnsignedArrayMultiplier`: Design for an 8-bit unsigned array multiplier.

### 5. **Project 205 - CPU & Multiplier**
   - **Description**: This project contains designs for a simple CPU and a three-bit signed multiplier. It also contains task-based Verilog designs that build upon previous logic.
   - **Key Files**:
     - `ThreeBitSignedMultiplier`: Verilog module for a 3-bit signed multiplier.
     - `Task1`, `Task2`: Verilog modules for related tasks.

### 6. **Project 206 - Sequential Tasks**
   - **Description**: This project includes multiple tasks focusing on sequential logic design.
   - **Key Files**:
     - `Task1`, `Task2`, `Task3`: Sequential logic implementations, likely involving counters and state machines.

### 7. **Project 207 - Clock Dividers and Counters**
   - **Description**: This project focuses on clock management and counting, with designs for clock dividers and a 4-bit binary counter.
   - **Key Files**:
     - `ClockDivider.v`: A module that divides an input clock frequency.
     - `FourBitBinaryCounter.v`: A module for a 4-bit binary counter.

### 8. **Bonus Project - ALU and Register**
   - **Description**: This project includes more advanced designs such as an Arithmetic Logic Unit (ALU), multiplexers, and a 4-bit D-type flip-flop. These modules are typically part of a more complex CPU design.
   - **Key Files**:
     - `ALU.v`: Arithmetic Logic Unit design for performing operations like addition, subtraction, and bitwise logic.
     - `DTypeFF4Bit.v`: 4-bit D-type flip-flop.
     - `Mux2Way4.v`, `Mux4Way4.v`: Multiplexer modules.

### 9. **Example Task - Simple Logic**
   - **Description**: This project demonstrates basic logic circuits with Verilog.
   - **Key Files**:
     - `SimpleLogic.v`: A basic logic circuit combining several logic gates.

## Requirements

- **Quartus Prime**: These projects were created using Intel Quartus Prime. You need this software to open, modify, and synthesize the designs.
- **DE10-Lite FPGA**: The projects are designed to run on the DE10-Lite FPGA development board.

## How to Use

1. Open the desired project folder in Quartus Prime.
2. Compile the Verilog code by opening the `.qpf` file for the project and following the synthesis steps.
3. Program the DE10-Lite FPGA board using the compiled bitstream.
4. Use the testbenches provided (where applicable) to simulate and verify the behavior of the designs before deploying them to hardware.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
