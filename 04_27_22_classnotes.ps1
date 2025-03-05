#muliple function
Function Get-TimesTen {	#Function Header
    param([int]$num)       #Function Parameters

    $newNum = $num * 10
    Write-Host $newNum 
}

#two parameter multiplication
Function Get-MultiplyNums {	
    param([int]$num, [int]$multiplier)    #Function Parameters

    $newNum = $num * $multiplier
    Write-Host $newNum 
}

# Ex 1
#getting age bracket

Function Get-AgeBracket {
    param([int]$age)

    if($age -ge -18){
        Write-host "adult"
    }
    
    else{
        Write-host "Minor"
    }
}
$userInput = Read-Host "Enter age: "
Get-AgeBracket $userInput


Function Get-AgeBracket {
    param([int]$age)

    if($age -ge -18){
        $class = "adult"
    }
    
    else{
        $class = "Minor"
    }
    Return $class
}
$userInput = Read-Host "Enter age: "
$class = Get-AgeBracket $userInput
Write-Host $class


#Die Roller

Function DieRoller{
    param([int]$times,[int]$sides)

    $total = 0 
    for($i = 0; $i -lt $times; $i++)
    {
        $total += Get-Random -Minimum 1 -Maximum ($sides + 1)
    
    }
    Write-Host $total

}
DieRoller 1 3
#Trapezoid Area
Function Get-TrapezoidArea {
    param([int]$side1,[int]$side2,[int]$height)

    $answer = ($side1 + $side2)/2 * $height
    Write-Host $answer
}

Get-TrapezoidArea 10 20 30

# Dodecahedron area
Function Get-dodecahedron {
    param([int]$a)

    $answer = 3 * [math]::Sqrt(25 +10 *[math]::Sqrt(5)) * [math]::Pow($a,2)
    Write-Host $answer
}
Get-dodecahedron 10

#Cylinder volume
Function Get-CylinderVolume {
    param([int]$Radius,[int]$Height)

    $answer = [math]::pi *[math]::Pow($Radius, 2) * $Height
    Write-Host $answer
}
Get-CylinderVolume 10 10
