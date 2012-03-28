          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                         O L H   T R A N S L A T I O N    (C) ST-Open 1979 - 2012
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
      jt0:.quad    L02                    # 1400   EFld top lang 1
          .quad    L02                    # 1401                 2
          .quad    L03                    # 1402            text 1
          .quad    L03                    # 1403                 2

          .quad    L04                    # 1404   PBtn discard
          .quad    L05                    # 1405        store
          .quad    L06                    # 1406   EFld spin number
          .quad    L09                    # 1407   dummy for display

      jt1:.quad    L22                    # 1420   EFld top lang 1
          .quad    L22                    # 1421                 2
          .quad    L23                    # 1422            text 1
          .quad    L23                    # 1423                 2

          .quad    L24                    # 1424   PBtn discard
          .quad    L25                    # 1425        store
          .quad    L26                    # 1426   EFld spin number
          .quad    L29                    # 1427   dummy for display
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _stdOLH
          .def     _stdOLH; .scl 2; .type 32; .endef
  _stdOLH:movq     $stdolh,               %rax                  # L04 - L18
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _stdTOP
          .def     _stdTOP; .scl 2; .type 32; .endef
  _stdTOP:movq     $stdtop,               %rax                  # L20 - L99
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DISTRIBUTOR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0xF8,                 %rsp
          movdqa   %xmm6,                 0x60(%rsp)
          movdqa   %xmm7,                 0x70(%rsp)
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
          movq     EA__SP(%rsi),          %r14                  # R14 = EA spn
          shrl     $0x10,                 %ebx                  # RBX = W1MP(mp1)
          andq     $0xFFFF,               %r8                   # R08 = W0MP(mp1)
          jmp      *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            stdOLH   OLH
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RBX   W1[WPARAM]
               RCX   HWND
               RDX   MSG
               RDI   HWND
               RSI   BNR
               RBP   -
               R08   W0[WPARAM]
               R09   LPARAM
               R10   -
               R11   -
               R12   EA_WRK
               R13   MH_WRK
               R14   EA__SP
               R15   -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   stdolh:movl     HTR_L1(%rsi),          %r10d                 # R10 = lang 1
          movl     HTR_L2(%rsi),          %r11d                 # R11 =      2
          movl     HTR_ET(%rsi),          %ebp                  # RBP = help number
          leaq     EDI_BF(%rsi),          %r15                  # R15 = EA buffer
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
            load hlp.dat
            ~~~~~~~~~~~~~~~~~~
          */
          movl     $0xFFFFFFFB,           %ecx                  # RCX = hlp.dat
          call     _ldFLD
          movq     EA_WRK(%rsi),          %r12                  # R12 = EA_WRK
          movq     MH_WRK(%rsi),          %r13                  # R13 = MH_WRK
          testl    %eax,                  %eax                  # error?
          jne      KLD
          /*
            ~~~~~~~~~~~~~~~~~~
            set spn + eflds
            ~~~~~~~~~~~~~~~~~~
          */
          movl     0x3C(%r12),            %eax                  # RAX = entries
          movq     _MHSTR(%rip),          %r8                   # R08 = MH_STR
          addq     $0x30,                 %r10                  # R10 = entry lang 1
          addq     $0x30,                 %r11                  # R11 = entry lang 2
          movl     $0x09,                 %ecx                  # RCX = spin 09
          xorl     %edx,                  %edx                  # RDX = SPN_INIT
          movq     %r10,                  0x0290(%r14)          # store cur lang 1
          movq     %r8,                   0x02A8(%r14)          #       MH
          shrl     %eax                                         # RAX = top cnt
          movq     %r11,                  0x02D0(%r14)          # store cur lang 2
          movq     %r8,                   0x02E8(%r14)          #       MH
          xorq     %r9,                   %r9                   # R09 = 0
          decl     %eax                                         # RAX = max
          movq     %rdi,                  %r8                   # R08 = HWND
          subq     $0x30,                 %r10                  # R10 = lang 1
          subq     $0x30,                 %r11                  # R11 = lang 2
          cmpl     %eax,                  %ebp                  # above?
          cmova    %r9d,                  %ebp                  # RBP = valid topic
          movq     %rax,                  0x0248(%r14)          # store max topics
          movq     %rbp,                  0x0250(%r14)          #       cur topic
          call     _STspn
          incl     %ecx                                         # RCX = spin 0A
          call     _STspn
          incl     %ecx                                         # RCX = spin 0B
          call     _STspn
          /*
            ~~~~~~~~~~~~~~~~~~
            set texts and go
            ~~~~~~~~~~~~~~~~~~
          */
          movq     %rdi,                  %rcx                  # RCX = HWND
          movl     $0x0111,               %edx                  # RDX = WM_COMMAND
          movq     $0x1407,               %r8                   # R08 = dummy ID
          xorq     %r9,                   %r9                   # R09 = 0
          call     _PostM
          movl     $0x0160,               %edx                  # RDX = title
          movq     $0x0161,               %r8                   # R08 = 1st
          movq     $0x0167,               %r9                   # R09 = last
          jmp      DLT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_NOTIFY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:movl     $0x09,                 %ecx                  # RCX = spin 09
          subq     $0x140A,               %r8                   # spinbutton?
          js       XIZ
          cmpq     $0x02,                 %r8                   # spinbutton?
          ja       XIZ
/* gather */
          addl     %r8d,                  %ecx                  # RCX = spin number
          movl     $0x0C,                 %edx                  # RDX = SPN_STRAIGHT
          call     _STspn
          decq     %r8
          jns      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~
            SpnB help number
            ~~~~~~~~~~~~~~~~~~~~
          */
          movl     %eax,                  %ebp                  # RBP = topic number
          movl     %eax,                  HTR_ET(%rsi)          # store topic number
          jmp      L09
          /*
            ~~~~~~~~~~~~~~~~~~~~
            SpnB lang 1
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subl     $0x30,                 %eax                  # RAX = language
          decq     %r8
          jns      1f
          movl     %eax,                  %r10d                 # R10 = lang 1
          movl     %eax,                  HTR_L1(%rsi)          # store lang 1
          jmp      L09
          /*
            ~~~~~~~~~~~~~~~~~~~~
            SpnB lang 2
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        1:movl     %eax,                  %r11d                 # R11 = lang 2
          movl     %eax,                  HTR_L2(%rsi)          # store lang 2
          jmp      L09
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:subq     $0x1400,               %r8                   # below?
          js       XIZ
          cmpq     $0x07,                 %r8                   # above?
          ja       XIZ
          jmp      *jt0(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld title left + right
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L02:cmpl     $0x0200,               %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          shll     %ebp                                         # RBP = entry top
          leal     0x1400(%r8d),          %edx                  # RDX = ID
          movq     %r15,                  %r8                   # R08 = EA buffer
          movq     $0x0040,               %r9                   # R09 = buffer size
          call     _WnQDT
          movq     %r10,                  %r8                   # R08 = sub lang 1
          movq     %r15,                  0x20(%rsp)            # P_5 = EA buffer
          cmpl     $0x1400,               %edx                  # lang 1?
          cmovne   %r11,                  %r8                   # => sub lang 2
          movq     %r13,                  %rcx                  # RCX = MH field
          movl     %ebp,                  %edx                  # RDX = entry
          movq     $0x02,                 %r9                   # R09 = FDA_WRITE
          call     _FDacc
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MLE  text left + right
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L03:cmpl     $0x0200,               %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          shll     %ebp                                         # RBP = entry top
          leal     0x1400(%r8d),          %edx                  # RDX = ID
          movq     %r15,                  %r8                   # R08 = EA buffer
          movq     $0x1000,               %r9                   # R09 = buffer size
          call     _WnQDT
          movq     %r10,                  %r8                   # R08 = sub lang 1
          movq     %r15,                  0x20(%rsp)            # P_5 = EA buffer
          incl     %ebp                                         # RBP = entry txt
          cmpl     $0x1402,               %edx                  # lang 1?
          cmovne   %r11,                  %r8                   # => sub lang 2
          movq     %r13,                  %rcx                  # RCX = MH field
          movl     %ebp,                  %edx                  # RDX = entry
          movq     $0x02,                 %r9                   # R09 = FDA_WRITE
          call     _FDacc
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn discard
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L04:andw     $0xFFFB,               0x08(%r13)            # reset changed
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn store
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L05:orw      $0x0004,               0x08(%r13)            # set   changed
/* gather */
        0:call     _svFLD
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld spinbutton topic number
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L06:cmpl     $0x0200,               %ebx                  # EN_KILLFOCUS?
          jne      XIZ
/* gather */
          movl     $0x09,                 %ecx                  # RCX = spin 09
          movl     $0x02,                 %edx                  # RDX = SPN_EDITED
          call     _STspn
          movl     %eax,                  %ebp                  # RBP = topic number
          movl     %eax,                  HTR_ET(%rsi)          # store topic number
          jmp      L09
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GATHER CHANGED CONTENT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
  gathero:pushq    %r8                                          # store R08
          shll     %ebp                                         # RBP = entry title
          movl     $0x1400,               %edx                  # RDX = ID title 1
          movq     %r15,                  %r8                   # R08 = 00[buffer]
          movq     $0x0040,               %r9                   # R09 = buffer size
          call     _WnQDT
          incl     %edx                                         # RDX = ID title 2
          addq     $0x80,                 %r8                   # R08 = 80[buffer]
          call     _WnQDT
          movq     %r8,                   0x20(%rsp)            # P_5 = 80[buffer]
          movq     %r13,                  %rcx                  # RCX = MH field
          movl     %ebp,                  %edx                  # RDX = entry
          movq     %r11,                  %r8                   # R08 = sub lang 2
          movq     $0x02,                 %r9                   # R09 = FDA_WRITE
          call     _FDacc
          movq     %r15,                  0x20(%rsp)            # P_5 = 80[buffer]
          movq     %r10,                  %r8                   # R08 = sub lang 1
          incl     %ebp                                         # RBP = entry text
          call     _FDacc
          movl     $0x1402,               %edx                  # RDX = ID text 1
          movq     %r15,                  %r8                   # R08 = 00[buffer]
          movq     $0x1000,               %r9                   # R09 = buffer size
          call     _WnQDT
          movq     %r13,                  %rcx                  # RCX = MH field
          movl     %ebp,                  %edx                  # RDX = entry
          movq     %r10,                  %r8                   # R08 = sub lang 1
          movq     $0x02,                 %r9                   # R09 = FDA_WRITE
          call     _FDacc
          movl     $0x1403,               %edx                  # RDX = ID text 2
          movq     %r15,                  %r8                   # R08 = 00[buffer]
          movq     $0x1000,               %r9                   # R09 = buffer size
          call     _WnQDT
          movq     %r13,                  %rcx                  # RCX = MH field
          movl     %ebp,                  %edx                  # RDX = entry
          movq     %r11,                  %r8                   # R08 = sub lang 2
          movq     $0x02,                 %r9                   # R09 = FDA_WRITE
          call     _FDacc
          popq     %r8                                          # restore R08
          shrl     %ebp                                         # RBP = help number
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            COMMON DISPLAY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L09:movq     %r13,                  %rcx                  # RCX = MH
          leal     0x00(, %ebp, 2),       %edx                  # RDX = entry
          movq     %r10,                  %r8                   # R08 = sub lang 1
          movq     $0x07,                 %r9                   # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rax,                  %r14                  # R14 = EA top lang 1
          incl     %edx                                         # RDX = entry++
          call     _FDacc
          movq     %rax,                  %r15                  # R15 = EA txt lang 1
          decl     %edx                                         # RDX = entry--
          movq     %r11,                  %r8                   # R08 = sub lang 2
          call     _FDacc
          movq     %rax,                  %r10                  # R10 = EA top lang 2
          incl     %edx                                         # RDX = entry++
          call     _FDacc
          movq     %rdi,                  %rcx                  # RCX = HWND
          movl     $0x1403,               %edx                  # RDX = text 2 ID
          movq     %rax,                  %r8                   # R08 =        EA
          call     _WnSDT
          decl     %edx                                         # RDX = text 1 ID
          movq     %r15,                  %r8                   # R08 =        EA
          call     _WnSDT
          decl     %edx                                         # RDX = top  2 ID
          movq     %r10,                  %r8                   # R08 =        EA
          call     _WnSDT
          decl     %edx                                         # RDX = text 1 ID
          movq     %r14,                  %r8                   # R08 =        EA
          call     _WnSDT
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            stdTOP   topics
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RBX   W1[WPARAM]
               RCX   HWND
               RDX   MSG
               RDI   HWND
               RSI   BNR
               RBP   -
               R08   W0[WPARAM]
               R09   LPARAM
               R10   -
               R11   -
               R12   EA_WRK
               R13   MH_WRK
               R14   EA__SP
               R15   -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   stdtop:movl     TTR_L1(%rsi),          %r10d                 # R10 = lang 1
          movl     TTR_L2(%rsi),          %r11d                 # R11 =      2
          movl     TTR_ET(%rsi),          %ebp                  # RBP = topic number
          leaq     EDI_BF(%rsi),          %r15                  # R15 = EA buffer
          cmpl     $0x4E,                 %edx                  # WM_NOTIFY?
          je       L20
          subl     $0x0111,               %edx                  # WM_COMMAND?
          je       L21
          incl     %edx                                         # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            load hlp.dat
            ~~~~~~~~~~~~~~~~~~
          */
          movl     $0xFFFFFFFA,           %ecx                  # RCX = hlp.dat
          call     _ldFLD
          movq     EA_WRK(%rsi),          %r12                  # R12 = EA_WRK
          movq     MH_WRK(%rsi),          %r13                  # R13 = MH_WRK
          testl    %eax,                  %eax                  # error?
          jne      KLD
          /*
            ~~~~~~~~~~~~~~~~~~
            set spn + eflds
            ~~~~~~~~~~~~~~~~~~
          */
          movl     0x3C(%r12),            %eax                  # RAX = entries
          movq     _MHSTR(%rip),          %r8                   # R08 = MH_STR
          addq     $0x30,                 %r10                  # R10 = entry lang 1
          addq     $0x30,                 %r11                  # R11 = entry lang 2
          movl     $0x06,                 %ecx                  # RCX = spin 06
          xorl     %edx,                  %edx                  # RDX = SPN_INIT
          movq     %r10,                  0x01D0(%r14)          # store cur lang 1
          movq     %r8,                   0x01E8(%r14)          #       MH
          shrl     %eax                                         # RAX = top cnt
          movq     %r11,                  0x0210(%r14)          # store cur lang 2
          movq     %r8,                   0x0228(%r14)          #       MH
          xorq     %r9,                   %r9                   # R09 = 0
          decl     %eax                                         # RAX = max
          movq     %rdi,                  %r8                   # R08 = HWND
          subq     $0x30,                 %r10                  # R10 = lang 1
          subq     $0x30,                 %r11                  # R11 = lang 2
          cmpl     %eax,                  %ebp                  # above?
          cmova    %r9d,                  %ebp                  # RBP = valid topic
          movq     %rax,                  0x0188(%r14)          # store max topics
          movq     %rbp,                  0x0190(%r14)          #       cur topic
          call     _STspn
          incl     %ecx                                         # RCX = spin 07
          call     _STspn
          incl     %ecx                                         # RCX = spin 08
          call     _STspn
          /*
            ~~~~~~~~~~~~~~~~~~
            set texts and go
            ~~~~~~~~~~~~~~~~~~
          */
          movq     %rdi,                  %rcx                  # RCX = HWND
          movl     $0x0111,               %edx                  # RDX = WM_COMMAND
          movq     $0x1427,               %r8                   # R08 = dummy ID
          xorq     %r9,                   %r9                   # R09 = 0
          call     _PostM
          movl     $0x0170,               %edx                  # RDX = title
          movq     $0x0171,               %r8                   # R08 = 1st
          movq     $0x0177,               %r9                   # R09 = last
          jmp      DLT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_NOTIFY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      L20:movl     $0x06,                 %ecx                  # RCX = spin 06
          subq     $0x142A,               %r8                   # spinbutton?
          js       XIZ
          cmpq     $0x02,                 %r8                   # spinbutton?
          ja       XIZ
          addl     %r8d,                  %ecx                  # RCX = spin number
          movl     $0x0C,                 %edx                  # RDX = SPN_STRAIGHT
          call     _STspn
          decq     %r8
          jns      0f
          movl     %eax,                  %ebp                  # RBP = topic number
          movl     %eax,                  TTR_ET(%rsi)          # store topic number
          jmp      L29
        0:subl     $0x30,                 %eax                  # RAX = language
          decq     %r8
          jns      1f
          movl     %eax,                  %r10d                 # R10 = lang 1
          movl     %eax,                  TTR_L1(%rsi)          # store lang 1
          jmp      L29
        1:movl     %eax,                  %r11d                 # R11 = lang 2
          movl     %eax,                  TTR_L2(%rsi)          # store lang 2
          jmp      L29
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L21:subq     $0x1420,               %r8                   # below?
          js       XIZ
          cmpq     $0x07,                 %r8                   # above?
          ja       XIZ
          jmp      *jt1(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld topic left + right
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L22:cmpl     $0x0200,               %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          shll     %ebp                                         # RBP = entry top
          leal     0x1420(%r8d),          %edx                  # RDX = ID
          movq     %r15,                  %r8                   # R08 = EA buffer
          movq     $0x0400,               %r9                   # R09 = buffer size
          call     _WnQDT
          movq     %r10,                  %r8                   # R08 = sub lang 1
          movq     %r15,                  0x20(%rsp)            # P_5 = EA buffer
          cmpl     $0x1420,               %edx                  # lang 1?
          cmovne   %r11,                  %r8                   # => sub lang 2
          movq     %r13,                  %rcx                  # RCX = MH field
          movl     %ebp,                  %edx                  # RDX = entry
          movq     $0x02,                 %r9                   # R09 = FDA_WRITE
          call     _FDacc
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MLE  left + right
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L23:cmpl     $0x0200,               %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          shll     %ebp                                         # RBP = entry top
          leal     0x1420(%r8d),          %edx                  # RDX = ID
          movq     %r15,                  %r8                   # R08 = EA buffer
          movq     $0x0400,               %r9                   # R09 = buffer size
          call     _WnQDT
          movq     %r10,                  %r8                   # R08 = sub lang 1
          movq     %r15,                  0x20(%rsp)            # P_5 = EA buffer
          incl     %ebp                                         # RBP = entry txt
          cmpl     $0x1422,               %edx                  # lang 1?
          cmovne   %r11,                  %r8                   # => sub lang 2
          movq     %r13,                  %rcx                  # RCX = MH field
          movl     %ebp,                  %edx                  # RDX = entry
          movq     $0x02,                 %r9                   # R09 = FDA_WRITE
          call     _FDacc
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn discard
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L24:andw     $0xFFFB,               0x08(%r13)            # reset changed
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn store
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L25:orw      $0x0004,               0x08(%r13)            # set   changed
        0:movq     %r15,                  %rcx                  # RCX = EA buffer
          call     _FreMem
          call     _svFLD
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld spinbutton topic number
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L26:cmpl     $0x0200,               %ebx                  # EN_KILLFOCUS?
          jne      XIZ
          movl     $0x06,                 %ecx                  # RCX = spin 06
          movl     $0x02,                 %edx                  # RDX = SPN_EDITED
          call     _STspn
          movl     %eax,                  %ebp                  # RBP = topic number
          movl     %eax,                  TTR_ET(%rsi)          # store topic number
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            COMMON DISPLAY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L29:movq     %r13,                  %rcx                  # RCX = MH
          leal     0x00(, %ebp, 2),       %edx                  # RDX = entry
          movq     %r10,                  %r8                   # R08 = sub lang 1
          movq     $0x07,                 %r9                   # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rax,                  %r14                  # R14 = EA top lang 1
          incl     %edx                                         # RDX = entry++
          call     _FDacc
          movq     %rax,                  %r15                  # R15 = EA txt lang 1
          decl     %edx                                         # RDX = entry--
          movq     %r11,                  %r8                   # R08 = sub lang 2
          call     _FDacc
          movq     %rax,                  %r10                  # R10 = EA top lang 2
          incl     %edx                                         # RDX = entry++
          call     _FDacc
          movq     %rdi,                  %rcx                  # RCX = HWND
          movl     $0x1423,               %edx                  # RDX = text 2 ID
          movq     %rax,                  %r8                   # R08 =        EA
          call     _WnSDT
          decl     %edx                                         # RDX = text 1 ID
          movq     %r15,                  %r8                   # R08 =        EA
          call     _WnSDT
          decl     %edx                                         # RDX = top  2 ID
          movq     %r10,                  %r8                   # R08 =        EA
          call     _WnSDT
          decl     %edx                                         # RDX = text 1 ID
          movq     %r14,                  %r8                   # R08 =        EA
          call     _WnSDT
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                    C O M M O N    P R O C E D U R E S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SET DIALOG TEXTS
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      DLT:call     _DLGtxt
          call     _CtrWn
          incl     %eax                                         # RAX = processed
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
      XIT:movdqa   0x60(%rsp),            %xmm6
          movdqa   0x70(%rsp),            %xmm7
          movq     0x88(%rsp),            %r15
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
