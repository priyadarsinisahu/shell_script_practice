# Problem: Find number of files in a directory and its subdirectories.

#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

DIR=$1

if [ ! -d "$DIR" ]; then
    echo "Directory '$DIR' does not exist."
    exit 1
fi

COUNT=$(find "$DIR" -type f | wc -l)

echo "Total files: $COUNT" 


<<comment
User input: ./count_files.sh /path/to/directory
Expected output: Total files: XXX
comment