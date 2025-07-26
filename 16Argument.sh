#!/bin/bash

echo "First argument is $1"
echo "Second argument is $2"

echo "All the arguments - $@"
echo "Number of arguments - $#"


# for loop to access the file name from arguments

for file in $@
do 
    echo "Coping in file - $file"
done