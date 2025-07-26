#!/bin/bash

mark=75

echo "Enter your choice (1-5):"
echo "1. Check Grade"
echo "2. Check Performance"
echo "3. Exit"

read choice

case $choice in
    1)
        if [ $mark -ge 90 ]; then
            echo "Grade: A"
        elif [ $mark -ge 80 ]; then
            echo "Grade: B"
        elif [ $mark -ge 70 ]; then
            echo "Grade: C"
        elif [ $mark -ge 60 ]; then
            echo "Grade: D"
        else
            echo "Grade: F"
        fi
        ;;
    2)
        if [[ $mark -gt 90 ]]; then
            echo "Excellent performance!"
        elif [[ $mark -gt 80 ]]; then
            echo "Good job!"
        elif [[ $mark -gt 70 ]]; then
            echo "You passed!"
        else
            echo "You need to improve."
        fi
        ;;
    3)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please select a valid option."
        ;;
esac
