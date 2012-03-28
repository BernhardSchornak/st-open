          /*
            ==================================================================================
                             D E B U G G I N G   T O O L S   (C) ST-Open 2011                 
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
            ==================================================================================
          */
          .include "..\\..\\..\\include\\yasm.h"
          .include "ptb.h"
          .section .rdata, "dr"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            jump table
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4, 0x00,15
      jt0:.quad     L10                                  # 1010 exit
          .quad     L11                                  # 1011 dumps register
          .quad     L12                                  # 1012       memory
          .quad     L13                                  # 1013       stack
          .quad     L14                                  # 1014 calculator
          .quad     L15                                  # 1015 ?
          .quad     L16                                  # 1016 ?
          .quad     L17                                  # 1017 help OLH
          .quad     L18                                  # 1018      PTB
          .quad     L19                                  # 1019 about
          .quad     L20                                  # 101A select source
          .quad     L21                                  # 101B dummy (post tasks)
          .quad     L22                                  # 101C languages
          .quad     0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            strings
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
     LC00:.ascii    "STmenu"
          .byte     0x00, 0x00
     LC01:.ascii    "STopen"
          .byte     0x00, 0x00
     LC02:.ascii    "Programmer's ToolBox"
          .byte     0x00, 0x00, 0x00, 0x00
     LC03:.ascii    "EDIT"
          .byte     0x00, 0x00, 0x00, 0x00
     LC04:.ascii    "reg.dmp"
          .byte     0x00
          .quad     0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WinMain()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   Hinstance
               RDX   Hprevinstance (always zero!)
               R08   EA command line parameters
               R09   flag window state (min, max, std)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   xxxx xxxx xxxx xxxx   ???
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _WinMain
          .def      _WinMain; .scl 2; .type 32; .endef
 _WinMain:subq      $0xF8,               %rsp
          movq      %rbp,                0xD8(%rsp)
          movq      %rsi,                0xE0(%rsp)
          movq      %rdi,                0xE8(%rsp)
          movq      %rbx,                0xF0(%rsp)
          movl      $0x08,               0x20(%rsp)
          movl      $0xFF,               0x24(%rsp)
          movq      %rcx,                %rbp            # RSI = Hinstance
          movl      %r9d,                %ebx            # RBX = window state
          leaq      0x20(%rsp),          %rcx            # RCX = EA commcntl-sex
          call      *__imp__InitCommonControlsEx(%rip)
          movl      $0x1005,             %edx            # RDX = ID icon
          call      _LdIcon
          movq      %rax,                %rsi            # RBP = Hicon
          xorl      %ecx,                %ecx            # RCX = NULLHANDLE
          movl      $0x7F00,             %edx            # RDX = IDC_ARROW
          call      _LdCursor
          movq      %rax,                %rdi            # RDI = Hcursor
          call     _GtStkObj
          pxor      %xmm0,               %xmm0           # XM0 = 0
          leaq      _ptb(%rip),          %r9             # R09 = EA window procedure
          leaq      LC01(%rip),          %r8             # R08 = EA class name
          leaq      LC00(%rip),          %rdx            # RDX = EA menu name
          leaq      0x60(%rsp),          %rcx            # RCX = EA WC
          movq      %xmm0,               0x60(%rsp)      # 0x00[WC] = 0
          movq      %r9,                 0x68(%rsp)      # 0x08[WC] = EA window procedure
          movq      %xmm0,               0x70(%rsp)      # 0x10[WC] = 0, 0x14[WC] = 0
          movq      %rbp,                0x78(%rsp)      # 0x18[WC] = Hinstance
          movq      %rsi,                0x80(%rsp)      # 0x20[WC] = Hicon
          movq      %rdi,                0x88(%rsp)      # 0x28[WC] = Hcursor
          movq      %rax,                0x90(%rsp)      # 0x30[WC] = background colour
          movq      %rdx,                0x98(%rsp)      # 0x38[WC] = EA menu name
          movq      %r8,                 0xA0(%rsp)      # 0x40[WC] = EA class name
          call      _RegClass
          testl     %eax,                %eax            # registered?
          je        2f
          movq      $0x01,               _DEBUG(%rip)
          movq      $0x01,               _OLH_MODE(%rip)
          call      _LDinit
          movq      _BNR(%rip),          %rsi            # RBP = BNR
          testl     %eax,                %eax
          jne       2f
          cvtdq2ps  SCN_W0(%rsi),        %xmm0           # XM0 = WHWH
          cvtdq2ps  RIS_CX(%rsi),        %xmm2           # XM2 = xywh (percent)
          cvtdq2ps  WRATIO(%rsi),        %xmm1           # XM1 = 4 * 10000
          pxor      %xmm3,               %xmm3           # XM3 = 0
          mulps     %xmm2,               %xmm0           # xywh * WHWH
          divps     %xmm1,               %xmm0           # all / 10000
          cvttps2dq %xmm0,               %xmm1           # convert
          movdqa    %xmm1,               0x20(%rsp)      # store pixel
          xorl      %ecx,                %ecx            # RCX = 0
          leaq      LC01(%rip),          %rdx            # RDX = EA class name
          leaq      LC02(%rip),          %r8             # R08 = EA title
          movl      0x24(%rsp),          %eax            # RDI = y
          movl      0x28(%rsp),          %edi            # RDI = w
          movl      0x2C(%rsp),          %r9d            # R09 = h
          movl      %ecx,                0x24(%rsp)      # clear upper DD of x
          movq      %rax,                0x28(%rsp)      # y
          movq      %rdi,                0x30(%rsp)      # w
          movq      %r9,                 0x38(%rsp)      # h
          movdqa    %xmm3,               0x40(%rsp)      # HWND = 0, HMENU = 0
          movq      %rbp,                0x50(%rsp)      # Hinstance
          movq      %rcx,                0x58(%rsp)      # create parameters
          movq      $0x00CF0000,         %r9             # R09 = style
          call      _WnCreatX
          testq     %rax,                %rax
          je        2f
          movq      %rbp,                HI_PGM(%rsi)    # store HI_PGM
          movq      %rax,                HW_PGM(%rsi)    # store HW_PGM
          movl      $0x00,               FLSADD(%rsi)    # disable FileList
          movq      %rax,                %rcx            # RCX = HWND
          movl      %ebx,                %edx            # RDX = window state
          call      _MNUtxt
          call      _WinSh
          call      _WnUpd
          leaq      0x80(%rsp),          %rcx            # RCX = EA MSG
          xorl      %edx,                %edx            # all windows
          xorl      %r8d,                %r8d            # NULL
          xorl      %r9d,                %r9d            # NULL
          .p2align  4,,15
        0:call      _GetMsg
          testl     %eax,                %eax            # WM_QUIT?
          je        1f
          incl      %eax                                 # shorter than cmp $0xFFFFFFFF,%eax
          je        0b
          call      _TrnsMsg
          call      _DispMsg
          jmp       0b
        1:call      _LDexit
          incl      %eax                                 # RC = 1
        2:movq      0xD8(%rsp),          %rbp
          movq      0xE0(%rsp),          %rsi
          movq      0xE8(%rsp),          %rdi
          movq      0xF0(%rsp),          %rbx
          addq      $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MainWndProc()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 0000 0000   processed
                     xxxx xxxx xxxx xxxx   not processed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _ptb
          .def      _ptb; .scl 2; .type 32; .endef
     _ptb:subq      $0xF8,               %rsp
          movq      _BNR(%rip),          %rax            # RAX = BNR
          movq      %rsi,                0xC0(%rsp)
          movq      %rdi,                0xC8(%rsp)
          movq      %rbx,                0xD0(%rsp)
          movq      %r9,                 0xD8(%rsp)
          movq      %r8,                 0xE0(%rsp)
          movq      %rdx,                0xE8(%rsp)
          movq      %rcx,                0xF0(%rsp)
          movq      %rax,                %rsi            # RSI = BNR
          movq      HW_EDT(%rax),        %rdi            # RDI = H_EDIT
          cmpl      $0x0007,             %edx            # WM_SETFOCUS?
          je        L02
          cmpl      $0x0003,             %edx            # WM_MOVE?
          je        L01
          cmpl      $0x0005,             %edx            # WM_SIZE?
          je        L01
          cmpl      $0x0111,             %edx            # WM_COMMAND?
          je        L03
          cmpl      $0x0002,             %edx            # WM_QUIT?
          je        L00
          cmpl      $0x0001,             %edx            # WM_CREATE?
          jne       DWP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_CREATE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl      $0x00,               FLSADD(%rsi)    # disable file list add
          movl      $0x0111,             %edx            # RDX = WM_COMMAND
          movq      $0x101B,             %r8             # R08 = dummy
          xorq      %r9,                 %r9             # R09 = NULL
          call      _PostM
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_QUIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L00:movq      EA_OBF(%rsi),        %rcx            # RCX = EA_OBF
          movl      $0x00010000,         %edx            # RDX = 65,536
          call      _FreMem
          xorl      %ecx,                %ecx
          call      _Pquit
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_SIZE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L01:call      _WMsize
          movl      %r9d,                %eax            # RAX = hhhh wwww
          movq      %rdi,                %rcx            # RCX = HWND edit
          xorl      %edx,                %edx            # RDX = 0
          shrl      $0x10,               %eax            # RAX = 0000 hhhh
          xorl      %r8d,                %r8d            # R08 = 0
          andl      $0xFFFF,             %r9d            # R09 = w
          movq      %rax,                0x20(%rsp)      # P_5 = h
          movq      $0x01,               0x28(%rsp)      # P_6 = TRUE
          call      _WnMov
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_SETFOCUS
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L02:movq      %rdi,                %rcx            # RCX = HWND edit
          call      _WnFoc
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L03:movl      SRC_CT(%rsi),        %eax            # RAX = avail sources
          subq      $0x1010,             %r8
          js        DWP
          cmpq      $0x0B,               %r8
          ja        L22
          jmp       *jt0(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L10:call      _KillWin
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Register Dumps
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L11:testl     %eax,                %eax            # sources avail?
          je        R05
          pxor      %xmm0,               %xmm0
          leaq      BUFFER(%rsi),        %rdi            # RDI = EA buffer
          movq      MH_SCF(%rsi),        %rcx            # RCX = MH sources
          movl      SRC_SL(%rsi),        %edx            # RDX = entry
          xorq      %r8,                 %r8             # R08 = sub00
          movq      $0x01,               %r9             # R09 = FDA_READ
          movq      %rdi,                0x20(%rsp)      # P_5 = EA buffer
          movq      %xmm0,               0x28(%rsp)      # clear FH
          movdqa    %xmm0,               0x30(%rsp)
          movdqa    %xmm0,               0x40(%rsp)
          call      _FDacc
          incq      %r8                                  # R08 = sub01
          call      _FDacc
          movdqa    LC04(%rip),          %xmm0           # XM0 = reg.dmp
          testl     %eax,                %eax            # empty string?
          je        R05
          movq      _TST(%rip),          %rbx            # RBX = EA TST
          leaq      0x20(%rsp),          %rcx            # RCX = FH
          xorl      %edx,                %edx            # RDX = entire file
          movq      $0x02,               %r8             # R08 = open if exists
          movq      %rdi,                %r9             # R09 = EA name
          movdqu    %xmm0,               0x00(%rdi,%rax) # append reg.dmp
          movq      %rbx,                0x30(%rsp)      # store EA
          call      _Fopen
          testl     %eax,                %eax            # error?
          jne       R06
          call      _Fread
          call      _Fclose
          leaq      _rdmp(%rip),         %rcx            # RCX = EA procedure
          movl      $0x10C1,             %edx            # RDX = ID
          call      _DBox
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Memory Dumps
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L12:testl     %eax,                %eax            # sources avail?
          je        R05
          leaq      BUFFER(%rsi),        %rbx            # RBX = EA buffer
          movq      MH_SCF(%rsi),        %rcx            # RCX = MH sources
          movl      SRC_SL(%rsi),        %edx            # RDX = entry
          xorq      %r8,                 %r8             # R08 = sub00
          movq      $0x01,               %r9             # R09 = FDA_READ
          movq      %rbx,                0x20(%rsp)      # P_5 = EA buffer
          call      _FDacc
          incq      %r8
          call      _FDacc
          movl      $0x646D2E2A,         0x00(%rbx,%rax) # "*.md"
          movl      $0x70,               0x04(%rbx,%rax) # "p000"
          movq      $0x0100,             0x20(%rsp)      # P_5 = max
          movq      %rbx,                %rcx            # RCX = EA pattern
          movq      MH_MDP(%rsi),        %rdx            # RDX = MH memdmp
          xorq      %r8,                 %r8             # R08 = sub   0
          xorq      %r9,                 %r9             # R09 = start
          call      _FsrchN
          movl      %eax,                MD_CNT(%rsi)    # store count
          testl     %eax,                %eax            # found any?
          je        R07
          leaq      _selmdp(%rip),       %rcx            # RCX = EA procedure
          movl      $0x10C3,             %edx            # RDX = ID
          call      _DBox
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Stack Dumps
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L13:testl     %eax,                %eax            # sources avail?
          je        R05
          leaq      BUFFER(%rsi),        %rbx            # RBX = EA buffer
          movq      MH_SCF(%rsi),        %rcx            # RCX = MH sources
          movl      SRC_SL(%rsi),        %edx            # RDX = entry
          xorq      %r8,                 %r8             # R08 = sub00
          movq      $0x01,               %r9             # R09 = FDA_READ
          movq      %rbx,                0x20(%rsp)      # P_5 = EA buffer
          call      _FDacc
          incq      %r8
          call      _FDacc
          movl      $0x64732E2A,         0x00(%rbx,%rax) # "*.sd"
          movl      $0x70,               0x04(%rbx,%rax) # "p000"
          movq      $0x0100,             0x20(%rsp)      # P_5 = max
          movq      %rbx,                %rcx            # RCX = EA pattern
          movq      MH_SDP(%rsi),        %rdx            # RDX = MH memdmp
          xorq      %r8,                 %r8             # R08 = sub   0
          xorq      %r9,                 %r9             # R09 = start
          call      _FsrchN
          movl      %eax,                SD_CNT(%rsi)    # store count
          testl     %eax,                %eax            # found any?
          je        R08
          leaq      _selsdp(%rip),       %rcx            # RCX = EA procedure
          movl      $0x10C3,             %edx            # RDX = ID
          call      _DBox
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            HexCalc
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L14:leaq      _calc(%rip),         %rcx            # RCX = EA procedure
          movl      $0x10C2,             %edx            # RDX = ID
          call      _DBox
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Tool 2
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L15:
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Tool 3
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L16:
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            help OLH
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L17:xorl      %ecx,                %ecx
          call      _Help
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            help PTB
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
      L18:movl       $0x01,               %ecx
          call       _Help
          jmp        XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            about box
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L19:leaq      _about(%rip),        %rcx            # RCX = EA procedure
          movl      $0x10C0,             %edx            # RDX = ID
          call      _DBox
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            source select
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L20:leaq      _selsrc(%rip),       %rcx            # RCX = EA procedure
          movl      $0x10C3,             %edx            # RDX = ID
          call      _DBox
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            post tasks
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          movl      $0x00FFFF00,  %ecx                    # RCX = r:FF g:FF b:00
          call      _CrSoBrsh
          */
          .p2align  4,,15
      L21:movq      HI_PGM(%rsi),        %rbx            # RBX = H_INST
          leaq      0x20(%rsp),          %rdx            # RDX = EA RECT (00 x  20 y  40 w  60 h)
          call      _GtCRct
          pshufd    $0x32, 0x20(%rsp),   %xmm1           # XM1 = wh      (00 11 00 10)
          pxor      %xmm0,               %xmm0           # XM0 = 0
          xorl      %r8d,                %r8d            # R08 = 0
          movl      $0x50200044,         %r9d            # R09 = flags
          leaq      LC03(%rip),          %rdx            # RDX = class
          movdqa    %xmm0,               0x20(%rsp)      # x,  y
          movdqa    %xmm1,               0x30(%rsp)      # cx, cy
          movq      %rcx,                0x40(%rsp)      # HWND parent
          movq      $0x1000,             0x48(%rsp)      # ID_EDITCHILD
          movq      %rbx,                0x50(%rsp)      # hinst
          movq      %xmm0,               0x58(%rsp)      # 0
          xorl      %ecx,                %ecx            # ECX = 0
          call      _WnCreatX
          movq      %rax,                HW_EDT(%rsi)    # store HWND edit
          movq      %rax,                %rdi            # RDI = H_EDIT
          testq     %rax,                %rax            # error?
          je        R00
          movl      $0x0A,               %ecx            # RCX = OEM_FIXED_FONT
          call      _GtStkObj
          movq      %rdi,                %rcx            # RCX = HWND edit
          movl      $0x30,               %edx            # RDX = WM_SETFONT
          movq      %rax,                %r8             # R08 = handle
          xorq      %r9,                 %r9             # R09 = do not redraw
          call      _SendM
          movq      $0x00010000,         %rcx            # get 65,536 byte
          call      _AloMem
          pxor      %xmm0,               %xmm0           # XM0 = 0
          testq     %rax,                %rax            # address?
          je        R01
          leaq      0x20(%rsp),          %rcx            # RCX = LD
          movl      $0x01,               0x30(%rsp)      # field 00000001
          movl      $0x23,               0x34(%rsp)      # r, w, static
          movq      %rax,                EA_OBF(%rsi)    # store OBF
          call      _LDreq
          movq      0x00(%rcx),          %r8             # R08 = EA_SCF
          movq      0x18(%rcx),          %r9             # R09 = MH_SCF
          testl     %eax,                %eax
          jne       R02
          movl      $0x02,               0x10(%rcx)      # field 00000002
          movq      %r8,                 EA_SCF(%rsi)    # store EA
          movq      %r9,                 MH_SCF(%rsi)    #       MH
          call      _LDreq
          movq      0x00(%rcx),          %r8             # R08 = EA_MDP
          movq      0x18(%rcx),          %r9             # R09 = MH_MDP
          testl     %eax,                %eax
          jne       R03
          movl      $0x03,               0x10(%rcx)      # field 00000003
          movq      %r8,                 EA_MDP(%rsi)    # store EA
          movq      %r9,                 MH_MDP(%rsi)    #       MH
          call      _LDreq
          movq      0x00(%rcx),          %r8             # R08 = EA_SDP
          movq      0x18(%rcx),          %r9             # R09 = MH_SDP
          testl     %eax,                %eax
          jne       R04
          movq      %r8,                 EA_SDP(%rsi)    # store EA
          movq      %r9,                 MH_SDP(%rsi)    #       MH
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            languages
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L22:subq      $0x0C,               %r8             # get language
          cmpq      $0x0F,               %r8             # valid?
          ja        XIZ
          movl      %r8d,                USRLNG(%rsi)    # store USRLNG
          call      _MNUtxt
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common errors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      R00:movl      $0x01,               %ecx            # RCX = ERR_NO_MLE
          jmp       0f
          .p2align  4,,15
      R01:movl      $0x02,               %ecx            # RCX = ERR_NO_BUF
          jmp       0f
          .p2align  4,,15
      R02:movl      $0x03,               %ecx            # RCX = ERR_FIELD_1
          jmp       0f
          .p2align  4,,15
      R03:movl      $0x04,               %ecx            # RCX = ERR_FIELD_2
          jmp       0f
          .p2align  4,,15
      R04:movl      $0x05,               %ecx            # RCX = ERR_FIELD_3
          jmp       0f
          .p2align  4,,15
      R05:movl      $0x06,               %ecx            # RCX = ERR_NO_SOURCES
          jmp       0f
          .p2align  4,,15
      R06:movl      $0x07,               %ecx            # RCX = ERR_NO_REGDMP
          jmp       0f
          .p2align  4,,15
      R07:movl      $0x08,               %ecx            # RCX = ERR_NO_MEMDMP
          jmp       0f
          .p2align  4,,15
      R08:movl      $0x09,               %ecx            # RCX = ERR_NO_STKDMP
          jmp       0f
          .p2align  4,,15
        0:movl      %eax,                MSG_V1(%rsi)    # set MSG_V1
          call      _ErrMgr
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            default window procedure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      DWP:movq      0xC0(%rsp),          %rsi
          movq      0xC8(%rsp),          %rdi
          movq      0xD0(%rsp),          %rbx
          movq      0xD8(%rsp),          %r9
          movq      0xE0(%rsp),          %r8
          movq      0xE8(%rsp),          %rdx
          movq      0xF0(%rsp),          %rcx
          addq      $0xF8,               %rsp
          jmp       _DefWP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      XIZ:xorq      %rax,                %rax
      XIT:movq      0xC0(%rsp),          %rsi
          movq      0xC8(%rsp),          %rdi
          movq      0xD0(%rsp),          %rbx
          movq      0xD8(%rsp),          %r9
          movq      0xE0(%rsp),          %r8
          movq      0xE8(%rsp),          %rdx
          movq      0xF0(%rsp),          %rcx
          addq      $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm     _BMM,                8, 3
          .comm     _BNR,                8, 3
          .comm     _BST,                8, 3
          .comm     _BBF,                8, 3
          .comm     _TST,                8, 3
          .comm     _LDF,                8, 3
          .comm     _GVAR,               8, 3
          .comm     _MHSTR,              8, 3
          .comm     _LDR_AVAIL,          8, 3
          .comm     _DEBUG,              8, 3
          .comm     _USE_LDF,            8, 3
          .comm     _OLH_MODE,           8, 3
