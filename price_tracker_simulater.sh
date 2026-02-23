#!/bin/bash

############################################
# Advanced price_tracker_simulator Script
# Author: Aman
# Purpose: finds errors
#############################################


LOGFILE="price_tracker.log"
SITES=("amazon" "flipkart" "myntra" "snapdeal")

log() {
    local level=$1
    local message=$2
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$level] $message" >> $LOGFILE
}

while true; do
    SITE=${SITES[$RANDOM % ${#SITES[@]}]}
    PRICE=$((RANDOM % 1000 + 100))
    
    # 70% success, 30% error (realistic)
    if [ $((RANDOM % 10)) -lt 7 ]; then
        log "INFO" "Fetched price for $SITE: ₹$PRICE"
    else
        ERROR_TYPE=$((RANDOM % 3))
        case $ERROR_TYPE in
            0) log "ERROR" "Timeout connecting to $SITE" ;;
            1) log "ERROR" "503 Service Unavailable - $SITE" ;;
            2) log "ERROR" "Price element not found on $SITE" ;;
        esac
    fi
    
    sleep 1
done
