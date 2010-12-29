#ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
#บ                        *** (C)1979 - 2007  ST-SOFTWARE ***                         บÛ
#ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
#  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
#ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
#บ       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        บÛ
#บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
#บ You may copy and distribute it as often as you want, but recipients aren't allowed บÛ
#บ to pay anything for any copy of this file.                                         บÛ
#บ                                                                                    บÛ
#บ You are free to modify the content of this file if you want to, but your derivates บÛ
#บ of the content of this file -still- are subject to the terms of the FT4FP-license, บÛ
#บ that is: Recipients are not allowed to pay anything for copies of the derivates of บÛ
#บ the content of this file.                                                          บÛ
#บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
#บ       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        บÛ
#ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
#  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

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
