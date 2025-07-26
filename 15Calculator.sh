#!/bin/bash

function cal() {
    if [ $# -ne 3 ]; then 
        echo "Usage: Cal <num1> <operator> <num2>"
        return 1
    fi

    local num1=$1
    local operator=$2
    local num2=$3

    case $operator in
        +) echo "$((num1 + num2 ))" ;;
        -) echo "$((num1 - num2 ))" ;;
        \*) echo "$((num1 * num2 ))" ;;
        /) echo "$((num1 / num2 ))" ;;
        %) echo "$((num1 % num2 ))" ;;
        **) echo "$((num1 ** num2 ))" ;;
        *) echo "Invalid operator. Use +, -, *, /, %, or **." ;;
    esac
    return 0
}

cal 22 + 33