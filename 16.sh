#!/bin/bash
#Author :Shaibin K B
#23mca050


sum=0

for (( num = 50; num <= 100; num++ )); do
    if (( num % 3 == 0 )) && (( num % 5 != 0 )); then
        sum=$(( sum + num ))
    fi
done

echo "Sum of numbers between 50 and 100, divisible by 3 and not divisible by 5: $sum"

