#!/bin/bash

############################################
# System Monitor Script
# Author: Aman
# Purpose: Check system health & dev tools
############################################

# ===== CPU INFO =====
check_cpu() {
    echo "===== CPU INFO ====="
    lscpu | grep "Model name"
    echo ""
}

# ===== RAM INFO =====
check_ram() {
    echo "===== RAM INFO ====="
    free -h
    echo ""
}

# ===== DISK INFO =====
check_disk() {
    echo "===== DISK USAGE ====="
    df -h
    echo ""
}

# ===== DEV TOOLS CHECK =====
check_tool() {
    if command -v $1 &> /dev/null
    then
        echo "$1 installed → $($1 --version 2>/dev/null | head -n 1)"
    else
        echo "$1 NOT installed"
    fi
}

check_dev_tools() {
    echo "===== DEV TOOLS ====="
    check_tool node
    check_tool git
    check_tool docker
    check_tool python3
    check_tool npm
    echo ""
}

# ===== SYSTEM INFO =====
system_info() {
    echo "===== SYSTEM INFO ====="
    echo "User: $(whoami)"
    echo "Date: $(date)"
    echo "Directory: $(pwd)"
    echo ""
}

############################################
# FUNCTION CALLS
############################################

system_info
check_cpu
check_ram
check_disk
check_dev_tools

