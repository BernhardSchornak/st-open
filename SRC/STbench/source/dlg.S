          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                              C o m m o n   D i a l o g s   (C) ST-Open 2012
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
            jump tables
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section .rdata, "dr"
          .p2align 4, 0x00, 15
      jt0:.quad    L00                                  # 1110 CBox   GPR tests
          .quad    L01                                  # 1111        XMM tests
          .quad    L02                                  # 1112        YMM tests
          .quad    L03                                  # 1113 RBtn   single   thread
          .quad    L03                                  # 1114        multiple threads
          .quad    L04                                  # 1115 PBtn   discard
          .quad    L05                                  # 1116        store
          .quad    L06                                  # 1117        help
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      jt1:.quad    L11                                  # BTN dismiss
          .quad    L12                                  #     help
          .quad    L13                                  # CB  proc 1
          .quad    L14                                  #     proc 2
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      tx0:.ascii   "  not available"
          .byte    0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                                 A B O U T
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _about
          .def     _about; .scl 2; .type 32; .endef
   _about:subq     $0xF8,        %rsp
          xorl     %eax,         %eax
          nop
          movq     %r9,          0xD8(%rsp)
          movq     %r8,          0xE0(%rsp)
          movq     %rdx,         0xE8(%rsp)
          movq     %rcx,         0xF0(%rsp)
          subl     $0x0111,      %edx                   # WM_COMMAND?
          je       0f
          incl     %edx                                 # WM_INITDIALOG?
          jne      XT4
          movl     $0x40,        %edx                   # RDX = title
          movq     $0x41,        %r8                    # R08 = first
          movq     $0x43,        %r9                    # R09 = last
          call     _DLGtxt
          call     _CtrWn
          movl     $0x01,        %eax
          jmp      XT4
          .p2align 4,,15
        0:addq     $0xF8,        %rsp                   # remove stack frame
          addl     $0x0111,      %edx                   # restore
          jmp      _KillDlg
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                             S E T T I N G S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _setgs
          .def     _setgs; .scl 2; .type 32; .endef
   _setgs:subq     $0xF8, %rsp
          movq     _BNR(%rip),   %rax                   # RAX = BNR
          movq     %rbp,         0xB8(%rsp)
          movq     %rsi,         0xC0(%rsp)
          movq     %rdi,         0xC8(%rsp)
          movq     %rbx,         0xD0(%rsp)
          movq     %r9,          0xD8(%rsp)
          movq     %r8,          0xE0(%rsp)
          movq     %rdx,         0xE8(%rsp)
          movq     %rcx,         0xF0(%rsp)
          movq     %rax,         %rsi                   # RSI = BNR
          andl     $0xFFFF,      %r8d
          movl     SYS_FL(%rax), %ebp                   # RBP = SYS_FL
          subl     $0x0111,      %edx                   # WM_COMMAND?
          je       1f
          incl     %edx                                 # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          orl      $0x01,        SYS_FL(%rsi)           # set DLG_INIT
          xorl     %eax,         %eax                   # RAX = 0
          movl     DO_GPR(%rsi), %edi                   # get settings
          movl     DO_XMM(%rsi), %ebx
          movl     DO_YMM(%rsi), %r9d
          movl     DO_MTT(%rsi), %edx
          movl     %edi,         TMP_GP(%rsi)           # copy to temp
          movl     %ebx,         TMP_XM(%rsi)
          movl     %r9d,         TMP_YM(%rsi)
          movl     %edx,         TMP_MT(%rsi)
          addl     $0x1113,      %edx                   # RDX = ID multithreading
          call     _PBtn
          movl     $0x1110,      %edx                   # RDX = GPR ID
          movl     %edi,         %r8d                   # R08 =     state
          call     _SCkB
          incl     %edx                                 # RDX = XMM ID
          movl     %ebx,         %r8d                   # R08 =     state
          call     _SCkB
          incl     %edx                                 # RDX = YMM ID
          movl     %r9d,         %r8d                   # R08 =     state
          call     _SCkB
          movl     $0x50,        %edx                   # RDX = title
          movq     $0x51,        %r8                    # R08 = first
          movq     $0x5C,        %r9                    # R09 = last
          call     _DLGtxt
          call     _CtrWn
          andl     $0xFFFFFFFE,  SYS_FL(%rsi)           # clear DLG_INIT
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        1:testl    $0x01,        SYS_FL(%rsi)           # DLG_INIT?
          jne      XIZ
          subl     $0x1110,      %r8d                   # below?
          jb       XIZ
          cmpl     $0x07,        %r8d                   # above?
          ja       XIZ
          jmp      *jt0(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            do GPR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      L00:xorl     $0x01,        TMP_GP(%rsi)
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            do XMM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      L01:xorl     $0x01,        TMP_XM(%rsi)
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            do YMM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      L02:xorl     $0x01,        TMP_YM(%rsi)
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            multithreading
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      L03:xorl     $0x01,        TMP_MT(%rsi)
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            discard
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L04:pxor     %xmm0,        %xmm0
          movdqa   %xmm0,        TMP_GP(%rsi)
          call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            store
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L05:movdqa   TMP_GP(%rsi), %xmm0                  # copy TMP_* -> DO_*
          movdqa   %xmm0,        DO_GPR(%rsi)
          jmp      L04
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      L06:movl     $0x08,        %ecx                   # help 08
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                           C O M P A R I S O N
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _compr
          .def     _compr; .scl 2; .type 32; .endef
   _compr:subq     $0xF8, %rsp
          movq     _BNR(%rip),   %rax                   # RAX = BNR
          movq     %rbp,         0xB8(%rsp)
          movq     %rsi,         0xC0(%rsp)
          movq     %rdi,         0xC8(%rsp)
          movq     %rbx,         0xD0(%rsp)
          movq     %r9,          0xD8(%rsp)
          movq     %r8,          0xE0(%rsp)
          movq     %rdx,         0xE8(%rsp)
          movq     %rcx,         0xF0(%rsp)
          movl     %r8d,         %ebx
          movq     %rcx,         %rdi                   # RDI = HWND
          movq     %rax,         %rsi                   # RSI = BNR
          andl     $0xFFFF,      %r8d                   # R08 = ITEM ID
          shrl     $0x10,        %ebx                   # EBX = NOTIFY
          subl     $0x0111,      %edx                   # WM_COMMAND?
          je       L10
          incl     %edx                                 # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     EA_RES(%rsi), %rbp
          movl     RES_NR(%rsi), %ebx
          leaq     VND_S0(%rbp), %rax
          movq     %rbp,         CMP_01(%rsi)           # prevent crashes...
          movq     %rbp,         CMP_02(%rsi)
          testl    %ebx,         %ebx                   # zero count?
          je       1f
          movl     $0x1152,      %edx                   # RDX = ID CBox 1
          movq     $0x0143,      %r8                    # R08 = CB_ADDSTRING
          xorq     %r9,          %r9                    # R09 = 0
          movq     %rax,         0x20(%rsp)             # P_5 = EA string
        0:call     _SnDIM
          incl     %edx                                 # R08 = ID CBox 2
          call     _SnDIM
          addq     $0x1400,      0x20(%rsp)             # P_5 = EA next string
          decl     %edx                                 # R08 = ID CBox 1
          decl     %ebx
          jne      0b
          movl     SEL_01(%rsi), %r9d                   # R09 = selection 1
          movl     SEL_02(%rsi), %ebx                   # RBX =           2
          movq     $0x00,        0x20(%rsp)             # P_5 = 0
          movq     $0x014E,      %r8                    # R08 = CB_SETCURSEL
          call     _SnDIM
          incl     %edx
          movl     %ebx,         %r9d                   # R09 = selection 2
          call     _SnDIM
          movl     $0x1152,      %edx                   # RDX = ID
          call     _WinId
          movl     $0x0111,      %edx                   # RDX = WM_COMMAND
          movq     $0x00011152,  %r8                    # R08 = ID LBox 1 + CBN_SELCHANGE
          movq     %rax,         %r9                    # R09 = 0
          call     _PostM
          movl     $0x1153,      %edx                   # RDX = ID
          call     _WinId
          movl     $0x0111,      %edx                   # RDX = WM_COMMAND
          incq     %r8                                  # R08 = ID LBox 2 + CBN_SELCHANGE
          movq     %rax,         %r9                    # R09 = 0
          call     _PostM
          movl     $0x60,        %edx                   # RDX = title
          movq     $0x61,        %r8                    # R08 = first
          movq     $0x71,        %r9                    # R09 = last
          call     _DLGtxt
        1:call     _CtrWn
          incl     %eax
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L10:subq     $0x1150,      %r8                    # below?
          js       XIZ
          cmpq     $0x03,        %r8                    # above?
          ja       XIZ
          jmp      *jt1(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            dismiss
            ~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L11:call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L12:movl     $0x09,        %ecx                   # Help 9
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            CBox 1
            ~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L13:decl     %ebx                                 # CBN_SELCHANGE?
          jne      XIZ
          movq     EA_RES(%rsi), %rbp                   # RBP = EA results
          movl     $0x1400,      %ebx                   # RBX = block size
          movq     %r9,          %rcx                   # RCX = HWND CBox
          movl     $0x0147,      %edx                   # RDX = CB_GETCURSEL
          xorq     %r8,          %r8                    # R08 = 0
          xorq     %r9,          %r9                    # R09 = 0
          call     _SendM
          movl     %eax,         SEL_01(%rsi)           # store selection
          mull     %ebx                                 # calculate offset
          addq     %rax,         %rbp                   # RBP = EA block
          movq     %rbp,         CMP_01(%rsi)           # store
          jmp      L20
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            CBox 2
            ~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L14:decl     %ebx                                 # CBN_SELCHANGE?
          jne      XIZ
          movq     EA_RES(%rsi), %rbp                   # RBP = EA results
          movl     $0x1400,      %ebx                   # RBX = block size
          movq     %r9,          %rcx                   # RCX = HWND CBox
          movl     $0x0147,      %edx                   # RDX = CB_GETCURSEL
          xorq     %r8,          %r8                    # R08 = 0
          xorq     %r9,          %r9                    # R09 = 0
          call     _SendM
          movl     %eax,         SEL_02(%rsi)           # store selection
          mull     %ebx                                 # calculate offset
          addq     %rax,         %rbp                   # RBP = EA block
          movq     %rbp,         CMP_02(%rsi)           # store
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DISPLAY SELECTION             - NO COMMAND -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L20:movdqa   %xmm4,        0xA0(%rsp)
          movq     CMP_01(%rsi), %rbp                   # RBP = EA block 1
          leaq     0x20(%rsp),   %rdx                   # 20  = INT
          movq     $0x0006000A,  %r8
          movdqa   tx0(%rip),    %xmm4                  # XM4 = 'not available'
          movl     AV_INT(%rbp), %ecx
          movl     AV_SSE(%rbp), %ebx
          movl     AV_AVX(%rbp), %r9d
          call     _D2dec
          movl     %ebx,         %ecx
          addq     $0x10,        %rdx                   # 30  = SSE
          call     _D2dec
          movdqa   %xmm4,        0x40(%rsp)
          movl     MC_RES(%rbp), %ebx
          addq     $0x10,        %rdx                   # 40  = AVX
          testq    %r9,          %r9
          je       0f
          movl     %r9d,         %ecx
          call     _D2dec
        0:movl     %ebx,         %ecx
          addq     $0x10,        %rdx                   # 50  = MC
          movq     $0x0A,        %r8
          call     _D2dec
          movq     %rdi,         %rcx
          movl     $0x1154,      %edx                   # frequency
          leaq     P_FREQ(%rbp), %r8
          call     _WnSDT
          incl     %edx                                 # core count
          leaq     PCOUNT(%rbp), %r8
          call     _WnSDT
          incl     %edx                                 # INT avg.
          leaq     0x20(%rsp),   %r8
          call     _WnSDT
          incl     %edx                                 # SSE avg.
          addq     $0x10,        %r8
          call     _WnSDT
          incl     %edx                                 # AVX avg.
          addq     $0x10,        %r8
          call     _WnSDT
          incl     %edx                                 # MC  best
          addq     $0x10,        %r8
          call     _WnSDT
          movq     CMP_02(%rsi), %rbp                   # RBP = EA block 2
          leaq     0x20(%rsp),   %rdx                   # 20  = INT
          movq     $0x0006000A,  %r8
          movl     AV_INT(%rbp), %ecx
          movl     AV_SSE(%rbp), %ebx
          movl     AV_AVX(%rbp), %r9d
          call     _D2dec
          movl     %ebx,         %ecx
          addq     $0x10,        %rdx                   # 30  = SSE
          call     _D2dec
          movdqa   %xmm4,        0x40(%rsp)
          movl     MC_RES(%rbp), %ebx
          addq     $0x10,        %rdx                   # 40  = AVX
          testq    %r9,          %r9
          je       1f
          movl     %r9d,         %ecx
          call     _D2dec
        1:movl     %ebx,         %ecx
          addq     $0x10,        %rdx                   # 50  = MC
          movq     $0x0A,        %r8
          call     _D2dec
          movq     %rdi,         %rcx
          movl     $0x115A,      %edx                   # frequency
          leaq     P_FREQ(%rbp), %r8
          call     _WnSDT
          incl     %edx                                 # core count
          leaq     PCOUNT(%rbp), %r8
          call     _WnSDT
          incl     %edx                                 # INT avg.
          leaq     0x20(%rsp),   %r8
          call     _WnSDT
          incl     %edx                                 # SSE avg.
          addq     $0x10,        %r8
          call     _WnSDT
          incl     %edx                                 # AVX avg.
          addq     $0x10,        %r8
          call     _WnSDT
          incl     %edx                                 # MC  best
          addq     $0x10,        %r8
          call     _WnSDT
          movdqa   0xA0(%rsp),   %xmm4
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorl     %eax,         %eax
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
          .comm    _BNR, 8, 3
