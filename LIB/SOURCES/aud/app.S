       /*
       ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
       บ                         A P P L I C A T I O N   L E V E L                          บÛ
       บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
       บ                          *** (C) ST-Open 1979 - 2009 ***                           บÛ
       ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
        บ       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        บÛ
        บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
        บ You may copy and distribute this file as often as you want, but recipients are not บÛ
        บ allowed to pay anything for any copy of this file or its content. It isn't allowed บÛ
        บ to remove parts of this file or add third party content. It isn't allowed to abuse บÛ
        บ the copyrighted content or introduced techniques for commercial purposes. Whatever บÛ
        บ is derived from this file and its content must be freely available without charge. บÛ
        บ You are free to modify the content of this file if you want to. However, derivates บÛ
        บ of the content of this file or parts of it *still* are subject to the terms of the บÛ
        บ FT4FP license. Recipients neither are allowed to pay anything for the original nor บÛ
        บ for altered or derived replica.                                                    บÛ
        บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
        บ       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        บÛ
        ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
.text
       /*
       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
       ณ m2s     convert mono to stereo             ณÛ
       รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
       ณ-> PAR1  08   filename source               ณÛ
       ณ   PAR2  0C            target               ณÛ
       ณ   PAR3  10   volume   left  (0...100)      ณÛ
       ณ   PAR4  14            right (0...100)      ณÛ
       รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
       ณ<- EAX   0000 0000   ok                     ณÛ
       ณ         0000 0007   INVALID DATA SIZE      ณÛ
       ณ         0000 000F   IS_STEREO              ณÛ
       ณ         xxxx xxxx   LDreq, Fopen, etc.     ณÛ
       รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
       ณ Loads source, allocates required input and ณÛ
       ณ output buffers, calls mo2st(), writes out- ณÛ
       ณ put to target file, frees buffers.         ณÛ
       ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */

.globl _m2s
  _m2s:pushl %ebp
       movl %esp,%ebp
       pushl %edi
       pushl %esi
       pushl %ebx
       pushl %ecx
       pushl %edx
       /*
       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
       ณ prepare             ณÛ
       ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       subl $128,%esp
       movl $26,%ecx
       leal -128(%ebp),%edi            # EDI = address FH
       xorl %eax,%eax
       leal -64(%ebp),%esi             # ESI = address LD1
       movl 0x08(%ebp),%ebx            # EBX = address filename
       rep
       stosl                           # clear FH and both LDs
       /*
       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
       ณ load source file    ณÛ
       ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       movb $0xA3,0x0C(%esi)           # ld.LdCtl (READ, WRITE, STATIC, FILE)
       movl %ebx,0x14(%esi)            # ld.FileN
       pushl %esi
       call _LDreq
       addl $4,%esp
       testl %eax,%eax
       je 0f
       jmp m2X
       /*
       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
       ณ allocate target mem ณÛ
       ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     0:movl 0x04(%esi),%eax            # EAX = size source
       leal -104(%ebp),%edi            # EDI = address LD2
       movl 0x10(%esi),%edx            # EDX = MemHandle LD1
       shll $1,%eax                    # EAX = size target (twice)
       movl $0x33,0x0C(%edi)           # ld.LdCtl (READ, WRITE, MEM, STATIC)
       movl $0xFE000000,0x08(%edi)     # ld.FldNr
       movl %eax,0x04(%edi)            # ld.MemSz
       pushl %edi
       call _LDreq
       addl $4,%esp
       testl %eax,%eax
       je 1f
       pushl %edx
       call _LDfre
       addl $4,%esp
       jmp m2X
       /*
       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
       ณ convert to stereo   ณÛ
       ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     1:movl 0x14(%edx),%eax            # EAX = source size
       movl 0x00(%esi),%ebx            # EBX = address source
       movl 0x00(%edi),%ecx            # ECX =         target
       movl %eax,-132(%ebp)
       pushl 0x14(%ebp)
       pushl 0x10(%ebp)
       pushl %eax
       pushl %ecx
       pushl %ebx
       call _mo2st
       movl %eax,%ebx
       pushl %edx
       call _LDfre                     # free LD1
       addl $24,%esp
       movl 0x10(%edi),%edx            # EDX = MemHandle LD2
       testl %ebx,%ebx
       je 2f
       pushl %edx
       call _LDfre
       addl $4,%esp
       movl %ebx,%eax
       jmp m2X
       /*
       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
       ณ store output        ณÛ
       ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     2:leal -128(%ebp),%esi            # ESI = address FH
       movl 0x0C(%ebp),%ebx            # EBX = address filename
       xorl %eax,%eax
       pushl %esi
       pushl %eax
       pushl %eax
       pushl %ebx
       call _Fopen
       addl $16,%esp
       testl %eax,%eax
       jne 3f
       movl -132(%ebp),%eax            # EAX = source size
       movl %ecx,0x08(%esi)            # fh.MemEA
       leal -44(%eax),%eax             # EAX -= header size
       shll $1,%eax                    # EAX *= 2
       leal 44(%eax),%eax              # EAX += header size
       pushl %eax
       pushl %esi
       call _Fwrite
       call _Fclose
       xorl %ebx,%ebx
     3:pushl %edx
       call _LDfre
       /*
       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
       ณ clean up & exit     ณÛ
       ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
   m2X:movl %ebp,%esp
       xorl %edi,%edi
       movl -20(%esp),%edx
       movl -16(%esp),%ecx
       movl -12(%esp),%ebx
       movl -8(%esp),%esi
       movl -4(%esp),%edi
       popl %ebp
       ret

  /*
  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
