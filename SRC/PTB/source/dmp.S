          /*
            ==================================================================================
                                D U M P   V I E W E R S   (C) ST-Open 2011
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
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4, 0x00, 15
     LC00:.ascii   "                "
     LC01:.byte    0x0D, 0x0A
          .ascii   " Address    00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F   ASCII     "
          .byte    0x0D, 0x0A, 0x0D, 0x0A, 0x0D, 0x0A
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            rdmp    register dump procedure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl    _rdmp
          .def      _rdmp; .scl 2; .type 32; .endef
    _rdmp:subq      $0xF8,               %rsp
          movq      _BNR(%rip),          %rax            # RAX = BNR
          movq      %r10,                0xB0(%rsp)
          movq      %r11,                0xB8(%rsp)
          movq      %rsi,                0xC0(%rsp)
          movq      %rdi,                0xC8(%rsp)
          movq      %rbx,                0xD0(%rsp)
          movq      %r9,                 0xD8(%rsp)
          movq      %r8,                 0xE0(%rsp)
          movq      %rdx,                0xE8(%rsp)
          movq      %rcx,                0xF0(%rsp)
          movq      %rax,                %r11            # RSI = BNR
          movl      R_DUMP(%rax),        %eax            # RAX = current offset
          andl      $0xFFFF,             %r8d
          cmpl      $0x0111,             %edx            # WM_COMMAND?
          je        L20
          cmpl      $0x0110,             %edx            # WM_INITDIALOG?
          jne       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDIALOG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl      $0x48,               %edx            # RDX = entry dlg
          movq      $0x49,               %r8             # RDX =       first
          movq      $0x4C,               %r9             # RDX =       last
          call      _DLGtxt
          call      _CtrWn
          movl      $0x01,               %r8d            # R08 = [previous]
          movl      $0x0200,             %eax            # RAX = offset dump 1
          jmp       L21
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      L20:subl      $0x1110,             %r8d            # [Dismiss]?
          jne       L21
          xorl      %edx,                %edx            # RDX = RC (zero)
          call      _KillDlg
          jmp       XIZ
          .p2align  4,,15
      L21:leaq      0x0200(%rax),        %r9             # R09 = next
          subl      $0x0200,             %eax            # RAX = previous
          andq      $0xFE00,             %r9
          andl      $0xFE00,             %eax            # keep in range
          decl      %r8d                                 # previous?
          cmove     %rax,                %r9             # R09 = previous
          decl      %r8d                                 # next?
          cmove     %r9,                 %rax            # RAX = next
          jg        XIT
          movq      %r9,                 R_DUMP(%r11)    # store offset
          addq      _TST(%rip),          %r9             # R09 = EA this dump
          shrl      $0x09,               %eax            # RAX = dump number
          movq      %rcx,                %rsi            # RSI = HWND
          movl      $0x10,               %ebx            # RBX = GPRct
          movl      %eax,                %ecx            # ECX = dump number
          leaq      0x20(%rsp),          %rdx            # RDX = EA buf
          call      _B2hex
          movq      EA_OBF(%r11),        %rdx            # RDX = EA strings
        0:movq      0x00(%r9),           %rcx            # RCX = current GPR
          call      _Q2hex
          addq      $0x18,               %rdx            # RDX = next string
          addq      $0x08,               %r9             # R09 = next GPR
          decl      %ebx                                 # GPRct--
          jne       0b
          movl      $0x10,               %ebx            # RBX = XMMcount
          movq      %r9,                 %rcx            # RCX = EA 1st XMM
        1:call      _O2hex
          addq      $0x10,               %rcx            # RCX = next XMM
          addq      $0x28,               %rdx            # RDX = next string
          decl      %ebx
          jne       1b
          movq      %rsi,                %rcx            # RCX = HWND
          movq      $0x1140,             %rdx
          movq      EA_OBF(%r11),        %r8             # R08 = EA strings
          movl      $0x10,               %ebx            # RBX = XMMcount
        2:call      _WnSDT
          incq      %rdx
          addq      $0x18,               %r8
          decl      %ebx
          jne       2b
          movl      $0x10,               %ebx            # RBX = XMMcount
        3:call      _WnSDT
          incq      %rdx
          addq      $0x28,               %r8
          decl      %ebx
          jne       3b
          leaq      0x20(%rsp),          %r8             # R08 = EA buf
          call      _WnSDT
          movq      0x0100(%r9),         %rcx            # RCX = [RIP] caller
          leaq      0x20(%rsp),          %rdx            # RDX = EA buf
          call      _Q2hex
          movq      %rdx,                %r8             # R08 = EA buf
          movq      %rsi,                %rcx            # RCX = HWND
          movl      $0x111F,             %edx            # RDX = ID
          call      _WnSDT
          movq      $0x01,               %rax
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            mdmp     memory dump
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA source       (input  buffer)
               RDX   EA target       (output buffer)
               R08   byte to dump    (rounded up to next paragraph boundary)
               R09   display address (address printed at beginning of lines)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ???? ???? ????   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            This internal function resizes BBF to supply sufficient memory for the dump it has
            to create (80 byte per paragraph), creates that dump, then sets the MLE to the ge-
            nerated text. If the text size exceeds the default 65,536 byte limit, the MLE will
            be expanded to the required size. The original size of BBF is not restored on exit
            - memory blocks are expanded on demand, but never shrinked back!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            0               1               2               3               4
            0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF

            CL Address    .0 .1 .2 .3 .4 .5 .6 .7 .8 .9 .A .B .C .D .E .F   ASCII       CLCL

             0000 0000  xx xx xx xx xx xx xx xx xx xx xx xx xx xx xx xx   xxxxxxxxxxxxxxxxCL

          */
          .p2align  4,,15
          .globl    _mdmp
          .def      _mdmp; .scl 2; .type 32; .endef
    _mdmp:subq      $0xF8,               %rsp
          movdqa    %xmm4,               0x90(%rsp)
          movdqa    %xmm5,               0xA0(%rsp)
          movq      %r10,                0xB0(%rsp)
          movq      %r11,                0xB8(%rsp)
          movq      %rsi,                0xC0(%rsp)
          movq      %rdi,                0xC8(%rsp)
          movq      %rbx,                0xD0(%rsp)
          movq      %r9,                 0xD8(%rsp)
          movq      %r8,                 0xE0(%rsp)
          movq      %rdx,                0xE8(%rsp)
          movq      %rcx,                0xF0(%rsp)
          leaq      LC01(%rip),          %rdi            # RDI = header
          shrl      $0x04,               %r8d            # R08 = para_cnt
          movl      $0x01,               %eax            # RAX = 1
          movq      %rcx,                %rsi            # RSI = EA source
          testl     %r8d,                %r8d            # reduced to zero?
          cmove     %eax,                %r8d            # R08 = 1 if zero
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            header
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movdqa    0x00(%rdi),          %xmm0
          movdqa    0x10(%rdi),          %xmm1
          movdqa    0x20(%rdi),          %xmm2
          movdqa    0x30(%rdi),          %xmm3
          movdqa    0x40(%rdi),          %xmm4
          movdqa    %xmm0,               0x00(%rdx)
          movdqa    %xmm1,               0x10(%rdx)
          movdqa    %xmm2,               0x20(%rdx)
          movdqa    %xmm3,               0x30(%rdx)
          movdqa    %xmm4,               0x40(%rdx)
          addq      $0x50,               %rdx            # RDX = next line
          movdqa    LC00(%rip),          %xmm5           # XM5 = pmaxub mask
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            assemble lines
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        0:movl      $0x10,               %edi            # RDI = page_cnt
        1:movb      $0x20,               0x00(%rdx)
          movdqa    0x00(%rsi),          %xmm4           # XM4 = paragraph
          movl      %r9d,                %ecx
          incq      %rdx
          call      _D2hex
          movw      $0x2020,             0x09(%rdx)
          pmaxub    %xmm5,               %xmm4           # replace 00...30 with ASCII 1F
          movq      0x00(%rsi),          %rcx            # RCX = 1st DQ
          addq      $0x0B,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = next byte
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = next byte
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = next byte
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = next byte
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = next byte
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = next byte
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = last byte 1st DQ
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          movq      0x08(%rsi),          %rcx            # RCX = 2nd DQ
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = last byte 1st DQ
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = next byte
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = next byte
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = next byte
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = next byte
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = next byte
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          shrq      $0x08,               %rcx            # RCX = last byte 2nd DQ
          addq      $0x03,               %rdx
          call      _B2hex
          movb      $0x20,               0x02(%rdx)
          movw      $0x2020,             0x03(%rdx)
          movdqu    %xmm4,               0x05(%rdx)      # ASCII
          movw      $0x0A0D,             0x15(%rdx)      # CR-LF
          addq      $0x10,               %rsi            # RSI = next paragraph
          addl      $0x10,               %r9d            # R09 = display address + 16
          addq      $0x17,               %rdx            # RDX = next line
          decl      %r8d                                 # para_cnt--
          je        XIX
          decl      %edi                                 # page_cnt--
          jne       1b
          movw      $0x0A0D,             0x00(%rdx)      # blank line...
          addq      $0x02,               %rdx            # RDX = next line
          jmp       0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      XIX:movl      $0x00,               0x00(%rdx)      # append trailing zero
          movdqa    0x90(%rsp),          %xmm4
          movdqa    0xA0(%rsp),          %xmm5
      XIZ:xorq      %rax,                %rax
      XIT:movq      0xB0(%rsp),          %r10
          movq      0xB8(%rsp),          %r11
          movq      0xC0(%rsp),          %rsi
          movq      0xC8(%rsp),          %rdi
          movq      0xD0(%rsp),          %rbx
          movq      0xD8(%rsp),          %r9
          movq      0xE0(%rsp),          %r8
          movq      0xE8(%rsp),          %rdx
          movq      0xF0(%rsp),          %rcx
          addq      $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm     _BNR,                8, 3
          .comm     _TST,                8, 3
