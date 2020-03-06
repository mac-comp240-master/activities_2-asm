CC = gcc
OFLAGS = -Og
CFLAGS = $(OFLAGS) -Wall -g

CINC =
F64 =-m64


.SUFFIXES: .c .s .o .d 


.c.s:
	$(CC) $(OFLAGS) $(CINC) -S $(F64) $*.c -o $*.s

.c.d:
	$(CC) $(CFLAGS) $(CINC) $(F64) $*.c -o $*
	objdump -d $* > $*.d
	rm -f $*

files:	sum.s	sum.d	sum swap.s 


sum: sum.c
	$(CC) $(CFLAGS) $(CINC) $(F64) sum.c -o sum

clean:
	rm -f *~ *.s *.d sum *.s *.64d sum64
