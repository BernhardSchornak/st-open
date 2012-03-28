          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                O n L i n e  -  H E L P   (C) ST-Open 2011
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
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section .rdata, "dr"
          .p2align 4,,15
     LC00:.ascii   "[*] {*} <*>"
          .byte    0x00, 0x00, 0x00, 0x00, 0x00
     LC04:.ascii   "???"
          .byte    0x00, 0x00, 0x00, 0x00, 0x00
     LC05:.ascii   "no text"
          .byte    0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ============================================
            Help     user call to OLH
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    help number
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    always zero
            ============================================
          */
          .p2align 4,,15
          .globl   _Help
          .def     _Help; .scl 2; .type 32; .endef
    _Help:movq     $help,             %rax
          jmp      0f
          /*
            ============================================
            HLPdl    OLH - help dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    HWND
               RDX    message
               R08    WPARAM
               R09    LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    MRESULT
            ============================================
          */
          .p2align 4,,15
          .globl   _HLPdl
          .def     _HLPdl; .scl 2; .type 32; .endef
   _HLPdl:movq     $hlpdl,            %rax
          jmp      0f
          /*
            ============================================
            TOPdl    OLH - topic dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    HWND
               RDX    message
               R08    WPARAM
               R09    LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    MRESULT
            ============================================
          */
          .p2align 4,,15
          .globl   _TOPdl
          .def     _TOPdl; .scl 2; .type 32; .endef
   _TOPdl:movq     $topdl,            %rax
          jmp      0f
          /*
            ============================================
            HLPad   get help title, store title + text
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    HWND
               RDX    message
               R08    WPARAM
               R09    LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    MRESULT
            ============================================
          */
          .p2align 4,,15
          .globl   _HLPad
          .def     _HLPad; .scl 2; .type 32; .endef
   _HLPad:movq     $hlpad,            %rax
          jmp      0f
          /*
            ============================================
            TOPad   add topic to topics list
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    HWND
               RDX    message
               R08    WPARAM
               R09    LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    MRESULT
            ============================================
          */
          .p2align 4,,15
          .globl   _TOPad
          .def     _TOPad; .scl 2; .type 32; .endef
   _TOPad:movq     $topad,            %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                          D I S T R I B U T O R
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0xF8,             %rsp
          movq     %r12,              0xA0(%rsp)
          movq     %rbp,              0xA8(%rsp)
          movq     %rsi,              0xB0(%rsp)
          movq     %rdi,              0xB8(%rsp)
          movq     _BNR(%rip),        %rsi           # RSI = BNR
          movq     %rbx,              0xC0(%rsp)
          movq     %r11,              0xC8(%rsp)
          movq     %r10,              0xD0(%rsp)
          movq     %r9,               0xD8(%rsp)
          movq     %r8,               0xE0(%rsp)
          movq     %rdx,              0xE8(%rsp)
          movq     %rcx,              0xF0(%rsp)
          movq     MH__OL(%rsi),      %r12           # STV_MH_OLH
          movq     MH__TP(%rsi),      %rbp           # STV_MH_TOP
          jmp      *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            help     user call to OLH
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    help number
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     help:movl     %ecx,              %ebx           # RBX = help number
          leaq     LD__OL(%rsi),      %rcx           # RCX = LD__OL
          call     _LDreq
          leaq     LD__TP(%rsi),      %rcx           # RCX = LD__TP
          testl    %eax,              %eax           # load OLH failed?
          jne      XIT
          call     _LDreq
          testl    %eax,              %eax           # load TOP failed?
          jne      0f
          movq     MH__OL(%rsi),      %r10           # R10 = MH help
          movq     MH__TP(%rsi),      %r11           # R11 = MH topics
          movl     %ebx,              OLHOLH(%rsi)   # store OLHOLH
          leaq     _HLPdl(%rip),      %rcx           # RCX = PFNWP
          movl     $0x0805,           %edx           # RDX = ID
          call     _DBox
          movq     %r11,              %rcx           # MH top
          call     _LDfre
        0:movq     %r10,              %rcx           # MH olh
          call     _LDfre
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            hlpdl   OLH main dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   DQ   HWND
               RDX   DQ   message
               R08   DQ   WPARAM
               R09   DQ   LPARAM
               RBX   DQ   ?
               RDI   DQ   ?
               RSI   DQ   BNR
               R12   DQ   MH help
               RBP   DQ   MH topics
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    hlpdl:movq     %rcx,              %rdi           # RDI = HWND
          xorq     %r10,              %r10           # R10 = 0
          andl     $0xFFFF,           %r8d           # R08 = ID control
          subl     $0x0111,           %edx           # WM_COMMAND?
          je       0f
          incl     %edx                              # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     OLHOLH(%rsi),      %edx           # RDX = help number
          movl     USRLNG(%rsi),      %r8d           # R08 = language
          xorq     %r10,              %r10           # R10 = FALSE
          movq     $0x01,             %r11           # R11 = TRUE
          movq     %rcx,              HW__OL(%rsi)   # store HWND
          movl     $0x01,             DLG_TY(%rsi)   # switch to system dialog
          negl     _OLH_MODE(%rip)                   # MODE_CODING?
          cmovne   %r10,              %r11           # R11 = FALSE
          movq     %r10,              0x20(%rsp)     # P_5 = NULL
          movq     %r12,              %rcx           # RCX = MemHandle
          shll     %edx                              # RDX = title
          andl     $0x0F,             %r8d           # make language valid
          movl     $0x07,             %r9d           # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rax,              %rbx           # RBX = EA title
          incl     %edx                              # RDX = text
          call     _FDacc
          movq     %rax,              OLHTXT(%rsi)   # store OLHTXT
          movq     %rax,              %r10           # R10 = EA text
          movq     %rdi,              %rcx           # RCX = HWND
          movl     $0x20,             %edx           # title
          movl     $0x21,             %r8d           # text 1st
          movl     $0x22,             %r9d           #      last
          call     _DLGtxt
          movq     %rbx,              %rdx           # RDX = EA text
          call     _WnSTx
          movl     $0x0803,           %edx           # RDX = ID MLE
          movl     $0xCF,             %r8d           # R08 = EM_SETREADONLY
          movq     %r11,              %r9            # R09 = TRUE/FALSE
          call     _SnDIM
          movq     %r10,              %r8            # R08 = EA text
          call     _WnSDT
          call     _CtrWn
          jmp      XIO
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0x0801,           %r8            # [Topic]?
          je       2f
          incq     %r8                               # [OK]?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            OK
            ~~~~~~~~~~~~~~~~~~~~~
          */
          negl     _OLH_MODE
          je       KLD
          movl     $0x0803,           %edx           # RDX = ID
          movq     $0xB8,             %r8            # R08 = EM_GETMODIFY
          xorq     %r9,               %r9            # R09 = NULL
          movq     %r10,              0x20(%rsp)     # P_5 = NULL
          call     _SnDIM
          testl    %eax,              %eax
          je       KLD
          movq     %rdi,              HW__OL(%rsi)   # pass HWND for MLE access
          leaq     _HLPad(%rip),      %rcx           # RCX = PFNWP
          movl     $0x0810,           %edx           # RDX = ID
          call     _DBox
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~
            TOPIC
            ~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        2:movq     OLHTXT(%rsi),      %r10           # R10 = EA text
          movl     $0x0803,           %edx           # ID
          movl     $0xB0,             %r8d           # EM_GETSEL
          xorl     %r9d,              %r9d           # NULL
          movq     %r10,              0x20(%rsp)     # NULL
          call     _SnDIM
          pxor     %xmm0,             %xmm0          # XM0 = 0
          movzwl   %ax,               %ebx           # RBX = offset from file begin sel start
          shrl     $0x10,             %eax           # RAX =                        sel end
          movdqa   %xmm0,             0x40(%rsp)     # clear input buffer
          movdqa   %xmm0,             0x50(%rsp)
          movdqa   %xmm0,             0x60(%rsp)
          movdqa   %xmm0,             0x70(%rsp)
          addq     %rbx,              %r10           # R10 = EA selection
          subl     %ebx,              %eax           # RAX = selection size
          leaq     0x40(%rsp),        %r8            # R08 = buffer
          cmpl     $0x3F,             %eax           # RAX > limit?
          ja       R41
          movl     %eax,              %edx           # RDX = byte_cnt
          movq     %r8,               %r11           # R11 = buffer
          /*
            ~~~~~~~~~~~~~~
            evaluate
            ~~~~~~~~~~~~~~
          */
        3:movzb    0x00(%r10),        %ebx           # EAX = byte
          decl     %edx                              # byte_cnt--
          js       6f
          incq     %r10                              # R09 = next EA
          cmpl     $0x3C,             %ebx           # <?
          je       4f
          cmpl     $0x5B,             %ebx           # [?
          je       4f
          cmpl     $0x7B,             %ebx           # {?
          je       4f
          testl    %ebx,              %ebx           # end?
          je       6f
          jmp      3b
        4:addl     $0x02,             %ebx           # RBX = end marker
        5:movzb    0x00(%r10),        %eax           # EAX = byte
          cmpl     %ebx,              %eax           # marker?
          je       7f
          incq     %r10                              # src++
          movl     %eax,              0x00(%r11)     # write char
          incq     %r11                              # tgt++
          decl     %edx                              # byte_cnt--
          jns      5b
        6:leaq     LC00(%rip),        %r8            # R08 = missing marker
          incl     %r9d
          jmp      8f
          /*
            ~~~~~~~~~~~~~~
            display
            ~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        7:movb     $0x00,             0x00(%r11)     # terminate
        8:movl     $0x0804,           %edx           # ID
          call     _WnSDT
          testl    %r9d,              %r9d           # topic missing?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~
            call topics
            ~~~~~~~~~~~~~~
          */
          movq     %r8,               OLHSTR(%rsi)   # store STV_OLH_STR
          leaq     _TOPdl(%rip),      %rcx           # RCX = PFNWP
          movl     $0x0808,           %edx           # RDX = ID
          call     _DBox
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            TOPdl   topic dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   DQ   HWND
               RDX   DQ   message
               R08   DQ   WPARAM
               R09   DQ   LPARAM
               RBX   DQ   ?
               RDI   DQ   ?
               RSI   DQ   BNR
               R12   DQ   MH help
               RBP   DQ   MH topics
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    topdl:movq     OLHSTR(%rsi),      %rbx           # RBX = OLHSTR
          movq     %rcx,              %rdi           # RDI = HWND
          xorq     %r10,              %r10           # R10 = 0
          andl     $0xFFFF,           %r8d           # R08 = ID control
          subl     $0x0111,           %edx           # WM_COMMAND?
          je       2f
          incl     %edx                              # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     USRLNG(%rsi),      %r8d           # R08 = language
          movq     %rbx,              0x20(%rsp)     # P_5 = EA string
          movq     %rbp,              %rcx           # RCX = MH top
          xorl     %edx,              %edx           # RDX = 0 (bottom)
          andq     $0x0F,             %r8            # R08 = language
          movq     $0x08,             %r9            # R09 = FDA_SEARCH
          call     _FDacc
          movl     %eax,              OLHTOP(%rsi)   # store topic number
          testl    %eax,              %eax           # found?
          jns      0f
          leaq     LC04(%rip),        %rax           # RAX = ???
          leaq     LC05(%rip),        %r10           # R10 = no text
          negl     _OLH_MODE
          je       1f
          leaq     _TOPad(%rip),      %rcx           # PFNWP
          movl     $0x0810,           %edx           # ID
          call     _DBox
          movl     OLHTOP(%rsi),      %eax           # EAX = topic
          testl    %eax,              %eax           # valid?
          js       4f
        0:movq     %rbp,              %rcx           # RCX = MH top
          leal     0x01(%eax),        %edx           # RDX = text
          decq     %r9                               # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rax,              %r10           # R10 = EA text
          decl     %edx                              # R08 = title
          call     _FDacc
        1:movq     %rdi,              %rcx           # RCX = HWND
          movq     %rax,              %rdx           # RDX = EA title
          call     _WnSTx
          movl     $0x0809,           %edx           # RDX = ID text
          movq     %r10,              %r8            # R08 = EA text
          call     _WnSDT
          movl     $0xC8,             %r8d           # R08 = EM_FMTLINES
          movl     $0x01,             %r9d           # R09 = TRUE
          call     _SnDIM
          negl     _OLH_MODE
          jne      XIO
          movl     $0xCF,             %r8d           # R08 = EM_SETREADONLY
          movl     $0x01,             %r9d           # R09 = TRUE
          movl     $0x00,             0x20(%rsp)     # P_5 = NULL
          call     _SnDIM
          jmp      XIO
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        2:cmpq     $0x080A,           %r8            # [OK]?
          jne      XIZ
          negl     _OLH_MODE                         # MODE_CODING?
          je       4f
          movl     $0x0809,           %edx           # RDX = ID
          movq     $0xB8,             %r8            # R08 = EM_GETMODIFY
          xorq     %r9,               %r9            # R09 = NULL
          movq     %r10,              0x20(%rsp)     # P_5 = NULL
          call     _SnDIM
          testl    %eax,              %eax           # text changed?
          je       4f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
            text modified
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     _OBF(%rip),        %r10           # R10 = EA buffer
          movq     $0x00,             0x20(%rsp)     # P_5 = NULL
          movq     %rdi,              %rcx           # RCX = HWND
          movl     $0x0809,           %edx           # EDX = ID
          movq     %r10,              %r8            # R08 = EA buffer
          movq     $0x0400,           %r9            # R09 = size
          call     _WnQDT
          movl     $0x01,             ERR_TY(%rsi)   # system message
          movl     $0x42,             %ecx           # RCX = ERR_OLH_CHANGED
          call     _ErrMgr
          movl     OLHTOP(%rsi),      %edx           # RDX = topic
          movl     USRLNG(%rsi),      %r8d           # R08 = language
          movq     %r10,              0x20(%rsp)     # P_5 = EA buffer
          movq     %rbp,              %rcx           # RCX = MH topics
          movl     %eax,              %r9d           # R09 = FDA_READ/WRITE/DELETE
          leal     0x01(, %edx, 2),   %edx           # RDX = text
          andq     $0x0F,             %r8            # R08 = language
          call     _FDacc
          cmpq     $0x03,             %r9            # FDA_DELETE?
          jne      4f
          decl     %edx                              # RDX = topic
          call     _FDacc
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
            kill dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        4:movq     %rdi,              %rcx           # RCX = HWND
          call     _KillWin
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            HLPad        get help title, store title + text
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   DQ   HWND
               RDX   DQ   message
               R08   DQ   WPARAM
               R09   DQ   LPARAM
               RBX   DQ   ?
               RDI   DQ   ?
               RSI   DQ   BNR
               R12   DQ   MH help
               RBP   DQ   MH topics
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    hlpad:andl     $0xFFFF,           %r8d           # R08 = ID
          xorq     %r10,              %r10           # R10 = 0
          movq     %rcx,              %rdi           # RDI = HWND
          subl     $0x0111,           %edx           # WM_COMMAND?
          je       0f
          incl     %edx                              # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     OLHOLH(%rsi),      %edx           # RDX = help number
          movl     USRLNG(%rsi),      %r8d           # R08 = language
          movq     %r12,              %rcx           # RCX = MH help
          movq     $0x07,             %r9            # R09 = FDA_ADDRESS
          shll     %edx                              # RDX = title
          andq     $0x0F,             %r8            # R08 = language
          call     _FDacc
          movq     %r10,              0x20(%rsp)     # P_5 = 0
          movq     %rax,              %rbx           # RBX = EA title
          movq     %rdi,              %rcx           # RCX = HWND
          movl     $0x0814,           %edx           # RDX = ID
          movq     $0xC5,             %r8            # R08 = EM_LIMITTEXT
          movq     $0x40,             %r9            # R09 = size
          call     _SnDIM
          movq     %rbx,              %r8            # address
          call     _WnSDT
          incl     DLG_TY(%rsi)                      # system dialog
          movl     $0x28,             %edx           # RDX = title
          movq     $0x29,             %r8            # R08 = first
          movq     $0x2B,             %r9            # R09 = last
          call     _DLGtxt
          call     _CtrWn
          jmp      XIO
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0x0812,           %r8            # [Abort]?
          je       KLD
          decq     %r8                               # [Store]?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
            store
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     _OBF(%rip),        %rbx           # RBX = EA OBF
          leaq     0x30(%rsp),        %r10           # R10 = EA title
          movq     %rdi,              %rcx           # RCX = HWND
          movl     $0x0814,           %edx           # RDX = ID title
          movq     %r10,              %r8            # R08 = EA title
          movq     $0x40,             %r9            # R09 = size
          call     _WnQDT
          movq     HW__OL(%rsi),      %rcx           # RCX = HWND par
          movl     $0x0803,           %edx           # RDX = ID text
          movq     $0xC8,             %r8            # R08 = EM_FMTLINES
          xorq     %r9,               %r9            # R09 = FALSE
          call     _SnDIM
          movq     %rbx,              %r8            # R08 = EA text
          movq     $0x1000,           %r9            # R09 = size
          call     _WnQDT
          movl     OLHOLH(%rsi),      %edx           # RDX = help number
          movl     USRLNG(%rsi),      %r8d           # R08 = language
          movq     %r10,              0x20(%rsp)     # P_5 = EA title
          movb     $0x00,             0x0FFF(%rbx)   # safety stop
          movq     %r12,              %rcx           # RCX = MH olh
          shll     %edx                              # R08 = title
          andq     $0x0F,             %r8            # R08 = language
          movq     $0x02,             %r9            # R09 = FDA_WRITE
          call     _FDacc
          movq     %rbx,              0x20(%rsp)     # P_5 = EA text
          incl     %edx                              # RDX = text
          call     _FDacc
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            TOPad        add topic to topics list
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   DQ   HWND
               RDX   DQ   message
               R08   DQ   WPARAM
               R09   DQ   LPARAM
               RBX   DQ   ?
               RDI   DQ   ?
               RSI   DQ   BNR
               R12   DQ   MH help
               RBP   DQ   MH topics
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    topad:movq     OLHSTR(%rsi),      %rbx           # RBX = OLHSTR
          andl     $0xFFFF,           %r8d           # R08 = ID
          xorq     %r10,              %r10           # R10 = 0
          movq     %rcx,              %rdi           # R11 = HWND
          subl     $0x0111,           %edx           # WM_COMMAND?
          je       0f
          incl     %edx                              # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     %r10,              0x20(%rsp)     # P_5 = 0
          movl     $0x0814,           %edx           # RDX = ID
          movq     $0xC5,             %r8            # R08 = EM_LIMITTEXT
          movq     $0x40,             %r9            # R09 = size
          call     _SnDIM
          movq     $0xCF,             %r8            # R08 = EM_SETREADONLY
          call     _SnDIM
          movq     %rbx,              %r8            # address
          call     _WnSDT
          incl     DLG_TY(%rsi)                      # system dialog
          movl     $0x30,             %edx           # RDX = title
          movq     $0x31,             %r8            # R08 = first
          movq     $0x33,             %r9            # R09 = last
          call     _DLGtxt
          call     _CtrWn
          jmp      XIO
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:movl     $0xFFFFFFFF,       OLHTOP(%rsi)   # unknown topic (-1)
          subq     $0x0812,           %r8            # [Abort]?
          je       KLD
          decq     %r8                               # [Store]?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
            add to topics
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     USRLNG(%rsi),      %r8d           # R08 = language
          leaq     0x30(%rsp),        %rax           # EAX = EA empty
          movl     $0x00,             0x30(%rsp)     # empty string
          movq     %rbp,              %rcx           # RCX = MH top
          xorl     %edx,              %edx           # RDX = 0 (bottom)
          andq     $0x0F,             %r8            # R08 = language
          movq     $0x08,             %r9            # R09 = FDA_SEARCH
          movq     %rax,              0x20(%rsp)     # P_5 = EA empty
          call     _FDacc
          movl     %eax,              OLHTOP(%rsi)   # store topic number
          testl    %eax,              %eax           # found?
          js       R40
          testl    $0x01,             %eax           # odd?
          jne      R40
          movl     %eax,              %edx           # RDX = entry
          movq     $0x02,             %r9            # R09 = FDA_WRITE
          movq     %rbx,              0x20(%rsp)     # P_5 = EA string
          call     _FDacc
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                        E R R O R   H A N D L E R
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      R40:movl     $0x40,             %ecx           # [ ERR_OLH_TOP_FULL ]
          jmp      0f
          .p2align 4,,15
      R41:movl     $0x41,             %ecx           # [ ERR_OLH_SEL_SIZE ]
        0:incl     ERR_TY(%rsi)                      # system message
          call     _ErrMgr
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                          C O M M O N   E X I T
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            kill dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      KLD:movq     %rdi,              %rcx           # RCX = HWND
          call     _KillDlg
          xorl     %eax,              %eax
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
            RC = TRUE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIO:movl     $0x01,             %eax
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
            RC = FALSE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorl     %eax,              %eax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
            restore registers
            ~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      XIT:movq     0xA0(%rsp),        %r12
          movq     0xA8(%rsp),        %rbp
          movq     0xB0(%rsp),        %rsi
          movq     0xB8(%rsp),        %rdi
          movq     0xC0(%rsp),        %rbx
          movq     0xC8(%rsp),        %r11
          movq     0xD0(%rsp),        %r10
          movq     0xD8(%rsp),        %r9
          movq     0xE0(%rsp),        %r8
          movq     0xE8(%rsp),        %rdx
          movq     0xF0(%rsp),        %rcx
          addq     $0xF8,             %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,              8, 3
          .comm    _OLH_MODE,         8, 3
