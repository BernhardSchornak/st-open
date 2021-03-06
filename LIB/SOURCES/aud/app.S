       /*
       浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
       �                         A P P L I C A T I O N   L E V E L                          裁
       債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
       �                          *** (C) ST-Open 1979 - 2009 ***                           裁
       藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        裁
        債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
        � You may copy and distribute this file as often as you want, but recipients are not 裁
        � allowed to pay anything for any copy of this file or its content. It isn't allowed 裁
        � to remove parts of this file or add third party content. It isn't allowed to abuse 裁
        � the copyrighted content or introduced techniques for commercial purposes. Whatever 裁
        � is derived from this file and its content must be freely available without charge. 裁
        � You are free to modify the content of this file if you want to. However, derivates 裁
        � of the content of this file or parts of it *still* are subject to the terms of the 裁
        � FT4FP license. Recipients neither are allowed to pay anything for the original nor 裁
        � for altered or derived replica.                                                    裁
        債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
        �       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        裁
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
       */
.text
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
       � m2s     convert mono to stereo             額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
       �-> PAR1  08   filename source               額
       �   PAR2  0C            target               額
       �   PAR3  10   volume   left  (0...100)      額
       �   PAR4  14            right (0...100)      額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
       �<- EAX   0000 0000   ok                     額
       �         0000 0007   INVALID DATA SIZE      額
       �         0000 000F   IS_STEREO              額
       �         xxxx xxxx   LDreq, Fopen, etc.     額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
       � Loads source, allocates required input and 額
       � output buffers, calls mo2st(), writes out- 額
       � put to target file, frees buffers.         額
       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
       敖陳陳陳陳陳陳陳陳陳陳�
       � prepare             額
       青陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩
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
       敖陳陳陳陳陳陳陳陳陳陳�
       � load source file    額
       青陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩
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
       敖陳陳陳陳陳陳陳陳陳陳�
       � allocate target mem 額
       青陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩
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
       敖陳陳陳陳陳陳陳陳陳陳�
       � convert to stereo   額
       青陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩
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
       敖陳陳陳陳陳陳陳陳陳陳�
       � store output        額
       青陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩
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
       敖陳陳陳陳陳陳陳陳陳陳�
       � clean up & exit     額
       青陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩
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
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  */
