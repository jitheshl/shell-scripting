#!/bin/bash
num1=$1
num2=$2
#date
timestamp=$(date)
echo "Time:$timestamp"
# the add off two numbers
sum=$((num1+num2))
echo "Sum:$sum"