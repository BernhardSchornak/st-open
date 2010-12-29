h:\usr\bin\as cpm.S -o cpm.out 2>z.err
h:\usr\bin\emxomf -d -o cpm.obj cpm.out
h:\usr\bin\as mkd.S -o mkd.out 2>>z.err
h:\usr\bin\emxomf -d -o mkd.obj mkd.out
h:\usr\bin\as shd.S -o shd.out 2>>z.err
h:\usr\bin\emxomf -d -o shd.obj shd.out
h:\usr\bin\as spn.S -o spn.out 2>>z.err
h:\usr\bin\emxomf -d -o spn.obj spn.out
h:\usr\bin\as std.S -o std.out 2>>z.err
h:\usr\bin\emxomf -d -o std.obj std.out
emxomfar -p16 rv mkd cpm.obj mkd.obj shd.obj spn.obj std.obj
if exist mkd.lib del ..\libs\mkd.lib
if exist mkd.lib move mkd.lib ..\libs\mkd.lib
del *.obj
pause
