# wsl-butler
scripts to maintain your wsl installation
## initial setup
install a Linux distribution of your choice and customize it

# install wsl-butler
* download .ps1 files from this repository

* Create a folder WindowsSubsystemLinux and two subfolders in your user-folder
```
.\mkwsldir.ps1
```
or
```
mkdir WindowsSubsystemLinux
mkdir WindowsSubsystemLinux\instances
mkdir WindowsSubsystemLinux\images
```
instances will hold your WSL installations, images your backups
* download ps1 files from this repository
* create an image of your Linux distro
```
.\backup.ps1 <desciptive name>
```
example: .\backup.ps1 Development
* remove running wsl instance
```
wsl -l -v
wsl --terminate <running instance>
wsl --unregister <running instance>
```
* install backup create before
```
.\create.ps1 <file-date-hour> <descriptive name>
```
* To make an instance the default one
```
wsl -s <descriptive name>
```
don´t forget to backup frequently 

## powerline-go
to have an informative and good-looking prompt, consider [install powerline-go](https://github.com/justjanne/powerline-go#installation) in your Linux image

![Powerline Prompt](https://raw.github.com/holgerimbery/wsl-butler/main/powerline-go.png)

