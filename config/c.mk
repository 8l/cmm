# ------------------------------------------------------------------ 
# $Id: c.mk,v 1.6 2004-10-12 16:05:30 nr Exp $
#
# rules and tools to compile C source code
# ------------------------------------------------------------------ 

CC =        $config_cc
CFLAGS =    -Wall

%.o:        %.c
	$CC $CFLAGS -c $stem.c -o $stem.o

%.a:
	ar cr $target $prereq
