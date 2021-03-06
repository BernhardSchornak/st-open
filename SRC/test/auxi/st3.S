       /*
       浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
       �                           S T - O p e n   Q S O R T ( )                            裁
       債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
       �                          *** (C) ST-Open 1979 - 2008 ***                           裁
       藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
       浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
       �       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        裁
       債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
       � You may copy and distribute it as often as you want, but recipients aren't allowed 裁
       � to pay *anything* for any copy of this file.                                       裁
       �                                                                                    裁
       � You are free to modify the content of this file if you want to. However, derivates 裁
       � of the content of this file *still* are subject to the terms of the FT4FP license. 裁
       � Recipients neither are allowed to pay *anything* for original work nor for altered 裁
       � or derived replica.                                                                裁
       債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
       �       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        裁
       藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
       � This qsort() executes 2.5 - 5 times faster 額
       � than EMX's qsort(). Improvement depends on 額
       � array size and pattern. The NOPs are there 額
       � to speed up execution. They keep the other 額
       � pipes busy while a register is updated and 額
       � compared against another register.         額
       �                                            額
       � If you run the tests, you might notice how 額
       � far the branch prediction logic influences 額
       � the results. Lots of misses slow down exe- 額
       � cution in the range of -some- percent.     額
       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
       */
       .align 2,0x90
.globl _isort
_isort:subl $0x0C,%esp
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
       call sisrt
     0:movl 0x08(%esp),%ebx
       addl $0x0C,%esp
       ret

       .align 2,0x90
 sisrt:subl $0x20,%esp
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
  sire:movl %ebp,%eax                  # EAX = top
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
       call sisrt
     8:movl %esi,%edx                  # TOP = bot
       cmpl %esi,%ebp                  # bot > TOP?
       ja sire
       jmp 1f
     9:cmpl %esi,%ebp                  # bot > TOP?
       jbe 0f
       movl %ebp,0x04(%esp)
       movl %esi,0x00(%esp)
       call sisrt
     0:movl %ebx,%ebp                  # TOP = top
       cmpl %ebx,%edx                  # top > BOT?
       jb sire
     1:movl 0x08(%esp),%edx
       movl 0x0C(%esp),%ecx
       movl 0x10(%esp),%ebx
       movl 0x14(%esp),%edi
       movl 0x18(%esp),%esi
       movl 0x1C(%esp),%ebp
       addl $0x20,%esp
       ret
       /*
       浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
       藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
       */
