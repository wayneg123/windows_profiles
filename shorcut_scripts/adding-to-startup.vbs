Option Explicit

Dim wshShell, Shortcut, strDir, strName

Set wshShell = WSH.CreateObject("WScript.Shell")
strDir = wshShell.SpecialFolders("Startup")
strName = "startup"
Set Shortcut = wshShell.CreateShortcut(strDir & "\" & strName & ".lnk")
    Shortcut.TargetPath = WSH.CreateObject("Scripting.FileSystemObject").GetParentFolderName(WSH.CreateObject("Scripting.FileSystemObject").GetFile(WScript.ScriptFullName)) & "\" & strName & ".ahk"
    Shortcut.WindowStyle = 1
    Shortcut.WorkingDirectory = WSH.CreateObject("Scripting.FileSystemObject").GetParentFolderName(WSH.CreateObject("Scripting.FileSystemObject").GetFile(WScript.ScriptFullName)) & "\"
    Shortcut.Save
Set Shortcut = Nothing
Set wshShell = Nothing
MsgBox "开机启动项设置成功，如需取消请自行在开始菜单中删除。" & vbCrLf & vbCrLf & "文件位置：" & strDir,64,"设置成功"