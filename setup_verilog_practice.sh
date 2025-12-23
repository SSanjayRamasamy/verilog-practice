#!/bin/bash

echo "Setting up Verilog Practice repository..."

ROOT="Verilog-Practice"

create_module() {
    DIR=$1
    NAME=$2

    mkdir -p "$DIR/$NAME"

    touch "$DIR/$NAME/${NAME}.v"
    touch "$DIR/$NAME/${NAME}_tb.v"

    cat > "$DIR/$NAME/README.md" <<EOF
# $NAME

## Description
(Add a short explanation here)

## Simulation
![Waveform](simulation.png)

## Files
- ${NAME}.v
- ${NAME}_tb.v
EOF
}

mkdir -p "$ROOT"

# 1. Basic Gates
GATES=(AND_gate OR_gate NOT_gate NAND_gate NOR_gate XOR_gate XNOR_gate)
for g in "${GATES[@]}"; do create_module "$ROOT/1_Basic_Logic_Gates" "$g"; done

# 2. Combinational Circuits
COMB=(Half_Adder Full_Adder Half_Subtractor Full_Subtractor Ripple_Carry_Adder Comparator Multiplexer Demultiplexer Decoder Encoder Priority_Encoder Barrel_Shifter Parity_Generator_Checker Majority_Circuit)
for c in "${COMB[@]}"; do create_module "$ROOT/2_Combinational_Circuits" "$c"; done
create_module "$ROOT/2_Combinational_Circuits/Multiplier" "Multiplier_Generic"

# 3. Sequential Circuits
SEQ=(D_FF JK_FF T_FF SR_FF Master_Slave_JK_FF Edge_Triggered_FF Johnson_Counter Ring_Counter)
for s in "${SEQ[@]}"; do create_module "$ROOT/3_Sequential_Circuits" "$s"; done

create_module "$ROOT/3_Sequential_Circuits/Counters" "Sync_Counter"
create_module "$ROOT/3_Sequential_Circuits/Counters" "Async_Counter"

for s in SIPO PISO SISO PIPO; do create_module "$ROOT/3_Sequential_Circuits/Shift_Registers" "$s"; done

create_module "$ROOT/3_Sequential_Circuits/LFSR" "LFSR"

# 4. Memory
MEM=(RAM FIFO Stack Dual_Port_RAM ROM)
for m in "${MEM[@]}"; do create_module "$ROOT/4_Memory_Elements" "$m"; done

# 5. ALU
create_module "$ROOT/5_ALU" "ALU_Parameterized"

# 6. Protocols
create_module "$ROOT/6_Protocols/UART" "UART"
create_module "$ROOT/6_Protocols/SPI" "SPI_Master"
create_module "$ROOT/6_Protocols/I2C" "I2C_Master"

# 7. Advanced
ADV=(PWM Digital_Clock Frequency_Divider)
for a in "${ADV[@]}"; do create_module "$ROOT/7_Advanced_Circuits" "$a"; done

# 8. DSP
create_module "$ROOT/8_Communication_and_DSP" "FIR_Filter"
create_module "$ROOT/8_Communication_and_DSP" "IIR_Filter"

# LICENSE
cat > LICENSE <<EOF
MIT License
EOF

# VIVADO-FRIENDLY .gitignore
cat > .gitignore <<EOF
*.vcd
*.log
*.jou
*.rpt
*.str
*.swp
*.bak
*.tmp
*.DS_Store

# Vivado directories
.cache/
.runs/
.hw/
.gen/
.sim/
.xil/
.xpr
.ip_user_files/
webtalk/
EOF

git init
git add .
git commit -m "Initial Verilog Practice structure"

echo "Paste your GitHub repo URL for Verilog-Practice:"
read URL
git remote add origin "$URL"
git branch -M main
git push -u origin main

echo "Verilog Practice repo created and pushed successfully!"
