# wsl-butler
scripts to maintain your wsl installation (e.g., backup and restore, create a portable instance)
## initial setup
install a Linux distribution of your choice and customize it, this distribution will be the base for our future deployments  
* optional step (elevated shell)
```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all
```
* install WSL via *winget*  (elevated shell)
```
winget install -s msstore 'Windows Subsystem for Linux Preview'
```
* install Distri of your choice, e.g. Ubuntu 20.04 LTS
```
winget search -s msstore "Ubuntu 20.04 LTS"
```

# install wsl-butler
* download .ps1 files from this repository
```
Invoke-WebRequest -Uri https://raw.githubusercontent.com/the-cognitiveservices-ninja/wsl-butler/main/create.ps1 -OutFile .\create.ps1
Invoke-WebRequest -Uri https://raw.githubusercontent.com/the-cognitiveservices-ninja/wsl-butler/main/backup.ps1 -OutFile .\backup.ps1
```

* Create a folder WindowsSubsystemLinux and two subfolders in your user-folder
```
Invoke-WebRequest -Uri https://raw.githubusercontent.com/the-cognitiveservices-ninja/wsl-butler/main/mkwsldir.ps1 -OutFile .\mkwsldir.ps1; .\mkwsldir.ps1
```
folder _instances_ will hold your WSL installations, folder _images_ your backups  

* create an image of your Linux distro
```
wsl -l -v
.\backup.ps1
```
Hint: you can pass the instance to backup as a commandline parameter  


* remove running wsl instance
```
wsl -l -v
wsl --terminate <running instance>
wsl --unregister <running instance>
```


* install backup created before
```
.\create.ps1
```
Hint: you can pass FileDate and Instance name as commandline parameters


* To make an instance the default one
```
wsl -s <descriptive name>
```
don´t forget to backup frequently 

# USB-storage
use scripts with the appendix *_usb*.
to create a instance from an backup stored on a thumb drive or  
to create a backup on a thumb drive.  
Directory structure is  

root  
\WindowsSubsystemLinux\  
\WindowsSubsystemLinux\images




