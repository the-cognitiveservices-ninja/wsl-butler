param(
    [Parameter(Mandatory=$true, HelpMessage="Enter Backup Date to Restore")]
    [ValidateNotNull()]
    $filedate,
    [Parameter(Mandatory=$true, HelpMessage="Enter Instance Name to Restore")]
    [ValidateNotNull()]
    $name
)

[string]$basePath = $env:USERPROFILE


$filename = $basePath + '\WindowsSubsystemLinux\images\' + $filedate + '-' + $name +'.tgz'
$instance = $basePath + '\WindowsSubsystemLinux\instances\' + $name
Write-Host "Create instance" $name "from " $filename " to " $instance
wsl --import $name $instance $filename  --version 2
