#!/bin/bash

echo "Setting up FPGA Projects repository..."

ROOT="Projects"

mkdir -p "$ROOT"

PROJECTS=(
"UART_Based_Calculator"
"Digital_Clock_FPGA"
"Camera_Interface_OV7670"
"RISC_V_Microcontroller"
"NN_Accelerator_on_FPGA"
"FPGA_Web_Server"
"Secure_RF_Communication"
)

for P in "${PROJECTS[@]}"; do
    mkdir -p "$ROOT/$P"/{src,tb,docs,images,simulation,constraints}

    cat > "$ROOT/$P/README.md" <<EOF
# $P

## Overview
(Add project description here)

## Block Diagram
(Add block diagram in images/ folder)

## Simulation
![Waveform](simulation.png)

## Project Structure
- src/ (Verilog code)
- tb/ (Testbench)
- constraints/ (XDC files)
- simulation/ (VCD output)
- images/ (Block diagram screenshots)
- docs/ (Notes/documentation)
EOF
done

# LICENSE
cat > LICENSE <<EOF
MIT License
EOF

# VIVADO-FRIENDLY .gitignore
cat > .gitignore <<EOF
*.vcd
*.log
*.jou
*.str
*.rpt
*.swp
*.bak
*.tmp
*.DS_Store

# Vivado generated files
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
git commit -m "Initial FPGA Projects structure"

echo "Paste your GitHub repo URL for FPGA Projects:"
read URL
git remote add origin "$URL"
git branch -M main
git push -u origin main

echo "FPGA Projects repo created and pushed successfully!"
