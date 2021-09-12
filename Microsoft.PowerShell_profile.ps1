# Version 1.0

Function F_ENV {gci env:* | sort name}
New-Alias -Name lenv -Value F_ENV  -Force

Function F_NETSTAT_LISTEN { Get-NetTCPConnection -State Listen }
New-Alias -Name listen -Value F_NETSTAT_LISTEN -Force

Function F_IP { Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias Wi-Fi,LAN} 
New-Alias -Name ip -Value F_IP -Force

Function F_PATH {$env:path -split ';'}
New-Alias -Name path -Value F_PATH  -Force


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
