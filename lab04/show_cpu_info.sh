#!/bin/bash

echo "CPU Information:"
echo "================"

# For macOS and Linux systems
if [[ "$(uname)" == "Darwin" ]]; then
    # macOS specific commands
    echo "System: macOS"
    sysctl -n machdep.cpu.brand_string
    echo "Cores: $(sysctl -n hw.physicalcpu) (Physical), $(sysctl -n hw.logicalcpu) (Logical)"
    echo "CPU Speed: $(sysctl -n hw.cpufrequency_max | awk '{print $1 / 1000000000 " GHz"}')"
elif [[ "$(uname)" == "Linux" ]]; then
    # Linux specific commands
    echo "System: Linux"
    echo "Model: $(grep "model name" /proc/cpuinfo | head -1 | cut -d ':' -f 2 | sed 's/^[ \t]*//')"
    echo "Cores: $(grep -c processor /proc/cpuinfo) (Logical)"
    echo "Physical CPUs: $(grep "physical id" /proc/cpuinfo | sort -u | wc -l)"
    lscpu | grep -E "Architecture|CPU op-mode|CPU MHz|Cache"
else
    # Generic fallback
    echo "System: $(uname)"
    echo "Unable to retrieve detailed CPU information for this system."
fi

# Show current CPU usage
echo -e "\nCurrent CPU Usage:"
if [[ "$(uname)" == "Darwin" ]]; then
    top -l 1 | grep "CPU usage"
elif [[ "$(uname)" == "Linux" ]]; then
    top -bn1 | grep "Cpu(s)"
fi