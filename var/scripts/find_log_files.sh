#!/bin/bash

# approach 1
# Problem: Find all .log files under /var/log

find /var/log -type f -name "*.log"


# approach 2
# Problem: Find all .log files under a directory provided as an argument

if [ $# -ne 1 ]; 
then
    echo "Usage: $0 <directory>"
    exit 1
fi

find "$1" -type f -name "*.log"
