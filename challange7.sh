#!/bin/bash
       
# Author:sujan thapa magar                       
# Date of latest revision:08/02/2022 
# Purpose: Create a script
echo "computer name"
cat /proc/sys/kernel/hostname
echo "cpu information"
sudo lshw | grep -A 7 '*-cpu' 
echo "RAM"
sudo lshw | grep -A 3 '*-memory' 
echo "Display adapter"
sudo lshw | grep -A 12 '*-display' 
echo "network adapter"
sudo lshw | grep -A 14 '*-display' 
