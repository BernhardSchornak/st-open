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
            strings
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
     LC00:.ascii    "*.*"
          .byte     0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            jump tables
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4, 0x00,15
      jt0:.quad     L01                                  # 1181 LBox
          .quad     L02                                  # 1182 PBtn abort
          .quad     L03                                  # 1183      select
          .quad     L04                                  # 1184      fileopen
          .quad     L05                                  # 1185      help
      jt1:.quad     L11                                  # 1181 LBox
          .quad     L12                                  # 1182 PBtn abort
          .quad     L13                                  # 1183      select
          .quad     XIZ                                  # 1184      fileopen
          .quad     L14                                  # 1185      help
      jt2:.quad     L21                                  # 1181 LBox
          .quad     L22                                  # 1182 PBtn abort
          .quad     L23                                  # 1183      select
          .quad     XIZ                                  # 1184      fileopen
          .quad     L24                                  # 1185      help
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            about    about box
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl    _about
          .def      _about; .scl 2; .type 32; .endef
   _about:subq      $0xF8,               %rsp
          xorl      %eax,                %eax             # RAX = 0
          movq      %r9,                 0xD8(%rsp)
          movq      %r8,                 0xE0(%rsp)
          movq      %rdx,                0xE8(%rsp)
          movq      %rcx,                0xF0(%rsp)
          subl      $0x0111,             %edx             # WM_COMMAND?
          je        0f
          incl      %edx                                  # WM_INITDIALOG?
          jne       XT4
          movl      $0x40,               %edx             # RDX = entry dlg
          movq      $0x41,               %r8              # R08 =       first
          movq      $0x43,               %r9              # R09 =       last
          call      _DLGtxt
          call      _CtrWn
          movl      $0x01,               %eax
          jmp       XT4
          .p2align  4,,15
        0:call      _KillDlg
          jmp       XT4
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            selsrc   source selection
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _selsrc
          .def      _selsrc; .scl 2; .type 32; .endef
  _selsrc:subq      $0xF8,               %rsp
          movq      _BNR(%rip),          %rax
          movq      %r15,                0xA0(%rsp)
          movq      %r14,                0xA8(%rsp)
          movq      %r13,                0xB0(%rsp)
          movq      %r12,                0xB8(%rsp)
          movq      %rsi,                0xC0(%rsp)
          movq      %rdi,                0xC8(%rsp)
          movq      %rbx,                0xD0(%rsp)
          movq      %r9,                 0xD8(%rsp)
          movq      %r8,                 0xE0(%rsp)
          movq      %rdx,                0xE8(%rsp)
          movq      %rcx,                0xF0(%rsp)
          movl      SRC_CT(%rax),        %r12d           # R12 = src count
          movq      MH_SCF(%rax),        %r13            # R13 = MH sources
          movl      %r8d,                %ebx            # RBX = WPARAM
          movq      %rax,                %r15            # R15 = BNR
          movq      %rcx,                %r14            # R14 = HWND
          andq      $0xFFFF,             %r8             # R08 = W0[WPARAM]
          shrl      $0x10,               %ebx            # RBX = W1[WPARAM]
          subl      $0x0111,             %edx            # WM_COMMAND?
          je        L00
          incl      %edx                                 # WM_INITDIALOG?
          jne       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl      %r12d,               %ebx            # RBX = entries
          movl      SRC_SL(%r15),        %r9d            # R09 = last selection
          testq     %r12,                %r12            # sources available?
          jne       0f
          movl      $0x1183,             %edx            # RDX = ID select
          xorq      %r8,                 %r8             # R08 = FALSE
          call      _CtlEn
          jmp       1f
          .p2align  4,,15
        0:shlq      $0x20,               %rbx            # RBX = W2[par]
          shlq      $0x30,               %r9             # R09 = W3[par]
          movl      $0x1181,             %edx            # RDX = ID LBox
          movq      %r13,                %r8             # R08 = MH
          addq      %rbx,                %r9             # R09 = [sel][cnt][sub][ent]
          call      _LBfill
        1:movl      $0x70,               %edx            # RDX = entry dlg
          movq      $0x71,               %r8             # R08 =       first
          movq      $0x75,               %r9             # R09 =       last
          call      _DLGtxt
          call      _CtrWn
          movl      $0x01,               %eax
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L00:subq      $0x1181,             %r8             # below?
          js        XIZ
          cmpq      $0x04,               %r8             # above?
          ja        XIZ
          jmp       *jt0(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            LBox
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L01:cmpl      $0x02,               %ebx            # LBN_DOUBLECLICK?
          jne       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            select
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L03:movl      $0x1181,             %edx            # RDX = ID
          movq      $0x0188,             %r8             # R08 = LB_GETCURSEL
          xorq      %r9,                 %r9             # R09 = NULL
          movq      %rax,                0x20(%rsp)      # P_5 = NULL
          call      _SnDIM
          testl     %eax,                %eax
          js        XIZ
          movl      %eax,                SRC_SL(%r15)    # store selection
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            abort
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L02:call      _KillDlg
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            add folder
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L04:movq      _MHSTR(%rip),        %rdi            # RDI = MH BST
          leaq      BUFFER(%r15),        %rbx            # RBX = EA buffer
          xorl      %ecx,                %ecx            # RCX = 0 (FileOpen)
          leaq      LC00(%rip),          %rdx            # RDX = EA filter
          xorq      %r8,                 %r8             # R08 = standard directory
          xorq      %r9,                 %r9             # R09 =          title
          movq      0x00(%r13),          %rsi            # RSI = EA sources
          call      _FileOpen
          testl     %eax,                %eax            # error?
          jne       0f
          movq      %rbx,                0x20(%rsp)      # P_5 = EA buffer
          movq      %rdi,                %rcx            # RCX = MH BST
          movl      $0x10,               %edx            # RDX = STR_FLS_SELECT
          xorq      %r8,                 %r8             # R08 = subfield 0
          movq      $0x01,               %r9             # R09 = FDA_READ
          call      _FDacc
          leaq      0x0500(%rsi,%r12,4), %rsi            # RSI = EA size
          movq      %rbx,                %rcx            # RCX = EA buffer
          call      _GetPath
          call      _SLen
          movl      %eax,                0x00(%rsi)      # store size
          testl     %eax,                %eax            # empty string?
          je        0f
          incl      SRC_CT(%r15)                         # SRC_CT++
          movq      %r13,                %rcx            # RCX = MH sources
          movl      %r12d,               %edx            # RDX = next entry
          xorq      %r8,                 %r8             # R08 = subfield 0
          movq      $0x02,               %r9             # R09 = FDA_WRITE
          call      _FDacc
          .p2align  4,,15
        0:movq      0x00(%rdi),          %rsi            # RSI = EA BST
          movl      0x0104(%rsi),        %ecx            # RCX = offset
          addq      %rsi,                %rcx            # RCX = EA
          call      _ChgDir                              # UNDO DIRECTORY CHANGE...
          movq      %r14,                %rcx            # RCX = HWND
          jmp       L02
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L05:movl      $0x08,              %ecx             # Help 08
          call      _Help
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            selmdp   select memory dumps
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _selmdp
          .def      _selmdp; .scl 2; .type 32; .endef
  _selmdp:subq      $0xF8,               %rsp
          movq      _BNR(%rip),          %rax
          movq      %r15,                0xA0(%rsp)
          movq      %r14,                0xA8(%rsp)
          movq      %r13,                0xB0(%rsp)
          movq      %r12,                0xB8(%rsp)
          movq      %rsi,                0xC0(%rsp)
          movq      %rdi,                0xC8(%rsp)
          movq      %rbx,                0xD0(%rsp)
          movq      %r9,                 0xD8(%rsp)
          movq      %r8,                 0xE0(%rsp)
          movq      %rdx,                0xE8(%rsp)
          movq      %rcx,                0xF0(%rsp)
          movl      %r8d,                %ebx            # RBX = WPARAM
          movl      MD_CNT(%rax),        %r12d           # R12 = MD count
          movl      MD_SEL(%rax),        %edi            # RDI = last selection
          movq      MH_MDP(%rax),        %r13            # R13 = MH memdmp
          movq      %rcx,                %r14            # R14 = HWND
          movq      %rax,                %r15            # R15 = BNR
          andq      $0xFFFF,             %r8             # R08 = W0[WPARAM]
          shrl      $0x10,               %ebx            # RBX = W1[WPARAM]
          subl      $0x0111,             %edx            # WM_COMMAND?
          je        L10
          incl      %edx                                 # WM_INITDIALOG?
          jne       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          xorl      %eax,                %eax            # RAX = 0
          cmpl      %r12d,               %edi            # sel above?
          cmovae    %eax,                %edi            # => select 0
          movl      $0x1184,             %edx            # RDX = ID fileopen
          xorq      %r8,                 %r8             # R08 = FALSE
          movl      %edi,                %r9d            # R09 = sel
          call      _CtlSh
          shlq      $0x20,               %r12            # R12 = W2[par]
          shlq      $0x30,               %r9             # R09 = W3[par]
          movl      $0x1181,             %edx            # RDX = ID LBox
          movq      %r13,                %r8             # R08 = MH
          addq      %r12,                %r9             # R09 = [sel][cnt][sub][ent]
          call      _LBfill
          movl      $0x78,               %edx            # RDX = entry dlg
          movq      $0x79,               %r8             # R08 =       first
          movq      $0x7C,               %r9             # R09 =       last
          call      _DLGtxt
          call      _CtrWn
          movl      $0x01,               %eax
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L10:subq      $0x1181,             %r8             # below?
          js        XIZ
          cmpq      $0x04,               %r8             # above?
          ja        XIZ
          jmp       *jt1(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            LBox
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L11:cmpl      $0x02,               %ebx            # LBN_DOUBLECLICK?
          jne       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            select
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L13:movl      $0x1181,             %edx            # RDX = ID
          movq      $0x0188,             %r8             # R08 = LB_GETCURSEL
          xorq      %r9,                 %r9             # R09 = NULL
          movq      %rax,                0x20(%rsp)      # P_5 = NULL
          call      _SnDIM
          testl     %eax,                %eax
          js        XIZ
          movl      %eax,                MD_SEL(%r15)    # store selection
          movl      %eax,                %edi            # RDI = entry
          leaq      BUFFER(%r15),        %rcx            # RCX = EA buffer
          call      _GetPath
          call      _SLen
          movq      %rcx,                %r12            # R12 = EA name
          leaq      0x00(%rcx, %rax),    %rbx            # RBX = EA IP
          movq      %r13,                %rcx            # RCX = MH mdmp
          movl      %edi,                %edx            # RDX = entry
          xorq      %r8,                 %r8             # R08 = sub00
          movq      $0x01,               %r9             # R09 = FDA_READ
          movq      %rbx,                0x20(%rsp)      # P_5 = EA IP
          call      _FDacc
          pxor      %xmm0,               %xmm0           # XM0 = 0
          movq      EA_OBF(%r15),        %r13            # R13 = EA target
          xorl      %edx,                %edx            # RDX = entire file
          movq      $0x02,               %r8             # R08 = open if exist
          movq      %r12,                %r9             # R09 = EA name
          movdqa    %xmm0,               0x20(%rsp)      # clear FH
          movdqa    %xmm0,               0x30(%rsp)
          movdqa    %xmm0,               0x40(%rsp)
          leaq      0x20(%rsp),          %rcx            # RCX = FH
          call      _Fopen
          movl      0x28(%rsp),          %edx            # RDX = size
          movl      $0x3300,             %ebx            # RBX = max
          testl     %eax,                %eax            # failed?
          jne       L12
          movl      $0x4000,             %ecx
          call      _AloMem
          testq     %rax,                %rax            # failed?
          je        L12
          movq      %rax,                %r12            # R12 = EA block
          movq      %rax,                0x30(%rsp)      # store FH.Mbase
          leaq      0x20(%rsp),          %rcx            # RCX = FH
          cmpl      %ebx,                %edx            # too large?
          cmova     %ebx,                %edx            # => max
          call      _Fread
          leaq      0xFF(%rdx),          %r8             # R08 = size + 255
          call      _Fclose
          movq      %r12,                %rcx            # RCX = EA source
          movq      EA_OBF(%r15),        %rdx            # RDX = EA target
          andq      $0x3300,             %r8             # R08 = size
          xorq      %r9,                 %r9             # R09 = 0
          call      _mdmp
          call      _FreMem
          movq      HW_EDT(%r15),        %rcx            # RCX = HWND edit
          call      _WnSTx
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            abort
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L12:movq      %r14,                %rcx            # RCX = HWND dlg
          call      _KillDlg
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L14:movl      $0x09,              %ecx             # Help 08
          call      _Help
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            selsdp   select stack dumps
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _selsdp
          .def      _selsdp; .scl 2; .type 32; .endef
  _selsdp:subq      $0xF8,               %rsp
          movq      _BNR(%rip),          %rax
          movq      %r15,                0xA0(%rsp)
          movq      %r14,                0xA8(%rsp)
          movq      %r13,                0xB0(%rsp)
          movq      %r12,                0xB8(%rsp)
          movq      %rsi,                0xC0(%rsp)
          movq      %rdi,                0xC8(%rsp)
          movq      %rbx,                0xD0(%rsp)
          movq      %r9,                 0xD8(%rsp)
          movq      %r8,                 0xE0(%rsp)
          movq      %rdx,                0xE8(%rsp)
          movq      %rcx,                0xF0(%rsp)
          movl      %r8d,                %ebx            # RBX = WPARAM
          movl      SD_CNT(%rax),        %r12d           # R12 = SD count
          movl      SD_SEL(%rax),        %edi            # RDI = last selection
          movq      MH_SDP(%rax),        %r13            # R13 = MH stkdmp
          movq      %rcx,                %r14            # R14 = HWND
          movq      %rax,                %r15            # R15 = BNR
          andq      $0xFFFF,             %r8             # R08 = W0[WPARAM]
          shrl      $0x10,               %ebx            # RBX = W1[WPARAM]
          subl      $0x0111,             %edx            # WM_COMMAND?
          je        L20
          incl      %edx                                 # WM_INITDIALOG?
          jne       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          xorl      %eax,                %eax            # RAX = 0
          cmpl      %r12d,               %edi            # sel above?
          cmovae    %eax,                %edi            # => select 0
          movl      $0x1184,             %edx            # RDX = ID fileopen
          xorq      %r8,                 %r8             # R08 = FALSE
          movl      %edi,                %r9d            # R09 = sel
          call      _CtlSh
          shlq      $0x20,               %r12            # R12 = W2[par]
          shlq      $0x30,               %r9             # R09 = W3[par]
          movl      $0x1181,             %edx            # RDX = ID LBox
          movq      %r13,                %r8             # R08 = MH
          addq      %r12,                %r9             # R09 = [sel][cnt][sub][ent]
          call      _LBfill
          movl      $0x80,               %edx            # RDX = entry dlg
          movq      $0x81,               %r8             # R08 =       first
          movq      $0x84,               %r9             # R09 =       last
          call      _DLGtxt
          call      _CtrWn
          movl      $0x01,               %eax
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L20:subq      $0x1181,             %r8             # below?
          js        XIZ
          cmpq      $0x04,               %r8             # above?
          ja        XIZ
          jmp       *jt2(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            LBox
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L21:cmpl      $0x02,               %ebx            # LBN_DOUBLECLICK?
          jne       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            select
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L23:movl      $0x1181,             %edx            # RDX = ID
          movq      $0x0188,             %r8             # R08 = LB_GETCURSEL
          xorq      %r9,                 %r9             # R09 = NULL
          movq      %rax,                0x20(%rsp)      # P_5 = NULL
          call      _SnDIM
          testl     %eax,                %eax
          js        XIZ
          movl      %eax,                MD_SEL(%r15)    # store selection
          movl      %eax,                %edi            # RDI = entry
          leaq      BUFFER(%r15),        %rcx            # RCX = EA buffer
          call      _GetPath
          call      _SLen
          movq      %rcx,                %r12            # R12 = EA name
          leaq      0x00(%rcx, %rax),    %rbx            # RBX = EA IP
          movq      %r13,                %rcx            # RCX = MH mdmp
          movl      %edi,                %edx            # RDX = entry
          xorq      %r8,                 %r8             # R08 = sub00
          movq      $0x01,               %r9             # R09 = FDA_READ
          movq      %rbx,                0x20(%rsp)      # P_5 = EA IP
          call      _FDacc
          pxor      %xmm0,               %xmm0           # XM0 = 0
          movq      EA_OBF(%r15),        %r13            # R13 = EA target
          xorl      %edx,                %edx            # RDX = entire file
          movq      $0x02,               %r8             # R08 = open if exist
          movq      %r12,                %r9             # R09 = EA name
          movdqa    %xmm0,               0x20(%rsp)      # clear FH
          movdqa    %xmm0,               0x30(%rsp)
          movdqa    %xmm0,               0x40(%rsp)
          leaq      0x20(%rsp),          %rcx            # RCX = FH
          call      _Fopen
          movl      0x28(%rsp),          %edx            # RDX = size
          movl      $0x3300,             %ebx            # RBX = max
          testl     %eax,                %eax            # failed?
          jne       L12
          movl      $0x4000,             %ecx
          call      _AloMem
          testq     %rax,                %rax            # failed?
          je        L12
          movq      %rax,                %r12            # R12 = EA block
          movq      %rax,                0x30(%rsp)      # store FH.Mbase
          leaq      0x20(%rsp),          %rcx            # RCX = FH
          cmpl      %ebx,                %edx            # too large?
          cmova     %ebx,                %edx            # => max
          call      _Fread
          leaq      0xFF(%rdx),          %r8             # R08 = size + 255
          call      _Fclose
          movq      %r12,                %rcx            # RCX = EA source
          movq      EA_OBF(%r15),        %rdx            # RDX = EA target
          andq      $0x3300,             %r8             # R08 = size
          xorq      %r9,                 %r9             # R09 = 0
          call      _mdmp
          call      _FreMem
          movq      HW_EDT(%r15),        %rcx            # RCX = HWND edit
          call      _WnSTx
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            abort
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L22:movq      %r14,                %rcx            # RCX = HWND dlg
          call      _KillDlg
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L24:movl      $0x0A,              %ecx             # Help 08
          call      _Help
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorq     %rax,                %rax
      XIT:movq     0xA0(%rsp),          %r15
          movq     0xA8(%rsp),          %r14
          movq     0xB0(%rsp),          %r13
          movq     0xB8(%rsp),          %r12
          movq     0xC0(%rsp),          %rsi
          movq     0xC8(%rsp),          %rdi
          movq     0xD0(%rsp),          %rbx
      XT4:movq     0xD8(%rsp),          %r9
          movq     0xE0(%rsp),          %r8
          movq     0xE8(%rsp),          %rdx
          movq     0xF0(%rsp),          %rcx
          addq     $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,                8, 3
