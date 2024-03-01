#!/bin/bash
#Author :Shaibin K B
#23mca050

echo "Enter a line of text:"
read line

line=$(echo "$line" | tr '[:upper:]' '[:lower:]')

count=0

for ((i = 0; i < ${#line}; i++)); do
    char="${line:$i:1}"
    case $char in
        [aeiou])
            count=$((count + 1))
            ;;
    esac
done

echo "Number of vowels in the line: $count"

