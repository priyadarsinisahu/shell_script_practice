#!/bin/bash

<<info
This shell script checks whether a file exists by accepting the filename as an argument.
info

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE=$1

if [ -f "$FILE" ]; 
then
    echo "File '$FILE' exists."
else
    echo "Error: File '$FILE' does not exist."
    exit 1
fi

<<comment
user input: ./check_file.sh practice_order.txt
expected output: File 'practice_order.txt' exists.
comment
