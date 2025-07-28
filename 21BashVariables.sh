#!/bin/bash

# Generate a random number between 1 and 100
random_number=$((RANDOM % 100 + 1))

echo "Guess the number (between 1 and 100):"
echo "Number = $random_number"

# Checking if user is root or not

if [[ $EUID -ne 0 ]]; then
    echo "User is not root, running as $USER"
else
    echo "User is root, running as $USER"
fi

