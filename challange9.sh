#!/bin/bash
# Script:Ops Challenge Solution
# Author: sujan thapa magar
# Date of latest revision: August 4, 2022
# Purpose: Windows Powershell script 
# event logs
# Main
# Output all events from the System event log that occured
# in the last 24 hours to a file on your desktop named last_24.txt
Get-EventLog -LogName System -After $(Get-Date).AddHours(-24) | Out-File -FilePath C:\Users\sujan\OneDrive\Desktop\last_24.txt

# Output all error type vents from the System event log to a
# file on your desktop named error.txt
Get-EventLog -LogName System -EntryType Error | Out-File -FilePath C:\Users\sujan\OneDrive\Desktop\errors.txt
# Print to the screen all events with ID of 16 from the System
Get-EventLog -LogName System | Where-Object {$_.EventID -eq 16}
# Print to the screen the most recent 20 events from the System
Get-EventLog -LogName System -Newest 20
# Print to the screen all sources of the 500 most recent entries in
# the system even log. Ensure that the full lines are displayed
Get-EventLog -LogName System -Newest 500
# End