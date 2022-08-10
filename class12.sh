# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: sujan thapa magar
# Date of latest revision: August 9, 2022
# Purpose:returns the IPv4 address of the computer.

# Main
# Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
$holding = ipconfig /all > "network_report.txt" 

# Use Select-String to search network_report.txt and return only the IP version 4 address
Select-String -Path .\*txt -Pattern 'IPv4 Address'

# Remove the network_report.txt when you are finished searching it. 
Remove-Item -Path "network_report.txt"

# End 
