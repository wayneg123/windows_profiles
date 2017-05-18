# Use this file to run your own startup commands

## Prompt Customization
<#
.SYNTAX
    <PrePrompt><CMDER DEFAULT>
    λ <PostPrompt> <repl input>
.EXAMPLE
    <PrePrompt>N:\Documents\src\cmder [master]
    λ <PostPrompt> |
#>

[ScriptBlock]$PrePrompt = {

}

# Replace the cmder prompt entirely with this.
# [ScriptBlock]$CmderPrompt = {}

[ScriptBlock]$PostPrompt = {

}

## <Continue to add your own>
Import-Module Jump.Location

# Powershell config
new-item alias:np -value C:\Windows\System32\notepad.exe
# Remove Defaults
rename-item alias:\gc gk -force
rename-item alias:\gcm gkm -force
rename-item alias:\gl gll -force
rename-item alias:\gsn gsnn -force
rename-item alias:\gm gmm -force

# Git
function git-status { git status }
Set-Alias -Name gst -Value git-status

function git-addall { git add -A }
Set-Alias -Name gaa -Value git-addall

function git-branch { git branch $args }
Set-Alias -Name gb -Value git-branch

function git-diff { git diff $args }
Set-Alias -Name gd -Value git-diff

function git-diff-cached { git diff --cached }
Set-Alias -Name gdc -Value git-diff-cached

function git-diff-master { git diff master }
Set-Alias -Name gdm -Value git-diff-master

function git-diff-dev { git diff dev }
Set-Alias -Name gdd -Value git-diff-dev

function git-commit-all { git commit -a }
Set-Alias -Name gca -Value git-commit-all

function git-commit-m { git commit -m $args }
Set-Alias -Name gcm -Value git-commit-m

function git-checkout { git checkout $args }
Set-Alias -Name gco -Value git-checkout

function git-log { git log }
Set-Alias -Name gl -Value git-log

function git-fetch { git fetch }
Set-Alias -Name gf -Value git-fetch

function git-rebase-continue { git rebase --continue }
Set-Alias -Name grc -Value git-rebase-continue
