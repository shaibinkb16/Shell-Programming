#!/bin/bash
#Author :Shaibin K B
#23mca050


echo "Enter a list of numbers separated by spaces:"
read -a numbers

sorted_numbers=($(printf "%s\n" "${numbers[@]}" | sort -n))

smallest=${sorted_numbers[0]}
largest=${sorted_numbers[-1]}

echo "Smallest number: $smallest"
echo "Largest number: $largest"

