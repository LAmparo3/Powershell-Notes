#ask user for min and max working set
#show all processes between those working sets
$min = Read-Host "Enter min Working Set (kb)"
$max = Read-Host "Enter max Working Set (kb)"

Get-Process | WHERE {$_.WorkingSet -gt ([int]$min * 1kb) -and $_.WorkingSet -lt ([int]$max *1kb)}

#Ask user for filename
#See if file exists , ifso open filename in notepad
#if not, ask if they want to create a new file. If so, create it
#loop with sentinel
while ($true)
{
    $userInput = Read-Host "Enter FileName (0) to Quit"
    if ($userInput -eq "0"){break}
    elseif(Test-path $userInput)
    {
        notepad $userinput
    }
   else
    {
        Write-Host "File Not Found"
        $choice = (Read-Host "Do you want to create new file? (Y/N)").ToUpper()
        if($choice -eq "Y")
        {
        #New-Item $userInput
            notepad $file
        }
    }
    
}

