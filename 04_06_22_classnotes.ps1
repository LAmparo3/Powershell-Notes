#Get Userinput and test path to see if it exist

<#
$UserInput = Read-Host "Enter a fileName with extension"

    if(test-path $UserInput)
    {
        Get-Content "$userInput"| Measure-Object -word -Character
    }
    else
    {
        Write-Host "File Not Found"
    }
#>
#Enter a number that corresponds to your degree and directs you to a link
<#



 $UserInput = Read-Host "Enter a number that matches your degree (1)Software, (2)Web Design, (3)Networking"

    if($UserInput -eq "1")
    {
        Start-Process "https://catalog.bridgevalley.edu/preview_program.php?catoid=19&poid=1661&returnto=335"
    }
    elseif($UserInput -eq "2")
    {
       Start-Process "https://catalog.bridgevalley.edu/preview_program.php?catoid=19&poid=1662&returnto=335" 
    }  
    elseif($UserInput -eq "3")
    {
        Start-Process "https://catalog.bridgevalley.edu/preview_program.php?catoid=19&poid=1666&returnto=335"
    }
#>

#brandons Example
<#
    $menu "Software, Web Design, Cyber Security"
    $choice = 
#>

# Set-executionpolicy RemoteSigned