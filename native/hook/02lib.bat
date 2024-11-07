@echo off
call "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat" -arch=x64
ml64.exe /c assem64.asm
cl /EHsc /c hook64.c
lib hook.lib assem64.obj hook64.obj
pause