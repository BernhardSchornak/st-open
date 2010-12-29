        /*
        ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
        บ                           M I X E R   F U N C T I O N S                            บÛ
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
        ณ mix16   mix n sources to one target        ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ-> PAR1  address array with source EAs      ณÛ
        ณ   PAR2  target EA (data chunk)             ณÛ
        ณ   PAR3  samples to mix (multiple of 4!)    ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ<- EAX   0000 0000                          ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ CAUTION: The target's size -must- be twice ณÛ
        ณ          as large as the required size. Do ณÛ
        ณ          not pass the address of eight bit ณÛ
        ณ          data chunks!                      ณÛ
        ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
.globl _mix16
 _mix16:subl $0x3C,%esp
        nop
        nop
        movl %ebp,0x24(%esp)
        movl %edi,0x28(%esp)
        movl %esi,0x2C(%esp)
        movl %ebx,0x30(%esp)
        movl %ecx,0x34(%esp)
        movl %edx,0x38(%esp)
        /*
        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
        ณ 1st input file        ณÛ
        ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        movl 0x40(%esp),%eax                # EAX = array
        movl 0x44(%esp),%edi                # EDI = target
        movl 0x48(%esp),%ebp                # EBP = count
        movl 0x00(%eax),%esi                # EDI = source
        shrl $0x02,%ebp                     # EBP = count/4
        je L99
        movl %ebp,0x04(%esp)                # cur_cnt
        movl %ebp,0x08(%esp)                # count
      0:movswl 0x00(%esi),%eax              # get 16 bit samples from
        movswl 0x02(%esi),%ebx              # first file
        movswl 0x04(%esi),%ecx
        movswl 0x06(%esi),%edx
        movl %eax,0x00(%edi)                # store as sign extended
        movl %ebx,0x04(%edi)                # 32 bit samples
        movl %ecx,0x08(%edi)
        movl %edx,0x0C(%edi)
        addl $0x08,%esi
        addl $0x10,%edi
        decl %ebp
        jne 0b
        /*
        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
        ณ mix with others       ณÛ
        ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */

        /*
        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
        ณ final pass            ณÛ
        ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */

        jmp L99
        /*
        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
        ณ norm    normalise                          ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ-> PAR1  08   address source filename       ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ<- EAX   0000 0000                          ณÛ
        ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
.globl _norm
  _norm:subl $0x3C,%esp
        nop
        nop
        movl %ebp,0x24(%esp)
        movl %edi,0x28(%esp)
        movl %esi,0x2C(%esp)
        movl %ebx,0x30(%esp)
        movl %ecx,0x34(%esp)
        movl %edx,0x38(%esp)

        movl 0x1C(%esp),%edx            # EDX = address filename
        xorl %eax,%eax
        movl $20,%ecx
        movl %esp,%edi
        movl %esp,%ebp                  # EBP = address LD
        leal 0x28(%esp),%esi            # ESI = address FH
        /*
        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
        ณ clear stack           ณÛ
        ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        rep
        stosl
        
        /*
        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
        ณ clean up & exit       ณÛ
        ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    L99:xorl %eax,%eax
        movl 0x24(%esp),%ebp
        movl 0x28(%esp),%edi
        movl 0x2C(%esp),%esi
        movl 0x30(%esp),%ebx
        movl 0x34(%esp),%ecx
        movl 0x38(%esp),%edx
        addl $0x3C,%esp
        ret
        /*
        ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
        ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
