if exist PTB.exe del PTB.exe
if exist PTB.o del PTB.o
windres PTB.rc PTB.o 2>zz.err
gcc -mwindows -m64 -s cal.S dlg.S dmp.S PTB.S ..\..\..\lib\libs\olh.a ..\..\..\lib\libs\sys.a PTB.o 2>>zz.err
rename a.exe PTB.exe
