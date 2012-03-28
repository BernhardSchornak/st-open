          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                             D I S P L A Y   R E S U L T S   (C) ST-Open 2012
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
          .include "stb.h"
          .section .rdata, "dr"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            data
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
       x0:.byte      0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20
          .byte      0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20
       fn:.ascii     "..\\auxi\\edit.txt"
          .quad      0x00, 0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                      D I S P L A Y   R E S U L T S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   MLE HWND
               RDX       EA buffer
               R08   -
               R09   -
               RSI   BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _shres
          .def     _shres; .scl 2; .type 32; .endef
   _shres:subq     $0xF8,        %rsp
          xorl     %eax,         %eax
          pxor     %xmm0,        %xmm0
          movdqa   %xmm4,        0x70(%rsp)
          movdqa   %xmm5,        0x80(%rsp)
          movq     %r10,         0x90(%rsp)
          movq     %r11,         0x98(%rsp)
          movq     %r12,         0xA0(%rsp)
          movq     %r13,         0xA8(%rsp)
          movq     %r14,         0xB0(%rsp)
          movq     %rbp,         0xB8(%rsp)
          movq     %rsi,         0xC0(%rsp)
          movq     %rdi,         0xC8(%rsp)
          movq     %rbx,         0xD0(%rsp)
          movq     %r9,          0xD8(%rsp)
          movq     %r8,          0xE0(%rsp)
          movq     %rdx,         0xE8(%rsp)
          movq     %rcx,         0xF0(%rsp)
          movq     %rdx,         %rdi                   # RDI = EA buffer
          movq     %rcx,         %rbp                   # RBP = HWND
          movq     RUN_00(%rsi), %r14                   # R14 = EA results
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            load template
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movdqa   %xmm0,        0x20(%rsp)             # FH.WINfh + FH.Fsize
          movq     %rdi,         0x30(%rsp)             # FH.Mbase
          movq     %rax,         0x38(%rsp)             # FH.Moffs
          movdqa   %xmm0,        0x40(%rsp)             # FH.Foffs + FH.Fstat
          leaq     0x20(%rsp),   %rcx                   # RCX = EA FH
          xorl     %edx,         %edx                   # RDX = 0 (size)
          movl     $0x02,        %r8d                   # R08 = open if exist
          leaq     fn(%rip),     %r9                    # R09 = EA filename
          call     _Fopen
          testl    %eax,         %eax
          jne      XIT
          call     _Fread
          testl    %eax,         %eax
          jne      XIT
          call     _Fclose
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            fill template
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     $0x20,        %r8                    # R08 = blank
          movq     $0x0D,        %r13                   # R13 = CR
          movl     VND_00(%r14), %r10d
          movl     VND_01(%r14), %r11d
          movl     VND_02(%r14), %r12d
          movdqa   VND_S0(%r14), %xmm0
          movdqa   VND_S1(%r14), %xmm1
          movdqa   VND_S2(%r14), %xmm2
          movq     %r8,          %xmm3
          movl     P_FAMI(%r14), %eax                   # family
          movl     P_MODL(%r14), %ebx                   # model
          movl     P_STEP(%r14), %ecx                   # stepping
          movl     PCOUNT(%r14), %edx                   # cores
          movl     %r10d,        0x20(%rdi)             # vendor
          movl     %r11d,        0x24(%rdi)
          movl     %r12d,        0x28(%rdi)
          addl     $0x20000000,  %edx                   # RDX + trailing blank
          rorq     $0x08,        %r8
          rorq     $0x08,        %r13
          pslldq   $0x0F,        %xmm3
          movdqa   %xmm0,        0x40(%rdi)             # processor
          movdqa   %xmm1,        0x50(%rdi)
          movdqa   %xmm2,        0x60(%rdi)
          movw     %ax,          0xC0(%rdi)             # family
          movw     %bx,          0xE0(%rdi)             # model
          movw     %cx,          0x0100(%rdi)           # stepping
          movl     %edx,         0x0120(%rdi)           # cores
          movq     L1_SKB(%r14), %r10                   # R10 = L1 size
          movl     L1_CLS(%r14), %eax                   # RAX =    line
          movq     L2_SKB(%r14), %r11                   # R11 = L2 size
          movl     L2_CLS(%r14), %ebx                   # RBX =    line
          movq     L3_SKB(%r14), %r12                   # R12 = L3 size
          movl     L3_CLS(%r14), %ecx                   # RCX =    line
          paddb    P_FREQ(%r14), %xmm3                  # XM3 = frequency
          movl     TCOUNT(%r14), %edx                   # RDX = thread count
          addq     %r8,          %r10
          addl     $0x20000000,  %eax
          addq     %r8,          %r11
          addl     $0x20000000,  %ebx
          addq     %r13,         %r12
          addl     $0x0D000000,  %ecx
          addl     $0x20000000,  %edx
          movdqa   %xmm3,        0x0090(%rdi)           # frequency
          movq     %r10,         0x0140(%rdi)           # L1 size
          movq     %r11,         0x0150(%rdi)           # L2
          movq     %r12,         0x0160(%rdi)           # L3
          movl     %eax,         0x0184(%rdi)           # L1 cache line size
          movl     %ebx,         0x0194(%rdi)           # L2
          movl     %ecx,         0x01A4(%rdi)           # L3
          movl     %edx,         0x01D8(%rdi)           # threads
          movl     $0x20382020,  0x01E8(%rdi)           # runs
          movl     MC_RES(%r14), %ecx                   # RCX = MC_RES
          leaq     BEST_B(%r14), %r12                   # R12 = EA reads
          leaq     0x24(%rsp),   %rdx
          movl     $0x14,        %r8d
          call     _Q2dec
          movdqu   0x32(%rsp),   %xmm0
          leaq     0x0260(%rdi), %r10                   # R10 = EA writes
          leaq     0x20(%rsp),   %rdx                   # RDX = EA buffer
          movl     $0x0006000A,  %r8d                   # R08 = 10 digits
          movq     $0x03,        %r13                   # R13 = block count
          movdqa   %xmm0,        0x0A90(%rdi)
          movb     $0x20,        0x0A9F(%rdi)
          movb     $0x00,        0x0AB6(%rdi)           # trailing zero
        0:movq     $0x08,        %r11                   # R11 = loop_cnt
        1:movl     0x00(%r12),   %ecx
          movl     0x20(%r12),   %ebx
          movl     0x40(%r12),   %r9d
          movl     0x60(%r12),   %esi
          call     _D2dec
          movl     %ebx,         %ecx
          addq     $0x10,        %rdx
          call     _D2dec
          movl     %r9d,         %ecx
          addq     $0x10,        %rdx
          call     _D2dec
          movl     %esi,         %ecx
          addq     $0x10,        %rdx
          call     _D2dec
          subq     $0x30,        %rdx                   # RDX = EA buffer
          movw     $0x2020,      0x2E(%rsp)
          movw     $0x2020,      0x3E(%rsp)
          movw     $0x2020,      0x4E(%rsp)
          movw     $0x0D20,      0x5E(%rsp)
          movdqa   0x20(%rsp),   %xmm0
          movdqa   0x30(%rsp),   %xmm1
          movdqa   0x40(%rsp),   %xmm2
          movdqa   0x50(%rsp),   %xmm3
          movdqa   %xmm0,        0x00(%r10)
          movdqa   %xmm1,        0x10(%r10)
          movdqa   %xmm2,        0x20(%r10)
          movdqa   %xmm3,        0x30(%r10)
          addq     $0x04,        %r12                   # next source
          addq     $0x50,        %r10                   #      target
          decq     %r11
          jne      1b
          addq     $0x0050,      %r10                   # next set target
          addq     $0x0060,      %r12                   #          source
          decq     %r13
          jne      0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            show template
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     %rbp,         %rcx                   # RCX = HWND
          movl     $0x0C,        %edx                   # RDX = WM_SETTEXT
          xorq     %r8,          %r8                    # R08 = 0
          movq     %rdi,         %r9                    # R09 = EA_MLE
          call     _SendM
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      XIT:movdqa   0x70(%rsp),   %xmm4
          movdqa   0x80(%rsp),   %xmm5
          movq     0x90(%rsp),   %r10
          movq     0x98(%rsp),   %r11
          movq     0xA0(%rsp),   %r12
          movq     0xA8(%rsp),   %r13
          movq     0xB0(%rsp),   %r14
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
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,         8, 3
