@echo off
cd apr

call "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat" -arch=x64
		
rem call  c:\cmsc\setenv.bat x64

set JAVA_HOME=D:\java\jdk1.8.0_144
set OPENSSL_VER=3.0.13
set APR_VER=1.7.4
set WINVER=WIN7

rem nmake -f NMAKEmakefile BUILD_CPU=x64 APR_DECLARE_STATIC=1
rem cmake --build %CD%/build --config x64
cmake --config x64
pause