#!/bin/bash

function greet() {
    echo "***************************************"
    echo "Hello, $1!"
    echo "Welcome to the Shell Scripting."
    echo "***************************************"
}

greet
greet
greet "Alice"


function details() {
    echo "***************************************"
    echo "Name: $1"
    echo "Age: $2"
    echo "City: $3"
    echo "***************************************"
}

details Bob 30 NewYork