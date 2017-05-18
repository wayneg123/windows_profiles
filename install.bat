:: start from atom
mklink /H %userprofile%\.atom\.apmrc atom\.apmrc
mklink /H %userprofile%\.atom\config.cson atom\.config.cson
mklink /H %userprofile%\.atom\keymap.cson atom\keymap.cson
mklink /H %userprofile%\.atom\projects.cson atom\projects.cson
:: pip
cd %userprofile%
mkdir pip
cd %userprofile%\windows_profile
mklink /H %userprofile%\pip\pip.ini pip\pip.ini
:: cmder
mklink /H %userprofile%\cmder\ConEmu.xml cmder\ConEmu.xml
mklink /H %userprofile%\cmder\settings cmder\settings
mklink /H %userprofile%\cmder\user-ConEmu.xml cmder\user-ConEmu.xml 
mklink /H %userprofile%\cmder\user-aliases.cmd cmder\user-aliases.cmd
mklink /H %userprofile%\cmder\user-profile.cmd cmder\user-aliases.cmd
mklink /H %userprofile%\cmder\user-profile.ps1 cmder\user-profile.ps1
:: gvim
mklink /H %userprofile%\_vimrc gvim\_vimrc
:: others
mklink /H %userprofile%\.condarc others\.condarc 
mklink /H %userprofile%\.theanorc.txt others\.theanorc.txt
:: shorcut_scripts
mklink /H %userprofile%\startup.ahk shorcut_scripts\startup.ahk 
