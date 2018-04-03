 Param (
    [parameter(mandatory)]
    [String]$vmName
 )

#$vmName = 'EYACA-DShare'

$Text = get-content c:/script/test.txt
$Text = $Text -replace "robin", $vmName
Write-Output $Text
set-content c:/script/test.txt $Text
Write-Output "complete"