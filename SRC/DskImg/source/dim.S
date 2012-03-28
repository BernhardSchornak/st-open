          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                   B E N C H M A R K   (C) ST-Open 2012
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
          .section .rdata, "dr"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            jump table
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4, 0x00,15
      jt0:.quad    L09                                   # 100D   exit
          .quad    L10                                   # 100E   select source
          .quad    L11                                   # 100F   select target
          .quad    L12                                   # 1010   write drive
          .quad    L13                                   # 1011   restore drive
          .quad    L14                                   # 1012   sector viewer
          .quad    L15                                   # 1013   STglue
          .quad    L16                                   # 1014   ??
          .quad    L17                                   # 1015   help OLH
          .quad    L18                                   # 1016        DskImg
          .quad    L19                                   # 1017   about
          .quad    L20                                   # 1018   post tasks
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            strings
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
     LC00:.ascii   "STmenu"
          .byte    0x00, 0x00
     LC01:.ascii   "STopen"
          .byte    0x00, 0x00
     LC02:.ascii   "Disk Image"
          .byte    0x00
     LC03:.ascii   "*.img"
          .byte    0x00, 0x00, 0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                            W i n M a i n ( )
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   Hinstance
               RDX   Hprevinstance (always zero)
               R08   EA command line parameters
               R09   window state flags (see Rxx labels)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   undefined
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _WinMain
          .def     _WinMain; .scl 2; .type 32; .endef
 _WinMain:subq     $0xF8,               %rsp
          movq     %rbp,                0xD8(%rsp)
          movq     %rsi,                0xE0(%rsp)
          movq     %rdi,                0xE8(%rsp)
          movq     %rbx,                0xF0(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            switch on 3D look
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     %rcx,                %rbp             # RSI = Hinstance
          movl     %r9d,                %ebx             # RBX = window state
          call     _IComCt
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            retrieve parameters
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0x1005,             %edx             # RDX = ID icon
          call     _LdIcon
          movq     %rax,                %rsi             # RBP = Hicon
          xorl     %ecx,                %ecx             # RCX = NULLHANDLE
          movl     $0x7F00,             %edx             # RDX = IDC_ARROW
          call     _LdCursor
          movq     %rax,                %rdi             # RDI = Hcursor
          movl     $0x00F0F0F0,         %ecx             # RCX = r:F0 g:F0 b:F0
          call     _CrSoBrsh
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            register class
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          pxor     %xmm0,               %xmm0            # XM0 = 0
          leaq     _dim(%rip),          %r9              # R09 = EA window procedure
          leaq     LC01(%rip),          %r8              # R08 = EA class name
          leaq     LC00(%rip),          %rdx             # RDX = EA menu name
          leaq     0x60(%rsp),          %rcx             # RCX = EA WC
          movq     %xmm0,               0x60(%rsp)       # 0x00[WC] = 0
          movq     %r9,                 0x68(%rsp)       # 0x08[WC] = EA window procedure
          movq     %xmm0,               0x70(%rsp)       # 0x10[WC] = 0, 0x14[WC] = 0
          movq     %rbp,                0x78(%rsp)       # 0x18[WC] = Hinstance
          movq     %rsi,                0x80(%rsp)       # 0x20[WC] = Hicon
          movq     %rdi,                0x88(%rsp)       # 0x28[WC] = Hcursor
          movq     %rax,                0x90(%rsp)       # 0x30[WC] = background colour
          movq     %rdx,                0x98(%rsp)       # 0x38[WC] = EA menu name
          movq     %r8,                 0xA0(%rsp)       # 0x40[WC] = EA class name
          call     _RegClass
          testl    %eax,                %eax             # registered?
          je       2f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            start ST Loader
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     $0x01,               _OLH_MODE(%rip)  # OLH edit  enabled
          call     _LDinit
          movq     _BNR(%rip),          %rsi             # RSI = BNR
          testl    %eax,                %eax
          jne      2f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            RIS and create window
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          cvtdq2ps  SCN_W0(%rsi),       %xmm0            # XM0 = WHWH
          cvtdq2ps  RIS_CX(%rsi),       %xmm2            # XM2 = xywh (percent)
          cvtdq2ps  WRATIO(%rsi),       %xmm1            # XM1 = 4 * 10000
          pxor      %xmm3,              %xmm3            # XM3 = 0
          mulps     %xmm2,              %xmm0            # xywh * WHWH
          divps     %xmm1,              %xmm0            # all / 10000
          cvttps2dq %xmm0,              %xmm1            # convert
          movdqa    %xmm1,              0x20(%rsp)       # store pixel
          xorl      %ecx,               %ecx             # RCX = 0
          leaq      LC01(%rip),         %rdx             # RDX = EA class name
          leaq      LC02(%rip),         %r8              # R08 = EA title
          movl      0x24(%rsp),         %eax             # RDI = y
          movl      0x28(%rsp),         %edi             # RDI = w
          movl      0x2C(%rsp),         %r9d             # R09 = h
          movl      %ecx,               0x24(%rsp)       # clear upper DD of x
          movq      %rax,               0x28(%rsp)       # y
          movq      %rdi,               0x30(%rsp)       # w
          movq      %r9,                0x38(%rsp)       # h
          movdqa    %xmm3,              0x40(%rsp)       # HWND = 0, HMENU = 0
          movq      %rbp,               0x50(%rsp)       # Hinstance
          movq      %rcx,               0x58(%rsp)       # create parameters
          movq      $0x00CF0000,        %r9              # R09 = style
          call      _WnCreatX
          testq     %rax,               %rax             # error?
          je        2f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            store params and show
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     %rbp,                HI_PGM(%rsi)     # store HI_PGM
          movq     %rax,                HW_PGM(%rsi)     # store HW_PGM
          movq     %rax,                %rcx             # RCX = HWND
          movl     %ebx,                %edx             # RDX = window state
          call     _MNUtxt
          call     _WinSh
          call     _WnUpd
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            add accelerator
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            message loop
            ~~~~~~~~~~~~~~~~~~~~~~
          */
         leaq     0x80(%rsp),           %rcx             # RCX = EA MSG
          xorl     %edx,                %edx             # all windows
          xorq     %r8,                 %r8              # NULL
          xorq     %r9,                 %r9              # NULL
        0:call     _GetMsg
          testl    %eax,                %eax             # WM_QUIT?
          je       1f
          incl     %eax                                  # shorter than cmp $0xFFFFFFFF,%eax
          je       0b
          call     _TrnsMsg
          call     _DispMsg
          jmp      0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            exit
            ~~~~~~~~~~~~~~~~~~~~~~
          */
        1:call     _LDexit
          incl     %eax                                  # RC = 1
        2:movq     0xD8(%rsp),          %rbp
          movq     0xE0(%rsp),          %rsi
          movq     0xE8(%rsp),          %rdi
          movq     0xF0(%rsp),          %rbx
          addq     $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                             S T B ( e n c h )
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000   processed
                     ???? ????   not processed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _dim
          .def     _dim; .scl 2; .type 32; .endef
     _dim:subq     $0xF8,               %rsp
          movq     _BNR(%rip),          %rax             # RAX = BNR
          pxor     %xmm0,               %xmm0            # XM0 = 0
          movq     %rsi,                0xC0(%rsp)
          movq     %rdi,                0xC8(%rsp)
          movq     %rbx,                0xD0(%rsp)
          movq     %r9,                 0xD8(%rsp)
          movq     %r8,                 0xE0(%rsp)
          movq     %rdx,                0xE8(%rsp)
          movq     %rcx,                0xF0(%rsp)
          movq     %rax,                %rsi             # RSI = BNR
          andl     $0xFFFF,             %r8d             # R08 = ID
          cmpl     $0x0005,             %edx             # WM_SIZE?
          je       L01
          cmpl     $0x0003,             %edx             # WM_MOVE?
          je       L01
          cmpl     $0x0111,             %edx             # WM_COMMAND?
          je       L03
          cmpl     $0x0002,             %edx             # WM_QUIT?
          je       L00
          cmpl     $0x0001,             %edx             # WM_CREATE?
          jne      DWP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_CREATE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0x0111,             %edx             # RDX = WM_COMMAND
          movq     $0x1018,             %r8              # R08 = (WPARAM) = ID
          xorq     %r9,                 %r9              # R09 = (LPARAM) = 0
          call     _PostM
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_QUIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:xorl     %ecx,                %ecx
          call     _Pquit
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_MOVE / WM_SIZE (store size and position)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:call      _WMsize
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L03:movl     PGM_FL(%rsi),        %eax             # RAX = PGM_FL
          subq     $0x100D,             %r8              # below?
          js       DWP
          cmpq     $0x0B,               %r8              # language?
          ja       L21
          jmp      *jt0(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            00 exit
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L09:call     _KillWin
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            01 select source
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L10:movq     _MHSTR(%rip),        %rbx             # RBX = MHSTR
          leaq     SOURCE(%rsi),        %rax             # RAX = EA name
          xorl     %ecx,                %ecx             # RCX = file open
          leaq     LC03(%rip),          %rdx             # RDX = EA filter
          xorq     %r8,                 %r8              # R08 = default start dir
          xorq     %r9,                 %r9              # R08 =         title
          movq     %rax,                0x20(%rsp)       # P_5 = EA name
          call     _FileOpen
          testl    %eax,                %eax             # error or aborted?
          jne      XIZ
          movq     %rbx,                %rcx             # RCX = MHSTR
          movl     $0x10,               %edx             # RDX = STR_FLS_SELECT
          xorq     %r8,                 %r8              # R08 = sub00
          movq     $0x01,               %r9              # R09 = FDA_READ
          call     _FDacc
          orl      $FLG_SS,             PGM_FL(%rsi)     # set source selected
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            02 select target
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L11:leaq     _SelTgt(%rip),       %rcx             # RCX = EA procedure
          movl     $0x1100,             %edx             # RDX = ID
          call     _DBox
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            03 write image
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L12:movl     $0x02,               %ecx             # RCX = DIM_NO_SOURCE
          testl    $0x01,               %eax             # source selected?
          je       0f
          incl     %ecx                                  # RCX = DIM_NO_TARGET
          testl    $0x02,               %eax             # target selected?
          je       0f
          leaq     _WrImg(%rip),        %rcx             # RCX = EA procedure
          movl     $0x1180,             %edx             # RDX = ID
          call     _DBox
          jmp      XIZ
          .p2align 4,,15
        0:call     _ErrMgr
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            04 restore drive
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L13:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            05 sector viewer
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L14:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            06 STglue
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L15:leaq     _STglue(%rip),       %rcx             # RCX = EA procedure
          movl     $0x11C0,             %edx             # RDX = ID
          call     _DBox
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            07 ???
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L16:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            08 help for help
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L17:xorl     %ecx,                %ecx             # help OLH
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            09 program help
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L18:movl     $0x01,               %ecx             # help DskImg
        0:call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            10 about box
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L19:leaq     _about(%rip),        %rcx             # RCX = EA procedure
          movl     $0x10C0,             %edx             # RDX = ID
          call     _DBox
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            11 post tasks
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L20:leaq     EA_DRP(%rsi),        %rcx             # RCX = LD
          call     _LDreq
          call     _GetInf
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~
            09 language
            ~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L21:subq     $0x0C,               %r8              # R08 = language
          cmpq     $0x10,               %r8              # valid?
          ja       XIZ
          movl     %r8d,                USRLNG(%rsi)     # set
          call     _MNUtxt
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            default window procedure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      DWP:movq     0xC0(%rsp),          %rsi
          movq     0xC8(%rsp),          %rdi
          movq     0xD0(%rsp),          %rbx
          movq     0xD8(%rsp),          %r9
          movq     0xE0(%rsp),          %r8
          movq     0xE8(%rsp),          %rdx
          movq     0xF0(%rsp),          %rcx
          addq     $0xF8,               %rsp
          jmp      _DefWP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorl     %eax,                %eax
      XIT:movq     0xC0(%rsp),          %rsi
          movq     0xC8(%rsp),          %rdi
          movq     0xD0(%rsp),          %rbx
          movq     0xD8(%rsp),          %r9
          movq     0xE0(%rsp),          %r8
          movq     0xE8(%rsp),          %rdx
          movq     0xF0(%rsp),          %rcx
          addq     $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            variables
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BMM,                8, 3
          .comm    _OBF,                8, 3
          .comm    _BBF,                8, 3
          .comm    _TST,                8, 3
          .comm    _BNR,                8, 3
          .comm    _DVAR,               8, 3
          .comm    _QVAR,               8, 3
          .comm    _BST,                8, 3
          .comm    _MHSTR,              8, 3
          .comm    _LDR_AVAIL,          8, 3
