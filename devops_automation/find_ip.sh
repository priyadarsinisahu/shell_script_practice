# Problem: Find top IP addresses from a log file

#!/bin/bash

<<info
192.168.1.10 GET /login
192.168.1.20 GET /home
192.168.1.10 GET /home
192.168.1.10 GET /api
192.168.1.20 GET /login
info

#!/bin/bash

LOG_FILE=$1

awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr

<<output
3 192.168.1.10
2 192.168.1.20
output


# Key Concept: Extremely IMP pipeline for DevOps
# awk → sort → uniq → sort