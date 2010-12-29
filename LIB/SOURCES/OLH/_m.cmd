as olh.S -o olh.o 2>zz.err
ar rv olh olh.o
if exist olh del ..\..\libs\olh.a
if exist olh move olh ..\..\libs\olh.a
del *.o
pause
