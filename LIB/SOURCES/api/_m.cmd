h:\usr\bin\as api.S -o api.out 2>z.err
h:\usr\bin\emxomf -d -o api.obj api.out
emxomfar -p16 rv api api.obj
if exist api.lib del ..\..\libs\api.lib
if exist api.lib move api.lib ..\..\libs\api.lib
del *.obj
pause
