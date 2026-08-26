<<comment 
Problem: Create a script that accepts a filename as an argument and checks whether the file exists. 
comment 

#!/bin/bash

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
User input: ./check_file.sh practice_order.txt
Expected output: File 'practice_order.txt' exists.
Error output: Error: File 'practice_order.txt' does not exist.
comment