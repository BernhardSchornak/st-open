       /*
       ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
       º                           S T - O p e n   Q S O R T ( )                            ºÛ
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
       */
       .text
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ stsrt   function distributor               ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  address byte array                 ³Û
       ³   PAR2  elements to sort                   ³Û
       ³   PAR3  element size  00 DB                ³Û
       ³                       01 DW                ³Û
       ³                       02 DD                ³Û
       ³                       03 DQ                ³Û
       ³                       04 array addresses   ³Û
       ³   PAR4  sorting order 00 ascending         ³Û
       ³                       ?? descending        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³ This is the fastest qsort() you can get at ³Û
       ³ the moment. A better version requires more ³Û
       ³ than the (sparse) register set provided by ³Û
       ³ LETNi style processors. The AMD-64 version ³Û
       ³ probably does not run on OS/2 machines. DQ ³Û
       ³ is not implemented, yet (we have no 64 bit ³Û
       ³ registers for now).                        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _stsrt
_stsrt:subl $0x14,%esp
       nop
       nop
       movl %ebx,0x08(%esp)
       movl %ecx,0x0C(%esp)
       movl %edx,0x10(%esp)
       movl 0x18(%esp),%ebx
       movl 0x1C(%esp),%ecx
       movl 0x20(%esp),%eax
       movl 0x24(%esp),%edx
       decl %ecx
       js 1f
       cmpl $0x04,%eax
       ja 1f
       cmpl $0x00,0x20(%esp)
       jne 0f
       jmp *srtup(, %eax, 4)
       .align 2,0x90
 srtup:.long sup0
       .long sup1
       .long sup2
       .long sup3
       .long sup4
  sup0:testl %ecx,%ecx
       je 1f
       addl %ebx,%ecx
       movl %ebx,0x00(%esp)
       movl %ecx,0x04(%esp)
       testl %edx,%edx
       jne 0f
       call srtBa
       jmp 1f
     0:call srtBd
       jmp 1f
  sup1:shll $0x01,%ecx
       je 1f
       addl %ebx,%ecx
       movl %ebx,0x00(%esp)
       movl %ecx,0x04(%esp)
       testl %edx,%edx
       jne 0f
       call srtWa
       jmp 1f
     0:call srtWd
       jmp 1f
  sup2:shll $0x02,%ecx
       je 1f
       addl %ebx,%ecx
       movl %ebx,0x00(%esp)
       movl %ecx,0x04(%esp)
       testl %edx,%edx
       jne 0f
       call srtDa
       jmp 1f
     0:call srtDd
       jmp 1f
  sup3:shll $0x03,%ecx
       je 1f
       addl %ebx,%ecx
       movl %ebx,0x00(%esp)
       movl %ecx,0x04(%esp)
       testl %edx,%edx
       jne 0f
       call srtQa
       jmp 1f
     0:call srtQd
       jmp 1f
  sup4:shll $0x02,%ecx
       je 1f
       addl %ebx,%ecx
       movl %ebx,0x00(%esp)
       movl %ecx,0x04(%esp)
       testl %edx,%edx
       jne 0f
       call srtSa
       jmp 1f
     0:call srtSd
     1:movl 0x08(%esp),%ebx
       movl 0x0C(%esp),%ecx
       movl 0x10(%esp),%edx
       addl $0x14,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ srtBa   byte, ascending                    ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  address bottom element             ³Û
       ³   PAR2          top    element             ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
 srtBa:subl $0x20,%esp
       nop
       nop
       movl %edx,0x08(%esp)
       movl %ecx,0x0C(%esp)
       movl %ebx,0x10(%esp)
       movl %edi,0x14(%esp)
       movl %esi,0x18(%esp)
       movl %ebp,0x1C(%esp)
       movl 0x24(%esp),%edx            # EDX = BOT
       movl 0x28(%esp),%ebp            # EBP = TOP
   rBa:movl %ebp,%eax                  # EAX = top
       movl %ebp,%ebx                  # EBX = top
       subl %edx,%eax                  # EAX = bytes
       movl %edx,%esi                  # ESI = bot
       shrl $0x01,%eax                 # EAX / 2
       movl %edx,%edi
       addl %eax,%edi                  # EDI = mid
       movb 0x00(%edi),%al             #  AL = 00[mid]
       jmp 1f
     0:cmpb 0x00(%esi),%al             # 00[bot] >= 00[mid]?
       jbe 2f
       incl %esi                       # bot + size
       nop
     1:cmpl %edi,%esi                  # bot = mid?
       jne 0b
     2:cmpb 0x00(%ebx),%al             # 00[mid] <= 00[top]?
       jae 3f
       decl %ebx                       # top - size
       nop
       cmpl %edi,%ebx                  # top = mid?
       jne 2b
     3:cmpl %ebx,%esi                  # bot >= top?
       jae 5f
       movb 0x00(%ebx),%al             # exchange
       movb 0x00(%esi),%cl
       nop
       nop
       nop
       movb %cl,0x00(%ebx)
       movb %al,0x00(%esi)
       cmpl %esi,%edi                  # bot = mid?
       jne 4f
       movl %ebx,%edi                  # mid = top
       jmp 5f
     4:cmpl %ebx,%edi                  # top = mid?
       cmove %esi,%edi                 # mid = bot
     5:cmpl %ebx,%esi                  # bot = top?
       ja 7f
       incl %esi                       # bot + size
       cmpl %ebx,%edx                  # top >= BOT?
       jae 6f
       decl %ebx                       # top - size
       nop
     6:movb 0x00(%edi),%al             #  AL = 00[mid]
       cmpl %ebx,%esi                  # top <= bot?
       jbe 1b
     7:movl %ebp,%eax                  # EAX = TOP
       movl %ebx,%ecx                  # ECX = top
       subl %esi,%eax                  # EAX = TOP - bot
       subl %edx,%ecx                  # ECX = top - BOT
       cmpl %eax,%ecx                  # (top - BOT) >= (TOP - bot)?
       jae 9f
       cmpl %ebx,%edx                  # top >= BOT?
       jae 8f
       movl %ebx,0x04(%esp)
       movl %edx,0x00(%esp)
       call srtBa
     8:movl %esi,%edx                  # TOP = bot
       cmpl %esi,%ebp                  # bot > TOP?
       ja rBa
       jmp 1f
     9:cmpl %esi,%ebp                  # bot > TOP?
       jbe 0f
       movl %ebp,0x04(%esp)
       movl %esi,0x00(%esp)
       call srtBa
     0:movl %ebx,%ebp                  # TOP = top
       cmpl %ebx,%edx                  # top > BOT?
       jb rBa
     1:movl 0x08(%esp),%edx
       movl 0x0C(%esp),%ecx
       movl 0x10(%esp),%ebx
       movl 0x14(%esp),%edi
       movl 0x18(%esp),%esi
       movl 0x1C(%esp),%ebp
       addl $0x20,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ srtBd   byte, descending                   ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  address bottom element             ³Û
       ³   PAR2          top    element             ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
 srtBd:subl $0x20,%esp
       nop
       nop
       movl %edx,0x08(%esp)
       movl %ecx,0x0C(%esp)
       movl %ebx,0x10(%esp)
       movl %edi,0x14(%esp)
       movl %esi,0x18(%esp)
       movl %ebp,0x1C(%esp)
       movl 0x24(%esp),%edx            # EDX = BOT
       movl 0x28(%esp),%ebp            # EBP = TOP
   rBd:movl %ebp,%eax                  # EAX = top
       movl %ebp,%ebx                  # EBX = top
       subl %edx,%eax                  # EAX = bytes
       movl %edx,%esi                  # ESI = bot
       shrl $0x01,%eax                 # EAX / 2
       movl %edx,%edi
       addl %eax,%edi                  # EDI = mid
       movb 0x00(%edi),%al             #  AL = 00[mid]
       jmp 1f
     0:cmpb 0x00(%esi),%al             # 00[bot] >= 00[mid]?
       jae 2f
       incl %esi                       # bot + size
       nop
     1:cmpl %edi,%esi                  # bot = mid?
       jne 0b
     2:cmpb 0x00(%ebx),%al             # 00[mid] <= 00[top]?
       jbe 3f
       decl %ebx                       # top - size
       nop
       cmpl %edi,%ebx                  # top = mid?
       jne 2b
     3:cmpl %ebx,%esi                  # bot >= top?
       jae 5f
       movb 0x00(%ebx),%al             # exchange
       movb 0x00(%esi),%cl
       nop
       nop
       nop
       movb %cl,0x00(%ebx)
       movb %al,0x00(%esi)
       cmpl %esi,%edi                  # bot = mid?
       jne 4f
       movl %ebx,%edi                  # mid = top
       jmp 5f
     4:cmpl %ebx,%edi                  # top = mid?
       cmove %esi,%edi                 # mid = bot
     5:cmpl %ebx,%esi                  # bot = top?
       ja 7f
       incl %esi                       # bot + size
       cmpl %ebx,%edx                  # top >= BOT?
       jae 6f
       decl %ebx                       # top - size
       nop
     6:movb 0x00(%edi),%al             #  AL = 00[mid]
       cmpl %ebx,%esi                  # top <= bot?
       jbe 1b
     7:movl %ebp,%eax                  # EAX = TOP
       movl %ebx,%ecx                  # ECX = top
       subl %esi,%eax                  # EAX = TOP - bot
       subl %edx,%ecx                  # ECX = top - BOT
       cmpl %eax,%ecx                  # (top - BOT) >= (TOP - bot)?
       jae 9f
       cmpl %ebx,%edx                  # top >= BOT?
       jae 8f
       movl %ebx,0x04(%esp)
       movl %edx,0x00(%esp)
       call srtBd
     8:movl %esi,%edx                  # TOP = bot
       cmpl %esi,%ebp                  # bot > TOP?
       ja rBd
       jmp 1f
     9:cmpl %esi,%ebp                  # bot > TOP?
       jbe 0f
       movl %ebp,0x04(%esp)
       movl %esi,0x00(%esp)
       call srtBd
     0:movl %ebx,%ebp                  # TOP = top
       cmpl %ebx,%edx                  # top > BOT?
       jb rBd
     1:movl 0x08(%esp),%edx
       movl 0x0C(%esp),%ecx
       movl 0x10(%esp),%ebx
       movl 0x14(%esp),%edi
       movl 0x18(%esp),%esi
       movl 0x1C(%esp),%ebp
       addl $0x20,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ srtWa   word, ascending                    ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  address bottom element             ³Û
       ³   PAR2          top    element             ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
 srtWa:subl $0x20,%esp
       nop
       nop
       movl %edx,0x08(%esp)
       movl %ecx,0x0C(%esp)
       movl %ebx,0x10(%esp)
       movl %edi,0x14(%esp)
       movl %esi,0x18(%esp)
       movl %ebp,0x1C(%esp)
       movl 0x24(%esp),%edx            # EDX = BOT
       movl 0x28(%esp),%ebp            # EBP = TOP
   rWa:movl %ebp,%eax                  # EAX = top
       movl %ebp,%ebx                  # EBX = top
       subl %edx,%eax                  # EAX = bytes
       movl %edx,%esi                  # ESI = bot
       shrl $0x01,%eax                 # EAX / 2
       movl %edx,%edi
       andl $0xFFFFFFFE,%eax
       addl %eax,%edi                  # EDI = mid
       movw 0x00(%edi),%ax             #  AX = 00[mid]
       jmp 1f
     0:cmpw 0x00(%esi),%ax             # 00[bot] >= 00[mid]?
       jbe 2f
       addl $0x02,%esi                 # bot + size
       nop
     1:cmpl %edi,%esi                  # bot = mid?
       jne 0b
     2:cmpw 0x00(%ebx),%ax             # 00[mid] <= 00[top]?
       jae 3f
       subl $0x02,%ebx                 # top - size
       nop
       cmpl %edi,%ebx                  # top = mid?
       jne 2b
     3:cmpl %ebx,%esi                  # bot >= top?
       jae 5f
       movw 0x00(%ebx),%ax             # exchange
       movw 0x00(%esi),%cx
       nop
       nop
       nop
       movw %cx,0x00(%ebx)
       movw %ax,0x00(%esi)
       cmpl %esi,%edi                  # bot = mid?
       jne 4f
       movl %ebx,%edi                  # mid = top
       jmp 5f
     4:cmpl %ebx,%edi                  # top = mid?
       cmove %esi,%edi                 # mid = bot
     5:cmpl %ebx,%esi                  # bot = top?
       ja 7f
       addl $0x02,%esi                 # bot + size
       cmpl %ebx,%edx                  # top >= BOT?
       jae 6f
       subl $0x02,%ebx                 # top - size
       nop
     6:movw 0x00(%edi),%ax             #  AX = 00[mid]
       cmpl %ebx,%esi                  # top <= bot?
       jbe 1b
     7:movl %ebp,%eax                  # EAX = TOP
       movl %ebx,%ecx                  # ECX = top
       subl %esi,%eax                  # EAX = TOP - bot
       subl %edx,%ecx                  # ECX = top - BOT
       cmpl %eax,%ecx                  # (top - BOT) >= (TOP - bot)?
       jae 9f
       cmpl %ebx,%edx                  # top >= BOT?
       jae 8f
       movl %ebx,0x04(%esp)
       movl %edx,0x00(%esp)
       call srtWa
     8:movl %esi,%edx                  # TOP = bot
       cmpl %esi,%ebp                  # bot > TOP?
       ja rWa
       jmp 1f
     9:cmpl %esi,%ebp                  # bot > TOP?
       jbe 0f
       movl %ebp,0x04(%esp)
       movl %esi,0x00(%esp)
       call srtWa
     0:movl %ebx,%ebp                  # TOP = top
       cmpl %ebx,%edx                  # top > BOT?
       jb rWa
     1:movl 0x08(%esp),%edx
       movl 0x0C(%esp),%ecx
       movl 0x10(%esp),%ebx
       movl 0x14(%esp),%edi
       movl 0x18(%esp),%esi
       movl 0x1C(%esp),%ebp
       addl $0x20,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ srtWd   word, descending                   ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  address bottom element             ³Û
       ³   PAR2          top    element             ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
 srtWd:subl $0x20,%esp
       nop
       nop
       movl %edx,0x08(%esp)
       movl %ecx,0x0C(%esp)
       movl %ebx,0x10(%esp)
       movl %edi,0x14(%esp)
       movl %esi,0x18(%esp)
       movl %ebp,0x1C(%esp)
       movl 0x24(%esp),%edx            # EDX = BOT
       movl 0x28(%esp),%ebp            # EBP = TOP
   rWd:movl %ebp,%eax                  # EAX = top
       movl %ebp,%ebx                  # EBX = top
       subl %edx,%eax                  # EAX = bytes
       movl %edx,%esi                  # ESI = bot
       shrl $0x01,%eax                 # EAX / 2
       movl %edx,%edi
       andl $0xFFFFFFFE,%eax
       addl %eax,%edi                  # EDI = mid
       movw 0x00(%edi),%ax             #  AX = 00[mid]
       jmp 1f
     0:cmpw 0x00(%esi),%ax             # 00[bot] >= 00[mid]?
       jae 2f
       addl $0x02,%esi                 # bot + size
       nop
     1:cmpl %edi,%esi                  # bot = mid?
       jne 0b
     2:cmpw 0x00(%ebx),%ax             # 00[mid] <= 00[top]?
       jbe 3f
       subl $0x02,%ebx                 # top - size
       nop
       cmpl %edi,%ebx                  # top = mid?
       jne 2b
     3:cmpl %ebx,%esi                  # bot >= top?
       jae 5f
       movw 0x00(%ebx),%ax             # exchange
       movw 0x00(%esi),%cx
       nop
       nop
       nop
       movw %cx,0x00(%ebx)
       movw %ax,0x00(%esi)
       cmpl %esi,%edi                  # bot = mid?
       jne 4f
       movl %ebx,%edi                  # mid = top
       jmp 5f
     4:cmpl %ebx,%edi                  # top = mid?
       cmove %esi,%edi                 # mid = bot
     5:cmpl %ebx,%esi                  # bot = top?
       ja 7f
       addl $0x02,%esi                 # bot + size
       cmpl %ebx,%edx                  # top >= BOT?
       jae 6f
       subl $0x02,%ebx                 # top - size
       nop
     6:movw 0x00(%edi),%ax             #  AX = 00[mid]
       cmpl %ebx,%esi                  # top <= bot?
       jbe 1b
     7:movl %ebp,%eax                  # EAX = TOP
       movl %ebx,%ecx                  # ECX = top
       subl %esi,%eax                  # EAX = TOP - bot
       subl %edx,%ecx                  # ECX = top - BOT
       cmpl %eax,%ecx                  # (top - BOT) >= (TOP - bot)?
       jae 9f
       cmpl %ebx,%edx                  # top >= BOT?
       jae 8f
       movl %ebx,0x04(%esp)
       movl %edx,0x00(%esp)
       call srtWd
     8:movl %esi,%edx                  # TOP = bot
       cmpl %esi,%ebp                  # bot > TOP?
       ja rWd
       jmp 1f
     9:cmpl %esi,%ebp                  # bot > TOP?
       jbe 0f
       movl %ebp,0x04(%esp)
       movl %esi,0x00(%esp)
       call srtWd
     0:movl %ebx,%ebp                  # TOP = top
       cmpl %ebx,%edx                  # top > BOT?
       jb rWd
     1:movl 0x08(%esp),%edx
       movl 0x0C(%esp),%ecx
       movl 0x10(%esp),%ebx
       movl 0x14(%esp),%edi
       movl 0x18(%esp),%esi
       movl 0x1C(%esp),%ebp
       addl $0x20,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ srtDa   dword, ascending                   ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  address bottom element             ³Û
       ³   PAR2          top    element             ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
 srtDa:subl $0x20,%esp
       nop
       nop
       movl %edx,0x08(%esp)
       movl %ecx,0x0C(%esp)
       movl %ebx,0x10(%esp)
       movl %edi,0x14(%esp)
       movl %esi,0x18(%esp)
       movl %ebp,0x1C(%esp)
       movl 0x24(%esp),%edx            # EDX = BOT
       movl 0x28(%esp),%ebp            # EBP = TOP
   rDa:movl %ebp,%eax                  # EAX = top
       movl %ebp,%ebx                  # EBX = top
       subl %edx,%eax                  # EAX = bytes
       movl %edx,%esi                  # ESI = bot
       shrl $0x01,%eax                 # EAX / 2
       movl %edx,%edi
       andl $0xFFFFFFFC,%eax
       addl %eax,%edi                  # EDI = mid
       movl 0x00(%edi),%eax            # EAX = 00[mid]
       jmp 1f
     0:cmpl 0x00(%esi),%eax            # 00[bot] >= 00[mid]?
       jbe 2f
       addl $0x04,%esi                 # bot + size
       nop
     1:cmpl %edi,%esi                  # bot = mid?
       jne 0b
     2:cmpl 0x00(%ebx),%eax            # 00[mid] <= 00[top]?
       jae 3f
       subl $0x04,%ebx                 # top - size
       nop
       cmpl %edi,%ebx                  # top = mid?
       jne 2b
     3:cmpl %ebx,%esi                  # bot >= top?
       jae 5f
       movl 0x00(%ebx),%eax            # exchange
       movl 0x00(%esi),%ecx
       nop
       nop
       nop
       movl %ecx,0x00(%ebx)
       movl %eax,0x00(%esi)
       cmpl %esi,%edi                  # bot = mid?
       jne 4f
       movl %ebx,%edi                  # mid = top
       jmp 5f
     4:cmpl %ebx,%edi                  # top = mid?
       cmove %esi,%edi                 # mid = bot
     5:cmpl %ebx,%esi                  # bot = top?
       ja 7f
       addl $0x04,%esi                 # bot + size
       cmpl %ebx,%edx                  # top >= BOT?
       jae 6f
       subl $0x04,%ebx                 # top - size
       nop
     6:movl 0x00(%edi),%eax            # EAX = 00[mid]
       cmpl %ebx,%esi                  # top <= bot?
       jbe 1b
     7:movl %ebp,%eax                  # EAX = TOP
       movl %ebx,%ecx                  # ECX = top
       subl %esi,%eax                  # EAX = TOP - bot
       subl %edx,%ecx                  # ECX = top - BOT
       cmpl %eax,%ecx                  # (top - BOT) >= (TOP - bot)?
       jae 9f
       cmpl %ebx,%edx                  # top >= BOT?
       jae 8f
       movl %ebx,0x04(%esp)
       movl %edx,0x00(%esp)
       call srtDa
     8:movl %esi,%edx                  # TOP = bot
       cmpl %esi,%ebp                  # bot > TOP?
       ja rDa
       jmp 1f
     9:cmpl %esi,%ebp                  # bot > TOP?
       jbe 0f
       movl %ebp,0x04(%esp)
       movl %esi,0x00(%esp)
       call srtDa
     0:movl %ebx,%ebp                  # TOP = top
       cmpl %ebx,%edx                  # top > BOT?
       jb rDa
     1:movl 0x08(%esp),%edx
       movl 0x0C(%esp),%ecx
       movl 0x10(%esp),%ebx
       movl 0x14(%esp),%edi
       movl 0x18(%esp),%esi
       movl 0x1C(%esp),%ebp
       addl $0x20,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ srtDd   dword, descending                  ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  address bottom element             ³Û
       ³   PAR2          top    element             ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
 srtDd:subl $0x20,%esp
       nop
       nop
       movl %edx,0x08(%esp)
       movl %ecx,0x0C(%esp)
       movl %ebx,0x10(%esp)
       movl %edi,0x14(%esp)
       movl %esi,0x18(%esp)
       movl %ebp,0x1C(%esp)
       movl 0x24(%esp),%edx            # EDX = BOT
       movl 0x28(%esp),%ebp            # EBP = TOP
   rDd:movl %ebp,%eax                  # EAX = top
       movl %ebp,%ebx                  # EBX = top
       subl %edx,%eax                  # EAX = bytes
       movl %edx,%esi                  # ESI = bot
       shrl $0x01,%eax                 # EAX / 2
       movl %edx,%edi
       andl $0xFFFFFFFC,%eax
       addl %eax,%edi                  # EDI = mid
       movl 0x00(%edi),%eax            # EAX = 00[mid]
       jmp 1f
     0:cmpl 0x00(%esi),%eax            # 00[bot] >= 00[mid]?
       jae 2f
       addl $0x04,%esi                 # bot + size
       nop
     1:cmpl %edi,%esi                  # bot = mid?
       jne 0b
     2:cmpl 0x00(%ebx),%eax            # 00[mid] <= 00[top]?
       jbe 3f
       subl $0x04,%ebx                 # top - size
       nop
       cmpl %edi,%ebx                  # top = mid?
       jne 2b
     3:cmpl %ebx,%esi                  # bot >= top?
       jae 5f
       movl 0x00(%ebx),%eax            # exchange
       movl 0x00(%esi),%ecx
       nop
       nop
       nop
       movl %ecx,0x00(%ebx)
       movl %eax,0x00(%esi)
       cmpl %esi,%edi                  # bot = mid?
       jne 4f
       movl %ebx,%edi                  # mid = top
       jmp 5f
     4:cmpl %ebx,%edi                  # top = mid?
       cmove %esi,%edi                 # mid = bot
     5:cmpl %ebx,%esi                  # bot = top?
       ja 7f
       addl $0x04,%esi                 # bot + size
       cmpl %ebx,%edx                  # top >= BOT?
       jae 6f
       subl $0x04,%ebx                 # top - size
       nop
     6:movl 0x00(%edi),%eax            # EAX = 00[mid]
       cmpl %ebx,%esi                  # top <= bot?
       jbe 1b
     7:movl %ebp,%eax                  # EAX = TOP
       movl %ebx,%ecx                  # ECX = top
       subl %esi,%eax                  # EAX = TOP - bot
       subl %edx,%ecx                  # ECX = top - BOT
       cmpl %eax,%ecx                  # (top - BOT) >= (TOP - bot)?
       jae 9f
       cmpl %ebx,%edx                  # top >= BOT?
       jae 8f
       movl %ebx,0x04(%esp)
       movl %edx,0x00(%esp)
       call srtDd
     8:movl %esi,%edx                  # TOP = bot
       cmpl %esi,%ebp                  # bot > TOP?
       ja rDd
       jmp 1f
     9:cmpl %esi,%ebp                  # bot > TOP?
       jbe 0f
       movl %ebp,0x04(%esp)
       movl %esi,0x00(%esp)
       call srtDd
     0:movl %ebx,%ebp                  # TOP = top
       cmpl %ebx,%edx                  # top > BOT?
       jb rDd
     1:movl 0x08(%esp),%edx
       movl 0x0C(%esp),%ecx
       movl 0x10(%esp),%ebx
       movl 0x14(%esp),%edi
       movl 0x18(%esp),%esi
       movl 0x1C(%esp),%ebp
       addl $0x20,%esp
       ret
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ srtQa   qword, ascending                   ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  address bottom element             ³Û
       ³   PAR2          top    element             ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ srtQd   qword, descending                  ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  address bottom element             ³Û
       ³   PAR2          top    element             ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ srtSa   string, ascending                  ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  address bottom element             ³Û
       ³   PAR2          top    element             ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       /*
       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
       ³ srtSd   string, descending                 ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³-> PAR1  address bottom element             ³Û
       ³   PAR2          top    element             ³Û
       ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
       ³<- EAX   always zero                        ³Û
       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       /*
       ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
       ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
