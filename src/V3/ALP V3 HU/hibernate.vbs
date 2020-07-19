' Autómatikus Leállitó Program V3
' Készítette: Levminer

Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c hibernatea.bat"
oShell.Run strArgs, 0, false
