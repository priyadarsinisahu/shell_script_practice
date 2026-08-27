#!/bin/bash

<<info
This script will take backup of a directory
info

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory_to_backup>"
    exit 1
fi

SOURCE=$1

if [ ! -d "$SOURCE" ]; 
then
    echo "Error: Directory $SOURCE does not exist."
    exit 1
fi

NAME=$(basename "$SOURCE")
DATE=$(date +%Y-%m-%d)

tar -czf "${NAME}_${DATE}.tar.gz" "$SOURCE"

if [ $? -eq 0 ]; 
then
    echo "Backup successful."
else
    echo "Error: Backup failed."
fi


<<comment
input: ./backup.sh /home/user/project
output: project_2026_08_26.tar.gz
comment