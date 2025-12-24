#!/bin/bash

module="$1"

if [ -z "$module" ]; then
    echo "Usage: ./auto_sim.sh <ModuleName>"
    exit 1
fi

echo "=== Searching for module directory ==="

# Search all subfolders in the current directory
module_dir=$(find . -type d -name "$module")

if [ -z "$module_dir" ]; then
    echo "Error: Module folder '$module' not found!"
    exit 1
fi

echo "FOUND: $module_dir"

echo "=== Running Vivado Simulation for $module ==="

# Run Vivado with module name + module path
vivado -mode batch -source sim.tcl -tclargs "$module" "$module_dir"

# Ensure simulation folder exists
mkdir -p "$module_dir/simulation"

# Move PNG waveform
mv wave.png "$module_dir/simulation/simulation.png"

echo "Waveform saved at: $module_dir/simulation/simulation.png"

# Update README
readme="$module_dir/README.md"

if [ -f "$readme" ]; then
    sed -i 's|![Simulation](.*)|![Simulation](simulation/simulation.png)|' "$readme"
    echo "README updated."
else
    echo "No README.md found, skipping README update."
fi

# Commit + push
git add .
git commit -m "Auto simulation for $module"
git push

echo "=== Completed ==="
