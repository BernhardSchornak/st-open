          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                            C O M M O N   F U N C T I O N S   (C) ST-Open 2012
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
          .include "dim.h"
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                              G e t I n f ()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   00   ERR_NO_ERR
                     01   DIM_NO_PHYS_DRIVE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Retrieve device information
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _GetInf
          .def     _GetInf; .scl 2; .type 32; .endef
  _GetInf:subq     $0xF8,               %rsp
          movq     _BNR(%rip),          %rax
          movq     %r15,                0x68(%rsp)
          movq     %r14,                0x70(%rsp)
          movq     %r13,                0x78(%rsp)
          movq     %r12,                0x80(%rsp)
          movq     %r11,                0x88(%rsp)
          movq     %r10,                0x90(%rsp)
          movq     %rbp,                0x98(%rsp)
          movq     %rsi,                0xA0(%rsp)
          movq     %rdi,                0xA8(%rsp)
          movq     %rbx,                0xB0(%rsp)
          movq     %r9,                 0xB8(%rsp)
          movq     %r8,                 0xC0(%rsp)
          movq     %rdx,                0xC8(%rsp)
          movq     %xmm4,               0xD0(%rsp)
          movq     %xmm5,               0xE0(%rsp)
          movq     %rcx,                0xF0(%rsp)
          movq     %rax,                %r15
          movq     EA_DRP(%rax),        %r14                    # R13 = EA DRP
          movq     MH_DRP(%rax),        %r13                    # R13 = MH DRP
          leaq     0x40(%rsp),          %r12                    # R12 = EA dummy
          leaq     PDRV_N(%rax),        %r11                    # R13 = EA name
          xorl     %ebp,                %ebp                    # RBP = p_drv_cnt
          movl     $0x0A,               %ebx                    # RBX = loop_cnt
          addq     $0x0100,             %r14                    # R14 = EA data
          movb     $0x30,               PDRV_I(%r15)            # reset to '0'
          movq     %r13,                %rcx                    # RCX = MH
          call     _LDclr
          .p2align 4,,15
        0:movq     %r11,                %rcx                    # RCX = EA name
          xorl     %edx,                %edx                    # direct access
          call     _Open
          testq    %rax,                %rax                    # error?
          jbe      1f
          movq     %rax,                %rcx                    # RCX = handle
          movl     $0x00070000,         %edx                    # RCX = control code
          xorq     %r8,                 %r8                     # R08 = NULL
          xorq     %r9,                 %r9                     # R09 = 0
          movq     %r14,                0x20(%rsp)              # P_5 = structure EA
          movq     $0x40,               0x28(%rsp)              # P_6 =           size
          movq     %r12,                0x30(%rsp)              # P_7 = EA unused dummy
          movq     $0x00,               0x38(%rsp)              # P_8 =           OVERLAPPED
          call     _Ioctl
          movl     %eax,                %edi                    # RDI = error
          call     _Close
          testl    %edi,                %edi                    # error?
          je       1f
          movdqa   0x00(%r11),          %xmm0                   # get name
          movdqa   0x10(%r11),          %xmm1
          movdqa   %xmm0,               0x20(%r14)              # store name
          movdqa   %xmm1,               0x30(%r14)
          incl     %ebp                                         # RBP = p_drv_cnt++
          addq     $0x40,               %r14                    # R14 = next block
        1:decl     %ebx
          je       2f
          incb     PDRV_I(%r15)                                 # next drive
          jmp      0b
        2:movl     %ebp,                DRV_CT(%r15)            # store drive count
          xorl     %eax,                %eax
          testl    %ebp,                %ebp                    # any drive found?
          sete     %al
          movq     0x68(%rsp),          %r15
          movq     0x70(%rsp),          %r14
          movq     0x78(%rsp),          %r13
          movq     0x80(%rsp),          %r12
          movq     0x88(%rsp),          %r11
          movq     0x90(%rsp),          %r10
          movq     0x98(%rsp),          %rbp
          movq     0xA0(%rsp),          %rsi
          movq     0xA8(%rsp),          %rdi
          movq     0xB0(%rsp),          %rbx
          movq     0xB8(%rsp),          %r9
          movq     0xC0(%rsp),          %r8
          movq     0xC8(%rsp),          %rdx
          movq     0xD0(%rsp),          %xmm4
          movq     0xE0(%rsp),          %xmm5
          movq     0xF0(%rsp),          %rcx
          addq     $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,                8, 3
