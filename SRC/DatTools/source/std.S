          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                         S T A N D A R D   F I E L D S    (C) ST-Open 1979 - 2012
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
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            jump tables
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section .rdata, "dr"
          .p2align 4,,15
      jt0:.quad    L07                    # 1460   EFld spin
          .quad    L08                    # 1461   PBtn left  <
          .quad    L09                    # 1462   PBtn       >
          .quad    L10                    # 1463   PBtn right <
          .quad    L11                    # 1464   PBtn       >
          .quad    L13                    # 1465   MLE  1
          .quad    L12                    # 1466   MLE  2
          .quad    XIZ                    # 1467   EFld lang  1     [0F]
          .quad    XIZ                    # 1468   EFld lang  2     [10]
          .quad    L14                    # 1469   EFld left  btn 1 [11]
          .quad    L14                    # 146A   EFld           2 [12]
          .quad    L14                    # 146B   EFld           3 [13]
          .quad    L14                    # 146C   EFld right btn 1 [14]
          .quad    L14                    # 146D   EFld           2 [15]
          .quad    L14                    # 146E   EFld           3 [16]
          .quad    L15                    # 146F   PBtn Discard
          .quad    L16                    # 1470   PBtn Store
          .quad    L17                    # 1471   PBtn Help
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _MLlang
          .def     _MLlang; .scl 2; .type 32; .endef
  _MLlang:movq     $mllang,               %rax                  # no labels
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _stdMNU
          .def     _stdMNU; .scl 2; .type 32; .endef
  _stdMNU:movq     $stdmnu,               %rax                  # L00 - L03
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _stdMSG
          .def     _stdMSG; .scl 2; .type 32; .endef
  _stdMSG:movq     $stdmsg,               %rax                  # L05 - L29
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _stdBMP
          .def     _stdBMP; .scl 2; .type 32; .endef
  _stdBMP:movq     $stdbmp,               %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _stdNBK
          .def     _stdNBK; .scl 2; .type 32; .endef
  _stdNBK:movq     $stdnbk,               %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DISTRIBUTOR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0xF8,                 %rsp
          movq     %r15,                  0x88(%rsp)
          movq     %r14,                  0x90(%rsp)
          movq     %r13,                  0x98(%rsp)
          movq     %rbp,                  0xA0(%rsp)
          movq     %rsi,                  0xA8(%rsp)
          movq     %rdi,                  0xB0(%rsp)
          movq     %rbx,                  0xB8(%rsp)
          movq     %r12,                  0xC0(%rsp)
          movq     %r11,                  0xC8(%rsp)
          movq     %r10,                  0xD0(%rsp)
          movq     %r9,                   0xD8(%rsp)
          movq     %r8,                   0xE0(%rsp)
          movq     %rdx,                  0xE8(%rsp)
          movq     %rcx,                  0xF0(%rsp)
          movq     _BNR(%rip),            %rsi                  # RSI = BNR
          movl     %r8d,                  %ebx                  # RBX = WPARAM
          movq     %rcx,                  %rdi                  # RDI = HWND
          movq     EA_WRK(%rsi),          %r12                  # R12 = EA wrk
          movq     MH_WRK(%rsi),          %r13                  # R13 = MH wrk
          movq     EA__SP(%rsi),          %r14                  # R14 = EA spin
          leaq     BUFFER(%rsi),          %r15                  # R15 = EA buffer
          shrq     $0x10,                 %r8                   # R08 = W1MP(mp1)
          andl     $0xFFFF,               %ebx                  # RBX = W0MP(mp1)
          jmp      *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MLlang   set language names in BST
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RBX   W0[WPARAM]
               RCX   HWND
               RDX   MSG
               RDI   HWND
               RSI   BNR
               RBP   -
               R08   W1[WPARAM]
               R09   LPARAM
               R10   -
               R11   -
               R12   EA_WRK
               R13   MH_WRK
               R14   EA__SP
               R15   BUFFER
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   mllang:subl     $0x0111,               %edx                  # WM_COMMAND?
          je       4f
          incl     %edx                                         # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     PGM_FL(%rsi),          %ebp                  # RBP = PGM_FL
          movq     $0x00,                 0x20(%rsp)            # P_5 = NULL
          movl     $0x1453,               %edx                  # RDX = ID entry EFld
          xorq     %r8,                   %r8                   # R08 = SW_HIDE
          call     _CtlSh
          incl     %edx                                         # RDX = ID ID    EFld
          call     _CtlSh
          incl     %edx                                         # RDX = ID entry SpnB
          call     _CtlSh
          testl    $0x01,                 %ebp                  # DatTools self?
          je       0f
          /*
            ~~~~~~~~~~~~~~~~~~
            DatTools self
            ~~~~~~~~~~~~~~~~~~
          */
          movq     _BST(%rip),            %r12                  # R12 = BST
          movq     _MHSTR(%rip),          %r13                  # R13 = MHSTR
          movl     $0x1450,               %edx                  # RDX = ID discard
          call     _CtlSh
          movq     %r12,                  EA_WRK(%rsi)          # store EA_WRK
          movq     %r13,                  MH_WRK(%rsi)          #       MH_WRK
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~
            external str.dat
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:movl     $0xFFFFFFFC,           %ecx                  # RCX = str.dat
          call     _ldFLD
          movq     EA_WRK(%rsi),          %r12
          movq     %rdi,                  %rcx                  # RCX = HWND
          testl    %eax,                  %eax                  # load failed?
          jne      KLD
          .p2align 4,,15
        1:movq     $0x40,                 %r9                   # R09 = max size
          movq     $0x0F,                 %r10                  # R11 = loop_cnt
          movl     $0x144F,               %edx                  # RDX = ID Efld lang0
        2:movl     0x0180(%r12, %r10, 4), %ebp                  # RBP = offset entry
          movq     $0xC5,                 %r8                   # R08 = EN_SETTEXTLIMIT
          call     _SnDIM
          leaq     0x00(%r12, %rbp),      %r8                   # R08 = EA entry
          call     _WnSDT
          decl     %edx                                         # RDX = ID--
          decq     %r10                                         # R11 = loop_cnt--
          jns      2b
          movl     $0xA8,                 %edx                  # RDX = title
          movq     $0xA9,                 %r8                   # R08 = 1st
          movq     $0xAB,                 %r9                   # R09 = last
          jmp      DLT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        4:movl     PGM_FL(%rsi),          %ebp                  # RBP = flags
          subl     $0x1440,               %ebx                  # RDX = EFld lang0?
          jb       XIZ
          leal     0x20(%ebx),            %r10d                 # R10 = entry
          subl     $0x12,                 %ebx                  # [Help]?
          je       7f
          incl     %ebx                                         # [Store]?
          je       6f
          incl     %ebx                                         # [Discard]?
          je       5f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            language
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          cmpq     $0x0200,               %r8                   # EN_KILLFOCUS?
          jne      XIZ
          movq     %r9,                   %rcx                  # RCX = HWND EFld
          movq     %r15,                  %rdx                  # RDX = EA buffer
          movq     $0x40,                 %r8                   # R08 = size
          call     _WnQDT
          movq     %r15,                  0x20(%rsp)            # P_5 = EA buffer
          movq     %r13,                  %rcx                  # RCX = MH
          movl     %r10d,                 %edx                  # RDX = entry
          xorq     %r8,                   %r8                   # R08 = sub00
          movq     $0x02,                 %r9                   # R09 = FDA_WRITE
          call     _FDacc
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            discard
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        5:testl    $0x01,                 %ebp                  # DatTools self?
          jne      KLD
          andw     $0xFFFB,               0x08(%r13)            # reset changed
          call     _svFLD
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            save
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        6:testl    $0x01,                 %ebp                  # DatTools self?
          jne      KLD
          call     _svFLD
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        7:movl     $0x14,                 %ecx                  # RCX = help 14
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            stdMNU   menu + dialog texts
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RBX   W0[WPARAM]
               RCX   HWND
               RDX   MSG
               RDI   HWND
               RSI   BNR
               RBP   -
               R08   W1[WPARAM]
               R09   LPARAM
               R10   -
               R11   -
               R12   EA_WRK
               R13   MH_WRK
               R14   EA__SP
               R15   BUFFER
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   stdmnu:movl     MNU_ET(%rsi),          %ebp                  # RBP = current entry
          cmpl     $0x4E,                 %edx                  # WM_NOTIFY?
          je       L00
          subl     $0x0111,               %edx                  # WM_COMMAND?
          je       L01
          incl     %edx                                         # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          xorl     %ebx,                  %ebx                  # RBX = 0
          movl     $0xFFFFFF12,           %eax                  # RAX = user
          movl     $0xFFFFFF13,           %ecx                  # RCX = System
          movq     %rbx,                  0x20(%rsp)            # P_5 = NULL
          movq     $0x018E,               %r11                  # R11 + FldNr = A0
          cmpl     $0x00,                 MNU_SY(%rsi)          # system dialogs?
          cmove    %eax,                  %ecx                  # choose...
          addl     %ecx,                  %r11d                 # R11 = title
          call     _ldFLD
          movq     EA_WRK(%rsi),          %r12                  # R11 = EA wrk
          movq     MH_WRK(%rsi),          %r13                  # R12 = MH wrk
          testl    %eax,                  %eax                  # load failed?
          jne      KLD
          movl     0x3C(%r12),            %eax                  # RAX = entries
          movl     $0x02,                 %ecx                  # RCX = spin 2
          xorl     %edx,                  %edx                  # RDX = SPN_INIT
          movq     %rdi,                  %r8                   # R08 = HWND
          decl     %eax                                         # RAX = max
          xorq     %r9,                   %r9                   # R09 = 0
          cmpl     %eax,                  %ebp                  # RBP > max?
          cmova    %r9d,                  %ebp                  # start with 0
          movq     %r9,                   0x80(%r14)            # set min
          movq     %rax,                  0x88(%r14)            # set max
          movq     %rbp,                  0x90(%r14)            #     cur
          call     _STspn
          movl     $0x10,                 %ebx                  # RBX = cnt
          movq     %rdi,                  %rcx                  # RCX = HWND
          movl     $0x1453,               %edx                  # RDX = ID
          movq     $0xC5,                 %r8                   # R08 = EN_SETLIMITTEXT
          movq     $0x0A,                 %r9                   # R09 = max size
          call     _SnDIM
          incl     %edx
          movq     $0x05,                 %r9                   # R09 = max size
          call     _SnDIM
          movl     $0x144F,               %edx                  # RDX = ID
          movq     $0x40,                 %r9                   # R09 = max size
        0:call     _SnDIM
          decl     %edx                                         # RDX = ID--
          decl     %ebx                                         # RBX = cnt--
          jne      0b
          movl     %r11d,                 %edx                  # RDX = title
          movq     $0xA2,                 %r8                   # R08 = 1st
          movq     $0xA6,                 %r9                   # R09 = last
          incl     %ebx                                         # RBX = RC
          call     _DLGtxt
          call     _CtrWn
          jmp      L03
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_NOTIFY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:cmpl     $0x1455,               %ebx                  # spin?
          jne      XIZ
          movl     $0x02,                 %ecx                  # RCX = spin 2
          movl     $0x01,                 %edx                  # RDX = SPN_NOTIFY
          call     _STspn
          jmp      6f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:subl     $0x1440,               %ebx                  # valid ID?
          js       XIZ
          cmpl     $0x10,                 %ebx                  # language?
          jb       0f
          subl     $0x10,                 %ebx                  # 1450 [Discard]?
          je       1f
          decl     %ebx                                         # 1451 [Store]?
          je       2f
          decl     %ebx                                         # 1452 [Help]?
          je       4f
          decl     %ebx                                         # 1453 EFld spin?
          je       5f
          decl     %ebx                                         # 1454 ID?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ID
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          cmpq     $0x0200,               %r8                   # EN_KILLFOCUS?
          jne      XIZ
          movq     %r9,                   %rcx                  # RCX = HWND EFld
          movq     %r15,                  %rdx                  # RDX = EA buffer
          movq     $0x05,                 %r8
          call     _WnQTx
          movq     %rdx,                  %rcx                  # RCX = EA buffer
          call     _hex2D
          movq     %rax,                  0x28(%rsp)            # P_6 = number
          movq     %r13,                  %rcx                  # RCX = MH
          movl     %ebp,                  %edx                  # RDX = entry
          movq     $0x10,                 %r8                   # R08 = sub10
          movq     $0x02,                 %r9                   # R09 = FDA_WRITE
          call     _FDacc
          jmp      L02
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            entryfields
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:cmpq     $0x0200,               %r8                   # EN_KILLFOCUS?
          jne      XIZ
          movq     %r9,                   %rcx                  # RCX = HWND EFld
          movq     %r15,                  %rdx                  # RDX = EA buffer
          movq     $0x40,                 %r8
          call     _WnQTx
          movq     %rdx,                  0x20(%rsp)            # P_5 = EA string
          movq     %r13,                  %rcx                  # RCX = MH
          movl     %ebp,                  %edx                  # RDX = entry
          movl     %ebx,                  %r8d                  # R08 = sub10
          movq     $0x02,                 %r9                   # R09 = FDA_WRITE
          call     _FDacc
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            discard
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        1:.p2align 4,,15
          andl     $0xFFFB,               0x08(%r13)            # reset changed
          jmp      3f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            store
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        2:orl      $0x0004,               0x08(%r13)            # set   changed
        3:call     _svFLD
          call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        4:movl     $0x0C,                 %ecx
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            spin
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        5:cmpq     $0x0200,               %r8                   # EN_KILLFOCUS?
          jne      XIZ
          movl     $0x02,                 %ecx                  # RCX = spin 2
          movl     $0x02,                 %edx                  # RDX = SPN_EDITED
          call     _STspn
        6:movl     %eax,                  MNU_ET(%rsi)          # store cur
          movl     %eax,                  %ebp                  # RBP = MNU_ET
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            display
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L02:xorl     %ebx,                  %ebx                  # RBX = 0
      L03:xorl     %eax,                  %eax                  # RAX = 0
          movq     $0x0F,                 %r10                  # R10 = loop_cnt
          movq     $0x144F,               %r11                  # R11 = ID Efld lang
          movq     %rax,                  0x20(%rsp)            # P_5 = NULL
        7:movq     %r13,                  %rcx                  # RCX = MH
          movl     %ebp,                  %edx                  # RDX = entry
          movq     %r10,                  %r8                   # R08 = subfield
          movq     $0x07,                 %r9                   # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rdi,                  %rcx                  # RCX = HWND
          movl     %r11d,                 %edx                  # RCX = ID
          movq     %rax,                  %r8                   # R08 = EA entry
          call     _WnSDT
          decq     %r11                                         # R11 = ID--
          decq     %r10                                         # R10 = sub--
          jns      7b
          movq     %r13,                  %rcx                  # RCX = MH
          movl     %ebp,                  %edx                  # RDX = entry
          movq     $0x10,                 %r8                   # R08 = sub10
          movq     $0x01,                 %r9                   # R09 = FDA_READ
          call     _FDacc
          movl     %eax,                  %ecx                  # RCX = number
          movq     %r15,                  %rdx                  # RDX = EA buffer
          call     _W2hex
          movq     %rdi,                  %rcx                  # RCX = HWND
          movl     $0x1454,               %edx                  # RDX = ID
          movq     %r15,                  %r8                   # R08 = EA buffer
          call     _WnSDT
          movl     %ebx,                  %eax                  # RAX = RC
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            stdMSG   user messages / system errors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RBX   W0[WPARAM]
               RCX   HWND
               RDX   MSG
               RDI   HWND
               RSI   BNR
               RBP   -
               R08   W1[WPARAM]
               R09   LPARAM
               R10   -
               R11   -
               R12   EA_WRK
               R13   MH_WRK
               R14   EA__SP
               R15   BUFFER
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   stdmsg:movl     MSG_ET(%rsi),          %r11d                 # R11 = current message
          cmpl     $0x4E,                 %edx                  # WM_NOTIFY?
          je       L05
          subl     $0x0111,               %edx                  # WM_COMMAND?
          je       L06
          incl     %edx                                         # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          cmpl     $0x00,                 MSG_SY(%rsi)          # system dialogs?
          movl     $0xFFFFFFF5,           %eax                  # RAX = user
          movl     $0xFFFFFFF9,           %ecx                  # RCX = System
          movl     $0xB0,                 %edx                  # RDX = title pgm
          movl     $0xB1,                 %ebp                  # RBP =       sys
          cmove    %eax,                  %ecx                  # choose...
          cmove    %edx,                  %ebp                  # RBP = used title
          call     _ldFLD
          movq     _MHSTR(%rip),          %r10                  # R10 = _MHSTR
          movq     EA_WRK(%rsi),          %r12                  # R12 = EA wrk
          movq     MH_WRK(%rsi),          %r13                  # R13 = MH wrk
          testl    %eax,                  %eax                  # load failed?
          jne      KLD
          movl     0x3C(%r12),            %eax                  # RAX = entries
          movl     $0x03,                 %ecx                  # RCX = spin 3
          xorl     %edx,                  %edx                  # RDX = SPN_INIT
          movq     %rdi,                  %r8                   # R08 = HWND
          decl     %eax                                         # RAX = max
          shrl     $0x02,                 %eax                  # RAX = max/4!
          xorq     %r9,                   %r9                   # R09 = 0
          cmpl     %eax,                  %r11d                 # above max?
          cmova    %r9,                   %r11                  # set to zero
          movq     %rax,                  0xC8(%r14)            # set max
          movq     %r11,                  0xD0(%r14)            #     cur
          call     _STspn
          movl     $0x0F,                 %ecx                  # RCX = EFld 0F
          movl     $0x08,                 %edx                  # RDX = EF_SETMH
          movq     %r10,                  %r8                   # R08 = _MHSTR
          call     _STefd
          incl     %ecx                                         # RCX = EFld 10
          call     _STefd
          incl     %ecx                                         # RCX = EFld 11
          movq     %r13,                  %r8                   # R08 = MH wrk
          call     _STefd
          incl     %ecx                                         # RCX = EFld 12
          call     _STefd
          incl     %ecx                                         # RCX = EFld 13
          call     _STefd
          incl     %ecx                                         # RCX = EFld 14
          call     _STefd
          incl     %ecx                                         # RCX = EFld 15
          call     _STefd
          incl     %ecx                                         # RCX = EFld 16
          call     _STefd
          movl     $0x0F,                 %ecx                  # RCX = EFld 0F
          xorl     %edx,                  %edx                  # RDX = EF_INIT
          movq     %rdi,                  %r8                   # R08 = HWND
          call     _STefd
          incl     %ecx                                         # RCX = EFld 10
          call     _STefd
          incl     %ecx                                         # RCX = EFld 11
          call     _STefd
          incl     %ecx                                         # RCX = EFld 12
          call     _STefd
          incl     %ecx                                         # RCX = EFld 13
          call     _STefd
          movl     MSG_L1(%rsi),          %r14d                 # R14 = lang 1
          movl     MSG_L2(%rsi),          %r15d                 # R14 = lang 2
          incl     %ecx                                         # RCX = EFld 14
          call     _STefd
          leaq     0x20(%r14),            %r14                  # R14 = [00][L1]
          leaq     0x20(%r15),            %r15                  # R15 = [00][L2]
          incl     %ecx                                         # RCX = EFld 15
          call     _STefd
          shlq     $0x20,                 %r14                  # R14 = [L1][s0]
          shlq     $0x20,                 %r15                  # R14 = [L2][s0]
          incl     %ecx                                         # RCX = EFld 16
          call     _STefd
          movl     $0x0F,                 %ecx                  # RCX = EFld 0F
          movl     $0x01,                 %edx                  # RDX = EF_SET
          movq     %r14,                  %r8                   # R08 = [L1][s0]
          call     _STefd
          incl     %ecx                                         # RCX = EFld 10
          movq     %r15,                  %r8                   # R08 = [L2][s0]
          call     _STefd
          movq     %rdi,                  %rcx                  # RCX = HWND
          movl     %ebp,                  %edx                  # RDX = title
          movq     $0xB2,                 %r8                   # R08 = 1st
          movq     $0xBC,                 %r9                   # R09 = last
          call     _DLGtxt
          call     _CtrWn
          movq     $0x01,                 %r10                  # R10 = TRUE
          jmp      L19
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_NOTIFY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L05:cmpl     $0x1472,               %ebx                  # spin?
          jne      XIZ
          movl     $0x03,                 %ecx                  # RCX = spin 3
          movl     $0x0C,                 %edx                  # RDX = SPN_STRAIGHT
          call     _STspn
          movl     %eax,                  MSG_ET(%rsi)          # store MSG_ET
          jmp      L18
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L06:movq     %r11,                  %r12                  # R12 = message
          movl     MSG_L1(%rsi),          %ebp                  # RBP = sub 1
          movl     MSG_L2(%rsi),          %r10d                 # R10 = sub 2
          shlq     $0x02,                 %r12                  # R12 = entry MLE
          subl     $0x1460,               %ebx                  # below?
          js       XIZ
          cmpl     $0x11,                 %ebx                  # above?
          ja       XIZ
          jmp      *jt0(, %rbx, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            spin
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L07:cmpq     $0x0200,               %r8                   # EN_KILLFOCUS?
          jne      XIZ
          movl     $0x03,                 %ecx                  # RCX = spin 3
          movl     $0x02,                 %edx                  # RDX = SPN_EDITED
          call     _STspn
          movl     %eax,                  MSG_ET(%rsi)          # store MSG_ET
          jmp      L18
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            lang1 PBtn <
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L08:decl     %ebp                                         # sub--
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            lang1 PBtn >
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L09:incl     %ebp                                         # sub++
        0:andl     $0x0F,                 %ebp                  # keep valid
          movl     $0x0F,                 %ebx                  # RBX = EFld 0F
          movl     %ebp,                  %eax                  # RAX = lang
          movl     %ebp,                  MSG_L1(%rsi)          # store
          jmp      2f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            lang2 PBtn <
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L10:decq     %r10                                         # sub--
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            lang2 PBtn >
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L11:incq     %r10                                         # sub++
        1:andq     $0x0F,                 %r10                  # keep valid
          movl     $0x10,                 %ebx                  # RBX = EFld 10
          movl     %r10d,                 %eax                  # RAX = lang
          movl     %r10d,                 MSG_L2(%rsi)          # store
          .p2align 4,,15
        2:leal     0x20(%eax),            %r8d                  # R08 = entry
          movl     %ebx,                  %ecx                  # RCX = EFld number
          movl     $0x01,                 %edx                  # RDX = EF_SET
          shlq     $0x20,                 %r8                   # R08 = [entry][sub 0]
          call     _STefd
          jmp      L18
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            lang2 MLE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L12:movl     %r10d,                 %ebp                  # RBP = sub lang2
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            lang1 MLE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      L13:cmpq     $0x0200,               %r8                   # EN_KILLFOCUS?
          jne      XIZ
          movq     %r15,                  0x20(%rsp)            # P_5 = EA buffer
          movq     %r9,                   %rcx                  # RCX = HWND MLE
          movq     %r15,                  %rdx                  # RDX = EA buffer
          movq     $0x0400,               %r8                   # R08 = size
          call     _WnQTx
          movq     %r13,                  %rcx                  # RCX = MH
          movl     %r12d,                 %edx                  # RDX = entry MLE
          movl     %ebp,                  %r8d                  # R08 = sub
          movq     $0x02,                 %r9                   # R09 = FDA_WRITE
          call     _FDacc
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            langX buttons
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      L14:leal     0x08(%ebx),            %ecx                  # RCX = EFld number
          movl     $0x06,                 %edx                  # RDX = EF_MESSAGE
          call     _STefd
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            discard
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      L15:.p2align 4,,15
          andw     $0xFFFB,               0x08(%r13)            # reset changed
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            store
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L16:orw      $0x0004,               0x08(%r13)            # set changed
        0:call     _svFLD
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L17:movl     $0x0D,%ecx
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            display
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L18:xorq     %r10,                  %r10                  # R10 = FALSE
      L19:movl     MSG_ET(%rsi),          %r11d                 # R11 = msg
          movl     MSG_L1(%rsi),          %ebx                  # RBX = sub1
          movl     MSG_L2(%rsi),          %ebp                  # RBP = sub2
          shlq     $0x02,                 %r11                  # R11 = msg * 4
          movq     %r13,                  %rcx                  # RCX = MH
          movl     %ebp,                  %r8d                  # R08 = sub lang2
          movq     $0x07,                 %r9                   # R09 = FDA_ADDRESS
          movl     %r11d,                 %edx                  # RDX = entry msg
          call     _FDacc
          movq     %rax,                  %r15                  # R15 = EA mle2
          movl     %ebx,                  %r8d                  # R08 = sub lang1
          call     _FDacc
          movq     %rdi,                  %rcx                  # RCX = HWND
          movl     $0x1465,               %edx                  # RDX = ID MLE1
          movq     %rax,                  %r8                   # R08 = EA msg
          call     _WnSDT
          incl     %edx                                         # RDX = ID MLE2
          movq     %r15,                  %r8                   # R08 = EA msg
          call     _WnSDT
          leaq     0x01(%r11),            %r13                  # R13 = entry btn 1
          leaq     0x02(%r11),            %r14                  # R14 =       btn 2
          leaq     0x03(%r11),            %r15                  # R15 =       btn 3
          shlq     $0x20,                 %r13                  # R13 = [btn1][ 00 ]
          shlq     $0x20,                 %r14                  # R14 = [btn2][ 00 ]
          shlq     $0x20,                 %r15                  # R15 = [btn3][ 00 ]
          movq     %r13,                  %r8                   # R08 = [btn1][ 00 ]
          movq     %r14,                  %r11                  # R11 = [btn2][ 00 ]
          movq     %r15,                  %r12                  # R12 = [btn3][ 00 ]
          addq     %rbp,                  %r13                  # R13 = [btn1][sub2]
          addq     %rbp,                  %r14                  # R14 = [btn2][sub2]
          addq     %rbp,                  %r15                  # R15 = [btn3][sub2]
          addq     %rbx,                  %r8                   # R08 = [btn1][sub1]
          addq     %rbx,                  %r11                  # R11 = [btn2][sub1]
          addq     %rbx,                  %r12                  # R12 = [btn3][sub1]
          movl     $0x11,                 %ecx                  # RCX = EFld 11
          movl     $0x01,                 %edx                  # RDX = EF_SET
          call     _STefd
          incl     %ecx                                         # RCX = EFld 12
          movq     %r11,                  %r8                   # R08 = [btn2][sub1]
          call     _STefd
          incl     %ecx                                         # RCX = EFld 13
          movq     %r12,                  %r8                   # R08 = [btn3][sub1]
          call     _STefd
          incl     %ecx                                         # RCX = EFld 14
          movq     %r13,                  %r8                   # R08 = [btn1][sub2]
          call     _STefd
          incl     %ecx                                         # RCX = EFld 15
          movq     %r14,                  %r8                   # R08 = [btn2][sub2]
          call     _STefd
          incl     %ecx                                         # RCX = EFld 16
          movq     %r15,                  %r8                   # R08 = [btn3][sub2]
          call     _STefd
          movl     %r10d,                 %eax                  # RAX = RC
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            stdBMP   bitmaps
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RBX   W0[WPARAM]
               RCX   HWND
               RDX   MSG
               RDI   HWND
               RSI   BNR
               RBP   -
               R08   W1[WPARAM]
               R09   LPARAM
               R10   -
               R11   -
               R12   EA_WRK
               R13   MH_WRK
               R14   EA__SP
               R15   BUFFER
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   stdbmp:subl     $0x0111,               %edx                  # WM_COMMAND?
          je       0f
          incl     %edx                                         # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0x0188,               %edx                  # RDX = title
          movq     $0x0189,               %r8                   # R08 = 1st
          movq     $0x018A,               %r9                   # R09 = last
          jmp      DLT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:xorq     %r8,                   %r8                   # pseudo code to
          xorq     %r9,                   %r9                   # avoid direct jump
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            stdNBK   notebooks
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RBX   W0[WPARAM]
               RCX   HWND
               RDX   MSG
               RDI   HWND
               RSI   BNR
               RBP   -
               R08   W1[WPARAM]
               R09   LPARAM
               R10   -
               R11   -
               R12   EA_WRK
               R13   MH_WRK
               R14   EA__SP
               R15   BUFFER
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   stdnbk:subl     $0x0111,               %edx                  # WM_COMMAND?
          je       0f
          incl     %edx                                         # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0x0180,               %edx                  # RDX = title
          movq     $0x0181,               %r8                   # R08 = 1st
          movq     $0x0182,               %r9                   # R09 = last
          jmp      DLT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:xorq     %r8,                   %r8                   # pseudo code to
          xorq     %r9,                   %r9                   # avoid direct jump
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                    C O M M O N    P R O C E D U R E S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SET DIALOG TEXTS
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      DLT:movq     %rdi,                  %rcx                  # RCX = HWND
          call     _DLGtxt
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CENTER DIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      CTW:call     _CtrWn
          movl     $0x00,                 DSP_UP(%rsi)          # updating off
          movl     $0x01,                 %eax                  # RAX = processed
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            KILL DIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      KLD:movq     %rdi,                  %rcx                  # RCX = HWND
          call     _KillDlg
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            COMMON EXIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorl     %eax,                  %eax
      XIT:movq     0x88(%rsp),            %r15
          movq     0x90(%rsp),            %r14
          movq     0x98(%rsp),            %r13
          movq     0xA0(%rsp),            %rbp
          movq     0xA8(%rsp),            %rsi
          movq     0xB0(%rsp),            %rdi
          movq     0xB8(%rsp),            %rbx
          movq     0xC0(%rsp),            %r12
          movq     0xC8(%rsp),            %r11
          movq     0xD0(%rsp),            %r10
          movq     0xD8(%rsp),            %r9
          movq     0xE0(%rsp),            %r8
          movq     0xE8(%rsp),            %rdx
          movq     0xF0(%rsp),            %rcx
          addq     $0xF8,                 %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,                  8, 3
          .comm    _MHSTR,                8, 3
