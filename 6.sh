
#!/bin/bash
#Author :Shaibin K B
#23mca050

echo "Enter the size of the array:"
read size

echo "Enter $size values into the array:"
for ((i = 0; i < size; i++)); do
    read array[$i]
done

even=0
odd=0

for ((i = 0; i < size; i++)); do
    if ((${array[$i]} % 2 == 0)); then
        even=$((even + ${array[$i]}))
    else
        odd=$((odd + ${array[$i]}))
    fi
done

echo "Sum of even numbers in the array is $even"
echo "Sum of odd numbers in the array is $odd"

