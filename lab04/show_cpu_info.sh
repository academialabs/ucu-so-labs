#!/bin/bash

top -l 1 | grep "CPU usage"
top -l 1 | grep PhysMem

# Show current CPU usage
echo "\nCurrent CPU Usage:"
if [[ "$(uname)" == "Darwin" ]]; then
    top -l 1 | grep "CPU usage"
elif [[ "$(uname)" == "Linux" ]]; then
    top -bn1 | grep "Cpu(s)"
fi