<#
Show all processes with a VM greater than 100 mb
Show all processes with handles less than or equal to 300
Show all processes Sort descending on WS show top 5
Get all process with a base priority greater than 8, sort by BasePriority then Name. Show only those two columns
Show the SUM,Maxium,Average of all processes' PeakWorkingSet. Only show SUm, Max, AND AVG
SHow the Number of Stopped and running Services
#>
  




Get-process | WHERE {$_.Handles -le 300}
pause
Get-process | Sort-Object -property WS -Descending | select -First 5
pause
get-process |WHERE{$_.BasePriority -gt 8} | Sort-Object -property BasePriority,Name | SELECT BasePriority,Name
pause

Get-Process |WHERE {$_.PeakWorkingSet}| Measure PeakWorkingSet -Sum -Max -Average| SELECT Sum,Maximum,Average
pause
Get-Service | Group Status
