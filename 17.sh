#!/bin/bash
#Author :Shaibin K B
#23mca050

echo "Enter a list of numbers separated by spaces:"
read -a numbers

if [ ${#numbers[@]} -lt 2 ]; then
    echo "Insufficient numbers provided. At least two numbers are required."
    exit 1
fi

sorted_numbers=($(printf "%s\n" "${numbers[@]}" | sort -n -r))

second_highest=${sorted_numbers[1]}

echo "Second highest number: $second_highest"

