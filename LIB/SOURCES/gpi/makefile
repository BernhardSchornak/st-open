#浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
#�                        *** (C)1979 - 2007  ST-SOFTWARE ***                         裁
#藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
#  栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
#浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
#�       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        裁
#債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
#� You may copy and distribute it as often as you want, but recipients aren't allowed 裁
#� to pay anything for any copy of this file.                                         裁
#�                                                                                    裁
#� You are free to modify the content of this file if you want to, but your derivates 裁
#� of the content of this file -still- are subject to the terms of the FT4FP-license, 裁
#� that is: Recipients are not allowed to pay anything for copies of the derivates of 裁
#� the content of this file.                                                          裁
#債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
#�       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        裁
#藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
#  栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�

CC=gcc
CFLAGS=-O2 -m486 -If:/st7/include

OBJS= bmp.obj gpi.obj

%.obj: %.c
	$(CC) $(CFLAGS) -S $<

        gcc $(CFLAGS) $(OBJS) -o >NUL

bmp.obj: bmp.c
gpi.obj: gpi.c

clean:
	del *.obj
