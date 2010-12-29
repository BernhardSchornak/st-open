make -C \ST7\lib\sources\aud 2>z.err
emxomfar -p16 rv aud app.obj low.obj
if exist aud.lib del ..\..\libs\aud.lib
if exist aud.lib move aud.lib ..\..\libs\aud.lib
make -C \ST7\lib\sources\aud clean
pause
