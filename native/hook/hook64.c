// hook.c
// compile with: cl /EHsc /c hook.c
// processor: x86
#include <stdio.h>
#include "hook.h"

// void FunEnter( void* pCallee ){ printf_s("FunEnter");}
void FunEnter( void* pCallee ){}

// void FunExit( void* pCallee ){ printf_s("FunExit");}
void FunExit( void* pCallee ){}