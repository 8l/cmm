/*
Copyright © 1998, 1999 Lucent Technologies Inc.  All rights reserved.  
Revisions Copyright © 1999, 2000 Vita Nuova Limited.  All rights reserved.
Revisions Copyright © 2001 Norman Ramsey.  All rights reserved.  
*/
#include	"lib9.h"
#include	<bio.h>

int
Bputc(Biobuf *bp, int c)
{
	int i, j;

loop:
	i = bp->ocount;
	j = i+1;
	if(i != 0) {
		bp->ocount = j;
		bp->ebuf[i] = c;
		return 0;
	}
	if(bp->state != Bwactive)
		return Beof;
	j = write(bp->fid, bp->bbuf, bp->bsize);
	if(j == bp->bsize) {
		bp->ocount = -bp->bsize;
		bp->offset += j;
		goto loop;
	}
	fprint(2, "Bputc: write error\n");
	bp->state = Binactive;
	bp->ocount = 0;
	return Beof;
}
