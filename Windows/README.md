# Bash files to get things going on a Windows machine with MINGW64 as the terminal

When I did this, the default path was for the Desktop of the current user; most of this configuration was to get the ability to change the directory to a convenient location, in this case, it was the Desktop

### Add startup processes

Windows 10

```
C:\Users\USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```

- Where C is the drive letter
- Replace USERNAME with your actual username
- Click and drag shortcuts to this folder in order for them to be a startup process
- [Tutorial for adding startup processes in Windows](https://winaero.com/blog/how-to-add-or-remove-startup-apps-in-windows-10/)

### Node.js and Chocolatey package manager

Customize the PowerShell by launching it and right-clicking on the header and selecting 'properties'
[Install node.js current LTS version from their website](https://nodejs.org/en/), which includes the Chocolatey package manager

After installing Node and Chocolatey, use the package manager to add a few more programs

```
choco install git sublimetext3 notepadplusplus slack sonos-controller -y
```

### Windows PowerShell profile config

Create a folder for WindowsPowerShell
```
New-Item -Path C:\Users\USERNAME\OneDrive\Documents\ -ItemType Directory -Name WindowsPowerShell
```
Create the WindowsPowerShell profile file to edit
```
New-Item -Path C:\Users\USERNAME\OneDrive\Documents\WindowsPowerShell\ -ItemType File -Name profile.ps1
```

Launch the default editor to make changes to the file
```
Start-Process $profile.CurrentUserAllHosts
```

It is likely that the Default Execution Policy will need to be updated in order for the profile to run as a script. 
Check the execution policy by running:
```
Get-ExecutionPolicy
```

set the execution policy to 'unrestricted'
```
Set-ExecutionPolicy unrestricted
```
