as mhm.S -o mhm.o 2>zz.err
ar rv mhm mhm.o
if exist mhm del ..\..\libs\mhm.a
if exist mhm move mhm ..\..\libs\mhm.a
del *.o
