#!/bin/bash

# AND operator example
read -p "Enter your age: " age
if [ "$age" -ge 18 ] && [ "$age" -le 65 ]; then
    echo "You are eligible to work."
else
    echo "You are not eligible to work."
fi

read -p "Enter your score: " score
if [ "$score" -ge 50 ] && [ "$score" -le 100 ]; then
    echo "You passed the exam."
else
    echo "You failed the exam."
fi      

# || or operator example
read -p "Enter your username: " username
if [ "$username" == "admin" ] || [ "$username" == "user" ]; then
    echo "Welcome, $username!"
else
    echo "Access denied."
fi