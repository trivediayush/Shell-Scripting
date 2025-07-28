#!/bin/bash

read -p "Enter site name: " siteName

ping -c l $siteName

if [[ $? -eq 0 ]]; then
    echo "Ping to $siteName was successful."
else
    echo "Ping to $siteName failed."
fi

