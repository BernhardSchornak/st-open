as ssm.S -o ssm.o 2>zz.err
ar rv ssm ssm.o
if exist ssm del ..\..\libs\ssm.a
if exist ssm move ssm ..\..\libs\ssm.a
del *.o
