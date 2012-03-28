          /*
            ==================================================================================
                                  C A L C U L A T O R   (C) ST-Open 2011
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
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            jump table
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      jtc:.quad    L00                                   # 1320 CBox     OP1
          .quad    XIZ                                   # 1321 EFld
          .quad    L01                                   # 1322 > hex
          .quad    XIZ                                   # 1323 EFld
          .quad    L02                                   # 1324 > neg
          .quad    XIZ                                   # 1325 EFld
          .quad    L03                                   # 1326 > dec
          .quad    L04                                   # 1327 inc
          .quad    L05                                   # 1328 dec
          .quad    L06                                   # 1329 neg
          .quad    L07                                   # 132A not
          .quad    L08                                   # 132B unsigned
          .quad    L09                                   # 132C signed
          .quad    L10                                   # 132D <<
          .quad    L11                                   # 132E >>
          .quad    L12                                   # 132F EFld     XXXX
          .quad    L13                                   # 1330 shl
          .quad    L14                                   # 1331 shr
          .quad    L13                                   # 1332 sal
          .quad    L15                                   # 1333 sar
          .quad    L16                                   # 1334 rol
          .quad    L17                                   # 1335 ror
          .quad    L18                                   # 1336 ADD      CALC
          .quad    L19                                   # 1337 SUB
          .quad    L20                                   # 1338 MUL
          .quad    L21                                   # 1339 DIV
          .quad    L22                                   # 133A AND
          .quad    L23                                   # 133B OR
          .quad    L24                                   # 133C XOR
          .quad    L25                                   # 133D XCHG
          .quad    L26                                   # 133E CBox     OP2
          .quad    XIZ                                   # 133F EFld
          .quad    L27                                   # 1340 > hex
          .quad    XIZ                                   # 1341 EFld
          .quad    L28                                   # 1342 > neg
          .quad    XIZ                                   # 1343 EFld
          .quad    L29                                   # 1344 > dec
          .quad    L30                                   # 1345 inc
          .quad    L31                                   # 1346 dec
          .quad    L32                                   # 1347 neg
          .quad    L33                                   # 1348 not
          .quad    L34                                   # 1349 unsigned
          .quad    L35                                   # 134A signed
          .quad    L36                                   # 134B <<
          .quad    L37                                   # 134C >>
          .quad    L38                                   # 134D EFld     XXXX
          .quad    L39                                   # 134E shl
          .quad    L40                                   # 134F shr
          .quad    L39                                   # 1350 sal
          .quad    L41                                   # 1351 sar
          .quad    L42                                   # 1352 rol
          .quad    L43                                   # 1353 ror
          .quad    L44                                   # 1354 Dismiss
          .quad    L45                                   # 1355 Help
          .quad    L46                                   # 1356 <=
          .quad    L47                                   # 1357 =>
          .quad    XIZ                                   # 1358 EFld
          .quad    L48                                   # 1359 OP1 reset
          .quad    L49                                   # 135A     set
          .quad    L50                                   # 135B     store
          .quad    L51                                   # 135C     clear
          .quad    L52                                   # 135D OP2 reset
          .quad    L53                                   # 135E     set
          .quad    L54                                   # 135F     store
          .quad    L55                                   # 1360     clear
          .quad    L56                                   # 1361 RDX -> OP1
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            calc    calculator procedure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _calc
          .def     _calc; .scl 2; .type 32; .endef
    _calc:subq     $0xF8,               %rsp
          movq     _BNR(%rip),          %rax             # RAX = BNR
          movq     %r10,                0xA8(%rsp)
          movq     %r11,                0xB0(%rsp)
          movq     %rbp,                0xB8(%rsp)
          movq     %rsi,                0xC0(%rsp)
          movq     %rdi,                0xC8(%rsp)
          movq     %rbx,                0xD0(%rsp)
          movq     %r9,                 0xD8(%rsp)
          movq     %r8,                 0xE0(%rsp)
          movq     %rdx,                0xE8(%rsp)
          movq     %rcx,                0xF0(%rsp)
          movq     %rax,                %r11             # R11 = BNR
          movl     %r8d,                %r10d            # R10 = WPARAM
          movq     CA_SH1(%rax),        %rsi             # RSI = SH1
          movq     CA_SH2(%r11),        %rbp             # RBP = SH2
          movq     CA_OP1(%r11),        %rax             # RAX = OP1
          movq     CA_OP2(%r11),        %rbx             # RBX = OP2
          andl     $0x3F,               %esi
          andl     $0x3F,               %ebp
          movl     $0x01,               %r9d
          testl    %esi,                %esi
          cmove    %r9d,                %esi
          testl    %ebp,                %ebp
          cmove    %r9d,                %ebp
          andl     $0xFFFF,             %r8d             # R08 = control ID
          shrl     $0x10,               %r10d            # R10 = notification message
          subl     $0x0110,             %edx             # WM_INITDIALOG?
          je       IDLG
          decl     %edx                                  # WM_COMMAND?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          testl    $0x01,               SYS_FL(%r11)     # SYS_DLG_INIT?
          jne      XIZ
          xorl     %edx,                %edx
          subl     $0x1320,             %r8d
          js       XIZ
          cmpl     $0x41       ,        %r8d
          ja       XIZ
          popcnt   %ecx,                %r9d             # clear all flags
          jmp      *jtc(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 combobox
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 > hex
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:movl     $0x1321,             %edx
          leaq     0x20(%rsp),          %r8
          movl     $0x20,               %r9d
          call     _WnQDT
          movq     %r8,                 %rcx
          call     _hex2Q
          movq     %rax,                CA_OP1(%r11)
          xorl     %edx,                %edx
          popcnt   %ecx,                %r9d             # clear all flags
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 > 2's complement
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L02:movl     $0x1323,             %edx
          leaq     0x20(%rsp),          %r8
          movl     $0x20,               %r9d
          call     _WnQDT
          movq     %r8,                 %rcx
          call     _hex2Q
          negq     %rax
          xorl     %edx,                %edx
          popcnt   %ecx,                %r9d             # clear all flags
          movq     %rax,                CA_OP1(%r11)
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 > decimal
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L03:movl     $0x1325,             %edx
          leaq     0x20(%rsp),          %r8
          movl     $0x20,               %r9d
          call     _WnQDT
          movq     %r8,                 %rcx
          call     _dec2Q
          movq     %rax,                CA_OP1(%r11)
          xorl     %edx,                %edx
          popcnt   %ecx,                %r9d             # clear all flags
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 inc
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L04:incq     %rax
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 dec
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L05:decq     %rax
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 neg
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L06:negq     %rax
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 not
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L07:notq     %rax
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 unsigned
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L08:movl     $0x14,               CA_DS1(%r11)
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 signed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L09:movl     $0xFF14,             CA_DS1(%r11)
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 <<
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L10:xorl     %edi,                %edi
          cmpl     $0x01,               %esi
          cmove    %edi,                %esi
          decl     %esi
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 >>
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L11:incl     %esi                                  # shift count--
        0:movl     $0x01,               %edi             # min
          andl     $0x3F,               %esi             # mask to 0x3F
          testl    %esi,                %esi             # zero?
          cmove    %edi,                %esi             # min = 1
          popcnt   %ecx,                %r9d             # clear all flags
          movq     %rsi,                CA_SH1(%r11)
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 EFld shift bits
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L12:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 shl / sal
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L13:movq     %rsi,                %rcx
          shlq     %cl,                 %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 shr
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L14:movq     %rsi,                %rcx
          shrq     %cl,                 %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 sar
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L15:movq     %rsi,                %rcx
          sarq     %cl,                 %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 rol
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L16:movq     %rsi,                %rcx
          rolq     %cl,                 %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 ror
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L17:movq     %rsi,                %rcx
          rorq     %cl,                 %rax
        0:movq     0xF0(%rsp),          %rcx
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAL add
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L18:addq     %rbx,                %rax
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAL sub
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L19:subq     %rbx,                %rax
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAL mul
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L20:mulq     %rbx
          movq     %rdx,                CA_RDX(%r11)     # store RDX
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAL div
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L21:testq    %rbx,                %rbx             # catch divide by zero
          je       XIZ
          divq     %rbx
          movq     %rdx,                CA_RDX(%r11)     # store RDX
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAL and
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L22:andq     %rbx,                %rax
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAL or
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L23:orq      %rbx,                %rax
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAL xor
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L24:xorq     %rbx,                %rax
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAL xchg ops
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L25:xchgq    %rax,                %rbx
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 CBox
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L26:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 > hex
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L27:movl     $0x133F,             %edx
          xchgq    %rax,                %rbx
          leaq     0x20(%rsp),          %r8
          movl     $0x20,               %r9d
          call     _WnQDT
          movq     %r8,                 %rcx
          call     _hex2Q
          movq     %rax,                CA_OP2(%r11)
          xorl     %edx,                %edx
          xchgq    %rax,                %rbx
          popcnt   %ecx,                %r9d             # clear all flags
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 > 2's complement
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L28:movl     $0x1341,             %edx
          xchgq    %rax,                %rbx
          leaq     0x20(%rsp),          %r8
          movl     $0x20,               %r9d
          call     _WnQDT
          movq     %r8,                 %rcx
          call     _hex2Q
          negq     %rax
          xorl     %edx,                %edx
          popcnt   %ecx,                %r9d             # clear all flags
          movq     %rax,                CA_OP2(%r11)
          xchgq    %rax,                %rbx
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 > decimal
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L29:movl     $0x1343,             %edx
          xchgq    %rax,                %rbx
          leaq     0x20(%rsp),          %r8
          movl     $0x20,               %r9d
          call     _WnQDT
          movq     %r8,                 %rcx
          call     _dec2Q
          movq     %rax,                CA_OP2(%r11)
          xorl     %edx,                %edx
          xchgq    %rax,                %rbx
          popcnt   %ecx,                %r9d             # clear all flags
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 inc
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L30:incq     %rbx
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 dec
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L31:decq     %rbx
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 neg
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L32:negq     %rbx
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 not
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L33:notq     %rbx
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 unsigned
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L34:movl     $0x14,               CA_DS2(%r11)
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 signed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L35:movl     $0xFF14,             CA_DS2(%r11)
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 <<
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L36:xorl     %edi,                %edi
          cmpl     $0x01,               %ebp
          cmove    %edi,                %ebp
          decl     %ebp
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 >>
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L37:incl     %ebp                                  # shift count++
        0:movl     $0x01,               %edi             # min
          andl     $0x3F,               %ebp             # mask to 0x3F
          testl    %ebp,                %ebp             # zero?
          cmove    %edi,                %ebp             # min = 1
          popcnt   %ecx,                %r9d             # clear all flags
          movq     %rbp,                CA_SH2(%r11)
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 EFld shift bits
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L38:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 shl / sal
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L39:movq     %rbp,                %rcx
          shlq     %cl,                 %rbx
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 shr
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L40:movq     %rbp,                %rcx
          shrq     %cl,                 %rbx
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 sar
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L41:movq     %rbp,                %rcx
          sarq     %cl,                 %rbx
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 rol
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L42:movq     %rbp,                %rcx
          rolq     %cl,                 %rbx
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 ror
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L43:movq     %rbp,                %rcx
          rorq     %cl,                 %rbx
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            dismiss
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L44:xorq     %rdx,                %rdx             # RDX = RC (zero)
          call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L45:                                               # 
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 => OP1
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L46:movq     %rbx,                %rax             # OP2 => OP1
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 => OP2
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L47:movq     %rax,                %rbx             # OP1 => OP2
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 reset
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L48:xorl     %eax,                %eax             # OP1 = 0
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 set
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L49:xorl     %eax,                %eax             # OP1 = 0
          decq     %rax                                  # OP1 = -1
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 store current OP1
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L50:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP1 clear selection
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L51:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 reset
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L52:xorl     %ebx,                %ebx             # OP2 = 0
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 set
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L53:xorl     %ebx,                %ebx             # OP2 = 0
          decq     %rbx                                  # OP2 = -1
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 store current OP1
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L54:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OP2 clear selection
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L55:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            last RDX => OP1
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L56:movq     CA_RDX(%r11),        %rax
          jmp      DSP
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     IDLG:movl     $0x50,               %edx             # RDX = entry dlg
          movq     $0x51,               %r8              # R08 =       first
          movq     $0x63,               %r9              # R09 =       last
          call     _DLGtxt
          call     _CtrWn
          movl     CA_DS1(%r11),        %edx             # RDX = flags
          movl     CA_DS2(%r11),        %r10d            # R10 = flags
          orl      $0x01,               SYS_FL(%r11)     # set SYS_DLG_INIT
          shrl     $0x0F,               %edx             # RDX = 0 or 1
          shrl     $0x0F,               %r10d            # R10 = 0 or 1
          movl     $0x01,               %r8d             # R08 = TRUE
          addl     $0x132B,             %edx             # RDX = 132B/132C
          addl     $0x1349,             %r10d            # R10 = 1349/134A
          call     _SCkB
          movl     %r10d,               %edx             # RDX = ID RBtn
          call     _SCkB
          xorl     %edx,                %edx             # reset RDX
          popcnt   %ecx,                %r9d             # clear all flags
          movl     $0x01,               %edi             # RDI = rc
          movq     CA_OP1(%r11),        %rax             # RAX = OP1
          pushf
          andl     $0xFFFFFFFE,         SYS_FL(%r11)     # reset SYS_DLG_INIT
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SHOW RESULTS
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      DSP:pushf
          xorl     %edi,                %edi
          movq     %rax,                CA_OP1(%r11)
          movq     %rbx,                CA_OP2(%r11)
        0:popq     %r9                                   # R09 = flags
          movq     %rdx,                0xB0(%rsp)
          movq     %rax,                %rcx             # RCX = OP1
          movq     EA_OBF(%r11),        %rdx             # RDX = 00[OBF]
          movl     CA_DS1(%r11),        %r8d             # R08 = OP1 flags
          call     _Q2hex
          addq     $0x20,               %rdx             # RDX = 20[OBF]
          call     _Q2dec
          negq     %rcx                                  # RCX = 2's complement
          addq     $0x20,               %rdx             # RDX = 40[OBF]
          call     _Q2hex
          movq     %rbx,                %rcx             # RCX = OP2
          addq     $0x20,               %rdx             # RDX = 60[OBF]
          movl     CA_DS2(%r11),        %r8d             # R08 = OP2 flags
          call     _Q2hex
          addq     $0x20,               %rdx             # RDX = 80[OBF]
          call     _Q2dec
          negq     %rcx                                  # RCX = 2's complement
          addq     $0x20,               %rdx             # RDX = A0[OBF]
          call     _Q2hex
          movl     %esi,                %ecx             # RCX = SH1
          addq     $0x20,               %rdx             # RDX = C0[OBF]
          call     _B2hex
          movl     %ebp,                %ecx             # RCX = SH2
          addq     $0x08,               %rdx             # RDX = C8[OBF]
          call     _B2hex
          movq     0xB0(%rsp),          %rcx             # RCX = RDX
          addq     $0x08,               %rdx             # RDX = D0[OBF]
          call     _Q2hex
          movq     0xF0(%rsp),          %rcx             # RCX = HWND
          movl     $0x1321,             %edx             # RDX = ID OP1 hex
          movq     EA_OBF(%r11),        %r8              # R08 = 00[OBF]
          call     _WnSDT
          movl     $0x1325,             %edx             # RDX = ID OP1 dec
          addq     $0x20,               %r8              # R08 = 20[OBF]
          call     _WnSDT
          movl     $0x1323,             %edx             # RDX = ID OP1 2c
          addq     $0x20,               %r8              # R08 = 40[OBF]
          call     _WnSDT
          movl     $0x133F,             %edx             # RDX = ID OP2 hex
          addq     $0x20,               %r8              # R08 = 60[OBF]
          call     _WnSDT
          movl     $0x1343,             %edx             # RDX = ID OP2 2dec
          addq     $0x20,               %r8              # R08 = 80[OBF]
          call     _WnSDT
          movl     $0x1341,             %edx             # RDX = ID OP2 2c
          addq     $0x20,               %r8              # R08 = A0[OBF]
          call     _WnSDT
          movl     $0x132F,             %edx             # RDX = ID OP1 shift
          addq     $0x20,               %r8              # R08 = C0[OBF]
          call     _WnSDT
          movl     $0x134D,             %edx             # RDX = ID OP2 shift
          addq     $0x08,               %r8              # R08 = C8[OBF]
          call     _WnSDT
          movl     $0x1358,             %edx             # RDX = ID RDX
          addq     $0x08,               %r8              # R08 = D0[OBF]
          call     _WnSDT
          movl     %r9d,                %r8d             # R08 = flags
          movl     $0x130B,             %edx             # RDX = ID
          shrl     $0x02,               %r9d             # ESI > P
          andl     $0x01,               %r8d             # R08 = C
          call     _CtlSh
          movl     %r9d,                %r8d             # R08 = flags
          decl     %edx                                  # RDX = ID
          shrl     $0x02,               %r9d             # ESI > A
          andl     $0x01,               %r8d             # R08 = P
          call     _CtlSh
          movl     %r9d,                %r8d             # R08 = flags
          decl     %edx                                  # RDX = ID
          shrl     $0x02,               %r9d             # ESI > Z
          andl     $0x01,               %r8d             # R08 = A
          call     _CtlSh
          movl     %r9d,                %r8d             # R08 = flags
          decl     %edx                                  # RDX = ID
          shrl     $0x01,               %r9d             # ESI > S
          andl     $0x01,               %r8d             # R08 = Z
          call     _CtlSh
          movl     %r9d,                %r8d             # R08 = flags
          decl     %edx                                  # RDX = ID
          shrl     $0x04,               %r9d             # ESI > O
          andl     $0x01,               %r8d             # R08 = S
          call     _CtlSh
          movl     %r9d,                %r8d             # R08 = flags
          decl     %edx                                  # RDX = ID
          andl     $0x01,               %r8d             # R08 = O
          call     _CtlSh
          movl     %edi,                %eax
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorq     %rax,                %rax
      XIT:movq     0xA8(%rsp),          %r10
          movq     0xB0(%rsp),          %r11
          movq     0xB8(%rsp),          %rbp
          movq     0xC0(%rsp),          %rsi
          movq     0xC8(%rsp),          %rdi
          movq     0xD0(%rsp),          %rbx
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
          .comm    _TST,                8, 3
