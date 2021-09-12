# Version 1.0

Function F_PATH {$env:path -split ';'}
New-Alias -Name path -Value F_PATH  -Force

Function F_ENV {gci env:* | sort name}
New-Alias -Name lenv -Value F_ENV  -Force