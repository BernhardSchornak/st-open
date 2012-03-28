          /*
            ==================================================================================
                    E N H A N C E D   S P I N B U T T O N S    (C) ST-Open 1979 - 2012
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
            SPN.S provides a set of 9 field controlled spinbuttons as enhancement for Window's
            default spinbutton control - hex and decimal numbers, times and dates are properly
            formatted and aligned to the right edge of the spinbutton.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Commands          description               R08                 R09
            ----------------------------------------------------------------------------------
            00 SPN_INIT       initialise spinbutton     HWND dialog         -
            01 SPN_NOTIFY     WM_NOTIFY received        WPARAM              LPARAM
            02 SPN_EDITED     entryfield was edited     WPARAM              LPARAM
            03 SPN_SET        set current content       number              EA
            04 SPN_QUERY      get current content       -                   EA (strings, only)
            05 SPN_GETSTRUC   read  64 byte structure   -                   EA buffer
            06 SPN_SETSTRUC   write 64 byte structure   -                   EA buffer
            07 SPN_SETTYPE    change spinbutton type    new type            -
            08 SPN_SETLIMITS  set minimum and maximum   -                   EA (DQ min DQ max)
            09 SPN_SETTFLAGS      type flags            flags               -
            0A SPN_SETMH          MemHandle             MemHandle           -
            0B SPN_SETSUB         subfield (type data)  subfield            -
            0C SPN_STRAIGHT   ignore accellerator       WPARAM              LPARAM
            ----------------------------------------------------------------------------------
            -        content ignored
            EA       address of a buffer or SPN structure
            WPARAM   WPARAM from a WM_COMMAND or WM_NOTIFY message
            LPARAM   LPARAM from a WM_COMMAND or WM_NOTIFY message
            HWND     HWND of the dialog the spinbutton belongs to
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Spinbutton types  description                              input   output
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            00 SPN_DEC32      decimal numbers     max. 10 digits         R08      EAX   (DD)
            01 SPN_DEC64                          max. 20 digits         R08      RAX   (DQ)
            02 SPN_HEX08      hexadecimal numbers with  2 digits         R08      AL    (DB)
            03 SPN_HEX16                                4 digits         R08      AX    (DW)
            04 SPN_HEX32                                8 digits         R08      EAX   (DD)
            05 SPN_HEX64                               16 digits         R08      RAX   (DQ)
            06 SPN_DATE_ISO   date ISO [YYYY-MM-DD]                      R08      EAX   (DMY)
            07 SPN_DATE_EU         EU  [DD.MM.YYYY]                      R08      EAX   (DMY)
            08 SPN_TIME_SH    time     [      SS.hh]                     R08      EAX   (HMS)
            09 SPN_TIME_MSH            [   MM:SS.hh]                     R08      EAX   (HMS)
            0A SPN_TIME_HMSH           [HH:MM:SS.hh]                     R08      EAX   (HMS)
            0B SPN_TIME_HMS            [HH:MM:SS   ]                     R08      EAX   (HMS)
            0C SPN_TIME_HM             [HH:MM      ]                     R08      EAX   (HMS)
            0D SPN_STR        string array from field                    R09      RAX   (EA)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SPN structure     description
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            |                minimum                |                maximum                 |
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            |                current                |              HWND dialog               |
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            |   ID entryfield   |   ID spinbutton   |             MemHandle $$               |
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            |     spin type     |    spin  flags    |    type  flags    |    subfield $$     |
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            00 DQ   SP_MIN    minimum value (first entry in datafield)
            08 DQ   SP_MAX    maximum value (last  entry in datafield)
            10 DQ   SP_CUR    current value (entry number)
            18 DQ   SP_EHW    HWND of the associated entryfield
            20 DD   SP_EID    ID   of the associated entryfield
            24 DD   SP_SID    ID   of the spinbutton (UpDown) control
            28 DQ   SP_FMH    SPN_STR  : MemHandle of the field
            30 DD   SP_TYP    spinbutton type
            34 DD   SP_FLG    spinbutton flags
            38 DD   SP_TFL    SPN_TIME : time format (0...4) as defined in tms.S
                              SPN_DATE : date format (0 = European, 1 = ISO)
                              SPN_DECx : D2dec or Q2dec flags (pseudoFP, sign, digits)
            3C DD   SP_TDA    SPN_STR  : number of subfield
                              size = 0x40
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SPN flags         description
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            80                -
            40                -
            20                -
            10                -
            08                -
            04                -
            02                -
            01                spinbutton engaged
            ==================================================================================
          */
          .include "..\\..\\..\\include\\yasm.h"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            jump tables
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section .rdata, "dr"
          .p2align 4,0x00,15
    jtcmd:.quad    spinit
          .quad    notify
          .quad    edited
          .quad    setcur
          .quad    getcur
          .quad    getstc
          .quad    setstc
          .quad    settyp
          .quad    setlim
          .quad    setflg
          .quad    setfmh
          .quad    setsub
          .quad    strait

    jtefc:.quad    ec00                                 # dec2D EA
          .quad    ec01                                 # dec2Q EA
          .quad    ec04                                 # hex2D EA
          .quad    ec04                                 # hex2D EA
          .quad    ec04                                 # hex2D EA
          .quad    ec05                                 # hex2Q EA
          .quad    ec06                                 # s2DMY EA
          .quad    ec06                                 # s2DMY EA
          .quad    ec07                                 # s2HMD EA
          .quad    ec07                                 # s2HMD EA
          .quad    ec07                                 # s2HMD EA
          .quad    ec07                                 # s2HMD EA
          .quad    ec07                                 # s2HMD EA
          .quad    ec08                                 # FDacc write

    jtdsp:.quad    t00                                  # D2dec
          .quad    t01                                  # Q2dec
          .quad    t02                                  # B2hex
          .quad    t03                                  # W2hex
          .quad    t04                                  # D2hex
          .quad    t05                                  # Q2hex
          .quad    t06                                  # d2iso
          .quad    t06                                  # d2out
          .quad    t07                                  # t2out(0)
          .quad    t07                                  # t2out(1)
          .quad    t07                                  # t2out(2)
          .quad    t07                                  # t2out(3)
          .quad    t07                                  # t2out(4)
          .quad    t08                                  # FDacc address
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            max characters
            ~~~~~~~~~~~~~~~~~~~~~
          */
     mchr:.long    0x10, 0x20, 0x03, 0x05, 0x0A, 0x13, 0x0A
          .long    0x0A, 0x05, 0x08, 0x0B, 0x08, 0x05, 0x40
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                          S P I N B U T T O N S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            INPUT  > RCX      spin number = entry number in FLD_SPN
                     RDX      SPN_* command
                     R08      numeric input    (optional)      ID + msg           WPARAM
                     R09      address in/out   (optional)      NMHDR              LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OUTPUT < RAX      **** ****        value if appropriate, else 0000 0000
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl _STspn
   _STspn:subq     $0xF8,              %rsp
          movq     _BNR(%rip),         %rax             # RAX = BNR
          movq     %rbp,               0x90(%rsp)
          movq     %rsi,               0x98(%rsp)
          movq     %rdi,               0xA0(%rsp)
          movq     %rbx,               0xA8(%rsp)
          movq     %r14,               0xB0(%rsp)
          movq     %r13,               0xB8(%rsp)
          movq     %r12,               0xC0(%rsp)
          movq     %r11,               0xC8(%rsp)
          movq     %r10,               0xD0(%rsp)
          movq     %r9,                0xD8(%rsp)
          movq     %r8,                0xE0(%rsp)
          movq     %rdx,               0xE8(%rsp)
          movq     %rcx,               0xF0(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            prepare
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     EA__SP(%rax),       %r14             # R14 = EA
          movq     MH__SP(%rax),       %r11             # R11 = MH
          movl     %ecx,               %r13d            # R13 = spin number
          movq     %rax,               %rsi             # RSI = BNR
          shll     $0x06,              %r13d            # R13 = offset struc
          testq    %r14,               %r14             # field loaded?
          je       ldfld
      L00:addq     %r14,               %r13             # R13 = EA struc
          cmpl     0x1C(%r11),         %ecx             # valid entry?
          jae      XIZ
          cmpl     $0x0C,              %edx             # valid command?
          ja       XIZ
          testl    $0x01,              SP_FLG(%r13)     # already running?
          jne      XIZ
          orb      $0x01,              SP_FLG(%r13)     # set busy
          movq     SP_MIN(%r13),       %r12             # R12 = min
          movq     SP_MAX(%r13),       %r11             # R11 = max
          movq     SP_CUR(%r13),       %r10             # R10 = cur
          movq     SP_EHW(%r13),       %rdi             # RDI = HWND EFld
          movl     SP_TYP(%r13),       %ebx             # RBX = spin type
          cmpq     %r11,               %r12             # min = max?
          cmove    %r11,               %rax             # return max and exit!
          je       XIR
          movq     %r12,               %rax             # return cur on error!
          cmpl     $0x0D,              %ebx             # valid type?
          ja       XIR
          jmp      *jtcmd(, %rdx, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX   -
            RBX   type
            RCX   spin number
            RDX   command
            RDI   HWND EFld
            RSI   BNR
            RBP   -
            R08   WPARAM or number
            R09   LPARAM or EA
            R10   cur
            R11   max
            R12   min
            R13   EA struc
            R14   EA field
            R15   -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            00 SPN_INIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   spinit:movl     0x24(%r13),         %edx             # RDX = ID   spn
          movl     0x20(%r13),         %ebp             # RBP = ID   EFld
          movq     %r8,                %rcx             # RCX = HWND dlg
          call     _WinId
          movl     %ebp,               %edx             # RDX = ID   EFld
          leaq     mchr(%rip),         %r9              # R09 = EA   LUT
          movq     %rax,               %rbp             # RBP = HWND spn
          call     _WinId
          movl     0x00(%r9, %rbx, 4), %r8d             # R08 = limit
          movq     %rax,               SP_EHW(%r13)     # store HWND EFld
          movq     %rax,               %rdi             # RDI = HWND EFld
          movq     %rax,               %rcx             # RCX = HWND EFld
          movl     $0xC5,              %edx             # RDX = EM_SETTEXTLIMIT
          xorl     %r9d,               %r9d             # R09 = NULL
          call     _SendM
          movq     %rbp,               %rcx             # RCX = HWND spn
          movl     $0x046F,            %edx             # RDX = UDM_SETRANGE32
          movl     $0x80000000,        %r8d             # R08 = min
          movl     $0x7FFFFFFF,        %r9d             # R09 = max
          call     _SendM
          addl     $0x02,              %edx             # RDX = UDM_SETPOS32
          xorl     %r8d,               %r8d             # R08 = 0
          xorl     %r9d,               %r9d             # R09 = NULL
          call     _SendM
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            01 SPN_NOTIFY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   notify:movslq   0x1C(%r9),          %rbp             # RBP = sign extended delta
          movq     %r10,               %rax             # RAX = cur
          cmpl     $0xFFFFFD2E,        0x10(%r9)        # UDN_DELTAPOS?
          jne      XIZ
          addq     %rbp,               %r10             # cur + delta
          cmovs    %r11,               %r10             # max if underflow
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            02 SPN_EDITED
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   edited:movq     %rdi,               %rcx             # RCX = HWND
          leaq     0x30(%rsp),         %rdx             # RDX = buffer
          movl     $0x50,              %r8d             # R08 = size
          call     _WnQTx
          movq     %rdx,               %rcx             # RCX = EA buffer
          jmp      *jtefc(, %rbx, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SPN_DEC32
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     ec00:call     _dec2D
          movq     %rax,               %r10             # update cur
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SPN_DEC64
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     ec01:call     _dec2Q
          movq     %rax,               %r10             # update cur
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SPN_HEX08-32
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     ec04:call     _hex2D
          movq     %rax,               %r10             # update cur
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SPN_HEX64
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     ec05:call     _hex2Q
          movq     %rax,               %r10             # update cur
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SPN_DATE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     ec06:call     _s2DMY
          movq     %rax,               %r10             # update cur
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SPN_TIME
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     ec07:call     _s2HMS
          movq     %rax,               %r10             # update cur
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SPN_STR_FIELD
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     ec08:movq     %rdx,               0x20(%rsp)       # P_5 = EA buffer
          movq     SP_FMH(%r13),       %rcx             # RCX = MemHandle
          movl     %r10d,              %edx             # RDX = entry
          movl     SP_TDA(%r13),       %r8d             # R08 = subfield
          movl     $0x02,              %r9d             # R09 = FDA_WRITE
          call     _FDacc
          movq     %r10,               %rax             # RAX = cur
          jmp      XIR
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            03 SPN_SET
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   setcur:movq     %r8,                %r10             # R10 = input
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            04 SPN_QUERY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   getcur:movq     %r10,               %rax             # RAX = cur
          jmp      XIR
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            05 SPN_GETSTRUC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   getstc:movdqa   0x00(%r13),         %xmm0            # copy struc -> output
          movdqa   0x10(%r13),         %xmm1
          movdqa   0x20(%r13),         %xmm2
          movdqa   0x30(%r13),         %xmm3
          movdqu   %xmm0,              0x00(%r9)
          movdqu   %xmm1,              0x10(%r9)
          movdqu   %xmm2,              0x20(%r9)
          movdqu   %xmm3,              0x30(%r9)
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            06 SPN_SETSTRUC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   setstc:movdqa   0x00(%r9),          %xmm0            # copy input -> struc
          movdqa   0x10(%r9),          %xmm1
          movdqa   0x20(%r9),          %xmm2
          movdqa   0x30(%r9),          %xmm3
          movdqu   %xmm0,              0x00(%r13)
          movdqu   %xmm1,              0x10(%r13)
          movdqu   %xmm2,              0x20(%r13)
          movdqu   %xmm3,              0x30(%r13)
          movq     SP_MIN(%r9),        %r12             # R12 = min
          movq     SP_MAX(%r9),        %r11             # R11 = max
          movq     SP_CUR(%r9),        %r10             # R10 = cur
          movq     SP_EHW(%r9),        %rdi             # RDI = HWND EFld
          movl     SP_TYP(%r9),        %ebx             # RBX = type
          testl    %r8d,               %r8d             # return w/o display?
          jne      XIZ
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            07 SPN_SETTYPE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   settyp:leaq     mchr(%rip),         %r9              # R09 = EA   LUT
          movl     %r8d,               %ebx             # RBX = new type
          movl     %r8d,               SP_TYP(%r13)     # store new type
          movq     %rdi,               %rcx             # RCX = HWND EFld
          movl     $0xC5,              %edx             # RDX = EM_SETTEXTLIMIT
          movl     0x00(%r9, %rbx, 4), %r8d             # R08 = limit
          xorl     %r9d,               %r9d             # R09 = NULL
          call     _SendM
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            08 SPN_SETLIMITS
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   setlim:testq    %r9,                %r9              # valid EA?
          je       XIZ
          movq     0x00(%r9),          %r12             # R12 = min
          movq     0x08(%r9),          %r11             # R11 = max
          movq     %r12,               SP_MIN(%r13)     # store
          movq     %r11,               SP_MAX(%r13)
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            09 SPN_SETFLAGS
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   setflg:movl     %r8d,               SP_TFL(%r13)     # store
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            0A SPN_SETMH
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   setfmh:movq     %r8,                SP_FMH(%r13)     # store
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            0B SPN_SETSUB
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   setsub:movl     %r8d,               SP_TDA(%r13)     # store
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            0C SPN_STRAIGHT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   strait:movl     0x1C(%r9),          %ebp             # RBP = delta
          xorl     %ecx,               %ecx             # RCX = 0
          xorl     %edx,               %edx             # RDX = 0
          movq     %r10,               %rax             # RAX = cur
          cmpl     $0xFFFFFD2E,        0x10(%r9)        # UDN_DELTAPOS?
          jne      XIZ
          incl     %ecx                                 # RCX = +1
          decq     %rdx                                 # RDX = -1
          testl    %ebp,               %ebp             # negative?
          cmovs    %rdx,               %rcx             # => reduce to -1
          addq     %rcx,               %r10             # cur + delta
          cmovs    %r11,               %r10             # max if underflow
          jmp      comsp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common: display
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX   -                 subfield
            RBX   type
            RCX   -                 MemHandle
            RDX   -
            RDI   HWND EFld
            RSI   BNR
            RBP   -                 type flags
            R08   -                 EA buffer
            R09   -
            R10   cur
            R11   max
            R12   min
            R13   EA struc
            R14   EA field
            R15   -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    comsp:cmpq     %r11,               %r10             # above?
          cmova    %r12,               %r10             # wrap
          cmpq     %r12,               %r10             # below?
          cmovb    %r11,               %r10             # wrap
          movq     SP_FMH(%r13),       %rcx             # RCX = MemHandle
          movl     SP_TFL(%r13),       %ebp             # RBP = type flags
          movl     SP_TDA(%r13),       %eax             # RAX = subfield
          leaq     0x30(%rsp),         %r14             # R14 = EA buffer
          movq     %r10,               SP_CUR(%r13)     # store
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            create output string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          jmp      *jtdsp(, %rbx, 8)                    # jump table <type>
          /*
            ~~~~~~~~~~~~~~~~
            SPN_DEC32
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t00:movq     %r10,               %rcx             # RCX = cur
          movq     %r14,               %rdx             # RDX = EA buffer
          movl     %ebp,               %r8d             # R08 = flags
          call     _D2dec
          jmp      setsp
          /*
            ~~~~~~~~~~~~~~~~
            SPN_DEC64
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t01:movq     %r10,               %rcx             # RCX = cur
          movq     %r14,               %rdx             # RDX = EA buffer
          movl     %ebp,               %r8d             # R08 = flags
          call     _Q2dec
          jmp      setsp
          /*
            ~~~~~~~~~~~~~~~~
            SPN_HEX08
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t02:movq     %r10,               %rcx             # RCX = cur
          movq     %r14,               %rdx             # RDX = EA buffer
          call     _B2hex
          jmp      setsp
          /*
            ~~~~~~~~~~~~~~~~
            SPN_HEX16
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t03:movq     %r10,               %rcx             # RCX = cur
          movq     %r14,               %rdx             # RDX = EA buffer
          call     _W2hex
          jmp      setsp
          /*
            ~~~~~~~~~~~~~~~~
            SPN_HEX32
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t04:movq     %r10,               %rcx             # RCX = cur
          movq     %r14,               %rdx             # RDX = EA buffer
          call     _D2hex
          jmp      setsp
          /*
            ~~~~~~~~~~~~~~~~
            SPN_HEX64
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t05:movq     %r10,               %rcx             # RCX = cur
          movq     %r14,               %rdx             # RDX = EA buffer
          call     _Q2hex
          jmp      setsp
          /*
            ~~~~~~~~~~~~~~~~
            SPN_DATE
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t06:movl     %r10d,              %ecx             # RCX = cur
          call     _chkDMY
          movl     %eax,               %ecx             # RCX = proper HMS
          movl     %eax,               SP_CUR(%r13)     # store
          movq     %r14,               %rdx             # RDX = EA buffer
          testl    %ebp,               %ebp
          jne      0f
          call     _d2out
          jmp      setsp
          .p2align 4,,15
        0:call     _d2iso
          jmp      setsp
          /*
            ~~~~~~~~~~~~~~~~
            SPN_TIME
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t07:movl     %r10d,              %ecx             # RCX = cur
          call     _chkHMS
          movl     %eax,               %ecx             # RCX = proper HMS
          movl     %eax,               SP_CUR(%r13)     # store
          movq     %r14,               %rdx             # RDX = EA buffer
          movl     %ebp,               %r8d             # R08 = flags
          call     _t2out
          jmp      setsp
          /*
            ~~~~~~~~~~~~~~~~
            SPN_STR_FIELD
            ~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      t08:movl     %r10d,              %edx             # RDX = entry
          movl     %eax,               %r8d             # R08 = subfield
          movl     $0x07,              %r9d             # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rax,               %r14             # R14 = EA string
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            set spinbutton
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    setsp:movq     %rdi,               %rcx             # RCX = HWND EFld
          movq     %r14,               %rdx             # RDX = EA buffer
          movl     $0x50,              %r8d             # R08 = size
          call     _WnSTx
          movl     $0xB9,              %edx             # RDX = EM_SETMODIFY
          xorq     %r8,                %r8              # R08 = FALSE
          xorq     %r9,                %r9              # R09 = NULL
          call     _SendM
          movq     %r10,               %rax             # RAX = cur
          jmp      XIR
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            load field
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    ldfld:leaq     EA__SP(%rsi),       %rcx             # RCX = LD
          call     _LDreq
          testl    %eax,               %eax             # error?
          jne      XIT
          movq     EA__SP(%rsi),       %r14             # R14 = EA
          movq     MH__SP(%rsi),       %r11             # R11 = MH
          addq     $0x0100,            %r14             # R14 = EA data
          movl     0xF0(%rsp),         %ecx             # RCX = spin number
          movq     %r14,               EA__SP(%rsi)     #       EA
          orl      $0x04,              M_H_FL(%r11)     # set LDR_CHANGED
          jmp      L00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorq     %rax,               %rax
      XIR:andl     $0xFE,              SP_FLG(%r13)
      XIT:movq     0x90(%rsp),         %rbp
          movq     0x98(%rsp),         %rsi
          movq     0xA0(%rsp),         %rdi
          movq     0xA8(%rsp),         %rbx
          movq     0xB0(%rsp),         %r14
          movq     0xB8(%rsp),         %r13
          movq     0xC0(%rsp),         %r12
          movq     0xC8(%rsp),         %r11
          movq     0xD0(%rsp),         %r10
          movq     0xD8(%rsp),         %r9
          movq     0xE0(%rsp),         %r8
          movq     0xE8(%rsp),         %rdx
          movq     0xF0(%rsp),         %rcx
          addq     $0xF8,              %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,               8, 3
