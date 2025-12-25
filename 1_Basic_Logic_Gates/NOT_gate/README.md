# NOT_gate

## Description

NOT gate is one of the basic logic gates used in digital logic design. It is also called an inverter because it inverts (complements) the input signal.

A NOT gate has only one input, and its output is always the logical complement of that input:

- If the input is 0, the output is 1.

- If the input is 1, the output is 0.

In this project, the NOT gate is implemented in Verilog HDL using gate level modeling.

## Simulation
![Waveform](simulation/simulation.png)

In the simulation waveform:

  - The blue signals (a) represent the input to the NOT gate.

- The green signal (y) represents the output of the NOT gate.

- The yellow signal (i) is the looping variable used inside the testbench to apply different input combinations to the NOT gate.


## Files
- NOT_gate.v
- NOT_gate_tb.v
