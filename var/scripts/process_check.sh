#!/bin/bash

<<info
This shell script checks whether a process is running by accepting a process name as an argument.
info

PROCESS=$1

if [ -z "$PROCESS" ]; 
then
    echo "Usage: $0 <process_name>"
    exit 1
fi

if pgrep -x "$PROCESS" > /dev/null; 
then
    echo "Process '$PROCESS' is running."
    echo "Process ID(s): $(pgrep -x "$PROCESS")"
else
    echo "Error: Process '$PROCESS' is not running."
fi


<<comment
User input: ./process_check.sh java
Expected output: Process 'java' is running.
                 Process ID(s): XXX
comment