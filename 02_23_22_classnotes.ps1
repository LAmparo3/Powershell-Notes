#Filtering
#Get-service |Where{$_.Status -eq "running" -and $_.DisplayName -like "Adobe*"}


#get list of file in current directory and show files whose leangth is greater than 10000
#Get-ChildItem | WHERE {$_.Length -gt 10000 }
#Get-ChildItem | WHERE $_.Length -gt 10000 | SELECT NAME, Length, CreationTime


# Get a list of process,show only those that are using more than 10 secs of cpu
#Get-ChildItem | WHERE $_.Length -gt 10000 | SELECT NAME, Length, CreationTime


#get list of processes where cpu  is gt 10,SELECT ID,ProcessName,CPU, and sort descending by cpu
Get-Process| WHERE {$_.CPU -gt 10} |SELECT ID,ProcessName,CPU |Sort-Object -property CPU -Descending