#!/bin/bash

x=10
y=10

let a=x+y
let b=x-y
let c=x*y
let d=x/y
let e=x%y

echo "Addition: $a"
echo "Subtraction: $b"
echo "Multiplication: $c"
echo "Division: $d"
echo "Modulus: $e"
echo "Incrementing x: $((x++))"
echo "Decrementing y: $((y--))"
echo "Final value of x: $x"
echo "Final value of y: $y"
echo "Using expr for addition: $(expr $x + $y)"
echo "Using expr for subtraction: $(expr $x - $y)"
echo "Using expr for multiplication: $(expr $x \* $y)"
echo "Using expr for division: $(expr $x / $y)"
echo "Using expr for modulus: $(expr $x % $y)"
echo "Using bc for floating-point division: $(echo "scale=2; $x / $y" | bc)"
echo "Using bc for addition: $(echo "$x + $y" | bc)"
echo "Using bc for subtraction: $(echo "$x - $y" | bc)"
echo "Using bc for multiplication: $(echo "$x * $y" | bc)"
echo "Using bc for modulus: $(echo "$x % $y" | bc)"
echo "Using awk for addition: $(awk "BEGIN {print $x + $y}")
