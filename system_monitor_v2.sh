#!/bin/bash

############################################
# Advanced System Monitor Script
# Author: Aman
# Purpose: System health monitoring
############################################

LOGFILE="system_monitor.log"

# ===== COLORS =====
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
RESET="\e[0m"

# ===== SYSTEM INFO =====
system_info() {
    echo -e "${BLUE}===== SYSTEM INFO =====${RESET}"
    echo "User: $(whoami)"
    echo "Date: $(date)"
    echo "Hostname: $(hostname)"
    echo ""
}

# ===== CPU USAGE =====
check_cpu() {
    echo -e "${BLUE}===== CPU USAGE =====${RESET}"

    cpu_usage=$(top -bn1 | grep "Cpu(s)" | \
        awk '{print 100 - $8"%"}')

    echo "CPU Usage: $cpu_usage"
    echo ""
}

# ===== RAM =====
check_ram() {
    echo -e "${BLUE}===== RAM INFO =====${RESET}"
    free -h
    echo ""
}

# ===== DISK =====
check_disk() {
    echo -e "${BLUE}===== DISK INFO =====${RESET}"
    df -h | while read line
    do
        usage=$(echo $line | awk '{print $5}' | sed 's/%//')

        if [[ $usage -ge 80  ]]
        then
            echo -e "${RED}WARNING:$line${RESET}"
        else
            echo "$line"
        fi
    done
    echo ""
}

# ===== TOOL CHECK FUNCTION =====
check_tool() {
    if command -v "$1" &> /dev/null
    then
        version=$($1 --version 2>/dev/null | head -n 1)
        echo -e "${GREEN}$1 installed → $version${RESET}"
    else
        echo -e "${RED}$1 NOT installed${RESET}"
    fi
}

check_dev_tools() {
    echo -e "${BLUE}===== DEV TOOLS =====${RESET}"
    check_tool node
    check_tool git
    check_tool docker
    check_tool python3
    check_tool npm
    echo ""
}

############################################
# MAIN
############################################

{
system_info
check_cpu
check_ram
check_disk
check_dev_tools
} | tee "$LOGFILE"
