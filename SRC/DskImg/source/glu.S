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
                                               S T g l u e
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
          .globl   _glue
          .def     _glue; .scl 2; .type 32; .endef
    _glue:subq     $0xF8,               %rsp
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
          movq     %rax,                %r15                    # RAX = BNR
          movq     GLUECT(%rax),        %ebx                    # RBX = cnt
          movq     GLUEEA(%rax),        %r14                    # R13 = GLUEEA
          movq     GLUEMH(%rax),        %r13                    # R13 = GLUEMH
          leaq     GLBFEA(%r15),        %rcx
          xorl     %edi,                %edi                    # RDI = src_cnt
          call     _LDreq
          pxor     %xmm0,               %xmm0                   # XM0 = 0
          testl    %eax,                %eax                    #       error?
          jne      XIT
          movq     0x00(%rcx),          %r12                    # R12 = EA buffer
          movdqa   %xmm0,               0x20(%rsp)              #       set FH
          movq     %r12,                0x30(%rsp)
          movq     %xmm0,               0x38(%rsp)
          movdqa   %xmm0,               0x40(%rsp)
          .p2align 4,,15
        0:movq     %r13,                %rcx                    # RCX = MH
          xorl     %edx,                %edx                    # RDX = entry
          movq     $0x01,               %r8                     # R08 = sub01
          movq     $0x07,               %r9                     # R09 = FDA_ADDRESS
          call     _FDacc
          leaq     0x20(%rsp),          %rcx                    # RCX = FH
          xorl     %edx,                %edx                    # RDX = default
          movq     $0x02,               %r8                     # R08 = open if exists
          movq     %rax,                %r9                     # R09 = EA name
          call     _Fopen
          testl    %eax,                %eax                    #       error?
          jne      1f
          call     _Fread
          movl     %eax,                %ebp                    # RBP = error
          call     _Fclose
          testl    %ebp,                %ebp                    #       error?
          jne      1f
          addq     $0x00010000,         0x30(%rsp)              #       next EA
          incl     %edi                                         # RDI = src_cnt++
        1:decl     %ebx
          jne      0b
          movq     %r12,                %r11                    # R11 = block
          leaq     0x00040000(%r12),    %r14                    # R14 = EA tables
          leaq     0x00060000(%r12),    %r13                    # R13 = EA symbols
          leaq     0x00080000(%r12),    %rsi                    # RSI = EA relocation
          .p2align 4,,15
        2:movzwl   0x10(%r11),          %r8                     # R08 = size optional header
          movzwl   0x02(%r11),          %ebx                    # RBX = section count
          movl     0x08(%r11),          %r9                     # R09 = symbols offset
          movl     0x0C(%r11),          %r10d                   # R10 =         count
          .p2align 4,,15
        3:movdqu   0x14(%r11, %r8),     %xmm0                   # XM0 = DO_0 entry
          movdqu   0x24(%r11, %r8),     %xmm1                   # XM1 = DO_1 entry
          movdqa   %xmm0,               0x00(%r14)              #       store DD_0 entry
          movdqa   %xmm1,               0x10(%r14)              #             DD_1 entry
          movq     %r11,                0x18(%r14)              #             EA block
          addq     $0x28,               %r8                     # R08 = next offset
          addq     $0x20,               %r14                    # R14 =      entry
          decl     %ebx
          jne      3b
          .p2align 4,,15
        4:movl     0x00(%r11, %r9),     %eax                    # RAX = name/size
          movl     0x04(%r11, %r9),     %ebx                    # RBX = name/offset
          movl     0x08(%r11, %r9),     %ecx                    # RCX = value
          movl     0x0C(%r11, %r9),     %edx                    # RDX = snum/styp
          movzwl   0x10(%r11, %r9),     %ebp                    # RBP = sclass/auxcnt
          movl     %eax,                0x00(%r13)              #       store
          movl     %ebx,                0x04(%r13)
          movl     %ecx,                0x30(%r13)
          movl     %edx,                0x34(%r13)
          movl     %ebp,                0x38(%r13)
          testl    %eax,                %eax
          jne      5f
          movdqu   0x00(%r11, %rbx),    %xmm0                   #       process C style names...
          movdqu   0x00(%r11, %rbx),    %xmm1
          movdqu   0x00(%r11, %rbx),    %xmm2
          movdqa   %xmm0,               0x00(%r13)
          call     _SPad
          cmpb     $0x00,               0x0F(%r13)
          je       5f
          movdqa   %xmm1,               0x10(%r13)
          call     _SPad
          cmpb     $0x00,               0x1F(%r13)
          je       5f
          movdqa   %xmm2,               0x20(%r13)
          call     _SPad
          .p2align 4,,15
        5:addq     $0x12,               %r9                     # R09 = next symbol
          addq     $0x40,               %r13                    # R13 = next entry
          decq     %r10d
          jne      4b
        


          leaq     0x000A0000(%r12),    %r10                    # R10 = EA text


      XIT:movq     0x68(%rsp),          %r15
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
