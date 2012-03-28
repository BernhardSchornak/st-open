          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                   T E S T   R U N S   (C) ST-Open 2012
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
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CONTROL DATA SETS (reverse!)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section .rdata, "dr"
          .p2align 4,,15
  loopcnt:.long       0x0000C000, 0x00006000, 0x00003000, 0x00001800
          .long       0x00000C00, 0x00000180, 0x000000C0, 0x00000060
  loopoff:.quad       0x0000000000900000, 0x0000000000480000
          .quad       0x0000000000240000, 0x0000000000120000
          .quad       0x0000000000090000, 0x0000000000012000
          .quad       0x0000000000009000, 0x0000000000004800
   divtab:.long       0x00004800, 0x00009000, 0x00012000, 0x00090000
          .long       0x00120000, 0x00240000, 0x00480000, 0x00900000
   multab:.long       0x000F4240, 0x000F4240, 0x000F4240, 0x000F4240
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FUNCTION ENTRY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          .p2align 4,,15
          .globl _bench
          .def   _bench; .scl 2; .type 32; .endef
   _bench:movq        $bnch,         %rax               # benchmark control
          jmp         0f

          .p2align 4,,15
          .globl _iread
          .def   _iread; .scl 2; .type 32; .endef
   _iread:movq        $t00,          %rax               # GPR read
          jmp         PRD

          .p2align 4,,15
          .globl _iwrite
          .def   _iwrite; .scl 2; .type 32; .endef
  _iwrite:movq        $t01,          %rax               #     write
          jmp         0f

          .p2align 4,,15
          .globl _icopy
          .def   _icopy; .scl 2; .type 32; .endef
   _icopy:movq        $t02,          %rax               #     copy
          jmp         PRD

          .p2align 4,,15
          .globl _irmw
          .def   _irmw; .scl 2; .type 32; .endef
    _irmw:movq        $t03,          %rax               #     r-m-w
          jmp         PRD

          .p2align 4,,15
          .globl _xread
          .def   _xread; .scl 2; .type 32; .endef
   _xread:movq        $t04,          %rax               # XMM read
          jmp         PRD

          .p2align 4,,15
          .globl _xwrite
          .def   _xwrite; .scl 2; .type 32; .endef
  _xwrite:movq        $t05,          %rax               #     write
          jmp         0f

          .p2align 4,,15
          .globl _xcopy
          .def   _xcopy; .scl 2; .type 32; .endef
   _xcopy:movq        $t06,          %rax               #     copy
          jmp         PRD

          .p2align 4,,15
          .globl _xrmw
          .def   _xrmw; .scl 2; .type 32; .endef
    _xrmw:movq        $t07,          %rax               #     r-m-w
          jmp         PRD

          .p2align 4,,15
          .globl _yread
          .def   _yread; .scl 2; .type 32; .endef
   _yread:movq        $t08,          %rax               # YMM read
          jmp         PRD

          .p2align 4,,15
          .globl _ywrite
          .def   _ywrite; .scl 2; .type 32; .endef
  _ywrite:movq        $t09,          %rax               #     write
          jmp         0f

          .p2align 4,,15
          .globl _ycopy
          .def   _ycopy; .scl 2; .type 32; .endef
   _ycopy:movq        $t10,          %rax               #     copy
          jmp         PRD

          .p2align 4,,15
          .globl _yrmw
          .def   _yrmw; .scl 2; .type 32; .endef
    _yrmw:movq        $t11,          %rax               #     r-m-w
          jmp         PRD

          .p2align 4,,15
          .globl _multi
          .def   _multi; .scl 2; .type 32; .endef
   _multi:movq        $tmt,          %rax               #     r-m-w
          jmp         0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            INITIAL PREFETCH
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      PRD:prefetchnta 0x00(%rcx)                        # reads
          prefetchnta 0x40(%rcx)
          prefetchnta 0x80(%rcx)
          jmp         0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DISTRIBUTOR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq        $0x0138,       %rsp
          movdqa      %xmm4,         0x0040(%rsp)
          movdqa      %xmm5,         0x0050(%rsp)
          movdqa      %xmm6,         0x0060(%rsp)
          movdqa      %xmm7,         0x0070(%rsp)
          movdqa      %xmm8,         0x0080(%rsp)
          movdqa      %xmm9,         0x0090(%rsp)
          movdqa      %xmm10,        0x00A0(%rsp)
          movdqa      %xmm11,        0x00B0(%rsp)
          movq        %r10,          0x00C8(%rsp)
          movq        %r11,          0x00D0(%rsp)
          movq        %r12,          0x00D8(%rsp)
          movq        %r13,          0x00E0(%rsp)
          movq        %r14,          0x00E8(%rsp)
          movq        %r15,          0x00F0(%rsp)
          movq        %rbp,          0x00F8(%rsp)
          movq        %rsi,          0x0100(%rsp)
          movq        %rdi,          0x0108(%rsp)
          movq        %rbx,          0x0110(%rsp)
          movq        %r9,           0x0118(%rsp)
          movq        %r8,           0x0120(%rsp)
          movq        %rdx,          0x0128(%rsp)
          movq        %rcx,          0x0130(%rsp)
          jmp         *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                       B E N C H M A R K    C O R E
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   -
               RDX   -
               R08   -
               R09   -
               RSI   BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   00000000   ok
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            load source and target
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     bnch:movq        EA_RES(%rsi),  %rdi               # RDI = EA result (field)
          movl        RES_NR(%rsi),  %ebx               # RBX = test number
          movl        $0x02000000,   %ecx               # RCX = size
          call        _AloMem
          movq        %rax,          EA_SRC(%rsi)       # store EA_SRC
          testq       %rax,          %rax               # error?
          je          R03
          movl        %ebx,          %edx               # RDX = test number
          movq        %rax,          %r10               # R10 = EA_SRC
          call        _AloMem
          movq        %rax,          EA_TGT(%rsi)       # store EA_TGT
          testq       %rax,          %rax               # error?
          je          R04
          incl        %edx                              # RDX = next test
          imull       $0x1400,       %ebx               # RBX = offset[field]
          movq        %rax,          %r12               # R12 = EA_TGT
          leaq        loopcnt(%rip), %r14               # R14 = LUT iterations
          leaq        loopoff(%rip), %r15               # R15 =     block sizes
          andl        $0x0FFF,       %edx               # RDX = valid test number
          addq        %rbx,          %rdi               # RDI = EA current block
          movq        $0x07,         %r11               # R11 = runs
          movl        %edx,          RES_NR(%rsi)       # store next test number
          movq        %rdi,          RUN_00(%rsi)       #       block EA
          movq        %rdi,          %r13               # R13 = EA block
          movq        %rdi,          %rcx               # RCX = EA block
          call        _pinfo
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GPR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            read
            ~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:movl        $0x07,         %ebp               # RBP = loop_cnt
          movq        %r10,          %rcx               # RCX = EA_SRC
          movq        %r12,          %rdx               # RDX = EA_TGT
        0:movl        (%r14,%rbp,4), %r8d               # R08 = iterations
          call        _iread
          movl        %eax,          0x00(%r13)         # store
          addq        (%r15,%rbp,8), %rcx               # RCX = next EA
          addq        $0x04,         %r13               # R13 = next result
          decl        %ebp
          jns         0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            write
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x07,         %ebp
          movq        %r10,          %rcx               # RCX = EA_SRC
          movq        %r12,          %rdx               # RDX = EA_TGT
        1:movl        (%r14,%rbp,4), %r8d               # R08 = iterations
          call        _iwrite
          movl        %eax,          0x00(%r13)         # store
          addq        (%r15,%rbp,8), %rdx               # RDX = next EA
          addq        $0x04,         %r13               # R13 = next result
          decl        %ebp
          jns         1b
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            copy
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x07,         %ebp
          movq        %r10,          %rcx               # RCX = EA_SRC
          movq        %r12,          %rdx               # RDX = EA_TGT
        2:movl        (%r14,%rbp,4), %r8d               # R08 = iterations
          call        _icopy
          movl        %eax,          0x00(%r13)         # store
          addq        (%r15,%rbp,8), %rcx               # RCX = next EA
          addq        (%r15,%rbp,8), %rdx               # RDX = next EA
          addq        $0x04,         %r13               # R13 = next result
          decl        %ebp
          jns         2b
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            r-m-w
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x07,         %ebp
          movq        %r10,          %rcx               # RCX = EA_SRC
          movq        %r12,          %rdx               # RDX = EA_TGT
        3:movl        (%r14,%rbp,4), %r8d               # R08 = iterations
          call        _irmw
          movl        %eax,          0x00(%r13)         # store
          addq        (%r15,%rbp,8), %rcx               # RCX = next EA
          addq        (%r15,%rbp,8), %rdx               # RDX = next EA
          addq        $0x04,         %r13               # R13 = next result
          decl        %ebp
          jns         3b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            XMM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            read
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x07,         %ebp               # RBP = loop_cnt
          movq        %r10,          %rcx               # RCX = EA_SRC
          movq        %r12,          %rdx               # RDX = EA_TGT
        0:movl        (%r14,%rbp,4), %r8d               # R08 = iterations
          call        _xread
          movl        %eax,          0x00(%r13)         # store
          addq        (%r15,%rbp,8), %rcx               # RCX = next EA
          addq        $0x04,         %r13               # R13 = next result
          decl        %ebp
          jns         0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            write
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x07,         %ebp
          movq        %r10,          %rcx               # RCX = EA_SRC
          movq        %r12,          %rdx               # RDX = EA_TGT
        1:movl        (%r14,%rbp,4), %r8d               # R08 = iterations
          call        _xwrite
          movl        %eax,          0x00(%r13)         # store
          addq        (%r15,%rbp,8), %rdx               # RDX = next EA
          addq        $0x04,         %r13               # R13 = next result
          decl        %ebp
          jns         1b
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            copy
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x07,         %ebp
          movq        %r10,          %rcx               # RCX = EA_SRC
          movq        %r12,          %rdx               # RDX = EA_TGT
        2:movl        (%r14,%rbp,4), %r8d               # R08 = iterations
          call        _xcopy
          movl        %eax,          0x00(%r13)         # store
          addq        (%r15,%rbp,8), %rcx               # RCX = next EA
          addq        (%r15,%rbp,8), %rdx               # RDX = next EA
          addq        $0x04,         %r13               # R13 = next result
          decl        %ebp
          jns         2b
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            r-m-w
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x07,         %ebp
          movq        %r10,          %rcx               # RCX = EA_SRC
          movq        %r12,          %rdx               # RDX = EA_TGT
        3:movl        (%r14,%rbp,4), %r8d               # R08 = iterations
          call        _xrmw
          movl        %eax,          0x00(%r13)         # store
          addq        (%r15,%rbp,8), %rcx               # RCX = next EA
          addq        (%r15,%rbp,8), %rdx               # RDX = next EA
          addq        $0x04,         %r13               # R13 = next result
          decl        %ebp
          jns         3b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            YMM check
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          testl       $0xFF,         GOTAVX(%rsi)       # AVX available?
          je          4f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            YMM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            read
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x07,         %ebp               # RBP = loop_cnt
          movq        %r10,          %rcx               # RCX = EA_SRC
          movq        %r12,          %rdx               # RDX = EA_TGT
        0:movl        (%r14,%rbp,4), %r8d               # R08 = iterations
          call        _yread
          movl        %eax,          0x00(%r13)         # store
          addq        (%r15,%rbp,8), %rcx               # RCX = next EA
          addq        $0x04,         %r13               # R13 = next result
          decl        %ebp
          jns         0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            write
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x07,         %ebp
          movq        %r10,          %rcx               # RCX = EA_SRC
          movq        %r12,          %rdx               # RDX = EA_TGT
        1:movl        (%r14,%rbp,4), %r8d               # R08 = iterations
          call        _ywrite
          movl        %eax,          0x00(%r13)         # store
          addq        (%r15,%rbp,8), %rdx               # RDX = next EA
          addq        $0x04,         %r13               # R13 = next result
          decl        %ebp
          jns         1b
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            copy
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x07,         %ebp
          movq        %r10,          %rcx               # RCX = EA_SRC
          movq        %r12,          %rdx               # RDX = EA_TGT
        2:movl        (%r14,%rbp,4), %r8d               # R08 = iterations
          call        _ycopy
          movl        %eax,          0x00(%r13)         # store
          addq        (%r15,%rbp,8), %rcx               # RCX = next EA
          addq        (%r15,%rbp,8), %rdx               # RDX = next EA
          addq        $0x04,         %r13               # R13 = next result
          decl        %ebp
          jns         2b
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            r-m-w
            ~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x07,         %ebp
          movq        %r10,          %rcx               # RCX = EA_SRC
          movq        %r12,          %rdx               # RDX = EA_TGT
        3:movl        (%r14,%rbp,4), %r8d               # R08 = iterations
          call        _yrmw
          movl        %eax,          0x00(%r13)         # store
          addq        (%r15,%rbp,8), %rcx               # RCX = next EA
          addq        (%r15,%rbp,8), %rdx               # RDX = next EA
          addq        $0x04,         %r13               # R13 = next result
          decl        %ebp
          js          5f
          jmp         3b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            repeat 7 times
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        4:addq        $0x80,         %r13
        5:decq        %r11
          jns         L00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            move best results to 0C00...0D7C
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x40,         %eax
          movl        $0x60,         %ebp
          subq        $0x0C00,       %r13               # RDI = RUN_00
          testl       $0xFF,         GOTAVX(%rdi)       # AVX available?
          cmove       %eax,          %ebp
        6:movl        0x0000(%r13),  %eax               # get results
          movl        0x0180(%r13),  %ebx
          movl        0x0300(%r13),  %ecx
          movl        0x0480(%r13),  %edx
          movl        0x0600(%r13),  %r8d
          movl        0x0780(%r13),  %r9d
          movl        0x0900(%r13),  %r14d
          movl        0x0A80(%r13),  %r15d
          decl        %eax                              # sort out zeroes
          decl        %ebx                              # 0 => FFFFFFFF
          decl        %ecx
          decl        %edx
          decl        %r8d
          decl        %r8d
          decl        %r14d
          decl        %r15d
          cmpl        %eax,          %ebx               # fast sort
          cmovb       %ebx,          %eax
          cmpl        %ecx,          %edx
          cmovb       %edx,          %ecx
          cmpl        %r8d,          %r9d
          cmovb       %r9d,          %r8d
          cmpq        %r14,          %r15
          cmovb       %r15,          %r14
          cmpl        %eax,          %ecx
          cmovb       %ecx,          %eax
          cmpq        %r8,           %r14
          cmovb       %r14,          %r8
          cmpl        %eax,          %r8d
          cmovb       %r8d,          %eax
          movl        %eax,          BEST_C(%r13)       # store best
          addq        $0x04,         %r13
          decl        %ebp
          jne         6b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            calculate byte per clock
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x08,         %eax
          movl        $0x0C,         %ebp
          leaq        divtab(%rip),  %r14               # R14 = EA LUT block sizes
          cvtdq2pd    multab(%rip),  %xmm8              # XM8 = multiplicator
          leaq        BEST_C(%rdi),  %r13               # R13 = EA best
          leaq        BEST_B(%rdi),  %r15               # R15 = EA target
          testl       $0xFF,         GOTAVX(%rdi)       # AVX available?
          cmove       %eax,          %ebp
        0:cvtdq2pd    0x00(%r14),    %xmm0
          cvtdq2pd    0x08(%r14),    %xmm1
          cvtdq2pd    0x10(%r14),    %xmm2
          cvtdq2pd    0x18(%r14),    %xmm3
          mulpd       %xmm8,         %xmm0
          mulpd       %xmm8,         %xmm1
          mulpd       %xmm8,         %xmm2
          mulpd       %xmm8,         %xmm3
          cvtdq2pd    0x00(%r13),    %xmm4
          cvtdq2pd    0x08(%r13),    %xmm5
          cvtdq2pd    0x10(%r13),    %xmm6
          cvtdq2pd    0x18(%r13),    %xmm7
          divpd       %xmm4,         %xmm0
          divpd       %xmm5,         %xmm1
          divpd       %xmm6,         %xmm2
          divpd       %xmm7,         %xmm3
          cvtpd2dq    %xmm0,         %xmm4
          cvtpd2dq    %xmm1,         %xmm5
          cvtpd2dq    %xmm2,         %xmm6
          cvtpd2dq    %xmm3,         %xmm7
          movq        %xmm4,         0x00(%r15)
          movq        %xmm5,         0x08(%r15)
          movq        %xmm6,         0x10(%r15)
          movq        %xmm7,         0x18(%r15)
          addq        $0x20,         %r13
          addq        $0x20,         %r15
          decl        %ebp
          jne         0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            calculate average
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          leaq        BEST_B(%rdi),  %r11
          leaq        AV_INT(%rdi),  %r15
          movq        $0x03,         %r14
        1:movl        0x00(%r11),    %eax
          movl        0x04(%r11),    %ebx
          movl        0x08(%r11),    %ecx
          movl        0x0C(%r11),    %edx
          movl        0x10(%r11),    %ebp
          movl        0x14(%r11),    %r8d
          movl        0x18(%r11),    %r9d
          movl        0x1C(%r11),    %r13d
          addl        0x20(%r11),    %eax
          addl        0x24(%r11),    %ebx
          addl        0x28(%r11),    %ecx
          addl        0x2C(%r11),    %edx
          addl        0x30(%r11),    %ebp
          addl        0x34(%r11),    %r8d
          addl        0x38(%r11),    %r9d
          addl        0x3C(%r11),    %r13d
          addl        0x40(%r11),    %eax
          addl        0x44(%r11),    %ebx
          addl        0x48(%r11),    %ecx
          addl        0x4C(%r11),    %edx
          addl        0x50(%r11),    %ebp
          addl        0x54(%r11),    %r8d
          addl        0x58(%r11),    %r9d
          addl        0x5C(%r11),    %r13d
          addl        0x60(%r11),    %eax
          addl        0x64(%r11),    %ebx
          addl        0x68(%r11),    %ecx
          addl        0x6C(%r11),    %edx
          addl        0x70(%r11),    %ebp
          addl        0x74(%r11),    %r8d
          addl        0x78(%r11),    %r9d
          addl        0x7C(%r11),    %r13d
          addl        %ebx,          %eax
          addl        %edx,          %ecx
          addl        %r8d,          %ebp
          addl        %r9d,          %r13d
          addl        %ecx,          %eax
          addl        %r13d,         %ebp
          addl        %ebp,          %eax               # RAX = sum of 32 tests
          movl        %eax,          0x00(%r15)         # store
          addq        $0x80,         %r11               # next results
          addq        $0x04,         %r15               #      sum
          decq        %r14
          jne         1b
          xorl        %edx,          %edx
          movl        AV_INT(%rdi),  %eax               # RAX = average GPR
          movl        AV_SSE(%rdi),  %ebx               # RBX =         SSE
          movl        AV_AVX(%rdi),  %ecx               # RCX =         AVX
          addl        %eax,          %edx 
          addl        %eax,          %r14d
          addl        %ebx,          %edx
          addl        %ebx,          %r14d              # R14 = 64 results
          addl        %ecx,          %edx               # RDX = 96 results
          shll        $0x03,         %eax
          shll        $0x03,         %ebx
          shll        $0x03,         %ecx
          addl        %eax,          %edx               # RDX + 3 * 8 = 120
          addl        %ebx,          %edx
          addl        %ecx,          %edx
          shrl        $0x02,         %eax
          shrl        $0x02,         %ebx
          shrl        $0x02,         %ecx
          addl        %eax,          %edx               # RDX + 3 * 2 = 126
          addl        %ebx,          %edx
          addl        %ecx,          %edx
          shrl        %eax
          shrl        %ebx
          addl        %eax,          %edx               # RDX + 2 * 1 = 128
          addl        %ebx,          %edx               #      (AVX skipped)
          shrq        $0x06,         %r14               # total average 64
          shrl        $0x07,         %edx               #               96
          testl       $0xFF,         GOTAVX(%rdi)       # AVX available?
          cmove       %r14d,         %edx               # use 64 result average
          shrl        $0x05,         AV_INT(%rdi)       # divide sums by 32
          shrl        $0x05,         AV_SSE(%rdi)
          shrl        $0x05,         AV_AVX(%rdi)
          movl        %edx,          AV_TOT(%rdi)       # total average
          testl       $0xFF,         DO_MTT(%rsi)       # do MP tests?
          je          L02
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            multiple processors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq        %r10,          %rcx               # RCX = EA_TGT
          call        _FreMem
          movq        %r12,          %rcx               # RCX = EA_SRC
          call        _FreMem
          movq        $0x07,         %r11               # R11  = runs
          leaq        T0_CNT(%rsi),  %r12               # R12  = EA counter storage
          movl        CORE_C(%rsi),  %r13d              # R13  = processor count
          leaq        T0_HND(%rsi),  %r14               # R14  = EA T0_HND
          leaq        T0_TID(%rsi),  %r15               # R15  = EA T0_TID
          decq        %r13                              # single processor?
          je          XIZ
          movq        %r12,          %r10               # R10  = EA counter storage
          andq        $0x0F,         %r13               # keep in range
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            creation parameters
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      L01:xorl        %ecx,          %ecx               # RCX  = thread attributes
          movl        $0x1000,       %edx               # RDX  = stack size
          movq        $_multi,       %r8                # R08  = EA thread function
          movq        %r10,          %r9                # R09  = EA        count storage
          movq        $0x00,         0x20(%rsp)         # 0x20 = default creation flags
          movq        %r15,          0x28(%rsp)         # 0x28 = EA TID_xx
          movl        %r13d,         THRD_C(%rsi)       # store THRD_C
          movl        %r13d,         %ebp               # RBP = loop_cnt
          movl        $0x01,         _THRD_F(%rip)      # flag = run
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            create threads
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        0:call        _ThrdCrea
          movq        %rax,          0x00(%r14)         # store thread handle
          addq        $0x08,         0x28(%rsp)         # next         ID (PAR 6)
          addq        $0x40,         %r9                #              storage
          decl        %ebp
          jne         0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            run test
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          addq        $0x04,         %r10               # R10 = EA results + 4
          movl        $0x08,         %ecx               # RCX = 8  ms test
          call        _WaitTm
          decl        _THRD_F(%rip)                     # reset flag (stop)
          movl        $0x10,         %ecx               # RCX = 16 ms wait for thread termination
          call        _WaitTm
          decq        %r11
          jns         L01
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            evaluate
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq        %r12,          %r9                # R09 = EA results
          leaq        MULT_B(%rdi),  %r10               # R10 = EA best (field block)
          movl        %r13d,         %ebp               # RBP = core_count
          movq        %r10,          %r12               # R12 = EA best (field block)
        3:movl        0x00(%r9),     %eax               # read results
          movl        0x04(%r9),     %ebx
          movl        0x08(%r9),     %ecx
          movl        0x0C(%r9),     %edx
          movl        0x10(%r9),     %r8d
          movl        0x14(%r9),     %r11d
          movl        0x18(%r9),     %r13d
          movl        0x1C(%r9),     %r14d
          shrl        $0x03,         %eax               # divide by 8 (=> runs per ms)
          shrl        $0x03,         %ebx
          shrl        $0x03,         %ecx
          shrl        $0x03,         %edx
          shrq        $0x03,         %r8
          shrq        $0x03,         %r11
          shrq        $0x03,         %r13
          shrq        $0x03,         %r14
          movl        %eax,          %r15d              # get best + average
          cmpl        %ebx,          %eax
          cmovb       %ebx,          %eax
          addl        %r15d,         %ebx
          cmpl        %ecx,          %eax
          cmovb       %ecx,          %eax
          addl        %ecx,          %ebx
          cmpl        %edx,          %eax
          cmovb       %edx,          %eax
          addl        %edx,          %ebx
          cmpq        %r8,           %rax
          cmovb       %r8,           %rax
          addl        %r8d,          %ebx
          cmpq        %r11,          %rax
          cmovb       %r11,          %rax
          addl        %r11d,         %ebx
          cmpq        %r13,          %rax
          cmovb       %r13,          %rax
          addl        %r13d,         %ebx
          cmpq        %r14,          %rax
          cmovb       %r14,          %rax
          addl        %r14d,         %ebx
          shrl        $0x03,         %ebx               # divide by 8
          movl        %eax,          0x00(%r10)         # store best
          movl        %ebx,          0x80(%r10)         #       average
          addq        $0x40,         %r9                # R09 = next results
          addq        $0x04,         %r10               # R10 =      target
          decl        %ebp
          jne         3b
          movl        0x00(%r12),    %eax
          movl        0x04(%r12),    %ebx
          movl        0x08(%r12),    %ecx
          movl        0x0C(%r12),    %edx
          addl        0x10(%r12),    %eax
          addl        0x14(%r12),    %ebx
          addl        0x18(%r12),    %ecx
          addl        0x1C(%r12),    %edx
          addl        0x20(%r12),    %eax
          addl        0x24(%r12),    %ebx
          addl        0x28(%r12),    %ecx
          addl        0x2C(%r12),    %edx
          addl        0x30(%r12),    %eax
          addl        0x34(%r12),    %ebx
          addl        0x38(%r12),    %ecx
          addl        0x3C(%r12),    %edx
          movl        0x80(%r12),    %r10d
          movl        0x84(%r12),    %r11d
          movl        0x88(%r12),    %r13d
          movl        0x8C(%r12),    %r14d
          addl        0x90(%r12),    %r10d
          addl        0x94(%r12),    %r11d
          addl        0x98(%r12),    %r13d
          addl        0x9C(%r12),    %r14d
          addl        0xA0(%r12),    %r10d
          addl        0xA4(%r12),    %r11d
          addl        0xA8(%r12),    %r13d
          addl        0xAC(%r12),    %r14d
          addl        0xB0(%r12),    %r10d
          addl        0xB4(%r12),    %r11d
          addl        0xB8(%r12),    %r13d
          addl        0xBC(%r12),    %r14d
          addl        %ebx,          %eax
          addq        %r11,          %r10
          addl        %edx,          %ecx
          addq        %r14,          %r13
          addl        %ecx,          %eax
          addq        %r13,          %r10
          movl        %eax,          MC_RES(%rdi)       # store best
          movl        %r10d,         MC_AVG(%rdi)       #       avg.
          jmp         XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            free memory
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L02:movq        %r10,          %rcx               # RCX = EA_TGT
          call        _FreMem
      FR0:movq        %r12,          %rcx               # RCX = EA_SRC
          call        _FreMem
          jmp         XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                         T E S T    T H R E A D S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   address source
               RDX           target
               R08   loop count
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   result
            ==================================================================================
            64 bit General Purpose Registers (GPR)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            INTEGER read
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t00:movq        %rcx,          %rsi               # RSI = EA_source
          movl        %r8d,          %ebp               # RBP = loop_cnt
          rdtscp
          movl        %eax,          0x20(%rsp)         # START_LOW
          movl        %edx,          0x24(%rsp)         # START_HIGH
          .p2align 4,,15
        0:prefetchnta 0x00C0(%rsi)                      # early prefetch
          prefetchnta 0x0100(%rsi)
          prefetchnta 0x0140(%rsi)
          movq        0x00(%rsi),    %rax               # 24 consecutive reads
          movq        0x08(%rsi),    %rbx
          movq        0x10(%rsi),    %rcx
          movq        0x18(%rsi),    %rdx
          movq        0x20(%rsi),    %r8
          movq        0x28(%rsi),    %r9
          movq        0x30(%rsi),    %r10
          movq        0x38(%rsi),    %r11
          movq        0x40(%rsi),    %r12
          movq        0x48(%rsi),    %r13
          movq        0x50(%rsi),    %r14
          movq        0x58(%rsi),    %r15
          movq        0x60(%rsi),    %rax
          movq        0x68(%rsi),    %rbx
          movq        0x70(%rsi),    %rcx
          movq        0x78(%rsi),    %rdx
          movq        0x80(%rsi),    %r8
          movq        0x88(%rsi),    %r9
          movq        0x90(%rsi),    %r10
          movq        0x98(%rsi),    %r11
          movq        0xA0(%rsi),    %r12
          movq        0xA8(%rsi),    %r13
          movq        0xB0(%rsi),    %r14
          movq        0xB8(%rsi),    %r15
          addq        $0xC0,         %rsi               # next block
          decl        %ebp                              # count--
          je          out                               # done if zero
          jmp         0b                                # once more...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            INTEGER write
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t01:movq        %rdx,          %rdi               # RDI = EA_target
          movl        %r8d,          %ebp               # RBP = loop_cnt
          rdtscp
          movl        %eax,          0x20(%rsp)         # START_LOW
          movl        %edx,          0x24(%rsp)         # START_HIGH
          .p2align 4,,15
        1:movnti      %rax,          0x00(%rdi)
          movnti      %rbx,          0x08(%rdi)
          movnti      %rcx,          0x10(%rdi)
          movnti      %rdx,          0x18(%rdi)
          movnti      %r8,           0x20(%rdi)
          movnti      %r9,           0x28(%rdi)
          movnti      %r10,          0x30(%rdi)
          movnti      %r11,          0x38(%rdi)
          movnti      %r12,          0x40(%rdi)
          movnti      %r13,          0x48(%rdi)
          movnti      %r14,          0x50(%rdi)
          movnti      %r15,          0x58(%rdi)
          movnti      %rax,          0x60(%rdi)
          movnti      %rbx,          0x68(%rdi)
          movnti      %rcx,          0x70(%rdi)
          movnti      %rdx,          0x78(%rdi)
          movnti      %r8,           0x80(%rdi)
          movnti      %r9,           0x88(%rdi)
          movnti      %r10,          0x90(%rdi)
          movnti      %r11,          0x98(%rdi)
          movnti      %r12,          0xA0(%rdi)
          movnti      %r13,          0xA8(%rdi)
          movnti      %r14,          0xB0(%rdi)
          movnti      %r15,          0xB8(%rdi)
          addq        $0xC0,         %rdi               # next block
          decl        %ebp                              # count--
          je          out                               # done if zero
          jmp         1b                                # once more...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            INTEGER read - write (copy)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t02:movq        %rcx,          %rsi               # RSI = EA_source
          movq        %rdx,          %rdi               # RDI = EA_target
          movl        %r8d,          %ebp               # RBP = loop_cnt
          rdtscp
          movl        %eax,          0x20(%rsp)         # START_LOW
          movl        %edx,          0x24(%rsp)         # START_HIGH
          .p2align 4,,15
        3:prefetchnta 0x00C0(%rsi)                      # early prefetch
          prefetchnta 0x0100(%rsi)
          prefetchnta 0x0140(%rsi)
          movq        0x00(%rsi),    %rax
          movq        0x08(%rsi),    %rbx
          movq        0x10(%rsi),    %rcx
          movq        0x18(%rsi),    %rdx
          movq        0x20(%rsi),    %r8
          movq        0x28(%rsi),    %r9
          movq        0x30(%rsi),    %r10
          movq        0x38(%rsi),    %r11
          movq        0x40(%rsi),    %r12
          movq        0x48(%rsi),    %r13
          movq        0x50(%rsi),    %r14
          movq        0x58(%rsi),    %r15
          movq        0x60(%rsi),    %rax
          movq        0x68(%rsi),    %rbx
          movq        0x70(%rsi),    %rcx
          movq        0x78(%rsi),    %rdx
          movq        0x80(%rsi),    %r8
          movq        0x88(%rsi),    %r9
          movq        0x90(%rsi),    %r10
          movq        0x98(%rsi),    %r11
          movq        0xA0(%rsi),    %r12
          movq        0xA8(%rsi),    %r13
          movq        0xB0(%rsi),    %r14
          movq        0xB8(%rsi),    %r15
          movnti      %rax,          0x00(%rdi)
          movnti      %rbx,          0x08(%rdi)
          movnti      %rcx,          0x10(%rdi)
          movnti      %rdx,          0x18(%rdi)
          movnti      %r8,           0x20(%rdi)
          movnti      %r9,           0x28(%rdi)
          movnti      %r10,          0x30(%rdi)
          movnti      %r11,          0x38(%rdi)
          movnti      %r12,          0x40(%rdi)
          movnti      %r13,          0x48(%rdi)
          movnti      %r14,          0x50(%rdi)
          movnti      %r15,          0x58(%rdi)
          movnti      %rax,          0x60(%rdi)
          movnti      %rbx,          0x68(%rdi)
          movnti      %rcx,          0x70(%rdi)
          movnti      %rdx,          0x78(%rdi)
          movnti      %r8,           0x80(%rdi)
          movnti      %r9,           0x88(%rdi)
          movnti      %r10,          0x90(%rdi)
          movnti      %r11,          0x98(%rdi)
          movnti      %r12,          0xA0(%rdi)
          movnti      %r13,          0xA8(%rdi)
          movnti      %r14,          0xB0(%rdi)
          movnti      %r15,          0xB8(%rdi)
          addq        $0xC0,         %rdi               # next block
          addq        $0xC0,         %rsi
          decl        %ebp                              # count--
          je          out                               # done if zero
          jmp         3b                                # once more...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            INTEGER read - modify - write
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t03:movq        %rcx,          %rsi               # RSI = EA_source
          movq        %rdx,          %rdi               # RDI = EA_target
          movl        %r8d,          %ebp               # RBP = loop_cnt
          rdtscp
          movl        %eax,          0x20(%rsp)         # START_LOW
          movl        %edx,          0x24(%rsp)         # START_HIGH
          .p2align 4,,15
        3:prefetchnta 0x00C0(%rsi)                      # early prefetch
          prefetchnta 0x0100(%rsi)
          prefetchnta 0x0140(%rsi)
          movq        0x00(%rsi),    %rax
          movq        0x08(%rsi),    %rbx
          movq        0x10(%rsi),    %rcx
          movq        0x18(%rsi),    %rdx
          movq        0x20(%rsi),    %r8
          movq        0x28(%rsi),    %r9
          movq        0x30(%rsi),    %r10
          movq        0x38(%rsi),    %r11
          movq        0x40(%rsi),    %r12
          movq        0x48(%rsi),    %r13
          movq        0x50(%rsi),    %r14
          movq        0x58(%rsi),    %r15
          movq        0x60(%rsi),    %rax
          movq        0x68(%rsi),    %rbx
          movq        0x70(%rsi),    %rcx
          movq        0x78(%rsi),    %rdx
          movq        0x80(%rsi),    %r8
          movq        0x88(%rsi),    %r9
          movq        0x90(%rsi),    %r10
          movq        0x98(%rsi),    %r11
          movq        0xA0(%rsi),    %r12
          movq        0xA8(%rsi),    %r13
          movq        0xB0(%rsi),    %r14
          movq        0xB8(%rsi),    %r15
          addq        %rax,          %rbx               # non-destructive operations!
          addq        %rcx,          %rdx
          addq        %r8,           %r9
          addq        %r10,          %r11
          addq        %r12,          %r13
          addq        %r14,          %r15
          addq        %rbx,          %rax
          addq        %rdx,          %rcx
          addq        %r9,           %r8
          addq        %r11,          %r10
          addq        %r13,          %r12
          addq        %r15,          %r14
          subq        %rbx,          %rax
          subq        %rdx,          %rcx
          subq        %r9,           %r8
          subq        %r11,          %r10
          subq        %r13,          %r12
          subq        %r15,          %r14
          subq        %rax,          %rbx
          subq        %rcx,          %rdx
          subq        %r8,           %r9
          subq        %r10,          %r11
          subq        %r12,          %r13
          subq        %r14,          %r15
          movnti      %rax,          0x00(%rdi)
          movnti      %rbx,          0x08(%rdi)
          movnti      %rcx,          0x10(%rdi)
          movnti      %rdx,          0x18(%rdi)
          movnti      %r8,           0x20(%rdi)
          movnti      %r9,           0x28(%rdi)
          movnti      %r10,          0x30(%rdi)
          movnti      %r11,          0x38(%rdi)
          movnti      %r12,          0x40(%rdi)
          movnti      %r13,          0x48(%rdi)
          movnti      %r14,          0x50(%rdi)
          movnti      %r15,          0x58(%rdi)
          movnti      %rax,          0x60(%rdi)
          movnti      %rbx,          0x68(%rdi)
          movnti      %rcx,          0x70(%rdi)
          movnti      %rdx,          0x78(%rdi)
          movnti      %r8,           0x80(%rdi)
          movnti      %r9,           0x88(%rdi)
          movnti      %r10,          0x90(%rdi)
          movnti      %r11,          0x98(%rdi)
          movnti      %r12,          0xA0(%rdi)
          movnti      %r13,          0xA8(%rdi)
          movnti      %r14,          0xB0(%rdi)
          movnti      %r15,          0xB8(%rdi)
          addq        $0xC0,         %rdi               # next block
          addq        $0xC0,         %rsi
          decl        %ebp                              # count--
          je          out                               # done if zero
          jmp         3b                                # once more...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            128 bit XMM registers
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            XMM read
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t04:movq        %rcx,          %rsi               # RSI = EA_source
          movl        %r8d,          %ebp               # RBP = loop_cnt
          rdtscp
          movl        %eax,          0x20(%rsp)         # START_LOW
          movl        %edx,          0x24(%rsp)         # START_HIGH
          .p2align 4,,15
        4:prefetchnta 0x00C0(%rsi)                      # early prefetch
          prefetchnta 0x0100(%rsi)
          prefetchnta 0x0140(%rsi)
          movdqa      0x00(%rsi),    %xmm0
          movdqa      0x10(%rsi),    %xmm1
          movdqa      0x20(%rsi),    %xmm2
          movdqa      0x30(%rsi),    %xmm3
          movdqa      0x40(%rsi),    %xmm4
          movdqa      0x50(%rsi),    %xmm5
          movdqa      0x60(%rsi),    %xmm6
          movdqa      0x70(%rsi),    %xmm7
          movdqa      0x80(%rsi),    %xmm8
          movdqa      0x90(%rsi),    %xmm9
          movdqa      0xA0(%rsi),    %xmm10
          movdqa      0xB0(%rsi),    %xmm11
          addq        $0xC0,         %rsi               # next block
          decl        %ebp                              # count--
          je          out                               # done if zero
          jmp         4b                                # once more...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            XMM write
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t05:movq        %rdx,          %rdi               # RDI = EA_target
          movl        %r8d,          %ebp               # RBP = loop_cnt
          rdtscp
          movl        %eax,          0x20(%rsp)         # START_LOW
          movl        %edx,          0x24(%rsp)         # START_HIGH
          .p2align 4,,15
        5:movntdq     %xmm0,         0x00(%rdi)
          movntdq     %xmm1,         0x10(%rdi)
          movntdq     %xmm2,         0x20(%rdi)
          movntdq     %xmm3,         0x30(%rdi)
          movntdq     %xmm4,         0x40(%rdi)
          movntdq     %xmm5,         0x50(%rdi)
          movntdq     %xmm6,         0x60(%rdi)
          movntdq     %xmm7,         0x70(%rdi)
          movntdq     %xmm8,         0x80(%rdi)
          movntdq     %xmm9,         0x90(%rdi)
          movntdq     %xmm10,        0xA0(%rdi)
          movntdq     %xmm11,        0xB0(%rdi)
          addq        $0xC0,         %rdi               # next block
          decl        %ebp                              # count--
          je          out                               # done if zero
          jmp         5b                                # once more...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            XMM read - write (copy)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t06:movq        %rcx,          %rsi               # RSI = EA_source
          movq        %rdx,          %rdi               # RDI = EA_target
          movl        %r8d,          %ebp               # RBP = loop_cnt
          rdtscp
          movl        %eax,          0x20(%rsp)         # START_LOW
          movl        %edx,          0x24(%rsp)         # START_HIGH
          .p2align 4,,15
        6:prefetchnta 0x00C0(%rsi)                      # early prefetch
          prefetchnta 0x0100(%rsi)
          prefetchnta 0x0140(%rsi)
          movdqa      0x00(%rsi),    %xmm0
          movdqa      0x10(%rsi),    %xmm1
          movdqa      0x20(%rsi),    %xmm2
          movdqa      0x30(%rsi),    %xmm3
          movdqa      0x40(%rsi),    %xmm4
          movdqa      0x50(%rsi),    %xmm5
          movdqa      0x60(%rsi),    %xmm6
          movdqa      0x70(%rsi),    %xmm7
          movdqa      0x80(%rsi),    %xmm8
          movdqa      0x90(%rsi),    %xmm9
          movdqa      0xA0(%rsi),    %xmm10
          movdqa      0xB0(%rsi),    %xmm11
          movntdq     %xmm0,         0x00(%rdi)
          movntdq     %xmm1,         0x10(%rdi)
          movntdq     %xmm2,         0x20(%rdi)
          movntdq     %xmm3,         0x30(%rdi)
          movntdq     %xmm4,         0x40(%rdi)
          movntdq     %xmm5,         0x50(%rdi)
          movntdq     %xmm6,         0x60(%rdi)
          movntdq     %xmm7,         0x70(%rdi)
          movntdq     %xmm8,         0x80(%rdi)
          movntdq     %xmm9,         0x90(%rdi)
          movntdq     %xmm10,        0xA0(%rdi)
          movntdq     %xmm11,        0xB0(%rdi)
          addq        $0xC0,         %rdi               # next block
          addq        $0xC0,         %rsi
          decl        %ebp                              # count--
          je          out                               # done if zero
          jmp         6b                                # once more...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            XMM read - modify - write
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t07:movq        %rcx,          %rsi               # RSI = EA_source
          movq        %rdx,          %rdi               # RDI = EA_target
          movl        %r8d,          %ebp               # RBP = loop_cnt
          rdtscp
          movl        %eax,          0x20(%rsp)         # START_LOW
          movl        %edx,          0x24(%rsp)         # START_HIGH
          .p2align 4,,15
        7:prefetchnta 0x00C0(%rsi)                      # early prefetch
          prefetchnta 0x0100(%rsi)
          prefetchnta 0x0140(%rsi)
          movdqa      0x00(%rsi),    %xmm0
          movdqa      0x10(%rsi),    %xmm1
          movdqa      0x20(%rsi),    %xmm2
          movdqa      0x30(%rsi),    %xmm3
          movdqa      0x40(%rsi),    %xmm4
          movdqa      0x50(%rsi),    %xmm5
          movdqa      0x60(%rsi),    %xmm6
          movdqa      0x70(%rsi),    %xmm7
          movdqa      0x80(%rsi),    %xmm8
          movdqa      0x90(%rsi),    %xmm9
          movdqa      0xA0(%rsi),    %xmm10
          movdqa      0xB0(%rsi),    %xmm11
          paddq       %xmm0,         %xmm1              # non-destructive operations!
          paddq       %xmm2,         %xmm3
          paddq       %xmm4,         %xmm5
          paddq       %xmm6,         %xmm7
          paddq       %xmm8,         %xmm9
          paddq       %xmm10,        %xmm11
          psubq       %xmm0,         %xmm1
          psubq       %xmm2,         %xmm3
          psubq       %xmm4,         %xmm5
          psubq       %xmm6,         %xmm7
          psubq       %xmm8,         %xmm9
          psubq       %xmm10,        %xmm11
          movntdq     %xmm0,         0x00(%rdi)
          movntdq     %xmm1,         0x10(%rdi)
          movntdq     %xmm2,         0x20(%rdi)
          movntdq     %xmm3,         0x30(%rdi)
          movntdq     %xmm4,         0x40(%rdi)
          movntdq     %xmm5,         0x50(%rdi)
          movntdq     %xmm6,         0x60(%rdi)
          movntdq     %xmm7,         0x70(%rdi)
          movntdq     %xmm8,         0x80(%rdi)
          movntdq     %xmm9,         0x90(%rdi)
          movntdq     %xmm10,        0xA0(%rdi)
          movntdq     %xmm11,        0xB0(%rdi)
          addq        $0xC0,         %rdi               # next block
          addq        $0xC0,         %rsi
          decl        %ebp                              # count--
          je          out                               # done if zero
          jmp         7b                                # once more...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            256 bit YMM registers
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            YMM read
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t08:movq        %rcx,          %rsi               # RSI = EA_source
          movl        %r8d,          %ebp               # RBP = loop_cnt
          rdtscp
          movl        %eax,          0x20(%rsp)         # START_LOW
          movl        %edx,          0x24(%rsp)         # START_HIGH
          .p2align 4,,15
        8:prefetchnta 0x00C0(%rsi)                      # early prefetch
          prefetchnta 0x0100(%rsi)
          prefetchnta 0x0140(%rsi)
          vmovdqa     0x00(%rsi),    %ymm0
          vmovdqa     0x20(%rsi),    %ymm1
          vmovdqa     0x40(%rsi),    %ymm2
          vmovdqa     0x60(%rsi),    %ymm3
          vmovdqa     0x80(%rsi),    %ymm4
          vmovdqa     0xA0(%rsi),    %ymm5
          addq        $0xC0,         %rsi               # next block
          decl        %ebp                              # count--
          je          out                               # done if zero
          jmp         8b                                # once more...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            YMM write
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t09:movq        %rdx,          %rdi               # RSI = EA_target
          movl        %r8d,          %ebp               # RBP = loop_cnt
          rdtscp
          movl        %eax,          0x20(%rsp)         # START_LOW
          movl        %edx,          0x24(%rsp)         # START_HIGH
          .p2align 4,,15
        9:vmovntdq    %ymm0, 0x00(%rdi)                 # 6 consecutive writes
          vmovntdq    %ymm1, 0x20(%rdi)
          vmovntdq    %ymm2, 0x40(%rdi)
          vmovntdq    %ymm3, 0x60(%rdi)
          vmovntdq    %ymm4, 0x80(%rdi)
          vmovntdq    %ymm5, 0xA0(%rdi)
          addq        $0xC0, %rdi                       # next block
          decl        %ebp                              # count--
          je          out                               # done if zero
          jmp         9b                                # once more...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            YMM read - write (copy)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t10:movq        %rcx,          %rsi               # RSI = EA_source
          movq        %rdx,          %rdi               # RDI = EA_target
          movl        %r8d,          %ebp               # RBP = loop_cnt
          rdtscp
          movl        %eax,          0x20(%rsp)         # START_LOW
          movl        %edx,          0x24(%rsp)         # START_HIGH
          .p2align 4,,15
        0:prefetchnta 0x00C0(%rsi)                      # early prefetch
          prefetchnta 0x0100(%rsi)
          prefetchnta 0x0140(%rsi)
          vmovdqa     0x00(%rsi),    %ymm0
          vmovdqa     0x20(%rsi),    %ymm1
          vmovdqa     0x40(%rsi),    %ymm2
          vmovdqa     0x60(%rsi),    %ymm3
          vmovdqa     0x80(%rsi),    %ymm4
          vmovdqa     0xA0(%rsi),    %ymm5
          vmovntdq    %ymm0,         0x00(%rdi)
          vmovntdq    %ymm1,         0x20(%rdi)
          vmovntdq    %ymm2,         0x40(%rdi)
          vmovntdq    %ymm3,         0x60(%rdi)
          vmovntdq    %ymm4,         0x80(%rdi)
          vmovntdq    %ymm5,         0xA0(%rdi)
          addq        $0xC0,         %rdi               # next block
          addq        $0xC0,         %rsi
          decl        %ebp                              # count--
          je          out                               # done if zero
          jmp         0b                                # once more...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            YMM read - modify - write
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t11:movq        %rcx,          %rsi               # RSI = EA_source
          movq        %rdx,          %rdi               # RDI = EA_target
          movl        %r8d,          %ebp               # RBP = loop_cnt
          rdtscp
          movl        %eax,          0x20(%rsp)         # START_LOW
          movl        %edx,          0x24(%rsp)         # START_HIGH
          .p2align 4,,15
        1:prefetchnta 0x00C0(%rsi)                      # early prefetch
          prefetchnta 0x0100(%rsi)
          prefetchnta 0x0140(%rsi)
          vmovdqa     0x00(%rsi),    %ymm0
          vmovdqa     0x20(%rsi),    %ymm1
          vmovdqa     0x40(%rsi),    %ymm2
          vmovdqa     0x60(%rsi),    %ymm3
          vmovdqa     0x80(%rsi),    %ymm4
          vmovdqa     0xA0(%rsi),    %ymm5
          paddq       %xmm0,         %xmm1              # destructive operations -
          paddq       %xmm2,         %xmm3              # upper DOs are cleared!
          paddq       %xmm4,         %xmm5
          paddq       %xmm1,         %xmm0
          paddq       %xmm3,         %xmm2
          paddq       %xmm5,         %xmm4
          psubq       %xmm1,         %xmm0
          psubq       %xmm3,         %xmm2
          psubq       %xmm5,         %xmm4
          psubq       %xmm0,         %xmm1
          psubq       %xmm2,         %xmm3
          psubq       %xmm4,         %xmm5
          vmovntdq    %ymm0,         0x00(%rdi)
          vmovntdq    %ymm1,         0x20(%rdi)
          vmovntdq    %ymm2,         0x40(%rdi)
          vmovntdq    %ymm3,         0x60(%rdi)
          vmovntdq    %ymm4,         0x80(%rdi)
          vmovntdq    %ymm5,         0xA0(%rdi)
          addq        $0xC0,         %rdi               # next block
          addq        $0xC0,         %rsi
          decl        %ebp                              # count--
          je          out                               # done if zero
          jmp         1b                                # once more...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            multithreading
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      tmt:xorl        %ebx,          %ebx               # RBX = loop_cnt
        0:paddq       %xmm0,         %xmm1
          paddq       %xmm2,         %xmm3
          paddq       %xmm4,         %xmm5
          addq        %r10,          %r11
          addq        %r12,          %r13
          addq        %r8,           %r9
          addq        %rdx,          %rax
          subq        %r11,          %r10
          subq        %r13,          %r12
          psubq       %xmm1,         %xmm0
          psubq       %xmm2,         %xmm3
          psubq       %xmm4,         %xmm5
          subq        %r9,           %r8
          subq        %rdx,          %rax
          addq        %r10,          %r11
          addq        %r12,          %r13
          addq        %r8,           %r9
          addq        %rdx,          %rax
          paddq       %xmm0,         %xmm1
          paddq       %xmm2,         %xmm3
          paddq       %xmm4,         %xmm5
          subq        %r11,          %r10
          subq        %r13,          %r12
          subq        %r9,           %r8
          subq        %rdx,          %rax
          addq        %r10,          %r11
          addq        %r12,          %r13
          psubq       %xmm1,         %xmm0
          psubq       %xmm2,         %xmm3
          psubq       %xmm4,         %xmm5
          addq        %r8,           %r9
          addq        %rdx,          %rax
          subq        %r11,          %r10
          subq        %r13,          %r12
          subq        %r9,           %r8
          subq        %rdx,          %rax
          incl        %ebx                              # loop_cnt++
          testl       $0x01,         _THRD_F(%rip)      # end?
          jne         0b
          movl        %ebx,          0x00(%rcx)         # store count
          movl        $0x01,         %eax
          jmp         XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            calculate result
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      out:rdtscp
          movl        0x20(%rsp),%ebx                   # START_LOW
          movl        0x24(%rsp),%ecx                   # START_HIGH
          addl        $0x46,     %ebx                   # RBX + 70 (for RDTSCP)
          shlq        $0x20,     %rdx                   # EEEE_0000
          shlq        $0x20,     %rcx                   # SSSS_0000
          addq        %rdx,      %rax                   # EEEE_EEEE
          addq        %rbx,      %rcx                   # SSSS_SSSS
          subq        %rcx,      %rax                   # RAX = E - S
          jmp         XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            error handling
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      R03:movl        $0x03,        %ecx                # ERR_LOAD_SOURCE
          jmp         RMG
          .p2align 4,,15
      R04:movl        $0x04,        %ecx                # ERR_LOAD_TARGET
          call        _ErrMgr
          jmp         FR0
          .p2align 4,,15
      RMG:call        _ErrMgr
          jmp         XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorq        %rax,         %rax
      XIT:movdqa      0x0040(%rsp), %xmm4
          movdqa      0x0050(%rsp), %xmm5
          movdqa      0x0060(%rsp), %xmm6
          movdqa      0x0070(%rsp), %xmm7
          movdqa      0x0080(%rsp), %xmm8
          movdqa      0x0090(%rsp), %xmm9
          movdqa      0x00A0(%rsp), %xmm10
          movdqa      0x00B0(%rsp), %xmm11
          movq        0x00C8(%rsp), %r10
          movq        0x00D0(%rsp), %r11
          movq        0x00D8(%rsp), %r12
          movq        0x00E0(%rsp), %r13
          movq        0x00E8(%rsp), %r14
          movq        0x00F0(%rsp), %r15
          movq        0x00F8(%rsp), %rbp
          movq        0x0100(%rsp), %rsi
          movq        0x0108(%rsp), %rdi
          movq        0x0110(%rsp), %rbx
          movq        0x0118(%rsp), %r9
          movq        0x0120(%rsp), %r8
          movq        0x0128(%rsp), %rdx
          movq        0x0130(%rsp), %rcx
          addq        $0x0138,      %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,         8, 3
          .comm    _THRD_F,      8, 3
