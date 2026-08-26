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
