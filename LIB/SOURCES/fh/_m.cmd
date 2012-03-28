as fh.S -o fh.o 2>zz.err
ar rv fh fh.o
if exist fh del ..\..\libs\fh.a
if exist fh move fh ..\..\libs\fh.a
del *.o
