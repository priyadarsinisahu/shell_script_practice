#!/bin/bash

<<info
This shell script checks whether a directory exists by accepting the directory name as an argument.
info

if [ $# -ne 1 ]; 
then
    echo "Usage: $0 <directory_name>"
    exit 1
fi

DIR=$1

if [ -d "$DIR" ]; 
then
    echo "Directory '$DIR' exists."
else
    echo "Error: Directory '$DIR' does not exist."
fi


<<comment
User input: ./check_dir.sh /var/log
Expected output: Directory '/var/log' exists.
Error output: Error: Directory '/var/log' does not exist.
comment
