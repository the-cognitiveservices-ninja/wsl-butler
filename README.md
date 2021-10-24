# wsl-butler
scripts to maintain your wsl installation (e.g., backup and restore, create a portable instance)
## initial setup
install a Linux distribution of your choice and customize it, this distribution will be the base for our future deployments

# install wsl-butler
* download .ps1 files from this repository

* Create a folder WindowsSubsystemLinux and two subfolders in your user-folder
```
.\mkwsldir.ps1
```
folder _instances_ will hold your WSL installations, folder _images_ your backups  

* create an image of your Linux distro
```
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

## Hint: powerline-go
to have an informative and good-looking prompt, consider [install powerline-go](https://github.com/justjanne/powerline-go#installation) in your Linux image

![Powerline Prompt](https://raw.github.com/holgerimbery/wsl-butler/main/powerline-go.png)

