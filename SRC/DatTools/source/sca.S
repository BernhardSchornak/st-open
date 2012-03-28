          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                  C R E A T E   S T A N D A R D   F I E L D S    (C) ST-Open 1979 - 2012
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
      jt1:.quad    L21                    # 13A0   RBtn menu+dlg
          .quad    L22                    # 13A1        messages
          .quad    L23                    # 13A2        olh
          .quad    L24                    # 13A3        topics
          .quad    L25                    # 13A4        spinbuttons
          .quad    L26                    # 13A5        entryfields
          .quad    XIZ                    # 13A6        SysNum
          .quad    XIZ                    # 13A7        SysStr
          .quad    L29                    # 13A8   EFld menu+dlg
          .quad    L29                    # 13A9        messages
          .quad    L29                    # 13AA        olh
          .quad    L29                    # 13AB        topics
          .quad    L29                    # 13AC        spinbuttons
          .quad    L29                    # 13AD        entryfields
          .quad    L29                    # 13AE        SysNum
          .quad    L29                    # 13AF        SysStr
          .quad    L30                    # 13B0   PBtn menu+dlg    <
          .quad    L31                    # 13B1                    >
          .quad    L32                    # 13B2        messages    <
          .quad    L33                    # 13B3                    >
          .quad    L34                    # 13B4        olh         <
          .quad    L35                    # 13B5                    >
          .quad    L36                    # 13B6        topics      <
          .quad    L37                    # 13B7                    >
          .quad    L38                    # 13B8        spinbuttons <
          .quad    L39                    # 13B9                    >
          .quad    L40                    # 13BA        entryfields <
          .quad    L41                    # 13BB                    >
          .quad    L44                    # 13BC        SysStr      <
          .quad    L45                    # 13BD        SysStr      >
          .quad    XIZ                    # -
          .quad    XIZ                    # -
          .quad    KLD                    # 13C0   PBtn discard
          .quad    sf0                    # 13C1        create
          .quad    L46                    # 13C2        help
          .p2align 4,,15
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
    sftyp:.quad    0x0707070707070707, 0x0707070707070707
    sfmd0:.ascii   "Menu + Dialogs"
          .byte    0x00, 0x00
    sfmd1:.ascii   "auxi\\FFFFFF12"
          .byte    0x00, 0x00, 0x00
    sfmd2:.ascii   "syst\\FFFFFF13"
          .byte    0x00, 0x00, 0x00
    sfmd3:.ascii   "auxi\\FFFFFF13"
          .byte    0x00, 0x00, 0x00
    sfms0:.ascii   "User Messages"
          .byte    0x00, 0x00, 0x00
    sfms1:.ascii   "auxi\\nsm.dat"
          .byte    0x00, 0x00, 0x00, 0x00
    sfms2:.ascii   "syst\\err.dat"
          .byte    0x00, 0x00, 0x00, 0x00
    sfms3:.ascii   "auxi\\err.dat"
          .byte    0x00, 0x00, 0x00, 0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            stdFLD   create standard fields
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RBX   W0[WPARAM]
               RCX   HWND
               RDX   MSG
               RDI   HWND
               RSI   BNR
               RBP   -
               R08   W1[WPARAM]
               R09   LPARAM
               R12   EA_WRK
               R13   MH_WRK
               R14   -
               R15   -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               EFld  18 - 1F
          */
          .p2align 4,,15
          .globl   _stdFLD
          .def     _stdFLD; .scl 2; .type 32; .endef
  _stdFLD:subq     $0xF8,                 %rsp
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
          shrq     $0x10,                 %r8                   # R08 = W1MP(mp1)
          andl     $0xFFFF,               %ebx                  # RBX = W0MP(mp1)
          subl     $0x0111,               %edx                  # WM_COMMAND?
          je       L20
          incl     %edx                                         # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0x18,                 %ecx                  # RCX = EFld 18
          xorl     %edx,                  %edx                  # RDX = EF_INIT
          movq     %rdi,                  %r8                   # R08 = HWND
          call     _STefd
          incl     %ecx                                         # RCX = EFld 19
          call     _STefd
          incl     %ecx                                         # RCX = EFld 1A
          call     _STefd
          incl     %ecx                                         # RCX = EFld 1B
          call     _STefd
          incl     %ecx                                         # RCX = EFld 1C
          call     _STefd
          incl     %ecx                                         # RCX = EFld 1D
          call     _STefd
          incl     %ecx                                         # RCX = EFld 1E
          call     _STefd
          incl     %ecx                                         # RCX = EFld 1F
          call     _STefd
          movl     $0x3F,                 SF_FLG(%rsi)          # flg = default
          movq     %rdi,                  %rcx                  # RCX = HWND
          movl     $0x13A0,               %edx                  # RDX = ID ChkB 0
          movq     $0x01,                 %r8                   # R08 = TRUE
          call     _SBtn
          incl     %edx                                         # RDX = ID ChkB 1
          call     _SBtn
          incl     %edx                                         # RDX = ID ChkB 2
          call     _SBtn
          incl     %edx                                         # RDX = ID ChkB 3
          call     _SBtn
          incl     %edx                                         # RDX = ID ChkB 4
          call     _SBtn
          incl     %edx                                         # RDX = ID ChkB 5
          call     _SBtn
          incl     %edx                                         # RDX = ID ChkB 6
          decq     %r8                                          # R08 = FALSE
          call     _CtlEn
          incl     %edx                                         # RDX = ID ChkB 7
          call     _CtlEn
          movl     $0x0140,               %edx                  # RDX = title
          movq     $0x0141,               %r8                   # R08 = 1st
          movq     $0x015C,               %r9                   # R09 = last
          call     _DLGtxt
          call     _CtrWn
          movl     $0x01,                 %eax                  # RAX = processed
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L20:testl    %eax,                  %eax                  # updating?
          jne      XIZ
          movl     SF_DLG(%rsi),          %eax                  # RAX = mnu+dlg
          movl     SF_MSG(%rsi),          %ebp                  # RBP = message
          movl     SF_OLH(%rsi),          %r10d                 # R10 = olh
          movl     SF_TOP(%rsi),          %r11d                 # R11 = topics
          movl     SF_SPN(%rsi),          %r12d                 # R12 = spinbuttons
          movl     SF_EFD(%rsi),          %r13d                 # R13 = entryfields
          movl     SF_NUM(%rsi),          %r14d                 # R14 = notebook
          movl     SF_STR(%rsi),          %r15d                 # R15 = bitmaps
          subl     $0x13A0,               %ebx                  # below?
          js       XIZ
          cmpl     $0x22,                 %ebx                  # above?
          ja       XIZ
          jmp      *jt1(, %rbx, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn menu+dlg
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L21:xorl     $0x01,                 SF_FLG(%rsi)          # toggle menu+dlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn messages
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L22:xorl     $0x02,                 SF_FLG(%rsi)          # toggle messages
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn olh
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L23:xorl     $0x04,                 SF_FLG(%rsi)          # toggle olh
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn topics
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L24:xorl     $0x08,                 SF_FLG(%rsi)          # toggle topics
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn spinbuttons
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L25:xorl     $0x10,                 SF_FLG(%rsi)          # toggle spinbuttons
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn entryfields
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L26:xorl     $0x20,                 SF_FLG(%rsi)          # toggle entryfields
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EFld 18...1F
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L29:cmpq     $0x0200,               %r8                   # EN_KILLFOCUS?
          jne      XIZ
          leal     0x10(%ebx),            %ecx                  # RCX = EFld number
          movl     $0x06,                 %edx                  # RDX = EF_MESSAGE
          call     _STefd
          leal     0x0F(%eax),            %r8d                  # R08 = xxxN + 0x0F
          movl     $0x01,                 %edx                  # RDX = EF_SET
          andq     $0xFFF0,               %r8                   # R08 = xxx0
          call     _STefd
          movl     %eax,                  0x01F0(%rsi, %rbx, 4) # store SF_*
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn mnu+dlg <
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L30:movq     $0x00010000,           %r8                   # R08 = max
          subl     $0x0100,               %eax                  # RAX - 0x0100
          cmova    %eax,                  %r8d                  # n => use new
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                         >
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L31:movq     $0x0100,               %r8                   # R08 = min
          addl     $0x0100,               %eax                  # RAX + 0x0100
          cmpl     $0x00010000,           %eax                  # above?
          cmovbe   %eax,                  %r8d                  # n => use new
          .p2align 4,,15
        0:movl     $0x18,                 %ecx                  # RCX = EFld 18
          movl     %r8d,                  SF_DLG(%rsi)          # store
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn messages <
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L32:movq     $0x1000,               %r8                   # R08 = max
          subl     $0x10,                 %ebp                  # RAX - 0x10
          cmova    %ebp,                  %r8d                  # n => use new
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                          >
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L33:movq     $0x10,                 %r8                   # R08 = min
          addl     $0x10,                 %ebp                  # RAX + 0x10
          cmpl     $0x1000,               %ebp                  # above?
          cmovbe   %ebp,                  %r8d                  # n => use new
          .p2align 4,,15
        0:movl     $0x19,                 %ecx                  # RCX = EFld 19
          movl     %r8d,                  SF_MSG(%rsi)          # store
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn olh <
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L34:movq     $0x0400,               %r8                   # R08 = max
          subq     $0x10,                 %r10                  # RAX - 0x10
          cmova    %r10,                  %r8                   # n => use new
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     >
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L35:movq     $0x10,                 %r8                   # R08 = min
          addq     $0x10,                 %r10                  # RAX + 0x10
          cmpq     $0x0400,               %r10                  # above?
          cmovbe   %r10,                  %r8                   # n => use new
          .p2align 4,,15
        0:movl     $0x1A,                 %ecx                  # RCX = EFld 1A
          movl     %r8d,                  SF_OLH(%rsi)          # store
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn topics <
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L36:movq     $0x1000,               %r8                   # R08 = max
          subq     $0x20,                 %r11                  # RAX - 0x10
          cmova    %r11,                  %r8                   # n => use new
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                        >
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L37:movq     $0x20,                 %r8                   # R08 = min
          addq     $0x10,                 %r11                  # RAX + 0x10
          cmpq     $0x1000,               %r11                  # above?
          cmovbe   %r11,                  %r8                   # n => use new
          .p2align 4,,15
        0:movl     $0x1B,                 %ecx                  # RCX = EFld 1B
          movl     %r8d,                  SF_TOP(%rsi)          # store
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn spinbuttons <
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L38:movq     $0x4000,               %r8                   # R08 = max
          subq     $0x10,                 %r12                  # RAX - 0x10
          cmova    %r12,                  %r8                   # n => use new
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                             >
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L39:movq     $0x10,                 %r8                   # R08 = min
          addq     $0x10,                 %r12                  # RAX + 0x10
          cmpq     $0x4000,               %r12                  # above?
          cmovbe   %r12,                  %r8                   # n => use new
          .p2align 4,,15
        0:movl     $0x1C,                 %ecx                  # RCX = EFld 1C
          movl     %r8d,                  SF_SPN(%rsi)          # store
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn entryfields <
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L40:movq     $0x00010000,           %r8                   # R08 = max
          subq     $0x40,                 %r13                  # RAX - 0x40
          cmova    %r13,                  %r8                   # n => use new
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                             >
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L41:movq     $0x40,                 %r8                   # R08 = min
          addq     $0x40,                 %r13                  # RAX + 0x40
          cmpq     $0x00010000,           %r13                  # above?
          cmovbe   %r13,                  %r8                   # n => use new
          .p2align 4,,15
        0:movl     $0x1D,                 %ecx                  # RCX = EFld 1D
          movl     %r8d,                  SF_EFD(%rsi)          # store
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn SysStr  <
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L44:movq     $0x00000400,           %r8                   # R08 = max
          subq     $0x20,                 %r15                  # RAX - 0x20
          cmova    %r15,                  %r8                   # n => use new
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                         >
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L45:movq     $0x40,                 %r8                   # R08 = min
          addq     $0x20,                 %r15                  # RAX + 0x10
          cmpq     $0x00000400,           %r15                  # above?
          cmovbe   %r15,                  %r8                   # n => use new
          .p2align 4,,15
        0:movl     $0x1F,                 %ecx                  # RCX = EFld 1F
          movl     %r8d,                  SF_STR(%rsi)          # store
          jmp      1f
          /*
            ~~~~~~~~~~~~~~~~~~
            common PBtn <>
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        1:movl     $0x01,                 %edx                  # RDX = EF_SET
          call     _STefd
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn help
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L46:movl     $0x10,                 %ecx                  # RCX = help 10
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn create
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      sf0:call     _svFLD
          /*
            ~~~~~~~~~~~~~~~~~~
            copy system dlgs
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          leaq     BUFFER(%rsi),          %r14                  # R14 = EA buffer
          movl     IP_WRK(%rsi),          %r13d                 # R13 = offset IP
          movq     _MHSTR(%rip),          %rcx                  # RCX = MHSTR
          movl     $0x01,                 %edx                  # RDX = entry 01
          xorq     %r8,                   %r8                   # R08 = sub   00
          movq     $0x01,                 %r9                   # R09 = FDA_READ
          movq     %r14,                  0x20(%rsp)            # P_5 = EA
          leaq     PATH_X(%rsi),          %r12                  # R12 = EA tgt name
          addq     %rsi,                  %r13                  # R13 = EA IP
          call     _FDacc
          movq     %r14,                  %rcx                  # RCX = EA buffer
          call     _SLen
          subl     $0x06,                 %eax                  # RAX - 6 ("source")
          movdqa   sfmd2(%rip),           %xmm0
          movdqa   sfmd3(%rip),           %xmm1
          movl     %eax,                  IP_BUF(%rsi)          # store IP offset
          leaq     0x00(%r14, %rax),      %r15                  # R15 = EA IP src
          movdqu   %xmm1,                 0x00(%r13)            # append tgt name
          movdqu   %xmm0,                 0x00(%r15)            # append src name
          movq     %r14,                  %rcx                  # RCX = EA src name
          movq     %r12,                  %rdx                  # RDX = EA tgt name
          movq     $0x01,                 %r8                   # R08 = ask if exists
          call     _Fcopy
          /*
            ~~~~~~~~~~~~~~~~~~
            create menu+dlg
            ~~~~~~~~~~~~~~~~~~
          */
          movl     SF_DLG(%rsi),          %r10d                 # R10 = amount
          testl    $0x01,                 SF_FLG(%rsi)          # menu+dialogs?
          je       sf1
          movq     %r10,                  %r11                  # R11 = amount
          movq     %r10,                  %r12                  # R12 = amount
          movl     $0x0100,               %ebx                  # RBX = offset 00
          movl     $0x0100,               %ecx                  # RCX = header size
          shlq     $0x06,                 %r11                  # R11 = size OT * 16 * DD
          shlq     %r12                                         # R12 =      DW
          addl     %r11d,                 %ecx                  # RCX = header + OTs
          addl     %r12d,                 %ecx                  # RCX = file size
          call     _AloMem
          movl     %ecx,                  %r14d                 # R14 = field size
          movq     %rax,                  %r15                  # R15 = field EA
          testq    %rax,                  %rax                  # failed?
          je       R00
          movl     $0x40,                 %eax                  # RAX = max size
          shrq     $0x04,                 %r11                  # R11 = size OT * 1
          movl     IP_WRK(%rsi),          %r13d                 # R13 = IP[RSI]
          movdqa   sftyp(%rip),           %xmm0                 # XM0 = types 16 * 07
          movdqa   sfmd0(%rip),           %xmm1                 # XM1 = field name
          movdqa   sfmd1(%rip),           %xmm2                 # XM2 = file  name
          pxor     %xmm3,                 %xmm3                 # XM3 = 0
          mull     %r10d                                        # RAX = entries * max size
          addq     %rsi,                  %r13                  # R13 = IP
          movl     %eax,                  0x20(%r15)            # set   block size
          movl     $0x11,                 0x24(%r15)            #       type count
          movl     $0xFFFFFF12,           0x2C(%r15)            #       field number
          movl     $0x23,                 0x30(%r15)            #       flags
          movl     %r14d,                 0x34(%r15)            #       field size
          movl     $0x40,                 0x38(%r15)            #       max chars
          movl     %r10d,                 0x3C(%r15)            #       entries
          movdqa   %xmm0,                 0x40(%r15)            #       16 * $32
          movl     $0x02,                 0x50(%r15)            #       DW
          movl     %ebx,                  0x60(%r15)            #       OT 00
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x64(%r15)            #       OT 01
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x68(%r15)            #       OT 02
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x6C(%r15)            #       OT 03
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x70(%r15)            #       OT 04
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x74(%r15)            #       OT 05
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x78(%r15)            #       OT 06
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x7C(%r15)            #       OT 07
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x80(%r15)            #       OT 08
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x84(%r15)            #       OT 09
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x88(%r15)            #       OT 0A
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x8C(%r15)            #       OT 0B
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x90(%r15)            #       OT 0C
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x94(%r15)            #       OT 0D
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x98(%r15)            #       OT 0E
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x9C(%r15)            #       OT 0F
          addl     %r11d,                 %ebx
          movl     %ebx,                  0xA0(%r15)            #       OT 10
          movdqa   %xmm1,                 0xE0(%r15)            #       name
          movdqu   %xmm2,                 0x00(%r13)            #       file name
          movdqa   %xmm3,                 0x20(%rsp)            # clear FH
          movdqa   %xmm3,                 0x30(%rsp)
          movdqa   %xmm3,                 0x40(%rsp)
          leaq     0x20(%rsp),            %rcx                  # RCX = FH
          xorl     %edx,                  %edx                  # RDX = 0
          movq     $0x03,                 %r8                   # R08 = replace if exist
          leaq     PATH_X(%rsi),          %r9                   # R09 = EA SRC buffer
          call     _Fopen
          movq     %r9,                   MSGADR(%rsi)          # set message address
          movq     %r15,                  0x30(%rsp)            # set   FH.Mbase
          testl    %eax,                  %eax                  # failed?
          jne      R00
          movl     %r14d,                 %edx                  # RDX = size
          call     _Fwrite
          movl     %eax,                  %ebx                  # RBX = error
          call     _Fclose
          movq     %r15,                  %rcx                  # RCX = EA mem
          call     _FreMem
          testl    %ebx,                  %ebx                  # write failed?
          jne      R00
          /*
            ~~~~~~~~~~~~~~~~~~
            copy system dlgs
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      sf1:movl     IP_BUF(%rsi),          %eax                  # RAX = offset IP src
          movl     IP_WRK(%rsi),          %r13d                 # R13 = offset IP tgt
          leaq     BUFFER(%rsi),          %r14                  # R14 = EA buffer src
          leaq     PATH_X(%rsi),          %r12                  # R12 = EA tgt name
          addq     %rsi,                  %r13                  # R13 = EA IP tgt
          leaq     0x00(%r14, %rax),      %r15                  # R15 = EA IP src
          movdqa   sfms2(%rip),           %xmm0                 # XM0 = src
          movdqa   sfms3(%rip),           %xmm1                 # XM1 = tgt
          movdqu   %xmm1,                 0x00(%r13)            # append tgt name
          movdqu   %xmm0,                 0x00(%r15)            # append src name
          movq     %r14,                  %rcx                  # RCX = EA src name
          movq     %r12,                  %rdx                  # RDX = EA tgt name
          movq     $0x01,                 %r8                   # R08 = ask if exists
          call     _Fcopy
          /*
            ~~~~~~~~~~~~~~~~~~
            create messages
            ~~~~~~~~~~~~~~~~~~
          */
          movl     SF_MSG(%rsi),          %r10d                 # R10 = amount
          testl    $0x02,                 SF_FLG(%rsi)          # messages?
          je       sf2
          movq     %r10,                  %r11                  # R11 = amount
          movl     $0x0100,               %ebx                  # RBX = offset 00
          movl     $0x0100,               %ecx                  # RCX = header size
          shlq     $0x08,                 %r11                  # R11 = size OT * 16 * 4 * DD
          addl     %r11d,                 %ecx                  # RCX = header + OTs
          call     _AloMem
          movl     %ecx,                  %r14d                 # R14 = field size
          movq     %rax,                  %r15                  # R15 = field EA
          testq    %rax,                  %rax                  # failed?
          je       R01
          movl     $0x0400,               %eax                  # RAX = max size
          shrq     $0x04,                 %r11                  # R11 = size OT * 1
          shlq     $0x02,                 %r10                  # R10 = entries
          movl     IP_WRK(%rsi),          %r13d                 # R13 = IP[RSI]
          movdqa   sftyp(%rip),           %xmm0                 # XM0 = types 16 * 07
          movdqa   sfms0(%rip),           %xmm1                 # XM1 = field name
          movdqa   sfms1(%rip),           %xmm2                 # XM2 = file  name
          pxor     %xmm3,                 %xmm3                 # XM3 = 0
          mull     %r10d                                        # RAX = entries * max size
          addq     %rsi,                  %r13                  # R13 = IP
          movl     %eax,                  0x20(%r15)            # set   block size
          movl     $0x10,                 0x24(%r15)            #       type count
          movl     $0xFFFFFFF5,           0x2C(%r15)            #       field number
          movl     $0x23,                 0x30(%r15)            #       flags
          movl     %r14d,                 0x34(%r15)            #       field size
          movl     $0x0400,               0x38(%r15)            #       max chars
          movl     %r10d,                 0x3C(%r15)            #       entries
          movdqa   %xmm0,                 0x40(%r15)            #       16 * $32
          movl     %ebx,                  0x60(%r15)            #       OT 00
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x64(%r15)            #       OT 01
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x68(%r15)            #       OT 02
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x6C(%r15)            #       OT 03
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x70(%r15)            #       OT 04
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x74(%r15)            #       OT 05
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x78(%r15)            #       OT 06
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x7C(%r15)            #       OT 07
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x80(%r15)            #       OT 08
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x84(%r15)            #       OT 09
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x88(%r15)            #       OT 0A
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x8C(%r15)            #       OT 0B
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x90(%r15)            #       OT 0C
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x94(%r15)            #       OT 0D
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x98(%r15)            #       OT 0E
          addl     %r11d,                 %ebx
          movl     %ebx,                  0x9C(%r15)            #       OT 0F
          movdqa   %xmm1,                 0xE0(%r15)            #       name
          movdqu   %xmm2,                 0x00(%r13)            #       file name
          movdqa   %xmm3,                 0x20(%rsp)            # clear FH
          movdqa   %xmm3,                 0x30(%rsp)
          movdqa   %xmm3,                 0x40(%rsp)
          leaq     0x20(%rsp),            %rcx                  # RCX = FH
          xorl     %edx,                  %edx                  # RDX = 0
          movq     $0x03,                 %r8                   # R08 = replace if exist
          leaq     PATH_X(%rsi),          %r9                   # R09 = EA SRC buffer
          call     _Fopen
          movq     %r9,                   MSGADR(%rsi)          # set message address
          movq     %r15,                  0x30(%rsp)            # set   FH.Mbase
          testl    %eax,                  %eax                  # failed?
          jne      R01
          movl     %r14d,                 %edx                  # RDX = size
          call     _Fwrite
          movl     %eax,                  %ebx                  # RBX = error
          call     _Fclose
          movq     %r15,                  %rcx                  # RCX = EA mem
          call     _FreMem
          testl    %ebx,                  %ebx                  # write failed?
          jne      R01
          /*
            ~~~~~~~~~~~~~~~~~~
            create olh
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      sf2:
          /*
            ~~~~~~~~~~~~~~~~~~
            create topics
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      sf3:
          /*
            ~~~~~~~~~~~~~~~~~~
            create spinbuttons
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      sf4:
          /*
            ~~~~~~~~~~~~~~~~~~
            create entryfields
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      sf5:
          
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            error handling
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      R00:movl     %eax,                  MSG_V1(%rsi)
          movl     $0xFFFFFF12,           MSG_V2(%rsi)
          movl     $0x30,                 %ecx
          call     _ErrMgr
          jmp      sf1
          .p2align 4,,15
      R01:movl     %eax,                  MSG_V1(%rsi)
          movl     $0xFFFFFFF5,           MSG_V2(%rsi)
          movl     $0x31,                 %ecx
          call     _ErrMgr
          jmp      sf2



          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                    C O M M O N    P R O C E D U R E S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
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
      XIT:movq     0x88(%rsp),            %r15
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
          .comm    _MHSTR,                8, 3
