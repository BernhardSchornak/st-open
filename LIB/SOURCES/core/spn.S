          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                          A P I - W R A P P E R  (32 BIT)                           Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К                          *** (C) ST-Open 1979 - 2010 ***                           Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К You may copy and distribute this file as often as you want, but recipients are not Кл
          К allowed to pay anything for any copy of this file or its content. It isn't allowed Кл
          К to remove parts of this file or add third party content. It isn't allowed to abuse Кл
          К the copyrighted content or introduced techniques for commercial purposes. Whatever Кл
          К is derived from this file and its content must be freely available without charge. Кл
          К You are free to modify the content of this file if you want to. However, derivates Кл
          К of the content of this file or parts of it *still* are subject to the terms of the Кл
          К FT4FP license. Recipients neither are allowed to pay anything for the original nor Кл
          К for altered or derived replica.                                                    Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .include "..\\..\\..\\include\\yasm.h"
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г jump table                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
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
    jtefc:.quad    ec00                 # dec2D EA
          .quad    ec01                 # dec2Q EA
          .quad    ec04                 # hex2D EA
          .quad    ec04                 # hex2D EA
          .quad    ec04                 # hex2D EA
          .quad    ec05                 # hex2Q EA
          .quad    ec06                 # s2HMD EA
          .quad    ec07                 # s2DMY EA
          .quad    ec08                 # FDacc write
    jtdsp:.quad    t00
          .quad    t01
          .quad    t02
          .quad    t03
          .quad    t04
          .quad    t05
          .quad    t06
          .quad    t07
          .quad    t08
     mchr:.long    0x10, 0x20, 0x03, 0x05, 0x0A, 0x13, 0x0A, 0x0B, 0x50
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                               S P I N B U T T O N S                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г INPUT  > RCX      spin number = entry number in FLD_SPN                            Гл
          Г          RDX      SPN_* command                                                    Гл
          Г          R08      numeric input    (optional)      ID + msg           WPARAM       Гл
          Г          R09      address in/out   (optional)      NMHDR              LPARAM       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г OUTPUT < RAX      **** ****        value if appropriate, else 0000 0000            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г Commands          description                                                      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г #  name           description               PAR 3               PAR 4              Гл
          Г                                                                                    Гл
          Г 06 SPN_SETSTRUC   write 64 byte structure   -                   EA                 Гл
          Г 05 SPN_GETSTRUC   read  64 byte structure   -                   EA                 Гл
          Г 04 SPN_QUERY      get current content       -                   EA                 Гл
          Г 03 SPN_SET        set current content       number              EA                 Гл
          Г 02 SPN_EDITED     entryfield was edited     WPARAM              LPARAM             Гл
          Г 01 SPN_NOTIFY     WM_NOTIFY received        WPARAM              LPARAM             Гл
          Г 00 SPN_INIT       initialise spinbutton     HWND dialog         -                  Гл
          Г                                                                                    Гл
          Г -        content ignored                                                           Гл
          Г EA       address of a buffer or SPN structure                                      Гл
          Г WPARAM   WPARAM from a WM_COMMAND or WM_NOTIFY message                             Гл
          Г LPARAM   LPARAM from a WM_COMMAND or WM_NOTIFY message                             Гл
          Г HWND     HWND of the dialog the spinbutton belongs to                              Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Spinbutton types  description                              input   output          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г 08 SPN_STR        use field as defined in SPN structure      R09      RAX   (EA)   Гл
          Г 07 SPN_DATE       date (YYYY-MM-DD or DD.MM.YYYY)            R08      EAX   (DMY)  Гл
          Г 06 SPN_TIME       time (HH:MM:SS.hh in 5 possible formats)   R08      EAX   (HMSh) Гл
          Г 05 SPN_HEX64      hexadecimal numbers with 16 digits         R08      RAX   (DQ)   Гл
          Г 04 SPN_HEX32                                8 digits         R08      EAX   (DD)   Гл
          Г 03 SPN_HEX16                                4 digits         R08      AX    (DW)   Гл
          Г 02 SPN_HEX08                                2 digits         R08      AL    (DB)   Гл
          Г 01 SPN_DEC64      decimal     numbers max. 20 digits         R08      RAX   (DQ)   Гл
          Г 00 SPN_DEC32                          max. 10 digits         R08      EAX   (DD)   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г SPN structure     description                                                      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г 00 DQ             minimum value or first entry in a datafield                      Гл
          Г 08 DQ             maximum value or last  entry                                     Гл
          Г 10 DQ             current value or entry number                                    Гл
          Г 18 DQ             HWND of the associated entryfield                                Гл
          Г 20 DD             ID   of the associated entryfield                                Гл
          Г 24 DD             ID   of the spinbutton (UpDown) control                          Гл
          Г 28 DQ             SPN_STR  : MemHandle of the field                                Гл
          Г 30 DD             spinbutton type                                                  Гл
          Г 34 DD             spinbutton flags                                                 Гл
          Г 38 DD             SPN_TIME : time format (0...4) as defined in tms.S               Гл
          Г                   SPN_DATE : date format (0 = European, 1 = ISO)                   Гл
          Г                   SPN_DECx : D2dec or Q2dec flags (pseudoFP, sign, digits)         Гл
          Г 3C DD             SPN_STR  : number of subfield                                    Гл
          Г                                                                                    Гл
          Г кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП  Гл
          Г Г                minimum                Г                maximum                Г  Гл
          Г УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФХФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФД  Гл
          Г Г                current                Г              HWND dialog              Г  Гл
          Г УФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФХФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФД  Гл
          Г Г   ID entryfield   Г   ID spinbutton   Г             MemHandle $$              Г  Гл
          Г УФФФФФФФФФФФФФФФФФФФХФФФФФФФФФФФФФФФФФФФХФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФД  Гл
          Г Г     spin type     Г    spin  flags    Г    type  flags    Г    subfield $$    Г  Гл
          Г РФФФФФФФФФФФФФФФФФФФСФФФФФФФФФФФФФФФФФФФСФФФФФФФФФФФФФФФФФФФСФФФФФФФФФФФФФФФФФФФй  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г SPN flags         description                                                      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г 80                -                                                                Гл
          Г 40                -                                                                Гл
          Г 20                -                                                                Гл
          Г 10                -                                                                Гл
          Г 08                -                                                                Гл
          Г 04                -                                                                Гл
          Г 02                -                                                                Гл
          Г 01                spinbutton engaged                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl _STspn
   _STspn:subq     $0xF8,%rsp
          movq     _BNR(%rip),%rax                     # RAX = BNR
          nop
          movq     %rbp,0x90(%rsp)
          movq     %rsi,0x98(%rsp)
          movq     %rdi,0xA0(%rsp)
          movq     %rbx,0xA8(%rsp)
          movq     %r14,0xB0(%rsp)
          movq     %r13,0xB8(%rsp)
          movq     %r12,0xC0(%rsp)
          movq     %r11,0xC8(%rsp)
          movq     %r10,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г prepare                    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          movq     SPN_EA(%rax),%r14                   # R14 = EA
          movq     SPN_MH(%rax),%r11                   # R11 = MH
          movl     %ecx, %r13d                         # R13 = spin number
          movq     %rax, %rsi                          # RSI = BNR
          shll     $0x06,%r13d                         # R13 = offset struc
          testq    %r14, %r14                          # field loaded?
          je       ldfld
      L00:addq     %r14, %r13                          # R13 = EA struc
          cmpl     0x1C(%r11),%ecx                     # valid entry?
          jae      XIZ
          cmpl     $0x06,%edx                          # valid command?
          ja       XIZ
          testl    $0x01,0x34(%r13)                    # already running?
          jne      XIZ
          orb      $0x01,0x34(%r13)                    # set busy
          movq     0x00(%r13),%r12                     # R12 = min
          movq     0x08(%r13),%r11                     # R11 = max
          movq     0x10(%r13),%r10                     # R10 = cur
          movq     0x18(%r13),%rdi                     # RDI = HWND EFld
          movl     0x30(%r13),%ebx                     # RBX = spin type
          cmpq     %r11,%r12                           # min = max?
          cmove    %r11, %rax                          # return max and exit!
          je       XIR
          cmpl     $0x08,%ebx                          # valid type?
          ja       XIR
          jmp      *jtcmd(, %rdx, 8)
          /*

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

          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г 00 SPN_INIT                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   spinit:movl     0x24(%r13),%edx                     # RDX = ID   spn
          movl     0x20(%r13),%ebp                     # RBP = ID   EFld
          movq     %r8, %rcx                           # RCX = HWND dlg
          call     _WinId
          movl     %ebp,%edx                           # RDX = ID   EFld
          movq     %rax,%rbp                           # RBP = HWND spn
          leaq     mchr(%rip),%r9                      # R09 = EA   LUT
          call     _WinId
          movl     0x00(%r9, %rbx, 4),%r8d             # R08 = limit
          movq     %rax, 0x18(%r13)                    # store HWND EFld
          movq     %rax, %rdi                          # RDI = HWND EFld
          movq     %rax, %rcx                          # RCX = HWND EFld
          movl     $0xC5,%edx                          # RDX = EM_SETTEXTLIMIT
          xorl     %r9d, %r9d                          # R09 = NULL
          call     _SendM
          movq     %rbp, %rcx                          # RCX = HWND spn
          movl     $0x046F,%edx                        # RDX = UDM_SETRANGE32
          movl     $0x80000000,%r8d                    # R08 = min
          movl     $0x7FFFFFFF,%r9d                    # R09 = max
          call     _SendM
          addl     $0x02,%edx                          # RDX = UDM_SETPOS32
          xorl     %r8d, %r8d                          # R08 = 0
          xorl     %r9d, %r9d                          # R09 = NULL
          call     _SendM
          jmp      comsp
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г 01 SPN_NOTIFY                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   notify:movq     %r10,%rax                           # RAX = cur
          movslq   0x1C(%r9),%rbp                      # RBP = sign extended delta
          cmpl     $0xFFFFFD2E,0x10(%r9)               # UDN_DELTAPOS?
          jne      XIR
          addq     %rbp,%r10                           # cur + delta
          cmovs    %r11,%r10                           # max if underflow
          jmp      comsp
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г 02 SPN_EDITED                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   edited:movq     %rdi, %rcx                          # RCX = HWND
          leaq     0x30(%rsp),%rdx                     # RDX = buffer
          movl     $0x50,%r8d                          # R08 = size
          call     _WnQTx
          movq     %rdx, %rcx                          # RCX = EA buffer
          jmp      *jtefc(, %rbx, 8)
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_DEC32     Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
     ec00:call     _dec2D
          movq     %rax,%r10                           # update cur
          jmp      comsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_DEC64     Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
     ec01:call     _dec2Q
          movq     %rax,%r10                           # update cur
          jmp      comsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_HEX08-32  Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
     ec04:call     _hex2D
          movq     %rax,%r10                           # update cur
          jmp      comsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_HEX64     Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
     ec05:call     _hex2Q
          movq     %rax,%r10                           # update cur
          jmp      comsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_TIME      Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
     ec06:call     _s2HMS
          movq     %rax,%r10                           # update cur
          jmp      comsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_DATE      Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
     ec07:call     _s2DMY
          movq     %rax,%r10                           # update cur
          jmp      comsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_STR_FIELD Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
     ec08:movq     %rdx, 0x20(%rsp)                    # P_5 = EA buffer
          movq     0x28(%r13),%rcx                     # RCX = MemHandle
          movl     %r10d,     %edx                     # RDX = entry
          movl     0x3C(%r13),%r8d                     # R08 = subfield
          movl     $0x02,     %r9d                     # R09 = FDA_WRITE
          call     _FDacc
          movq     %r10,%rax                           # RAX = cur
          jmp      XIR
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г 03 SPN_SET                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   setcur:movq     %r8,%r10                            # R10 = input
          jmp      comsp
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г 04 SPN_QUERY                              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   getcur:movq     %r10,%rax                           # RAX = cur
          jmp      XIR
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г 05 SPN_GETSTRUC                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   getstc:movdqa   0x00(%r13),%xmm0                    # copy struc -> output
          movdqa   0x10(%r13),%xmm1
          movdqa   0x20(%r13),%xmm2
          movdqa   0x30(%r13),%xmm3
          movdqu   %xmm0,0x00(%r9)
          movdqu   %xmm1,0x10(%r9)
          movdqu   %xmm2,0x20(%r9)
          movdqu   %xmm3,0x30(%r9)
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г 06 SPN_SETSTRUC                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   setstc:movdqa   0x00(%r9),%xmm0                     # copy input -> struc
          movdqa   0x10(%r9),%xmm1
          movdqa   0x20(%r9),%xmm2
          movdqa   0x30(%r9),%xmm3
          movdqu   %xmm0,0x00(%r13)
          movdqu   %xmm1,0x10(%r13)
          movdqu   %xmm2,0x20(%r13)
          movdqu   %xmm3,0x30(%r13)
          movq     0x00(%r9),%r12                      # R12 = min
          movq     0x08(%r9),%r11                      # R11 = max
          movq     0x10(%r9),%r10                      # R10 = cur
          movq     0x18(%r9),%rdi                      # RDI = HWND EFld
          movl     0x30(%r9),%ebx                      # RBX = type
          testl    %r8d,%r8d                           # return w/o display?
          jne      XIZ
          jmp      comsp
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г common: display                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл

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

          */
          .p2align 4,,15
    comsp:cmpq     %r11,%r10                           # above?
          cmova    %r12,%r10                           # wrap
          cmpq     %r12,%r10                           # below?
          cmovb    %r11,%r10                           # wrap
          movq     0x28(%r13),%rcx                     # RCX = MemHandle
          movl     0x38(%r13),%ebp                     # RBP = type flags
          movl     0x3C(%r13),%eax                     # RAX = subfield
          leaq     0x30(%rsp),%r14                     # R14 = EA buffer
          movq     %r10,0x10(%r13)                     # store
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г create output string       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          jmp      *jtdsp(, %rbx, 8)                   # jump table <type>
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_DEC32     Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
      t00:movq     %r10,%rcx                           # RCX = cur
          movq     %r14,%rdx                           # RDX = EA buffer
          movl     %ebp,%r8d                           # R08 = flags
          call     _D2dec
          jmp      setsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_DEC64     Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
      t01:movq     %r10,%rcx                           # RCX = cur
          movq     %r14,%rdx                           # RDX = EA buffer
          movl     %ebp,%r8d                           # R08 = flags
          call     _Q2dec
          jmp      setsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_HEX08     Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
      t02:movq     %r10,%rcx                           # RCX = cur
          movq     %r14,%rdx                           # RDX = EA buffer
          call     _B2hex
          jmp      setsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_HEX16     Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
      t03:movq     %r10,%rcx                           # RCX = cur
          movq     %r14,%rdx                           # RDX = EA buffer
          call     _W2hex
          jmp      setsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_HEX32     Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
      t04:movq     %r10,%rcx                           # RCX = cur
          movq     %r14,%rdx                           # RDX = EA buffer
          call     _D2hex
          jmp      setsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_HEX64     Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
      t05:movq     %r10,%rcx                           # RCX = cur
          movq     %r14,%rdx                           # RDX = EA buffer
          call     _Q2hex
          jmp      setsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_TIME      Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
      t06:movl     %r10d,%ecx                          # RCX = cur
          call     _chkHMS
          movl     %eax, %ecx                          # RCX = proper HMS
          movl     %eax, 0x10(%r13)                    # store
          movq     %r14, %rdx                          # RDX = EA buffer
          movl     %ebp, %r8d                          # R08 = flags
          call     _t2out
          jmp      setsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_DATE      Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
      t07:movl     %r10d,%ecx                          # RCX = cur
          call     _chkDMY
          movl     %eax, %ecx                          # RCX = proper HMS
          movl     %eax,0x10(%r13)                     # store
          movq     %r14, %rdx                          # RDX = EA buffer
          testl    %ebp,%ebp
          jne      0f
          call     _d2out
          jmp      setsp
        0:call     _d2iso
          jmp      setsp
          /*
          кФФФФФФФФФФФФФФФП
          Г SPN_STR_FIELD Гл
          РФФФФФФФФФФФФФФФйл
            лллллллллллллллл
          */
          .p2align 4,,15
      t08:movl     %r10d,%edx                          # RDX = entry
          movl     %eax, %r8d                          # R08 = subfield
          movl     $0x07,%r9d                          # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rax, %r14                          # R14 = EA string
          /*
          кФФФФФФФФФФФФФФФФФП
          Г set spinbutton  Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
          .p2align 4,,15
    setsp:movq     %rdi, %rcx                          # RCX = HWND EFld
          movq     %r14, %rdx                          # RDX = EA buffer
          movl     $0x50,%r8d                          # R08 = size
          call     _WnSTx
          movq     %r10, %rax                          # RAX = cur
          jmp      XIR
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г load field                                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    ldfld:pxor     %xmm0,%xmm0                         # XM0 = 0
          xorl     %eax,       %eax                    # RAX = 0
          leaq     0x20(%rsp), %rcx                    # RCX = LD
          movl     $0xFFFFFF01,0x30(%rsp)              # spinbuttons
          movl     $0x23,      0x34(%rsp)              # r, w, static
          movq     %rax,       0x38(%rsp)              # clear LD
          movdqa   %xmm0,      0x40(%rsp)
          movdqa   %xmm0,      0x50(%rsp)
          movdqa   %xmm0,      0x60(%rsp)
          call     _LDreq
          testl    %eax,%eax                           # error?
          jne      XIT
          movq     0x20(%rsp), %r14                    # R14 = EA
          movq     0x38(%rsp), %r11                    # R11 = MH
          addq     $0x0100,    %r14                    # R14 = EA data
          movl     0xF0(%rsp), %ecx                    # RCX = spin number
          movq     %r11,SPN_MH(%rsi)                   # store MH
          movq     %r14,SPN_EA(%rsi)                   #       EA
          orl      $0x04, 0x08(%r11)                   # set LDR_CHANGED
          jmp      L00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г exit                                                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      XIZ:xorq     %rax,%rax
      XIR:andl     $0xFE,0x34(%r13)
      XIT:movq     0x90(%rsp),%rbp
          movq     0x98(%rsp),%rsi
          movq     0xA0(%rsp),%rdi
          movq     0xA8(%rsp),%rbx
          movq     0xB0(%rsp),%r14
          movq     0xB8(%rsp),%r13
          movq     0xC0(%rsp),%r12
          movq     0xC8(%rsp),%r11
          movq     0xD0(%rsp),%r10
          movq     0xD8(%rsp),%r9
          movq     0xE0(%rsp),%r8
          movq     0xE8(%rsp),%rdx
          movq     0xF0(%rsp),%rcx
          addq     $0xF8,%rsp
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BNR,   8, 3
