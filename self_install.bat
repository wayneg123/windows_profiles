:: start from atom
mklink %userprofile%\.atom\.apmrc %userprofile%\windows_profiles\atom\.apmrc
mklink %userprofile%\.atom\config.cson %userprofile%\windows_profiles\atom\.config.cson
mklink %userprofile%\.atom\keymap.cson %userprofile%\windows_profiles\atom\keymap.cson
mklink %userprofile%\.atom\projects.cson %userprofile%\windows_profiles\atom\projects.cson
:: pip
cd %userprofile%
mkdir pip
cd %userprofile%\windows_profiles
mklink %userprofile%\pip\pip.ini %userprofile%\pip\pip.ini
:: cmder
mklink c:\cmder\config\ConEmu.xml %userprofile%\windows_profiles\cmder\ConEmu.xml
mklink c:\cmder\config\settings %userprofile%\windows_profiles\cmder\settings
mklink c:\cmder\config\user-ConEmu.xml %userprofile%\windows_profiles\cmder\user-ConEmu.xml
mklink c:\cmder\config\user-aliases.cmd %userprofile%\windows_profiles\cmder\user-aliases.cmd
mklink c:\cmder\config\user-profile.cmd %userprofile%\windows_profiles\cmder\user-aliases.cmd
mklink c:\cmder\config\user-profile.ps1 %userprofile%\windows_profiles\cmder\user-profile.ps1
:: gvim
mklink %userprofile%\_vimrc %userprofile%\windows_profiles\gvim\_vimrc
:: others
mklink %userprofile%\.condarc %userprofile%\windows_profiles\others\.condarc
mklink %userprofile%\.theanorc.txt %userprofile%\windows_profiles\others\.theanorc.txt
mklink %userprofile%\.gitconfig %userprofile%\windows_profiles\others\.gitconfig
:: shorcut_scripts
mklink %userprofile%\startup.ahk %userprofile%\windows_profiles\shorcut_scripts\startup.ahk
mklink %userprofile%\adding-to-startup.vbs %userprofile%\shorcut_scripts\windows_profiles\adding-to-startup.vbs
:: ssh config
mklink %userprofile%\.ssh\config .%userprofile%\windows_profiles\ssh\config
