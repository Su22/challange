#!/bin/bash

# Script: running process               
# Author:sujan thapa magar                       
# Date of latest revision:07/30/2022 
# Purpose: Write a script that displays running processes, asks the user for a PID, then kills the process with that PID.    
while answer=y
ps aux        
# ask user input
do echo enter PID you want to kill 
# put the pid in the veriable pid1
read PID1
#kill process
sudo kill -9 $PID1
echo you enter this number; $PID1
read answer
done
# EndS
