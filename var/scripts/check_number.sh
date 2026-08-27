#!/bin/bash

read -p "Enter the number to check : " number

if [ $number -eq 100 ]
then
echo "Input number is matched"

elif [ $number -lt 100 ]
then
echo "Input number is less than the match"

else
echo "Input number is greater than the match"
fi
