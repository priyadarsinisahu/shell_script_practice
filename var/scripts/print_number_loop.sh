#!/bin/bash

<<info
This shell script prints numbers from 1 to 20 showed in two approaches.
info

# approach 1: using a for loop

for i in {1..10}; 
do
    echo "$i"
done


# approach 2: using a while loop

i=11
while [ "$i" -le 20 ];
do
    echo "$i"
    ((i++))
done
