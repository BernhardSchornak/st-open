          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                             D A T A   C O N V E R S I O N   (C) ST-Open 2012
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
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            L O O K U P
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section .rdata, "dr"
          .p2align 4,,15
    toffQ:.long 0x04, 0x1E, 0x1D, 0x1C, 0x1A, 0x19, 0x18, 0x16, 0x15, 0x14, 0x12, 0x11, 0x10, 0x0E, 0x0D, 0x0C
          .long 0x0A, 0x09, 0x08, 0x06, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            J U M P
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      jt0:.quad d2e       # 00
          .quad d03       # 01
          .quad d03       # 02
          .quad d03       # 03
          .quad d06       # 04
          .quad d06       # 05
          .quad d06       # 06
          .quad d09       # 07
          .quad d09       # 08
          .quad d09       # 09
          .quad d12       # 10
          .quad d12       # 11
          .quad d12       # 12
          .quad d15       # 13
          .quad d15       # 14
          .quad d15       # 15
          .quad d18       # 16
          .quad d18       # 17
          .quad d18       # 18
          .quad d18       # 19
          .quad d20       # 20
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                          H E X A D E C I M A L
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            B2hex    byte => hexadecimal string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   byte to convert (only the lowest byte is converted!)
               RDX   EA target
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   converted byte [00LH]
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            BUFFER   0               1               2
                     0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF

                     01zz
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            average latency ~ 6 clock cycles
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _B2hex
          .def       _B2hex; .scl 2; .type 32; .endef
   _B2hex:movzb      %cl,                 %eax
          movq       %rbx,                0x08(%rsp)      # use Red Zone...
          movq       %rcx,                0x10(%rsp)
          movq       %rdi,                0x18(%rsp)
          andl       $0x0F,               %ecx            # RCX = 000L
          shrl       $0x04,               %eax            # RAX = 000H
          addl       $0x30,               %ecx            # RAX = 003H
          addl       $0x30,               %eax            # ECX = 003L
          shll       $0x08,               %ecx            # RCX = 3L00
          leal       0x07(%eax),          %ebx            # RBX = 004H
          leal       0x0700(%ecx),        %edi            # RDX = 4L00
          cmpl       $0x39,               %eax            # A...F?
          cmova      %ebx,                %eax            # => use
          cmpl       $0x3900,             %ecx            # A...F?
          cmova      %edi,                %ecx            # => use
          movq       0x08(%rsp),          %rbx
          addl       %ecx,                %eax            # RAX = result
          movq       0x18(%rsp),          %rdi
          movl       %eax,                0x00(%rdx)      # store result
          movq       0x10(%rsp),          %rcx
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            W2hex    word => hexadecimal string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   word to convert (only the lowest word is converted!)
               RDX   EA target
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 0000 0000
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            BUFFER   0               1               2
                     0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF

                     0123zzzz
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            average latency = 9 clock cycles
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _W2hex
          .def       _W2hex; .scl 2; .type 32; .endef
   _W2hex:movq       _BNR(%rip),          %rax            # RAX = BNR
          rolw       $0x08,               %cx             # RCX = [00LH]
          subq       $0xF8,               %rsp
          pxor       %xmm0,               %xmm0           # XM0 = 0
          movdqa     %xmm4,               0xD0(%rsp)
          movdqa     %xmm5,               0xE0(%rsp)
          pinsrw     $0x00,         %ecx, %xmm0           # XM0 = word to convert
          movdqa     CVT_30(%rax),        %xmm2           # XM2 = 303030...30
          movdqa     CVT_09(%rax),        %xmm3           # XM3 = 090909...09
          movdqa     %xmm0,               %xmm1           # XM1 = full nibbles
          movdqa     CVT_0F(%rax),        %xmm4           # XM4 = 0F0F0F...0F
          psrlq      $0x04,               %xmm1           # XM1 = high nibbles
          movdqa     CVT_07(%rax),        %xmm5           # XM5 = 070707...07
          punpcklbw  %xmm0,               %xmm1           # interleave LHLHLHLH
          pand       %xmm4,               %xmm1           # reduce to nibbles
          movdqa     %xmm1,               %xmm0           # copy for correction
          pcmpgtb    %xmm3,               %xmm1           # mask A...Fs => FFs
          paddb      %xmm2,               %xmm0           # convert
          movdqa     0xD0(%rsp),          %xmm4
          pand       %xmm5,               %xmm1           # reduce FFs to 07
          movdqa     0xE0(%rsp),          %xmm5
          paddb      %xmm1,               %xmm0           # A...F correction
          xorl       %eax,                %eax            # RAX = 0
          rolw       $0x08,               %cx             # RCX = [00HL]
          movd       %xmm0,               0x00(%rdx)      # store
          movl       $0x00,               0x04(%rdx)
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            D2hex    dword => formatted hex string   xxxx xxxx
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   dword to convert (only the low dword is converted!)
               RDX   EA target
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 0000 0000
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            BUFFER   0               1               2
                     0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF

                     0123 4567zzzzzzzzzzzz
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            average latency = 11 clock cycles
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _D2hex
          .def       _D2hex; .scl 2; .type 32; .endef
   _D2hex:subq       $0xF8,               %rsp
          movq       _BNR(%rip),          %rax            # RAX = BNR
          bswap      %ecx                                 # RCX = [3210]
          movdqa     %xmm4,               0xD0(%rsp)
          movdqa     %xmm5,               0xE0(%rsp)
          movd       %ecx,                %xmm0           # XM0 = full nibbles
          movdqa     CVT_30(%rax),        %xmm2           # XM2 = 303030...30
          movdqa     CVT_09(%rax),        %xmm3           # XM3 = 090909...09
          movdqa     %xmm0,               %xmm1           # XM1 = full nibbles
          movdqa     CVT_0F(%rax),        %xmm4           # XM4 = 0F0F0F...0F
          psrlq      $0x04,               %xmm1           # XM1 = high nibbles
          movdqa     CVT_07(%rax),        %xmm5           # XM5 = 070707...07
          punpcklbw  %xmm0,               %xmm1           # interleave LHLHLHLH
          pand       %xmm4,               %xmm1           # reduce to nibbles
          movdqa     %xmm1,               %xmm0           # copy for correction
          pcmpgtb    %xmm3,               %xmm1           # mask A...Fs => FFs
          paddb      %xmm2,               %xmm0           # convert
          pand       %xmm5,               %xmm1           # reduce FFs to 07
          paddb      %xmm1,               %xmm0           # A...F correction
          movdqa     0xD0(%rsp),          %xmm4
          movq       %xmm0,               %xmm1           # XM1 = zzzzzzzz76543210
          movdqa     0xE0(%rsp),          %xmm5
          psrldq     $0x04,               %xmm1           # XM1 = zzzzzzzzzzzz7654
          movd       %xmm0,               0x00(%rdx)      # store 0123
          movb       $0x20,               0x04(%rdx)      # store blank
          movdqu     %xmm1,               0x05(%rdx)      # store 4567zzzzzzzzzzzz
          bswap      %ecx                                 # RCX = [0123]
          xorl       %eax,                %eax            # RAX = 0
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            d2str    dword => unformatted hex string   HHHHHHHHzzzzzzzz
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   qword to convert (only the low dword is converted!)
               RDX   EA target
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            BUFFER   0               1               2
                     0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF

                     01234567zzzzzzzz
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            average latency ~ 8 clock cycles
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _d2str
          .def       _d2str; .scl 2; .type 32; .endef
   _d2str:subq       $0xF8,               %rsp
          movq       _BNR(%rip),          %rax            # RAX = BNR
          bswap      %ecx                                 # RCX = [3210]
          movdqa     %xmm4,               0xD0(%rsp)
          movdqa     %xmm5,               0xE0(%rsp)
          movd       %ecx,                %xmm0           # XM0 = full nibbles
          movdqa     CVT_09(%rax),        %xmm3           # XM3 = 090909...09
          movdqa     %xmm0,               %xmm1           # XM1 = full nibbles
          movdqa     CVT_0F(%rax),        %xmm4           # XM4 = 0F0F0F...0F
          psrlq      $0x04,               %xmm1           # XM1 = high nibbles
          movdqa     CVT_07(%rax),        %xmm5           # XM5 = 070707...07
          punpcklbw  %xmm0,               %xmm1           # interleave LHLHLHLH
          movdqa     CVT_30(%rax),        %xmm2           # XM2 = 303030...30
          leaq       CVTCUT(%rax),        %rax            # RAX = CVTCUT
          pand       %xmm4,               %xmm1           # reduce to nibbles
          movdqa     %xmm1,               %xmm0           # copy for correction
          pcmpgtb    %xmm3,               %xmm1           # mask A...Fs => FFs
          paddb      %xmm2,               %xmm0           # convert
          pand       %xmm5,               %xmm1           # reduce FFs to 07
          movdqa     0xD0(%rsp),          %xmm4
          paddb      %xmm1,               %xmm0           # A...F correction
          movdqa     0xE0(%rsp),          %xmm5
          pand       0x80(%rax),          %xmm0           # clear upper half
          bswap      %ecx                                 # RCX = [0123]
          xorl       %eax,                %eax            # RAX = 0
          movdqu     %xmm0,               0x00(%rdx)      # store DQ (upper half is 3030...30)
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Q2hex    Convert qword to ASCII-string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   qword to convert
               RDX   EA target
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 0000 0000
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            To simplify the formatting process, which took more clocks than the conversion it-
            self, quadwords now are formatted in two groups of 8 digits, representng the upper
            and lower doubleword of the converted quadword (01234567 89ABCDEF).
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            BUFFER   0               1               2
                     0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF

                     01234567 89ABCDEFzzzzzzzzzzzzzzz
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            average latency = 11 clock cycles
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _Q2hex
          .def       _Q2hex; .scl 2; .type 32; .endef
   _Q2hex:subq       $0xF8,               %rsp
          movq       _BNR(%rip),          %rax            # RAX = BNR
          bswap      %rcx                                 # RCX = [76543210]
          movdqa     %xmm4,               0xD0(%rsp)
          movdqa     %xmm5,               0xE0(%rsp)
          movq       %rcx,                %xmm0           # XM0 = full nibbles
          movdqa     CVT_30(%rax),        %xmm2           # XM2 = 303030...30
          movdqa     CVT_09(%rax),        %xmm3           # XM3 = 090909...09
          movdqa     %xmm0,               %xmm1           # XM1 = full nibbles
          movdqa     CVT_0F(%rax),        %xmm4           # XM4 = 0F0F0F...0F
          psrlq      $0x04,               %xmm1           # XM1 = high nibbles
          movdqa     CVT_07(%rax),        %xmm5           # XM5 = 070707...07
          punpcklbw  %xmm0,               %xmm1           # interleave LHLHLHLH
          pand       %xmm4,               %xmm1           # reduce to nibbles
          movdqa     %xmm1,               %xmm0           # copy for correction
          pcmpgtb    %xmm3,               %xmm1           # mask A...Fs => FFs
          paddb      %xmm2,               %xmm0           # convert
          pand       %xmm5,               %xmm1           # reduce FFs to 07
          movdqa     0xD0(%rsp),          %xmm4
          paddb      %xmm1,               %xmm0           # A...F correction
          movdqa     0xE0(%rsp),          %xmm5
          movq       %xmm0,               0x00(%rdx)      # store 01234567
          psrldq     $0x08,               %xmm0
          movb       $0x20,               0x08(%rdx)      #       formatting blank
          movdqu     %xmm0,               0x09(%rdx)      #       89ABCDEF + 8 zeroes
          movq       $0x00,               0x18(%rdx)      #       8 trailing zeroes
          bswap      %rcx                                 # RCX = [01234567]
          xorl       %eax,                %eax
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            O2hex    Convert oword to ASCII-string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA source (location where the oword is stored)
               RDX   EA target
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 0000 0000
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            BUFFER   0               1               2
                     0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF

                     01234567 89ABCDEF 01234567 89ABCDEFzzzzzzzz
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            average latency ~ 26 clock cycles
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _O2hex
          .def       _O2hex; .scl 2; .type 32; .endef
   _O2hex:subq       $0xF8,               %rsp
          movq       %r8,                 0xA0(%rsp)
          movq       %r9,                 0xA8(%rsp)
          movq       0x08(%rcx),          %r8             # R08 = 8899AABBCCDDEEFF
          movq       0x00(%rcx),          %r9             # R09 = 0011223344556677
          movq       _BNR(%rip),          %rax            # RAX = BNR
          bswap      %r8
          bswap      %r9
          movdqa     %xmm4,               0xB0(%rsp)
          movdqa     %xmm5,               0xC0(%rsp)
          movdqa     %xmm6,               0xD0(%rsp)
          movdqa     %xmm7,               0xE0(%rsp)
          movq       %r8,                 %xmm0           # XM0 = 8899AABBCCDDEEFF
          movq       %r9,                 %xmm2           # XM2 = 0011223344556677
          movdqa     CVT_0F(%rax),        %xmm6           # XM6 = 0F0F0F...0F
          movdqa     %xmm0,               %xmm1           # XM1 = 8899AABBCCDDEEFF
          movdqa     %xmm2,               %xmm3           # XM3 = 0011223344556677
          movdqa     CVT_09(%rax),        %xmm5           # XM5 = 090909...09
          psrlq      $0x04,               %xmm1           # XM1 = 08899AABBCCDDEEF
          psrlq      $0x04,               %xmm3           # XM3 = 0001122334455667
          movdqa     CVT_30(%rax),        %xmm4           # XM4 = 303030...30
          punpcklbw  %xmm0,               %xmm1           # h0l0h1l1h2l2h3l3h4l4h5l5h6l6h7l7
          punpcklbw  %xmm2,               %xmm3           # h8l8h9l9hAlAhBlBhClChDlDhElEhFlF
          movdqa     CVT_07(%rax),        %xmm7           # XM7 = 070707...07
          pand       %xmm6,               %xmm1           # z0z0z1z1z2z2z3z3z4z4z5z5z6z6z7z7
          pand       %xmm6,               %xmm3           # z8z8z9z9zAzAzBzBzCzCzDzDzEzEzFzF
          movdqa     %xmm1,               %xmm0           # copy for correction
          movdqa     %xmm3,               %xmm2
          pcmpgtb    %xmm5,               %xmm1           # 00000000000000000000000000000000
          pcmpgtb    %xmm5,               %xmm3           # 00000000FFFFFFFFFFFFFFFFFFFFFFFF
          paddb      %xmm4,               %xmm0           # convert (+ 0x30)
          paddb      %xmm4,               %xmm2
          pand       %xmm7,               %xmm3           # 00000000070707070707070707070707
          pand       %xmm7,               %xmm1           # 00000000000000000000000000000000
          paddb      %xmm3,               %xmm2           # A...F correction
          paddb      %xmm1,               %xmm0
          movdqa     %xmm2,               %xmm3
          movdqa     %xmm0,               %xmm1
          psrldq     $0x08,               %xmm3
          psrldq     $0x08,               %xmm1
          movq       %xmm2,               0x00(%rdx)      # => [00112233]
          movb       $0x20,               0x08(%rdx)      #    blank
          movdqu     %xmm3,               0x09(%rdx)      #    [44556677]
          movb       $0x20,               0x11(%rdx)      #    blank
          movdqu     %xmm0,               0x12(%rdx)      #    [8899AABB]
          movb       $0x20,               0x1A(%rdx)      #    blank
          movdqu     %xmm1,               0x1B(%rdx)      #    [CCDDEEFF] + 8 trailing zeroes
          movq       0xA0(%rsp),          %r8
          movq       0xA8(%rsp),          %r9
          movdqa     0xB0(%rsp),          %xmm4
          movdqa     0xC0(%rsp),          %xmm5
          movdqa     0xD0(%rsp),          %xmm6
          movdqa     0xE0(%rsp),          %xmm7
          xorl       %eax,                %eax
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            hex2D    hexadecimal ASCII string -> DWORD
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA source
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   dword (8 digits)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            BUFFER   0               
                     0123456789ABCDEF

                    "-16 byte string-"
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            average latency ~ 115 clock cycles (1st call), 96 clock cycles (2nd an up)

            Obviously, the processor logic applies some nifty tricks if the function is called
            repeatedly. While the first call executes in 115 clocks, subsequent calls are exe-
            cuted 19 clocks faster...
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _hex2D
          .def       _hex2D; .scl 2; .type 32; .endef
   _hex2D:subq       $0xF8,               %rsp
          movdqa     0x00(%rcx),          %xmm0
          pxor       %xmm1,               %xmm1
          movq       _BNR(%rip),          %rax            # RAX = BNR
          pcmpeqb    %xmm0,               %xmm1
          movq       %r8,                 0x68(%rsp)
          movq       %r9,                 0x70(%rsp)
          movq       %rdx,                0x78(%rsp)
          pmovmskb   %xmm1,               %r8d
          movq       %rbp,                0x80(%rsp)
          movq       %rbx,                0x88(%rsp)
          movdqa     %xmm9,               0x90(%rsp)
          movdqa     %xmm8,               0xA0(%rsp)
          movdqa     %xmm7,               0xB0(%rsp)
          bsf        %r8d,                %r8d            # R14 = 1st zero P_0
          movdqa     %xmm6,               0xC0(%rsp)
          movdqa     %xmm5,               0xD0(%rsp)
          movdqa     %xmm4,               0xE0(%rsp)
          movq       %rcx,                0xF0(%rsp)
          leaq       CVTCUT(%rax),        %rbx            # R13 = LUT cut
          shlq       %r8                                  # RDI = index 0
          movdqa     CVT_60(%rax),        %xmm9           # XM9 = 6060...60
          pand       0x00(%rbx, %r8, 8),  %xmm0           # cut off trailing garbage
          movdqa     CVT_20(%rax),        %xmm4           # XM4 = 2020...20
          movdqa     %xmm0,               %xmm1           # XM1 = TMP_0
          movdqa     CVT_30(%rax),        %xmm5           # XM5 = 3030...30
          pcmpgtb    %xmm9,               %xmm1           # XM1 = mask 0
          movdqa     CVT_39(%rax),        %xmm6           # XM6 = 3939...39
          pand       %xmm4,               %xmm1           # XM1 = diff 0
          movdqa     CVT_40(%rax),        %xmm7           # XM7 = 4040...40
          psubb      %xmm1,               %xmm0           # XM0 = temp res 0
          movdqa     CVT_46(%rax),        %xmm8           # XM8 = 4646...46
          movdqa     %xmm0,               %xmm1           # XM1 = TMP_0
          pcmpgtb    %xmm8,               %xmm1           # XM1 = mask 0
          pand       %xmm0,               %xmm1           # XM1 = cut  0
          psubb      %xmm1,               %xmm0           # XM0 = temp res 0
          movdqa     %xmm0,               %xmm1           # XM1 = TMP_0.0
          movdqa     %xmm0,               %xmm8           # XM8 = TMP_0.1
          pcmpgtb    %xmm6,               %xmm1           # XM1 = mask 0.0
          pcmpgtb    %xmm7,               %xmm8           # XM8 = mask 0.1
          movdqa     CVT_07(%rax),        %xmm7           # XM7 = 0707...07
          pxor       %xmm8,               %xmm1           # XM1 = mask 0
          pand       %xmm0,               %xmm1           # XM1 = cut  0
          psubb      %xmm1,               %xmm0           # XM0 = temp res 0
          pand       %xmm7,               %xmm8           # XM1 = diff 0
          psubb      %xmm8,               %xmm0           # XM0 = temp res 0
          psubb      %xmm5,               %xmm0           # XM0 = res 0
          movl       $0x08,               %ebp            # RBP = words
          pextrw     $0x00,        %xmm0, %ebx            # RBX = LSW
          xorl       %eax,                %eax            # RAX = result
          psrldq     $0x02,               %xmm0           # XM0 = next word
          .p2align   4,,15
        0:movl       %eax,                %r9d            # R09 = speculative result
          movl       %ebx,                %edx            # RDX = word
          movl       %ebx,                %ecx            # RCX = word
          shlq       $0x04,               %r9             # R09 = speculative next digit
          andl       $0xFF,               %edx            # RDX = hi digit
          shrl       $0x08,               %ecx            # RCX = lo digit
          addl       %edx,                %r9d            # R09 = speculative result
          testl      $0x00F0,             %ebx            # dig = valid?
          cmove      %r9d,                %eax            # y =>  use
          pextrw     $0x00,        %xmm0, %r8d            # R08 = next word
          movl       %eax,                %r9d            # R09 = speculative result
          shlq       $0x04,               %r9             # R09 = speculative next digit
          psrldq     $0x02,               %xmm0           # XM0 = next word
          addl       %ecx,                %r9d            # R09 = speculative result
          testl      $0xF000,             %ebx            # dig = valid?
          cmove      %r9d,                %eax            # y =>  use
          movl       %r8d,                %ebx            # RBX = next word
          decl       %ebp                                 # loop_cnt--
          jne        0b
          movq       0x68(%rsp),          %r8
          movq       0x70(%rsp),          %r9
          movq       0x78(%rsp),          %rdx
          movq       0x80(%rsp),          %rbp
          movq       0x88(%rsp),          %rbx
          movdqa     0x90(%rsp),          %xmm9
          movdqa     0xA0(%rsp),          %xmm8
          movdqa     0xB0(%rsp),          %xmm7
          movdqa     0xC0(%rsp),          %xmm6
          movdqa     0xD0(%rsp),          %xmm5
          movdqa     0xE0(%rsp),          %xmm4
          movq       0xF0(%rsp),          %rcx
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            hex2Q    hexadecimal ASCII string -> QWORD
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA source
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   qword (16 digits)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            BUFFER   0               1               2
                     0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF

                    "32 byte entered as 'hex' string."
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            average latency ~ 188 clock cycles (1st call), 166 clock cycles (2nd an up)

            Obviously, the processor logic applies some nifty tricks if the function is called
            repeatedly. While the first call executes in 188 clocks, subsequent calls are exe-
            cuted 22 clocks faster...
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _hex2Q
          .def       _hex2Q; .scl 2; .type 32; .endef
   _hex2Q:subq       $0xF8,               %rsp
          movdqa     0x00(%rcx),          %xmm0
          movdqa     0x10(%rcx),          %xmm2
          pxor       %xmm1,               %xmm1
          pxor       %xmm3,               %xmm3
          movq       _BNR(%rip),          %rax            # RAX = BNR
          pcmpeqb    %xmm0,               %xmm1
          pcmpeqb    %xmm2,               %xmm3
          movq       %r9,                 0x68(%rsp)
          movq       %r8,                 0x70(%rsp)
          movq       %rdx,                0x78(%rsp)
          pmovmskb   %xmm1,               %r8d
          pmovmskb   %xmm3,               %r9d
          movq       %rbp,                0x80(%rsp)
          movq       %rbx,                0x88(%rsp)
          movdqa     %xmm9,               0x90(%rsp)
          movdqa     %xmm8,               0xA0(%rsp)
          bsf        %r8d,                %r8d            # R14 = 1st zero P_0
          bsf        %r9d,                %r9d            # R15 =          P_1
          movdqa     %xmm7,               0xB0(%rsp)
          movdqa     %xmm6,               0xC0(%rsp)
          movdqa     %xmm5,               0xD0(%rsp)
          movdqa     %xmm4,               0xE0(%rsp)
          movq       %rcx,                0xF0(%rsp)
          movl       $0x10,               %ecx
          leaq       CVTCUT(%rax),        %rbx            # R13 = LUT cut
          testq      %r8,                 %r8             # zero in  P_0?
          cmovne     %ecx,                %r9d            # => clear P_1
          shlq       %r8                                  # RDI = index 0
          shlq       %r9                                  # RSI = index 1
          movdqa     CVT_60(%rax),        %xmm9           # XM9 = 6060...60
          movdqa     CVT_20(%rax),        %xmm4           # XM4 = 2020...20
          pand       0x00(%rbx, %r8, 8),  %xmm0           # cut off trailing garbage
          pand       0x00(%rbx, %r9, 8),  %xmm2
          movdqa     CVT_30(%rax),        %xmm5           # XM5 = 3030...30
          movdqa     CVT_39(%rax),        %xmm6           # XM6 = 3939...39
          movdqa     %xmm0,               %xmm1           # XM1 = TMP_0
          movdqa     %xmm2,               %xmm3           # XM2 = TMP_1
          movdqa     CVT_40(%rax),        %xmm7           # XM7 = 4040...40
          movdqa     CVT_46(%rax),        %xmm8           # XM8 = 4646...46
          pcmpgtb    %xmm9,               %xmm1           # XM1 = mask 0
          pcmpgtb    %xmm9,               %xmm3           # XM3 = mask 1
          pand       %xmm4,               %xmm1           # XM1 = diff 0
          pand       %xmm4,               %xmm3           # XM1 = diff 1
          psubb      %xmm1,               %xmm0           # XM0 = temp res 0
          psubb      %xmm3,               %xmm2           # XM2 = temp res 1
          movdqa     %xmm0,               %xmm1           # XM1 = TMP_0
          movdqa     %xmm2,               %xmm3           # XM2 = TMP_1
          pcmpgtb    %xmm8,               %xmm1           # XM1 = mask 0
          pcmpgtb    %xmm8,               %xmm3           # XM3 = mask 1
          pand       %xmm0,               %xmm1           # XM1 = cut  0
          pand       %xmm2,               %xmm3           # XM1 = cut  1
          psubb      %xmm1,               %xmm0           # XM0 = temp res 0
          psubb      %xmm3,               %xmm2           # XM2 = temp res 1
          movdqa     %xmm0,               %xmm1           # XM1 = TMP_0.0
          movdqa     %xmm2,               %xmm3           # XM2 = TMP_1.0
          movdqa     %xmm0,               %xmm8           # XM8 = TMP_0.1
          movdqa     %xmm2,               %xmm9           # XM9 = TMP_1.1
          pcmpgtb    %xmm6,               %xmm1           # XM1 = mask 0.0
          pcmpgtb    %xmm7,               %xmm8           # XM8 = mask 0.1
          pcmpgtb    %xmm6,               %xmm3           # XM3 = mask 1.0
          pcmpgtb    %xmm7,               %xmm9           # XM9 = mask 1.1
          movdqa     CVT_07(%rax),        %xmm7           # XM7 = 0707...07
          pxor       %xmm8,               %xmm1           # XM1 = mask 0
          pxor       %xmm9,               %xmm3           # XM3 = mask 1
          pand       %xmm0,               %xmm1           # XM1 = cut  0
          pand       %xmm2,               %xmm3           # XM1 = cut  1
          psubb      %xmm1,               %xmm0           # XM0 = temp res 0
          psubb      %xmm3,               %xmm2           # XM2 = temp res 1
          pand       %xmm7,               %xmm8           # XM1 = diff 0
          pand       %xmm7,               %xmm9           # XM1 = diff 1
          psubb      %xmm8,               %xmm0           # XM0 = temp res 0
          psubb      %xmm9,               %xmm2           # XM2 = temp res 1
          psubb      %xmm5,               %xmm0           # XM0 = res 0
          psubb      %xmm5,               %xmm2           # XM2 = res 1
          xorl       %eax,                %eax            # RAX = result
          pextrw     $0x00,        %xmm2, %ebx
          movl       $0x08,               %ebp            # RBP = words
          psrldq     $0x02,               %xmm2
          .p2align   4,,15
        0:movq       %rax,                %r9
          movl       %ebx,                %edx
          movl       %ebx,                %ecx
          shlq       $0x04,               %r9
          andl       $0xFF,               %edx
          shrl       $0x08,               %ecx
          addq       %rdx,                %r9
          testl      $0x00F0,             %ebx
          cmove      %r9,                 %rax
          pextrw     $0x00,        %xmm2, %r8d
          movq       %rax,                %r9
          shlq       $0x04,               %r9
          psrldq     $0x02,               %xmm2
          addq       %rcx,                %r9
          testl      $0xF000,             %ebx
          cmove      %r9,                 %rax
          movl       %r8d,                %ebx
          decl       %ebp
          jne        0b
          pextrw     $0x00,        %xmm0, %ebx
          movl       $0x08,               %ebp            # RBP = words
          psrldq     $0x02,               %xmm0
          .p2align   4,,15
        1:movq       %rax,                %r9
          movl       %ebx,                %edx
          movl       %ebx,                %ecx
          shlq       $0x04,               %r9
          andl       $0xFF,               %edx
          shrl       $0x08,               %ecx
          addq       %rdx,                %r9
          testl      $0x00F0,             %ebx
          cmove      %r9,                 %rax
          pextrw     $0x00,        %xmm0, %r8d
          movq       %rax,                %r9
          shlq       $0x04,               %r9
          psrldq     $0x02,               %xmm0
          addq       %rcx,                %r9
          testl      $0xF000,             %ebx
          cmove      %r9,                 %rax
          movl       %r8d,                %ebx
          decl       %ebp
          jne        1b
          movq       0x68(%rsp),          %r9
          movq       0x70(%rsp),          %r8
          movq       0x78(%rsp),          %rdx
          movq       0x80(%rsp),          %rbp
          movq       0x88(%rsp),          %rbx
          movdqa     0x90(%rsp),          %xmm9
          movdqa     0xA0(%rsp),          %xmm8
          movdqa     0xB0(%rsp),          %xmm7
          movdqa     0xC0(%rsp),          %xmm6
          movdqa     0xD0(%rsp),          %xmm5
          movdqa     0xE0(%rsp),          %xmm4
          movq       0xF0(%rsp),          %rcx
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                              D E C I M A L
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            D2dec    Convert dword to decimal string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Q2dec    Convert qword to decimal string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   DWORD to convert
               RDX   EA target
               R08   Sfsd
                     |||+-----> 00        default = 20
                     ||         01...14   digits
                     ||+----> 00          unsigned
                     ||       xx          signed
                     |+---> 00            default = 0
                     |      01...14       pseudo FP (3, 6, 9, 12, 15, 18, 20)
                     +--> 00              separator blank   FP dot    (default)
                          2C                        comma      dot    (XOR 02)
                          2E                        dot        comma  (XOR 02)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            BUFFER   0               1
                     0123456789ABCDEF0123456789ABCDEF

                     s_X_XXX_XXX_XXXzzzzzzzzzzzzzzzzz
                     s_xX_XXX_XXX_XXX_XXX_XXX_XXXzzzz
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            average latency: D2dec 152 clock cycles  0 FP
                                   171               3 FP
                                   171               6 FP
                                   172               9 FP

            average latency: Q2dec 301 clock cycles  0 FP
                                   317               3 FP
                                   317               6 FP
                                   319               9 FP
                                   327              12 FP
                                   374              15 FP
                                   330              18 FP
                                   330              20 FP
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _D2dec
          .def       _D2dec; .scl 2; .type 32; .endef
   _D2dec:subq       $0xF8,               %rsp
          movq       $0x0A,               0x80(%rsp)
          movslq     %ecx,                %rcx            # RCX = sign extended
          movl       $0x0A,               %eax            # RAX = 10 digits
          jmp        0f
          .p2align   4,,15
          .globl     _Q2dec
          .def       _Q2dec; .scl 2; .type 32; .endef
   _Q2dec:subq       $0xF8,               %rsp
          movq       $0x14,               0x80(%rsp)
          movl       $0x14,               %eax            # RAX = 20 digits
        0:movq       %r15,                0x88(%rsp)
          movq       %r14,                0x90(%rsp)
          movq       %r13,                0x98(%rsp)
          movq       %r12,                0xA0(%rsp)
          movq       %r11,                0xA8(%rsp)
          movq       %r10,                0xB0(%rsp)
          movq       %rbp,                0xB8(%rsp)
          movq       %rsi,                0xC0(%rsp)
          movq       %rdi,                0xC8(%rsp)
          movq       %rbx,                0xD0(%rsp)
          movq       %r9,                 0xD8(%rsp)
          movq       %r8,                 0xE0(%rsp)
          movq       %rdx,                0xE8(%rsp)
          movq       %rcx,                0xF0(%rsp)
          movq       %r8,                 %r10            # R10 = flags
          movl       %eax,                %r11d           # R11 = max digits
          movq       %rcx,                %r15            # R15 = number
          movq       %rdx,                %rdi            # RDI = EA_TARGET
          movq       %r8,                 %r9             # R09 = flags
          movq       $0x20,               %r13            # R13 = ' '
          shrq       $0x10,               %r10            # R10 = 0000SeFP
          negq       %r15                                 # RAX =2's complement
          movl       $0x2020,             %ebx            # RBX = unsigned
          movl       $0x202D,             %edx            # RDX =   signed
          shrq       $0x18,               %r9             # R09 = separator
          cmove      %r13,                %r9             #  =>   ' ' if zero
          andq       $0xFF,               %r10            # R10 = digits FP
          testq      $0x0000FF00,         %r8             # signed?
          cmove      %rcx,                %r15            # R15 = RCX
          cmove      %ebx,                %edx            # RDX = '__'
          testq      %rcx,                %rcx            # input negative?
          cmovs      %r15,                %rcx            # RCX = 2's complement
          cmovs      %edx,                %ebx            # RBX = '-_'
          andq       $0xFF,               %r8             # R08 = digits INT
          cmove      %r11,                %r8             # use max
          movl       %ecx,                %esi            # RSI = 32 bit
          cmpq       %r11,                %r10            # digit count valid?
          cmova      %r11,                %r10            # use max
          movabsq    $0x8AC7230489E80000, %r12            # R12 = 10e19
          cmpq       %r11,                %r8             # digit count valid?
          cmova      %r11,                %r8             # use max
          movl       %ebx,                0x00(%rdi)      # store sign (or blank)
          movq       %rcx,                %rax            # RAX = number
          movq       $0x30,               %r14            # R14 = '0'
          movq       $0x20,               %r15            # R15 = ' '
          xchg       %r13,                %r9             # R09 = ' ', R13 = separator
          cmpl       $0x0A,               0x80(%rsp)      # D2dec()?
          cmove      %rsi,                %rcx            # reduce to 32 bit
          je         d2d
          xorl       %ebx,                %ebx            # RBX = 0
          xorl       %eax,                %eax            # RAX = 0
          cmpq       %r12,                %rcx            # digit 1
          setae      %bl
          cmovae     %r14,                %r15
          cmovae     %r12,                %rax
          movabsq    $0x000049C97747490F, %rdx
          addl       %r15d,               %ebx
          subq       %rax,                %rcx
          movb       $0x20,               0x24(%rsp)
          movb       %bl,                 0x25(%rsp)
          movq       %rcx,                %rax            # digit 2
          shrq       $0x12,               %rax
          mulq       %rdx
          movabsq    $0x0DE0B6B3A7640000, %rax
          shrq       $0x18,               %rdx
          imulq      %rdx,                %rax
          movl       %edx,                %ebx
          subq       %rax,                %rcx
          testl      %edx,                %edx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          movabsq    $0x00005C3BD5191B53, %rdx
          addl       %r15d,               %ebx
          movq       %rcx,                %rax            # digit 3
          movb       %bl,                 0x26(%rsp)
          movb       %r9b,                0x27(%rsp)
          shrq       $0x11,               %rax
          mulq       %rdx
          movabsq    $0x016345785D8A0000, %rax
          shrq       $0x16,               %rdx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imulq      %rdx,                %rax
          movl       %edx,                %ebx
          subq       %rax,                %rcx
          movabsq    $0x39A5652FB1137857, %rdx
          addl       %r15d,               %ebx
          movq       %rcx,                %rax            # digit 4
          movb       %bl,                 0x28(%rsp)
          mulq       %rdx
          movabsq    $0x002386F26FC10000, %rax
          shrq       $0x33,               %rdx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imulq      %rdx,                %rax
          movl       %edx,                %ebx
          subq       %rax,                %rcx
          movabsq    $0x00024075F3DCEAC3, %rdx
          addl       %r15d,               %ebx
          movq       %rcx,                %rax            # digit 5
          movb       %bl,                 0x29(%rsp)
          shrq       $0x0F,               %rax
          mulq       %rdx
          movabsq    $0x00038D7EA4C68000, %rax
          shrq       $0x14,               %rdx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imulq      %rdx,                %rax
          movl       %edx,                %ebx
          subq       %rax,                %rcx
          movabsq    $0x0B424DC35095CD81, %rdx
          addl       %r15d,               %ebx
          movq       %rcx,                %rax            # digit 6
          movb       %bl,                 0x2A(%rsp)
          movb       %r9b,                0x2B(%rsp)
          mulq       %rdx
          movabsq    $0x00005AF3107A4000, %rax
          shrq       $0x2A,               %rdx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imulq      %rdx,                %rax
          movl       %edx,                %ebx
          subq       %rax,                %rcx
          movabsq    $0x384B84D092ED0385, %rdx
          addl       %r15d,               %ebx
          movq       %rcx,                %rax            # digit 7
          movb       %bl,                 0x2C(%rsp)
          mulq       %rdx
          movabsq    $0x000009184E72A000, %rax
          shrq       $0x29,               %rdx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imulq      %rdx,                %rax
          movl       %edx,                %ebx
          subq       %rax,                %rcx
          movabsq    $0x232F33025BD42233, %rdx
          addl       %r15d,               %ebx
          movq       %rcx,                %rax            # digit 8
          movb       %bl,                 0x2D(%rsp)
          mulq       %rdx
          movabsq    $0x000000E8D4A51000, %rax
          shrq       $0x25,               %rdx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imulq      %rdx,                %rax
          movl       %edx,                %ebx
          subq       %rax,                %rcx
          movabsq    $0xAFEBFF0BCB24AAFF, %rdx
          addl       %r15d,               %ebx
          movq       %rcx,                %rax            # digit 9
          movb       %bl,                 0x2E(%rsp)
          movb       %r9b,                0x2F(%rsp)
          mulq       %rdx
          movabsq    $0x000000174876E800, %rax
          shrq       $0x24,               %rdx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imulq      %rdx,                %rax
          movl       %edx,                %ebx
          subq       %rax,                %rcx
          movabsq    $0xDBE6FECEBDEDD5BF, %rdx
          addl       %r15d,               %ebx
          movq       %rcx,                %rax            # digit 10
          movb       %bl,                 0x30(%rsp)
          mulq       %rdx
          movabsq    $0x00000002540BE400, %rax
          shrq       $0x21,               %rdx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imulq      %rdx,                %rax
          movl       %edx,                %ebx
          subq       %rax,                %rcx
          addl       %r15d,               %ebx
          movq       %rcx,                %rax            # digit 10
          movb       %bl,                 0x31(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            entry point D2dec()
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      d2d:shrq       $0x09,               %rax            # digit (1)1
          movl       $0x00044B83,         %edx
          andq       $0xFF,               %r10            # R10 = FP
          mull       %edx
          shrl       $0x07,               %edx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imulq      $0x3B9ACA00,         %rdx, %rax
          movl       %edx,                %ebx
          subq       %rax,                %rcx
          movl       $0x55E63B89,         %edx
          addl       %r15d,               %ebx
          movl       %ecx,                %eax            # digit (1)2
          movb       %bl,                 0x32(%rsp)
          movb       %r9b,                0x33(%rsp)
          mull       %edx
          shrl       $0x19,               %edx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imull      $0x05F5E100,         %edx, %eax
          movl       %edx,                %ebx
          subl       %eax,                %ecx
          movl       $0x6B5FCA6B,         %edx
          addl       %r15d,               %ebx
          movl       %ecx,                %eax            # digit (1)3
          movb       %bl,                 0x34(%rsp)
          mull       %edx
          shrl       $0x16,               %edx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imull      $0x00989680,         %edx, %eax
          movl       %edx,                %ebx
          subl       %eax,                %ecx
          movl       $0x431BDE83,         %edx
          addl       %r15d,               %ebx
          movl       %ecx,                %eax            # digit (1)4
          movb       %bl,                 0x35(%rsp)
          mull       %edx
          shrl       $0x12,               %edx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imull      $0x000F4240,         %edx, %eax
          movl       %edx,                %ebx
          subl       %eax,                %ecx
          movl       $0x0A7C5AC5,         %edx
          addl       %r15d,               %ebx
          movl       %ecx,                %eax            # digit (1)5
          movb       %bl,                 0x36(%rsp)
          shrl       $0x05,               %eax
          movb       %r9b,                0x37(%rsp)
          mull       %edx
          shrl       $0x07,               %edx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imull      $0x000186A0,         %edx, %eax
          movl       %edx,                %ebx
          subl       %eax,                %ecx
          movl       $0xD1B71759,         %edx
          addl       %r15d,               %ebx
          movl       %ecx,                %eax            # digit (1)6
          movb       %bl,                 0x38(%rsp)
          mull       %edx
          shrl       $0x0D,               %edx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imull      $0x00002710,         %edx, %eax
          movl       %edx,                %ebx
          subl       %eax,                %ecx
          movl       $0x10624DD3,         %edx
          addl       %r15d,               %ebx
          movl       %ecx,                %eax            # digit (1)7
          movb       %bl,                 0x39(%rsp)
          mull       %edx
          shrl       $0x06,               %edx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          imull      $0x03E8,             %edx, %eax
          movl       %edx,                %ebx
          subl       %eax,                %ecx
          movl       $0x51EB851F,         %edx
          addl       %r15d,               %ebx
          movl       $0x64,               %esi            # digit (1)8
          movl       %ecx,                %eax
          movb       %bl,                 0x3A(%rsp)
          movb       %r9b,                0x3B(%rsp)
          mull       %edx
          shrl       $0x05,               %edx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          movl       %edx,                %eax
          movl       %edx,                %ebx
          movl       $0xCCCCCCCD,         %edx
          imull      %esi,                %eax
          addl       %r15d,               %ebx
          subl       %eax,                %ecx
          movb       %bl,                 0x3C(%rsp)
          movl       %ecx,                %eax            # RBX = digits (1)9 and 20/10
          mull       %edx
          shrl       $0x03,               %edx
          cmovne     %r14,                %r15
          cmovne     %r13,                %r9
          movl       %edx,                %ebx
          leal       (%rdx, %rdx, 4),     %edx
          addl       %edx,                %edx
          subl       %edx,                %ecx
          addl       %r15d,               %ebx
          addl       %r14d,               %ecx
          pxor       %xmm0,               %xmm0
          pxor       %xmm1,               %xmm1
          movb       %bl,                 0x3D(%rsp)
          movb       %cl,                 0x3E(%rsp)
          movb       $0x00,               0x3F(%rsp)
          movdqa     %xmm0,               0x40(%rsp)
          movdqa     %xmm1,               0x50(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            insert pseudo FP
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq       $0x2C,               %r9        # R09 = FP separator
          leaq       toffQ(%rip),         %r14       # R14 = table Q2dec()
          cmpq       $0x20,               %r13       # R13 = blank?
          cmove      %r9,                 %r13       # =>    use default
          movl       0x00(%r14, %r8, 4),  %r15d      # R15 = offset P_0
          testq      %r10,                %r10       # FP  = 0?
          je         d2e
          xorq       $0x02,               %r13       # R13 = FP separator
          movl       0x24(%rsp),          %eax       # RAX = ?12_
          movl       0x28(%rsp),          %ebx       # RBX = 345_
          movl       0x2C(%rsp),          %ecx       # RCX = 678_
          movl       0x30(%rsp),          %edx       # RDX = 9AB_
          movl       0x34(%rsp),          %esi       # RSI = CDE_
          movl       0x38(%rsp),          %ebp       # RBP = FGH_
          movl       0x3C(%rsp),          %r12d      # R12 = IJKz
          jmp        *jt0(,%r10, 8)
          /*
            ~~~~~~~~~~~~~~~~
             3 digits
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      d03:andl       $0x00FFFFFF,         %ebp       # RBP = 00DDDDDD
          shlq       $0x18,               %r13       # R13 = fs000000
          movq       $0x1A,               %r10       # R10 = offset
          orl        $0x00100000,         %ebp       # ' ' => '0'
          orl        $0x00001010,         %r12d
          addl       %r13d,               %ebp       # RBP = fsDDDDDD
          cmpq       $0x1A,               %r15       # less than 4 digits?
          cmova      %r10,                %r15       # =>   0.fff
          movl       %ebp,                0x38(%rsp) # store proper content
          movl       %r12d,               0x3C(%rsp)
          jmp        d2e
          /*
            ~~~~~~~~~~~~~~~~
             6 digits
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      d06:andl       $0x00FFFFFF,         %esi       # RSI = 00DDDDDD
          shlq       $0x18,               %r13       # R13 = fs000000
          movq       $0x16,               %r10       # R10 = offset
          orl        $0x00100000,         %esi       # ' ' => '0'
          orl        $0x00101010,         %ebp
          orl        $0x00001010,         %r12d
          addl       %r13d,               %esi       # RSI = fsDDDDDD
          cmpq       $0x16,               %r15       # below 7 digits?
          cmova      %r10,                %r15       #  =>   0.ffffff
          movl       %esi,                0x34(%rsp) # store proper content
          movl       %ebp,                0x38(%rsp)
          movl       %r12d,               0x3B(%rsp)
          jmp        d2e
          /*
            ~~~~~~~~~~~~~~~~
             9 digits
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      d09:andl       $0x00FFFFFF,         %edx       # RDX = 00DDDDDD
          shlq       $0x18,               %r13       # R13 = fs000000
          movq       $0x12,               %r10       # R10 = offset
          orl        $0x00100000,         %edx       # ' ' => '0'
          orl        $0x00101010,         %esi
          orl        $0x00101010,         %ebp
          orl        $0x00001010,         %r12d
          addl       %r13d,               %edx       # RDX = fsDDDDDD
          cmpq       $0x12,               %r15       # below 10 digits?
          cmova      %r10,                %r15       #  =>   0.fffffffff
          movl       %edx,                0x30(%rsp) # store proper content
          movl       %esi,                0x34(%rsp)
          movl       %ebp,                0x37(%rsp)
          movl       %r12d,               0x3A(%rsp)
          movw       $0x00,               0x3E(%rsp)
          jmp        d2e
          /*
            ~~~~~~~~~~~~~~~~
            12 digits
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      d12:andl       $0x00FFFFFF,         %ecx       # RCX = 00DDDDDD
          shlq       $0x18,               %r13       # R13 = fs000000
          movq       $0x0E,               %r10       # R10 = offset
          orl        $0x00100000,         %ecx       # ' ' => '0'
          orl        $0x00101010,         %edx
          orl        $0x00101010,         %esi
          orl        $0x00101010,         %ebp
          orl        $0x00001010,         %r12d
          addl       %r13d,               %ecx       # RCX = fsDDDDDD
          cmpq       $0x0E,               %r15       # below 13 digits?
          cmova      %r10,                %r15       #  =>   0.ffffffffffff
          movl       %ecx,                0x2C(%rsp) # store proper content
          movl       %edx,                0x30(%rsp)
          movl       %esi,                0x33(%rsp)
          movl       %ebp,                0x36(%rsp)
          movl       %r12d,               0x39(%rsp)
          movb       $0x00,               0x3D(%rsp)
          movw       $0x00,               0x3E(%rsp)
          jmp        d2e
          /*
            ~~~~~~~~~~~~~~~~
            15 digits
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      d15:andl       $0x00FFFFFF,         %ebx       # RBX = 00DDDDDD
          shlq       $0x18,               %r13       # R13 = fs000000
          movq       $0x0A,               %r10       # R10 = offset
          orl        $0x00100000,         %ebx       # ' ' => '0'
          orl        $0x00101010,         %ecx
          orl        $0x00101010,         %edx
          orl        $0x00101010,         %esi
          orl        $0x00101010,         %ebp
          orl        $0x00001010,         %r12d
          addl       %r13d,               %ebx       # RBX = fsDDDDDD
          cmpq       $0x0A,               %r15       # below 16 digits?
          cmova      %r10,                %r15       #  =>   0.fffffffffffffff
          movl       %ebx,                0x28(%rsp) # store proper content
          movl       %ecx,                0x2C(%rsp)
          movl       %edx,                0x2F(%rsp)
          movl       %esi,                0x32(%rsp)
          movl       %ebp,                0x35(%rsp)
          movq       %r12,                0x38(%rsp)
          jmp        d2e
          /*
            ~~~~~~~~~~~~~~~~
            18 digits
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      d18:andl       $0x00FFFFFF,         %eax       # RAX = 00DDDDDD
          shlq       $0x18,               %r13       # R13 = 0000fs00
          movq       $0x02,               %r10       # R10 = offset
          orl        $0x00100000,         %eax       # ' ' => '0'
          orl        $0x00101010,         %ebx
          orl        $0x00101010,         %ecx
          orl        $0x00101010,         %edx
          orl        $0x00101010,         %esi
          orl        $0x00101010,         %ebp
          orl        $0x00001010,         %r12d
          addl       %r13d,               %eax       # RAX = fsDDDDDD
          cmpq       $0x06,               %r15       # below 19 digits?
          cmova      %r10,                %r15       #  =>   0.fffffffffffffff
          movl       %eax,                0x24(%rsp) # store proper content
          movl       %ebx,                0x28(%rsp)
          movl       %ecx,                0x2B(%rsp)
          movl       %edx,                0x2E(%rsp)
          movl       %esi,                0x31(%rsp)
          movl       %ebp,                0x34(%rsp)
          movq       %r12,                0x37(%rsp)
          jmp        d2e
          /*
            ~~~~~~~~~~~~~~~~
            20 digits
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      d20:andl       $0x00FFFF00,         %eax       # RAX = ?DDi
          shlq       $0x08,               %r13       # R13 = 0000fs00
          movq       $0x04,               %r15       # R15 = offset
          orl        $0x00101000,         %eax       # ' ' => '0'
          orl        $0x00101010,         %ebx
          orl        $0x00101010,         %ecx
          orl        $0x00101010,         %edx
          shll       $0x08,               %eax       # RAX = DD?0
          addq       $0x30,               %r13       # R13 = zz0f
          orl        $0x00101010,         %esi
          orl        $0x00101010,         %ebp
          orl        $0x00001010,         %r12d
          addl       %r13d,               %eax       # RAX = 0fDD
          movl       %eax,                0x24(%rsp) # store proper content
          movl       %ebx,                0x28(%rsp)
          movl       %ecx,                0x2B(%rsp)
          movl       %edx,                0x2E(%rsp)
          movl       %esi,                0x31(%rsp)
          movl       %ebp,                0x34(%rsp)
          movq       %r12,                0x37(%rsp)
          jmp        d2e
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            cut to requested digits
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      d2e:movdqu     0x20(%rsp, %r15),    %xmm0
          movdqu     0x30(%rsp, %r15),    %xmm1
          xorl       %eax,                %eax
          movdqu     %xmm0,               0x02(%rdi)
          movdqu     %xmm1,               0x12(%rdi)
          movq       0x88(%rsp),          %r15
          movq       0x90(%rsp),          %r14
          movq       0x98(%rsp),          %r13
          movq       0xA0(%rsp),          %r12
          movq       0xA8(%rsp),          %r11
          movq       0xB0(%rsp),          %r10
          movq       0xB8(%rsp),          %rbp
          movq       0xC0(%rsp),          %rsi
          movq       0xC8(%rsp),          %rdi
          movq       0xD0(%rsp),          %rbx
          movq       0xD8(%rsp),          %r9
          movq       0xE0(%rsp),          %r8
          movq       0xE8(%rsp),          %rdx
          movq       0xF0(%rsp),          %rcx
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            dec2D    decimal ASCII string -> DWORD
            dec2Q    decimal ASCII string -> QWORD
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA source
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   qword (signed if leading "-")
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            dec2*() scans for the string end and works backwards. The last 10 or 20 digits are
            taken as parts of a 64 bit number. Surplus digits are ignored, one leading sign is
            recognised. If a sign was detected, the dword is negated before returning it.

            CAUTION: Only unsigned numbers can have 20 digits, while signed numbers always are
                     19 or less digits wide. A sign in front of a 20 digit number -forces- the
                     negation of a number with set sign bit and returns an invalid result.

            CAUTION: dec2D() cuts off the most significant digits if a result exceeds 32 bit.
                     The returned value is the portion of the number fitting into 32 bit. This
                     applies to all 32 bit numbers exceeding 4,294,967,595.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            average latency 150...350 clock cycles (depending on conditional jumps)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl     _dec2D
          .def       _dec2D; .scl 2; .type 32; .endef
   _dec2D:movl       $0x0A,               %eax            # RAX = 10 digits
          jmp        0f
          .p2align   4,,15
          .globl     _dec2Q
          .def       _dec2Q; .scl 2; .type 32; .endef
          .p2align   4,,15
   _dec2Q:movl       $0x14,               %eax            # RAX = 20 digits
        0:subq       $0xF8,               %rsp
          movdqu     0x00(%rcx),          %xmm2
          movdqu     0x00(%rcx),          %xmm0
          movdqu     0x10(%rcx),          %xmm1
          movdqa     %xmm4,               0x60(%rsp)
          movdqa     %xmm5,               0x70(%rsp)
          movdqa     %xmm0,               %xmm3
          movdqa     %xmm1,               %xmm4
          pxor       %xmm5,               %xmm5
          movq       %r15,                0x88(%rsp)
          movq       %r14,                0x90(%rsp)
          movq       %r13,                0x98(%rsp)
          movq       %r12,                0xA0(%rsp)
          movq       %r11,                0xA8(%rsp)
          movq       %r10,                0xB0(%rsp)
          movq       %rbp,                0xB8(%rsp)
          movq       _BNR(%rip),          %r12
          pcmpeqb    %xmm5,               %xmm3           # detect zeroes
          pcmpeqb    %xmm5,               %xmm4
          pcmpeqb    CVT_2D(%r12),        %xmm2           # detect sign
          pmovmskb   %xmm3,               %r14d
          pmovmskb   %xmm4,               %r15d
          leaq       CVTCUT(%r12),        %r11
          movl       $0x10,               %ebp
          bsf        %r14d,               %r14d
          bsf        %r15d,               %r15d
          movq       %rsi,                0xC0(%rsp)
          movq       %rdi,                0xC8(%rsp)
          movq       %rbx,                0xD0(%rsp)
          movq       %r9,                 0xD8(%rsp)
          movq       %r8,                 0xE0(%rsp)
          movq       %rdx,                0xE8(%rsp)
          movq       %rcx,                0xF0(%rsp)
          testq      %r14,                %r14            # any digits?
          cmovne     %ebp,                %r15            # => clear XMM1
          movl       %eax,                %esi            # RSI = digits
          shlq       %r14                                 # R14 * 2
          shlq       %r15                                 # R15 * 2
          leaq       0x20(%rsp),          %rdi            # RDI = EA string
          xorl       %ebx,                %ebx            # RBX = result
          pand       0x00(%r11, %r14, 8), %xmm0           # cut off trailing garbage
          pand       0x00(%r11, %r15, 8), %xmm1
          movd       %xmm2,               %r10            # R10 = sign flag
          shrq       %r14                                 # R14 / 2
          shrq       %r15                                 # R15 / 2
          xorq       %r13,                %r13            # R13 = 0
          decq       %rdi                                 # RDI = last digit
          testq      %r14,                %r14            # no zeroes?
          cmove      %ebp,                %r14d           # => 16 byte!
          decl       %r13d                                # R13 = FFFF FFFF
          andq       $0x0F,               %r15            # remove bits 31...04
          psubb      CVT_30(%r12),        %xmm0           # reduce to number
          psubb      CVT_30(%r12),        %xmm1
          movdqa     %xmm0,               0x20(%rsp)
          movdqa     %xmm1,               0x30(%rsp)
          addq       %r14,                %r15            # R15 = char count
          movl       $0x01,               %ebp            # EBP = pow10
          movl       %eax,                %r14d           # R13 = digits
          xorq       %r8,                 %r8
          addq       %r15,                %rdi            # RDI = EA string end
          .p2align 4,,15
        1:movzb      0x00(%rdi),          %eax            # RAX = digit
          movzb      0x00(%rdi),          %ecx            # RAX = digit
          decq       %r15                                 # size--
          js         2f
          decq       %rdi                                 # RDI = next digit
          leaq       0x00(%rbp, %rbp, 4), %r12            # R12 = RBP * 5
          cmpl       $0x09,               %eax            # valid?
          ja         1b
          mulq       %rbp                                 # digit * pow10
          addq       %rax,                %rbx            # result + n*pow10
          decq       %r14                                 # digit_cnt--
          je         2f
          leaq       0x00(%r12, %r12),    %rbp            # EBP = next pow10
          jmp        1b
          .p2align 4,,15
        2:cmpl       $0x09,               %ecx            # RCX = digit?
          cmova      %r8d,                %ecx            #  =>   zero
          movq       %rbx,                %r14            # R14 = result
          movq       %rbx,                %r15            # R15 = result
          movq       %rbx,                %rax            # EAX = result
          imulq      %rbp,                %rcx            # RCX = last pow10
          negq       %r14                                 # R14 = 2's complement
          testq      %r10,                %r10            #       sign detected?
          cmovne     %r14,                %rax            #  =>   2's complement
          cmpl       $0x0A,               %esi            #       below 11 digits?
          cmova      %rax,                %r13            #  =>   no correction
          subq       %rcx,                %r15            #       auto correction
          cmpq       %r13,                %rax            #       > 32 bit?
          cmova      %r15,                %rax            #  =>   reduce to 32 bit
          movq       0x60(%rsp),          %xmm4
          movq       0x70(%rsp),          %xmm5
          movq       0x88(%rsp),          %r15
          movq       0x90(%rsp),          %r14
          movq       0x98(%rsp),          %r13
          movq       0xA0(%rsp),          %r12
          movq       0xA8(%rsp),          %r11
          movq       0xB0(%rsp),          %r10
          movq       0xB8(%rsp),          %rbp
          movq       0xC0(%rsp),          %rsi
          movq       0xC8(%rsp),          %rdi
          movq       0xD0(%rsp),          %rbx
          movq       0xD8(%rsp),          %r9
          movq       0xE0(%rsp),          %r8
          movq       0xE8(%rsp),          %rdx
          movq       0xF0(%rsp),          %rcx
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                       M I S C E L L A N E O U O S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            prime    test if input is a prime number
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   QWORD to check
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 0000 0000   no prime 
                     0000 0000 0000 0001   is prime 
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl     _prime
          .def       _prime; .scl 2; .type 32; .endef
   _prime:subq       $0xF8,               %rsp
          movq       %rcx,                %rax            # RAX = number
          movq       %r8,                 0xE0(%rsp)
          movq       %rdx,                0xE8(%rsp)
          movq       %rcx,                0xF0(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            filter 1, 2 and 3
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          cmpq       $0x01,               %rax
          jbe        NoPrm                                # 1, no
          cmpq       $0x04,               %rax
          jb         IsPrm                                # first prime numbers
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            prepare
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq       %rax,                %r8             # RBX = number (test)
          movq       %rax,                %rcx            # RCX = number (storage)
          xorq       %rdx,                %rdx
          shrq       %r8                                  # start with half
          ja         NoPrm                                # is even
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            check, if prime
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        0:divq       %r8
          testq      %rdx,                %rdx            # remainder = 0?
          je         NoPrm
          subq       $0x02,               %r8             # skip even numbers
          movq       %rcx,                %rax            # restore number
          xorq       %rdx,                %rdx
          cmpq       $0x03,               %r8
          ja         0b                                   # one more try...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            set return value
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    IsPrm:movl       $0x01,               %eax
          jmp        1f
          .p2align 4,,15
    NoPrm:xorl       %eax,                %eax
        1:movq       0xE0(%rsp),          %r8
          movq       0xE8(%rsp),          %rdx
          movq       0xF0(%rsp),          %rcx
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm      _BNR,                8, 3
