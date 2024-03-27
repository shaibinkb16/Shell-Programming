#!/bin/bash

reverse_string() {
    local string="$1"
    local reversed=""
    local len=${#string}
    for (( i=len-1; i>=0; i-- )); do
        reversed="$reversed${string:$i:1}"
    done
    echo "$reversed"
}

reverse_list() {
    local input_list=("$@")
    local reversed_list=()
    for (( i=${#input_list[@]}-1; i>=0; i-- )); do
        reversed_list+=("$(reverse_string "${input_list[i]}")")
    done
    echo "${reversed_list[@]}"
}

# Take user input for the list of strings
read -p "Enter the strings (separated by spaces): " -a input

# Call reverse_list function with user input
reversed=$(reverse_list "${input[@]}")

# Print the reversed list with reversed strings
echo "Reversed list with reversed strings:"
echo "$reversed"

