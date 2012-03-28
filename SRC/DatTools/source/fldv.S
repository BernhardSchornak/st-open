          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                            F I E L D   E D I T O R    (C) ST-Open 1979 - 2012
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
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            jump table
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section .rdata, "dr"
          .p2align 4,,15
      jt0:.quad    L00                                        # 1380   EFld entry
          .quad    L01                                        # 1381   EFld subfield
          .quad    L02                                        # 1382   ChkB decimal
          .quad    L03                                        # 1383   EFld numeric data
          .quad    L04                                        # 1384   PBtn zero
          .quad    L05                                        # 1385   PBtn max
          .quad    L06                                        # 1386   PBtn complex clear
          .quad    L07                                        # 1387   MLE  complex data
          .quad    L08                                        # 1388   PBtn discard
          .quad    L09                                        # 1389   PBtn store
          .quad    L10                                        # 138A   PBtn help
      jte:.quad    XIZ                                        # SET    nt
          .quad    L21                                        #        DB
          .quad    L22                                        #        DW
          .quad    L23                                        #        DD
          .quad    L24                                        #        DQ
      jts:.quad    L91                                        # SHOW   DB
          .quad    L92                                        #        DW
          .quad    L93                                        #        DD
          .quad    L94                                        #        DQ
          .quad    L95                                        #        DO
          .quad    L96                                        #        FIX
          .quad    L97                                        #        $32
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FldMg    field editor (all fields)
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
          .globl   _FldMg
          .def     _FldMg; .scl 2; .type 32; .endef
   _FldMg:subq     $0xF8,               %rsp
          movq     _BNR(%rip),          %rax                  # RAX = BNR
          movq     %rbp,                0x90(%rsp)
          movq     %rsi,                0x98(%rsp)
          movq     %rdi,                0xA0(%rsp)
          movq     %rbx,                0xA8(%rsp)
          movq     %r14,                0xB0(%rsp)
          movq     %r13,                0xB8(%rsp)
          movq     %r12,                0xC0(%rsp)
          movq     %r11,                0xC8(%rsp)
          movq     %r10,                0xD0(%rsp)
          movq     %r9,                 0xD8(%rsp)
          movq     %r8,                 0xE0(%rsp)
          movq     %rdx,                0xE8(%rsp)
          movq     %rcx,                0xF0(%rsp)
          movl     VW_ENT(%rax),        %r11d                 # R11 = current entry
          movl     VW_SUB(%rax),        %r12d                 # R12 =         subfield
          movq     EA_WRK(%rax),        %r13                  # R13 = EA field
          movq     EAVIEW(%rax),        %r14                  # R14 = EA work area
          movl     %r8d,                %ebx                  # RBX = WPARAM
          movq     %rcx,                %rdi                  # RDI = HWND
          movq     %rax,                %rsi                  # RSI = BNR
          andq     $0xFFFF,             %r8                   # R08 = W0[WPARAM]
          shrl     $0x10,               %ebx                  # RBX = W1[WPARAM]
          cmpl     $0x4E,               %edx                  # WM_NOTIFY?
          je       cnt
          subl     $0x0111,             %edx                  # WM_COMMAND?
          je       cmd
          incl     %edx                                       # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_DLGINIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          testq    %r13,                %r13                  # field loaded?
          jne      0f
          pxor     %xmm0,               %xmm0
          movl     SL_FLD(%rsi),        %ecx                  # RCX = field number
          movdqa   %xmm0,               EAVIEW(%rsi)          # clear parameters
          call     _ldFLD
          movq     EA_WRK(%rsi),        %r13                  # R13 = EA field
          movl     $0x00010000,         %eax                  # RAX = 65,536 byte
          testq    %r13,                %r13                  # field loaded?
          je       KIL0
          .p2align 4,,15
        0:movl     0x38(%r13),          %ecx                  # RCX = max length
          cmpl     %eax,                %ecx                  # max length < 65,536?
          cmovb    %eax,                %ecx                  # buffer size  65,536!
          call     _AloMem
          testq    %rax,                %rax                  # got mem?
          je       KIL1
          movl     0x3C(%r13),          %r10d                 # R10 = entries
          movl     0x24(%r13),          %ebx                  # RBX = subfields
          xorl     %edx,                %edx                  # EDX = 0
          movq     %rax,                %r14                  # R14 = EA work
          movq     %rax,                EAVIEW(%rsi)          # store EAVIEW
          movq     %rcx,                SZVIEW(%rsi)          # store SZVIEW
          cmpq     %r11,                %r10                  # entry valid?
          cmovbe   %edx,                %r11d                 # zero if not
          cmpl     %r12d,               %ebx                  # subfield valid?
          cmovbe   %edx,                %r12d                 # zero if not
          movq     EA__SP(%rsi),        %r9                   # R09 = EA__SP
          movl     %r11d,               VW_ENT(%rsi)          # store...
          movl     %r12d,               VW_SUB(%rsi)
          /*
            ~~~~~~~~~~~~~~~~~~
            set spinbutton
            ~~~~~~~~~~~~~~~~~~
          */
          decq     %r10                                       # R10 = max entry
          decl     %ebx                                       # RBX = max sub
          xorl     %ecx,                %ecx                  # RCX = spin 0
          xorl     %edx,                %edx                  # RDX = SPN_INIT
          movq     %rdi,                %r8                   # R08 = HWND
          movq     %rcx,                0x00(%r9)             # set min    0 
          movq     %r10,                0x08(%r9)             #     max    0
          movq     %r11,                0x10(%r9)             #     cur    0
          movq     %rcx,                0x40(%r9)             #     min    1
          movq     %rbx,                0x48(%r9)             #     max    1
          movq     %r12,                0x50(%r9)             #     cur    1
          call     _STspn
          incl     %ecx                                       # RCX = spin 1
          call     _STspn
          /*
            ~~~~~~~~~~~~~~~~~~
            handle subfield
            ~~~~~~~~~~~~~~~~~~
          */
          movq     %rdi,                %rcx                  # RCX = HWND
          movq     $0x00,               0x20(%rsp)            # P_5 = NULL
          movl     $0x1387,             %edx                  # RDX = ID MLE
          movq     $0xC8,               %r8                   # R08 = EM_FMTLINES
          movq     $0x01,               %r9                   # R09 = TRUE
          call     _SnDIM
          testl    %ebx,                %ebx                  # single type?
          jne      2f
          leaq     0x30(%rsp),          %r8                   # R08 = EA '0'
          movl     $0x30,               0x30(%rsp)            # '0'
          movl     $0x1381,             %edx                  # RDX = ID EFld
          call     _WnSDT
          xorq     %r8,                 %r8                   # R08 = FALSE
          call     _CtlEn
          movl     $0x138C,             %edx                  # RDX = ID spin
          call     _CtlEn
          /*
            ~~~~~~~~~~~~~~~~~~
            set hex/dec
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        2:xorl     %eax,                %eax                  # RAX = FALSE
          movq     $0x01,               %r8                   # R08 = TRUE
          movl     $0x1382,             %edx                  # RDX = ID ChkB
          testl    $0x80,               PGM_FL(%rsi)          # decimal?
          cmove    %eax,                %r8d                  # FALSE
          call     _SCkB
          /*
            ~~~~~~~~~~~~~~~~~~
            center + display
            ~~~~~~~~~~~~~~~~~~
          */
          movl     $0x70,               %edx                  # RDX = title
          movq     $0x71,               %r8                   # R08 = 1st
          movq     $0x7B,               %r9                   # R09 = last
          call     _DLGtxt
          call     _CtrWn
          movl     $0x01,               %ebx                  # set flag
          jmp      SHOW
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_NOTIFY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      cnt:xorl     %ecx,                %ecx                  # RCX = spin 0
          movl     $0x01,               %edx                  # RDX = SPN_NOTIFY
          subq     $0x138B,             %r8                   # dd1?
          jne      0f
          call     _STspn
          movl     %eax,                VW_ENT(%rsi)          # store
          movl     %eax,                %r11d                 # R11 = entry
          jmp      SHWC
          .p2align 4,,15
        0:incl     %ecx                                       # RCX = spin 1
          decq     %r8                                        # dd 2?
          jne      XIZ
          call     _STspn
          movl     %eax,                VW_SUB(%rsi)          # store
          movl     %eax,                %r12d                 # R12 = sub
          jmp      SHWC
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      cmd:subq     $0x1380,             %r8                   # skip unknown IDs
          js       XIZ
          cmpq     $0x0A,               %r8                   # above?
          ja       XIZ
          movq     MH_WRK(%rsi),        %rdx                  # RDX = MH_WRK
          movzb    0x40(%r13, %r12, 1), %ebp                  # RBP = type
          movl     0x60(%r13, %r12, 4), %eax                  # RAX = offset sub
          movl     PGM_FL(%rsi),        %r10d                 # R10 = flags
          jmp      *jt0(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~
            EFld entry number
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:cmpl     $0x0200,             %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          xorl     %ecx,                %ecx                  # RCX = spin 0
          movl     $0x02,               %edx                  # RDX = SPN_EDITED
          call     _STspn
          movl     %eax,                %r11d                 # R11 = entry
          movl     %eax,                VW_ENT(%rsi)          # store VW_ENT
          jmp      SHWC
          /*
            ~~~~~~~~~~~~~~~~~~
            EFld subfield
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:cmpl     $0x0200,             %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          movl     $0x01,               %ecx                  # RCX = spin 1
          movl     $0x02,               %edx                  # RDX = SPN_EDITED
          call     _STspn
          movl     %eax,                %r12d                 # R12 = sub
          movl     %eax,                VW_SUB(%rsi)          # store VW_SUB
          jmp      SHWC
          /*
            ~~~~~~~~~~~~~~~~~~
            ChkB decimal
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L02:movl     PGM_FL(%rsi),        %r9d                  # R09 = flags
          movl     $0x04,               %r8d                  # R08 = HEX_32
          movl     $0x02,               %ebx                  # EBX = HEX_08
          xorl     %ecx,                %ecx                  # ECX = DEC_32
          movl     $0x07,               %edx                  # RDX = SPN_SETTYPE
          testq    $0x80,               %r9                   # hexadecimal?
          cmove    %ecx,                %r8d                  # EAX = DEC_32
          cmove    %ecx,                %ebx                  # EDX = DEC_32
          call     _STspn
          xorl     $0x80,               PGM_FL(%rsi)          # toggle flag
          incl     %ecx                                       # RCX = spin 01
          movl     %ebx,                %r8d                  # R08 = type 01
          call     _STspn
          jmp      SHWC
          /*
            ~~~~~~~~~~~~~~~~~~
            EFld numeric data
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L03:cmpl     $0x0200,             %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          movl     %eax,                %ebx                  # RBX = offset sub
          movq     %r9,                 %rcx                  # RCX = HWND numeric
          leaq     0x20(%rsp),          %rdx                  # RDX = EA buffer
          movq     $0x20,               %r8                   # R08 = size
          call     _WnQTx
          movq     %rdx,                %rcx                  # RCX = EA buffer
          addq     %r13,                %rbx                  # RBX = EA subfield
          testq    $0x80,               %r10                  # decimal?
          jne      0f
          call     _hex2Q
          jmp      *jte(, %rbp, 8)
          .p2align 4,,15
        0:call     _dec2Q
          jmp      *jte(, %rbp, 8)
          /*
            ~~~~~~~~~~~~~~~~~~
            PBtn zero
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L04:movl     %eax,                %ebx                  # RBX = offset sub
          xorl     %eax,                %eax                  # RAX = zero
          addq     %r13,                %rbx                  # RBX = EA subfield
          jmp      *jte(, %rbp, 8)
          /*
            ~~~~~~~~~~~~~~~~~~
            PBtn max
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L05:movl     %eax,                %ebx                  # RBX = offset sub
          xorl     %eax,                %eax                  # RAX = 0
          addq     %r13,                %rbx                  # RBX = EA subfield
          decq     %rax                                       # RAX = max
          jmp      *jte(, %rbp, 8)
          /*
            ~~~~~~~~~~~~~~~~~~
            write numeric
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L21:movb     %al,                 0x00(%rbx, %r11, 1)   # store byte
          jmp      SHWC
      L22:movw     %ax,                 0x00(%rbx, %r11, 2)   # store word
          jmp      SHWC
      L23:movl     %eax,                0x00(%rbx, %r11, 4)   # store dword
          jmp      SHWC
      L24:movq     %rax,                0x00(%rbx, %r11, 8)   # store qword
          jmp      SHWC
          /*
            ~~~~~~~~~~~~~~~~~~
            PBtn clear complex
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L06:movq     %rdx,                %rcx                  # RCX = MH
          pxor     %xmm0,               %xmm0                 # XM0 = 0
          movl     %eax,                %ebx                  # RBX = offset sub
          movl     %r11d,               %edx                  # RDX = entry
          movl     %r12d,               %r8d                  # R08 = sub
          movl     0x38(%r13),          %eax                  # RAX = block size
          addq     %r13,                %rbx                  # RBX = EA sub
          cmpl     $0x05,               %ebp                  # DO?
          je       0f
          cmpl     $0x06,               %ebp                  # FIX?
          je       1f
          movl     $0x03,               %r9d                  # R09 = FDA_DELETE
          call     _FDacc
          jmp      SHWC
          .p2align 4,,15
        0:shll     $0x04,               %edx                  # RDX = offset entry
          addq     %rdx,                %rbx                  # RBX = EA entry
          movdqa   %xmm0,               0x00(%rbx)            # clear entry
          jmp      SHWC
          .p2align 4,,15
        1:movl     %eax,                %ecx                  # RCX = block size
          mull     %edx                                       # RAX = size * entry
          addq     %rax,                %rbx                  # RBX = EA entry
          shrl     $0x04,               %ecx                  # ECX = loop_cnt
        2:movdqa   %xmm0,               0x00(%rbx)            # clear
          addq     $0x10,               %rbx                  # RBX = next paras
          decl     %ecx                                       # RCX = loop_cnt--
          jne      2b
          jmp      SHWC
          /*
            ~~~~~~~~~~~~~~~~~~
            MLE  complex data
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L07:cmpl     $0x0200,             %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          movl     SZVIEW(%rsi),        %r8d                  # R08 = size
          movq     %rdx,                %r10                  # R10 = MH_WRK
          movl     %eax,                %ebx                  # RBX = offset sub
          movq     %r9,                 %rcx                  # RCX = HWND numeric
          movq     %r14,                %rdx                  # RDX = EA buffer
          addq     %r13,                %rbx                  # RBX = EA subfield
          call     _WnQTx
          cmpl     $0x07,               %ebp                  # $32?
          jne      0f
          movq     %r14,                0x20(%rsp)            # P_5 = EA buffer
          movq     %r10,                %rcx                  # RCX = MH
          movl     %r11d,               %edx                  # RDX = entry
          movq     %r12,                %r8                   # R08 = sub
          movq     $0x02,               %r9                   # R09 = FDA_WRITE
          call     _FDacc
          jmp      XIZ
        0:movl     0x38(%r13),          %r8d                  # R08 = size
          movl     %r8d,                %eax                  # RAX = size
          mull     %r11d
          movq     %r14,                %rcx                  # RCX = EA buffer
          leaq     (%rbx, %rax, 1),     %rdx                  # RDX = EA entry
          shrq     $0x04,               %r8                   # R08 = paras
          call     _ps2h
          jmp      SHWC
          /*
            ~~~~~~~~~~~~~~~~~~
            PBtn discard
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L08:andw     $0xFFFB,             0x08(%rdx)            # reset changed flag
          jmp      KILL
          /*
            ~~~~~~~~~~~~~~~~~~
            PBtn store
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L09:orw      $0x0004,             0x08(%rdx)            # set changed flag
          jmp      KILL
          /*
            ~~~~~~~~~~~~~~~~~~
            PBtn help
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L10:movl     $0x09,               %ecx
          call     _Help                                      # help 9
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            show data
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     SHWC:xorl     %ebx,                %ebx                  # EBX = FALSE
     SHOW:movl     PGM_FL(%rsi),        %r10d                 # R10 = flags
          movzb    0x40(%r13, %r12, 1), %rbp                  # RBP = type
          movl     0x60(%r13, %r12, 4), %r9d                  # R09 = offset subfield
          movl     $0x3F,               VIEW_E(%rsi)          # '?'
          /*
            ~~~~~~~~~~~~~~~~~~
            enable/disable
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        3:xorl     %eax,                %eax                  # RAX = FALSE
          movq     $0x01,               %r8                   # R08 = TRUE
          movq     %rdi,                %rcx                  # RCX = HWND
          movl     $0x1383,             %edx                  # RDX = ID Efld num
          cmpl     $0x04,               %ebp                  # complex?
          cmova    %eax,                %r8d                  # start with FALSE
          call     _CtlEn
          incl     %edx                                       # ID zero
          call     _CtlEn
          incl     %edx                                       # ID max
          call     _CtlEn
          decq     %r8                                        # R08 = 0 or FFFFFFFF
          incl     %edx                                       # ID clear
          call     _CtlEn
          incl     %edx                                       # ID MLE
          call     _CtlEn
          pxor     %xmm0,               %xmm0                 # XM0 = 0
          leaq     VIEW_E(%rsi),        %rdx                  # RDX = EA numeric buffer
          decl     %ebp                                       # type valid?
          js       sx
          movdqa   %xmm0,               0x00(%r14)                         #       complex
          addq     %r13,                %r9                   # R09 = EA subfield
          jmp      *jts(, %rbp, 8)
          /*
            ~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L91:movzb    0x00(%r9, %r11, 1),  %ecx                  # RCX = DB
          testq    $0x80,               %r10                  # decimal?
          jne      sd
          call     _B2hex
          jmp      sx
          /*
            ~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L92:movzwl   0x00(%r9, %r11, 2),  %ecx                  # RCX = DW
          testq    $0x80,               %r10                  # decimal?
          jne      sd
          call     _W2hex
          jmp      sx
          /*
            ~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L93:movl     0x00(%r9, %r11, 4),  %ecx                  # RCX = DD
          testq    $0x80,               %r10                  # decimal?
          jne      sd
          call     _D2hex
          jmp      sx
          /*
            ~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L94:movq     0x00(%r9, %r11, 8),  %rcx                  # RCX = DQ
          testq    $0x80,               %r10                  # decimal?
          jne      sd
          call     _Q2hex
          jmp      sx
          /*
            ~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L95:shlq     $0x04,               %r11                  # R11 = offset
          addq     %r9,                 %r11
          movq     %r11,                %rcx                  # RCX = EA entry
          movq     %r14,                %rdx                  # RDX = EA wrk
          call     _O2hex
          leaq     VIEW_E(%rsi),        %rdx                  # RDX = EA buffer
          jmp      sx
          /*
            ~~~~~~~~~~~~~~~~~~
            FIX
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L96:movl     0x38(%r13),          %eax                  # RAX = size
          movq     %r9,                 %rcx                  # RCX = EA subfield
          movl     %eax,                %r8d                  # R08 = size
          mull     %r11d
          addq     %rax,                %rcx                  # RCX = EA entry
          movq     %r14,                %rdx                  # RDX = EA buffer
          shrq     $0x04,               %r8                   # R08 = paras
          call     _ph2s
          jmp      sx
          /*
            ~~~~~~~~~~~~~~~~~~
            $32
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L97:movq     %r13,                %r14                  # R14 = EA field
          movl     0x00(%r9, %r11, 4),  %eax                  # R10 = offset
          addq     %rax,                %r14                  # R14 = EA string
          jmp      sx
          /*
            ~~~~~~~~~~~~~~~~~~
            decimal
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
       sd:movq     $0x0A,               %r8                   # R08 = unsigned, 10 digit
          call     _Q2dec
          /*
            ~~~~~~~~~~~~~~~~~~
            fill controls
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
       sx:movq     %rdi,                %rcx                  # RCX = HWND
          movl     $0x1383,             %edx                  # RDX = ID entry
          leaq     VIEW_E(%rsi),        %r8                   # R08 = VIEW_E[BNR]
          call     _WnSDT
          movl     $0x1387,             %edx                  # RDX = ID entry
          movq     %r14,                %r8                   # R08 = EA buffer or string
          call     _WnSDT
          testl    %ebx,                %ebx                  # DLGINIT?
          je       XIZ
          movl     $0x01,               %eax                  # return 1...
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            kill dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     KILL:movq     %r14,                %rcx                  # RCX = EA
          call     _FreMem
     KIL1:call     _svFLD
     KIL0:movq     %rdi,                %rcx                  # RCX = HWND
          call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorq     %rax,                %rax
      XIT:movq     0x90(%rsp),          %rbp
          movq     0x98(%rsp),          %rsi
          movq     0xA0(%rsp),          %rdi
          movq     0xA8(%rsp),          %rbx
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
