# Script: Ops 201 Class 10 Ops Challenge Solution
# Author: sujan thapa magar
# Date of latest revision: August 8, 2022
# Purpose: Windows Powershell script that initializes and 
# terminates processes.

#Main 

# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | sort CPU -Descending

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | sort PID -Descending

# Print to the terminal scren the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | sort WS -Descending | select -last 5

# Start the process Internet Explorer (iexplorer.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/
for ($i=0; $i -lt 11; $i++)
{
    Start-Process iexplore https://owasp.org/www-project-top-ten/ 
}

# Close all Internet Explorer windows.
iexplore
$p = Get-Process -Name "iexplore"
Stop-Process -InputObject $p
Get-Process | Where-Object {$_.HasExited}

# Kill a process by its Process Identification Number. Choose a process whose termination won't destabilize the system, such as InternetExplorere or MS Edge.
taskill /pid 1600

# End 
