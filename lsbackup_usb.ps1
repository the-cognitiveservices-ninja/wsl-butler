param(
    [Parameter(Mandatory=$true, HelpMessage="Enter Drive letter e.g. e: of you thumb drive")]
    [ValidateNotNull()]
    $drive
)

Get-ChildItem -Recurse $drive\WindowsSubsystemLinux\images | Select Name