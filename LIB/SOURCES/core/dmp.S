          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                       H E X   D U M P S   A N D   E D I T O R S   (C) ST-Open 2012
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
            ph2s     plain hex to string (formatted)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA input
               RDX   EA output
               R08   paragraphs to convert
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Input and output buffer -must not- be the same. If so, no conversion is done. Both
            buffers must begin at a paragraph boundary - if either of both addresses ends with
            something else than zero, no conversion is done.

            0               1               2               3
            0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123
            xx xx xx xx xx xx xx xx xx xx xx xx xx xx xx xx   CL   (CLCL for full pages)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            average latency ~ 15 clock cycles + ~ 40 clock cycles per converted paragraph
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl     _ph2s
          .def       _ph2s; .scl 2; .type 32; .endef
    _ph2s:subq       $0xF8,               %rsp
          movq       _BNR(%rip),          %rax
          movdqa     %xmm4,               0x90(%rsp)
          movdqa     %xmm5,               0xA0(%rsp)
          movdqa     %xmm6,               0xB0(%rsp)
          movdqa     %xmm7,               0xC0(%rsp)
          movq       %r9,                 0xD8(%rsp)
          movq       %r8,                 0xE0(%rsp)
          movq       %rdx,                0xE8(%rsp)
          movq       %rcx,                0xF0(%rsp)
          movdqa     CVT_0F(%rax),        %xmm4           # XM4 = 0F0F0F...0F
          movdqa     CVT_07(%rax),        %xmm5           # XM5 = 070707...07
          movdqa     CVT_09(%rax),        %xmm6           # XM3 = 090909...09
          movdqa     CVT_30(%rax),        %xmm7           # XM7 = 303030...30
          movq       $0x10,               %r9             # R09 = page_cnt
          .p2align 4,,15
        0:decq       %r8                                  # para_cnt--
          js         2f
          movq       0x00(%rcx),          %xmm0           # read input
          movq       0x08(%rcx),          %xmm2
          movdqa     %xmm0,               %xmm1           # copy
          movdqa     %xmm2,               %xmm3
          psrlq      $0x04,               %xmm0           # shift right
          psrlq      $0x04,               %xmm2
          punpcklbw  %xmm1,               %xmm0           # extract
          punpcklbw  %xmm3,               %xmm2
          pand       %xmm4,               %xmm0           # reduce to nibbles
          pand       %xmm4,               %xmm2
          movdqa     %xmm0,               %xmm1           # copy for correction
          movdqa     %xmm2,               %xmm3
          paddb      %xmm7,               %xmm0           # convert
          paddb      %xmm7,               %xmm2
          pcmpgtb    %xmm6,               %xmm1           # mask A...Fs => FFs
          pcmpgtb    %xmm6,               %xmm3
          pand       %xmm5,               %xmm1           # reduce FFs to 07
          pand       %xmm5,               %xmm3
          paddb      %xmm1,               %xmm0           # A...F correction
          paddb      %xmm3,               %xmm2
          pextrw     $0x07,        %xmm0, 0x00(%rdx)      # store
          movb       $0x20,               0x02(%rdx)
          pextrw     $0x07,        %xmm2, 0x18(%rdx)
          movb       $0x20,               0x1A(%rdx)
          pextrw     $0x06,        %xmm0, 0x03(%rdx)
          movb       $0x20,               0x05(%rdx)
          pextrw     $0x06,        %xmm2, 0x1B(%rdx)
          movb       $0x20,               0x1D(%rdx)
          pextrw     $0x05,        %xmm0, 0x06(%rdx)
          movb       $0x20,               0x08(%rdx)
          pextrw     $0x05,        %xmm2, 0x1E(%rdx)
          movb       $0x20,               0x20(%rdx)
          pextrw     $0x04,        %xmm0, 0x09(%rdx)
          movb       $0x20,               0x0B(%rdx)
          pextrw     $0x04,        %xmm2, 0x21(%rdx)
          movb       $0x20,               0x23(%rdx)
          pextrw     $0x03,        %xmm0, 0x0C(%rdx)
          movb       $0x20,               0x0E(%rdx)
          pextrw     $0x03,        %xmm2, 0x24(%rdx)
          movb       $0x20,               0x26(%rdx)
          pextrw     $0x02,        %xmm0, 0x0F(%rdx)
          movb       $0x20,               0x11(%rdx)
          pextrw     $0x02,        %xmm2, 0x27(%rdx)
          movb       $0x20,               0x29(%rdx)
          pextrw     $0x01,        %xmm0, 0x12(%rdx)
          movb       $0x20,               0x14(%rdx)
          pextrw     $0x01,        %xmm2, 0x2A(%rdx)
          movb       $0x20,               0x2C(%rdx)
          pextrw     $0x00,        %xmm0, 0x15(%rdx)
          movb       $0x20,               0x17(%rdx)
          pextrw     $0x00,        %xmm2, 0x2D(%rdx)
          movb       $0x20,               0x2F(%rdx)
          movl       $0x0A0D2020,         0x30(%rdx)
          addq       $0x10,               %rcx            # RCX = next input
          addq       $0x34,               %rdx            # next output
          decq       %r9                                  # page_cnt--
          je         1f
          jmp        0b
          .p2align 4,,15
        1:movw       $0x0A0D,             -4(%rdx)        # CL (blank line)
          movq       $0x10,               %r9             # R09 = page_cnt
          jmp        0b
          .p2align 4,,15
        2:movdqa     0x90(%rsp),          %xmm4
          movdqa     0xA0(%rsp),          %xmm5
          movdqa     0xB0(%rsp),          %xmm6
          movdqa     0xC0(%rsp),          %xmm7
          movq       0xD8(%rsp),          %r9
          movq       0xE0(%rsp),          %r8
          movq       0xE8(%rsp),          %rdx
          movq       0xF0(%rsp),          %rcx
        3:xorl       %eax,                %eax
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ps2h     plain string to hex
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA input
               RDX   EA output
               R08   paragraphs to convert
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            0               1               2               3           34 byte per paragraph!
            0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123
            xx xx xx xx xx xx xx xx xx xx xx xx xx xx xx xx   CL
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            average latency ~ 20 clock cycles + ~ 24 clock cycles per converted dump line
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _ps2h
          .def       _ps2h; .scl 2; .type 32; .endef
    _ps2h:subq       $0xF8,               %rsp
          movq       _BNR(%rip),          %rax
          movq       %rbx,                0x60(%rsp)
          movq       %r9,                 0x68(%rsp)
          movq       %r8,                 0x70(%rsp)
          movq       %rdx,                0x78(%rsp)
          movdqa     %xmm4,               0x80(%rsp)
          movdqa     %xmm5,               0x90(%rsp)
          movdqa     %xmm6,               0xA0(%rsp)
          movdqa     %xmm7,               0xB0(%rsp)
          movdqa     %xmm8,               0xC0(%rsp)
          movdqa     %xmm9,               0xD0(%rsp)
          movdqa     %xmm10,              0xE0(%rsp)
          movq       %rcx,                0xF0(%rsp)
          movq       $0x10,               %r9             # R09 = page_cnt
          movdqa     CVT_07(%rax),        %xmm4           # XM4 = 0707...07
          movdqa     CVT_20(%rax),        %xmm5           # XM5 = 2020...20
          movdqa     CVT_30(%rax),        %xmm6           # XM6 = 3030...30
          movdqa     CVT_39(%rax),        %xmm7           # XM7 = 3939...39
          movdqa     CVT_40(%rax),        %xmm8           # XM8 = 4040...40
          movdqa     CVT_46(%rax),        %xmm9           # XM9 = 4646...46
          movdqa     CVT_60(%rax),        %xmm10          # XMA = 6060...60
          .p2align   4,,15
        0:decq       %r8                                  # para_cnt--
          js         2f
          pinsrw     $0x00, 0x00(%rcx),   %xmm0           # get words
          pinsrw     $0x00, 0x03(%rcx),   %xmm2
          pinsrw     $0x01, 0x06(%rcx),   %xmm0
          pinsrw     $0x01, 0x09(%rcx),   %xmm2
          pinsrw     $0x02, 0x0C(%rcx),   %xmm0
          pinsrw     $0x02, 0x0F(%rcx),   %xmm2
          pinsrw     $0x03, 0x12(%rcx),   %xmm0
          pinsrw     $0x03, 0x15(%rcx),   %xmm2
          pinsrw     $0x04, 0x18(%rcx),   %xmm0
          pinsrw     $0x04, 0x1B(%rcx),   %xmm2
          pinsrw     $0x05, 0x1E(%rcx),   %xmm0
          pinsrw     $0x05, 0x21(%rcx),   %xmm2
          pinsrw     $0x06, 0x24(%rcx),   %xmm0
          pinsrw     $0x06, 0x27(%rcx),   %xmm2
          pinsrw     $0x07, 0x2A(%rcx),   %xmm0
          pinsrw     $0x07, 0x2D(%rcx),   %xmm2
          movdqa     %xmm0,               %xmm1           # copy
          movdqa     %xmm2,               %xmm3
          pcmpgtb    %xmm10,              %xmm1           # mask 60
          pcmpgtb    %xmm10,              %xmm3
          pand       %xmm5,               %xmm1           # mask sub
          pand       %xmm5,               %xmm3
          psubb      %xmm1,               %xmm0           # 60 => 40
          psubb      %xmm3,               %xmm2
          movdqa     %xmm0,               %xmm1           # copy
          movdqa     %xmm2,               %xmm3
          pcmpgtb    %xmm9,               %xmm1           # mask 46
          pcmpgtb    %xmm9,               %xmm3
          pand       %xmm0,               %xmm1           # mask sub
          pand       %xmm2,               %xmm3
          psubb      %xmm1,               %xmm0           # remove invalid
          psubb      %xmm3,               %xmm2
          movdqa     %xmm0,               %xmm1           # copy
          movdqa     %xmm2,               %xmm3
          movdqa     %xmm0,               %xmm9
          movdqa     %xmm2,               %xmm10
          pcmpgtb    %xmm7,               %xmm1           # mask 39
          pcmpgtb    %xmm8,               %xmm9           # mask 40
          pcmpgtb    %xmm7,               %xmm3           # mask 39
          pcmpgtb    %xmm8,               %xmm10          # mask 40
          pxor       %xmm9,               %xmm1           # mask cut
          pxor       %xmm10,              %xmm3
          pand       %xmm0,               %xmm1           # mask sub 1
          pand       %xmm2,               %xmm3
          pand       %xmm4,               %xmm9           # mask sub 2
          pand       %xmm4,               %xmm10
          psubb      %xmm1,               %xmm0           # remove invalid
          psubb      %xmm3,               %xmm2
          psubb      %xmm9,               %xmm0           # A...F correction
          psubb      %xmm10,              %xmm2
          movdqa     CVT_0F(%rax),        %xmm3           # XM3 = 0F0F...0F
          psubb      %xmm6,               %xmm0           # reduce to numbers
          psubb      %xmm6,               %xmm2
          pand       %xmm3,               %xmm0           # mask 0F
          pand       %xmm3,               %xmm2
          movdqa     %xmm0,               %xmm1           # copy
          movdqa     %xmm2,               %xmm3
          psllw      $0x04,               %xmm0
          psllw      $0x04,               %xmm2
          psrlw      $0x08,               %xmm1
          psrlw      $0x08,               %xmm3
          paddb      %xmm1,               %xmm0
          paddb      %xmm3,               %xmm2
          pand       CVT_X0(%rax),        %xmm0
          psllw      $0x08,               %xmm2
          paddb      %xmm2,               %xmm0
          movdqa     %xmm0,               0x00(%rdx)
          addq       $0x34,               %rcx
          addq       $0x10,               %rdx
          decq       %r9                                  # page_cnt--
          je         1f
          jmp        0b
          .p2align 4,,15
        1:movq       $0x10,               %r9             # R09 = page_cnt
          jmp        0b
          .p2align 4,,15
        2:movq       0x60(%rsp),          %rbx
          movq       0x68(%rsp),          %r9
          movq       0x70(%rsp),          %r8
          movq       0x78(%rsp),          %rdx
          movq       0x80(%rsp),          %xmm4
          movq       0x90(%rsp),          %xmm5
          movq       0xA0(%rsp),          %xmm6
          movq       0xB0(%rsp),          %xmm7
          movq       0xC0(%rsp),          %xmm8
          movq       0xD0(%rsp),          %xmm9
          movq       0xE0(%rsp),          %xmm10
          movq       0xF0(%rsp),          %rcx
          xorl       %eax,                %eax
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm      _BNR,                8, 3
