# NAND_gate

## Description
NAND gate is one of the two universal gates, meaning any basic logic gate can implemented using only NAND gates.

It is the complement of the AND gate, i.e., the output becomes 0 only when all the inputs are 1. In all other input combinations, the output remains 1.

In this project, the NAND gate is implemented in Verilog HDL using gate level modeling

## Simulation
![Simulation](simulation/simulation.png)

In the simulation waveform:

  - The blue signals (a, b) represent the inputs to the NAND gate.

  - The green signal (y) represents the output of the NAND gate.

  - The yellow signal (i) is the looping variable used inside the testbench to apply different input combinations to the NAND gate.

## Files
- NAND_gate.v
- NAND_gate_tb.v
