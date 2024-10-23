 set OPENSSL_VER=3.0.13
 set APR_VER=1.7.4

 
 mkdir \deps-x86\apr-%APR_VER%\include
 mkdir \deps-x86\apr-%APR_VER%\lib
 mkdir \deps-x86\openssl-%OPENSSL_VER%\include
 mkdir \deps-x86\openssl-%OPENSSL_VER%\lib
 xcopy /E \deps-x86\apr-%APR_VER% \deps-x64\apr-%APR_VER%\
 xcopy /E \deps-x86\openssl-%OPENSSL_VER% \deps-x64\openssl-%OPENSSL_VER%\

 
 xcopy /E apr\include \deps-x86\apr-%APR_VER%\include\
 xcopy /E apr\include \deps-x64\apr-%APR_VER%\include\
 
 copy apr\WIN7_X86_LIB_RELEASE\apr-1.lib \deps-x86\apr-%APR_VER%\lib
 copy apr\WIN7_X64_LIB_RELEASE\apr-1.lib \deps-x64\apr-%APR_VER%\lib

 xcopy /E openssl\include\openssl \deps-x86\openssl-%OPENSSL_VER%\include\openssl\
 xcopy /E openssl\include\openssl \deps-x64\openssl-%OPENSSL_VER%\include\openssl\

 copy openssl\out32-x86\*.lib \deps-x86\openssl-%OPENSSL_VER%\lib\
 copy openssl\out32-x64\*.lib \deps-x64\openssl-%OPENSSL_VER%\lib\

 copy openssl\out32-x86\openssl.exe \deps-x86\openssl-%OPENSSL_VER%\
 copy openssl\out32-x64\openssl.exe \deps-x64\openssl-%OPENSSL_VER%\
 
 pause