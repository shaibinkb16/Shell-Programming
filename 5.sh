#!/bin/bash
#Author :Shaibin K B
#23mca050

#!/bin/bash

read -p "Enter a string: " input_string


if [ "$input_string" == "$(rev <<< "$input_string")" ]; then
    echo "The entered string '$input_string' is a palindrome."
else
    echo "The entered string '$input_string' is not a palindrome."
fi

