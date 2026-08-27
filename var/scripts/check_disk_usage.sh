#!/bin/bash

<<info
This script checks the disk usage of the root directory and displays a warning if it exceeds a certain threshold.

RULES:
< 70%        NORMAL
70-85%       WARNING
> 85%        CRITICAL   
info


USAGE=$( df / | awk 'NR==2 {print $5}' | tr -d '%' )

echo "Current disk usage: $USAGE%"

if [ "$USAGE" -lt 70 ]; 
    then
        echo "Status: NORMAL"
elif [ "$USAGE" -le 85 ]; 
    then
        echo "Status: WARNING"
else
    echo "Status: CRITICAL"
fi

# df means disk filesystem. it shows filesystem disk-space usage.
# '|' is a pipe that takes the output of the command on the left and uses it as input for the command on the right. 
# awk 'NR==2 {print $5}' "awk: process the series of pattern action pairs"  
# "NR: means Number of Records, a Built-In variable in AWK" 
# "$5: represents the fifth field (column) in the current record, which is the percentage of disk usage for the root directory."
# { tr -d '%'} tr: translate characters, -d: delete characters, '%' : the character to be deleted.
