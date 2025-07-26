#!/bin/bash

mark=75

if [ $mark -ge 90 ]; then   # ge = greater than or equal to
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


if [[ $mark -gt 90 ]] then # gt = greater than
    echo "Excellent performance!"
elif [[ $mark -gt 80 ]] then
    echo "Good job!"
elif [[ $mark -gt 70 ]] then
    echo "You passed!"
else
    echo "You need to improve."
fi

