@echo off
rem call  c:\cmsc\setenv.bat x64
call "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat" -arch=x64

set JAVA_HOME=D:\java\jdk1.8.0_144
set OPENSSL_VER=3.0.13
set APR_VER=1.7.x
set WINVER=WIN7

rd /s /q WIN7_X64_DLL_RELEASE WIN7_X64_DLL_RELEASE_JDK8
mkdir WIN7_X64_DLL_RELEASE

rem ml64.exe  /c /Cx hook\assem64.asm
rem warning A4018:invalid command-line option : /EXPORT:_penter
rem /Cx	保留公共符号和外部符号中的大小写。
rem /NODEFAULTLIB:library
rem ml64.exe /c /nologo /Cx /Zi /W3 /errorReport:prompt /Fo"WIN7_X64_DLL_RELEASE\assem64.obj" /Ta"hook\assem64.asm" 

rem do not work right!
rem cl /EHsc /c /GH /Gh "hook\hook64.c" /Fo"WIN7_X64_DLL_RELEASE\hook64.obj" 

nmake -f NMAKEMakefile BUILD_CPU=x64 ^
WITH_APR=C:\deps-x64\apr-%APR_VER% ^
WITH_OPENSSL=C:\deps-x64\openssl-%OPENSSL_VER% ^
APR_DECLARE_STATIC=1 ^
APR_HAVE_IPV6=OFF ^
OPENSSL_NEW_LIBS=0

move WIN7_X64_DLL_RELEASE WIN7_X64_DLL_RELEASE_JDK8

pause