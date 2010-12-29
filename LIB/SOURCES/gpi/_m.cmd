make -C \ST7\lib\sources\gpi 2>z.err
emxomfar -p16 rv gpi bmp.obj
if exist gpi.lib del ..\..\libs\gpi.lib
if exist gpi.lib move gpi.lib ..\..\libs\gpi.lib
make -C \ST7\lib\sources\gpi clean
pause
