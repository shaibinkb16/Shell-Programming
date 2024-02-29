#!/bin/bash
#Author :Shaibin K B
#23mca050


echo "Enter a number:"
read number

sum=0

while [ $number -gt 0 ]; do
    digit=$((number % 10))  # Extract the last digit
    sum=$((sum + digit * digit))  # Add the square of the digit to the sum
    number=$((number / 10))  # Remove the last digit
done

echo "The sum of squares of individual digits of the number is: $sum"

