#!/bin/bash

# Script: conditionals               
# Author:sujan thapa magar                       
# Date of latest revision:08/01/2022 
# Purpose:Create a script that detects if a file or directory exists, then creates it if it does not exist 
file=/etc/resolv.conf
if test -f "$file"; then
    echo "file exist"
fi
FILE=/etc/docker
if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist."
fi