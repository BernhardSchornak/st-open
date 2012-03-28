if exist DskImg.exe del DskImg.exe
if exist dim.o del dim.o
C:\mingw64\bin\windres dim.rc dim.o 2>zz.err
C:\mingw64\bin\gcc -mwindows -m64 -s dim.S dlg.S fct.S glu.S wrp.S ..\..\..\lib\libs\fh.a ..\..\..\lib\libs\hed.a ..\..\..\lib\libs\olh.a ..\..\..\lib\libs\sys.a C:\MinGW64\x86_64-w64-mingw32\lib\libcomctl32.a dim.o 2>>zz.err
rename a.exe DskImg.exe
if exist DskImg.exe copy DskImg.exe ..\bin\DskImg.exe
