# Download Manually - https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab



# Install Chocolately (Run as Admin)
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

if ($PSScriptRoot){
    $Root = $PSScriptRoot
}
else {
    $Root = "."
}
. $Root\Install-DevToolsUsingChoco.ps1
. $Root\Install-VsCodeExtensions.ps1

Install-DevToolsUsingChoco

Install-VsCodeExtensions

write-host "restart computer"

# enter powershell core
pwsh

# Set-up the terminal Manually - https://docs.microsoft.com/en-us/windows/terminal/tutorials/powerline-setup
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name PSReadLine -Scope CurrentUser -Force -SkipPublisherCheck

write-host "paste in the following to your pwsh profile"
echo @"
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
"@
notepad $profile


