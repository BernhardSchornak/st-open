#ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
#บ                        *** (C)1979 - 2007  ST-SOFTWARE ***                         บÛ
#ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
#  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
#ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
#บ       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        บÛ
#บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
#บ You may copy and distribute this file as often as you want, but recipients are not บÛ
#บ allowed to pay anything for any copy of this file or its content. It isn't allowed บÛ
#บ to remove parts of this file or add third party content. It isn't allowed to abuse บÛ
#บ the copyrighted content or introduced techniques for commercial purposes. Whatever บÛ
#บ is derived from this file and its content must be freely available without charge. บÛ
#บ You are free to modify the content of this file if you want to. However, derivates บÛ
#บ of the content of this file or parts of it *still* are subject to the terms of the บÛ
#บ FT4FP license. Recipients neither are allowed to pay anything for the original nor บÛ
#บ for altered or derived replica.                                                    บÛ
#บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
#บ       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        บÛ
#ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
#  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

CC=gcc
CFLAGS=-O2 -m486 -If:/st7/include

OBJS= app.obj low.obj

%.obj: %.c
	$(CC) $(CFLAGS) -c $<

        gcc $(CFLAGS) $(OBJS) -o >NUL

app.obj: app.S
low.obj: low.S

clean:
	del *.obj
