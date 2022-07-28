#!/bin/bash
# Script: Ops 201 Class 04 Ops Challenge Solution
# Author:sujan thapa magar
# Date of latest revision:07/28/2022
# Purpose: Print a string to the terminal


# Main
my_array=(dir1 dir2 dir3 dir4)
for i in "${my_array[@]}"
do
    # echo "$i"
    mkdir "$i"
    touch "$i/file.txt" 
done
  
# End