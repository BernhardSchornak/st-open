if exist tst.exe del tst.exe
if exist tst.o del tst.o
C:\mingw64\bin\windres tst.rc tst.o 2>zz.err
C:\mingw64\bin\gcc -mwindows -m64 -s dlg.S fct.S tst.S ttt.S ..\..\..\lib\libs\sys.a tst.o 2>>zz.err
rename a.exe tst.exe
