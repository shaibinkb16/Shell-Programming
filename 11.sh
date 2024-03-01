#!/bin/bash
#Author :Shaibin K B
#23mca050


echo "Enter a number:"
read number

sum=0

while [ $number -gt 0 ]; do
    digit=$((number % 10))
    sum=$((sum + digit * digit)) 
    number=$((number / 10)) 
done

echo "The sum of squares of individual digits of the number is: $sum"

