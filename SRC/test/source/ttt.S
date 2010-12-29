          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                                   T E S T E E S                                    Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К                          *** (C) ST-Open 1979 - 2010 ***                           Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К You may copy and distribute this file as often as you want, but recipients are not Кл
          К allowed to pay anything for any copy of this file or its content. It isn't allowed Кл
          К to abuse its copyrighted content or introduced techniques for commercial purposes. Кл
          К Whatever is derived from this file or its content must be freely available without Кл
          К charge.                                                                            Кл
          К                                                                                    Кл
          К You are free to modify the content of this file if you want to. However, derivates Кл
          К of the content of this file or parts of it *still* are subject to the terms of the Кл
          К FT4FP license. Recipients neither are allowed to pay anything for the original nor Кл
          К for altered or derived replica.                                                    Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К Insert testee code in slots tt0..ttF, then recompile. Testees HAVE TO preserve and Кл
          К restore all used registers except RAX and XMM0..XMM3! If any register is clobbered Кл
          К by a testee, the test program either throws bogus results or crashes. Moreover, it Кл
          К is unfair to skip saving and restoring some registers to gain minimum speed. Clean Кл
          К environments benefit from restored registers, while dirty environments have to use Кл
          К stack locations to store and reload frequently used parameters repeatedly, because Кл
          К registers are used as internal garbage pile.                                       Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .include "..\\..\\..\\include\\yasm.h"
          .include "tst.h"
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tt0     testee 00                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   cycles (RDTSC)                                       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     tt0; .scl 2; .type 32; .endef
      tt0:subq     $0xF8, %rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     %rcx,%rdi                           # edi = dest
          movq     %rdx,%rsi                           # esi = src
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 00         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movdqu   0x00(%rsi),%xmm0
          movl     %r8d,%eax
          movl     %r8d,%ecx
          andl     $0x0F,%eax
          movdqu   %xmm0,0x00(%rdi)
          shrl     $0x02,%eax
          addq     $0x0F,%rsi
          addq     $0x0F,%rdi
          shrl     $0x06,%r8d
          andq     $0xFFFFFFF0,%rsi
          andq     $0xFFFFFFF0,%rdi
/*
          prefetch 0x40(%rsi)
          prefetch 0x40(%rdi)
*/
          subl     %eax,%ecx

          .p2align 4,,15
        0:decl     %r8d
          js       1f
          movdqa   0x00(%rsi),%xmm0
          movdqa   0x10(%rsi),%xmm1
          movdqa   0x20(%rsi),%xmm2
          movdqa   0x30(%rsi),%xmm3
          movdqa   %xmm0,0x00(%rdi)
          movdqa   %xmm1,0x10(%rdi)
          movdqa   %xmm2,0x20(%rdi)
          movdqa   %xmm3,0x30(%rdi)
/*
          prefetch 0x80(%rsi)
          prefetch 0x80(%rdi)
*/
          addq     $0x40,%rsi
          addq     $0x40,%rdi
          jmp      0b

        1:movl     %ecx,%r8d
          shrl     $0x04,%ecx
          andl     $0x03,%r8d
          andl     $0x03,%ecx

          movdqa   0x00(%rsi),%xmm0
          movdqa   0x10(%rsi),%xmm1
          movdqa   0x20(%rsi),%xmm2
          decl     %ecx
          js       2f
          movdqa   %xmm0,0x00(%rdi)
          addq     $0x10,%rsi
          addq     $0x10,%rdi
          decl     %ecx
          js       2f
          movdqa   %xmm1,0x10(%rdi)
          addq     $0x10,%rsi
          addq     $0x10,%rdi
          decl     %ecx
          js       2f
          movdqa   %xmm2,0x20(%rdi)
          addq     $0x10,%rsi
          addq     $0x10,%rdi

        2:movl     0x00(%rsi),%eax
          movl     0x04(%rsi),%ecx
          movl     0x08(%rsi),%esi
          decl     %r8d
          js       3f
          movl     %eax,0x00(%rdi)
          decl     %r8d
          js       3f
          movl     %ecx,0x04(%rdi)
          decl     %r8d
          js       3f
          movl     %esi,0x08(%rdi)

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        3:rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tt1     testee 01                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     tt1; .scl 2; .type 32; .endef
      tt1:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     %rcx,%rdi                           # edi = dest
          movq     %rdx,%rsi                           # esi = src
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 01         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          cmpl     $0x10,%r8d
          jb       1f

        0:testq    $0x0F,%rsi
          je       1f
          movl     0x00(%rsi),%eax
          addq     $0x04,%rsi
          movl     %eax,0x00(%rdi)
          addq     $0x04,%rdi
          subl     $0x04,%r8d
          jne      0b

        1:movl     %r8d,%ecx
          addq     %r8, %rsi
          addq     %r8, %rdi
          negq     %rcx
          cmpl     $0x20,%r8d
          jb       3f

        2:subq     $0x20,%rsi
          subq     $0x20,%rdi
          movaps   0x00(%rsi),%xmm0
          movaps   %xmm0,0x00(%rdi)
          addq     $0x20,%rcx
          movaps   0x10(%rsi),%xmm0
          movaps   %xmm0,0x10(%rdi)
          js       2b

        3:cmpl     $0x10,%r8d
          jb       4f
          movaps   (%rsi, %rcx),%xmm0
          movaps   %xmm0,(%rdi, %rcx)
          addq     $0x10,%rcx

        4:cmpl     $0x08,%r8d
          jb       5f
          movl     0x00(%rsi, %rcx, 1),%eax
          movl     %eax,0x00(%rdi, %rcx, 1)
          movl     0x04(%rsi, %rcx, 1),%eax
          movl     %eax,0x04(%rdi, %rcx, 1)
          addq     $0x08,%rcx

        5:cmpl     $0x04,%r8d
          jb       6f
          movl     0x00(%rsi, %rcx, 1),%eax
          movl     %eax,0x00(%rdi, %rcx, 1)

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        6:rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tt2     testee 02                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     tt2; .scl 2; .type 32; .endef
      tt2:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     %rcx,%rdi                           # edi = dest
          movq     %rdx,%rsi                           # esi = src
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 02         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          cmpl     $0x10,%r8d
          jb       1f

        0:testq    $0x0F,%rsi
          je       1f
          movl     0x00(%rsi),%eax
          addq     $0x04,%rsi
          movl     %eax,0x00(%rdi)
          addq     $0x04,%rdi
          subl     $0x04,%r8d
          jne      0b

        1:movl     %r8d,%ecx
          addq     %r8, %rsi
          addq     %r8, %rdi
          negq     %rcx
          cmpl     $0x20,%r8d
          jb       3f

        2:subq     $0x20,%rsi
          subq     $0x20,%rdi
          movaps   0x00(%rsi),%xmm0
          movaps   %xmm0,0x00(%rdi)
          addq     $0x20,%rcx
          movaps   0x10(%rsi),%xmm0
          movaps   %xmm0,0x10(%rdi)
          js       2b

        3:cmpl     $0x10,%r8d
          jb       4f
          movaps   (%rsi, %rcx),%xmm0
          movaps   %xmm0,(%rdi, %rcx)
          addq     $0x10,%rcx

        4:cmpl     $0x08,%r8d
          jb       5f
          movl     0x00(%rsi, %rcx, 1),%eax
          movl     %eax,0x00(%rdi, %rcx, 1)
          movl     0x04(%rsi, %rcx, 1),%eax
          movl     %eax,0x04(%rdi, %rcx, 1)
          addq     $0x08,%rcx

        5:cmpl     $0x04,%r8d
          jb       6f
          movl     0x00(%rsi, %rcx, 1),%eax
          movl     %eax,0x00(%rdi, %rcx, 1)

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        6:rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tt3     testee 03                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     tt3; .scl 2; .type 32; .endef
      tt3:subq     $0xF8, %rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %r10, 0xB0(%rsp)
          movq     %r11, 0xB8(%rsp)
          movq     %rsi, 0xC0(%rsp)
          movq     %rdi, 0xC8(%rsp)
          movq     %rbx, 0xD0(%rsp)
          movq     %r9,  0xD8(%rsp)
          movq     %r8,  0xE0(%rsp)
          movq     %rdx, 0xE8(%rsp)
          movq     %rcx, 0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     %rcx,%rdi                           # edi = dest
          movq     %rdx,%rsi                           # esi = src
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 03         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          .p2align 4,,15
          movq     %r8,%rcx
          cmpq     $0x1F,%r8
          js       1f
        0:movdqu   0x00(%rsi),%xmm0
          movdqu   0x10(%rsi),%xmm1
          movq     %r8,%rcx
          addq     $0x20,%rsi
          movdqu   %xmm0,0x00(%rdi)
          movdqu   %xmm1,0x10(%rdi)
          addq     $0x20,%rdi
          subq     $0x20,%r8
          jns      0b

        1:movl     %ecx,%r8d
          subl     $0x10,%ecx
          js       2f
          movdqu   0x00(%rsi),%xmm0
          subq     $0x10,%r8
          addq     $0x10,%rsi
          movdqu   %xmm0,0x00(%rdi)
          addq     $0x10,%rdi

        2:movl     0x00(%rsi),%ecx
          movl     0x04(%rsi),%ebx
          movl     0x08(%rsi),%eax
          subl     $0x04,%r8d
          js       3f
          movl     %ecx,0x00(%rdi)
          subl     $0x04,%r8d
          js       3f
          movl     %ebx,0x04(%rdi)
          subl     $0x04,%r8d
          js       3f
          movl     %eax,0x08(%rdi)

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        3:rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tt4     testee 04                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     tt4; .scl 2; .type 32; .endef
      tt4:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 04         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tt5     testee 05                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     tt5; .scl 2; .type 32; .endef
      tt5:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 05         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tt6     testee 06                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     tt6; .scl 2; .type 32; .endef
      tt6:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 06         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tt7     testee 07                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     tt7; .scl 2; .type 32; .endef
      tt7:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 07         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tt8     testee 08                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     tt8; .scl 2; .type 32; .endef
      tt8:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 08         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tt9     testee 09                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     tt9; .scl 2; .type 32; .endef
      tt9:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 09         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г ttA     testee 0A                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     ttA; .scl 2; .type 32; .endef
      ttA:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 0A         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г ttB     testee 0B                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     ttB; .scl 2; .type 32; .endef
      ttB:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 0B         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г ttC     testee 0C                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     ttC; .scl 2; .type 32; .endef
      ttC:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 0C         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г ttD     testee 0D                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     ttD; .scl 2; .type 32; .endef
      ttD:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 0D         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г ttE     testee 0E                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     ttE; .scl 2; .type 32; .endef
      ttE:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 0E         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г ttF     testee 0F                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   parameter 1                                                                Гл
          Г   RDX             2                                                                Гл
          Г   R08             3                                                                Гл
          Г   R09             4 (further parameters at 20[RSP], 28[RSP], ...)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   RC                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     ttF; .scl 2; .type 32; .endef
      ttF:subq     $0xF8, %rsp
          nop
          nop
          movq     %r10,0xB0(%rsp)
          movq     %r11,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy parameters        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC start              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          movl     %eax,%r10d                          # R10 = C0_0L
          movl     %edx,%r11d                          # R11 = C0_0H
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г code testee 0F         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TSC end => result      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          rdtscp
          shlq     $0x20,%rdx                          # RDX = C1_H0
          shlq     $0x20,%r11                          # R11 = C0_H0
          addq     %rdx,%rax                           # RAX = C1_HL
          addq     %r10,%r11                           # R11 = C0_HL
          subq     %r11,%rax                           # RAX = C1_HL - C0_HL
          subq     $0x47,%rax                          # RAX = RES - 71 (approx. RDTSCP)
          jmp      XIT9
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г common exit                                                                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
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
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BNR,    8, 3
          .comm    _TST,    8, 3
