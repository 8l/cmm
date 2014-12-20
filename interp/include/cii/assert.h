/* $Id: assert.h,v 1.1 2002-07-08 14:43:56 olinsky Exp $ */
#undef assert
#ifdef NDEBUG
#define assert(e) ((void)0)
#else
#include "except.h"
extern void assert(int e);
#define assert(e) ((void)((e)||(RAISE(Assert_Failed),0)))
#endif
