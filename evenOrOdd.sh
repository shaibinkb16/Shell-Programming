#!/bin/bash
#Author :Shaibin K B
#23mca050
echo "Enter a number: "
read number

if [ $((number % 2)) ]; then
    echo "$number is even"
else
    echo "$number is odd"
fi

