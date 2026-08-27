#!/bin/bash

<<info
This is a shell script to monitor the memory utilization.

RULES:
< 70%        NORMAL
70-85%       WARNING
> 85%        CRITICAL 
info


MEMORY=$(free | awk '/Mem:/ {printf "%.0f", ($3/$2)*100}')

echo "Memory Usage: $MEMORY%"

if [ "$MEMORY" -lt 70 ]; 
    then
        echo "Status: NORMAL"
elif [ "$MEMORY" -le 85 ]; 
    then
        echo "Status: WARNING"
else
    echo "Status: CRITICAL"
fi
