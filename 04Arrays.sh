#!/bin/bash

my_array=("apple" "banana" "cherry" 9 45.5)

echo "First element: ${my_array[0]}"

echo "All elements: ${my_array[*]}"

echo "Array Length: ${#my_array[*]}"

echo "Array Length: ${#my_array[@]}"

echo "Value from index 2 to 4: ${my_array[*]:2:4}"

my_array+=("orange" "grape")

echo "After adding elements: ${my_array[*]}"