#!/bin/bash

# Script: Ops 201 Class 13 
# Author: sujan thapa magar
# Date of latest revision: August 10, 2022
# Purpose: This script asks a user to type a domain, then displays information about the typed domain

# Main
echo "Enter for information about domain name"
read domain

function domain_info {
    whois $domain | dig $domain | host $domain | nslookup $domain | tee domaininfo.txt
}

domain_info
nano domaininfo.txt
