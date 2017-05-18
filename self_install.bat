:: start from atom
mklink /H %home%\.atom\.apmrc atom\.apmrc
mklink /H %home%\.atom\config.cson atom\.config.cson
mklink /H %home%\.atom\keymap.cson atom\keymap.cson
mklink /H %home%\.atom\projects.cson atom\projects.cson
:: pip
cd %home%
mkdir pip
cd %home%\windows_profile
mklink /H %home%\pip\pip.ini pip\pip.ini
:: cmder
mklink /H %home%\cmder\ConEmu.xml cmder\ConEmu.xml
mklink /H %home%\cmder\settings cmder\settings
mklink /H %home%\cmder\user-ConEmu.xml cmder\user-ConEmu.xml 
mklink /H %home%\cmder\user-aliases.cmd cmder\user-aliases.cmd
mklink /H %home%\cmder\user-profile.cmd cmder\user-aliases.cmd
mklink /H %home%\cmder\user-profile.ps1 cmder\user-profile.ps1
:: gvim
mklink /H %home%\_vimrc gvim\_vimrc
:: others
mklink /H %home%\.condarc others\.condarc 
mklink /H %home%\.theanorc.txt others\.theanorc.txt
mklink /H %home%\.gitconfig others\.gitconfig
:: shorcut_scripts
mklink /H %home%\startup.ahk shorcut_scripts\startup.ahk 
:: ssh config
mklink /H %home%\.ssh\config .ssh\config

