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
MsgBox "�������������óɹ�������ȡ���������ڿ�ʼ�˵���ɾ����" & vbCrLf & vbCrLf & "�ļ�λ�ã�" & strDir,64,"���óɹ�"