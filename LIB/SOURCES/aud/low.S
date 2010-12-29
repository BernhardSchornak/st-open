       /*
       ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
       º                        CAUTION: EXPERIMENTAL - NOT TESTED!                         ºÛ
       ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
       º                       L O W   L E V E L   F U N C T I O N S                        ºÛ
       ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
       º                          *** (C) ST-Open 1979 - 2009 ***                           ºÛ
       ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
        º       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        ºÛ
        ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
        º You may copy and distribute this file as often as you want, but recipients are not ºÛ
        º allowed to pay anything for any copy of this file or its content. It isn't allowed ºÛ
        º to remove parts of this file or add third party content. It isn't allowed to abuse ºÛ
        º the copyrighted content or introduced techniques for commercial purposes. Whatever ºÛ
        º is derived from this file and its content must be freely available without charge. ºÛ
        º You are free to modify the content of this file if you want to. However, derivates ºÛ
        º of the content of this file or parts of it *still* are subject to the terms of the ºÛ
        º FT4FP license. Recipients neither are allowed to pay anything for the original nor ºÛ
        º for altered or derived replica.                                                    ºÛ
        ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
        º       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        ºÛ
        ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
       º RIFF / WAVE - HEADER (see ystc.h for the C structure definition)                   ºÛ
       ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³                                                                                    ³Û
       ³ 00   DD   "RIFF" (ASCII)                                                           ³Û
       ³                                                                                    ³Û
       ³ 04   DD   filesize - 8                WAVE-header starts at offset 00000008        ³Û
       ³                                                                                    ³Û
       ³ 08   DD   "WAVE" (ASCII)                                                           ³Û
       ³                                                                                    ³Û
       ³ 0C   DD   "fmt " (ASCII)                                                           ³Û
       ³                                                                                    ³Û
       ³ 10   DD   header size                 0010   anything else is rejected             ³Û
       ³                                                                                    ³Û
       ³ 14   DW   format ID                   0001   only PCM is accepted!                 ³Û
       ³                                                                                    ³Û
       ³ 16   DW   mode                        0001 = mono                                  ³Û
       ³                                       0002 = stereo                                ³Û
       ³                                                                                    ³Û
       ³ 18   DD   samples per second          1F40 =  8 000                                ³Û
       ³                                       2B11 = 11 025                                ³Û
       ³                                       5622 = 22 050                                ³Û
       ³                                       AC44 = 44 100                                ³Û
       ³                                       BB80 = 48 000                                ³Û
       ³                                                                                    ³Û
       ³ 1C   DD   byte    per second          samples/s * byte/sample                      ³Û
       ³                                                                                    ³Û
       ³ 20   DW   byte per sample             block alignment  1    8 bit/sample, mono     ³Û
       ³                                                        2    8 bit/sample, stereo   ³Û
       ³                                                        2   16 bit/sample, mono     ³Û
       ³                                                        4   16 bit/sample, stereo   ³Û
       ³                                                                                    ³Û
       ³ 22   DW   bit  per sample             8 or 16                                      ³Û
       ³                                                                                    ³Û
       ³ 24   DD   "data" (ASCII)                                                           ³Û
       ³                                                                                    ³Û
       ³ 28   DD   size of sample data block                                                ³Û
       ³                                                                                    ³Û
       ³ 2C   ..   sample data block (should be the offset if you want to add a header)     ³Û
       ³                                                                                    ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
.text
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ ckWAV   check WAV header                   ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   address header or file        ³Û
       ³   PAR2  0C   file size (0, if header)      ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   0000 0000   ok                     ³Û
       ³         0000 0001   RIFF MISSING           ³Û
       ³         0000 0002   INVALID FILE SIZE      ³Û
       ³         0000 0003   WAVE MISSING           ³Û
       ³         0000 0004   FMT_ MISSING           ³Û
       ³         0000 0005   INVALID HEADER SIZE    ³Û
       ³         0000 0006   WAVE HEADER CORRUPTED  ³Û
       ³         0000 0007   INVALID DATA SIZE      ³Û
       ³         0000 0008   INVALID FORMAT ID      ³Û
       ³         0000 0009   SAMPLING RATE REJECTED ³Û
       ³         0000 000A   WRONG BITS PER SAMPLE  ³Û
       ³         0000 000B   INVALID MODE           ³Û
       ³         0000 000C   INVALID ALIGNMENT      ³Û
       ³         0000 000D   INVALID BYTE PER SECOND³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ Checks, if the given memory area is a RIFF ³Û
       ³ header. If so, the header is evaluated and ³Û
       ³ a zero is returned, if everything is ok... ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _ckWAV
_ckWAV:pushl %esi
       pushl %edi
       pushl %ebx
       xorl %esi,%esi
       pushl %ecx
       movl 0x14(%esp),%edi            # EDI = address WAV header
       pushl %edx
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check "RIFF"        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       incl %esi                       # ERROR - RIFF MISSING
       cmpl $0x46464952,0x00(%edi)     # check header
       jne ckWAVx
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check file size     ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     0:incl %esi                       # ERROR - INVALID FILE SIZE
       movl 0x04(%edi),%eax            # EAX  = size from header
       movl 0x1C(%esp),%ebx            # EBX  = file size
       leal 8(%eax),%eax               # EAX += 8
       testl %ebx,%ebx                 # EBX  = 0?
       je 1f                           # evaluate header only...
       cmpl %eax,%ebx                  # size ok?
       jne ckWAVx
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check "WAVE"        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     1:incl %esi                       # ERROR - WAVE MISSING
       cmpl $0x45564157,0x08(%edi)     # "WAVE"?
       jne ckWAVx
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check "fmt "        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       incl %esi                       # ERROR - FMT_ MISSING
       cmpl $0x20746D66,0x0C(%edi)     # "fmt "?
       jne ckWAVx
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check header size   ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       incl %esi                       # ERROR - INVALID HEADER SIZE
       cmpl $0x00000010,0x10(%edi)     # header size = 16?
       jne ckWAVx
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check "data"        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       incl %esi                       # ERROR - WAVE HEADER CORRUPT
       cmpl $0x61746164,0x24(%edi)     # "data"?
       jne ckWAVx
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check data size     ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       incl %esi                       # ERROR - INVALID DATA SIZE
       testl %ebx,%ebx
       je 2f
       leal -44(%ebx),%ebx
       cmpl %ebx,0x28(%edi)            # == size of data chunk?
       jne ckWAVx
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check format ID     ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     2:incl %esi                       # ERROR - INVALID FORMAT ID
       cmpw $0x0001,0x14(%edi)
       jne ckWAVx
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check sampling rate ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       movl 0x18(%edi),%edx            # EDX = sampling rate
       incl %esi                       # ERROR - SAMPLING RATE REJECTED
       cmpl $48000,%edx                # 48 000?
       je 3f
       cmpl $44100,%edx                # 44 100?
       je 3f
       cmpl $22050,%edx                # 22 050?
       je 3f
       cmpl $11025,%edx                # 11 025?
       je 3f
       cmpl $8000,%edx                 #  8 000?
       jne ckWAVx
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check bits / sample ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     3:incl %esi                       # ERROR - WRONG BITS PER SAMPLE
       movw 0x22(%edi),%ax
       movw %ax,%cx                    #  CL = bits per sample
       cmpw $0x0008,%ax
       je 4f
       cmpw $0x0010,%ax
       jne ckWAVx
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check mode          ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     4:incl %esi                       # ERROR - INVALID MODE
       movw 0x16(%edi),%ax
       shrb $3,%cl                     #  CL /= 8
       movw 0x20(%edi),%bx             #  BX  = byte alignment
       cmpb $0x02,%al                  # stereo?
       je 5f
       cmpb $0x01,%al                  # mono?
       jne ckWAVx
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check - mono data   ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       incl %esi                       # ERROR - INVALID ALIGNMENT
       movl %edx,%eax
       cmpb %bl,%cl                    # check alignment
       jne ckWAVx
       cmpb $1,%cl
       je 6f                           # EDX * 1
       addl %eax,%edx                  # EDX * 2
       jmp 6f
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check - stereo data ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     5:incl %esi                       # ERROR - INVALID ALIGNMENT
       movl %edx,%eax
       shlb $1,%cl                     #  CL =  CL * 2 (stereo!)
       addl %edx,%eax                  # EAX = EDX * 2
       cmpb %bl,%cl                    # check alignment
       jne ckWAVx
       movl %eax,%edx                  # EDX * 2
       cmpb $2,%cl
       je 6f
       addl %eax,%edx                  # EDX * 4
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ check byte per sec. ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     6:incl %esi                       # ERROR - INVALID BYTE PER SECOND
       cmpl 0x1C(%edi),%edx
       jne ckWAVx
       xorl %esi,%esi                  # NO ERROR
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ clean up and exit   ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
ckWAVx:movl %esi,%eax
       movl 0x00(%esp),%edx
       movl 0x04(%esp),%ecx
       movl 0x08(%esp),%ebx
       movl 0x0C(%esp),%edi
       movl 0x10(%esp),%esi
       addl $0x14,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ mkWAV   create WAV header                  ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  14   address header or file begin  ³Û
       ³   PAR2  18   data size      (0 = header)   ³Û
       ³   PAR3  1C   sampling rate  (samples/s)    ³Û
       ³   PAR4  20   mode           (1 or 2 chan.) ³Û
       ³   PAR5  24   sampling depth (bit/sample)   ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   0000 0000   always zero            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ Creates a WAVE header with the given para- ³Û
       ³ meters.                                    ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _mkWAV
_mkWAV:pushl %edi
       pushl %edx
       pushl %ecx
       pushl %ebx
       movl 0x18(%esp),%eax            # EAX = data size
       movl 0x14(%esp),%edi            # EDI = base address data
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ write header data   ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       testl %eax,%eax                 # header only?
       je 0f
       movl %eax,0x28(%edi)            # write data size
       leal 0x24(%eax),%eax            # filesize - 8
     0:movl $0x46464952,0x00(%edi)     # "RIFF"
       movl %eax,0x04(%edi)            # write filesize
       movl $0x45564157,0x08(%edi)     # "WAVE"
       movl $0x20746D66,0x0C(%edi)     # "fmt "
       movl $0x00000010,0x10(%edi)     # header size
       movl 0x20(%esp),%edx            # EDX = mode
       movw $0x0001,0x14(%edi)         # format ID
       movl 0x1C(%esp),%ecx            # ECX = sampling rate
       movw %dx,0x16(%edi)             # write mode
       movl 0x24(%esp),%eax            # EAX = sampling depth
       movl %ecx,0x18(%edi)            # write sampling rate
       cmpb $0x01,%dl                  # mono?
       je 2f
       addl %ecx,%ecx                  # ECX * 2
     2:movw %ax,0x22(%edi)             # write sampling depth
       cmpw $8,%ax                     # 8 bit?
       je 3f
       addl %ecx,%ecx                  # ECX * 4
       addl %edx,%edx                  # EDX * 2
     3:movl $0x61746164,0x24(%edi)     # "data"
       movw %dx,0x20(%edi)             # write block alignment
       movl %ecx,0x1C(%edi)            # write byte per second
       movl 0x00(%esp),%ebx
       movl 0x04(%esp),%ecx
       movl 0x08(%esp),%edx
       movl 0x0C(%esp),%edi
       xorl %eax,%eax
       addl $0x10,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ mo2st   convert mono to stereo             ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   address source                ³Û
       ³   PAR2  0C           destination           ³Û
       ³   PAR3  10   size of source file           ³Û
       ³   PAR4  14   level left  (0...100)         ³Û
       ³   PAR4  18   level right (0...100)         ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   0000 0000   ok                     ³Û
       ³         0000 0007   INVALID DATA SIZE      ³Û
       ³         0000 000E   IS STEREO              ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ This routine needs the starting address of ³Û
       ³ the wave file, the header information must ³Û
       ³ be updated with new values.                ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _mo2st
_mo2st:pushl %ebp
       movl %esp,%ebp
       pushl %esi
       pushl %edi
       pushl %edx
       movl 0x10(%ebp),%eax
       pushl %ecx
       pushl %ebx
       movl 0x08(%ebp),%esi            # ESI = address source
       leal -44(%eax),%eax             # EAX = size data block
       movl 0x0C(%ebp),%edi            # EDI = address destination
       movl $11,%ecx                   # ECX = dwords to copy
       cmpl %eax,0x28(%esi)            # data size ok?
       je 0f
       movl $0x00000007,%eax           # ERROR - INVALID DATA SIZE
       jmp mo2stX
     0:cmpb $1,0x14(%esi)              # mono?
       je 1f
       movl $0x0000000E,%eax           # ERROR - IS STEREO
       jmp mo2stX
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ copy & create head  ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     1:rep
       movsl
       movl %eax,-24(%ebp)             # -24[EBP] = counter
       leal -44(%edi),%edi
       addl %eax,%eax                  # EAX = size * 2
       leal -44(%esi),%esi
       movl %eax,0x28(%edi)            # write data size
       leal 36(%eax),%eax              # (filesize - 8)
       movl %eax,0x04(%edi)            # write (filesize - 8)
       movl 0x1C(%esi),%eax            # EAX = byte per second
       shll $1,%eax                    # twice!
       movl %eax,0x1C(%edi)            # write byte per second
       movzwl 0x22(%edi),%eax          # EAX = sampling depth
       movw $0x0002,%dx                # STEREO!
       shrl $2,%eax                    # 16 => 4, 8 => 2
       movw %dx,0x16(%edi)             # write mode
       movw %ax,0x20(%edi)             #       block alignment
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ calculate factors   ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       movl 0x18(%ebp),%eax
       movl $100,%ebx
       shll $10,%eax                   # factor * 1024
       xorl %edx,%edx
       divl %ebx                       # factor / 100
       movl %eax,%ecx                  # ECX = factor right
       leal 44(%esi),%esi
       leal 44(%edi),%edi
       movl 0x14(%ebp),%eax
       xorl %edx,%edx
       shll $10,%eax
       divl %ebx
       movl %eax,%ebx                  # EBX = factor left
       cmpb $2,-12(%edi)               #  8 bit?
       je 3f
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ 16 bit conversion   ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       shrl $1,-24(%ebp)               # counter / 2 (words)
     2:movswl 0(%esi),%eax             # get sample
       xorl %edx,%edx
       imull %ebx
       shrl $10,%eax                   # EAX / 1024
       movl %eax,0(%edi)               # store left value
       movswl 0(%esi),%eax
       xorl %edx,%edx
       imull %ecx                      # EAX * factor right
       shrl $10,%eax                   # EAX / 1024
       movw %ax,2(%edi)                # store right value
       addl $2,%esi
       addl $4,%edi
       decl -24(%ebp)
       jne 2b
       xorl %eax,%eax
       jmp mo2stX
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³  8 bit conversion   ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     3:movzb 0(%esi),%eax
       xorl %edx,%edx
       mull %ebx
       shrl $10,%eax
       stosb
       movzb 0(%esi),%eax
       xorl %edx,%edx
       mull %ecx
       shrl $10,%eax
       incl %esi
       stosb
       decl -24(%ebp)
       jne 3b
       xorl %eax,%eax
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ clean up and exit   ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
mo2stX:popl %ebx
       popl %ecx
       popl %edx
       popl %edi
       popl %esi
       leave
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ st2mo   convert stereo to mono             ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   base address source           ³Û
       ³   PAR2  0C   base address destination      ³Û
       ³   PAR3  10   size of source file           ³Û
       ³   PAR4  14   level (0...100)               ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   0000 0000   ok                     ³Û
       ³         0000 0007   INVALID DATA SIZE      ³Û
       ³         0000 000F   IS MONO                ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ This routine needs the starting address of ³Û
       ³ the wave file, the header information must ³Û
       ³ be updated with new values.                ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _st2mo
_st2mo:pushl %ebp
       movl %esp,%ebp
       pushl %esi
       pushl %edi
       pushl %edx
       movl 0x10(%ebp),%eax
       pushl %ecx
       pushl %ebx
       movl 0x08(%ebp),%esi            # ESI = address source
       leal -44(%eax),%eax             # EAX = size data block
       movl 0x0C(%ebp),%edi            # EDI = address destination
       movl $11,%ecx
       cmpl %eax,0x28(%esi)            # data size ok?
       je 0f
       movl $0x00000007,%eax           # ERROR - INVALID DATA SIZE
       jmp st2moX
     0:cmpb $2,0x14(%esi)              # stereo?
       je 1f
       movl $0x0000000F,%eax           # ERROR - IS MONO
       jmp st2moX
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ copy & create head  ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     1:rep
       movsl
       movl %eax,-24(%ebp)             # -24[EBP] = counter
       leal -44(%edi),%edi
       leal -44(%esi),%esi
       shrl $1,%eax                    # EAX = size / 2
       movl %eax,0x28(%edi)            # write data size
       leal 36(%eax),%eax              # (filesize - 8)
       movl %eax,0x04(%edi)            # write (filesize - 8)
       movl 0x1C(%esi),%eax            # EAX = byte per second
       shrl $1,%eax                    # one half!
       movl %eax,0x1C(%edi)            # write byte per second
       movl 0x22(%ebp),%eax            # EAX = sampling depth
       shrl $3,%eax                    # 16 => 2, 8 => 1
       movw $1,0x16(%edi)              # write mode
       movw %ax,0x20(%edi)             #       block alignment
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ calculate factor    ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       movl 0x14(%ebp),%eax
       movl $100,%ebx
       shll $10,%eax                   # factor * 1024
       xorl %edx,%edx
       divl %ebx                       # factor / 100
       leal 44(%edi),%edi
       leal 44(%esi),%esi
       movl %eax,%ecx                  # ECX = factor right
       cmpb $2,-12(%edi)               #  8 bit?
       jne 3f
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ 16 bit conversion   ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       shrl $1,-24(%ebp)               # count / 2 (words)
     2:movswl 0x00(%esi),%eax          # sample left
       movswl 0x02(%esi),%ebx          # sample right
       addl %ebx,%eax                  # sum
       xorl %edx,%edx
       imull %ecx                      # * factor
       shrl $11,%eax                   # / 2048
       stosw
       addl $4,%esi
       decl -24(%ebp)
       jne 2b
       jmp st2moX
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³  8 bit conversion   ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     3:movzb 0x00(%esi),%eax           # sample left
       movzb 0x01(%esi),%ebx           # sample right
       addl %ebx,%eax                  # sum
       xorl %edx,%edx
       mull %ecx                       # * factor
       shrl $11,%eax                   # / 2048
       stosb
       addl $2,%esi
       decl -24(%ebp)
       jne 3b
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ clean up and exit   ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
st2moX:popl %ebx
       popl %ecx
       popl %edx
       popl %edi
       popl %esi
       leave
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ c8x16   convert 8 bit to 16 bit            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   address source                ³Û
       ³   PAR2  0C           destination           ³Û
       ³   PAR3  10   samples to convert            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ This routine needs the starting address of ³Û
       ³ a data chunk, NOT the address of your wave ³Û
       ³ file! Your destination block must be twice ³Û
       ³ as large as the source!                    ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _c8x16
_c8x16:pushl %esi
       pushl %edi
       pushl %ecx
       movl 0x10(%esp),%esi            # ESI = address source
       movl 0x14(%esp),%edi            # EDI =         destination
       movl 0x18(%esp),%ecx            # ECX = samples to convert
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ conversion          ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     0:movzb 0(%esi),%ax               # get byte
       xorw $0x80,%ax                  # toggle MSB
       shlw $8,%ax                     # * 256
       movw %ax,0(%edi)                # store word
       incl %esi
       addl $2,%edi
       decl %ecx
       jne 0b
       xorl %eax,%eax
       movl 0x00(%esp),%ecx
       movl 0x04(%esp),%edi
       movl 0x08(%esp),%esi
       addl $0x0C,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ c16x8   convert 16 bit to 8 bit            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   base address source           ³Û
       ³   PAR2  0C   base address destination      ³Û
       ³   PAR3  10   amount of samples to convert  ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ This routine needs the starting address of ³Û
       ³ the _data chunk_ - NOT the base address of ³Û
       ³ the wave file.                             ³Û
       ³                                            ³Û
       ³ Your destination must be at least one half ³Û
       ³ of the size of the source.                 ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _c16x8
_c16x8:pushl %esi
       pushl %edi
       pushl %ecx
       movl 0x10(%esp),%esi            # ESI = address source
       movl 0x14(%esp),%edi            # EDI = address destination
       movl 0x18(%esp),%ecx            # ECX = samples to convert
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ conversion          ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     0:movw 0(%esi),%ax                # get word
       xorw $0x8000,%ax                # toggle MSB
       shrw $8,%ax                     # / 256
       movb %al,0(%edi)                # store byte
       addl $2,%esi
       incl %edi
       decl %ecx
       jne 0b
       xorl %eax,%eax
       movl 0x00(%esp),%ecx
       movl 0x04(%esp),%edi
       movl 0x08(%esp),%esi
       addl $0x0C,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ m16up   MONO => double resolution          ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   address source                ³Û
       ³   PAR2  0C           destination           ³Û
       ³   PAR3  10   samples to convert            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ m16up reads two consecutive values from an ³Û
       ³ input, adds them and divides the result by ³Û
       ³ two. This "interpolated" value is inserted ³Û
       ³ between both points from the input, giving ³Û
       ³ something which should look like the wave- ³Û
       ³ form "stretched" to a higher resolution in ³Û
       ³ the output buffer.                         ³Û
       ³                                            ³Û
       ³ m16up only works for the conversion from   ³Û
       ³                                            ³Û
       ³    11 025  to  22 050 samples/s            ³Û
       ³                                            ³Û
       ³ or                                         ³Û
       ³                                            ³Û
       ³    22 050  to  44 100 samples/s.           ³Û
       ³                                            ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _m16up
_m16up:movl 0x0C(%esp),%eax
       pushl %esi
       pushl %edi
       pushl %ebx
       decl %eax                       # one less to prevent SYS3175
       pushl %ecx
       movl 0x14(%esp),%esi            # ESI = address source
       movl 0x18(%esp),%edi            # EDI =         destination
       movl %eax,%ecx                  # ECX = samples to convert
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ conversion          ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     0:movswl 0(%esi),%eax             # EAX = sign extended w1
       movswl 2(%esi),%ebx             # EBX = sign extended w2
       addl %eax,%ebx                  # w2 + w1
       shrl $1,%ebx                    # result / 2
       andl $0x0000FFFF,%eax           # clear hi w1
       shll $16,%ebx                   # lo w2 => hi w2
       addl %eax,%ebx                  # add lo
       movl %ebx,0(%edi)               # store: lo1 hi1 lo2 hi2
       addl $2,%esi
       addl $4,%edi
       decl %ecx
       jne 0b
       xorl %eax,%eax
       movl 0x00(%esp),%ecx
       movl 0x04(%esp),%ebx
       movl 0x08(%esp),%edi
       movl 0x0C(%esp),%esi
       addl $0x10,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ s16up   STEREO => double resolution        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   address source                ³Û
       ³   PAR2  0C           destination           ³Û
       ³   PAR3  10   samples to convert            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ s16up reads two consecutive values from an ³Û
       ³ input, adds them and divides the result by ³Û
       ³ two. This "interpolated" value is inserted ³Û
       ³ between both points from the input, giving ³Û
       ³ something which should look like the wave- ³Û
       ³ form "stretched" to a higher resolution in ³Û
       ³ the output buffer.                         ³Û
       ³                                            ³Û
       ³ s16up only works for the conversion from   ³Û
       ³                                            ³Û
       ³    11 025  to  22 050 samples/s            ³Û
       ³                                            ³Û
       ³ or                                         ³Û
       ³                                            ³Û
       ³    22 050  to  44 100 samples/s.           ³Û
       ³                                            ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _s16up
_s16up:movl 0x0C(%esp),%eax
       pushl %esi
       pushl %edi
       pushl %ebx
       decl %eax                       # one less to prevent SYS3175
       pushl %ecx
       pushl %edx
       movl 0x14(%esp),%esi            # ESI = address source
       movl 0x18(%esp),%edi            # EDI =         destination
       movl %eax,%ecx                  # ECX = samples to convert
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ conversion          ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     0:movswl 0(%esi),%ebx             # EBX = w1 left
       movswl 4(%esi),%edx             # EDX = w2 left
       addl %ebx,%edx                  # sum left
       movswl 2(%esi),%ebx             # EAX = w1 right
       movswl 6(%esi),%eax             # EDX = w2 right
       shrl $1,%edx                    # sum left / 2
       addl %eax,%ebx                  # sum right
       andl $0x0000FFFF,%edx           # clear right
       shrl $1,%ebx
       movl 0(%esi),%eax
       shll $16,%ebx
       addl %ebx,%edx
       movl %eax,0(%edi)               # source sample => destination
       movl %edx,4(%edi)               # interpolation => destination
       addl $4,%esi
       addl $8,%edi
       decl %ecx
       jne 0b
       xorl %eax,%eax
       movl 0x00(%esp),%edx
       movl 0x04(%esp),%ecx
       movl 0x08(%esp),%ebx
       movl 0x0C(%esp),%edi
       movl 0x10(%esp),%esi
       addl $0x14,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ m16dn   MONO => half resolution            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   address source                ³Û
       ³   PAR2  0C           destination           ³Û
       ³   PAR3  10   samples to convert            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ m16dn reads two consecutive values from an ³Û
       ³ input and skips the second one, so there's ³Û
       ³ a loss of one half of the sources's infor- ³Û
       ³ mation. This may sound awful, if you down- ³Û
       ³ grade wave files containing a lot of parts ³Û
       ³ in a frequency range which isn't supported ³Û
       ³ by the lower resolution. The maximum reso- ³Û
       ³ lution of e.g. 22 050 samples/s is 11 kHz, ³Û
       ³ only one point for the maximum and one for ³Û
       ³ the minimum amplitude (resulting in a tri- ³Û
       ³ angular rather than a sine wave...).       ³Û
       ³                                            ³Û
       ³ m16dn only works for the conversion from   ³Û
       ³                                            ³Û
       ³    44 100  to  22 050 samples/s            ³Û
       ³                                            ³Û
       ³ or                                         ³Û
       ³                                            ³Û
       ³    22 050  to  11 025 samples/s.           ³Û
       ³                                            ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _m16dn
_m16dn:pushl %esi
       pushl %edi
       pushl %ecx
       movl 0x10(%esp),%esi            # ESI = address source
       movl 0x14(%esp),%edi            # EDI =         destination
       movl 0x18(%esp),%ecx            # EDX = samples to convert
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ conversion          ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     0:movw 0(%esi),%ax
       movw %ax,0(%edi)
       addl $4,%esi
       addl $2,%edi
       decl %ecx
       jne 0b
       xorl %eax,%eax
       movl 0x00(%esp),%ecx
       movl 0x04(%esp),%edi
       movl 0x08(%esp),%esi
       addl $0x0C,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ s16dn   STEREO => half resolution          ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   address source                ³Û
       ³   PAR2  0C           destination           ³Û
       ³   PAR3  10   samples to convert            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ s16dn reads two consecutive values from an ³Û
       ³ input and skips the second one, so there's ³Û
       ³ a loss of one half of the sources's infor- ³Û
       ³ mation. This may sound awful, if you down- ³Û
       ³ grade wave files containing a lot of parts ³Û
       ³ in a frequency range which isn't supported ³Û
       ³ by the lower resolution. The maximum reso- ³Û
       ³ lution of e.g. 22 050 samples/s is 11 kHz, ³Û
       ³ only one point for the maximum and one for ³Û
       ³ the minimum amplitude (resulting in a tri- ³Û
       ³ angular rather than a sine wave...).       ³Û
       ³                                            ³Û
       ³ s16dn only works for the conversion from   ³Û
       ³                                            ³Û
       ³    44 100  to  22 050 samples/s            ³Û
       ³                                            ³Û
       ³ or                                         ³Û
       ³                                            ³Û
       ³    22 050  to  11 025 samples/s.           ³Û
       ³                                            ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _s16dn
_s16dn:pushl %esi
       pushl %edi
       pushl %ecx
       movl 0x10(%esp),%esi            # ESI = address source
       movl 0x14(%esp),%edi            # EDI =         destination
       movl 0x18(%esp),%ecx            # EDX = samples to convert
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ conversion          ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     0:movl 0(%esi),%eax
       movl %eax,0(%edi)
       addl $8,%esi
       addl $4,%edi
       decl %ecx
       jne 0b
       xorl %eax,%eax
       movl 0x00(%esp),%ecx
       movl 0x04(%esp),%edi
       movl 0x08(%esp),%esi
       addl $0x0C,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ m08up   MONO => double resolution          ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   address source                ³Û
       ³   PAR2  0C           destination           ³Û
       ³   PAR3  10   samples to convert            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ m08up reads two consecutive values from an ³Û
       ³ input, adds them and divides the result by ³Û
       ³ two. This "interpolated" value is inserted ³Û
       ³ between both points from the input, giving ³Û
       ³ something which should look like the wave- ³Û
       ³ form "stretched" to a higher resolution in ³Û
       ³ the output buffer.                         ³Û
       ³                                            ³Û
       ³ m08up only works for the conversion from   ³Û
       ³                                            ³Û
       ³    11 025  to  22 050 samples/s            ³Û
       ³                                            ³Û
       ³ or                                         ³Û
       ³                                            ³Û
       ³    22 050  to  44 100 samples/s.           ³Û
       ³                                            ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _m08up
_m08up:movl 0x0C(%esp),%eax
       pushl %esi
       pushl %edi
       pushl %ebx
       decl %eax                       # one less to prevent SYS3175
       pushl %ecx
       movl 0x14(%esp),%esi            # ESI = address source
       movl 0x18(%esp),%edi            # EDI =         destination
       movl %eax,%ecx                  # ECX = samples to convert
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ conversion          ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     0:movzb 0(%esi),%bx               # EAX = b1
       movzb 1(%esi),%ax               # EBX = b2
       addw %bx,%ax                    # w2 + w1
       shrw $1,%ax                     # result / 2
       shlw $8,%ax                     # result => AH
       addw %bx,%ax                    # b1 => AL
       movw %ax,0(%edi)                # store b1, b2
       incl %esi
       addl $2,%edi
       decl %ecx
       jne 0b
       xorl %eax,%eax
       movl 0x00(%esp),%ecx
       movl 0x04(%esp),%ebx
       movl 0x08(%esp),%edi
       movl 0x0C(%esp),%esi
       addl $0x10,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ s08up   STEREO => double resolution        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   address source                ³Û
       ³   PAR2  0C           destination           ³Û
       ³   PAR3  10   samples to convert            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ s08up reads two consecutive values from an ³Û
       ³ input, adds them and divides the result by ³Û
       ³ two. This "interpolated" value is inserted ³Û
       ³ between both points from the input, giving ³Û
       ³ something which should look like the wave- ³Û
       ³ form "stretched" to a higher resolution in ³Û
       ³ the output buffer.                         ³Û
       ³                                            ³Û
       ³ s08up only works for the conversion from   ³Û
       ³                                            ³Û
       ³    11 025  to  22 050 samples/s            ³Û
       ³                                            ³Û
       ³ or                                         ³Û
       ³                                            ³Û
       ³    22 050  to  44 100 samples/s.           ³Û
       ³                                            ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _s08up
_s08up:movl 0x0C(%esp),%eax
       pushl %esi
       pushl %edi
       pushl %ebx
       decl %eax                       # one less to prevent SYS3175
       pushl %ecx
       pushl %edx
       movl 0x14(%esp),%esi            # ESI = address source
       movl 0x18(%esp),%edi            # EDI =         destination
       movl %eax,%ecx                  # ECX = samples to convert
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ conversion          ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     0:movzb 0(%esi),%bx               # BX = b1 left
       movzb 2(%esi),%dx               # DX = b2 left
       addw %bx,%dx                    # sum left
       movzb 1(%esi),%ebx              # EAX = b1 right
       movzb 3(%esi),%eax              # EDX = b2 right
       shrw $1,%dx                     # sum left / 2
       addw %ax,%bx                    # sum right
       shrw $1,%bx
       movw 0(%esi),%ax
       shlw $8,%bx
       addw %bx,%dx
       movw %ax,0(%edi)                # source sample => destination
       movw %dx,2(%edi)                # interpolation => destination
       addl $2,%esi
       addl $4,%edi
       decl %ecx
       jne 0b
       xorl %eax,%eax
       movl 0x00(%esp),%edx
       movl 0x04(%esp),%ecx
       movl 0x08(%esp),%ebx
       movl 0x0C(%esp),%edi
       movl 0x10(%esp),%esi
       addl $0x14,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ m08dn   MONO => half resolution            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   address source                ³Û
       ³   PAR2  0C           destination           ³Û
       ³   PAR3  10   samples to convert            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ m08dn reads two consecutive values from an ³Û
       ³ input and skips the second one, so there's ³Û
       ³ a loss of one half of the sources's infor- ³Û
       ³ mation. This may sound awful, if you down- ³Û
       ³ grade wave files containing a lot of parts ³Û
       ³ in a frequency range which isn't supported ³Û
       ³ by the lower resolution. The maximum reso- ³Û
       ³ lution of e.g. 22 050 samples/s is 11 kHz, ³Û
       ³ only one point for the maximum and one for ³Û
       ³ the minimum amplitude (resulting in a tri- ³Û
       ³ angular rather than a sine wave...).       ³Û
       ³                                            ³Û
       ³ m08dn only works for the conversion from   ³Û
       ³                                            ³Û
       ³    44 100  to  22 050 samples/s            ³Û
       ³                                            ³Û
       ³ or                                         ³Û
       ³                                            ³Û
       ³    22 050  to  11 025 samples/s.           ³Û
       ³                                            ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _m08dn
_m08dn:pushl %esi
       pushl %edi
       pushl %ecx
       movl 0x10(%esp),%esi            # ESI = address source
       movl 0x14(%esp),%edi            # EDI =         destination
       movl 0x18(%esp),%ecx            # EDX = samples to convert
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ conversion          ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     0:movb 0(%esi),%al
       movb %al,0(%edi)
       addl $2,%esi
       incl %edi
       decl %ecx
       jne 0b
       xorl %eax,%eax
       movl 0x00(%esp),%ecx
       movl 0x04(%esp),%edi
       movl 0x08(%esp),%esi
       addl $0x0C,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ s08dn   STEREO => half resolution          ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  08   address source                ³Û
       ³   PAR2  0C           destination           ³Û
       ³   PAR3  10   samples to convert            ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ s08dn reads two consecutive values from an ³Û
       ³ input and skips the second one, so there's ³Û
       ³ a loss of one half of the sources's infor- ³Û
       ³ mation. This may sound awful, if you down- ³Û
       ³ grade wave files containing a lot of parts ³Û
       ³ in a frequency range which isn't supported ³Û
       ³ by the lower resolution. The maximum reso- ³Û
       ³ lution of e.g. 22 050 samples/s is 11 kHz, ³Û
       ³ only one point for the maximum and one for ³Û
       ³ the minimum amplitude (resulting in a tri- ³Û
       ³ angular rather than a sine wave...).       ³Û
       ³                                            ³Û
       ³ s08dn only works for the conversion from   ³Û
       ³                                            ³Û
       ³    44 100  to  22 050 samples/s            ³Û
       ³                                            ³Û
       ³ or                                         ³Û
       ³                                            ³Û
       ³    22 050  to  11 025 samples/s.           ³Û
       ³                                            ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _s08dn
_s08dn:pushl %esi
       pushl %edi
       pushl %ecx
       movl 0x10(%esp),%esi            # ESI = address source
       movl 0x14(%esp),%edi            # EDI =         destination
       movl 0x18(%esp),%ecx            # EDX = samples to convert
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ conversion          ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     0:movw 0(%esi),%ax
       movw %ax,0(%edi)
       addl $4,%esi
       addl $2,%edi
       decl %ecx
       jne 0b
       xorl %eax,%eax
       movl 0x00(%esp),%ecx
       movl 0x04(%esp),%edi
       movl 0x08(%esp),%esi
       addl $0x0C,%esp
       ret
       /*
       ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
       ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
