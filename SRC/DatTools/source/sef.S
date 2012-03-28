          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                             E N T R Y F I E L D S    (C) ST-Open 1979 - 2012
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
      jt0:.quad    e00                    # 1540   RBtn dec   32
          .quad    e00                    # 1541              64
          .quad    e00                    # 1542        hex   08
          .quad    e00                    # 1543              16
          .quad    e00                    # 1544              32
          .quad    e00                    # 1545              64
          .quad    e00                    # 1546             128
          .quad    e00                    # 1547        date iso
          .quad    e00                    # 1548             eu
          .quad    e00                    # 1549        time   Sh
          .quad    e00                    # 154A              MSh
          .quad    e00                    # 154B             HMSh
          .quad    e00                    # 154C             HMS
          .quad    e00                    # 154D             HM
          .quad    e00                    # 154E        text plain
          .quad    e00                    # 154F             field
          .quad    e10                    # 1550   EFld spin
          .quad    e11                    # 1551        resource ID
          .quad    e12                    # 1552        min
          .quad    e13                    # 1553        max
          .quad    e14                    # 1554        dec digits
          .quad    e15                    # 1555        FP dig
          .quad    e16                    # 1556   RBtn sep x xxx.y
          .quad    e17                    # 1557            x,xxx.y
          .quad    e18                    # 1558            x.xxx,y
          .quad    e19                    # 1559   ChkB signed
          .quad    e1A                    # 155A   EFld max size $$
          .quad    e1B                    # 155B        entry
          .quad    e1C                    # 155C        sub
          .quad    e1D                    # 155D   PBtn discard
          .quad    e1E                    # 155E        store
          .quad    e1F                    # 155F        help
          .quad    XIZ                    # 1560   SpnB up/down
          .quad    eds                    # 1561   dummy
          .p2align 4,,15
      tfl:.long    0x00, 0x0A, 0x00, 0x10
          .long    0x01, 0x14, 0x00, 0x20
          .long    0x02, 0x00, 0x00, 0x02
          .long    0x03, 0x00, 0x00, 0x04
          .long    0x04, 0x00, 0x00, 0x09
          .long    0x05, 0x00, 0x00, 0x13
          .long    0x06, 0x00, 0x00, 0x30
          .long    0x07, 0x00, 0x00, 0x0A
          .long    0x08, 0x00, 0x00, 0x0A
          .long    0x09, 0x00, 0x00, 0x05
          .long    0x0A, 0x01, 0x00, 0x08
          .long    0x0B, 0x02, 0x00, 0x0B
          .long    0x0C, 0x03, 0x00, 0x08
          .long    0x0D, 0x04, 0x00, 0x05
          .long    0x0E, 0x00, 0x00, 0x3F
          .long    0x0F, 0x00, 0x00, 0x3F
      tmm:.quad    0x00, 0xFFFFFFFF
          .quad    0x00, 0xFFFFFFFFFFFFFFFF
          .quad    0x00, 0xFF
          .quad    0x00, 0xFFFF
          .quad    0x00, 0xFFFFFFFF
          .quad    0x00, 0xFFFFFFFFFFFFFFFF
          .quad    0x00, 0x00
          .quad    0x00000101, 0x270F0C1F
          .quad    0x00000101, 0x270F0C1F
          .quad    0x00, 0x00003B63
          .quad    0x00, 0x003B3B63
          .quad    0x00, 0x173B3B63
          .quad    0x00, 0x173B3B00
          .quad    0x00, 0x173B0000
          .quad    0x00, 0x00
          .quad    0x00, 0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          .p2align 4,,15
          .globl   _stdEFD
          .def     _stdEFD; .scl 2; .type 32; .endef
  _stdEFD:subq     $0xF8,                 %rsp
          movq     _BNR(%rip),            %rax                  # RAX = BNR
          movq     %r15,                  0x88(%rsp)
          movq     %r14,                  0x90(%rsp)
          movq     %r13,                  0x98(%rsp)
          movq     %r12,                  0xA0(%rsp)
          movq     %r11,                  0xA8(%rsp)
          movq     %r10,                  0xB0(%rsp)
          movq     %rbp,                  0xB8(%rsp)
          movq     %rsi,                  0xC0(%rsp)
          movq     %rdi,                  0xC8(%rsp)
          movq     %rbx,                  0xD0(%rsp)
          movq     %r9,                   0xD8(%rsp)
          movq     %r8,                   0xE0(%rsp)
          movq     %rdx,                  0xE8(%rsp)
          movq     %rcx,                  0xF0(%rsp)
          movq     EA_WRK(%rax),          %r12                  # R12 = EA wrk
          movl     DSP_UP(%rax),          %r15d                 # R15 = DSP_UP
          movq     EFLDEA(%rax),          %r11                  # R11 = EA block
          movl     EFD_LS(%rax),          %ebp                  # RBP = number
          movl     %r8d,                  %ebx                  # RBX = WPARAM
          movq     %rax,                  %rsi                  # RSI = BNR
          movq     %rcx,                  %rdi                  # RDI = HWND
          shrl     $0x10,                 %r8d                  # R08 = W1MP(mp1)
          andl     $0xFFFF,               %ebx                  # RBX = W0MP(mp1)
          cmpl     $0x4E,                 %edx                  # WM_NOTIFY?
          je       L00
          subl     $0x0111,               %edx                  # WM_COMMAND?
          je       L01
          incl     %edx                                         # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RBX   W1[WPARAM]
               RCX   HWND
               RDX   MSG
               RDI   HWND
               RSI   BNR
               RBP   -
               R08   W0[WPARAM]
               R09   LPARAM
               R10   -
               R11   EFLDEA
               R12   EA_WRK
               R13   MH_WRK
               R14   -
               R15   DSP_UP
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     EA__SP(%rsi),          %r14                  # R14 = EA spin
          movl     $0x0190,               %edx                  # RDX = title
          movq     $0x0191,               %r8                   # R08 = 1st
          movq     $0x01B7,               %r9                   # R09 = last
          call     _DLGtxt
          call     _CtrWn
          movl     $0xFFFFFF02,           %ecx                  # RCX = field
          call     _ldFLD
          movq     EA_WRK(%rsi),          %r12                  # R12 = EA wrk
          addq     $0x0140,               %r14                  # R14 = EA spin[5]
          xorq     %r9,                   %r9                   # R09 = 0
          testl    %eax,                  %eax                  # load failed?
          jne      e20
          movl     0x3C(%r12),            %eax                  # RAX = entries
          leaq     0x0100(%r12),          %r11                  # R11 = EA base
          movl     %ebp,                  %ebx                  # RBX = number
          cmpl     %eax,                  %ebp                  # RBP > max?
          cmovae   %r9d,                  %ebx                  # start with 0
          cmovae   %r9d,                  %ebp
          shll     $0x07,                 %ebx                  # RBX = offset
          decl     %eax                                         # RAX = max
          addq     %rbx,                  %r11                  # R11 = EA block
          movl     %ebp,                  EFD_LS(%rsi)          # set number
          movq     %r11,                  EFLDEA(%rsi)          # store EA block
          movq     %r9,                   SP_MIN(%r14)          # set min
          movq     %rax,                  SP_MAX(%r14)          #     max
          movq     %rbp,                  SP_CUR(%r14)          #     cur
          movl     $0x05,                 %ecx                  # RCX = spin 5
          xorl     %edx,                  %edx                  # RDX = SPN_INIT
          movq     %rdi,                  %r8                   # R08 = HWND
          xorq     %r9,                   %r9                   # R09 = 0
          call     _STspn
          xorl     %ecx,                  %ecx                  # RCX = EFld 0
          call     _STefd
          incl     %ecx                                         # RCX = EFld 1
          call     _STefd
          incl     %ecx                                         # RCX = EFld 2
          call     _STefd
          incl     %ecx                                         # RCX = EFld 3
          call     _STefd
          incl     %ecx                                         # RCX = EFld 4
          call     _STefd
          incl     %ecx                                         # RCX = EFld 5
          call     _STefd
          incl     %ecx                                         # RCX = EFld 6
          call     _STefd
          incl     %ecx                                         # RCX = EFld 7
          call     _STefd
          movl     $0x01,                 %ebx                  # RBX = TRUE
          jmp      pom
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_NOTIFY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:cmpl     $0x1560,               %ebx                  # spinbutton?
          jne      XIZ
          movl     $0x05,                 %ecx                  # RCX = spin 5
          movl     $0x0C,                 %edx                  # RDX = SPN_STRAIGHT
          call     _STspn
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:movq     MH_WRK(%rsi),          %r13                  # R13 = MH wrk
          /*
          testl    %r15d,                 %r15d                 # init?
          */
          js       XIZ
          subl     $0x1540,               %ebx                  # below?
          js       XIZ
          cmpl     $0x21,                 %ebx                  # control?
          ja       XIZ
          movl     EF_TYP(%r11),          %edx                  # RDX = type
          movl     EF_TFL(%r11),          %eax                  # RAX = type flags
          jmp      *jt0(, %rbx, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn type
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e00:testq    %r8,                   %r8                   # BN_CLICKED?
          jne      XIZ
          shll     $0x04,                 %ebx                  # R08 = offset
          leaq     tfl(%rip),             %r10                  # R10 = EA TFL
          leaq     tmm(%rip),             %r9                   # R09 =    TMM
          movdqa   0x00(%r10, %rbx),      %xmm0
          movdqa   0x00(%r9,  %rbx),      %xmm1
          movdqa   %xmm0,                 EF_TYP(%r11)          # TYP/TFL/TDA/MCH
          movdqa   %xmm1,                 EF_MIN(%r11)          # MIN/MAX
          jmp      eds
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld spin
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e10:cmpq     $0x0200,               %r8                   # EN_KILLFOCUS?
          jne      XIZ
          movl     $0x05,                 %ecx                  # RCX = spin 5
          movl     $0x02,                 %edx                  # RDX = SPN_EDITED
          call     _STspn
        0:movl     %eax,                  %r9d                  # R09 = number
          cmpl     %eax,                  %ebp                  # old content?
          je       XIZ
          leaq     0x0100(%r12),          %r10                  # R11 = EA base
          shll     $0x07,                 %eax                  # RAX = offset
          movl     %r9d,                  EFD_LS(%rsi)          # store number
          addq     %rax,                  %r10                  # R11 = EA block
          call     gather
          movq     %r10,                  EFLDEA(%rsi)          # store new block EA
          xorl     %ebx,                  %ebx                  # RBX = FALSE
          jmp      pom
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld 0 ID
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e11:xorl     %ecx,                  %ecx                  # RCX = EFld 0
          movl     $0x06,                 %edx                  # RDX = EF_MESSAGE
          call     _STefd
          movl     %eax,                  EF_EID(%r11)          # store ID
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld 1 min
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e12:movl     $0x01,                 %ecx                  # RCX = EFld 1
          movl     $0x06,                 %edx                  # RDX = EF_MESSAGE
          call     _STefd
          movq     %rax,                  EF_MIN(%r11)          # store min
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld 2 max
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e13:movl     $0x02,                 %ecx                  # RCX = EFld 2
          movl     $0x06,                 %edx                  # RDX = EF_MESSAGE
          call     _STefd
          movq     %rax,                  EF_MAX(%r11)          # store max
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld 3 digits
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e14:cmpl     $0x01,                 %edx                  # dec?
          ja       XIZ
          movl     %eax,                  %r10d                 # R10 = type flags
          movl     $0x03,                 %ecx                  # RCX = EFld 3
          movl     $0x06,                 %edx                  # RDX = EF_MESSAGE
          andl     $0xFFFFFF00,           %r10d                 # cut out digits
          call     _STefd
          addl     %r10d,                 %eax                  # RAX = new TFL
          movl     %eax,                  EF_TFL(%r11)          # store dig
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld 4 FP
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e15:cmpl     $0x01,                 %edx                  # dec?
          ja       XIZ
          movl     %eax,                  %r10d                 # R10 = type flags
          movl     $0x04,                 %ecx                  # RCX = EFld 4
          movl     $0x06,                 %edx                  # RDX = EF_MESSAGE
          andl     $0xFF00FFFF,           %r10d                 # cut out FP
          call     _STefd
          shll     $0x10,                 %eax                  # RAX = FP
          addl     %r10d,                 %eax                  # RAX = new TFL
          movl     %eax,                  EF_TFL(%r11)          # store fp
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn separator
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e16:cmpl     $0x01,                 %edx                  # dec?
          ja       XIZ
          testq    %r8,                   %r8                   # BN_CLICKED?
          jne      XIZ
          xorl     %edx,                  %edx                  # RDX = ' ''.'
          jmp      0f
          .p2align 4,,15
      e17:cmpl     $0x01,                 %edx                  # dec?
          ja       XIZ
          testq    %r8,                   %r8                   # BN_CLICKED?
          jne      XIZ
          movl     $0x2C000000,           %edx                  # RDX = ',''.'
          jmp      0f
          .p2align 4,,15
      e18:cmpl     $0x01,                 %edx                  # dec?
          ja       XIZ
          testq    %r8,                   %r8                   # BN_CLICKED?
          jne      XIZ
          movl     $0x2E000000,           %edx                  # RDX = '.'','
        0:andl     $0x00FFFFFF,           %eax                  # RBX = default
          addl     %edx,                  %eax                  # RBX = format
          movl     %eax,                  EF_TFL(%r11)          # store
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ChkB signed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e19:cmpl     $0x01,                 %edx                  # dec?
          ja       XIZ
          testq    %r8,                   %r8                   # BN_CLICKED?
          jne      XIZ
          xorl     $0x0000FF00,           EF_TFL(%r11)          # toggle signed
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld 5 max size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e1A:movl     $0x05,                 %ecx                  # RCX = EFld 5
          movl     $0x06,                 %edx                  # RDX = EF_MESSAGE
          call     _STefd
          movl     %eax,                  EF_MCH(%r11)          # store max chars
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld 6 entry (field)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e1B:cmpl     $0x0F,                 %edx                  # dec?
          jne      XIZ
          movl     $0x06,                 %ecx                  # RCX = EFld 6
          movl     $0x06,                 %edx                  # RDX = EF_MESSAGE
          call     _STefd
          movl     %eax,                  EF_TFL(%r11)          # store entry number
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld 7 subfield
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e1C:movl     $0x07,                 %ecx                  # RCX = EFld 7
          movl     $0x06,                 %edx                  # RDX = EF_MESSAGE
          call     _STefd
          movl     %eax,                  EF_TDA(%r11)          # store subfield
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn discard
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e1D:andl     $0xFFFB,               0x08(%r13)            # reset changed
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn store
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e1E:orl      $0x04,                 0x08(%r13)            # set changed
          call     gather
        0:call     _svFLD
      e20:movq     %rdi,                  %rcx                  # RCX = HWND
          call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn help
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e1F:movl     $0x12,                 %ecx
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            display
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      eds:movq     EA__EF(%rsi),          %r10                  # R10 = DT_EFLD_EA
          movl     EF_TYP(%r11),          %ebp                  # RBP = type
          leaq     tfl(%rip),             %r8                   # R08 =    tab tflags
          leaq     tmm(%rip),             %r9                   # R09 =        min/max
          shll     $0x04,                 %ebp                  # RBP = offset
          addq     $0x0180,               %r10                  # R10 = EA block min
          movdqa   0x00(%r8, %rbp),       %xmm0                 # XM0 = TYP/TFL/TDA/MCH
          movdqa   0x00(%r9, %rbp),       %xmm1                 # XM1 = MIN/MAX
          xorl     %eax,                  %eax                  # RAX = 0
          movl     $0x14,                 %ebx                  # RBX = dig64
          movl     $0x0A,                 %ecx                  # RCX = dig32
          cmpl     $0x10,                 %ebp                  # dec64?
          cmove    %ebx,                  %ecx                  # y => dig64
          cmova    %eax,                  %ecx                  # n => none
          movdqa   %xmm0,                 0x10(%r10)            # store min type data
          movdqa   %xmm1,                 0x20(%r10)            #           limits
          movdqa   %xmm0,                 0x90(%r10)            #       max type data
          movdqa   %xmm1,                 0xA0(%r10)            #           limits
          movq     %rcx,                  0x0128(%r10)          #       max dig dig
          movq     %rcx,                  0x01A8(%r10)          #       max dig fp
          shrl     $0x04,                 %ebp                  # RBP = type
          movl     EF_EID(%r11),          %r8d                  # R08 = ID
          movl     EF_TFL(%r11),          %r9d                  # R09 = TFL
          movl     EF_TDA(%r11),          %r10d                 # R10 = TDA
          movl     EF_MCH(%r11),          %r13d                 # R13 = MCH
          movq     EF_MIN(%r11),          %r14                  # R14 = MIN
          movq     EF_MAX(%r11),          %r15                  # R15 = MAX
          xorl     %ecx,                  %ecx                  # RCX = EFld 0
          movl     $0x01,                 %edx                  # RDX = EF_SET
          call     _STefd
          xorl     %eax,                  %eax                  # RAX = 0
          incl     %ecx                                         # RCX = EFld 1
          xorq     %r8,                   %r8                   # R08 = 0
          movl     %r9d,                  %ebx                  # RBX = TFL
          cmpl     $0x0E,                 %ebp                  # strings?
          cmovb    %r14,                  %r8                   # => min
          call     _STefd
          xorq     %r8,                   %r8                   # R08 = 0
          incl     %ecx                                         # RCX = EFld 2
          cmpl     $0x0E,                 %ebp                  # strings?
          cmovb    %r15,                  %r8                   # => min
          shrl     $0x10,                 %ebx                  # RBX = sep fpd
          call     _STefd
          xorl     %eax,                  %eax                  # RAX = 0
          andl     $0xFF,                 %ebx                  # RBX = fpd
          incl     %ecx                                         # RCX = EFld 3
          movzb    %r9b,                  %r8d                  # R08 = dig
          cmpl     $0x01,                 %ebp                  # dec?
          cmova    %eax,                  %r8d                  # => no dig
          cmova    %eax,                  %ebx                  # => no fpd
          call     _STefd
          incl     %ecx                                         # RCX = EFld 4
          movl     %ebx,                  %r8d                  # R08 = fpd
          call     _STefd
          incl     %ecx                                         # RCX = EFld 5
          movq     %r13,                  %r8                   # R08 = MCH
          movq     %r9,                   %r14                  # R14 = TFL
          movq     %r9,                   %r15                  # R15 = TFL
          call     _STefd
          xorq     %r8,                   %r8                   # R08 = 0
          incl     %ecx                                         # RCX = EFld 6
          shrq     $0x08,                 %r14                  # r14 = sig
          shrq     $0x19,                 %r15                  # r15 = sep
          cmpl     $0x0F,                 %ebp                  # strings field?
          cmove    %r9,                   %r8                   # y => TFL = entry
          cmovne   %r8,                   %r10                  # n => TDA = 0
          call     _STefd
          incl     %ecx                                         # RCX = EFld 7
          movq     %r10,                  %r8                   # R08 = TDA
          andq     $0x01,                 %r14                  # r14 = sig BOOL
          andq     $0x03,                 %r15                  # r15 = sep INDEX
          call     _STefd
          xorl     %eax,                  %eax                  # RAX = 0
          decq     %r15                                         # R15 = -1, 1, 2
          cmovs    %eax,                  %r15d                 # R15 = 0, 1, 2
          movl     $0x10,                 %ebx                  # RBX = loop_cnt
          movq     %rdi,                  %rcx                  # RCX = HNWD dlg
          movl     $0x1540,               %edx                  # RDX = ID
          xorq     %r8,                   %r8                   # R08 = FALSE
        0:call     _SBtn
          incl     %edx
          decl     %ebx
          jne      0b
          movl     $0x03,                 %ebx                  # RBX = loop_cnt
          movl     $0x1556,               %edx                  # RDX = ID
        1:call     _SBtn
          incl     %edx
          decl     %ebx
          jne      1b
          leal     0x1540(%ebp),          %edx                  # RDX = ID RBtn type
          leaq     0x1556(%r15),          %r15                  # R15 =         sep
          movl     %ebp,                  %ebx                  # RBX = type
          movq     $0x01,                 %r8                   # R08 = BM_SETCHECK
          call     _SBtn
          movl     %r15d,                 %edx                  # RDX = ID sep
          call     _SBtn
          movl     $0x1559,               %edx                  # RDX = ID signed
          movq     %r14,                  %r8                   # R08 = state sig
          call     _SCkB
          movl     $0x01,                 %ebp                  # RBP = on
          xorq     %r8,                   %r8                   # R08 = off
          xorq     %r9,                   %r9                   # R09 = off
          xorq     %r10,                  %r10                  # R10 = off
          xorq     %r15,                  %r15                  # R15 = off
          cmpl     $0x06,                 %ebx                  # 128 bit?
          je       2f
          cmpl     $0x0E,                 %ebx                  # strings?
          cmovb    %ebp,                  %r8d                  # min-max   = on
          cmpl     $0x02,                 %ebx
          cmovb    %ebp,                  %r9d                  # dec cntls = on
          cmpl     $0x0D,                 %ebx
          cmova    %ebp,                  %r10d                 # max chars = on
          cmpl     $0x0F,                 %ebx
          cmove    %ebp,                  %r15d                 # field dat = on
        2:movl     $0x1552,               %edx                  # RDX = ID min
          call     _CtlEn
          incl     %edx                                         # RDX = ID max
          call     _CtlEn
          incl     %edx                                         # RDX = ID dec dig
          movq     %r9,                   %r8                   # R08 = dec state
          call     _CtlEn
          incl     %edx                                         # RDX = ID dec FP
          call     _CtlEn
          incl     %edx                                         # RDX = ID x xxx.x
          call     _CtlEn
          incl     %edx                                         # RDX = ID x,xxx.x
          call     _CtlEn
          incl     %edx                                         # RDX = ID x.xxx,x
          call     _CtlEn
          incl     %edx                                         # RDX = ID signed
          call     _CtlEn
          incl     %edx                                         # RDX = ID max chars
          movq     %r10,                  %r8                   # R08 = str state
          call     _CtlEn
          incl     %edx                                         # RDX = ID entry
          movq     %r15,                  %r8                   # R08 = field state
          call     _CtlEn
          incl     %edx                                         # RDX = ID sub
          call     _CtlEn
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            post update message
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      pom:movq     %rdi,                  %rcx                  # RCX = HWND
          movl     $0x0111,               %edx                  # RDX = WM_COMMAND
          movq     $0x1561,               %r8                   # R08 = ID dummy
          xorq     %r9,                   %r9                   # R09 = NULL
          call     _PostM
          movl     %ebx,                  %eax
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            gather data
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   gather:pushq    %r9                                          # keep stack aligned
          movq     EA__EF(%rsi),          %r15                  # R14 = EA DT5_EFLD
          movl     EF_TYP(%r11),          %ebx                  # RBX = type
          movl     EF_TFL(%r11),          %ebp                  # RBP = type flags
          testq    %r15,                  %r15                  # valid EA?
          je       0f
          movzwl   0x0030(%r15),          %eax                  # RAX = EF_EID
          movq     0x00B0(%r15),          %r8                   # R08 = EF_MIN
          movq     0x0130(%r15),          %r9                   # R09 = EF_MAX
          movzb    0x01B0(%r15),          %r12d                 # R12 = [ 0 ][ 0 ][ 0 ][dig]
          movl     %ebp,                  %r14d                 # R14 = type flags
          andl     $0xFF00FF00,           %ebp                  # RBP = [sep][ 0 ][sig][ 0 ]
          movzb    0x0230(%r15),          %ecx                  # RCX = [ 0 ][ 0 ][ 0 ][fpd]
          movzb    0x02B0(%r15),          %edx                  # RDX = EF_MCH
          movl     0x0330(%r15),          %r13d                 # R13 = EF_TFL entry
          movzb    0x03B0(%r15),          %r15d                 # R15 = EF_TDA sub
          shll     $0x10,                 %ecx                  # RCX = [ 0 ][fpd][ 0 ][ 0 ]
          addl     %r12d,                 %ebp                  # RBP = [sep][ 0 ][sig][dig]
          movl     %eax,                  EF_EID(%r11)          # store ID
          movq     %r8,                   EF_MIN(%r11)          #       min
          movq     %r9,                   EF_MAX(%r11)          #       max
          xorl     %eax,                  %eax                  # RAX = 0
          addl     %ecx,                  %ebp                  # RBP = [sep][fpd][sig][dig]
          xorq     %r8,                   %r8                   # R08 = 0
          movzb    EF_MCH(%r11),          %r9d                  # R09 = MCH
          cmpl     $0x02,                 %ebx                  # decimal?
          cmovb    %ebp,                  %eax                  # => dec
          cmpl     $0x06,                 %ebx                  # date, time, strings?
          cmova    %r14d,                 %ebp                  # y => TFL time
          cmovbe   %eax,                  %ebp                  # n => zero/dec
          cmpl     $0x0F,                 %ebx                  # field strings?
          cmove    %r13d,                 %ebp                  # RBP = entry
          cmovne   %r8,                   %r15                  # => no TDA
          testq    %r9,                   %r9                   # MCH zero?
          cmovne   %r9d,                  %edx                  # => use preset
          movl     %ebp,                  EF_TFL(%r11)          # store type flags
          movl     %r15d,                 EF_TDA(%r11)          #            data
          movl     %edx,                  EF_MCH(%r11)          #       max chars
        0:popq     %r9                                          # restore alignment
          ret
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
          movq     0xA0(%rsp),            %r12
          movq     0xA8(%rsp),            %r11
          movq     0xB0(%rsp),            %r10
          movq     0xB8(%rsp),            %rbp
          movq     0xC0(%rsp),            %rsi
          movq     0xC8(%rsp),            %rdi
          movq     0xD0(%rsp),            %rbx
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
