if exist STbench.exe del STbench.exe
if exist stb.o del stb.o
C:\mingw64\bin\windres stb.rc stb.o 2>zz.err
C:\mingw64\bin\gcc -mwindows -m64 -s bch.S cpu.S dlg.S out.S stb.S ..\..\..\lib\libs\olh.a ..\..\..\lib\libs\sys.a C:\MinGW64\x86_64-w64-mingw32\lib\libcomctl32.a stb.o 2>>zz.err
rename a.exe STbench.exe
if exist STbench.exe copy STbench.exe ..\bin\STbench.exe
