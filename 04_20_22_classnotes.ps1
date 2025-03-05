


#create a lopp that prints 1-50 by 4
$num = 50 
for ($i=1; $i -le $num; i+4)
{
    Write-Host $i
}




#multiplication table

for ($i=1; $i -le 12; i++)
{
    for ($j=1; $j -le 12; i++)
    {
        Write-host($i*$j)" " -NoNewline
    }
    Write-host

} 





# for each practice

$gps = Get-Process

$gps | foreach {Write-Host $_.ProcessName}








# appending to a list
<#
$grades = @()
$total = 0
while ($true){
    

    $grade = Read-Host "Enter a grade (-1) to Exit"
    if ($grade -eq "-1"){break}
    $grades +=[double]$grade
    $total +=[double]$grade
    Write-host "grades inputted: "$grades.Count 
    
}
Write-host "Average: "($total / $grades.Count)
$grades = $grades |sort
 Write-host "Min:"$grades[0]
 Write-host "Max:"$grades[-1]
$grades | Measure -Minimum -Maximum -Average
#>

$grades = @()
$total = 0
$count = 0
$min = -1
$max = -1
while ($true){
    

    $grade = Read-Host "Enter a grade (-1) to Exit"
    if ($grade -eq "-1"){break}
    
    $total +=[double]$grade
    $count++
    if($grade -gt $max)
    {
        $max = $grade
    }
    if($grade -lt $min)
    {
        $min = $grade
    }
}
Write-host "Average: "($total / $count)
$grades = $grades |sort
 Write-host "Min:"$min
 Write-host "Max:"$max
