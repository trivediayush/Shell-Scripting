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
count=1
while [ $count -le 10]
do 
    echo "Count is: $count"
    ((count++))
done

count=0
num=10
while [[ $count -lt $num]]
do
    echo "Count is: $count"
    let count+=1
done

# Until loop
count=0
until [ $count -ge 5 ]
do 
    echo "Count is: $count"
    ((count++))
done

# Nested loop
for i in {1..3}
do
    for j in {1..2}
    do
        echo "Outer loop: $i, Inner loop: $j"
    done
done

# Loop through command output
echo "Looping through command output:"
for user in $(cut -d: -f1 /etc/passwd)
do
    echo "User: $user"
done

# infinite loop example

while ture
do
    echo "This is an infinite loop. Press Ctrl+C to exit."
    sleep 1
done

for (( ;; ))
do
    echo "Hello, Loops"
    sleep 2s
done

# While loop for reading from a file
echo "Reading from file line by line:"

FILE="/etc/passwd"

while IFS=read -r line
do
    echo "Line: $line"
done < "$FILE"

# read from csv file

while IFS=',' read -r name age city
do 
    echo "Name: $name, Age: $age, City: $city"
done < "data.csv"

