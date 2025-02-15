Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb 'https:raw.githubusercontent.comscoopinstallerinstallmasterinstall.ps1' | iex
scoop install gsudo git scoop-search
scoop config SCOOP_REPO 'https:github.comAsh258Scoop-Core'
scoop bucket add 'Base'
scoop bucket add Scoop-Apps 'https:github.comACooper81scoop-apps'
[Environment]::SetEnvironmentVariable('SCOOP', "$env:UserProfile\scoop", 'User')
scoop update
