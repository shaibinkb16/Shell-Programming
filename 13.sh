#!/bin/bash
#Author :Shaibin K B
#23mca050

echo "Enter the student's score: "
read score

if ! [[ $score =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

if (( score >= 90 )); then
    grade="A"
elif (( score >= 80 )); then
    grade="B"
elif (( score >= 70 )); then
    grade="C"
elif (( score >= 60 )); then
    grade="D"
else
    grade="F"
fi

echo "Student grade: $grade"

