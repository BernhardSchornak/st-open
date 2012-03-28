          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                 E N T R Y F I E L D S   (C) ST-Open 2012
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
            This file provides automated entryfield control procedures. (Due to Windows' fable
            to generate tons of messages, about 99 percent of your calls return unprocessed.)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            TYPES           00   decimal      32 bit (10 digits)
                            01                64 bit (20 digits)
                            02   hexadecimal   8 bit ( 2 digits)
                            03                16 bit ( 4 digits)
                            04                32 bit ( 8 digits)
                            05                64 bit (16 digits)
                            06               128 bit (32 digits)
                            07   date iso     32 bit ( 8 digits)
                            08        eu      32 bit ( 8 digits)
                            09   time   Sh    32 bit ( 8 digits)
                            0A         MSh    32 bit ( 8 digits)
                            0B        HMSh    32 bit ( 8 digits)
                            0C        HMS     32 bit ( 8 digits)
                            0D        HM      32 bit ( 8 digits)
                            0E   string       ASCII (direct)
                            0F                DBE   (fields)
            ----------------------------------------------------------------------------------
            STRUCTURE       00 DQ   EF_EHW    HWND (set by _STefd)
                            08 DD   EF_EID    resource ID
                            0C DD   EF_FLG    EFld flags
                            10 DD   EF_TYP    type (00...0F)
                            14 DD   EF_TFL         flags   [entry]
                            18 DD   EF_TDA         data    [sub]
                            1C DD   EF_MCH    max chars
                            20 DQ   EF_MIN    minimum      [MH]
                            28 DQ   EF_MAX    maximum      [EA string]
                            30 DO   EF_CUR    current (numeric)
                            40 []   EFCONT    content (display)
             ================================================================================ 
            |               EFld HWND               |    resourceID     |     EFld flags     |
             --------------------------------------------------------------------------------
            |      t y p e      |     typeflags     |    type  data     |     max. chars     |
             --------------------------------------------------------------------------------
            |             m i n i m u m             |             m a x i m u m              |
             --------------------------------------------------------------------------------
            |                       c u r r e n t    ( n u m e r i c )                       |
             --------------------------------------------------------------------------------
            |                                                                                |
             --------------------------------------------------------------------------------
            |                              e n t r y f i e l d                               |
             --------------------------------------------------------------------------------
            |                                 c o n t e n t                                  |
             --------------------------------------------------------------------------------
            |                                                                             |00|
             ================================================================================ 
            ----------------------------------------------------------------------------------
            COMMAND       RCX        RDX   R08          R09
            ----------------------------------------------------------------------------------
            EFD_INIT      number     00    HWND dlg     -
            EFD_SET       number     01    [numeric]    [EA]       TYPE 0F: R08 = [entry][sub]
            EFD_GET       number     02    -            -          queries content of EFld!
            EFD_RDSTRCT   number     03    -            [EA]buffer (buffer size = 0x80)
            EFD_WRSTRCT   number     04    -            [EA]buffer (buffer size = 0x80)
            EFD_RESET     number     05    -            -          (clears content/FDA_DELETE)
            EFD_MESSAGE   number     06    W1[WPARAM]   LPARAM     (if W1[WPARAM] = 0x0200)
            EFD_SETTYPE   number     07    -            EA {type, flags, data, max_char}
            EFD_SETMH     number     08    MemHandle    -
            EFD_SETMIN    number     09    min          -
            EFD_SETMAX    number     0A    max          -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAUTION:

            EF_SETMH must be called before EF_INIT - a MemHandle is required for accessing the
            field's content. All other commands must not be called before EF_INIT (there is no
            HWND until EF_INIT was executed).
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section .rdata, "dr"
          .p2align 4, 0x00, 15
      jt0:.quad    L00
          .quad    L01
          .quad    L02
          .quad    L03
          .quad    L04
          .quad    L05
          .quad    L06
          .quad    L07
          .quad    L08
          .quad    L09
          .quad    L10
          .quad    L02
          .quad    L02
          .quad    L02
          .quad    L02
          .quad    L02
      jt1:.quad    set0
          .quad    set0
          .quad    set0
          .quad    set0
          .quad    set0
          .quad    set0
          .quad    set1
          .quad    set0
          .quad    set0
          .quad    set0
          .quad    set0
          .quad    set0
          .quad    set0
          .quad    set0
          .quad    set2
          .quad    set3
      ft0:.quad    _dec2D
          .quad    _dec2Q
          .quad    _hex2D
          .quad    _hex2D
          .quad    _hex2D
          .quad    _hex2Q
          .quad    0x00
          .quad    _s2DMY
          .quad    _s2DMY
          .quad    _s2HMS
          .quad    _s2HMS
          .quad    _s2HMS
          .quad    _s2HMS
          .quad    _s2HMS
          .quad    0x00
          .quad    0x00
      ft1:.quad    _D2dec
          .quad    _Q2dec
          .quad    _B2hex
          .quad    _W2hex
          .quad    _D2hex
          .quad    _Q2hex
          .quad    0x00
          .quad    _d2iso
          .quad    _d2out
          .quad    _t2out
          .quad    _t2out
          .quad    _t2out
          .quad    _t2out
          .quad    _t2out
          .quad    0x00
          .quad    0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            STefd
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    entryfield number
               RDX    command
               R08    option: numeric
               R09    option: address
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX    0000 0000   ERR_NO_ERROR
                      xxxx xxxx   
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _STefd
          .def     _STefd; .scl 2; .type 32; .endef
   _STefd:subq     $0xF8,                 %rsp
          movq     _BNR(%rip),            %rax              # RAX = BNR
          movq     $0x00,                 0x80(%rsp)
          movq     %r15,                  0x88(%rsp)
          movq     %r14,                  0x90(%rsp)
          movq     %r13,                  0x98(%rsp)
          movq     %r12,                  0xA0(%rsp)
          movq     %r11,                  0xA8(%rsp)
          movq     %r10,                  0xB0(%rsp)
          movq     %rbx,                  0xB8(%rsp)
          movq     EA__EF(%rax),          %r15              # R15 = EA__EF
          movq     %rdi,                  0xC0(%rsp)
          movq     %rsi,                  0xC8(%rsp)
          movq     %rbp,                  0xD0(%rsp)
          movq     %r9,                   0xD8(%rsp)
          movq     %r8,                   0xE0(%rsp)
          movq     %rdx,                  0xE8(%rsp)
          movq     %rcx,                  0xF0(%rsp)
          testq    %r15,                  %r15              # field loaded?
          je       ldfld
      res:shll     $0x07,                 %ecx              # RCX = offset block
          andl     $0x0F,                 %edx              # RDX = valid command
          addq     %rcx,                  %r15              # R15 = EA structure
          movq     EF_EHW(%r15),          %r14              # R14 = HWND
          movl     EF_TYP(%r15),          %ebx              # RBX = type
          movl     EF_TFL(%r15),          %edi              # RDI = type flags
          movl     EF_TDA(%r15),          %ebp              # RBP =      data
          movq     EF_MIN(%r15),          %r10              # R10 = min
          movq     EF_MAX(%r15),          %r11              # R11 = max
          movq     EF_CUR(%r15),          %r12              # R12 = current
          leaq     EFCONT(%r15),          %r13              # R13 = EA content
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~
            for unwanted messages...
            ~~~~~~~~~~~~~~~~~~~~~~~~
          */
          leaq     0x00(%r12),            %rax              # RAX = EA current
          cmpl     $0x06,                 %ebx              # 128 bit?
          cmovne   %r12,                  %rax              # => content
          cmpl     $0x0D,                 %ebx              # strings?
          cmova    %r13,                  %rax              # => EA content
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~
            default processing
            ~~~~~~~~~~~~~~~~~~~~~~~~
          */
          cmpl     $0x00,                 EF_FLG(%r15)      # busy?
          jne      XIZ
          movl     $0x01,                 EF_FLG(%r15)      # set busy
          jmp      *jt0(, %rdx, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EF_INIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EFld number
               RDX   0x00
               R08   HWND dialog
               R09   -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            retrieve HWND of EFld, set max
            text size specified by EF_MCH
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:movl     EF_EID(%r15),          %edx              # RDX = ID
          movl     EF_MCH(%r15),          %esi              # RSI = max chars
          movq     %r8,                   %rcx              # RCX = HWND dlg
          call     _WinId
          movq     %rax,                  %r14              # R14 = HWND
          movq     %rax,                  EF_EHW(%r15)      # store HWND
          movq     %rax,                  %rcx              # RCX = HWND
          movl     $0xC5,                 %edx              # RDX = EM_SETLIMITTEXT
          movl     %esi,                  %r8d              # R08 = max char
          xorq     %r9,                   %r9               # R09 = NULL
          call     _SendM
          jmp      dsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EF_SET
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EFld number
               RDX   0x01
               R08   numeric input
               R09   EA data
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            set structure to passed data -
            checks range, updates control
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:movq     %r9,                   0x20(%rsp)        # P_5 = EA input
          jmp      *jt1(, %rbx, 8)
          /*
            ~~~~~~~~~~~~~~~~~
            numeric
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     set0:movq     %r8,                   %r12              # R12 = input
          jmp      dsp
          /*
            ~~~~~~~~~~~~~~~~~
            128 bit
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     set1:testq    %r9,                   %r9               # valid address?
          je       XIZ
          movdqu   0x00(%r9),             %xmm0             # copy
          movdqa   %xmm0,                 EF_CUR(%r15)
          jmp      dsp
          /*
            ~~~~~~~~~~~~~~~~~
            string
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     set2:testq    %r9,                   %r9               # valid address?
          je       XIZ
        0:movdqu   0x00(%r9),             %xmm0             # copy
          movdqu   0x10(%r9),             %xmm1
          movdqu   0x20(%r9),             %xmm2
          movdqu   0x30(%r9),             %xmm3
          movdqa   %xmm0,                 0x40(%r15)
          movdqa   %xmm1,                 0x50(%r15)
          movdqa   %xmm2,                 0x60(%r15)
          movdqa   %xmm3,                 0x70(%r15)
          movb     $0x00,                 0x7F(%r15)        # force terminate
          jmp      dsp
          /*
            ~~~~~~~~~~~~~~~~~
            field
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     set3:movq     %r8,                   %rdx              # RDX = [TFL][TDA]
          movq     %r13,                  0x20(%rsp)        # P_5 = EA content
          movq     %r10,                  %rcx              # RCX = MH
          shrq     $0x20,                 %rdx              # RDX = entry (TFL)
          andq     $0x1F,                 %r8               # R08 = sub   (TDA)
          movq     $0x01,                 %r9               # R09 = FDA_READ
          call     _FDacc
          movl     %edx,                  EF_TFL(%r15)      # store TFL
          movl     %r8d,                  EF_TDA(%r15)      #       TDA
          movl     %edx,                  %edi              # RDI = TFL
          movl     %r8d,                  %ebp              # RBP = TDA
          jmp      dsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EF_GET
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EFld number
               RDX   0x02
               R08   -
               R09   -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   current (8...64 bit)
                     EA data (06, 0E, 0F)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L02:movq     $0x0200,               %r8               # R08 = WM_KILLFOCUS
          jmp      L06
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EF_RDSTRCT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EFld number
               RDX   0x03
               R08   -
               R09   EA structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            passed 128 byte block receives
            a copy of control block
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L03:testq    %r9,                   %r9               # address given?
          je       XIZ
          movdqa   0x00(%r15),            %xmm0             # copy to target
          movdqa   0x10(%r15),            %xmm1
          movdqa   0x20(%r15),            %xmm2
          movdqa   0x30(%r15),            %xmm3
          movdqa   %xmm0,                 0x00(%r9)
          movdqa   %xmm1,                 0x10(%r9)
          movdqa   %xmm2,                 0x20(%r9)
          movdqa   %xmm3,                 0x30(%r9)
          movdqa   0x40(%r15),            %xmm0
          movdqa   0x50(%r15),            %xmm1
          movdqa   0x60(%r15),            %xmm2
          movdqa   0x70(%r15),            %xmm3
          movdqa   %xmm0,                 0x40(%r9)
          movdqa   %xmm1,                 0x50(%r9)
          movdqa   %xmm2,                 0x60(%r9)
          movdqa   %xmm3,                 0x70(%r9)
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EF_WRSTRCT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EFld number
               RDX   0x04
               R08   -
               R09   EA structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            control block is set to passed
            data, display is updated
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L04:testq    %r9,                   %r9               # address given?
          je       XIZ
          movdqa   0x00(%r9),             %xmm0             # copy to target
          movdqa   0x10(%r9),             %xmm1
          movdqa   0x20(%r9),             %xmm2
          movdqa   0x30(%r9),             %xmm3
          movdqa   %xmm0,                 0x00(%r15)
          movdqa   %xmm1,                 0x10(%r15)
          movdqa   %xmm2,                 0x20(%r15)
          movdqa   %xmm3,                 0x30(%r15)
          movdqa   0x40(%r9),             %xmm0
          movdqa   0x50(%r9),             %xmm1
          movdqa   0x60(%r9),             %xmm2
          movdqa   0x70(%r9),             %xmm3
          movdqa   %xmm0,                 0x40(%r15)
          movdqa   %xmm1,                 0x50(%r15)
          movdqa   %xmm2,                 0x60(%r15)
          movdqa   %xmm3,                 0x70(%r15)
          movl     EF_TYP(%r15),          %ebx              # RBX = type
          movl     EF_TFL(%r15),          %edi              # RDI = type flags
          movl     EF_TDA(%r15),          %ebp              # RBP =      data
          movq     EF_MIN(%r15),          %r10              # R10 = min
          movq     EF_MAX(%r15),          %r11              # R11 = max
          movq     EF_CUR(%r15),          %r12              # R12 = current
          cmpl     $0x0F,                 %ebx              # field?
          jne      dsp
          movq     %r13,                  0x20(%rsp)        # P_5 = EA source
          movq     %r10,                  %rcx              # RCX = MH
          movl     %edi,                  %edx              # RDX = entry
          movl     %ebp,                  %r8d              # R08 = sub
          movq     $0x02,                 %r9               # R09 = FDA_WRITE
          call     _FDacc
          jmp      dsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EF_RESET
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EFld number
               RDX   0x05
               R08   -
               R09   -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            reset current and clear buffer
            (numeric types are set to min)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L05:pxor     %xmm0,                 %xmm0
          pxor     %xmm1,                 %xmm1
          pxor     %xmm2,                 %xmm2
          pxor     %xmm3,                 %xmm3
          movdqa   %xmm0,                 0x30(%r15)        # current = 0
          movdqa   %xmm1,                 0x40(%r15)        # empty string
          movdqa   %xmm2,                 0x50(%r15)
          movdqa   %xmm3,                 0x60(%r15)
          movdqa   %xmm0,                 0x70(%r15)
          cmpl     $0x0F,                 %ebx              # field?
          jne      dsp
          movq     %r10,                  %rcx              # RCX = MH
          movl     %edi,                  %edx              # RDX = entry
          movl     %ebp,                  %r8d              # R08 = sub
          movq     $0x03,                 %r9               # R09 = FDA_DELETE
          call     _FDacc
          jmp      dsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EF_MESSAGE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EFld number
               RDX   0x06
               R08   W1[WPARAM]
               R09   -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            handle WM_COMMAND messages
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L06:cmpq     $0x0200,               %r8               # EN_KILLFOCUS?
          jne      XIT
          leaq     ft0(%rip),             %rsi              # RSI = EA table
          movq     %r14,                  %rcx              # RCX = HWND
          movq     %r13,                  %rdx              # RDX = buffer EA
          movq     $0x40,                 %r8               # R08 =        size
          movq     0x00(%rsi, %rbx, 8),   %rsi              # RSI = EA function
          Call     _WnQTx
          movq     %r13,                  %rcx              # RCX = EA source
          cmpl     $0x06,                 %ebx              # 128 bit?
          je       0f
          movq     %r13,                  0x20(%rsp)        # P_5 = EA source
          cmpl     $0x0E,                 %ebx              # string?
          je       dsp
          ja       1f
          /*
            ~~~~~~~~~~~~~~~~~
            numeric
            ~~~~~~~~~~~~~~~~~
          */
          call     *%rsi
          movq     %rax,                  %r12              # R12 = current
          jmp      dsp
          /*
            ~~~~~~~~~~~~~~~~~
            128 bit
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:leaq     EF_CUR(%r15),          %rdx              # RDX =    target
          movq     $0x01,                 %r8               # R08 = 1 paragraph
          call     _ps2h
          jmp      dsp
          /*
            ~~~~~~~~~~~~~~~~~
            string (field)
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        1:movq     %r10,                  %rcx              # RCX = MH
          movl     %edi,                  %edx              # RDX = entry
          movl     %ebp,                  %r8d              # R08 = sub
          movq     $0x02,                 %r9               # R09 = FDA_WRITE
          call     _FDacc
          jmp      dsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EF_SETTYPE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EFld number
               RDX   0x07
               R08   -
               R09   EA data
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            set type, type flags and data,
            max chars to passed parameters
            DO NOT CALL BEFORE EF_INIT!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L07:testq    %r9,                   %r9               # NULL?
          je       XIZ
          movl     0x00(%r9),             %ebx              # RBX = type
          movl     0x04(%r9),             %edi              # RDI = type flags
          movl     0x08(%r9),             %ebp              # RBP =      data
          movl     0x0C(%r9),             %eax              # RAX = max chars
          movl     %ebx,                  EF_TYP(%r15)      # store
          movl     %edi,                  EF_TFL(%r15)
          movl     %ebp,                  EF_TDA(%r15)
          movl     %eax,                  EF_MCH(%r15)
          movq     %r14,                  %rcx              # RCX = HWND
          movl     $0xC5,                 %edx              # RDX = EM_SETLIMITTEXT
          movl     %eax,                  %r8d              # R08 = max char
          xorq     %r9,                   %r9               # R09 = NULL
          call     _SendM
          jmp      dsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EF_SETMH
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EFld number
               RDX   0x08
               R08   MH
               R09   -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Set MemHandle - must be called
            prior to EF_INIT!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L08:cmpl     $0x0F,                 %ebx              # field?
          jne      XIZ
          movq     %r8,                   EF_MIN(%r15)      # set MH
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EF_SETMIN
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EFld number
               RDX   0x09
               R08   min
               R09   -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Set minimum - ignored if not a
            numeric type
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L09:cmpl     $0x06,                 %ebx              # 128 bit?
          je       XIZ
          cmpl     $0x0D,                 %ebx              # strings?
          ja       XIZ
          movq     %r8,                   EF_MIN(%r15)      # store min
          movq     %r8,                   %r10              # R10 = min
          jmp      dsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EF_SETMAX
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EFld number
               RDX   0x09
               R08   max
               R09   -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Set maximum - ignored if not a
            numeric type
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L10:cmpl     $0x06,                 %ebx              # 128 bit?
          je       XIZ
          cmpl     $0x0D,                 %ebx              # strings?
          ja       XIZ
          movq     %r8,                   EF_MAX(%r15)      # store max
          movq     %r8,                   %r11              # R11 = max
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            display data
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Types 00 - 05 and 07 - 0D automatically are kept
            in the range EF_MIN through EF_MAX. 128 bit data
            are treated as strings, but are reduced to chars
            0x30...0x39, 0x41...0x46 and 0x20 (separator).
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      dsp:leaq     ft1(%rip),             %rsi              # RSI = EA table
          cmpl     $0x06,                 %ebx              # 128 bit?
          je       0f
          movq     0x00(%rsi, %rbx, 8),   %rsi              # RSI = EA function
          cmpl     $0x0E,                 %ebx              # string?
          je       2f
          ja       1f
          /*
            ~~~~~~~~~~~~~~~~~
            numeric
            ~~~~~~~~~~~~~~~~~
          */
          cmpq     %r10,                  %r12              # below?
          cmovb    %r10,                  %r12              # -> min
          cmpq     %r11,                  %r12              # above?
          cmova    %r11,                  %r12              # -> max
          movq     %r12,                  %rcx              # RCX = cur
          movq     %r13,                  %rdx              # RDX = EA buffer
          movl     %edi,                  %r8d              # R08 = type flags
          movq     %r12,                  EF_CUR(%r15)      # store current
          movq     %r12,                  0x80(%rsp)        # RC  = current
          call     *%rsi
          jmp      2f
          /*
            ~~~~~~~~~~~~~~~~~
            128 bit
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:leaq     EF_CUR(%r15),          %rcx              # RCX = EA source
          movq     %r13,                  %rdx              # RDX =    target
          movq     $0x01,                 %r8               # R08 = 1 paragraph
          movq     %rcx,                  0x80(%rsp)        # RC  = EA cur
          call     _ph2s
          jmp      2f
          /*
            ~~~~~~~~~~~~~~~~~
            string (field)
            ~~~~~~~~~~~~~~~~~
          */
        1:movq     %r10,                  %rcx              # RCX = MH
          movl     %edi,                  %edx              # RDX = entry
          movl     %ebp,                  %r8d              # R08 = sub
          movq     $0x07,                 %r9               # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rax,                  0x80(%rsp)        # RC  = EA string
          movq     %rax,                  %r13              # R13 = EA string
          /*
            ~~~~~~~~~~~~~~~~~
            set text
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        2:movq     %r14,                  %rcx              # RCX = HWND
          movq     %r13,                  %rdx              # RDX = EA buffer
          call     _WnSTx
          movl     $0xB9,                 %edx              # RDX = EM_SETMODIFY
          xorq     %r8,                   %r8               # R08 = FALSE
          xorq     %r9,                   %r9               # R09 = NULL
          call     _SendM
          movq     0x80(%rsp),            %rax              # get RC for EFD_MESSAGE
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            load field FFFFFF02
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    ldfld:leaq     EA__EF(%rsi),          %rcx              # RCX = LD
          call     _LDreq
          movq     EA__EF(%rsi),          %r15              # R15 = EA field
          movq     0xF0(%rsp),            %rcx              # RCX = entry
          testl    %eax,                  %eax              # error?
          jne      XIT
          addq     $0x0100,               EA__EF(%rsi)      # ignore header
          addq     $0x0100,               %r15              # R15 = EA data
          jmp      res
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorl     %eax,                  %eax
      XIT:movl     $0x00,                 EF_FLG(%r15)      # reset busy
          movq     0x88(%rsp),            %r15
          movq     0x90(%rsp),            %r14
          movq     0x98(%rsp),            %r13
          movq     0xA0(%rsp),            %r12
          movq     0xA8(%rsp),            %r11
          movq     0xB0(%rsp),            %r10
          movq     0xB8(%rsp),            %rbx
          movq     0xC0(%rsp),            %rdi
          movq     0xC8(%rsp),            %rsi
          movq     0xD0(%rsp),            %rbp
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
