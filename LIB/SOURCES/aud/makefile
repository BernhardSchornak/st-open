#浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
#�                        *** (C)1979 - 2007  ST-SOFTWARE ***                         裁
#藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
#  栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
#浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
#�       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        裁
#債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
#� You may copy and distribute this file as often as you want, but recipients are not 裁
#� allowed to pay anything for any copy of this file or its content. It isn't allowed 裁
#� to remove parts of this file or add third party content. It isn't allowed to abuse 裁
#� the copyrighted content or introduced techniques for commercial purposes. Whatever 裁
#� is derived from this file and its content must be freely available without charge. 裁
#� You are free to modify the content of this file if you want to. However, derivates 裁
#� of the content of this file or parts of it *still* are subject to the terms of the 裁
#� FT4FP license. Recipients neither are allowed to pay anything for the original nor 裁
#� for altered or derived replica.                                                    裁
#債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
#�       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        裁
#藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
#  栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�

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
