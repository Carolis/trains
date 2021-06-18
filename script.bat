@echo off
python mml2mfvi.py %*
del *_inst.bin
move *.bin F:\Saria2
cd F:\Saria2
Setlocal EnableDelayedExpansion
@for /f "delims=" %%i in ('dir /b *.bin')  do (
    set fname=%%~ni
    set fname=!fname:~0,-5!
    ren "%%i" "!fname!"
)
endlocal
pause