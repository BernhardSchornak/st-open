          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
          �                                   T E S T E E S                                    裁
          債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
          �                          *** (C) ST-Open 1979 - 2010 ***                           裁
          藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
          �       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        裁
          債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
          � You may copy and distribute this file as often as you want, but recipients are not 裁
          � allowed to pay anything for any copy of this file or its content. It isn't allowed 裁
          � to abuse its copyrighted content or introduced techniques for commercial purposes. 裁
          � Whatever is derived from this file or its content must be freely available without 裁
          � charge.                                                                            裁
          �                                                                                    裁
          � You are free to modify the content of this file if you want to. However, derivates 裁
          � of the content of this file or parts of it *still* are subject to the terms of the 裁
          � FT4FP license. Recipients neither are allowed to pay anything for the original nor 裁
          � for altered or derived replica.                                                    裁
          債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
          �       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        裁
          藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
          � Insert testee code in slots tt0..ttF, then recompile. Testees HAVE TO preserve and 裁
          � restore all used registers except RAX and XMM0..XMM3! If any register is clobbered 裁
          � by a testee, the test program either throws bogus results or crashes. Moreover, it 裁
          � is unfair to skip saving and restoring some registers to gain minimum speed. Clean 裁
          � environments benefit from restored registers, while dirty environments have to use 裁
          � stack locations to store and reload frequently used parameters repeatedly, because 裁
          � registers are used as internal garbage pile.                                       裁
          藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .include "..\\..\\..\\include\\yasm.h"
          .include "tst.h"
          .text
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � tt0     testee 00                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     tt0; .scl 2; .type 32; .endef
      tt0:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 00         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � tt1     testee 01                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     tt1; .scl 2; .type 32; .endef
      tt1:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 01         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � tt2     testee 02                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     tt2; .scl 2; .type 32; .endef
      tt2:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 02         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � tt3     testee 03                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     tt3; .scl 2; .type 32; .endef
      tt3:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 03         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � tt4     testee 04                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     tt4; .scl 2; .type 32; .endef
      tt4:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 04         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � tt5     testee 05                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     tt5; .scl 2; .type 32; .endef
      tt5:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 05         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � tt6     testee 06                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     tt6; .scl 2; .type 32; .endef
      tt6:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 06         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � tt7     testee 07                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     tt7; .scl 2; .type 32; .endef
      tt7:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 07         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � tt8     testee 08                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     tt8; .scl 2; .type 32; .endef
      tt8:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 08         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � tt9     testee 09                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     tt9; .scl 2; .type 32; .endef
      tt9:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 09         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � ttA     testee 0A                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     ttA; .scl 2; .type 32; .endef
      ttA:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 0A         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � ttB     testee 0B                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     ttB; .scl 2; .type 32; .endef
      ttB:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 0B         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � ttC     testee 0C                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     ttC; .scl 2; .type 32; .endef
      ttC:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 0C         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � ttD     testee 0D                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     ttD; .scl 2; .type 32; .endef
      ttD:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 0D         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � ttE     testee 0E                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     ttE; .scl 2; .type 32; .endef
      ttE:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 0E         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � ttF     testee 0F                                                                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �-> RCX   parameter 1                                                                額
          �   RDX             2                                                                額
          �   R08             3                                                                額
          �   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  額
          団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
          �<- RAX   ???? ???? ???? ????   RC                                                   額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
          .def     ttF; .scl 2; .type 32; .endef
      ttF:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)                     # DO NOT REMOVE THESE LINES -
          movq     %r11,0xB8(%rsp)                     # they are part of the test!
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳朕
          � code testee 0F         額
          青陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩�
          */
                                                       # PASTE TESTEE CODE HERE!

          jmp      XIT9                                # Do not remove this jump!
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          � common exit                                                                        額
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .p2align 4,,15
     XIT9:movq     0xB0(%rsp),%r10
          movq     0xB8(%rsp),%r11
          movq     0xC0(%rsp),%rsi
          movq     0xC8(%rsp),%rdi
          movq     0xD0(%rsp),%rbx
          movq     0xD8(%rsp),%r9
          movq     0xE0(%rsp),%r8
          movq     0xE8(%rsp),%rdx
          movq     0xF0(%rsp),%rcx
          addq     $0xF8,%rsp
          ret
          /*
          敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
          青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
            栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
          */
          .comm    _BNR,    8, 3
          .comm    _TST,    8, 3
