#!/bin/bash
#Author :Shaibin K B
#23mca050

#!/bin/bash

echo "Enter a number: "
read number

reverse=0
original=$number

while [ $number -ne 0 ]
do
    remainder=$(( $number % 10 ))
    reverse=$(( $reverse * 10 + $remainder ))
    number=$(( $number / 10 ))
done

if [ $original -eq $reverse ]
then
    echo "$original is a same as reverse."
else
    echo "$original is not same as reverse."
fi

