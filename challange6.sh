#!/bin/bash

# Script: conditionals               
# Author:sujan thapa magar                       
# Date of latest revision:08/01/2022 
# Purpose:Create a script that detects if a file or directory exists, then creates it if it does not exist 
ARRAY=(this.txt that.txt those.txt)
# ask if they want to look for something
echo "are you tim for something (y/n)"
# store answer in "tim"
read tim
if [ $tim == n ]
    then 
        echo "Fine, thats good"
fi
# start a while loop that works as long as tim is y
while [[ $tim == y ]]
do    
# ask what file they are looking for
    echo "what file do you want?"
    # show the options
    echo ${ARRAY[@]}
    # store answer in vairable 
    read file
# start the if statement to search for the file
    if [ -f $file ]
        then
            echo "It exists"
            echo "is there another file?"
    else 
    # let the user know the file doesn't exist and ask if they want to create it.
        echo "this doesn't exist. Would you like to create it (y/n)?"
        # store answer in a vairable named cook
        read cook
        # if cook is y then create the file and let the user know the file was created.
        if [ $cook == y ]
        then
            touch $file
            echo " $file was created"
            echo " do you want to create another file?(y/n)"
            read leave
            if [ $leave == n ]
            then tim=n 
            fi
        fi
    fi
done
