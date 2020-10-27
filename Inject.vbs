Dim WshShell
Set WshShell = Wscript.CreateObject("Wscript.Shell")
Set objShell = CreateObject("Wscript.Shell")
Set WshEnv = WshShell.Environment("PROCESS")
Set objShell = CreateObject("Wscript.Shell")
strPath = Wscript.ScriptFullName
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.GetFile(strPath)
strFolder = objFSO.GetParentFolderName(objFile)
objShell.CurrentDirectory = strFolder
WshEnv("SEE_MASK_NOZONECHECKS") = 1 
WshShell.Run("Injector.exe -n Spotify.exe -i netutils.dll"), 0, true 
WshEnv.Remove("SEE_MASK_NOZONECHECKS")
wscript.quit(RetVal)