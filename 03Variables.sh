#!/bin/bash

# This script demonstrates the use of variables in shell scripting

# Define a variable
greeting="Hello, World!"
# Print the variable
echo $greeting
# Change the value of the variable
greeting="Hello, Bash!"

# variable to store the output of a command

current_date=$(date)

HOSTNAME=$(hostname)

# constant variable
readonly VERSION="1.0"

echo $VERSION