          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                     S e c S y s  -  E N C O D E  +  D E C O D E                    Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К                          *** (C) ST-Open 1979 - 2010 ***                           Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К You may copy and distribute this file as often as you want, but recipients are not Кл
          К allowed to pay anything for any copy of this file or its content. It isn't allowed Кл
          К to remove parts of this file or add third party content. It isn't allowed to abuse Кл
          К the copyrighted content or introduced techniques for commercial purposes. Whatever Кл
          К is derived from this file and its content must be freely available without charge. Кл
          К You are free to modify the content of this file if you want to. However, derivates Кл
          К of the content of this file or parts of it *still* are subject to the terms of the Кл
          К FT4FP license. Recipients neither are allowed to pay anything for the original nor Кл
          К for altered or derived replica.                                                    Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .include "..\\..\\..\\include\\yasm.h"
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г ssENC   encode input string                                                        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   address string                                                             Гл
          Г   RDX   encode   level                                                             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   0000 0000 xxxx xxxx   size output (currently limited to 32 bit)            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Your string grows eight byte in size and no trailing zero exists. Size - including Гл
          Г size and encoding info - is stored at offset 0x00 in the encrypted string. If it's Гл
          Г an empty string, *both* leading dwords are set to zero and a zero is returned.     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _ssENC
          .def     _ssENC; .scl 2; .type 32; .endef
   _ssENC:subq     $0x78,%rsp
          movq     _BNR(%rip),%rax                # EAX = BNR
          prefetch 0x00(%rcx)
          movq     %r8, 0x28(%rsp)
          movq     %r9, 0x30(%rsp)
          movq     %r10,0x38(%rsp)
          movq     %r11,0x40(%rsp)
          movq     %rdx,0x48(%rsp)
          movq     %rcx,0x50(%rsp)
          movq     %rbx,0x58(%rsp)
          movq     %rdi,0x60(%rsp)
          movq     %rsi,0x68(%rsp)
          movq     %rbp,0x70(%rsp)
          movq     %rax,%r10                      # R10 = BNR
          movl     $0x09,%r8d                     # R08 = size + info
          movl     $0x01,%r9d                     # R09 = string size
          movl     SS_NXT(%r10),%esi              # RSI = offset next key byte
          movq     EA_SSW(%r10),%r11              # R11 = EA key
          movq     %rcx,%rdi                      # RDI = address string
          movl     %edx,%ebp                      # RBP = encode depth
          movl     $0x0FFF,%ebx                   # RBX = depth limit
          leaq     0x08(%rdi),%rdx                # RDX = EDI + 8
          cmpl     %ebx,%ebp                      # depth valid?
          cmova    %ebx,%ebp                      # max if larger
          xorl     %eax,%eax
          testl    %ebp,%ebp                      # depth zero?
          cmove    %ebx,%ebp                      # set default
          cmpb     $0x00,0x00(%rdi)               # empty string?
          cmove    %eax,%esi                      # key  = 0!
          cmove    %eax,%r8d                      # size = 0!
          je       4f
          addq     %r11,%rsi                      # RSI = EA key
          addq     %r11,%rbp                      # RBP = key end
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г search string end Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        0:cmpb     $0x00,0x01(%rdi)               # end?
          je       1f
          incq     %rdx                           # EA++
          incq     %rdi                           # EA++
          incl     %r8d                           # sizeinfo++
          incl     %r9d                           # str_size++
          jmp      0b
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г pad               Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        1:testq    $0x0F,%rdx
          je       2f
          movb     $0x00,0x00(%rdx)
          incq     %rdx
          jmp      1b
        2:xorl     %eax,%eax
          xorl     %ebx,%ebx
          xorl     %ecx,%ecx
          xorl     %edx,%edx
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г encode            Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        3:cmpq     %rbp,%rsi                      # RSI > key end?
          cmova    %r11,%rsi                      # reset to beginning
          movb     0x00(%rsi),%bl                 #  BL = key
          movb     0x00(%rdi),%al                 #  AL = char
          movb     %bl,  %cl
          movb     %bl,  %dl
          shrb     $0x05,%cl
          andb     $0x07,%dl
          rolb     %cl,  %al                      # char < key+
          addb     %cl,  %bl                      # key  + key+
          addb     %dl,  %bl                      # key  + key++
          movb     %dl,  %cl                      # key+ = key++
          xorb     %bl,  %al                      # char X key
          rolb     %cl,  %al                      # char < key++
          movb     %al,0x08(%rdi)
          incq     %rsi                           # key++
          decq     %rdi                           # EA--
          decl     %r9d                           # count--
          jne      3b
          subq     %r11,%rsi                      # make offset
          incq     %rdi                           # we are 1 below!
          movl     %esi,SS_NXT(%r10)              # store SS_NXT
          decl     %esi                           # we are 1 above!
        4:movl     %r8d,0x00(%rdi)                # new size
          movl     %esi,0x04(%rdi)                # last key
          movl     %r8d,%eax                      # return size
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г ssDEC   decode input string                                                        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   address string                                                             Гл
          Г   RDX   decoding level                                                             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _ssDEC
          .def     _ssDEC; .scl 2; .type 32; .endef
   _ssDEC:subq     $0x78,%rsp
          movq     _BNR(%rip),%rax                # EAX = BNR
          prefetch 0x00(%rcx)
          movq     %r8, 0x28(%rsp)
          movq     %r9, 0x30(%rsp)
          movq     %r10,0x38(%rsp)
          movq     %r11,0x40(%rsp)
          movq     %rdx,0x48(%rsp)
          movq     %rcx,0x50(%rsp)
          movq     %rbx,0x58(%rsp)
          movq     %rdi,0x60(%rsp)
          movq     %rsi,0x68(%rsp)
          movq     %rbp,0x70(%rsp)
          movq     %rax,%r10                      # R10 = BNR
          movq     %rcx,%rdi                      # RDI = EA string
          movq     EA_SSW(%r10),%rbp              # RBP = EA keys
          movl     $0x0FFF,%eax                   # RAX = max depth
          movl     0x00(%edi),%r8d                # R08 = size
          movl     0x04(%edi),%ebx                # RBX = last key
          cmpl     %eax,%edx                      # depth valid?
          cmova    %eax,%edx                      # max if larger
          movq     %rbp,%rsi                      # RSI = EA keys
          testl    %edx,%edx                      # depth zero?
          cmove    %eax,%edx                      # set default
          subl     $0x08,%r8d                     # empty string?
          jbe      2f
          movl     %edx,%r9d                      # R09 = key mask
          addq     %rbx,%rsi                      # RSI = EA key_cur
          addq     %rbp,%r9                       # R09 = EA key_end
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г decode            Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          xorl     %eax,%eax
          xorl     %ebx,%ebx
          xorl     %ecx,%ecx
          xorl     %edx,%edx
        0:movb     0x00(%rsi),%bl                 #  BL = key_cur
          movb     0x08(%rdi),%al                 #  AL = char
          movb     %bl,%cl
          movb     %bl,%dl
          andb     $0x07,%cl
          shrb     $0x05,%dl
          rorb     %cl,%al                        # char  > key++
          addb     %cl,%bl                        # key   + key+
          addb     %dl,%bl                        # key   + key++
          movb     %dl,%cl                        # key++ = key+
          xorb     %bl,%al                        # char  X key
          rorb     %cl,%al                        # char  > key+
          movb     %al,0x00(%rdi)
          decq     %rsi                           # EA key_cur--
          incq     %rdi                           # EA string++
          cmpq     %rbp,%rsi                      # below key_base?
          cmovb    %r9,%rsi                       # set to key_end
          decl     %r8d                           # count--
          jne      0b
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г pad               Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        1:movb     $0x00,0x00(%rdi)
          testq    $0x0F,%rdi
          je       2f
          incq     %rdi
          jmp      1b
        2:xorl     %eax,%eax
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г common exit                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
      XIT:movq     0x28(%rsp),%r8
          movq     0x30(%rsp),%r9
          movq     0x38(%rsp),%r10
          movq     0x40(%rsp),%r11
          movq     0x48(%rsp),%rdx
          movq     0x50(%rsp),%rcx
          movq     0x58(%rsp),%rbx
          movq     0x60(%rsp),%rdi
          movq     0x68(%rsp),%rsi
          movq     0x70(%rsp),%rbp
          addq     $0x78,%rsp
          ret
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BNR, 8, 3
