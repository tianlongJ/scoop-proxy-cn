# Nerd Font Patcher launcher
# Updated: 2023-07-19
# https:github.comHUMORCEnuke
$ErrorActionPreference = 'SilentlyContinue'

$PATCHER = "$PSScriptRoot\font-patcher"

# Check requirements
## Python
if (!(Get-Command 'python') -or !(Get-Command 'python3')) {
    Write-Host "'python' or 'python3' not detected, execute 'scoop install mainpython' to install it." -ForegroundColor Red
    exit 1
}
## FontForge
if (!(Get-Command 'fontforge')) {
    Write-Host "'fontforge' not detected, execute 'scoop install extrasfontforge' to install it." -ForegroundColor Red
    exit 1
}

# Execute Patcher
fontforge -script $PATCHER $args
