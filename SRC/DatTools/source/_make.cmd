if exist DT5.exe del DT5.exe
if exist DT5.o del DT5.o
windres DT5.rc DT5.o 2>zz.err
gcc -mwindows -m64 -s bas.S dt5.S fldc.S fldv.S sca.S sef.S sol.S spn.S std.S ..\..\..\lib\libs\fh.a ..\..\..\lib\libs\fls.a ..\..\..\lib\libs\mhm.a ..\..\..\lib\libs\olh.a ..\..\..\lib\libs\sys.a C:\MinGW64\x86_64-w64-mingw32\lib\libcomctl32.a DT5.o 2>>zz.err
if exist a.exe rename a.exe DT5.exe
if exist DT5.exe copy DT5.exe ..\bin\DT5.exe
