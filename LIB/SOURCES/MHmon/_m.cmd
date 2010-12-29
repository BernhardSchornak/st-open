h:\usr\bin\as mhm.S -o mhm.out 2>z.err
h:\usr\bin\emxomf -d -o mhm.obj mhm.out
emxomfar -p16 rv mhm mhm.obj
if exist mhm.lib del ..\..\libs\mhm.lib
if exist mhm.lib move mhm.lib ..\..\libs\mhm.lib
del *.obj
pause
