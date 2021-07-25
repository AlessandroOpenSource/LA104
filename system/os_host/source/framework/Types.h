#pragma once
#include <assert.h>
#ifdef __cplusplus
#include <algorithm>
#endif
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include "../../library/spf/spf.h"
#include "Rgb.h"

#ifdef __cplusplus
extern "C" 
#endif
void _HandleAssertion(const char*, int, const char*);

#define _STR(x) #x
#ifndef _ASSERT
#define _ASSERT(e) {if(!(e)) _HandleAssertion(__FILE__, __LINE__, _STR(e)); }
#endif
#define ToWord(a, b) (ui16)(((a)<<8)|(b))
#define ToDword(a, b, c, d) (ui32)((ToWord(d, c)<<16)|ToWord(b,a))
#ifdef __APPLE__
#define min(a,b) std::min(a,b)
#define max(a,b) std::max(a,b)
#else
#define min(a,b) (((a)<(b))?(a):(b))
#define max(a,b) (((a)>(b))?(a):(b))
#endif
#define COUNT(arr) (int)(sizeof(arr)/sizeof(arr[0]))
#ifdef __APPLE__
#define NATIVEENUM uint32_t
#elif WIN32
#define NATIVEENUM uint32_t
#else
#define NATIVEENUM uint8_t
#endif
#define NATIVEPTR uintptr_t

// TODO: remove these types
typedef unsigned char ui8;
typedef unsigned short ui16;
typedef void* PVOID;

#ifdef WIN32
typedef int BOOL;
#else
typedef bool BOOL;
#endif
typedef const char * PCSTR;
typedef char * PSTR;
#ifndef WIN32
typedef uint32_t UINT;
#endif

#define EVERY(ms) static long dwTick##__LINE__ = 0; bool bDo##__LINE__ = BIOS::SYS::GetTick() - dwTick##__LINE__ > ms; if (bDo##__LINE__) dwTick##__LINE__ = BIOS::SYS::GetTick(); if (bDo##__LINE__)
