#!/bin/bash

for i in {1..10}
do 
    if [ $i -eq 5 ]; then
        echo "Skippin number 5"
        continue
    fi
    echo "Number is $i"
done


for i in {1..10}
do 
    if [ $i -ep 6 ]; then
        echo "Breaking the Loop at number 6"
        break 
    fi
    echo "Number is $i"
done