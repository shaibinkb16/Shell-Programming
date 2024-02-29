#!/bin/bash
#Author :Shaibin K B
#23mca050

echo "Enter an integer:"
read number

factors=0
for ((i = 1; i <= number; i++)); do
    if [ $((number % i)) -eq 0 ]; then
        factors=$((factors + 1))
    fi
done

if [ $factors -eq 2 ]; then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi

