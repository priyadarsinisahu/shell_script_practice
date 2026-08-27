#!/bin/bash

<<info
This shell script checks whether a user exists.
info

if [ $# -ne 1 ]; 
    then
        echo "Usage: $0 <username>"
        exit 1
fi

USER_NAME=$1

echo "Checking user information..."

if id "$USER_NAME" &>/dev/null; 
    then
        echo "User '$USER_NAME' exists."
else
    echo "Error: User '$USER_NAME' does not exist."
fi

# the 'id' command checks information about a Linux user.
# '&>/dev/null' redirects both standard output and standard error to /dev/null, effectively silencing any output from the command.
# '&>' is a redirection operator in bash that redirects both standard output (stdout) and standard error (stderr) to a specified location. In this case, it redirects the output to /dev/null, which discards it. This is useful when you want to check the exit status of a command without displaying any output or error messages.


<<comment 
user input: ./check_user.sh ubuntu
expected output: User 'ubuntu' exists.
comment
