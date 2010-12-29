h:\usr\bin\as ssm.S -o ssm.out 2>z.err
h:\usr\bin\emxomf -d -o ssm.obj ssm.out
emxomfar -p16 rv sss ssm.obj
if exist sss.lib del ..\..\libs\sss.lib
if exist sss.lib move sss.lib ..\..\libs\sss.lib
del *.obj
pause
