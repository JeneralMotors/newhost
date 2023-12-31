#!/bin/bash

# Check if the script is running with sudo privileges
if [ "$(id -u)" -ne 0 ]; then
    echo -e "\nError: This script must be run with sudo privileges."
    exit 1
fi

# Check if the number of arguments given to the script is 2
if [ "$#" -ne 2 ]; then
    echo -e "\nUsage: sudo $0 <IP> <hostname>"
    exit 1
fi

# Set arguments as variable names
newip="$1"
newhost="$2"

# Check if IP has a valid format
if ! echo "$newip" | grep -E "^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])$" > /dev/null; then
    echo -e "\nInvalid IP format"
    exit 1
fi

# Add host
echo -e "$newip\t$newhost" >> /etc/hosts

if [ "$?" -eq 0 ]; then
    echo -e "\nSUCCESS adding string $newip $newhost to /etc/hosts!"
else
    echo -e "\nERROR adding string $newip $newhost to /etc/hosts!"
fi
