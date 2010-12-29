h:\usr\bin\as mnu.S -o mnu.out 2>z.err
h:\usr\bin\emxomf -d -o mnu.obj mnu.out
h:\usr\bin\as olh.S -o olh.out 2>>z.err
h:\usr\bin\emxomf -d -o olh.obj olh.out
h:\usr\bin\as sms.S -o sms.out 2>>z.err
h:\usr\bin\emxomf -d -o sms.obj sms.out
emxomfar -p16 rv ltt mnu.obj olh.obj sms.obj
if exist ltt.lib del ..\libs\ltt.lib
if exist ltt.lib move ltt.lib ..\libs\ltt.lib
del *.obj
pause
