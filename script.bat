@echo off
python mml2mfvi.py %*
Setlocal EnableDelayedExpansion
@for /f "delims=" %%i in ('dir /b *.bin')  do (
    set fname=%%~ni
    set fname=!fname:~0,-5!
    ren "%%i" "!fname!"
)
endlocal
for /r "F:\Saria\" %%x in (*.bin) do move "%%x" "F:\Saria2\"
pause