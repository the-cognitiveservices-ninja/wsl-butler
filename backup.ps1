param(
    [Parameter(Mandatory=$true, HelpMessage="Enter Instance Name to Backup")]
    [ValidateNotNull()]
    $name
)

$filedate = (Get-Date).tostring("yyyy-MM-dd_HH-MM")
$filename = 'images\' + $filedate + '-' + $name +'.tgz'
$target = $basepath + '\WindowsSubsystemLinux\' + $filename
Write-Host "Create backup of " $name " to " $target
wsl --export $name $target
