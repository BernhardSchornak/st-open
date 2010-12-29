h:\usr\bin\as srt.S -o srt.out 2>z.err
h:\usr\bin\emxomf -d -o srt.obj srt.out
emxomfar -p16 rv srt srt.obj
if exist srt.lib del ..\..\libs\srt.lib
if exist srt.lib move srt.lib ..\..\libs\srt.lib
del *.obj
pause
