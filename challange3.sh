# ops_challange
# function history {
#	echo "$(last)"
# }

# 7:10 PM | Today
# sujan thapa magar

# !/bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution
# Author: sujan thapa magar
# Date of latest revision: 27 July 2022
# Purpose: Show login history
function history {
    echo "History of logged in users"
    $1
    echo "Most recent login for all users"
    $2  
}

history last lastlog 
