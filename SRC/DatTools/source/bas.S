          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                          C o m m o n   D i a l o g s    (C) ST-Open 1979 - 2012
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
          .section .rdata, "dr"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            jump table
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,0x00,15
     LC00:.ascii   "ST8\\SRC\\"
          .quad    0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _about
          .def     _about; .scl 2; .type 32; .endef
   _about:movq     $abtbx,           %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _MkFile
          .def     _MkFile; .scl 2; .type 32; .endef
  _MkFile:movq     $mkfile,          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _MovEnt
          .def     _MovEnt; .scl 2; .type 32; .endef
  _MovEnt:movq     $movent,          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _CpyFld
          .def     _CpyFld; .scl 2; .type 32; .endef
  _CpyFld:movq     $cpyfld,          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _DrvMsk
          .def     _DrvMsk; .scl 2; .type 32; .endef
  _DrvMsk:movq     $drvmsk,          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SelSrc
          .def     _SelSrc; .scl 2; .type 32; .endef
  _SelSrc:movq     $selsrc,          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SelFld
          .def     _SelFld; .scl 2; .type 32; .endef
  _SelFld:movq     $selfld,          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DISTRIBUTOR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0xF8,            %rsp
          nop
          nop
          movq     %r12,             0xA0(%rsp)
          movq     %rbp,             0xA8(%rsp)
          movq     %rsi,             0xB0(%rsp)
          movq     %rdi,             0xB8(%rsp)
          movq     %rbx,             0xC0(%rsp)
          movq     %r11,             0xC8(%rsp)
          movq     %r10,             0xD0(%rsp)
          movq     %r9,              0xD8(%rsp)
          movq     %r8,              0xE0(%rsp)
          movq     %rdx,             0xE8(%rsp)
          movq     %rcx,             0xF0(%rsp)
          movq     _BNR(%rip),       %rsi                # RSI = BNR
          movl     %r8d,             %ebx                # RBX = WPARAM
          movq     %rcx,             %rdi                # RDI = HWND
          andq     $0xFFFF,          %r8                 # R08 = ID
          shrl     $0x10,            %ebx                # RBX = MSG
          jmp      *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            about    about box
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   W0[WPARAM] (ID)
               R09   LPARAM
               RBX   W1[WPARAM] (cmd)
               RDI   HWND
               RSI   BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    abtbx:subl     $0x0111,          %edx                # WM_COMMAND?
          je       KNX
          incl     %edx                                  # WM_INITDIALOG?
          jne      XIZ
          movl     $0xC0,            %edx                # RDX = title
          movq     $0xC1,            %r8                 # R08 = 1st
          movq     $0xC4,            %r9                 # R09 = last
          jmp      CTW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MkFile   create empty file
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   W0[WPARAM] (ID)
               R09   LPARAM
               RBX   W1[WPARAM] (cmd)
               RDI   HWND
               RSI   BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   mkfile:subl     $0x0111,          %edx                # WM_COMMAND?
          je       0f
          incl     %edx                                  # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_DLGINIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0xC8,            %edx                # RDX = title
          movq     $0xC9,            %r8                 # R08 = 1st
          movq     $0xCD,            %r9                 # R09 = last
          jmp      CTW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        0:subq     $0x1280,          %r8                 # [Abort]?
          js       XIZ
          je       2f
          decq     %r8                                   # [Create]?
          je       0f
          decq     %r8                                   # [Help]?
          je       3f
          cmpq     $0x02,            %r8                 # size?
          jne      XIZ
          jmp      4f
          /*
            ~~~~~~~~~~~~~~~~~~
            create
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:movl     CREFSZ(%rsi),     %r10d               # R10 = size file
          movl     $0x1283,          %edx                # RDX = ID
          leaq     BUFFER(%rsi),     %r8                 # R08 = EA buffer
          movq     $0x0200,          %r9                 # R09 =      buffer
          call     _WnQDT
          movl     $0x08,            %eax                # RAX = ERR_PAR_INVALID
          cmpb     $0x00,            0x00(%r8)           # empty string?
          je       1f
          testq    %r10,             %r10                # size zero?
          je       1f
          movq     %r8,              %rcx                # RCX = EA name
          movl     %r10d,            %edx                # RDX = size
          call     _Fcreate
          testl    %eax,             %eax                # error?
          je       2f
        1:movq     %r8,              MSGADR(%rsi)        # EA name
          movq     %r10,             MSG_V2(%rsi)        # size
          movl     $0x01,            ERR_TY(%rsi)        # system
          movl     %eax,             %ecx                # RCX = error
          call     _ErrMgr
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~
            exit (abort)
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        2:call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        3:movl     $0x0A,            %ecx                # Help 0A
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~
            size
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        4:cmpl     $0x0200,          %ebx                # EN_KILLFOCUS?
          jne      XIZ
          movl     $0x1284,          %edx                # RDX = ID
          leaq     BUFFER(%rsi),     %r8                 # R08 = EA buffer
          movq     $0x10,            %r9                 # R09 =      buffer
          call     _WnQDT
          movq     %r8,              %rcx                # RCX = EA buffer
          call     _dec2D
          addl     $0x01FF,          %eax
          movq     %r8,              %rdx                # RDX = EA buffer
          andl     $0xFFFFFE00,      %eax
          movq     $0x0A,            %r8
          movl     %eax,             %ecx
          movl     %eax,             CREFSZ(%rsi)        # store size
          call     _D2dec
          movq     %rdx,             %r8                 # R08 = EA
          movq     %rdi,             %rcx                # RCX = HWND
          movl     $0x1284,          %edx                # RDX = ID
          call     _WnSDT
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MovEnt   move entries
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   W0[WPARAM] (ID)
               R09   LPARAM
               RBX   W1[WPARAM] (cmd)
               RDI   HWND
               RSI   BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   movent:subl     $0x0111,          %edx                # WM_COMMAND?
          je       0f
          incl     %edx                                  # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_DLGINIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0xF0,            %edx                # RDX = title
          movq     $0xF1,            %r8                 # R08 = 1st
          movq     $0xFC,            %r9                 # R09 = last
          jmp      CTW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CpyFld   copy field content
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   W0[WPARAM] (ID)
               R09   LPARAM
               RBX   W1[WPARAM] (cmd)
               RDI   HWND
               RSI   BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   cpyfld:subl     $0x0111,          %edx                # WM_COMMAND?
          je       0f
          incl     %edx                                  # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_DLGINIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0x0100,          %edx                # RDX = title
          movq     $0x0101,          %r8                 # R08 = 1st
          movq     $0x0107,          %r9                 # R09 = last
          jmp      CTW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DrvMsk   get drive mask
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   W0[WPARAM] (ID)
               R09   LPARAM
               RBX   W1[WPARAM] (cmd)
               RDI   HWND
               RSI   BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   drvmsk:subl     $0x0111,          %edx                # WM_COMMAND?
          je       0f
          incl     %edx                                  # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_DLGINIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     DRVMSK(%rsi),     %eax                # RAX = old map
          xorl     %ebx,             %ebx                # RBX = 0
          jmp      6f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:movl     $0x0B,            %eax                # RAX = help 11
          movl     $0x01,            %ebx                # RBX = A:
          movl     TMPMAP(%rsi),     %eax                # RAX = temp map
          subq     $0x1220,          %r8                 # R08 = index
          jb       XIZ
          cmpq     $0x19,            %r8                 # drive CBox?
          jbe      1f
          subq     $0x1A,            %r8                 # 122A all?
          je       2f
          decq     %r8                                   # 122B none?
          je       3f
          decq     %r8                                   # 122C reload?
          je       4f
          decq     %r8                                   # 122D Abort?
          je       KNX
          decq     %r8                                   # 122E Store?
          je       5f
          decq     %r8                                   # Help?
          je       HLP
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~
            toggled drive
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        1:movb     %r8b,             %cl                 # RCX = bit
          shll     %cl,              %ebx                # RBX = mask
          xorl     %ebx,             %eax                # toggle drive
          movq     %rdi,             %rcx                # RCX = HWND
          jmp      6f
          /*
            ~~~~~~~~~~~~~~~~~~
            select all
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        2:movl     $0x03FFFFFF,      %eax                # select all
          jmp      6f
          /*
            ~~~~~~~~~~~~~~~~~~
            select none
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        3:xorl     %eax,             %eax                # deselect all
          jmp      6f
          /*
            ~~~~~~~~~~~~~~~~~~
            reload
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        4:movl     DRVMSK(%rsi),     %eax                # RAX = old map
          jmp      6f
          /*
            ~~~~~~~~~~~~~~~~~~
            store
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        5:movl     %eax,             DRVMSK(%rsi)        # store
          jmp      KNX
          /*
            ~~~~~~~~~~~~~~~~~~
            set CBoxes
            ~~~~~~~~~~~~~~~~~~
          */
        6:movl     %eax,             TMPMAP(%rsi)        # store changes
          movl     %eax,             %edi                # RDI = mask
          movl     $0x1220,          %edx                # RDX = ID
          xorq     %r8,              %r8                 # R08 = 0
          movq     $0x1A,            %r9                 # R09 = cnt
        7:shrl     %edi                                  # RDI = set flag
          setc     %r8b                                  # R08 = flag
          call     _SCkB
          incl     %edx                                  # RDX = ID++
          decq     %r9                                   # R09 = cnt--
          jne      7b
          testl    %ebx,             %ebx                # WM_COMMAND?
          jne      XIZ
          movl     $0xD0,            %edx                # RDX = title
          movq     $0xD1,            %r8                 # R08 = 1st
          movq     $0xD7,            %r9                 # R09 = last
          jmp      CTW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SelSrc   select source folder
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   W0[WPARAM] (ID)
               R09   LPARAM
               RBX   W1[WPARAM] (cmd)
               RDI   HWND
               RSI   BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   selsrc:subl     $0x0111,          %edx                # WM_COMMAND?
          je       1f
          incl     %edx                                  # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_DLGINIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0xE0,            %edx                # RDX = title
          movq     $0xE2,            %r8                 # R08 = 1st
          movq     $0xE6,            %r9                 # R09 = last
          call     _DLGtxt
          andb     $0xF8,            PGM_FL(%rsi)        # reset parameters
          xorl     %eax,             %eax
          pxor     %xmm0,            %xmm0
          pxor     %xmm1,            %xmm1
          pxor     %xmm2,            %xmm2
          pxor     %xmm3,            %xmm3
          leaq     BUFFER(%rsi),     %r11
          leaq     PATH_X(%rsi),     %r10
          movl     $0x09,            %ebx
          leaq     LC00(%rip),       %rcx                # RCX = pattern
          movq     MH_SRC(%rsi),     %rdx                # RDX = MH
          xorq     %r8,              %r8                 # R08 = sub 00
          movl     DRVMSK(%rsi),     %r9d                # R09 = drive mask
          movl     $0x0100,          0x20(%rsp)          # P_5 = max count
          movdqa   %xmm0,            SL_FLD(%rsi)        # clear old params
          movdqa   %xmm1,            CT_FLD(%rsi)
          .p2align 4,,15
        0:movdqa   %xmm0,            0x00(%r10)          # clear PATH_X
          movdqa   %xmm1,            0x10(%r10)
          movdqa   %xmm2,            0x20(%r10)
          movdqa   %xmm3,            0x30(%r10)
          addq     $0x40,            %r10
          decl     %ebx
          jne      0b
          call     _DsrchD
          movq     %rdx,             %rcx                # RCX = MemHandle
          movl     %eax,             %ebx                # RBX = count
          incq     %r8                                   # R08 = TRUE
          movl     %eax,             %edx                # RDX = count
          call     _PPdir
          movq     %r11,             0x20(%rsp)          # P_5 = EA PATH_X
          movq     $0x05,            0x28(%rsp)          # P_6 = 5
          movl     %ebx,             %r12d               # R12 = loop_cnt
          xorl     %edx,             %edx                # RDX = entry
          xorq     %r8,              %r8                 # R08 = sub00
        0:movq     $0x01,            %r9                 # R09 = FDA_READ
          call     _FDacc
          incq     %r8                                   # R08 = sub01
          call     _FDacc
          movl     $0x61746164,      0x00(%r11, %rax)    # append 'data\'
          movl     $0x0000005C,      0x04(%r11, %rax)
          movq     $0x0C,            %r9                 # R09 = FDA_ADD
          call     _FDacc
          decq     %r8
          movq     $0x02,            %r9                 # R09 = FDA_WRITE
          call     _FDacc
          incl     %edx
          decq     %r12
          jne      0b
          movq     %rcx,             %r10                # R10 = MH
          xorl     %edx,             %edx                # RDX = 0
          xorq     %r11,             %r11                # R11 = 0
          movl     %ebx,             CT_SRC(%rsi)        # store count
          testl    %ebx,             %ebx                # nothing found?
          je       L99
          jmp      L98
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        1:movl     $0x06,            %eax                # RAX = help 6
          subq     $0x1261,          %r8                 # abort?
          je       KNX
          decq     %r8                                   # select?
          je       2f
          decq     %r8                                   # extern?
          je       4f
          decq     %r8                                   # help?
          je       HLP
          decq     %r8                                   # listbox?
          jne      XIZ
          cmpl     $0x02,            %ebx                # LBN_DOUBLECLICK?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~
            select
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        2:movq     MH_SRC(%rsi),     %rbx                # RBX = MH_SRC
          leaq     PATH_X(%rsi),     %r12                # R12 = PATH_X
          leaq     BUFFER(%rsi),     %r10                # R12 = BUFFER
          movq     %r8,              0x20(%rsp)          # P_5 = NULL
          movl     $0x1265,          %edx                # RDX = ID
          movq     $0x0188,          %r8                 # R08 = LB_GETCURSEL
          xorq     %r9,              %r9                 # R09 = NULL
          call     _SnDIM
          testl    %eax,             %eax
          js       XIZ
          .p2align 4,,15
        3:movq     %r12,             0x20(%rsp)          # P_5 = PATH_X
          orb      $0x02,            PGM_FL(%rsi)        # SRC_PRESENT
          movq     %rbx,             %rcx                # RCX = MH_SRC
          movl     %eax,             %edx                # RDX = entry
          xorq     %r8,              %r8                 # R08 = sub00
          movq     $0x01,            %r9                 # R09 = FDA_READ
          call     _FDacc
          incq     %r8                                   # R08 = sub01
          call     _FDacc
          addl     $PATH_X,          %eax                # RAX = IP
          movl     %eax,             PX__IP(%rsi)        # store IP
          cmpl     $0x54746144,      0x0B(%r12)          # 'DatTools'?
          jne      cpl
          cmpl     $0x736C6F6F,      0x0F(%r12)
          jne      cpl
          orl      $0x01,            PGM_FL(%rsi)        # set PGM_SRC_SELF
          movq     _MHSTR(%rip),     %r11                # R11 = MH src
          jmp      cp0
          /*
            ~~~~~~~~~~~~~~~~~~
            load language set
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      cpl:movl     $0xFFFFFFFC,      %ecx                # str.dat
          call     _ldFLD
          movq     MH_WRK(%rsi),     %r11                # R11 = MH src
      cp0:movq     %r10,             0x20(%rsp)          # P_5 = EA buffer
          movq     _MHSTR(%rip),     %r12                # R12 = MH tgt
          movl     $0x20,            %edx                # RDX = entry src
          movl     $0x0F,            %ebx                # RBX = loop_cnt
          xorq     %r8,              %r8                 # R08 = sub 00
          movq     $0x01,            %r9                 # R09 = FDA_READ
          .p2align 4,,15
        0:movq     %r11,             %rcx                # RCX = MH src
          call     _FDacc
          movq     %r12,             %rcx                # RCX = MH tgt
          addl     $0x10,            %edx                # RDX = entry tgt
          incq     %r9                                   # R09 = FDA_WRITE
          call     _FDacc
          subl     $0x0F,            %edx                # RDX = next src
          decq     %r9                                   # R09 = FDA_READ
          decl     %ebx
          jns      0b
          movq     %rdi,             %rcx                # RCX = HWND
          testl    $0x01,            PGM_FL(%rsi)        # DatTools self?
          jne      KNX
          call     _svFLD
          jmp      KNX
          /*
            ~~~~~~~~~~~~~~~~~~
            extern
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        4:movq     _BST(%rip),       %r10                # R10 = BST
          movq     _MHSTR(%RIP),     %r11                # R11 = MHSTR
          movl     0x0240(%r10),     %ebx                # RBX = offset external path
          movl     0x0100(%r10),     %edx                # RDX =        *.*
          addq     %r10,             %rbx                # RBX = EA external
          addq     %r10,             %rdx                # RDX =    filter
          xorl     %ecx,             %ecx                # RCX = FileOpen
          xorq     %r8,              %r8                 # R08 = NULL
          xorq     %r9,              %r9                 # R09 = no title
          cmpq     %r10,             %rbx                # empty?
          cmovne   %rbx,             %r8                 # n => last external
          call     _FileOpen
          movl     %eax,             %ebx
          movl     0x0104(%r10),     %ecx                # RCX = offset -> UNDO DIRECTORY CHANGE...
          addq     %r10,             %rcx                # RCX = EA
          call     _ChgDir
          leaq     BUFFER(%rsi),     %r10                # R10 = EA buffer
          testl    %ebx,             %ebx
          je       5f
          movq     MH_SRC(%rsi),     %r12                # R12 = MH_SRC
          movq     %r10,             0x20(%rsp)          # P_5 = EA buffer
          movq     %r11,             %rcx                # RCX = MHSTR
          movl     $0x10,            %edx                # RDX = STR_FLS_SELECT
          xorq     %r8,              %r8                 # R08 = sub00
          movq     $0x01,            %r9                 # R09 = FDA_READ
          call     _FDacc
          movq     %r12,             %rcx                # RCX = EA buffer
          call     _GetPath
          movl     CT_SRC(%rsi),     %edx                # RDX = CT_SRC
          cmpl     $0x61746164,      -5(%rcx, %rax)      # data?
          jne      5f
          movl     %eax,             0x28(%rsp)          # P_6 = size
          movq     %r12,             %rcx                # RCX = MH_SRC
          xorq     %r8,              %r8                 # R08 = sub00
          movq     $0x02,            %r9                 # R09 = FDA_WRITE
          call     _FDacc
          incl     CT_SRC(%rsi)                          # CT_SRC++
          incq     %r8                                   # R08 = sub01
          call     _FDacc
          leaq     PATH_X(%rsi),     %r12                # R12 = EA string
          movl     %edx,             %eax                # RAX = selection
          jmp      3b
          .p2align 4,,15
        5:movl     $0x07,            %ecx                # RCX = ERR_EXT_SELECT
          call     _ErrMgr
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SelFld   select field
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   W0[WPARAM] (ID)
               R09   LPARAM
               RBX   W1[WPARAM] (cmd)
               RDI   HWND
               RSI   BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   selfld:subl     $0x0111,          %edx                # WM_COMMAND?
          je       csf
          incl     %edx                                  # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_DLGINIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     MH_FLD(%rsi),     %r10                # R10 = MH
          movl     SELFLD(%rsi),     %r12d               # R12 = index (last selected)
          movl     CT_FLD(%rsi),     %ebx                # RBX = count
          xorq     %r11,             %r11                # R11 = 0
          movl     $0xE1,            %edx                # RDX = title
          movq     $0xE2,            %r8                 # R08 = 1st
          movq     $0xE6,            %r9                 # R09 = last
          call     _DLGtxt
          movl     $0x1263,          %edx                # RDX = ID extern
          xorq     %r8,              %r8                 # R08 = SW_HIDE
          call     _CtlSh
          testl    $0x04,            PGM_FL(%rsi)        # field selected?
          jne      L98
          testl    %ebx,             %ebx                # count = 0?
          jne      L98
          andb     $0xFB,            PGM_FL(%rsi)        # reset parameters
          movq     $0x00,            SL_FLD(%rsi)
          movl     $0x00,            SL_ENT(%rsi)
          leaq     PATH_X(%rsi),     %rcx                # RCX = PATH_X
          movq     %r10,             %rdx                # RDX = MH
          xorq     %r8,              %r8                 # R08 = sub00
          xorq     %r9,              %r9                 # R09 = 1st
          movl     $0x0800,          0x20(%rsp)          # P_5 = max count
          call     _FsrchP
          pxor     %xmm0,            %xmm0               # XM0 = 0
          leaq     XP_FHS(%rsi),     %r12                # R12 = FH
          leaq     XP_MEM(%rsi),     %rbp                # RBP = EA head
          movl     %eax,             %ebx                # RBX = found
          movdqa   %xmm0,            0x00(%r12)          # clear FH.WinFH + FH.Fsize
          movq     %rbp,             0x10(%r12)          # set   FH.Mbase
          movdqu   %xmm0,            0x18(%r12)          # clear FH.Moffs + FH.Foffs
          testl    %ebx,             %ebx                # nothing found?
          je       2f
        0:movq     %r10,             %rcx                # RCX = MH
          movl     %r11d,            %edx                # RDX = entry
          xorq     %r8,              %r8                 # R08 = sub00
          movq     $0x07,            %r9                 # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %r12,             %rcx                # RCX = FH
          xorl     %edx,             %edx                # RDX = 0
          movq     $0x02,            %r8                 # R08 = open if exist
          movq     %rax,             %r9                 # R09 = EA name
          call     _Fopen
          testl    %eax,             %eax                # error?
          jne      3f
          movl     $0x0100,          %edx                # RDX = size
          call     _Fread
          movl     %eax,             %r9d                # R09 = error
          call     _Fclose
          testq    %r9,              %r9                 # read error?
          jne      3f
          movl     0x00(%rbp),       %eax                # RAX = leading DD
          movl     0x2C(%rbp),       %r8d                # R08 = field number
          movl     0x34(%rbp),       %r9d                # R09 =       size
          leaq     0xE0(%rbp),       %rdx                # RDX = EA field name
          testl    %eax,             %eax                # leading DD = 0?
          jne      3f
          testq    %r8,              %r8                 # number valid?
          je       3f
          cmpl     %r9d,             0x08(%r12)          # size valid?
          jne      3f
          movq     %rdx,             0x20(%rsp)          # P_5 = EA name
          movq     %r8,              0x28(%rsp)          # P_6 = field number
          movq     %r10,             %rcx                # RCX = MH
          movl     %r11d,            %edx                # RDX = entry
          xorq     %r8,              %r8                 # R08 = sub00
          movq     $0x02,            %r9                 # R09 = FDA_WRITE
          call     _FDacc
          incq     %r8                                   # R08 = sub01
          call     _FDacc
          orb      $0x04,            PGM_FL(%rsi)        # field present
          incq     %r11                                  # entry++
          .p2align 4,,15
        1:decl     %ebx                                  # found--
          jne      0b
          movl     %r11d,            %ebx                # RBX = count
          movl     %r11d,            CT_FLD(%rsi)        # store count
          xorq     %r11,             %r11                # R11 = 0
          xorq     %r12,             %r12                # R12 = 0
          testl    %ebx,             %ebx                # zero?
          jne      L98
          .p2align 4,,15
        2:movl     $0x21,            %ecx                # ERR_NO_FIELDS
          call     _ErrMgr
          jmp      KNX
          .p2align 4,,15
        3:movq     %r10,             %rcx                # RCX = MH
          movl     %r11d,            %edx                # RDX = entry
          xorq     %r8,              %r8                 # R08 = sub00
          call     _SftDn
          incq     %r8                                   # R08 = sub01
          call     _SftDn
          jmp      1b
          .p2align 4,,15
      L98:movq     %r10,             %rcx                # RCX = MH
          movl     %r11d,            %edx                # RDX = entry
          xorq     %r8,              %r8                 # R08 = sub00
          movq     $0x07,            %r9                 # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rax,             0x20(%rsp)          # P_5 = EA string
          movq     %rdi,             %rcx                # RCX = HWND
          movl     $0x1265,          %edx                # RDX = ID
          movq     $0x0180,          %r8                 # R08 = LB_ADDSTRING
          xorq     %r9,              %r9                 # R09 = NULL
          call     _SnDIM
          incq     %r11                                  # R11 = next entry
          decl     %ebx                                  # RBX = count--
          jne      L98
          movq     %r9,              0x20(%rsp)          # P_5 = NULL
          movq     $0x0186,          %r8                 # R08 = LB_SETCURSEL
          movq     %r12,             %r9                 # R09 = NULL
          call     _SnDIM
          jmp      L99
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      csf:movl     $0x07,            %eax                # RAX = help 7
          subq     $0x1261,          %r8                 # abort?
          je       KNX
          decq     %r8                                   # select?
          je       2f
          subq     $0x02,            %r8                 # help?
          je       HLP
          decq     %r8                                   # listbox?
          jne      XIZ
          cmpl     $0x02,            %ebx                # LBN_DOUBLECLICK?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~
            select
            ~~~~~~~~~~~~~~~~~~
          */
        2:movq     MH_FLD(%rsi),     %rbx                # RBX = MH_FLD
          xorl     %eax,             %eax                # RAX = 0
          movl     $0x1265,          %edx                # RDX = ID
          movq     $0x0188,          %r8                 # R08 = LB_GETCURSEL
          xorq     %r9,              %r9                 # R09 = NULL
          movq     %rax,             0x20(%rsp)          # P_5 = NULL
          call     _SnDIM
          testl    %eax,             %eax
          js       XIZ
          movl     %eax,             SELFLD(%rsi)        # store index
          movq     %rbx,             %rcx                # RCX = MH_FLD
          movl     %eax,             %edx                # RDX = entry
          movq     $0x01,            %r8                 # R08 = sub00
          movq     $0x01,            %r9                 # R09 = FDA_READ
          call     _FDacc
          movl     %eax,             SL_FLD(%rsi)        # store field number
          jmp      KNX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            center dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      CTW:call     _DLGtxt
      L99:call     _CtrWn
          movl     $0x01,            %eax                # RAX = processed
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            kill dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      KNX:movq     %rdi,             %rcx
          call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      HLP:movl     %eax,             %ecx                # RCX = help number
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorq     %rax,             %rax
      XIT:movq     0xA0(%rsp),       %r12
          movq     0xA8(%rsp),       %rbp
          movq     0xB0(%rsp),       %rsi
          movq     0xB8(%rsp),       %rdi
          movq     0xC0(%rsp),       %rbx
          movq     0xC8(%rsp),       %r11
          movq     0xD0(%rsp),       %r10
          movq     0xD8(%rsp),       %r9
          movq     0xE0(%rsp),       %r8
          movq     0xE8(%rsp),       %rdx
          movq     0xF0(%rsp),       %rcx
          addq     $0xF8,            %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,             8, 3
          .comm    _MHSTR,           8, 3
