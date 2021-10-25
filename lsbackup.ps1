[string]$basePath = $env:USERPROFILE
Get-ChildItem -Recurse $basePath\WindowsSubsystemLinux\images | Select Name
