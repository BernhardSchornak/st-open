h:\usr\bin\as bmp.S -o bmp.out 2>z.err
h:\usr\bin\emxomf -d -o bmp.obj bmp.out
emxomfar -p16 rv grp bmp.obj
if exist grp.lib del ..\..\libs\grp.lib
if exist grp.lib move grp.lib ..\..\libs\grp.lib
del *.obj
pause
