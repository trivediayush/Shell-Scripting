#!/bin/bash

greeting="Hello, World!"

echo "Upper case: ${greeting^^}"
echo "Lower case: ${greeting,,}"

# to replace a string

greeting="${greeting/World/Bash}"

echo "Replaced greeting: $greeting"

# slicing a string
substing="${greeting:2:5}"