          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                             S P I N B U T T O N S    (C) ST-Open 1979 - 2012
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
      jt0:.quad    e00                    # 1500   RBtn dec   32
          .quad    e00                    # 1501              64
          .quad    e00                    # 1502        hex   08
          .quad    e00                    # 1503              16
          .quad    e00                    # 1504              32
          .quad    e00                    # 1505              64
          .quad    e00                    # 1506        date iso
          .quad    e00                    # 1507             eu
          .quad    e00                    # 1508        time   Sh
          .quad    e00                    # 1509              MSh
          .quad    e00                    # 150A             HMSh
          .quad    e00                    # 150B             HMS
          .quad    e00                    # 150C             HM
          .quad    e00                    # 150D             field
          .quad    e11                    # 150E 8      resource ID EFld
          .quad    e12                    # 150F 9                  Spin
          .quad    e10                    # 1510   EFld spin
          .quad    e13                    # 1511 A      min
          .quad    e14                    # 1512 B      max
          .quad    e15                    # 1513 C      dec digits
          .quad    e16                    # 1514 D      FP dig
          .quad    e17                    # 1515   RBtn sep x xxx.y
          .quad    e18                    # 1516            x,xxx.y
          .quad    e19                    # 1517            x.xxx,y
          .quad    e1A                    # 1518   ChkB signed
          .quad    e1B                    # 1519 E EFld sub
          .quad    e1C                    # 151A   PBtn discard
          .quad    e1D                    # 151B        store
          .quad    e1E                    # 151C        help
          .quad    eds                    # 151D   dummy
          .quad    XIZ                    # 151E   SpnB up/down

          .p2align 4,,15
      tef:.long    0x00, 0x0A, 0x00, 0x10
          .long    0x01, 0x14, 0x00, 0x20
          .long    0x02, 0x00, 0x00, 0x02
          .long    0x03, 0x00, 0x00, 0x04
          .long    0x04, 0x00, 0x00, 0x09
          .long    0x05, 0x00, 0x00, 0x13
          .long    0x07, 0x00, 0x00, 0x0A
          .long    0x08, 0x00, 0x00, 0x0A
          .long    0x09, 0x00, 0x00, 0x05
          .long    0x0A, 0x01, 0x00, 0x08
          .long    0x0B, 0x02, 0x00, 0x0B
          .long    0x0C, 0x03, 0x00, 0x08
          .long    0x0D, 0x04, 0x00, 0x05
          .long    0x0F, 0x00, 0x00, 0x3F

      tmm:.quad    0x00, 0xFFFFFFFF
          .quad    0x00, 0xFFFFFFFFFFFFFFFF
          .quad    0x00, 0xFF
          .quad    0x00, 0xFFFF
          .quad    0x00, 0xFFFFFFFF
          .quad    0x00, 0xFFFFFFFFFFFFFFFF
          .quad    0x00000101, 0x270F0C1F
          .quad    0x00000101, 0x270F0C1F
          .quad    0x00, 0x00003B63
          .quad    0x00, 0x003B3B63
          .quad    0x00, 0x173B3B63
          .quad    0x00, 0x173B3B00
          .quad    0x00, 0x173B0000
          .quad    0x00, 0xFFFFFFFF

      tsf:.long    0x00, 0x0A
          .long    0x01, 0x14
          .long    0x02, 0x00
          .long    0x03, 0x00
          .long    0x04, 0x00
          .long    0x05, 0x00
          .long    0x06, 0x01
          .long    0x07, 0x00
          .long    0x08, 0x00
          .long    0x09, 0x01
          .long    0x0A, 0x02
          .long    0x0B, 0x03
          .long    0x0C, 0x04
          .long    0x0D, 0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          .p2align 4,,15
          .globl   _stdSPN
          .def     _stdSPN; .scl 2; .type 32; .endef
  _stdSPN:subq     $0xF8,                 %rsp
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
          movq     SPINEA(%rax),          %r11                  # R11 = EA block
          movl     SPN_LS(%rax),          %ebp                  # RBP = number
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
               R11   SPINEA
               R12   EA_WRK
               R13   -
               R14   -
               R15   DSP_UP
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     EA__SP(%rsi),          %r14                  # R14 = EA spin
          decl     DSP_UP(%rsi)                                 # updating = init
          movl     $0x0110,               %edx                  # RDX = title
          movq     $0x0111,               %r8                   # R08 = 1st
          movq     $0x0133,               %r9                   # R09 = last
          call     _DLGtxt
          call     _CtrWn
          movl     $0xFFFFFF01,           %ecx                  # RCX = field
          call     _ldFLD
          movq     EA_WRK(%rsi),          %r12                  # R12 = EA wrk
          addq     $0x0100,               %r14                  # R14 = EA spin[4]
          xorq     %r9,                   %r9                   # R09 = 0
          testl    %eax,                  %eax                  # load failed?
          jne      e20
          movl     0x3C(%r12),            %eax                  # RAX = entries
          leaq     0x0100(%r12),          %r11                  # R11 = EA base
          movl     %ebp,                  %ebx                  # RBX = number
          cmpl     %eax,                  %ebp                  # RBP > max?
          cmovae   %r9d,                  %ebx                  # start with 0
          cmovae   %r9d,                  %ebp
          shll     $0x06,                 %ebx                  # RBX = offset
          decl     %eax                                         # RAX = max
          addq     %rbx,                  %r11                  # R11 = EA block
          movl     %ebp,                  SPN_LS(%rsi)          # set number
          movq     %r11,                  SPINEA(%rsi)          # store EA block
          movq     %r9,                   SP_MIN(%r14)          # set min
          movq     %rax,                  SP_MAX(%r14)          #     max
          movq     %rbp,                  SP_CUR(%r14)          #     cur
          movl     $0x04,                 %ecx                  # RCX = spin 4
          xorl     %edx,                  %edx                  # RDX = SPN_INIT
          movq     %rdi,                  %r8                   # R08 = HWND
          xorq     %r9,                   %r9                   # R09 = 0
          call     _STspn
          addl     $0x04,                 %ecx                  # RCX = EFld 8
          call     _STefd
          incl     %ecx                                         # RCX = EFld 9
          call     _STefd
          incl     %ecx                                         # RCX = EFld A
          call     _STefd
          incl     %ecx                                         # RCX = EFld B
          call     _STefd
          incl     %ecx                                         # RCX = EFld C
          call     _STefd
          incl     %ecx                                         # RCX = EFld D
          call     _STefd
          incl     %ecx                                         # RCX = EFld E
          call     _STefd
          movl     $0x00,                 DSP_UP(%rsi)          # updating off
          movl     $0x01,                 %ebx                  # RBX = TRUE
          jmp      pom
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_NOTIFY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:cmpl     $0x151E,               %ebx                  # spinbutton?
          jne      XIZ
          movl     $0x04,                 %ecx                  # RCX = spin 4
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
          testl    %r15d,                 %r15d                 # init?
          js       XIZ
          subl     $0x1500,               %ebx                  # below?
          js       XIZ
          cmpl     $0x1D,                 %ebx                  # control?
          ja       XIZ
          movl     SP_TYP(%r11),          %edx                  # RDX = type
          movl     SP_TFL(%r11),          %eax                  # RAX = type flags
          jmp      *jt0(, %rbx, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn type
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e00:movl     %ebx,                  %eax                  # RAX = number
          testq    %r8,                   %r8                   # BN_CLICKED?
          jne      XIZ
          shll     $0x04,                 %eax                  # RAX = offset (x * 16)
          shll     $0x03,                 %ebx                  # RBX = offset (x *  8)
          leaq     tmm(%rip),             %r9                   # R09 = EA TMM
          leaq     tsf(%rip),             %r10                  # R10 =    TFL
          movdqa   0x00(%r9,  %rax),      %xmm0                 # XM0 = min+max
          movl     0x00(%r10, %rbx),      %eax                  # RAX = type
          movl     0x04(%r10, %rbx),      %ecx                  # RCX = type flags
          movdqa   %xmm0,                 SP_MIN(%r11)          # set MIN+MAX
          movl     %eax,                  SP_TYP(%r11)          #     TYP
          movl     %ecx,                  SP_TFL(%r11)          #     TFL
          movl     $0x00,                 SP_TDA(%r11)          #     TDA
          jmp      eds
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld spin
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e10:cmpq     $0x0200,               %r8                   # EN_KILLFOCUS?
          jne      XIZ
          movl     $0x04,                 %ecx                  # RCX = spin 4
          movl     $0x02,                 %edx                  # RDX = SPN_EDITED
          call     _STspn
        0:movl     %eax,                  %r9d                  # R09 = number
          cmpl     %eax,                  %ebp                  # old content?
          je       XIZ
          leaq     0x0100(%r12),          %r10                  # R11 = EA base
          shll     $0x06,                 %eax                  # RAX = offset
          movl     %r9d,                  SPN_LS(%rsi)          # store number
          addq     %rax,                  %r10                  # R11 = EA block
          call     gather
          movq     %r10,                  SPINEA(%rsi)          # store new block EA
          xorl     %ebx,                  %ebx                  # RBX = FALSE
          jmp      pom
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld 8 ID entryfield (buddy)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e11:movl     $0x08,                 %ecx                  # RCX = EFld 8
          movl     $0x06,                 %edx                  # RDX = SP_MESSAGE
          call     _STefd
          movl     %eax,                  SP_EID(%r11)          # store ID Efld
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld 9 ID spin (up/down)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e12:movl     $0x09,                 %ecx                  # RCX = EFld 9
          movl     $0x06,                 %edx                  # RDX = SP_MESSAGE
          call     _STefd
          movq     %rax,                  SP_SID(%r11)          # store ID SpnB
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld A min
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e13:movl     $0x0A,                 %ecx                  # RCX = EFld A
          movl     $0x06,                 %edx                  # RDX = SP_MESSAGE
          call     _STefd
          movq     %rax,                  SP_MIN(%r11)          # store min
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld B max
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e14:movl     $0x0B,                 %ecx                  # RCX = EFld B
          movl     $0x06,                 %edx                  # RDX = SP_MESSAGE
          call     _STefd
          movq     %rax,                  SP_MAX(%r11)          # store max
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld C digits
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e15:cmpl     $0x01,                 %edx                  # dec?
          ja       XIZ
          movl     %eax,                  %r10d                 # R10 = type flags
          movl     $0x0C,                 %ecx                  # RCX = EFld C
          movl     $0x06,                 %edx                  # RDX = SP_MESSAGE
          andl     $0xFFFFFF00,           %r10d                 # cut out digits
          call     _STefd
          addl     %r10d,                 %eax                  # RAX = new TFL
          movl     %eax,                  SP_TFL(%r11)          # store dig
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld D FP digits
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e16:cmpl     $0x01,                 %edx                  # dec?
          ja       XIZ
          movl     %eax,                  %r10d                 # R10 = type flags
          movl     $0x0D,                 %ecx                  # RCX = EFld D
          movl     $0x06,                 %edx                  # RDX = SP_MESSAGE
          andl     $0xFF00FFFF,           %r10d                 # cut out FP
          call     _STefd
          shll     $0x10,                 %eax                  # RAX = FP
          addl     %r10d,                 %eax                  # RAX = new TFL
          movl     %eax,                  SP_TFL(%r11)          # store fp
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn separator
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e17:cmpl     $0x01,                 %edx                  # dec?
          ja       XIZ
          testq    %r8,                   %r8                   # BN_CLICKED?
          jne      XIZ
          xorl     %edx,                  %edx                  # RDX = ' ''.'
          jmp      0f
          .p2align 4,,15
      e18:cmpl     $0x01,                 %edx                  # dec?
          ja       XIZ
          testq    %r8,                   %r8                   # BN_CLICKED?
          jne      XIZ
          movl     $0x2C000000,           %edx                  # RDX = ',''.'
          jmp      0f
          .p2align 4,,15
      e19:cmpl     $0x01,                 %edx                  # dec?
          ja       XIZ
          testq    %r8,                   %r8                   # BN_CLICKED?
          jne      XIZ
          movl     $0x2E000000,           %edx                  # RDX = '.'','
        0:andl     $0x00FFFFFF,           %eax                  # RBX = default
          addl     %edx,                  %eax                  # RBX = format
          movl     %eax,                  SP_TFL(%r11)          # store
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ChkB signed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e1A:cmpl     $0x01,                 %edx                  # dec?
          ja       XIZ
          testq    %r8,                   %r8                   # BN_CLICKED?
          jne      XIZ
          xorl     $0x0000FF00,           SP_TFL(%r11)          # toggle signed
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld E subfield
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e1B:movl     $0x0E,                 %ecx                  # RCX = EFld 7
          movl     $0x06,                 %edx                  # RDX = SP_MESSAGE
          call     _STefd
          movl     %eax,                  SP_TDA(%r11)          # store subfield
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn discard
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e1C:andw     $0xFFFB,               0x08(%r13)            # reset changed
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn store
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      e1D:orw      $0x04,                 0x08(%r13)            # set changed
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
      e1E:movl     $0x12,                 %ecx
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            display
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      eds:movl     $0xFFFFFF02,           %ecx                  # RCX = DT_EFLD_NR
          call     _getMH
          movq     0x00(%rax),            %r10                  # RAX = DT_EFLD_EA
          movl     SP_TYP(%r11),          %ebp                  # RBP = type
          leaq     tef(%rip),             %r8                   # R08 = tab efld flags
          leaq     tmm(%rip),             %r9                   # R09 =          min/max
          shll     $0x04,                 %ebp                  # RBP = offset
          movdqa   0x00(%r8, %rbp),       %xmm0                 # XM0 = TYP/TFL/TDA/MCH
          movdqa   0x00(%r9, %rbp),       %xmm1                 # XM1 = MIN/MAX
          xorl     %eax,                  %eax                  # RAX = 0
          movl     $0x14,                 %ebx                  # RBX = dig64
          movl     $0x0A,                 %ecx                  # RCX = dig32
          cmpl     $0x10,                 %ebp                  # dec64?
          cmove    %ebx,                  %ecx                  # y => dig64
          cmova    %eax,                  %ecx                  # n => none
          movdqa   %xmm0,                 0x0610(%r10)          # store min type data
          movdqa   %xmm1,                 0x0620(%r10)          #           limits
          movdqa   %xmm0,                 0x0690(%r10)          #       max type data
          movdqa   %xmm1,                 0x06A0(%r10)          #           limits
          movq     %rcx,                  0x0728(%r10)          #       max dig dig
          movq     %rcx,                  0x07A8(%r10)          #       max dig fp
          shrl     $0x04,                 %ebp                  # RBP = type
          movq     SP_MIN(%r11),          %r14                  # R14 = MIN
          movq     SP_MAX(%r11),          %r15                  # R15 = MAX
          movl     SP_EID(%r11),          %r8d                  # R08 = ID EFld
          movl     SP_SID(%r11),          %r13d                 # R13 = ID SpnB
          movl     SP_TFL(%r11),          %r9d                  # R09 = TFL
          movl     SP_TDA(%r11),          %r10d                 # R10 = TDA
          movl     $0x08,                 %ecx                  # RCX = EFld 8
          movl     $0x01,                 %edx                  # RDX = SP_SET
          call     _STefd
          incl     %ecx                                         # RCX = EFld 9
          movq     %r13,                  %r8                   # R08 = ID SpnB
          call     _STefd
          incl     %ecx                                         # RCX = EFld A
          movq     %r14,                  %r8                   # R08 = min
          call     _STefd
          incl     %ecx                                         # RCX = EFld B
          movq     %r15,                  %r8                   # R08 = max
          call     _STefd
          movl     %r9d,                  %eax                  # RAX = TFL
          movl     %r9d,                  %ebx                  # RBX = TFL
          incl     %ecx                                         # RCX = EFld C
          xorq     %r8,                   %r8                   # R08 = 0
          andl     $0xFF,                 %eax                  # RAX = dig
          shrl     $0x10,                 %ebx                  # RBX = W1[TFL]
          cmpl     $0x02,                 %ebp                  # dec?
          cmovb    %eax,                  %r8d                  # => set dig
          andl     $0xFF,                 %ebx                  # RBX = fpd
          call     _STefd
          incl     %ecx                                         # RCX = EFld D
          movl     %ebx,                  %r8d                  # R08 = fpd
          call     _STefd
          xorq     %r8,                   %r8                   # R08 = 0
          movq     %r9,                   %r14                  # R14 = TFL
          movq     %r9,                   %r15                  # R15 = TFL
          incl     %ecx                                         # RCX = EFld E
          cmpl     $0x08,                 %ebp                  # field?
          cmove    %r10,                  %r8                   # => TDA
          call     _STefd
          shrq     $0x08,                 %r14                  # r14 = sig
          shrq     $0x19,                 %r15                  # r15 = sep
          movl     $0x0D,                 %ebx                  # RBX = loop_cnt
          movq     %rdi,                  %rcx                  # RCX = HNWD dlg
          movl     $0x1500,               %edx                  # RDX = ID
          xorq     %r8,                   %r8                   # R08 = FALSE
          andq     $0x01,                 %r14                  # r14 = sig BOOL
          andq     $0x03,                 %r15                  # r15 = sep INDEX
        0:call     _SBtn
          incl     %edx
          decl     %ebx
          jns      0b
          xorl     %eax,                  %eax                  # RAX = 0
          decq     %r15                                         # R15 = -1, 1, 2
          cmovs    %eax,                  %r15d                 # R15 = 0, 1, 2
          movl     $0x03,                 %ebx                  # RBX = loop_cnt
          movl     $0x1515,               %edx                  # RDX = ID
        1:call     _SBtn
          incl     %edx
          decl     %ebx
          jne      1b
          leal     0x1500(%ebp),          %edx                  # RDX = RBtn XX
          leaq     0x1515(%r15),          %r15                  # R15 =      sep
          incq     %r8                                          # R08 = TRUE
          call     _SBtn
          movl     %r15d,                 %edx                  # RDX = ID sep
          call     _SBtn
          movl     $0x1518,               %edx                  # RDX = ID signed
          movq     %r14,                  %r8                   # R08 = state sig
          call     _SCkB
          incl     %ebx                                         # RBX = on
          xorq     %r8,                   %r8                   # R08 = dec off
          xorq     %r9,                   %r9                   # R09 = sub off
          cmpl     $0x02,                 %ebp                  # dec?
          cmovb    %ebx,                  %r8d                  # => dec = on
          cmpl     $0x0D,                 %ebp                  # field?
          cmove    %ebx,                  %r9d                  # => sub = on
          movl     $0x1513,               %edx                  # RDX = ID dig
          call     _CtlEn
          incl     %edx                                         # RDX = ID fpd
          call     _CtlEn
          incl     %edx                                         # RDX = ID 9 999.99
          call     _CtlEn
          incl     %edx                                         # RDX = ID 9,999.99
          call     _CtlEn
          incl     %edx                                         # RDX = ID 9.999,99
          call     _CtlEn
          incl     %edx                                         # RDX = ID sig
          call     _CtlEn
          incl     %edx                                         # RDX = ID sub
          movq     %r9,                   %r8                   # R08 = sub state
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
          movq     $0x151D,               %r8                   # R08 = ID dummy
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
          movl     SP_TYP(%r11),          %ebx                  # RBX = type
          movl     SP_TFL(%r11),          %ebp                  # RBP = type flags
          testq    %r15,                  %r15                  # valid EA?
          je       0f
          movzwl   0x0430(%r15),          %eax                  # RAX = SP_EID
          movzwl   0x04B0(%r15),          %r13d                 # R13 = SP_SID
          movq     0x0530(%r15),          %r8                   # R08 = SP_MIN
          movq     0x05B0(%r15),          %r9                   # R09 = SP_MAX
          movzb    0x0630(%r15),          %r12d                 # R12 = [ 0 ][ 0 ][ 0 ][dig]
          movl     %ebp,                  %r14d                 # R14 = type flags
          andl     $0xFF00FF00,           %ebp                  # RBP = [sep][ 0 ][sig][ 0 ]
          movzb    0x06B0(%r15),          %ecx                  # RCX = [ 0 ][ 0 ][ 0 ][fpd]
          movzb    0x0730(%r15),          %r15d                 # R15 = SP_TDA sub
          shll     $0x10,                 %ecx                  # RCX = [ 0 ][fpd][ 0 ][ 0 ]
          addl     %r12d,                 %ebp                  # RBP = [sep][ 0 ][sig][dig]
          movl     %eax,                  SP_EID(%r11)          # store ID EFld
          movl     %r13d,                 SP_SID(%r11)          # store ID SpnB
          movq     %r8,                   SP_MIN(%r11)          #       min
          movq     %r9,                   SP_MAX(%r11)          #       max
          xorl     %eax,                  %eax                  # RAX = 0
          addl     %ecx,                  %ebp                  # RBP = [sep][fpd][sig][dig]
          xorq     %r8,                   %r8                   # R08 = 0
          cmpl     $0x02,                 %ebx                  # decimal?
          cmovb    %ebp,                  %eax                  # => dec
          cmpl     $0x06,                 %ebx                  # date, time, strings?
          cmova    %r14d,                 %ebp                  # y => TFL time
          cmovbe   %eax,                  %ebp                  # n => zero/dec
          cmpl     $0x08,                 %ebx                  # field strings?
          cmove    %r8,                   %rbp                  # RBP = TFL
          cmovne   %r8,                   %r15                  # => no TDA
          movl     %ebp,                  SP_TFL(%r11)          # store type flags
          movl     %r15d,                 SP_TDA(%r11)          #            data
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
