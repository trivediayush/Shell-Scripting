#!/bin/bash

# for loop 
for i in {1..10}
do 
    echo "Iteration number: $i"
    if [ $i -eq 5 ]; then
        echo "Reached the halfway point!"
        break
    fi
done


# for loop from file
echo "Reading from file: "

FILE="/etc/passwd"

for line in ${cat $FILE}
do 
    echo "Line: $line"
done

# While loop


