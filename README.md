# Binary-to-Seven Segment Decoder

## Overview
This project implements a Binary-to-Seven Segment Decoder using SystemVerilog. The design converts a 4-bit binary input into the corresponding seven-segment display output. Functional verification was performed using a SystemVerilog testbench environment.

## Objectives
- Design a Binary-to-Seven Segment Decoder.
- Verify functionality using SystemVerilog.
- Generate simulation results and waveforms.
- Understand digital design and verification concepts.

## Technologies Used
- SystemVerilog
 - Digital Logic Design



### Design Files
- dut.sv – Binary-to-Seven Segment Decoder design

### Verification Files
- interface.sv – Interface between DUT and testbench
- generator.sv – Generates test transactions
- driver.sv – Drives inputs to DUT
- monitor.sv – Captures DUT outputs
- scoreboard.sv – Verifies expected outputs
- environment.sv – Connects verification components
- test.sv – Test scenarios
- tb_top.sv – Top-level testbench

## Working
1. A 4-bit binary input is applied to the decoder.
2. The DUT converts the input into seven-segment display outputs.
3. The verification environment generates and drives test cases.
4. The monitor captures DUT responses.
5. The scoreboard compares actual and expected outputs.
6. Waveforms are analyzed to verify correct functionality.

## Features
- SystemVerilog-based design and verification.
- Modular verification architecture.
- Functional validation using simulation.
- Waveform analysis and output verification.

## Results
The decoder successfully converts binary inputs into the corresponding seven-segment display outputs. Simulation results confirm correct functionality for all test cases.

## Learning Outcomes
- Digital Logic Design
- SystemVerilog Programming
- Testbench Development
- Functional Verification
- Simulation and Debugging

## Project Type
Academic Project
