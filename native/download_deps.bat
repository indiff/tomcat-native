@echo off

set SSL=openssl-3.0.14.tar.gz
set APR=apr-1.7.5.tar.gz
set DEP_DIR=C:\deps
mkdir %DEP_DIR%

rem https://dlcdn.apache.org/apr/apr-1.7.5.tar.gz
rem https://archive.apache.org/dist/apr/apr-1.7.5.tar.gz
curl https://dlcdn.apache.org/dist/apr/%APR% -o %DEP_DIR%\%APR%
curl https://www.openssl.org/source/%SSL% -o %DEP_DIR%\%SSL%


pause