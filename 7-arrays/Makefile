CC=gcc
CFLAGS= -Og  -std=c99 -msse3
COFLAGS = -O1 -Wall -std=c99 -msse3
CINC =
F64 =-m64


.SUFFIXES: .c .64s .O1-64s .64o .64d


.c.64s:
	$(CC) $(CFLAGS) $(CINC) -S $(F64) $*.c -o $*.64s

.c.O1-64s:
	$(CC) $(COFLAGS) $(CINC) -S $(F64) $*.c -o $*.O1-64s

.c.64d:
	$(CC) $(CFLAGS) $(CINC) $(F64) $*.c -o $*
	objdump -d $* > $*.64d
	rm -f $*


files: array_indexing array_indexing.64s # 2D_array 2D_array.64s 

array_indexing: array_indexing.c
	$(CC) $(CFLAGS) $(CINC) -o array_indexing array_indexing.c
	
2D_array: 2D_array.c
	$(CC) $(CFLAGS) $(CINC) -o 2D_array 2D_array.c

dynamic_alloc: dynamic_alloc.c
	$(CC) $(CFLAGS) $(CINC) -o dynamic_alloc dynamic_alloc.c
	
clean:
	rm -f *.64s array_indexing 2D_array
