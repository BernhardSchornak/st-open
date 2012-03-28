          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                          C o n v e r s i o n T o o l    (C) ST-Open 1979 - 2012
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
          .include "dt5.h"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section .rdata, "dr"
          .p2align 4,0x00,15
     LC00:.ascii   "syst\\num.dat"
          .byte    0x00, 0x00, 0x00, 0x00
     LC01:.ascii   "data\\FFFFFFFE"
          .byte    0x00, 0x00, 0x00
     LC02:.ascii   "G:\\ST8\\SRC\\DatTools\\data\\FFFFFFFE"
          .byte    0x00, 0x00, 0x00
         /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          .p2align 4,,15
          .globl   _cvt
          .def     _cvt; .scl 2; .type 32; .endef
     _cvt:subq     $0x01F8,          %rsp
          movq     _BNR(%rip),       %rax                # RAX = BNR
          movq     %r15,             0x0148(%rsp)
          movdqa   %xmm4,            0x0150(%rsp)
          movdqa   %xmm5,            0x0160(%rsp)
          movdqa   %xmm6,            0x0170(%rsp)
          movdqa   %xmm7,            0x0180(%rsp)
          movq     %r14,             0x0190(%rsp)
          movq     %r13,             0x0198(%rsp)
          movq     %r12,             0x01A0(%rsp)
          movq     %r11,             0x01A8(%rsp)
          movq     %r10,             0x01B0(%rsp)
          movq     %rbp,             0x01B8(%rsp)
          movq     %rsi,             0x01C0(%rsp)
          movq     %rdi,             0x01C8(%rsp)
          movq     %rbx,             0x01D0(%rsp)
          movq     %r9,              0x01D8(%rsp)
          movq     %r8,              0x01E0(%rsp)
          movq     %rdx,             0x01E8(%rsp)
          movq     %rcx,             0x01F0(%rsp)
          movq     %rax,             %r15                # R15 = BNR
          movl     CT_SRC(%rax),     %ebp                # RBP = src_cnt
          movl     $0xFFFFFF19,      %ecx                # RCX = field number
          call     _getMH
          movq     %rax,             %r14                # R14 = MH src
call      _RegDmp
          decl     %ebp                                  # RBP = cur_src
          js       XIZ
          testq    %rax,             %rax                # got MH?
          je       XIZ
          movl     $0x00010000,      %ecx                # RCX = size
          call     _AloMem
          movq     %rax,             %r13                # R13 = EA src
          call     _AloMem
          pxor     %xmm0,            %xmm0               # XM0 = 0
          pxor     %xmm1,            %xmm1               # XM1 = 0
          movq     %rax,             %r12                # R12 = EA tgt          
call      _RegDmp
          testq    %r13,             %r13                # failed?
          je       XIZ
          testq    %rax,             %rax                # failed?
          je       XIZ
          movq     %r12,             0x00D0(%rsp)        # set FH tgt
          movq     %xmm0,            0x00D8(%rsp)
          movdqa   %xmm1,            0x00E0(%rsp)
          movq     %r13,             0x0110(%rsp)        # set FH src
          movq     %xmm0,            0x0118(%rsp)
          movdqa   %xmm1,            0x0120(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            load template
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          leaq     0xC0(%rsp),       %rcx                # RCX = FH tgt
          xorl     %edx,             %edx                # RDX = 0
          movq     $0x02,            %r8                 # R08 = open if exists
          leaq     LC02(%rip),       %r9                 # R09 = EA template
          call     _Fopen
call _RegDmp
          testl    %eax,             %eax                # error?
          jne      XIZ
          call     _Fread
          movl     %eax,             %ebx                # RBX = RC write
          call     _Fclose
          testl    %ebx,             %ebx                # error?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~
            copy cvt tables
            ~~~~~~~~~~~~~~~~~
          */
          leaq     CV_DEC(%r15),     %r10                # R10 = EA LUT src
          leaq     0x2000(%r12),     %r8                 # R08 = EA LUT tgt
          movq     $0x10,            %r9                 # R09 = loop_cnt
          .p2align 4,,15
        0:movdqa   0x00(%r10),       %xmm0
          movdqa   0x10(%r10),       %xmm1
          movdqa   0x20(%r10),       %xmm2
          movdqa   0x30(%r10),       %xmm3
          movdqa   0x40(%r10),       %xmm4
          movdqa   0x50(%r10),       %xmm5
          movdqa   0x60(%r10),       %xmm6
          movdqa   0x70(%r10),       %xmm7
          movdqa   %xmm0,            0x00(%r8)
          movdqa   %xmm1,            0x10(%r8)
          movdqa   %xmm2,            0x20(%r8)
          movdqa   %xmm3,            0x30(%r8)
          movdqa   %xmm4,            0x40(%r8)
          movdqa   %xmm5,            0x50(%r8)
          movdqa   %xmm6,            0x60(%r8)
          movdqa   %xmm7,            0x70(%r8)
          addq     $0x80,            %r10
          addq     $0x80,            %r8
          decq     %r9
          jne      0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            copy loop
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:movdqa   LC00(%rip),       %xmm7               # XM7 = syst\num.dat
          leaq     0x40(%rsp),       %r11                # R09 = EA name
          movq     %r14,             %rcx                # RCX = MH
          movl     %ebp,             %edx                # RDX = cur_src
          xorq     %r8,              %r8                 # R08 = sub 00
          movq     $0x01,            %r9                 # R09 = FDA_READ
          movq     %r11,             0x20(%rsp)          # P_5 = EA name
          call     _FDacc
          incq     %r8                                   # R08 = sub 01
          call     _FDacc
          movdqu   %xmm7,            0x00(%r11, %rax)    # append syst\num.dat
          movl     %eax,             %esi                # RSI = IP
call      _RegDmp
          /*
            ~~~~~~~~~~~~~~~~~
            load num.dat
            ~~~~~~~~~~~~~~~~~
          */
          leaq     0x0100(%rsp),     %rcx                # RCX = FH src
          xorl     %edx,             %edx                # RDX = 0
          movq     $0x02,            %r8                 # R08 = open if exists
          movq     %r11,             %r9                 # R09 = EA name
          call     _Fopen
call      _RegDmp
          testl    %eax,             %eax                # error?
          jne      L09
          xorl     %edx,             %edx                # RDX = entire file
          call     _Fread
          movl     %eax,             %ebx                # RBX = RC write
          call     _Fclose
          testl    %ebx,             %ebx                # error?
          jne      L09
          /*
            ~~~~~~~~~~~~~~~~~
            copy
            ~~~~~~~~~~~~~~~~~
          */
          leaq     0x0100(%r13),     %r10                # R10 = EA src
          leaq     0x0100(%r12),     %r8                 # R08 = EA tgt
          movq     $0x20,            %r9                 # R09 = loop_cnt
          .p2align 4,,15
        0:movdqa   0x00(%r10),       %xmm0
          movdqa   0x10(%r10),       %xmm1
          movdqa   0x20(%r10),       %xmm2
          movdqa   0x30(%r10),       %xmm3
          movdqa   0x40(%r10),       %xmm4
          movdqa   0x50(%r10),       %xmm5
          movdqa   0x60(%r10),       %xmm6
          movdqa   0x70(%r10),       %xmm7
          movdqa   %xmm0,            0x00(%r8)
          movdqa   %xmm1,            0x10(%r8)
          movdqa   %xmm2,            0x20(%r8)
          movdqa   %xmm3,            0x30(%r8)
          movdqa   %xmm4,            0x40(%r8)
          movdqa   %xmm5,            0x50(%r8)
          movdqa   %xmm6,            0x60(%r8)
          movdqa   %xmm7,            0x70(%r8)
          addq     $0x80,            %r10
          addq     $0x80,            %r8
          decq     %r9
          jne      0b
          /*
            ~~~~~~~~~~~~~~~~~
            store FFFFFFFE
            ~~~~~~~~~~~~~~~~~
          RAX   -
          RBX   -
          RCX   -
          RDX   -
          RDI   -
          RSI   IP
          RBP   loop counter
          R08   -
          R09   -
          R10   -
          R11   EA filename (0x40(rsp))
          R12   EA tgt
          R13   EA src
          R14   MH source folders
          R15   BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movdqa   LC01(%rip),       %xmm7               # XM7 = data\FFFFFFFE
          leaq     0xC0(%rsp),       %rcx                # RCX = FH tgt
          movdqu   %xmm7,            0x00(%r11, %rsi)    # append data\FFFFFFFE
          xorl     %edx,             %edx                # RDX = no size
          movq     $0x03,            %r8                 # R08 = replace if exists
          movq     %r11,             %r9                 # R09 = EA name
          call     _Fopen
call      _RegDmp
          testl    %eax,             %eax
          jne      L09
          movl     $0x7900,          %edx                # RDX = size
          call     _Fwrite
          call     _Fclose
          /*
            ~~~~~~~~~~~~~~~~~
            loop
            ~~~~~~~~~~~~~~~~~
          */
      L09:decl     %ebp                                  # cur_src--
          jne      L00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorl     %eax,             %eax
      XIT:movq     0x0148(%rsp),     %r15
          movdqa   0x0150(%rsp),     %xmm4
          movdqa   0x0160(%rsp),     %xmm5
          movdqa   0x0170(%rsp),     %xmm6
          movdqa   0x0180(%rsp),     %xmm7
          movq     0x0190(%rsp),     %r14
          movq     0x0198(%rsp),     %r13
          movq     0x01A0(%rsp),     %r12
          movq     0x01A8(%rsp),     %r11
          movq     0x01B0(%rsp),     %r10
          movq     0x01B8(%rsp),     %rbp
          movq     0x01C0(%rsp),     %rsi
          movq     0x01C8(%rsp),     %rdi
          movq     0x01D0(%rsp),     %rbx
          movq     0x01D8(%rsp),     %r9
          movq     0x01E0(%rsp),     %r8
          movq     0x01E8(%rsp),     %rdx
          movq     0x01F0(%rsp),     %rcx
          addq     $0x01F8,          %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,             8, 3
