#!/bin/bash

#Script should be run as root
if [ "${UID}" -ne 0]; then
    echo "Please run this script as root or use sudo."
    exit 1
fi

#User shoudl provide atleaat one argument as username else guide them
if [ "${#}" -lt 1 ]; then
    echo "Usage: ${0} username [username2 ...]"
    echo "Please provide at least one username to delete."
    exit 1
fi

#Store 1st argument as username
USERNAME="${1}"

#In case of multiple usernames, treat the other as comment and first as username
shift
COMMENT="${@}"

#Store Password
PASSWORD=$(date +%s%N)

#Create a USER
useradd -c $COMMENT -m $USERNAME

#Check if user was created successfully
if [ "${?}" -ne 0 ]; then
    echo "Failed to create user: ${USERNAME}"
    exit 1
fi


#Set the password for the user
passwd $PASSWORD $USERNAME

#Check if password was set successfully
if [ "${?}" -ne 0 ]; then
    echo "Failed to set password for user: ${USERNAME}"
    exit 1
fi

#Force password change on first login
passwd -e $USERNAME

#Display the username and password and hostname where it was created
echo "User ${USERNAME} Created Successfully!"
echo "Username: ${USERNAME}"
echo "Password: ${PASSWORD}"
echo "Hostname: $(hostname)"
