#!/bin/bash

FREE_SPACE=$(free -m | grep "Total" | awk '{print $4}' )

THRESHOLD=100

if [ $FREE_SPACE -lt $THRESHOLD ];
then
    echo "Warning: Low RAM available! Only $FREE_SPACE MB left."
else
    echo "RAM usage is within limits. $FREE_SPACE MB available."
fi

