# Problem: Create a script that accepts a service name as an argument and checks whether the service is running.

#!/bin/bash

if [ $# -ne 1 ]; 
then
    echo "Usage: $0 <service_name>"
    exit 1
fi

SERVICE=$1

# Insted of using [ ], the '[' command in bash, condition if checks the exit status directly returned by systemctl command.

if systemctl is-active --quiet "$SERVICE"; 
then
    echo "Service '$SERVICE' is running."
else
    echo "Error: Service '$SERVICE' is not running."
fi

<<comment
user input: ./service_check.sh cron
expected output: Service 'cron' is running.
comment

