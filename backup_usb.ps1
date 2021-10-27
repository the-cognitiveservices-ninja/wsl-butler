param(
    [Parameter(Mandatory=$true, HelpMessage="Enter Drive letter e.g. e: to backup t")]
    [ValidateNotNull()]
    $drive,
    [Parameter(Mandatory=$true, HelpMessage="Enter Instance Name to Backup")]
    [ValidateNotNull()]
    $name
)

[string]$basePath = $env:USERPROFILE


$filedate = (Get-Date).tostring("yyyy-MM-dd_HH-mm")
$filename = 'images\' + $filedate + '-' + $name +'.tgz'
$target = $drive + '\WindowsSubsystemLinux\' + $filename
Write-Host "Create backup of " $name " to " $target
wsl --export $name $target
