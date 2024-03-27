#!/bin/bash


if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

if [ ! -f "$filename" ]; then
    echo "File '$filename' not found."
    exit 1
fi

unique_words=$(tr -s '[:space:]' '\n' < "$filename" | sort | uniq -c | awk '{print $2 ": " $1}' | sort)

echo "Unique words in '$filename' and their occurrences:"
echo "$unique_words"

