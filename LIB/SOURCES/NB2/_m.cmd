h:\usr\bin\as nbi.S -o nbi.out 2>z.err
h:\usr\bin\emxomf -d -o nbi.obj nbi.out
emxomfar -p16 rv nbk nbi.obj
if exist nbk.lib del ..\..\libs\nbk.lib
if exist nbk.lib move nbk.lib ..\..\libs\nbk.lib
del *.obj
pause
