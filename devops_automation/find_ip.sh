#!/bin/bash

<<info
This shell script finds the top IP addresses.

Given: access.log

192.168.1.10 GET /login
192.168.1.20 GET /home
192.168.1.10 GET /home
192.168.1.10 GET /api
192.168.1.20 GET /login

Find the most frequently occurring IP.

info


LOG_FILE=$1

awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr

`````````````````````````````````````````````````````````````````
<<output
3 192.168.1.10
2 192.168.1.20
output


# Key Concept: Extremely IMP pipeline for DevOps
# awk → sort → uniq → sort

# extract required data → sorts lines alphabetically/numerically → count adjacent duplicates → sort numerically (counts) in reverse (descending) order

# extract the first column (IP addresses) from the log file
# sort the IP addresses in ascending order
# count the occurrences of each unique IP address (Count consecutive identical lines)
# sort the counts in descending order to find the most frequently occurring IP addresses