#!/bin/bash
#Author :Shaibin K B
#23mca050

sum_of_digits() {
    local num=$1
    local sum=0

    while [ $num -gt 0 ]; do
        digit=$(( num % 10 ))
        sum=$(( sum + digit ))
        num=$(( num / 10 ))
    done
    echo $sum
}

echo "Enter a number:"
read number

result=$(sum_of_digits $number)

echo "Sum of digits of $number is: $result"

