          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                  P r o g r a m m i n g   T o o l B o x
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                     *** (C) ST-Open 1979 - 2010 ***
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
          .section .rdata, "dr"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            jump table
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4, 0x00,15
      jt0:.quad    L10
          .quad    L11
          .quad    L12
          .quad    L13
          .quad    L14
          .quad    L15
          .quad    L16
          .quad    L17
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            strings
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
     LC00:.ascii   "STmenu"
          .byte    0x00, 0x00
     LC01:.ascii   "STopen"
          .byte    0x00, 0x00
     LC02:.ascii   "General Purpose Tests"
          .byte    0x00, 0x00, 0x00
     LC03:.ascii   "STtest"
          .byte    0x00, 0x00
     LC04:.ascii   "STabox"
          .byte    0x00, 0x00
     LC05:.ascii   "STcalc"
          .byte    0x00, 0x00
     LC06:.ascii   "STmdmp"
          .byte    0x00, 0x00
     LC07:.ascii   "EDIT"
          .byte    0x00, 0x00, 0x00, 0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WinMain()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   Hinstance
               RDX   Hprevinstance (always zero!)
               R08   EA command line parameters
               R09   flag window state (min, max, std)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   xxxx xxxx xxxx xxxx   ???
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _WinMain
          .def     _WinMain; .scl 2; .type 32; .endef
 _WinMain:subq     $0xF8,            %rsp
          movq     %rbp,             0xD8(%rsp)
          movq     %rsi,             0xE0(%rsp)
          movq     %rdi,             0xE8(%rsp)
          movq     %rbx,             0xF0(%rsp)
          movq     %rcx,             %rsi                # RSI = Hinstance
          movl     %r9d,             %ebx                # RBX = window state
          movl     $0x1005,          %edx                # RDX = ID icon
          call     _LdIcon
          movq     %rax,             %rbp                # RBP = Hicon
          xorl     %ecx,             %ecx                # RCX = NULLHANDLE
          movl     $0x7F00,          %edx                # RDX = IDC_ARROW
          call     _LdCursor
          movq     %rax,             %rdi                # RDI = Hcursor
          call     _GtStkObj
          pxor     %xmm0,            %xmm0               # XM0 = 0
          leaq     _test(%rip),      %r9                 # R09 = EA window procedure
          leaq     LC01(%rip),       %r8                 # R08 = EA class name
          leaq     LC00(%rip),       %rdx                # RDX = EA menu name
          leaq     0x60(%rsp),       %rcx                # RCX = EA WC
          movq     %xmm0,            0x60(%rsp)          # 0x00[WC] = 0
          movq     %r9,              0x68(%rsp)          # 0x08[WC] = EA window procedure
          movq     %xmm0,            0x70(%rsp)          # 0x10[WC] = 0, 0x14[WC] = 0
          movq     %rsi,             0x78(%rsp)          # 0x18[WC] = Hinstance
          movq     %rbp,             0x80(%rsp)          # 0x20[WC] = Hicon
          movq     %rdi,             0x88(%rsp)          # 0x28[WC] = Hcursor
          movq     %rax,             0x90(%rsp)          # 0x30[WC] = background colour
          movq     %rdx,             0x98(%rsp)          # 0x38[WC] = EA menu name
          movq     %r8,              0xA0(%rsp)          # 0x40[WC] = EA class name
          call     _RegClass
          testl    %eax,             %eax                # registered?
          je       2f
          call     _LDinit
          testl    %eax,             %eax
          jne      2f
          movq     _BNR(%rip),       %rbp                # RBP = BNR
          movq     $0x80000000,      %rdi                # RDI = CW_USEDEFAULT
          xorq     %rcx,             %rcx                # RCX = 0
          leaq     LC01(%rip),       %rdx                # RDX = EA class name
          leaq     LC02(%rip),       %r8                 # R08 = EA title
          movq     $0x00CF0000,      %r9                 # R09 = style
          movq     %rdi,             0x20(%rsp)          # x
          movq     %rdi,             0x28(%rsp)          # y
          movq     %rdi,             0x30(%rsp)          # w
          movq     %rdi,             0x38(%rsp)          # h
          movq     %rcx,             0x40(%rsp)          # HWND parent
          movq     %rcx,             0x48(%rsp)          # Hmenu
          movq     %rsi,             0x50(%rsp)          # Hinstance
          movq     %rcx,             0x58(%rsp)          # create parameters
          call     _WnCreatX
          testq    %rax,             %rax
          je       2f
          movq     %rsi,             HI_PGM(%rbp)        # store HI_PGM
          movq     %rax,             HW_PGM(%rbp)        # store HW_PGM
          movq     %rax,             %rcx                # RCX = HWND
          movl     %ebx,             %edx                # RDX = window state
          call     _WinSh
          call     _WnUpd
          leaq     0x80(%rsp),       %rcx                # RCX = EA MSG
          xorl     %edx,             %edx                # all windows
          xorq     %r8,              %r8                 # NULL
          xorq     %r9,              %r9                 # NULL
        0:call     _GetMsg
          testl    %eax,             %eax                # WM_QUIT?
          je       1f
          incl     %eax                                  # shorter than cmp $0xFFFFFFFF,%eax
          je       0b
          call     _TrnsMsg
          call     _DispMsg
          jmp      0b
        1:call     _LDexit
          incl     %eax                                  # RC = 1
        2:movq     0xD8(%rsp),       %rbp
          movq     0xE0(%rsp),       %rsi
          movq     0xE8(%rsp),       %rdi
          movq     0xF0(%rsp),       %rbx
          addq     $0xF8,            %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MainWndProc()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 0000 0000   processed
                     xxxx xxxx xxxx xxxx   not processed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _tst
          .def     _tst; .scl 2; .type 32; .endef
    _test:subq     $0xF8,            %rsp
          movq     _BNR(%rip),       %rax                # RAX = BNR
          movq     %rsi,             0xC0(%rsp)
          movq     %rdi,             0xC8(%rsp)
          movq     %rbx,             0xD0(%rsp)
          movq     %r9,              0xD8(%rsp)
          movq     %r8,              0xE0(%rsp)
          movq     %rdx,             0xE8(%rsp)
          movq     %rcx,             0xF0(%rsp)
          movq     %rax,             %rsi                # RSI = BNR
          movq     HI_PGM(%rax),     %rbx                # RBX = H_INST
          movq     HW_EDT(%rax),     %rdi                # RDI = H_EDIT
          cmpl     $0x0007,          %edx                # WM_SETFOCUS?
          je       L02
          cmpl     $0x0005,          %edx                # WM_SIZE?
          je       L01
          cmpl     $0x0111,          %edx                # WM_COMMAND?
          je       L03
          cmpl     $0x0002,          %edx                # WM_QUIT?
          je       L00
          cmpl     $0x0001,          %edx                # WM_CREATE?
          jne      DWP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_CREATE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          pxor     %xmm0,            %xmm0               # XM0 = 0
          movl     $0x1000,          %edx                # RDX = ID_EDITCHILD
          xorq     %r8,              %r8                 # R08 = 0
          movq     $0x50200044,      %r9                 # R09 = flags
          movdqa   %xmm0,            0x20(%rsp)          # x,  y
          movdqa   %xmm0,            0x30(%rsp)          # cx, cy
          movq     %rcx,             0x40(%rsp)          # HWND parent
          movq     %rdx,             0x48(%rsp)          # ID
          movq     %rbx,             0x50(%rsp)          # hinst
          movq     %xmm0,            0x58(%rsp)          # 0
          xorl     %ecx,             %ecx                # ECX = 0
          leaq     LC07(%rip),       %rdx                # RDX = class
          call     _WnCreatX
          movq     %rax,             HW_EDT(%rsi)        # store HWND edit
          movq     %rax,             %rdi                # RDI = H_EDIT
          testq    %rax,             %rax                # error?
          je       L00
          movl     $0x0A,            %ecx                # RCX = OEM_FIXED_FONT
          call     _GtStkObj
          movq     %rdi,             %rcx                # RCX = HWND edit
          movl     $0x30,            %edx                # RDX = WM_SETFONT
          movq     %rax,             %r8                 # R08 = handle
          xorq     %r9,              %r9                 # R09 = do not redraw
          call     _PostM
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_QUIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:xorl     %ecx,             %ecx
          call     _Pquit
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_SIZE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:movl     %r9d,             %eax                # RAX = hhhh wwww
          movq     %rdi,             %rcx                # RCX = HWND edit
          xorl     %edx,             %edx                # RDX = 0
          shrl     $0x10,            %eax                # RAX = 0000 hhhh
          xorl     %r8d,             %r8d                # R08 = 0
          andl     $0xFFFF,          %r9d                # R09 = w
          movq     %rax,             0x20(%rsp)          # s20 = h
          movq     $0x01,            0x28(%rsp)          # s28 = TRUE
          call     _WnMov
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_SETFOCUS
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L02:movq     %rdi,             %rcx                # RCX = HWND edit
          call     _WnFoc
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L03:subq     $0x1010,          %r8
          js       DWP
          cmpq     $0x07,            %r8
          ja       DWP
          jmp      *jt0(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            00 exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L10:call     _KillWin
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            01 test runs
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L11:leaq     test(%rip),       %rcx                # RCX = EA procedure
          leaq     LC03(%rip),       %rdx                # RDX = EA ID
          call     _DBox
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            02 statistics
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L12:
          /*
           pcmpeqb %xmm0,            %xmm0
           leaq    0x20(%rsp),       %rcx
           movdqa  %xmm0,            0x20(%rsp)
           movdqa  %xmm0,            0x30(%rsp)
           movb    $0x00,            0x29(%rsp)
           call    _SPad
           call    _RegDmp
           call    _StkDmp
          */
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            03 evaluation
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L13:
          jmp    XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            04 tools 00
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L14:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            05 tools 01
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L15:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            06 tools 02
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L16:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            07 about box
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L17:leaq     about(%rip),      %rcx                # RCX = EA procedure
          leaq     LC04(%rip),       %rdx                # RDX = EA ID
          call     _DBox
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorq     %rax,             %rax
      XIT:movq     0xC0(%rsp),       %rsi
          movq     0xC8(%rsp),       %rdi
          movq     0xD0(%rsp),       %rbx
          movq     0xD8(%rsp),       %r9
          movq     0xE0(%rsp),       %r8
          movq     0xE8(%rsp),       %rdx
          movq     0xF0(%rsp),       %rcx
          addq     $0xF8,%rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            default window procedure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      DWP:movq     0xC0(%rsp),       %rsi
          movq     0xC8(%rsp),       %rdi
          movq     0xD0(%rsp),       %rbx
          movq     0xD8(%rsp),       %r9
          movq     0xE0(%rsp),       %r8
          movq     0xE8(%rsp),       %rdx
          movq     0xF0(%rsp),       %rcx
          addq     $0xF8,            %rsp
          jmp      _DefWP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BMM,       8, 3
          .comm    _BNR,       8, 3
          .comm    _BBF,       8, 3
          .comm    _OBF,       8, 3
          .comm    _TST,       8, 3
          .comm    _BST,       8, 3
          .comm    _MHSTR,     8, 3
          .comm    _DVAR,      8, 3
          .comm    _QVAR,      8, 3
          .comm    _LDR_AVAIL, 8, 3
