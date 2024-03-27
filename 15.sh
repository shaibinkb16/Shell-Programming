#!/bin/bash
#Author :Shaibin K B
#23mca050

echo "Enter a number:"
read number

smallest_digit=${number:0:1}

for (( i = 1; i < ${#number}; i++ )); do
    digit=${number:i:1}
    if [ "$digit" -lt "$smallest_digit" ]; then
        smallest_digit=$digit
    fi
done

echo "Smallest digit in the number is: $smallest_digit"

