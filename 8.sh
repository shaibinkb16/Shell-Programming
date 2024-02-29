#!/bin/bash
#Author :Shaibin K B
#23mca050

echo "Enter an integer:"
read number

# Count number of digits
num_digits=${#number}

# Initialize sum variable
sum=0

# Iterate through each digit of the number
temp=$number
while [ $temp -gt 0 ]; do
    digit=$((temp % 10))
    sum=$((sum + digit ** num_digits))
    temp=$((temp / 10))
done

# Check if the number is Armstrong
if [ $sum -eq $number ]; then
    echo "$number is an Armstrong number."
else
    echo "$number is not an Armstrong number."
fi

