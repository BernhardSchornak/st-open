as acf.S -o acf.o 2>zz.err
as cap.S -o cap.o 2>>zz.err
as cvt.S -o cvt.o 2>>zz.err
as fls.S -o fls.o 2>>zz.err
as ldr.S -o ldr.o 2>>zz.err
as lng.S -o lng.o 2>>zz.err
as pmf.S -o pmf.o 2>>zz.err
as spn.S -o spn.o 2>>zz.err
as ssa.S -o ssa.o 2>>zz.err
as str.S -o str.o 2>>zz.err
as tms.S -o tms.o 2>>zz.err
as wrp.S -o wrp.o 2>>zz.err
as xdt.S -o xdt.o 2>>zz.err

ar rv sys acf.o cap.o cvt.o fls.o ldr.o lng.o pmf.o spn.o ssa.o str.o tms.o wrp.o xdt.o
if exist ..\..\libs\sys.a del ..\..\libs\sys.a
if exist sys move sys ..\..\libs\sys.a
del *.o
pause
