          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                          F I E L D   C R E A T I O N    (C) ST-Open 1979 - 2012
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
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            jump table
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      jt0:.quad    L00                                        # 1330   EFld number
          .quad    L01                                        # 1331   PBtn search
          .quad    L02                                        # 1332   EFld name
          .quad    L03                                        # 1333   EFld entries
          .quad    L04                                        # 1334   EFld size
          .quad    L05                                        # 1335   ChkB read only
          .quad    L06                                        # 1336   ChkB encrypted
          .quad    L07                                        # 1337   PBtn DB
          .quad    L08                                        # 1338   PBtn DW
          .quad    L09                                        # 1339   PBtn DD
          .quad    L10                                        # 133A   PBtn DQ
          .quad    L11                                        # 133B   PBtn DO
          .quad    L12                                        # 133C   PBtn FIX
          .quad    L13                                        # 133D   PBtn $32
          .quad    L14                                        # 133E   PBtn clear last
          .quad    L15                                        # 133F   PBtn clear all
          .quad    XIZ                                        # 1340   EFld min
          .quad    XIZ                                        # 1341   EFld max
          .quad    L16                                        # 1342   PBtn close
          .quad    L17                                        # 1343   PBtn create
          .quad    L18                                        # 1344   PBtn view
          .quad    L19                                        # 1345   PBtn help
          .quad    L20                                        # 1346   ChkB decimal
      LC0:.quad    0x0000000100000000                         # 4 GB
      jt1:.quad    L30                                        # -
          .quad    L31                                        # DB
          .quad    L32                                        # DW
          .quad    L33                                        # DD
          .quad    L34                                        # DQ
          .quad    L35                                        # DO
          .quad    L36                                        # FIX
          .quad    L37                                        # $32
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FldCr    field creation
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _FldCr
          .def     _FldCr; .scl 2; .type 32; .endef
   _FldCr:subq     $0xF8,               %rsp
          movq     _BNR(%rip),          %rax                  # RAX = BNR
          movq     %rbp,                0x88(%rsp)
          movq     %rsi,                0x90(%rsp)
          movq     %rdi,                0x98(%rsp)
          movq     %rbx,                0xA0(%rsp)
          movq     %r15,                0xA8(%rsp)
          movq     %r14,                0xB0(%rsp)
          movq     %r13,                0xB8(%rsp)
          movq     %r12,                0xC0(%rsp)
          movq     %r11,                0xC8(%rsp)
          movq     %r10,                0xD0(%rsp)
          movq     %r9,                 0xD8(%rsp)
          movq     %r8,                 0xE0(%rsp)
          movq     %rdx,                0xE8(%rsp)
          movq     %rcx,                0xF0(%rsp)
          pxor     %xmm0,               %xmm0
          movl     %r8d,                %ebx                  # RBX = WPARAM
          pxor     %xmm1,               %xmm1
          movq     %rax,                %rsi                  # RSI = BNR
          pxor     %xmm2,               %xmm2
          movq     %rcx,                %rdi                  # RDI = HWND
          pxor     %xmm3,               %xmm3
          andq     $0xFFFF,             %r8                   # R08 = W0[WPARAM]
          shrl     $0x10,               %ebx                  # RBX = W1[WPARAM]
          subl     $0x0111,             %edx                  # WM_COMMAND?
          je       cmd
          incl     %edx                                       # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_DLGINIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            clear header
            ~~~~~~~~~~~~~~~~~~
          */
          leaq     F_ZERO(%rsi),        %r10                  # R10 = EA header
          movl     $0x04,               %eax
          xorq     %r14,                %r14                  # no types
        0:movdqa   %xmm0,               0x00(%r10)
          movdqa   %xmm1,               0x10(%r10)
          movdqa   %xmm2,               0x20(%r10)
          movdqa   %xmm3,               0x30(%r10)
          addq     $0x40,               %r10
          decl     %eax
          jne      0b
          movb     $0x00,               PGM_F1(%rsi)          # clear flags
          movb     $0x03,               F_STAT(%rsi)          # read, write
          movl     $0x0100,             F_SIZE(%rsi)          # initial size
          /*
            ~~~~~~~~~~~~~~~~~~
            set hex/dec
            ~~~~~~~~~~~~~~~~~~
          */
          xorl     %eax,                %eax                  # RAX = FALSE
          movq     $0x01,               %r8                   # R08 = TRUE
          movl     $0x1346,             %edx                  # RDX = ID ChkB
          testl    $0x40,               PGM_FL(%rsi)          # decimal?
          cmove    %eax,                %r8d                  # FALSE
          call     _SCkB
          /*
            ~~~~~~~~~~~~~~~~~~
            text, center, go
            ~~~~~~~~~~~~~~~~~~
          */
          movl     $0x80,               %edx                  # RDX = title
          movq     $0x81,               %r8                   # R08 = 1st
          movq     $0x9C,               %r9                   # R09 = last
          call     _DLGtxt
          call     _CtrWn
          movl     $0x0111,             %edx                  # RDX = WM_COMMAND
          movq     $0x133F,             %r8                   # R08 = ID clear all
          xorq     %r9,                 %r9                   # R09 = NULL
          call     _PostM
          movl     $0x01,               %eax                  # RAX = TRUE
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      cmd:movl     PGM_FL(%rsi),        %r10d                 # R10 = MkDat flags
          movl     F_TCNT(%rsi),        %r14d                 # R14 = F_TCNT
          movl     F_STAT(%rsi),        %r15d                 # R15 = F_STAT
          movl     %r8d,                %edx                  # RDX = ID control
          leaq     _hex2D(%rip),        %rax                  # RAX = EA hex2D()
          leaq     _dec2D(%rip),        %r11                  # R11 = EA dec2D()
          leaq     F_TOFF(%rsi),        %r12                  # R12 = EA sub offsets
          leaq     F_TTYP(%rsi),        %r13                  # R13 = EA     types
          leaq     0x30(%rsp),          %rbp                  # RBP = EA buffer
          movdqa   %xmm0,               0x30(%rsp)            # clear buffer
          movdqa   %xmm1,               0x40(%rsp)
          movdqa   %xmm2,               0x50(%rsp)
          movdqa   %xmm3,               0x60(%rsp)
          movdqa   %xmm0,               0x70(%rsp)
          testq    $0x40,               %r10                  # hex?
          cmove    %rax,                %r11                  # use hex2D()
          subq     $0x1330,             %r8                   # control?
          js       XIZ
          cmpq     $0x16,               %r8                   # valid?
          ja       XIZ
          jmp      *jt0(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld field number
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX   -
            RBX   W1[WPARAM] = msg
            RCX   HWND
            RDX   ID control
            RDI   HWND
            RSI   BNR
            RBP   EA buffer
            R08   -
            R09   LPARAM (HWND cntl)
            R10   MkDat flags
            R11   EA dec2D()/hex2D()
            R12   EA sub offset
            R13   EA type table
            R14   flags+status
            R15   type_cnt
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:cmpl     $0x0200,             %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          movq     %rbp,                %r8                   # R08 = EA buffer
          movq     $0x10,               %r9                   # R09 = size
          call     _WnQDT
          movq     %rbp,                %rcx                  # RCX = EA buffer
          call     *%r11
          xorq     %r9,                 %r9                   # R09 = 0
          movl     %eax,                F_FNUM(%rsi)          # store field number
          testl    %eax,                %eax                  # number?
          je       0f
          movq     MH_FLD(%rsi),        %rcx                  # RCX = MemHandle
          xorq     %r11,                %r11                  # R11 = 0
          xorl     %edx,                %edx                  # RDX = 0 (start)
          movq     $0x01,               %r8                   # R08 = subfield01
          movq     $0x08,               %r9                   # R09 = FDA_SEARCH
          movq     %r9,                 0x20(%rsp)            # P_5 = NULL
          movq     %rax,                0x28(%rsp)            # P_6 = field number
          decq     %r11                                       # R11 = all bits set
          call     _FDacc
          movl     F_FNUM(%rsi),        %ebx                  # EBX = field number
          cmpl     %eax,                %r11d                 # found?
          jne      ERR2F
          jmp      2f
        0:andl     $0xFFFF7FFF,         %r10d                 # reset got number
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn search
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:xorl     %ebx,                %ebx                  # RBX = 0
          movq     MH_FLD(%rsi),        %rcx                  # RCX = MemHandle
          xorq     %r11,                %r11                  # R11 = 0
          xorl     %edx,                %edx                  # RDX = 0 (start)
          movq     $0x01,               %r8                   # R08 = subfield01
          movq     $0x08,               %r9                   # R09 = FDA_SEARCH
          movq     %r9,                 0x20(%rsp)            # P_5 = NULL
          incl     %ebx                                       # RBX = 1 (1st try)
          decq     %r11                                       # R11 = all bits set
        0:movq     %rbx,                0x28(%rsp)            # P_6 = field number
          call     _FDacc
          cmpl     %eax,                %r11d                 # found?
          je       1f
          incl     %ebx                                       # next number
          jmp      0b
          .p2align 4,,15
        1:movl     %ebx,                F_FNUM(%rsi)          # store field number
        2:xorq     %r11,                %r11                  # R11 = 0
          xorq     %r12,                %r12                  # R12 = 0
          xorq     %r14,                %r14                  # R14 = 0
          movl     %ebx,                %ecx                  # RCX = field number
          leaq     F_NAME(%rsi),        %rdx                  # RDX = EA name
          orq      $0xC000,             %r10                  # set   got number+name
          call     _d2str
          movq     %rdx,                %r8                   # R08 = EA name
          movq     %r11,                0x08(%rdx)            # clear unused area
          movq     %r12,                0x10(%rdx)
          movq     %r14,                0x18(%rdx)
          movq     %rdi,                %rcx                  # RCX = HWND
          movl     $0x1332,             %edx                  # RDX = ID
          call     _WnSDT
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld field name
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L02:cmpl     $0x0200,             %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          movq     %rbp,                %r8                   # R08 = EA buffer
          movq     $0x20,               %r9                   # R09 = size
          call     _WnQDT
          leaq     F_NAME(%rsi),        %rbp                  # RBP = EA name
          movdqa   0x30(%rsp),          %xmm0                 # copy name
          movdqa   0x40(%rsp),          %xmm1
          movdqa   %xmm0,               0x00(%rbp)
          movdqa   %xmm1,               0x10(%rbp)
          movb     $0x00,               0x1F(%rbp)            # force terminate
          cmpb     $0x00,               0x00(%rbp)            # empty?
          je       0f
          orq      $0x4000,             %r10                  # set   got name
          jmp      SHOW
        0:andl     $0xFFFFBFFF,         %r10d                 # reset got name
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld entries
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L03:cmpl     $0x0200,             %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          movq     %rbp,                %r8                   # R08 = EA buffer
          movq     $0x10,               %r9                   # R09 = size
          call     _WnQDT
          movq     %rbp,                %rcx                  # RCX = EA buffer
          call     *%r11
          movl     %eax,                F_ENTR(%rsi)          # store entries
          testl    %eax,                %eax                  # amount?
          je       0f
          orq      $0x2000,             %r10                  # set   got amount
          jmp      CHKS
        0:andl     $0xFFFFDFFF,         %r10d                 # reset got amount
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L04:cmpl     $0x0200,             %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          movq     %rbp,                %r8                   # R08 = EA buffer
          movq     $0x10,               %r9                   # R09 = size
          call     _WnQDT
          movq     %rbp,                %rcx                  # RCX = EA buffer
          call     *%r11
          movl     %eax,                F_MAXL(%rsi)          # store size
          testl    %eax,                %eax                  # size?
          je       0f
          orq      $0x1000,             %r10                  # set   got size
          jmp      CHKS
        0:andl     $0xFFFFEFFF,         %r10d                 # reset got size
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ChkB read only
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L05:xorl     $0x02,%r15d
          jmp      SFLG
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ChkB encrypted
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L06:xorl     $0x3000,%r15d
          jmp      SFLG
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn DB
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L07:movl     $0x01,               0x00(%r13, %r14, 1)   # add DB
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn DW
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L08:movl     $0x02,               0x00(%r13, %r14, 1)   # add DW
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn DD
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L09:movl     $0x03,               0x00(%r13, %r14, 1)   # add DD
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn DQ
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L10:movl     $0x04,               0x00(%r13, %r14, 1)   # add DQ
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn DO
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L11:movl     $0x05,               0x00(%r13, %r14, 1)   # add DO
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn FIX
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L12:movl     $0x06,               0x00(%r13, %r14, 1)   # add FIX
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn $32
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L13:movl     $0x07,               0x00(%r13, %r14, 1)   # add $32
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn clear last
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L14:decq     %r14                                       # F_TCNT--
          js       XIZ
          movb     $0x00,               0x00(%r13, %r14, 1)   # clear last type
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn clear all
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L15:xorq     %r14,                %r14                  # R14 = 0
          movdqa   %xmm0,               0x00(%r13)            # clear types
          movdqa   %xmm1,               0x10(%r13)
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn close
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L16:andb     $0xFE,               PGM_F1(%rsi)          # reset GO_TO_VIEW
          jmp      KILL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn create
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L17:movq     EA_WRK(%rsi),        %r11                  # R11 = EA_WRK[BNR]
          movl     F_FNUM(%rsi),        %r14d                 # R14 = field number
          movl     F_SIZE(%rsi),        %r12d                 # R12 =       size
          leaq     EA_WRK(%rsi),        %rcx                  # RCX = EA_WRK[BNR](LD)
          movq     %rsi,                %rdx                  # RDX = BNR
          movl     PX__IP(%rsi),        %r15d                 # R15 = PX__IP[BNR]
          testq    %r11,                %r11                  # anything loaded?
          je       0f
          call     _svFLD
          .p2align 4,,15
        0:movl     %r12d,               0x08(%rcx)            # size
          movl     %r14d,               0x10(%rcx)            # field number
          movl     $0x31,               0x14(%rcx)            # r, w, mem
          call     _LDreq
          testl    %eax,                %eax                  # error?
          jne      ERR1B
          leaq     F_ZERO(%rsi),        %rax                  # RAX = EA header
          movq     0x00(%rcx),          %rbx                  # RBX = field EA
          movq     0x18(%rcx),          %rbp                  # RBP =       MH
          movq     $0x04,               %r11                  # R11 = loop_cnt
        1:movdqa   0x00(%rax),          %xmm0                 # copy header
          movdqa   0x10(%rax),          %xmm1
          movdqa   0x20(%rax),          %xmm2
          movdqa   0x30(%rax),          %xmm3
          movdqa   %xmm0,               0x00(%rbx)
          movdqa   %xmm1,               0x10(%rbx)
          movdqa   %xmm2,               0x20(%rbx)
          movdqa   %xmm3,               0x30(%rbx)
          addq     $0x40,               %rax                  # RAX = template++
          addq     $0x40,               %rbx                  # RBX = field++
          decq     %r11                                       # R11 = loop_cnt--
          jne      1b
          subq     $0x0100,             %rbx                  # RBX = EA header
          movl     %r14d,               %ecx                  # RCX = field number
          addq     %r15,                %rdx                  # RDX = IP
          movl     $0x01,               %r8d                  # R08 = create, fail if exist
          leaq     PATH_X(%rsi),        %r9                   # R09 = PATH_X[BNR]
          call     _d2str
          leaq     FH_WRK(%rsi),        %rcx                  # RCX = FH
          movl     %r12d,               %edx                  # RDX = size
          call     _Fopen
          testl    %eax,                %eax                  # error?
          jne      ERR03
          movq     %rdx,                0x08(%rcx)            # FH.Fsize
          movq     %rbx,                0x10(%rcx)            # FH.Mbase
          call     _Fwrite
          movl     %eax,                %ebx
          call     _Fclose
          testl    %ebx,                %ebx                  # write failed?
          jne      ERR03
          movq     %rbp,                %rcx                  # RCX = MH
          call     _LDfre
          movl     F_FNUM(%rsi),        %ebx                  # RBX = field number
          leaq     F_NAME(%rsi),        %rbp                  # RBP = EA name
          movq     MH_FLD(%rsi),        %rcx                  # RCX = MH field
          movl     CT_SRC(%rsi),        %edx                  # RDX = next entry
          xorq     %r8,                 %r8                   # R08 = subfield 00
          movq     $0x02,               %r9                   # R09 = FDA_WRITE
          movq     %rbp,                0x20(%rsp)            # P_5 = EA name
          movl     %ebx,                0x28(%rsp)            # P_6 = field number
          call     _FDacc
          incl     CT_SRC(%rsi)                               # update field count
          incq     %r8                                        # R08 = subfield 01
          orq      $0x00000200,         %r10                  # set CREATED
          call     _FDacc
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn view
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L18:movl     F_FNUM(%rsi),        %eax
          orb      $0x01,               PGM_F1(%rsi)          # set GO_TO_VIEW
          movl     %eax,                SL_FLD(%rsi)
          jmp      KILL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn help
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L19:movl     $0x08,               %ecx                  # help 08
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ChkB decimal
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L20:xorq     $0x40,               %r10                  # toggle hex/dec
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            check field size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     CHKS:movl     F_ENTR(%rsi),        %eax                  # RAX = entries
          movl     F_MAXL(%rsi),        %ebx                  # RBX = max size
          movl     F_TCNT(%rsi),        %ecx                  # RCX = types
          mull     %ebx                                       # RAX = entries * size
          jo       ERR05
          mull     %ecx                                       # RAX = entries * size * types
          jo       ERR05
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            errors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    ERR03:movl     $0x03,               %ecx                  # ERR_CANNOT_SAVE
          call     _ErrMgr
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    ERR05:movl     $0x05,               %ecx                  # ERR_TOO_LARGE
          call     _ErrMgr
                                                              # 
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    ERR1B:movl     $0x1B,               %ecx                  # ERR_LDR_ALLOC
          decl     ERR_TY(%rsi)                               # system error
          call     _ErrMgr
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    ERR2F:movl     $0x2F,               %ecx                  # ERR_FLD_EXISTS
          xorq     %r15,                %r15
          call     _ErrMgr
          movl     %r15d,               F_FNUM(%rsi)          # clear head entry
          andl     $0xFFFF7FFF,         %r10d                 # reset got number
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            update display
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     SHOW:movl     %r10d,               PGM_FL(%rsi)          # store flags
          movq     $0x0100,             %r11                  # R11 = true size
          xorl     %ebx,                %ebx                  # RBX = index
          movq     %rdi,                %rcx                  # RCX = HWND
          movl     $0x1310,             %edx                  # RDX = ID sub 00
          movq     %r11,                %r12                  # R12 = max. size
          movq     $0x1F,               %r14                  # R14 = loop_cnt
          xorq     %r15,                %r15                  # R15 = type_cnt
        0:movzb    0x00(%r13, %rbx, 1), %r10d                 # R10 = type
          movl     F_MAXL(%rsi),        %ebp                  # RBP = block size
          movl     F_ENTR(%rsi),        %eax                  # RAX = entries
          leaq     0x30(%rsp),          %r8                   # R08 = EA text
          jmp      *jt1(, %r10, 8)
          /*
            ~~~~~~~~~~~~~~~~~~
            no type
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L30:movl     $0x2D,               0x30(%rsp)            # '-'
          movl     $0x00,               0x20(%r13, %rbx, 4)   # clear offset
          jmp      2f
          /*
            ~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L31:movl     %r11d,               0x20(%r13, %rbx, 4)   # write offset
          movl     $0x4244,             0x30(%rsp)            # 'DB'
          addq     %rax,                %r12                  # R12 = max. size (dynamic)
          addq     %rax,                %r11                  # R11 = true size (next offset)
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L32:shll     %eax                                       # RAX = entries * 2
          movl     %r11d,               0x20(%r13, %rbx, 4)   # write offset
          movl     $0x5744,             0x30(%rsp)            # 'DW'
          addq     %rax,                %r12                  # R12 = max. size (dynamic)
          addq     %rax,                %r11                  # R11 = true size (next offset)
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L33:shll     $0x02,               %eax                  # RAX = entries * 4
          movl     %r11d,               0x20(%r13, %rbx, 4)   # write offset
          movl     $0x4444,             0x30(%rsp)            # 'DD'
          addq     %rax,                %r12                  # R12 = max. size (dynamic)
          addq     %rax,                %r11                  # R11 = true size (next offset)
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L34:shll     $0x03,               %eax                  # RAX = entries * 8
          movl     %r11d,               0x20(%r13, %rbx, 4)   # write offset
          movl     $0x5144,             0x30(%rsp)            # 'DQ'
          addq     %rax,                %r12                  # R12 = max. size (dynamic)
          addq     %rax,                %r11                  # R11 = true size (next offset)
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L35:shll     $0x04,               %eax                  # RAX = entries * 16
          movl     %r11d,               0x20(%r13, %rbx, 4)   # write offset
          movl     $0x4F44,             0x30(%rsp)            # 'DO'
          addq     %rax,                %r12                  # R12 = max. size (dynamic)
          addq     %rax,                %r11                  # R11 = true size (next offset)
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~
            FIX
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L36:movl     %edx,                %r10d                 # R10 = ID
          mull     %ebp                                       # RAX = entries * size
          movl     %r10d,               %edx                  # RDX = ID
          movl     %r11d,               0x20(%r13, %rbx, 4)   # write offset
          movl     $0x00584946,         0x30(%rsp)            # 'FIX'
          addq     %rax,                %r12                  # R12 = max. size (dynamic)
          addq     %rax,                %r11                  # R11 = true size (next offset)
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~
            $32
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L37:shll     $0x02,               %eax                  # RAX = entries * 4 (size OT)
          movl     %r11d,               0x20(%r13, %rbx, 4)   # write offset
          movl     $0x00323324,         0x30(%rsp)            # '$32'
          addq     %rax,                %r11                  # R11 = true size (next offset)
          movl     %edx,                %r10d                 # R10 = ID
          mull     %ebp                                       # RAX = entries * size
          movl     %r10d,               %edx                  # RDX = ID
          addq     %rax,                %r12                  # R12 = max. size (dynamic)
          jmp      1f
          .p2align 4,,15
        1:incq     %r15                                       # type_cnt++
          orl      $0x0800,             PGM_FL(%rsi)          # set got_type(s)
        2:call     _WnSDT
          incl     %edx                                       # ID++
          incl     %ebx                                       # index++
          decq     %r14                                       # loop_cnt--
          jns      0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            display
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          leaq     _D2hex(%rip),        %rax                  # RAX = EA D2hex()
          leaq     _D2dec(%rip),        %r13                  # R13 = EA D2dec()
          movl     PGM_FL(%rsi),        %r10d                 # R10 = flags
          movl     %r15d,               F_TCNT(%rsi)          # store F_TCNT
          movl     %r11d,               F_SIZE(%rsi)          #       F_SIZE
          testq    $0x40,               %r10                  # decimal?
          cmove    %rax,                %r13                  # use D2hex()
          movl     %r11d,               %ecx                  # RCX = true size
          leaq     0x30(%rsp),          %rdx                  # RDX = EA buffer
          movq     $0x0A,               %r8                   # R08 = 10 digits
          call     *%r13
          movl     %r12d,               %ecx                  # RCX = max. size
          addl     $0x10,               %edx                  # buffer++
          call     *%r13
          movl     F_FNUM(%rsi),        %ecx                  # RCX = field number
          movl     F_MAXL(%rsi),        %ebx                  # RBX = entry size
          movl     F_ENTR(%rsi),        %r9d                  # R09 = entries
          addq     $0x10,               %rdx                  # R08 = buffer++
          call     *%r13
          movl     %ebx,                %ecx                  # RCX = entry size
          addq     $0x10,               %rdx                  # R08 = buffer++
          call     *%r13
          movl     %r9d,                %ecx                  # RCX = entries
          addq     $0x10,               %rdx                  # R08 = buffer++
          call     *%r13
          imull    %r9d,                %ebx                  # RBX = block size (F_MAXL * F_ENTR)
          movq     %rdi,                %rcx                  # RCX = HWND
          movl     $0x1340,             %edx                  # RDX = ID min. size
          leaq     0x30(%rsp),          %r8                   # R08 = EA buffer
          call     _WnSDT
          movl     %ebx,                F_BLKS(%rsi)          # store block size
          incl     %edx                                       # RDX = ID max. size
          addq     $0x10,               %r8                   # R08 = buffer++
          call     _WnSDT
          movl     $0x1330,             %edx                  # RDX = ID field number
          addq     $0x10,               %r8                   # R08 = buffer++
          call     _WnSDT
          movl     $0x1334,             %edx                  # RDX = ID entry size
          addq     $0x10,               %r8                   # R08 = buffer++
          call     _WnSDT
          decl     %edx                                       # RDX = ID entries
          addq     $0x10,               %r8                   # R08 = buffer++
          call     _WnSDT
          /*
            ~~~~~~~~~~~~~~~~~~
            DB...DO
            ~~~~~~~~~~~~~~~~~~
          */
          xorl     %eax,                %eax                  # RAX = 0
          xorl     %ebx,                %ebx                  # RBX = got_cnt
          xorq     %r8,                 %r8                   # R08 = FALSE
          movl     $0x1337,             %edx                  # RDX = ID DB
          incl     %eax                                       # RAX = 1
          testq    $0x8000,             %r10                  # got name?
          cmovne   %eax,                %ebx                  # got_cnt++
          xorq     %r9,                 %r9                   # R09 = FALSE
          incl     %eax                                       # RAX = 2
          testq    $0x4000,             %r10                  # got number?
          cmovne   %eax,                %ebx                  # got_cnt++
          incq     %r9                                        # R09 = TRUE
          incl     %eax                                       # RAX = 3
          testq    $0x2000,             %r10                  # got amount?
          cmovne   %eax,                %ebx                  # got_cnt++
          cmpl     $0x03,               %ebx                  # got all?
          cmove    %ebx,                %r8d                  # R08 = TRUE
          call     _CtlEn
          incl     %edx                                       # RDX = ID DW
          call     _CtlEn
          incl     %edx                                       # RDX = ID DD
          call     _CtlEn
          incl     %edx                                       # RDX = ID DQ
          call     _CtlEn
          incl     %edx                                       # RDX = ID DO
          call     _CtlEn
          /*
            ~~~~~~~~~~~~~~~~~~
            FIX+$32
            ~~~~~~~~~~~~~~~~~~
          */
          xorq     %r8,                 %r8                   # R08 = FALSE
          incl     %edx                                       # RDX = ID FIX
          testq    $0x1000,             %r10                  # got size?
          cmovne    %r9,                %r8                   # R08 = TRUE
          call     _CtlEn
          incl     %edx                                       # RDX = ID $32
          call     _CtlEn
          /*
            ~~~~~~~~~~~~~~~~~~
            clear...
            ~~~~~~~~~~~~~~~~~~
          */
          movq     %r15,                %r8                   # R08 = type_cnt
          incl     %edx                                       # RDX = ID clear last
          call     _CtlEn
          xorl     %eax,                %eax                  # RAX = FALSE
          incl     %edx                                       # RDX = ID clear all
          decq     %r8                                        # R08 - 1
          cmovs    %eax,                %r8d                  # FALSE if < 2
          call     _CtlEn
          /*
            ~~~~~~~~~~~~~~~~~~
            CREATE
            ~~~~~~~~~~~~~~~~~~
          */
          xorq     %r8,                 %r8                   # R08 = FALSE
          movl     $0x1343,             %edx                  # RDX = ID create
          testq    $0x0200,             %r10                  # CREATED?
          cmovne   %r8,                 %r9                   # both are FALSE!
          testq    $0x0800,             %r10                  # got type(s)?
          cmovne   %r9,                 %r8                   # TRUE if yes
          incq     %r9                                        # R09 = TRUE
          call     _CtlEn
          /*
            ~~~~~~~~~~~~~~~~~~
            VIEW
            ~~~~~~~~~~~~~~~~~~
          */
          xorq     %r8,                 %r8                   # R08 = FALSE
          incl     %edx                                       # RDX = ID view
          testq    $0x0200,             %r10                  # created?
          cmovne   %r9,                 %r8                   # TRUE
          call     _CtlEn
          shrq     $0x20,               %r12                  # R12 = upper DD dynamic size
          jne      ERR05
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            clean up and kill dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     KILL:movq     %rdi,                %rcx                  # RCX = HWND
          call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            set flags
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     SFLG:xorl     %eax,                %eax                  # RAX = FALSE
          movl     %r15d,               F_STAT(%rsi)          # store flags + permissions
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorl     %eax,                %eax
      XIT:movq     0x88(%rsp),          %rbp
          movq     0x90(%rsp),          %rsi
          movq     0x98(%rsp),          %rdi
          movq     0xA0(%rsp),          %rbx
          movq     0xA8(%rsp),          %r15
          movq     0xB0(%rsp),          %r14
          movq     0xB8(%rsp),          %r13
          movq     0xC0(%rsp),          %r12
          movq     0xC8(%rsp),          %r11
          movq     0xD0(%rsp),          %r10
          movq     0xD8(%rsp),          %r9
          movq     0xE0(%rsp),          %r8
          movq     0xE8(%rsp),          %rdx
          movq     0xF0(%rsp),          %rcx
          addq     $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,                8, 3
