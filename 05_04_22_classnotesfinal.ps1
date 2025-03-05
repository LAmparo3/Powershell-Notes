# B# Function

Function BNumValidator 
{
    param($inputString)
     $Bnum = "B"
     #powershell must break down string into an array to process
     $inputString = $inputString.toCharArray()

     foreach($char in $inputString)
     {
        if($char -match "\d")
        {
            $Bnum += $char
        }
     }
     if($Bnum.Length -eq 9)
     {
        Write-Host $Bnum
     }
     else
     {
        Write-Host "Invalid Bnum"
     }
}

# CCNValidator
Function CCNValidator
{
    param($inputString)
    $CCNum = ""
     $inputString = $inputString.toCharArray()

     foreach($char in $inputString)
     {
        if($char -match "\d")
        {
            $CCNum += $char
        }
     }
     if($CCNum.Length -eq 16)
     {
        $output = ""
        $output += (-join $CCNum[0..3])+"-"+(-join $CCNum[4..7])+"-"+(-join$CCNum[8..11])+"-"+(-join$CCNum[12..16])
        Write-Host $output
     }
     else
     {
        Write-Host "Invalid CCNum"
     }
}
# how to add to csv
$row = $field1+","+$field2+","+$field3
Add-content "FileName.csv" $row

Import-Csv "Example.csv" |Select @{name="Phone";Expression={validator($_.SSN)}}