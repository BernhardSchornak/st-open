          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                 D I A L O G S    (C) ST-Open 1979 - 2011
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
          */
          .include "..\\..\\..\\include\\yasm.h"
          .include "tst.h"
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            about   about box
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ???? ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .def     about; .scl 2; .type 32; .endef
    about:subq     $0xF8,        %rsp
          xorl     %eax,         %eax
          nop
          movq     %r9,          0xD8(%rsp)
          movq     %r8,          0xE0(%rsp)
          movq     %rdx,         0xE8(%rsp)
          movq     %rcx,         0xF0(%rsp)
          subl     $0x0111,      %edx             # WM_COMMAND?
          je       0f
          incl     %edx                           # WM_INITDIALOG?
          jne      XT4
          call     _CtrWn
          movl     $0x01,        %eax
          jmp      XT4
          .p2align 4,,15
        0:addq     $0xF8,        %rsp             # remove stack frame
          addl     $0x0111,      %edx             # restore
          jmp      _KillDlg
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            test    test dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ???? ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .def     test; .scl 2; .type 32; .endef
     test:subq     $0xF8, %rsp
          movq     _BNR(%rip),   %rax             # RAX = BNR
          nop
          movq     %rbp,         0xB8(%rsp)
          movq     %rsi,         0xC0(%rsp)
          movq     %rdi,         0xC8(%rsp)
          movq     %rbx,         0xD0(%rsp)
          movq     %r9,          0xD8(%rsp)
          movq     %r8,          0xE0(%rsp)
          movq     %rdx,         0xE8(%rsp)
          movq     %rcx,         0xF0(%rsp)
          movq     %rax,         %rsi             # RSI = BNR
          movq     %rcx,         %rdi             # RDI = HWND
          andl     $0xFFFF,      %r8d
          subl     $0x0111,      %edx             # WM_COMMAND?
          je       1f
          incl     %edx                           # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          pxor     %xmm0,        %xmm0
          leaq     0x20(%rsp),   %rcx             # RCX = LD
          movq     $0x4000,      0x28(%rsp)
          movl     $0x01,        0x30(%rsp)       # field 00000001
          movl     $0x13,        0x34(%rsp)       # r, w, mem
          movdqa   %xmm0,        0x40(%rsp)
          movdqa   %xmm0,        0x50(%rsp)
          call     _LDreq
          movq     0x00(%rcx),   %rbp             # RBP = EA_RBF
          movq     0x18(%rcx),   %rbx             # RBX = MH_RBF
          testl    %eax,         %eax
          jne      0f
          movq     %rbp,         EA_RBF(%rsi)     # store EA_RBF
          movq     %rbx,         MH_RBF(%rsi)     #       MH_RBF
          movq     %rdi,         %rcx             # RCX = HWND
          call     _CtrWn
          jmp      2f
          .p2align 4,,15
        0:movl     $0x1100,      %r8d             # R08 = [Dismiss]
          movq     %rdi,         %rcx             # RCX = HWND
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        1:movq     EA_RBF(%rsi), %rbp             # RBP = EA_RBF
          subl     $0x1101,      %r8d             # [Run]?
          je       2f
          incl     %r8d                           # [Dismiss]?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            dismiss
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     MH_RBF(%rsi), %rcx             # RCX = MH_RBF
          call     _LDfre
          movq     %rdi,         %rcx             # RCX = HWND
          call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            run
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        2:call     tstX
          movq     _OBF(%rip),   %rdx             # RDX = EA strings
          movl     $0x0A,        %r8d             # R08 = 10 digits, unsigned
          movl     $0x80,        %ebx             # RBX = loop_cnt
        3:movl     0x00(%rbp),   %ecx             # RCX = current result
          call     _D2dec
          addq     $0x04,        %rbp             # RBP = next result
          addq     $0x10,        %rdx             # RDX = next string
          decl     %ebx                           # loop_cnt--
          jne      3b
          movq     _OBF(%rip),   %r8              # R08 = EA strings
          movq     %rdi,         %rcx             # RCX = HWND
          movq     $0x1120,      %rdx             # RDX = ID
          movl     $0x80,        %ebx             # RBX = loop_cnt
        4:call     _WnSDT
          incq     %rdx                           # next ID
          addq     $0x10,        %r8              # next string
          decl     %ebx                           # loop_cnt--
          jne      4b
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorq     %rax,%rax
      XIT:movq     0xB8(%rsp),   %rbp
          movq     0xC0(%rsp),   %rsi
          movq     0xC8(%rsp),   %rdi
          movq     0xD0(%rsp),   %rbx
      XT4:movq     0xD8(%rsp),   %r9
          movq     0xE0(%rsp),   %r8
          movq     0xE8(%rsp),   %rdx
          movq     0xF0(%rsp),   %rcx
          addq     $0xF8,        %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,    8, 3
