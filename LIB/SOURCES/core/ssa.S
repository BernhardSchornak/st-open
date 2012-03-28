          /*
            ==================================================================================
                  S e c S y s  -  E N C O D E  +  D E C O D E    (C) ST-Open 1979 - 2012
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                  THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            You may copy and distribute this file as often as you want, but recipients are not
            allowed to pay anything for any copy of this file or its content. It isn't allowed
            to abuse its copyrighted content or introduced techniques for commercial purposes.
            Whatever is derived from this file or its content must be freely available without
            charge.

            You are free to modify the content of this file if you want to. However, derivates
            of the content of this file or parts of it *still* are subject to the terms of the
            FT4FP license. Recipients neither are allowed to pay anything for the original nor
            for altered or derived replica.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                       FREE THOUGHT FOR FREE PEOPLE: KEEP CASH AWAY FROM KNOWLEDGE!
            ==================================================================================
          */
          .include "..\\..\\..\\include\\yasm.h"
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ssENC    encode input string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   address string
               RDX   encode   level
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 xxxx xxxx   size output (currently limited to 32 bit)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Your string grows eight byte in size and no trailing zero exists. Size - including
            size and encoding info - is stored at offset 0x00 in the encrypted string. If it's
            an empty string, *both* leading dwords are set to zero and a zero is returned.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _ssENC
          .def     _ssENC; .scl 2; .type 32; .endef
   _ssENC:subq     $0x78,               %rsp
          movq     _BNR(%rip),          %rax             # EAX = BNR
          prefetch 0x00(%rcx)
          movq     %r8,                 0x28(%rsp)
          movq     %r9,                 0x30(%rsp)
          movq     %r10,                0x38(%rsp)
          movq     %r11,                0x40(%rsp)
          movq     %rdx,                0x48(%rsp)
          movq     %rcx,                0x50(%rsp)
          movq     %rbx,                0x58(%rsp)
          movq     %rdi,                0x60(%rsp)
          movq     %rsi,                0x68(%rsp)
          movq     %rbp,                0x70(%rsp)
          movq     %rax,                %r10             # R10 = BNR
          movl     $0x09,               %r8d             # R08 = size + info
          movl     $0x01,               %r9d             # R09 = string size
          movl     SS_NXT(%r10),        %esi             # RSI = offset next key byte
          movq     EA_SSW(%r10),        %r11             # R11 = EA key
          movq     %rcx,                %rdi             # RDI = address string
          movl     %edx,                %ebp             # RBP = encode depth
          movl     $0x0FFF,             %ebx             # RBX = depth limit
          leaq     0x08(%rdi),          %rdx             # RDX = EDI + 8
          cmpl     %ebx,                %ebp             # depth valid?
          cmova    %ebx,                %ebp             # max if larger
          xorl     %eax,                %eax
          testl    %ebp,                %ebp             # depth zero?
          cmove    %ebx,                %ebp             # set default
          cmpb     $0x00,               0x00(%rdi)       # empty string?
          cmove    %eax,                %esi             # key  = 0!
          cmove    %eax,                %r8d             # size = 0!
          je       3f
          addq     %r11,                %rsi             # RSI = EA key
          addq     %r11,                %rbp             # RBP = key end
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            search string end
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        0:cmpb     $0x00,               0x01(%rdi)       # end?
          je       1f
          incq     %rdx                                  # EA++
          incq     %rdi                                  # EA++
          incl     %r8d                                  # sizeinfo++
          incl     %r9d                                  # str_size++
          jmp      0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            encode
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        1:xorl     %ebx,                %ebx             # clear registers
          xorl     %ecx,                %ecx
          xorl     %edx,                %edx
        2:cmpq     %rbp,                %rsi             # RSI > key end?
          cmova    %r11,                %rsi             # reset to beginning
          movb     0x00(%rsi),          %bl              #  BL = key
          movb     0x00(%rdi),          %al              #  AL = char
          movb     %bl,                 %cl
          movb     %bl,                 %dl
          shrb     $0x05,               %cl
          andb     $0x07,               %dl
          rolb     %cl,                 %al              # char < key+
          addb     %cl,                 %bl              # key  + key+
          addb     %dl,                 %bl              # key  + key++
          movb     %dl,                 %cl              # key+ = key++
          xorb     %bl,                 %al              # char X key
          rolb     %cl,                 %al              # char < key++
          movb     %al,                 0x08(%rdi)
          incq     %rsi                                  # key++
          decq     %rdi                                  # EA--
          decl     %r9d                                  # count--
          jne      2b
          subq     %r11,                %rsi             # make offset
          incq     %rdi                                  # we are 1 below!
          movl     %esi,                SS_NXT(%r10)     # store SS_NXT
          decl     %esi                                  # we are 1 above!
        3:movq     %rdi,                %rax             # RAX = EA buffer
          movl     %r8d,                0x00(%rdi)       # new size
          movl     %esi,                0x04(%rdi)       # last key
          addq     %r8,                 %rax             # RAX = EA last byte
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            pad
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        4:testq    $0x0F,               %rax             # new para?
          je       5f
          movb     $0x00,               0x00(%rax)       # pad
          incq     %rax                                  # next byte
          jmp      4b
        5:subq     %rdi,                %rax             # return size
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ssDEC    decode input string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   address string
               RDX   decoding level
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000   ERR_NO_ERROR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _ssDEC
          .def     _ssDEC; .scl 2; .type 32; .endef
   _ssDEC:subq     $0x78,               %rsp
          movq     _BNR(%rip),          %rax             # EAX = BNR
          prefetch 0x00(%rcx)
          movq     %r8,                 0x28(%rsp)
          movq     %r9,                 0x30(%rsp)
          movq     %r10,                0x38(%rsp)
          movq     %r11,                0x40(%rsp)
          movq     %rdx,                0x48(%rsp)
          movq     %rcx,                0x50(%rsp)
          movq     %rbx,                0x58(%rsp)
          movq     %rdi,                0x60(%rsp)
          movq     %rsi,                0x68(%rsp)
          movq     %rbp,                0x70(%rsp)
          movq     %rax,                %r10             # R10 = BNR
          movq     %rcx,                %rdi             # RDI = EA string
          movq     EA_SSW(%r10),        %rbp             # RBP = EA keys
          movl     $0x0FFF,             %eax             # RAX = max depth
          movl     0x00(%edi),          %r8d             # R08 = size
          movl     0x04(%edi),          %ebx             # RBX = last key
          cmpl     %eax,                %edx             # depth valid?
          cmova    %eax,                %edx             # max if larger
          movq     %rbp,                %rsi             # RSI = EA keys
          testl    %edx,                %edx             # depth zero?
          cmove    %eax,                %edx             # set default
          subl     $0x08,               %r8d             # empty string?
          jbe      XIZ
          movl     %edx,                %r9d             # R09 = key mask
          addq     %rbx,                %rsi             # RSI = EA key_cur
          addq     %rbp,                %r9              # R09 = EA key_end
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            decode
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          xorl     %eax,                %eax
          xorl     %ebx,                %ebx
          xorl     %ecx,                %ecx
          xorl     %edx,                %edx
        0:movb     0x00(%rsi),          %bl              #  BL = key_cur
          movb     0x08(%rdi),          %al              #  AL = char
          movb     %bl,                 %cl
          movb     %bl,                 %dl
          andb     $0x07,               %cl
          shrb     $0x05,               %dl
          rorb     %cl,                 %al              # char  > key++
          addb     %cl,                 %bl              # key   + key+
          addb     %dl,                 %bl              # key   + key++
          movb     %dl,                 %cl              # key++ = key+
          xorb     %bl,                 %al              # char  X key
          rorb     %cl,                 %al              # char  > key+
          movb     %al,                 0x00(%rdi)
          decq     %rsi                                  # EA key_cur--
          incq     %rdi                                  # EA string++
          cmpq     %rbp,                %rsi             # below key_base?
          cmovb    %r9,                 %rsi             # set to key_end
          decl     %r8d                                  # count--
          jne      0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            pad
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        1:movb     $0x00,               0x00(%rdi)
          testq    $0x0F,               %rdi
          je       XIZ
          incq     %rdi
          jmp      1b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorl     %eax,                %eax
      XIT:movq     0x28(%rsp),          %r8
          movq     0x30(%rsp),          %r9
          movq     0x38(%rsp),          %r10
          movq     0x40(%rsp),          %r11
          movq     0x48(%rsp),          %rdx
          movq     0x50(%rsp),          %rcx
          movq     0x58(%rsp),          %rbx
          movq     0x60(%rsp),          %rdi
          movq     0x68(%rsp),          %rsi
          movq     0x70(%rsp),          %rbp
          addq     $0x78,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,                8, 3
