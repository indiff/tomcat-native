@echo off
rem call  c:\cmsc\setenv.bat x64
call "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat" -arch=x64

set JAVA_HOME=D:\java\jdk1.8.0_144
set OPENSSL_VER=3.0.13
set APR_VER=1.7.x
set WINVER=WIN7

rd /s /q WIN7_X64_DLL_RELEASE WIN7_X64_DLL_RELEASE_JDK8

nmake -f NMAKEMakefile BUILD_CPU=x64 WITH_APR=C:\deps-x64\apr-%APR_VER% WITH_OPENSSL=C:\deps-x64\openssl-%OPENSSL_VER% APR_DECLARE_STATIC=1 OPENSSL_NEW_LIBS=0
move WIN7_X64_DLL_RELEASE WIN7_X64_DLL_RELEASE_JDK8

pause