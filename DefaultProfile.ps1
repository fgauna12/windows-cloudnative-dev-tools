

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

function Copy-Path {
    Get-Location | Select-Object -ExpandProperty Path | Set-Clipboard
}

Set-Location ~\Repos