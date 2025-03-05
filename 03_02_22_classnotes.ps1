 <#
 

 show aliase for trace command
 show the most aliased command
 AVERAGE cpu time of all chrome processes
 show the number of words and line in audit.log
 show the total amount of private memory being used
    by the 10 most memory hungry processes that are NOT powershell
  #>
 get-alias -Definition Trace-Command
 Get-Alias | Group Definition | Sort Count -Descending | Select -First 1
 Get-Process | Where {$_.ProcessName -like "Chrome"} | Measure CPU -average | Select Property, Average
 Get-Content chatlog.txt | Measure -line -Word |SELECT words, lines
 Get-Process |Where {$_.ProcessName -NotLike "*powershell*"}| Sort PrivateMemorySize -Descending| Select -First 10 | Measure PrivateMemorySize -Sum| Select property, sum