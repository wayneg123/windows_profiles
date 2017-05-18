:: start from atom
mklink /H %userprofile%\.atom\.apmrc atom\.apmrc
mklink /H %userprofile%\.atom\config.cson atom\.config.cson
mklink /H %userprofile%\.atom\keymap.cson atom\keymap.cson
mklink /H %userprofile%\.atom\projects.cson atom\projects.cson
:: pip
cd %userprofile%
mkdir pip
cd %userprofile%\windows_profiles
mklink /H %userprofile%\pip\pip.ini pip\pip.ini
:: cmder
mklink /H c:\cmder\config\ConEmu.xml cmder\ConEmu.xml
mklink /H c:\cmder\config\settings cmder\settings
mklink /H c:\cmder\config\user-ConEmu.xml cmder\user-ConEmu.xml 
mklink /H c:\cmder\config\user-aliases.cmd cmder\user-aliases.cmd
mklink /H c:\cmder\config\user-profile.cmd cmder\user-aliases.cmd
mklink /H c:\cmder\config\user-profile.ps1 cmder\user-profile.ps1
:: gvim
mklink /H %userprofile%\_vimrc gvim\_vimrc
:: others
mklink /H %userprofile%\.condarc others\.condarc 
mklink /H %userprofile%\.theanorc.txt others\.theanorc.txt
mklink /H %userprofile%\.gitconfig others\.gitconfig
:: shorcut_scripts
mklink /H %userprofile%\startup.ahk shorcut_scripts\startup.ahk 
:: ssh config
mklink /H %userprofile%\.ssh\config .ssh\config

