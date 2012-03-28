          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                   D A T - T O O L S   (C) ST-Open 2012
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
          .include  "..\\..\\..\\include\\yasm.h"
          .include  "dt5.h"
          .section  .rdata, "dr"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            jump table
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,0x00
      jt0:.quad     L06                                   # 00 1010 SecSys login
          .quad     L07                                   # 01 1011 exit
          .quad     L08                                   # 02 1012 start (WM_CREATE)
          .quad     L09                                   # 03 1013 sel src
          .quad     L10                                   # 04 1014 sel fld
          .quad     L11                                   # 05 1015 drv map
          .quad     L12                                   # 06 1016 create file
          .quad     L13                                   # 07 1017 create field
          .quad     L14                                   # 08 1018 move entries
          .quad     L15                                   # 09 1019 copy field content
          .quad     L16                                   # 0A 101A ShowDat
          .quad     L17                                   # 0B 101B OLH
          .quad     L18                                   # 0C 101C topics
          .quad     L20                                   # 0D 101D menus
          .quad     L22                                   # 0E 101E messages
          .quad     L19                                   # 0F 101F sys dialogs
          .quad     L21                                   # 10 1020 sys errors
          .quad     L24                                   # 11 1021 lang names
          .quad     L25                                   # 12 1022 std create
          .quad     L26                                   # 13 1023     spinbuttons
          .quad     L27                                   # 14 1024     bitmaps
          .quad     L28                                   # 15 1025     notebooks
          .quad     L29                                   # 16 1026     entryfields
          .quad     L30                                   # 17 1027 -
          .quad     L31                                   # 18 1028 help help
          .quad     L32                                   # 19 1029 help DTools
          .quad     L33                                   # 1A 102A about
          .quad     XIZ                                   # -  -    align...
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            strings
            ~~~~~~~~~~~~~~~~~~~~~~
          */
     LC00:.ascii    "STmenu"
          .byte     0x00, 0x00
     LC01:.ascii    "dt5"
          .byte     0x00
     LC02:.ascii    "DatTools 5"
          .byte     0x00, 0x00
     LC03:.ascii    "STaccl"
          .byte     0x00, 0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WinMain()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   Hinstance
               RDX   Hprevinstance (always zero!)
               R08   EA command line parameters
               R09   flag window state (min, max, std)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   xxxx xxxx xxxx xxxx   ???
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _WinMain
          .def      _WinMain; .scl 2; .type 32; .endef
 _WinMain:subq      $0xF8,        %rsp
          movq      %rbp,         0xD8(%rsp)
          movq      %rsi,         0xE0(%rsp)
          movq      %rdi,         0xE8(%rsp)
          movq      %rbx,         0xF0(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            switch on 3D look
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          movq      %rcx,         %rbp                    # RSI = Hinstance
          movl      %r9d,         %ebx                    # RBX = window state
          call      _IComCt
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            retrieve parameters
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          movl      $0x1000,      %edx                    # RDX = ID icon
          call      _LdIcon
          movq      %rax,         %rsi                    # RSI = Hicon
          xorl      %ecx,         %ecx                    # RCX = NULLHANDLE
          movl      $0x7F00,      %edx                    # RDX = IDC_ARROW
          call      _LdCursor
          movq      %rax,         %rdi                    # RDI = Hcursor
          movl      $0x00FFFF00,  %ecx                    # RCX = r:FF g:FF b:00
          call      _CrSoBrsh
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            register class
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          pxor      %xmm0,        %xmm0                   # XM0 = 0
          leaq      _dt5(%rip),   %r9                     # R09 = EA window procedure
          leaq      LC01(%rip),   %r8                     # R08 = EA class name
          leaq      LC00(%rip),   %rdx                    # RDX = EA menu  name
          leaq      0x60(%rsp),   %rcx                    # RCX = EA WC
          movq      %xmm0,        0x60(%rsp)              # 0x00[WC] = 0
          movq      %r9,          0x68(%rsp)              # 0x08[WC] = EA window procedure
          movq      %xmm0,        0x70(%rsp)              # 0x10[WC] = 0, 0x14[WC] = 0
          movq      %rbp,         0x78(%rsp)              # 0x18[WC] = Hinstance
          movq      %rsi,         0x80(%rsp)              # 0x20[WC] = Hicon
          movq      %rdi,         0x88(%rsp)              # 0x28[WC] = Hcursor
          movq      %rax,         0x90(%rsp)              # 0x30[WC] = background colour
          movq      %rdx,         0x98(%rsp)              # 0x38[WC] = EA menu name
          movq      %r8,          0xA0(%rsp)              # 0x40[WC] = EA class name
          call      _RegClass
          testl     %eax,         %eax                    # registered?
          je        2f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            start ST Loader
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          movq      $0x01,        _OLH_MODE(%rip)         # OLH edit  enabled
          call      _LDinit
          movq      _BNR(%rip),   %rsi                    # RSI = BNR
          testl     %eax,         %eax                    # error?
          jne       2f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            RIS and create window
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          cvtdq2ps  SCN_W0(%rsi), %xmm0                   # XM0 = WHWH
          cvtdq2ps  RIS_CX(%rsi), %xmm2                   # XM2 = xywh (percent)
          cvtdq2ps  WRATIO(%rsi), %xmm1                   # XM1 = 4 * 10000
          pxor      %xmm3,        %xmm3                   # XM3 = 0
          mulps     %xmm2,        %xmm0                   # xywh * WHWH
          divps     %xmm1,        %xmm0                   # all / 10000
          cvttps2dq %xmm0,        %xmm1                   # convert
          movdqa    %xmm1,        0x20(%rsp)              # store pixel
          xorl      %ecx,         %ecx                    # RCX = 0
          leaq      LC01(%rip),   %rdx                    # RDX = EA class name
          leaq      LC02(%rip),   %r8                     # R08 = EA title
          movl      0x24(%rsp),   %eax                    # RDI = y
          movl      0x28(%rsp),   %edi                    # RDI = w
          movl      0x2C(%rsp),   %r9d                    # R09 = h
          movl      %ecx,         0x24(%rsp)              # clear upper DD of x
          movq      %rax,         0x28(%rsp)              # y
          movq      %rdi,         0x30(%rsp)              # w
          movq      %r9,          0x38(%rsp)              # h
          movdqa    %xmm3,        0x40(%rsp)              # HWND = 0, HMENU = 0
          movq      %rbp,         0x50(%rsp)              # Hinstance
          movq      %rcx,         0x58(%rsp)              # create parameters
          movq      $0x00CF0000,  %r9                     # R09 = style
          call      _WnCreatX
          testq     %rax,         %rax                    # error?
          je        2f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            store params and show
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          movq      %rax,         %rcx                    # RCX = HWND
          movl      %ebx,         %edx                    # RDX = window state
          movq      %rbp,         HI_PGM(%rsi)            # store HI_PGM
          movq      %rax,         HW_PGM(%rsi)            # store HW_PGM
          call      _MNUtxt
          call      _WinSh
          call      _WnUpd
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
          leaq      0x80(%rsp),   %rcx                    # RCX = EA MSG
          xorl      %edx,         %edx                    # all windows
          xorl      %r8d,         %r8d                    # NULL
          xorl      %r9d,         %r9d                    # NULL
        0:call      _GetMsg
          testl     %eax,         %eax                    # WM_QUIT?
          je        1f
          incl      %eax                                  # shorter than cmp $0xFFFFFFFF,%eax
          je        0b
          call      _TrnsMsg
          call      _DispMsg
          jmp       0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            exit
            ~~~~~~~~~~~~~~~~~~~~~~
          */
        1:call      _LDexit
          incl      %eax                                  # RC = 1
        2:movq      0xD8(%rsp),   %rbp
          movq      0xE0(%rsp),   %rsi
          movq      0xE8(%rsp),   %rdi
          movq      0xF0(%rsp),   %rbx
          addq      $0xF8,        %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MainWndProc()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000   processed
                     xxxx xxxx   not processed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _dt5
          .def      _dt5; .scl 2; .type 32; .endef
     _dt5:subq      $0xF8,        %rsp
          movq      _BNR(%rip),   %rax                    # RAX = BNR
          movq      %r12,         0xA0(%rsp)
          movq      %r11,         0xA8(%rsp)
          movq      %r10,         0xB0(%rsp)
          movq      %rbp,         0xB8(%rsp)
          movq      %rsi,         0xC0(%rsp)
          movq      %rdi,         0xC8(%rsp)
          movq      %rbx,         0xD0(%rsp)
          movq      %r9,          0xD8(%rsp)
          movq      %r8,          0xE0(%rsp)
          movq      %rdx,         0xE8(%rsp)
          movq      %rcx,         0xF0(%rsp)
          movq      HI_PGM(%rax), %rbx                    # RBX = H_INST
          movq      %rax,         %r12                    # RSI = BNR
          movq      %rcx,         %rdi                    # RDI = H_EDIT
          andq      $0xFFFF,      %r8                     # R08 = ID
          cmpl      $0x0003,      %edx                    # WM_MOVE?
          je        L01
          cmpl      $0x0005,      %edx                    # WM_SIZE?
          je        L01
          cmpl      $0x0111,      %edx                    # WM_COMMAND?
          je        L02
          cmpl      $0x0002,      %edx                    # WM_DESTROY?
          je        L00
          cmpl      $0x0010,      %edx                    # WM_CLOSE?
          je        L07
          decl      %edx                                  # WM_CREATE?
          jne       DWP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_CREATE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl      $0x00,        FLSADD(%r12)            # disable file list add
          movl      $0x0111,      %edx                    # RDX = WM_COMMAND
          movl      $0x1012,      %r8d                    # R08 = ID_START
          xorq      %r9,          %r9                     # R09 = NULL
          call      _PostM
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_DESTROY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L00:xorl      %ecx,%ecx                             # RCX = NULL
          call      _Pquit
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_MOVE / WM_SIZE (store coord.)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L01:call      _WMsize
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L02:subq      $0x1010,      %r8
          js        DWP
          cmpq      $0x1A,        %r8
          ja        L05
          xorl      %eax,         %eax                    # RAX = 0
          movl      PGM_FL(%r12), %ebp                    # RBP = PGM_FL
          jmp       *jt0(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            lang 00 - 0F
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L05:subq      $0x1C,        %r8                     # language?
          js        DWP
          cmpq      $0x0F,        %r8                     # valid?
          ja        DWP
          movl      %r8d,         USRLNG(%r12)            # store USRLNG
          call      _MNUtxt
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            SecSys login
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L06:
          /*
          xorl      %ecx,         %ecx                    # RCX = SS_PRP
          xorl      %edx,         %edx                    # RDX = NULL
          xorl      %r8d,         %r8d                    # R08 = NULL
          call      _SecSy
          incl      %ecx                                  # SSF_CKM
          call      _SecSy
          movl      $0x03,        %ecx                    # SSF_RUN
          call      _SecSy
          incl      %ecx                                  # SSF_LGI
          call      _SecSy
          */
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            exit
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L07:/*
             finish pending jobs before final termination
          */
          call      _KillWin
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            start
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L08:movl      $0x1000,      %ebx                    # RBX = 1000
          leaq      EA__SP(%r12), %rcx                    # RCX = LD
          call      _LDreq
          testl     %eax,         %eax                    # error?
          jne       0f
          addq      $0x0100,      EA__SP(%r12)            # spin begins at 0x0100
          incl      %ebx                                  # RBX =1001
          leaq      EA_FLD(%r12), %rcx
          call      _LDreq
          testl     %eax,         %eax                    # error?
          jne       0f
          incl      %ebx                                  # RBX =1002
          leaq      EA_SRC(%r12), %rcx
          call      _LDreq
          pxor      %xmm0,        %xmm0
          testl     %eax,         %eax                    # error?
          jne       0f
          movdqa    %xmm0,        EA_WRK(%r12)            # clear LD WRK
          movdqa    %xmm0,        NR_WRK(%r12)
          movdqa    %xmm0,        EA_TGT(%r12)            #       LD TGT
          movdqa    %xmm0,        NR_TGT(%r12)
          jmp       XIZ
          .p2align  4,,15
        0:movl      %ebx,         %eax                    # RAX = 1000...1002
          call      _debug
          movq      %rdi,         %rcx                    # RCX = HWND
          jmp       L07
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            sel: source
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L09:leaq      _SelSrc(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10C2,      %edx                    # RDX = ID
          call      _DBox
          cmpl      $0x00,        PATH_X(%r12)
          je        XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            sel: field
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L10:leaq      _SelFld(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10C2,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            sel: drv mask
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L11:leaq      _DrvMsk(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10C1,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            mkd: create file
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L12:leaq      _MkFile(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10C3,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            mkd: create field
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L13:testl     $0x02,%ebp                            # source present?
          jne       0f
          leaq      _SelSrc(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10C2,      %edx                    # RDX = ID
          call      _DBox
          cmpl      $0x00,        PATH_X(%r12)
          je        XIZ
        0:leaq      _FldCr(%rip), %rcx                    # RCX = EA procedure
          movl      $0x10C6,      %edx                    # RDX = ID
          call      _DBox
        1:testb     $0x01,        PGM_F1(%r12)            # PGM_GOTOVIEW?
          je        XIZ
        2:leaq      _FldMg(%rip), %rcx                    # RCX = EA procedure
          movl      $0x10C7,      %edx                    # RDX = ID
          andb      $0xFE,        PGM_F1(%r12)            # reset PGM_GOTOVIEW
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            mkd: move
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L14:leaq      _MovEnt(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10C4,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            mkd: copy
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L15:leaq      _CpyFld(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10C5,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            mkd: field viewer
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L16:testl     $0x02,%ebp                            # source present?
          jne       3f
          leaq      _SelSrc(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10C2,      %edx                    # RDX = ID
          call      _DBox
          cmpl      $0x00,        PATH_X(%r12)
          je        XIZ
        3:testl     $0x04,        %ebp                    # source present?
          jne       2b
          leaq      _SelFld(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10C2,      %edx                    # RDX = ID
          call      _DBox
          cmpl      $0x00,        SL_FLD(%r12)
          je        XIZ
          jmp       2b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            lang: OLH
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L17:leaq      _stdOLH(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10C9,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            lang: topics
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L18:leaq      _stdTOP(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10CA,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            lang: sys menus
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L19:decl      MNU_SY(%r12)                          # MNU_SY = system
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            lang: user menus
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L20:movl      $0x00,        MNU_SY(%r12)            # MNU_SY = user
        0:leaq      _stdMNU(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10CB,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            lang: sys msgs
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L21:decl      MSG_SY(%r12)                          # MSG_SY = system
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            lang: user msgs
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L22:movl      $0x00,        MSG_SY(%r12)            # MSG_SY = user
        0:leaq      _stdMSG(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10CC,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            lang: names
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L24:leaq      _MLlang(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10CB,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            standard create
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L25:testb     $0x01,        PGM_FL(%r12)            # DatTools self?
          jne       XIZ
          leaq      _stdFLD(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10C8,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            std: spinbuttons
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L26:leaq      _stdSPN(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10CF,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            std: bitmaps
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L27:leaq      _stdBMP(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10CE,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            std: notebooks
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L28:leaq      _stdNBK(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10CD,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            std: entryfields
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L29:leaq      _stdEFD(%rip),%rcx                    # RCX = EA procedure
          movl      $0x10D0,      %edx                    # RDX = ID
          jmp       DBX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            std: ???
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L30:
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            help DatTools
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L32:movl      $0x01,        %ecx                    # help 01
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            help OLH
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L31:xorl      %ecx,         %ecx                    # help 00
        0:call      _Help
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            about
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L33:leaq      _about(%rip), %rcx                    # RCX = EA procedure
          movl      $0x10C0,      %edx                    # RDX = ID
          .p2align  4,,15
      DBX:call      _DBox
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ldFLD   load requested field
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   field number
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            The internal LD and FH structures are cleared.
            On load errors, MH_WRK and EA_WRK remain zero.
            Loading of DatTools' own fields increments the
            instance counter, it does not load another in-
            stance of the field. When the last instance is
            freed, all changes are written to the field as
            long as the changed flag was set by a function
            manipulating that field - the only way to UNDO
            changes is to terminate DatTools via Windoze's
            TaskManager. DatTools' own fields shouldn't be
            altered by users, anyway...
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _ldFLD
          .def      _ldFLD; .scl 2; .type 32; .endef
   _ldFLD:subq      $0xF8, %rsp
          movq      _BNR(%rip),   %rax                    # RAX = BNR
          movq      %r12,         0xA0(%rsp)
          movq      %r11,         0xA8(%rsp)
          movq      %r10,         0xB0(%rsp)
          movq      %rbp,         0xB8(%rsp)
          movq      %rsi,         0xC0(%rsp)
          movq      %rdi,         0xC8(%rsp)
          movq      %rbx,         0xD0(%rsp)
          movq      %r9,          0xD8(%rsp)
          movq      %r8,          0xE0(%rsp)
          movq      %rdx,         0xE8(%rsp)
          movq      %rcx,         0xF0(%rsp)
          movq      %rax,         %r12                    # RSI = BNR
          movl      %ecx,         %ebx                    # RBX = requested field
          movl      PGM_FL(%r12), %edi                    # RDI = PGM_FL
          leaq      EA_WRK(%r12), %r10                    # RBP = LD
          movq      MH_WRK(%r12), %rcx                    # RCX = MH_WRK
          movl      $0xFFFFFF1F,  %ebp                    # RBP = alias
          movl      %ebx,         %esi                    # RSI = requested field
          movq      $0x47,        %r8                     # R08 = external
          movq      $0x27,        %r9                     # R09 = default
          movl      $0x09,        %eax                    # RAX = ERR_LDT
          incl      %ebx                                  # LDT?
          je        XIT
          incl      %eax                                  # RAX = ERR_ZERO
          decl      %ebx                                  # zero?
          je        XIT
          testq     %rcx,         %rcx                    # anything loaded?
          je        0f
          call      _LDfre
          testl     %eax,         %eax                    # success?
          jne       XIT
          .p2align  4,,15
        0:testl     $0x01,        %edi                    # PGM_SRC_SELF?
          cmove     %ebp,         %ebx                    # n =>  use alias
          cmove     %r8,          %r9                     # n =>  external
          pxor      %xmm0,        %xmm0
          pxor      %xmm1,        %xmm1
          pxor      %xmm2,        %xmm2
          pxor      %xmm3,        %xmm3
          movdqa    %xmm0,        0x00(%r10)              # clear LD
          movdqa    %xmm1,        0x10(%r10)
          movdqa    %xmm2,        0x20(%r10)
          movdqa    %xmm3,        0x30(%r10)
          movl      %esi,         LDSIZE(%r10)            # set   true number
          movl      %ebx,         LDFNUM(%r10)            #       alias (number)
          movl      %r9d,         LDCNTL(%r10)            #       flags
          movl      %esi,         TR_WRK(%r12)            #       true number
          movq      %r10,         %rcx                    # RCX = LD
          call      _LDreq
          testl     %eax,         %eax
          je        XIT
          movq      %r11,         MSGADR(%r12)            # name
          movl      $0x01,        ERR_TY(%r12)            # system error
          movl      %eax,         %ecx                    # RCX = error
          call      _ErrMgr
          movl      %ecx,         %eax                    # RAX = error
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            svFLD   save current working field
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> -     nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ST's ErrorHandler is invoked if saving a field
            fails. In this case, you can save the field as
            Memory Dump stored in DatTools' source folder.
            DatTools' own system fields are -not- unloaded
            as long as their instance counter is not zero.
            This prevents unloading of fields required for
            the running program...
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _svFLD
          .def      _svFLD; .scl 2; .type 32; .endef
   _svFLD:subq      $0xF8,        %rsp
          movq      _BNR(%rip),   %rax                    # RAX = BNR
          movq      %r12,         0xA0(%rsp)
          movq      %r11,         0xA8(%rsp)
          movq      %r10,         0xB0(%rsp)
          movq      %rbp,         0xB8(%rsp)
          movq      %rsi,         0xC0(%rsp)
          movq      %rdi,         0xC8(%rsp)
          movq      %rbx,         0xD0(%rsp)
          movq      %r9,          0xD8(%rsp)
          movq      %r8,          0xE0(%rsp)
          movq      %rdx,         0xE8(%rsp)
          movq      %rcx,         0xF0(%rsp)
          movq      MH_WRK(%rax), %rcx                    # RCX = MH field
          movq      EA_WRK(%rax), %r11                    # R11 = EA field
          movl      SZ_WRK(%rax), %edx                    # RDX = size
          movq      %rax,         %r12                    # R12 = BNR
          movl      M_H_FL(%rcx), %r8d                    # R08 = flags
          movl      M_H_IC(%rcx), %ebx                    # RBX = instances
          testq     %rcx,         %rcx                    # anything loaded?
          je        XIZ
          call      _LDfre
          testl     %eax,         %eax                    # error?
          jne       0f
          pxor      %xmm0,        %xmm0                   # XM0 = 0
          xorl      %eax,         %eax                    # RAX = 0
          movdqa    %xmm0,        EA_WRK(%r12)            # clear LD.MemEA + LD.MemSz
          movq      %rax,         MH_WRK(%r12)            #       LD.MemHd
          jmp       XIT
          .p2align  4,,15
        0:cmpl      $0x2B,        %eax                    # write error?
          jb        XIT
          movq      %rcx,         %r10
          movq      %r9,          MSGADR(%r12)            # EA name
          movl      $0x01,        ERR_TY(%r12)            # system error
          movl      %eax,         %ecx                    # RCX = error
          call      _ErrMgr
          cmpl      $0x01,        %eax                    # save as MemDump?
          jne       1f
          movq      %r11,         %rcx                    # RCX = EA
          call      _MemDmp
        1:xorl      %eax,         %eax
          testq     $0x40,        %r8                     # external?
          cmovne    %eax,         %ebx                    # => reset instances
          andl      $LDDISC,      M_H_FL(%r10)            # force unload
          movl      %eax,         M_H_IC(%r10)            # clear instances if external
          movq      %r10,         %rcx                    # RCX = MH
          call      _LDfre
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            default window procedure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      DWP:movq      0xA0(%rsp),   %r12
          movq      0xA8(%rsp),   %r11
          movq      0xB0(%rsp),   %r10
          movq      0xB8(%rsp),   %rbp
          movq      0xC0(%rsp),   %rsi
          movq      0xC8(%rsp),   %rdi
          movq      0xD0(%rsp),   %rbx
          movq      0xD8(%rsp),   %r9
          movq      0xE0(%rsp),   %r8
          movq      0xE8(%rsp),   %rdx
          movq      0xF0(%rsp),   %rcx
          addq      $0xF8,        %rsp
          jmp       _DefWP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      XIZ:xorq      %rax,         %rax
      XIT:movq      0xA0(%rsp),   %r12
          movq      0xA8(%rsp),   %r11
          movq      0xB0(%rsp),   %r10
          movq      0xB8(%rsp),   %rbp
          movq      0xC0(%rsp),   %rsi
          movq      0xC8(%rsp),   %rdi
          movq      0xD0(%rsp),   %rbx
          movq      0xD8(%rsp),   %r9
          movq      0xE0(%rsp),   %r8
          movq      0xE8(%rsp),   %rdx
          movq      0xF0(%rsp),   %rcx
          addq      $0xF8,        %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BMM,          8, 3
          .comm    _OBF,          8, 3
          .comm    _BBF,          8, 3
          .comm    _TST,          8, 3
          .comm    _BNR,          8, 3
          .comm    _DVAR,         8, 3
          .comm    _QVAR,         8, 3
          .comm    _BST,          8, 3
          .comm    _MHSTR,        8, 3
          .comm    _LDR_AVAIL,    8, 3
          .comm    _OLH_MODE,     8, 3
