#!/bin/bash

function calc() {
    echo "***************************************"
    echo "Calculator Function"
    echo "Addition: $(( $1 + $2 ))"
    echo "Subtraction: $(( $1 - $2 ))"
    echo "Multiplication: $(( $1 * $2 ))"
    echo "Division: $(( $1 / $2 ))"
    echo "***************************************"
}

calc 10 5

function factorial() {
    local num=$1
    local result=1
    for (( i=1; i<=num; i++ ))
    do
        result=$(( result * i ))
    done
    echo "Factorial of $num is: $result"
}
factorial 5

function fibonacci() {
    local n=$1
    local a=0
    local b=1
    echo "Fibonacci series up to $n terms:"
    for (( i=0; i<n; i++ ))
    do
        echo -n "$a "
        local temp=$a
        a=$b
        b=$(( temp + b ))
    done
    echo
}
fibonacci 10

function systemDetails() {
    echo "***************************************"
    echo "Current Date and Time: $(date)"
    echo "Current User: $(whoami)"
    echo "System Uptime: $(uptime -p)"
    echo "***************************************"
}

systemDetails
