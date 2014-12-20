/* $Id: atom.h,v 1.1 2002-07-08 14:43:56 olinsky Exp $ */
#ifndef ATOM_INCLUDED
#define ATOM_INCLUDED
extern       int   Atom_length(const char *str);
extern const char *Atom_new   (const char *str, int len);
extern const char *Atom_string(const char *str);
extern const char *Atom_int   (long n);
#endif
