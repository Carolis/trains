@echo off
python mml2mfvi.py %*
ren *data.bin wantedFileName
move F:\SariaFolder1\wantedFileName F:\SariaFolder2

pause