#!/bin/bash

<<info

This is a shell script to find the number of errors in the log file and display the count of each error type.

Count:
INFO
WARNING
ERROR

info

if [ $# -eq 0 ];
then
    echo "Please provide the log file as an argument."
    exit 1
fi

LOG_FILE=$1

if [ ! -f "$LOG_FILE" ];
then
    echo "Log file does not exist. Please provide a valid log file."
    exit 1
fi

INFO = $(grep -c "INFO" "$LOG_FILE")
WARNING = $(grep -c "WARNING" "$LOG_FILE")
ERROR = $(grep -c "ERROR" "$LOG_FILE")

echo "Log Error Count:"
echo "INFO: $INFO"
echo "WARNING: $WARNING"
echo "ERROR: $ERROR"

<<comment
input : ./log_error_counter.sh /var/log/app.log
ouput:
INFO    : 10
WARNING : 5
ERROR   : 2
comment