       /*
       ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
       บ                           S T - O p e n   Q S O R T ( )                            บÛ
       บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
       บ                          *** (C) ST-Open 1979 - 2008 ***                           บÛ
       ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
       บ       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        บÛ
       บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
       บ You may copy and distribute it as often as you want, but recipients aren't allowed บÛ
       บ to pay *anything* for any copy of this file.                                       บÛ
       บ                                                                                    บÛ
       บ You are free to modify the content of this file if you want to. However, derivates บÛ
       บ of the content of this file *still* are subject to the terms of the FT4FP license. บÛ
       บ Recipients neither are allowed to pay *anything* for original work nor for altered บÛ
       บ or derived replica.                                                                บÛ
       บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
       บ       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        บÛ
       ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
       ณ This qsort() executes 2.5 - 5 times faster ณÛ
       ณ than EMX's qsort(). Improvement depends on ณÛ
       ณ array size and pattern. The NOPs are there ณÛ
       ณ to speed up execution. They keep the other ณÛ
       ณ pipes busy while a register is updated and ณÛ
       ณ compared against another register.         ณÛ
       ณ                                            ณÛ
       ณ If you run the tests, you might notice how ณÛ
       ณ far the branch prediction logic influences ณÛ
       ณ the results. Lots of misses slow down exe- ณÛ
       ณ cution in the range of -some- percent.     ณÛ
       ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _asort
_asort:subl $0x0C,%esp
       nop
       nop
       movl %ebx,0x08(%esp)
       movl 0x14(%esp),%eax
       movl 0x10(%esp),%ebx
       decl %eax
       js 0f
       shll $0x02,%eax
       je 0f
       addl %ebx,%eax
       movl %ebx,0x00(%esp)
       movl %eax,0x04(%esp)
       call sasrt
     0:movl 0x08(%esp),%ebx
       addl $0x0C,%esp
       ret

       .align 2,0x90
 sasrt:subl $0x20,%esp
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
  sare:movl %ebp,%eax                  # EAX = top
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
       call sasrt
     8:movl %esi,%edx                  # TOP = bot
       cmpl %esi,%ebp                  # bot > TOP?
       ja sare
       jmp 1f
     9:cmpl %esi,%ebp                  # bot > TOP?
       jbe 0f
       movl %ebp,0x04(%esp)
       movl %esi,0x00(%esp)
       call sasrt
     0:movl %ebx,%ebp                  # TOP = top
       cmpl %ebx,%edx                  # top > BOT?
       jb sare
     1:movl 0x08(%esp),%edx
       movl 0x0C(%esp),%ecx
       movl 0x10(%esp),%ebx
       movl 0x14(%esp),%edi
       movl 0x18(%esp),%esi
       movl 0x1C(%esp),%ebp
       addl $0x20,%esp
       ret
       /*
       ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
       ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
