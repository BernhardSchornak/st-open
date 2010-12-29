h:\usr\bin\as cvt.S -o cvt.out 2>>z.err
h:\usr\bin\emxomf -d -o cvt.obj cvt.out
h:\usr\bin\as xpd.S -o xpd.out 2>>z.err
h:\usr\bin\emxomf -d -o xpd.obj xpd.out
emxomfar -p16 rv cvt cvt.obj xpd.obj
if exist cvt.lib del ..\libs\cvt.lib
if exist cvt.lib move cvt.lib ..\libs\cvt.lib
del *.obj
pause
