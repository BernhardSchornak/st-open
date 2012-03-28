          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                 T E S T E E S    (C) ST-Open 1979 - 2012
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                  THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE
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
                  FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Insert testee code in slots tt0..tt3, then recompile. Testees HAVE TO preserve and
            restore all used registers except RAX and XMM0..XMM3! If any register is clobbered
            by a testee, the test program either throws bogus results or crashes. Moreover, it
            is unfair to skip saving and restoring some registers to gain maximum speed. Clean
            environments benefit from restored registers, while dirty environments have to use
            stack locations to store and reload frequently used parameters repeatedly, because
            registers are used as internal garbage pile.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          .include "tst.h"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                        L O O K U P   T A B L E S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          .section .rdata, "dr"
          .p2align 4,,15
          */
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            tt0     testee 00
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA result buffer
               RDX      output buffer
               R08      number array
               R09      iterations
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   not evaluated
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .def     tst0; .scl 2; .type 32; .endef
     tst0:subq     $0xF8,        %rsp
          movq     %r10,         0x88(%rsp)
          movq     %r11,         0x90(%rsp)
          movq     %r12,         0x98(%rsp)
          movq     %r13,         0xA0(%rsp)
          movq     %r14,         0xA8(%rsp)
          movq     %r15,         0xB0(%rsp)
          movq     %rbp,         0xB8(%rsp)
          movq     %rsi,         0xC0(%rsp)
          movq     %rdi,         0xC8(%rsp)
          movq     %rbx,         0xD0(%rsp)
          movq     %r9,          0xD8(%rsp)
          movq     %r8,          0xE0(%rsp)
          movq     %rdx,         0xE8(%rsp)
          movq     %rcx,         0xF0(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            copy parameters
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movq     %rcx,         %r10       # R10 = EA results
          movq     %rdx,         %r11       # R11 =    outputs
          movq     %r8,          %r12       # R12 =    array
          movq     %r9,          %r13       # R13 = loop_cnt
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            test loop
            ~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      tc0:rdtscp
          movl     %eax,         %r14d      # R14 = C0_0L
          movl     %edx,         %r15d      # R15 = C0_0H
          /*
                                          XXXXXXXXXXXXXXXXXXXXXX
            XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   CODE TESTEE 00   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                                          XXXXXXXXXXXXXXXXXXXXXX
          */
          movq     %r12,         %rcx
          movq     %r11,         %rdx
          movq     $0x01,        %r8
          /*
          call     _ps2h
                                          XXXXXXXXXXXXXXXXXXXXXX
            XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX      CODE END      XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                                          XXXXXXXXXXXXXXXXXXXXXX
          */
          rdtscp
          shlq     $0x20,        %r15       # R15 = T0_H
          shlq     $0x20,        %rdx       # RDX = T1_H
          addq     %r14,         %r15       # R15 = T0
          addq     %rdx,         %rax       # RAX = T1
          leaq     0x56(%r15),   %r9        # R09 = T0 + 86
          leaq     0x55(%r15),   %r8        # R08 = T0 + 85
          cmpq     %r9,          %rax       #  T0 > T1?
          cmovb    %r8,          %r9
          subq     %r9,          %rax       # RAX = T1 - T0
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            loop end
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl     %eax,         0x00(%r10) # store result
          addq     $TST_IN,      %r12       # next number
          addq     $TSTOUT,      %r11       #      output
          addq     $0x04,        %r10       #      result
          decq     %r13
          jne      tc0
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            tt1     testee 01
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA result buffer
               RDX      output buffer
               R08      number array
               R09      iterations
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   not evaluated
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .def     tst1; .scl 2; .type 32; .endef
     tst1:subq     $0xF8,       %rsp
          movq     %r10,         0x88(%rsp)
          movq     %r11,         0x90(%rsp)
          movq     %r12,         0x98(%rsp)
          movq     %r13,         0xA0(%rsp)
          movq     %r14,         0xA8(%rsp)
          movq     %r15,         0xB0(%rsp)
          movq     %rbp,         0xB8(%rsp)
          movq     %rsi,         0xC0(%rsp)
          movq     %rdi,         0xC8(%rsp)
          movq     %rbx,         0xD0(%rsp)
          movq     %r9,          0xD8(%rsp)
          movq     %r8,          0xE0(%rsp)
          movq     %rdx,         0xE8(%rsp)
          movq     %rcx,         0xF0(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            copy parameters
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movq     %rcx,         %r10       # R10 = EA results
          movq     %rdx,         %r11       # R11 =    outputs
          movq     %r8,          %r12       # R12 =    array
          movq     %r9,          %r13       # R13 = loop_cnt
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            test loop
            ~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      tc1:rdtscp
          movl     %eax,         %r14d      # R14 = C0_0L
          movl     %edx,         %r15d      # R15 = C0_0H
          /*
                                          XXXXXXXXXXXXXXXXXXXXXX
            XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   CODE TESTEE 01   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                                          XXXXXXXXXXXXXXXXXXXXXX
          */
          movq     %r12,         %rcx
          movq     %r11,         %rdx
          movq     $0x01,        %r8
          /*
          call     _ps2h
                                          XXXXXXXXXXXXXXXXXXXXXX
            XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX      CODE END      XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                                          XXXXXXXXXXXXXXXXXXXXXX
          */
          rdtscp
          shlq     $0x20,        %r15       # R15 = T0_H
          shlq     $0x20,        %rdx       # RDX = T1_H
          addq     %r14,         %r15       # R15 = T0
          addq     %rdx,         %rax       # RAX = T1
          leaq     0x56(%r15),   %r9        # R09 = T0 + 86
          leaq     0x55(%r15),   %r8        # R08 = T0 + 85
          cmpq     %r9,          %rax       #  T0 > T1?
          cmovb    %r8,          %r9
          subq     %r9,          %rax       # RAX = T1 - T0
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            loop end
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl     %eax,         0x00(%r10) # store result
          addq     $TST_IN,      %r12       # next number
          addq     $TSTOUT,      %r11       #      output
          addq     $0x04,        %r10       #      result
          decq     %r13
          jne      tc1
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            tt2     testee 02
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA result buffer
               RDX      output buffer
               R08      array
               R09   iterations
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   not evaluated
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .def     tst2; .scl 2; .type 32; .endef
     tst2:subq     $0xF8,       %rsp
          movq     %r10,         0x88(%rsp)
          movq     %r11,         0x90(%rsp)
          movq     %r12,         0x98(%rsp)
          movq     %r13,         0xA0(%rsp)
          movq     %r14,         0xA8(%rsp)
          movq     %r15,         0xB0(%rsp)
          movq     %rbp,         0xB8(%rsp)
          movq     %rsi,         0xC0(%rsp)
          movq     %rdi,         0xC8(%rsp)
          movq     %rbx,         0xD0(%rsp)
          movq     %r9,          0xD8(%rsp)
          movq     %r8,          0xE0(%rsp)
          movq     %rdx,         0xE8(%rsp)
          movq     %rcx,         0xF0(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            copy parameters
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movq     %rcx,         %r10       # R10 = EA results
          movq     %rdx,         %r11       # R11 =    outputs
          movq     %r8,          %r12       # R12 =    array
          movq     %r9,          %r13       # R13 = loop_cnt
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            test loop
            ~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      tc2:rdtscp
          movl     %eax,         %r14d      # R14 = C0_0L
          movl     %edx,         %r15d      # R15 = C0_0H
          /*
                                          XXXXXXXXXXXXXXXXXXXXXX
            XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   CODE TESTEE 02   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                                          XXXXXXXXXXXXXXXXXXXXXX
          */
          movq     %r12,         %rcx
          movq     %r11,         %rdx
          movq     $0x01,        %r8
          /*
          call     _ps2h
                                          XXXXXXXXXXXXXXXXXXXXXX
            XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX      CODE END      XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                                          XXXXXXXXXXXXXXXXXXXXXX
          */
          rdtscp
          shlq     $0x20,        %r15       # R15 = T0_H
          shlq     $0x20,        %rdx       # RDX = T1_H
          addq     %r14,         %r15       # R15 = T0
          addq     %rdx,         %rax       # RAX = T1
          leaq     0x56(%r15),   %r9        # R09 = T0 + 86
          leaq     0x55(%r15),   %r8        # R08 = T0 + 85
          cmpq     %r9,          %rax       #  T0 > T1?
          cmovb    %r8,          %r9
          subq     %r9,          %rax       # RAX = T1 - T0
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            loop end
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl     %eax,         0x00(%r10) # store result
          addq     $TST_IN,      %r12       # next number
          addq     $TSTOUT,      %r11       #      output
          addq     $0x04,        %r10       #      result
          decq     %r13
          jne      tc2
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            tt3     testee 03
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA result buffer
               RDX      output buffer
               R08      number array
               R09      iterations
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   not evaluated
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .def     tst3; .scl 2; .type 32; .endef
     tst3:subq     $0xF8,       %rsp
          movq     %r10,         0x88(%rsp)
          movq     %r11,         0x90(%rsp)
          movq     %r12,         0x98(%rsp)
          movq     %r13,         0xA0(%rsp)
          movq     %r14,         0xA8(%rsp)
          movq     %r15,         0xB0(%rsp)
          movq     %rbp,         0xB8(%rsp)
          movq     %rsi,         0xC0(%rsp)
          movq     %rdi,         0xC8(%rsp)
          movq     %rbx,         0xD0(%rsp)
          movq     %r9,          0xD8(%rsp)
          movq     %r8,          0xE0(%rsp)
          movq     %rdx,         0xE8(%rsp)
          movq     %rcx,         0xF0(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            copy parameters
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movq     %rcx,         %r10       # R10 = EA results
          movq     %rdx,         %r11       # R11 =    outputs
          movq     %r8,          %r12       # R12 =    array
          movq     %r9,          %r13       # R13 = loop_cnt
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            test loop
            ~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      tc3:rdtscp
          movl     %eax,         %r14d      # R14 = C0_0L
          movl     %edx,         %r15d      # R15 = C0_0H
          /*
                                          XXXXXXXXXXXXXXXXXXXXXX
            XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   CODE TESTEE 03   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                                          XXXXXXXXXXXXXXXXXXXXXX
          */
          movq     %r12,         %rcx
          movq     %r11,         %rdx
          movq     $0x01,        %r8
          /*
          call     _ps2h
                                          XXXXXXXXXXXXXXXXXXXXXX
            XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX      CODE END      XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                                          XXXXXXXXXXXXXXXXXXXXXX
          */
          rdtscp
          shlq     $0x20,        %r15       # R15 = T0_H
          shlq     $0x20,        %rdx       # RDX = T1_H
          addq     %r14,         %r15       # R15 = T0
          addq     %rdx,         %rax       # RAX = T1
          leaq     0x56(%r15),   %r9        # R09 = T0 + 86
          leaq     0x55(%r15),   %r8        # R08 = T0 + 85
          cmpq     %r9,          %rax       #  T0 > T1?
          cmovb    %r8,          %r9
          subq     %r9,          %rax       # RAX = T1 - T0
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            loop end
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl     %eax,         0x00(%r10) # store result
          addq     $TST_IN,      %r12       # next number
          addq     $TSTOUT,      %r11       #      output
          addq     $0x04,        %r10       #      result
          decq     %r13
          jne      tc3
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIT:movq     0x88(%rsp),   %r10
          movq     0x90(%rsp),   %r11
          movq     0x98(%rsp),   %r12
          movq     0xA0(%rsp),   %r13
          movq     0xA8(%rsp),   %r14
          movq     0xB0(%rsp),   %r15
          movq     0xB8(%rsp),   %rbp
          movq     0xC0(%rsp),   %rsi
          movq     0xC8(%rsp),   %rdi
          movq     0xD0(%rsp),   %rbx
          movq     0xD8(%rsp),   %r9
          movq     0xE0(%rsp),   %r8
          movq     0xE8(%rsp),   %rdx
          movq     0xF0(%rsp),   %rcx
          addq     $0xF8,        %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
