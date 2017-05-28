# Table of contents
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Table of contents](#table-of-contents)
- [Get started](#get-started)
- [Install pre-require packages](#install-pre-require-packages)
- [Features](#features)
- [Others](#others)

<!-- /TOC -->
# Get started

If you want to use this config, you should install cmder first. Download and install from cmder official website: [http://cmder.net/](http://cmder.net/). We recommend you to download `Full` package in case of network problems.

> Cmder is a software package created out of pure frustration over the absence of nice console emulators on Windows. It is based on amazing software, and spiced up with the Monokai color scheme and a custom prompt layout, looking sexy from the start. ---[http://cmder.net/](http://cmder.net/)




# Install pre-required packages

In my config, I mainly use powershell and install some modules. If you want to use this config for your cmder, please install the modules below.

- If you are using Windows 7, you should upgrade powershell to version 4.0.
    - You should checkout [this web site](https://social.technet.microsoft.com/wiki/contents/articles/21016.how-to-install-windows-powershell-4-0.aspx), simply install [.Net 4.5](https://www.microsoft.com/en-us/download/details.aspx?id=30653) and Windows 7 x64: [ Windows6.1-KB2819745-x64-MultiPkg.msu](https://www.microsoft.com/en-us/download/details.aspx?id=40855) or Windows 7 x32: [Windows6.1-KB2819745-x86.msu](https://www.microsoft.com/en-us/download/details.aspx?id=40855)
    > If it doesn't work, maybe you should install [Windows 7 SP1](https://www.microsoft.com/en-us/download/details.aspx?id=5842)

1. First you should install PsGet:
    `(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex`

2. Then you can install modules by using `Install-Module`
    - `Install-Module Jump.Location`
    > Use `j` to jump into folders just like `autojump` in linux
    >
    > e.g. `cd ~/.atom` after you enter that directory, you can simply use `j atom` enter into `~/.atom`. Just type `j` and return you can enter into the most common used directory. Cool!
    - `Install-Module Posh-git`
    > For git user
    - `Install-Module PSColor`
    > For highlighting
    - `Install-Module TabExpansionPlusPlus`
    > For using `Tab` completions


# Features

Git aliases:
- gst = git status
- gaa = git add -A
- gb = git branch $args
- gd = git diff $args
- gdc = git diff --cached
- gdm = git diff master
- gdd = git diff dev
- gca = git commit -a
- gcmsg = git commit -m $args
- gcm = git checkout master
- gco = git checkout $args
- gl = git log
- gf = git fetch
- grc = git rebase --continue

For Windows 10 users, you can use `alt+shift+3` into `Bash on ubuntu for windows`. There may be some problems in it, because I set the default shell is `ZSH`.

You can simply use `sh -c "$(curl -fsSL https://raw.githubusercontent.com/wayneg123/linux_configuration/master/startup.sh)"` to install ZSH from my [linux_configuration repo](https://github.com/wayneg123/linux_configuration).
> Root user

# Others

All config files must be in this folder. If there is no option to set this folder
directly, it has to be hardlinked.

* `aliases`: aliases in cmd; called form vendor\init.bat; autocreated from
  `vendor\aliases.example`.
* `*.lua`: clink completions and prompt filters; called from vendor\cmder.lua after all
  other prompt filter and clink completions are initialized; add your own.
* `user_profile.{sh|bat|ps1}`: startup files for bash|cmd|powershell tasks; called from their
  respective startup scripts in `vendor\`; autocreated on first start of such a task
* `.history`: the current commandline history; autoupdated on close
* `settings`: settings for readline; overwritten on update
* `ConEmu.xml`: settings from ConEmu (=the UI of cmder -> Preferences); overwritten on update
