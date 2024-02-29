#!/bin/bash
#Author :Shaibin K B
#23mca050

echo "Enter an integer:"
read number

num_digits=${#number}

sum=0

temp=$number
while [ $temp -gt 0 ]; do
    digit=$((temp % 10))
    sum=$((sum + digit ** num_digits))
    temp=$((temp / 10))
done

if [ $sum -eq $number ]; then
    echo "$number is an Armstrong number."
else
    echo "$number is not an Armstrong number."
fi

