[string]$basePath = $env:USERPROFILE
New-Item $basePath\WindowsSubsystemLinux\ -ItemType directory
New-Item $basePath\WindowsSubsystemLinux\images -ItemType directory
New-Item $basePath\WindowsSubsystemLinux\instances -ItemType directory
