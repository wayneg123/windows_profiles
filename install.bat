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
mklink /H %home%\cmder\ cmder\
mklink /H %home%\cmder\ cmder\
mklink /H %home%\cmder\ cmder\
:: gvim
mklink /H %home%\_vimrc gvim\_vimrc

