param(
    [Parameter(Mandatory=$true, HelpMessage="Enter Drive letter e.g. e: to create structure in")]
    [ValidateNotNull()]
    $drive
)


New-Item $drive\WindowsSubsystemLinux\ -ItemType directory
New-Item $drive\WindowsSubsystemLinux\images -ItemType directory
New-Item $drive\WindowsSubsystemLinux\instances -ItemType directory