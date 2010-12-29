as fls.S -o fls.o 2>zz.err
ar rv fls fls.o
if exist fls del ..\..\libs\fls.a
if exist fls move fls ..\..\libs\fls.a
del *.o
pause
