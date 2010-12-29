          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                              O n L i n e  -  H E L P                               Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К                          *** (C) ST-Open 1979 - 2009 ***                           Кл
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
          .data
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     LC00:.ascii   "[*] {*} <*>"
          .byte    0x00, 0x00, 0x00, 0x00, 0x00
     LC01:.ascii   "OLHdlg"
          .byte    0x00, 0x00
     LC02:.ascii   "TOPdlg"
          .byte    0x00, 0x00
     LC03:.ascii   "OLHnew"
          .byte    0x00, 0x00
     LC04:.ascii   "???"
          .byte    0x00, 0x00, 0x00, 0x00, 0x00
     LC05:.ascii   "no text"
          .byte    0x00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г Help     user call to OLH                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX    help number                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX    always zero                       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _Help
          .def     _Help; .scl 2; .type 32; .endef
    _Help:movq     $help,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г HLPdl    OLH - help dialog                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX    HWND                              Гл
          Г   RDX    message                           Гл
          Г   R08    WPARAM                            Гл
          Г   R09    LPARAM                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX    MRESULT                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _HLPdl
          .def     _HLPdl; .scl 2; .type 32; .endef
   _HLPdl:movq     $hlpdl,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TOPdl    OLH - topic dialog                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX    HWND                              Гл
          Г   RDX    message                           Гл
          Г   R08    WPARAM                            Гл
          Г   R09    LPARAM                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX    MRESULT                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _TOPdl
          .def     _TOPdl; .scl 2; .type 32; .endef
   _TOPdl:movq     $topdl,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г HLPad   get help title, store title + text Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX    HWND                              Гл
          Г   RDX    message                           Гл
          Г   R08    WPARAM                            Гл
          Г   R09    LPARAM                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX    MRESULT                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _HLPad
          .def     _HLPad; .scl 2; .type 32; .endef
   _HLPad:movq     $hlpad,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TOPad   add topic to topics list           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX    HWND                              Гл
          Г   RDX    message                           Гл
          Г   R08    WPARAM                            Гл
          Г   R09    LPARAM                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX    MRESULT                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _TOPad
          .def     _TOPad; .scl 2; .type 32; .endef
   _TOPad:movq     $topad,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                               D I S T R I B U T O R                                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:subq     $0xF8,%rsp
          nop
          nop
          movq     %r12,0xA0(%rsp)
          movq     %rbp,0xA8(%rsp)
          movq     %rsi,0xB0(%rsp)
          movq     %rdi,0xB8(%rsp)
          movq     _BNR(%rip),%rsi             # RSI = BNR
          movq     %rbx,0xC0(%rsp)
          movq     %r11,0xC8(%rsp)
          movq     %r10,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          movq     OLH_MH(%rsi),%r12           # STV_MH_OLH
          movq     TOP_MH(%rsi),%rbp           # STV_MH_TOP
          jmp      *%rax
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г help     user call to OLH                                                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          Г-> RCX    help number               Глллллллллллллллллллллллллллллллллллллллллллллллллл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     help:pxor     %xmm0,%xmm0
          movl     %ecx, %ebx                  # RBX = help number
          xorl     %eax, %eax                  # RAX = 0
          leaq     0x20(%rsp),%rcx             # RCX = LD
          movdqa   %xmm0,      0x20(%rsp)      # set LD
          movl     $0xFFFFFFFB,0x30(%rsp)      # olh.dat
          movl     $0x23,      0x34(%rsp)      # r, w, static
          movq     %rax,       0x38(%rsp)
          movdqa   %xmm0,      0x40(%rsp)
          movdqa   %xmm0,      0x50(%rsp)
          movdqa   %xmm0,      0x60(%rsp)
          call     _LDreq
          movq     0x38(%rsp),%r12             # R11 = MH olh
          testl    %eax,%eax
          jne      XIT
          decl     0x30(%rsp)                  # topics
          call     _LDreq
          movq     0x38(%rsp),%rbp             # RBP = MH top
          testl    %eax,%eax
          jne      0f
          movl     %ebx,OLHOLH(%rsi)           # STV_CUR_OLH
          movq     %r12,OLH_MH(%rsi)           # STV_MH_OLH
          movq     %rbp,TOP_MH(%rsi)           # STV_MH_TOP
          leaq     _HLPdl(%rip),%rcx           # RCX = PFNWP
          leaq     LC01(%rip),  %rdx           # RDX = ID
          call     _DBox
          pxor     %xmm0,%xmm0                 # clear variables
          movq     %xmm0,OLHOLH(%rsi)
          movdqa   %xmm0,OLHTXT(%rsi)
          movdqa   %xmm0,OLH_MH(%rsi)
          movdqa   %xmm0,OLH_HW(%rsi)
          movq     %rbp,%rcx                   # MH top
          call     _LDfre
        0:movq     %r12,%rcx                   # MH olh
          call     _LDfre
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г hlpdl   OLH main dialog                                                             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          Г-> RCX   DQ   HWND                 Гллллллллллллллллллллллллллллллллллллллллллллллллллл
          Г   RDX   DQ   message              Гл
          Г   R08   DQ   MPARAM 1             Гл
          Г   R09   DQ   MPARAM 2             Гл
          Г   RBX   DQ   ?                    Гл
          Г   RDI   DQ   ?                    Гл
          Г   RSI   DQ   BNR                  Гл
          Г   R12   DQ   MH help              Гл
          Г   RBP   DQ   MH topics            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    hlpdl:movq     %rcx,%rdi                   # RDI = HWND
          xorq     %r10,%r10                   # R10 = 0
          andl     $0xFFFF,%r8d                # R08 = ID control
          subl     $0x0111,%edx                # WM_COMMAND?
          je       0f
          incl     %edx                        # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDLG                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллл
          */
          xorq     %r10, %r10                  # R10 = FALSE
          movl     $0x01,%r11d                 # R11 = TRUE
          movl     OLHOLH(%rsi),%ebx           # STV_CUR_OLH
          movl     USRLNG(%rsi),%r8d           # R08 = language
          movq     %rcx, OLH_HW(%rsi)          # store HWND
          movl     $0x01,DLG_TY(%rsi)          # switch to system dialog
          negl     _OLH_MODE(%rip)             # MODE_CODING?
          cmovne   %r10, %r11                  # R11 = FALSE
          movq     %r10, 0x20(%rsp)            # P_5 = NULL
          movq     %r12, %rcx                  # RCX = MemHandle
          movl     %ebx, %edx                  # RDX = help number
          andl     $0x0F,%r8d                  # make language valid
          movl     $0x07,%r9d                  # R09 = FDA_ADDRESS
          shll     %r8d                        # R08 = sub[lang-tit]
          call     _FDacc
          movq     %rax,   %rbx                # RBX = EA title
          incl     %r8d                        # sub[lang-txt]
          call     _FDacc
          movq     %rax,   OLHTXT(%rsi)        # store STV_OLH_TXT
          movq     %rax,   %r10                # R10 = EA text
          movq     %rdi,   %rcx                # RCX = HWND
          movl     $0x0803,%edx                # RDX = ID text
          movl     $0xC8,  %r8d                # R08 = EM_FMTLINES
          movl     $0x01,  %r9d                # R09 = TRUE
          call     _SnDIM
          movl     $0xCF,  %r8d                # R08 = EM_SETREADONLY
          movq     %r11,   %r9                 # R09 = TRUE/FALSE
          call     _SnDIM
          movq     %r10,   %r8                 # R08 = EA text
          call     _WnSDT
          decl     %edx                        # RDX = ID title
          movq     %rbx,   %r8                 # R08 = EA title
          call     _WnSDT
          movl     $0x32,%edx                  # title
          movl     $0x33,%r8d                  # text 1st
          movl     $0x34,%r9d                  #      last
          call     _DLGtxt
          call     _CtrWn
          jmp      XIO
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:subl     $0x0801,%r8d                # [Topic]?
          je       2f
          incl     %r8d                        # [OK]?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г OK                Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          negl     _OLH_MODE
          je       1f
          movl     $0x0803,%edx                # RDX = ID
          movl     $0xB8,  %r8d                # R08 = EM_GETMODIFY
          xorl     %r9d,   %r9d                # R09 = NULL
          movq     %r10,   0x20(%rsp)          # P_5 = NULL
          call     _SnDIM
          testl    %eax,%eax
          je       1f
          movq     %rdi,OLH_HW(%rsi)           # pass HWND for MLE access
          leaq     _HLPad(%rip),%rcx           # RCX = PFNWP
          leaq     LC03(%rip),  %rdx           # RDX = ID
          call     _DBox
          movq     %rdi,%rcx                   # RCX = HWND
        1:call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г TOPIC             Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
        2:movq     OLHTXT(%rsi),%r10           # R10 = EA text
          movl     $0x0803,%edx                # ID
          movl     $0xB0,  %r8d                # EM_GETSEL
          xorl     %r9d,   %r9d                # NULL
          movq     %r10,   0x20(%rsp)          # NULL
          call     _SnDIM
          pxor     %xmm0,%xmm0                 # XM0 = 0
          movzwl   %ax,  %ebx                  # RBX = offset from file begin sel start
          shrl     $0x10,%eax                  # RAX =                        sel end
          movdqa   %xmm0,  0x30(%rsp)          # clear input buffer
          movdqa   %xmm0,  0x40(%rsp)
          movdqa   %xmm0,  0x50(%rsp)
          movdqa   %xmm0,  0x60(%rsp)
          addq     %rbx, %r10                  # R10 = EA selection
          subl     %ebx, %eax                  # RAX = selection size
          leaq     0x30(%rsp),%r8              # R08 = buffer
          cmpl     $0x3F,%eax                  # RAX > limit?
          ja       R41
          movl     %eax,%edx                   # RDX = byte_cnt
          movq     %r8, %r11                   # R11 = buffer
          /*
          кФФФФФФФФФФФФФП
          Г evaluate    Гл
          РФФФФФФФФФФФФФйл
            лллллллллллллл
          */
        3:movzb    0x00(%r10),%ebx             # EAX = byte
          decl     %edx                        # byte_cnt--
          js       6f
          incq     %r10                        # R09 = next EA
          cmpl     $0x3C,%ebx                  # <?
          je       4f
          cmpl     $0x5B,%ebx                  # [?
          je       4f
          cmpl     $0x7B,%ebx                  # {?
          je       4f
          testl    %ebx, %ebx                  # end?
          je       6f
          jmp      3b
        4:addl     $0x02,%ebx                  # RBX = end marker
        5:movzb    0x00(%r10),%eax             # EAX = byte
          nop
          nop
          cmpl     %ebx,%eax                   # marker?
          je       7f
          incq     %r10                        # src++
          movl     %eax,0x00(%r11)             # write char
          incq     %r11                        # tgt++
          decl     %edx                        # byte_cnt--
          jns      5b
        6:leaq     LC00(%rip),%r8              # R08 = missing marker
          incl     %r9d
          jmp      8f
          /*
          кФФФФФФФФФФФФФП
          Г display     Гл
          РФФФФФФФФФФФФФйл
            лллллллллллллл
          */
          .p2align 4,,15
        7:movb     $0x00,0x00(%r11)            # terminate
        8:movl     $0x0804,%edx                # ID
          call     _WnSDT
          testl    %r9d,%r9d                   # topic missing?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФП
          Г call topics Гл
          РФФФФФФФФФФФФФйл
            лллллллллллллл
          */
          movq     %r8, OLHSTR(%rsi)           # store STV_OLH_STR
          leaq     _TOPdl(%rip),%rcx           # RCX = PFNWP
          leaq     LC02(%rip),  %rdx           # RDX = ID
          call     _DBox
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TOPdl   topic dialog                                                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          Г-> RCX   DQ   HWND                 Гллллллллллллллллллллллллллллллллллллллллллллллллллл
          Г   RDX   DQ   message              Гл
          Г   R08   DQ   WPARAM               Гл
          Г   R09   DQ   LPARAM               Гл
          Г   RBX   DQ   ?                    Гл
          Г   RDI   DQ   ?                    Гл
          Г   RSI   DQ   BNR                  Гл
          Г   R12   DQ   MH help              Гл
          Г   RBP   DQ   MH topics            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    topdl:movq     OLHSTR(%rsi),%rbx           # RBX = STV_OLH_STR
          movq     %rcx,%rdi                   # RDI = HWND
          xorq     %r10,%r10                   # R10 = 0
          andl     $0xFFFF,%r8d                # R08 = ID control
          subl     $0x0111,%edx                # WM_COMMAND?
          je       2f
          incl     %edx                        # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDLG                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллл
          */
          movl     USRLNG(%rsi),%r8d           # R08 = language
          movq     %rcx,TOP_HW(%rsi)           # store HWND
          movq     %rbp,%rcx                   # RCX = MH top
          xorl     %edx,%edx                   # RDX = 0 (bottom)
          shll     %r8d                        # R08 = sub[lang_top]
          movl     $0x08,%r9d                  # R09 = FDA_SEARCH
          movq     %rbx,0x20(%rsp)             # P_5 = EA string
          call     _FDacc
          movl     %eax,OLHTOP(%rsi)           # store topic number
          testl    %eax,%eax                   # found?
          jns      0f
          leaq     LC04(%rip),%rax             # RAX = ???
          leaq     LC05(%rip),%r10             # R10 = no text
          negl     _OLH_MODE
          je       1f
          leaq     _TOPad(%rip),%rcx           # PFNWP
          leaq     LC03(%rip),  %rdx           # ID
          call     _DBox
          movl     OLHTOP(%rsi),%eax           # EAX = topic
          testl    %eax,%eax                   # valid?
          js       4f
        0:movq     %rbp,%rcx                   # RCX = MH top
          movl     %eax,%edx                   # RDX = entry
          incl     %r8d                        # R08 = sub[lang_txt]
          decl     %r9d                        # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rax,%r10                   # R10 = EA text
          decl     %r8d                        # R08 = sub[lang_top]
          call     _FDacc
        1:movq     %rdi,%rcx                   # RCX = HWND
          movq     %rax,%rdx                   # RDX = EA title
          call     _WnSTx
          movl     $0x0809,%edx                # RDX = ID
          movq     %r10,%r8                    # R08 = EA text
          call     _WnSDT
          negl     _OLH_MODE
          jne      XIO
          movl     $0xCF,%r8d                  # R08 = EM_SETREADONLY
          movl     $0x01,%r9d                  # R09 = TRUE
          movl     $0x00,0x20(%rsp)            # P_5 = NULL
          call     _SnDIM
          movl     $0xC8,%r8d                  # R08 = EM_FMTLINES
          movl     $0x01,%r9d                  # R09 = TRUE
          call     _SnDIM
          jmp      XIO
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        2:cmpl     $0x080A,%r8d                # [OK]?
          jne      XIZ
          negl     _OLH_MODE                   # MODE_CODING?
          je       4f
          movl     $0x0809,%edx                # RDX = ID
          movl     $0xB8,  %r8d                # R08 = EM_GETMODIFY
          xorl     %r9d,   %r9d                # R09 = NULL
          movq     %r10,   0x20(%rsp)          # P_5 = NULL
          call     _SnDIM
          testl    %eax,%eax                   # text changed?
          je       4f
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г text modified     Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          movl     $0x1000,%ecx                # RCX = size
          call     _AloMem
          testq    %rax,%rax
          je       4f
          movq     $0x00,  0x20(%rsp)          # P_5 = NULL
          movq     %rax,   %r10                # R10 = EA buffer
          movq     %rdi,   %rcx                # RCX = HWND
          movl     $0x0809,%edx                # EDX = ID
          movl     $0xC8,%r8d                  # R08 = EM_FMTLINES
          xorl     %r9d, %r9d                  # R09 = FALSE
          call     _SnDIM
          movq     %r10,   %r8                 # R08 = EA buffer
          movl     $0x1000,%r9d                # R09 = size
          call     _WnQDT
          movl     $0x01,ERR_TY(%rsi)          # system message
          movl     $0x42,%ecx                  # RCX = ERR_OLH_CHANGED
          call     _ErrMgr
          movl     USRLNG(%rsi),%r8d           # R08 = language
          cmpl     $0x01,%eax                  # discard?
          je       3f
          movq     %rbp,%rcx                   # RCX = MH topics
          movl     OLHTOP(%rsi),%edx           # RDX = topic
          leaq     0x01(%r8, %r8, 1),%r8       # R08 = sub[lang_txt]
          movl     %eax,%r9d                   # R09 = FDA_x (proper)
          call     _FDacc
          cmpl     $0x03,%r9d                  # FDA_DELETE?
          jne      3f
          decq     %r8                         # R08 = sub[lang_top]
          call     _FDacc
        3:movq     %r10,   %rcx                # RCX = EA buffer
          movl     $0x1000,%edx                # R09 = size
          call     _FreMem
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г kill dialog       Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        4:movq     %rdi,%rcx                   # RCX = HWND
          call     _KillWin
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г HLPad        get help title, store title + text                                     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          Г-> RCX   DQ   HWND                 Гллллллллллллллллллллллллллллллллллллллллллллллллллл
          Г   RDX   DQ   message              Гл
          Г   R08   DQ   WPARAM               Гл
          Г   R09   DQ   LPARAM               Гл
          Г   RBX   DQ   ?                    Гл
          Г   RDI   DQ   ?                    Гл
          Г   RSI   DQ   BNR                  Гл
          Г   R12   DQ   MH help              Гл
          Г   RBP   DQ   MH topics            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    hlpad:andl     $0xFFFF,%r8d                # R08 = ID
          xorq     %r10,%r10                   # R10 = 0
          movq     %rcx,%r11                   # R11 = HWND
          subl     $0x0111,%edx                # WM_COMMAND?
          je       0f
          incl     %edx                        # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDLG                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллл
          */
          movl     USRLNG(%rsi),%r8d           # R08 = language
          movl     OLHOLH(%rsi),%edx           # RDX = help number
          movq     %r12,   %rcx                # RCX = MH help
          movl     $0x07,  %r9d                # R09 = FDA_ADDRESS
          shll     %r8d                        # R08 = sub[lang_tit]
          call     _FDacc
          movq     %r10,   0x20(%rsp)          # P_5 = 0
          movq     %rax,   %rbx                # RBX = EA title
          movq     %r11,   %rcx                # RCX = HWND
          movl     $0x0814,%edx                # RDX = ID
          movl     $0xC5,  %r8d                # R08 = EM_LIMITTEXT
          movl     $0x40,  %r9d                # R09 = size
          call     _SnDIM
          movq     %rbx,   %r8                 # address
          call     _WnSDT
          incl     DLG_TY(%rsi)                # system dialog
          movl     $0x37,%edx                  # RDX = title
          movl     $0x38,%r8d                  # R08 = first
          movl     $0x3A,%r9d                  # R09 = last
          call     _DLGtxt
          call     _CtrWn
          jmp      XIO
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:subl     $0x0812,%r8d                # [Abort]?
          je       1f
          decl     %r8d                        # [Store]?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г store             Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
call _RegDmp
          */
          movl     $0x1000,%ecx                # RCX = size
          call     _AloMem
          movq     %rax,%rbx                   # RBX = EA text
          testq    %rax,%rax                   # valid EA?
          je       1f
          leaq     0x30(%rsp),%r10             # R10 = EA title
          movq     OLH_HW(%rsi),%rdi           # RDI = HWND olh
          movq     %r11,   %rcx                # RCX = HWND
          movl     $0x0814,%edx                # RDX = ID title
          movq     %r10,   %r8                 # R08 = EA title
          movl     $0x40,  %r9d                # R09 = size
          call     _WnQDT
          movq     %rdi,   %rcx                # RCX = HWND par
          movl     $0x0803,%edx                # RDX = ID text
          movl     $0xC8,%r8d                  # R08 = EM_FMTLINES
          xorl     %r9d, %r9d                  # R09 = FALSE
          call     _SnDIM
          movq     %rbx,   %r8                 # R08 = EA text
          movl     $0x1000,%r9d                # R09 = size
          call     _WnQDT
          movl     USRLNG(%rsi),%r8d           # R08 = language
          movl     OLHOLH(%rsi),%edx           # RDX = help number
          movb     $0x00,0x0FFF(%rbx)          # safety stop
          movq     %r12, %rcx                  # RCX = MH olh
          shll     %r8d                        # R08 = sub[lang_tit]
          movl     $0x02,%r9d                  # R09 = FDA_WRITE
          movq     %r10,0x20(%rsp)             # P_5 = EA title
          call     _FDacc
          incl     %r8d                        # RDX = sub[lang_txt]
          movq     %rbx,0x20(%rsp)             # P_5 = EA text
          call     _FDacc
          movq     %rbx,   %rcx                # RCX = EA text
          movl     $0x1000,%edx                # RDX = size
          call     _FreMem
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г kill dialog       Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        1:movq     %r11,%rcx                   # RCX = HWND
          call     _KillWin
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TOPad        add topic to topics list                                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          Г-> RCX   DQ   HWND                 Гллллллллллллллллллллллллллллллллллллллллллллллллллл
          Г   RDX   DQ   message              Гл
          Г   R08   DQ   WPARAM               Гл
          Г   R09   DQ   LPARAM               Гл
          Г   RBX   DQ   ?                    Гл
          Г   RDI   DQ   ?                    Гл
          Г   RSI   DQ   BNR                  Гл
          Г   R12   DQ   MH help              Гл
          Г   RBP   DQ   MH topics            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    topad:movq     OLHSTR(%rsi),%rbx           # RBX = STV_OLH_STR
          andl     $0xFFFF,%r8d                # R08 = ID
          xorq     %r10,   %r10                # R10 = 0
          movq     %rcx,   %r11                # R11 = HWND
          subl     $0x0111,%edx                # WM_COMMAND?
          je       0f
          incl     %edx                        # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDLG                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллл
          */
          movq     %r10,   0x20(%rsp)          # P_5 = 0
          movl     $0x0814,%edx                # RDX = ID
          movl     $0xC5,  %r8d                # R08 = EM_LIMITTEXT
          movl     $0x40,  %r9d                # R09 = size
          call     _SnDIM
          movl     $0xCF,  %r8d                # R08 = EM_SETREADONLY
          call     _SnDIM
          movq     %rbx,   %r8                 # address
          call     _WnSDT
          incl     DLG_TY(%rsi)                # system dialog
          movl     $0x3C,  %edx                # RDX = title
          movl     $0x3D,  %r8d                # R08 = first
          movl     $0x3F,  %r9d                # R09 = last
          call     _DLGtxt
          call     _CtrWn
          jmp      XIO
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:movl     $0xFFFFFFFF,OLHTOP(%rsi)    # unknown topic (-1)
          subl     $0x0812,%r8d                # [Abort]?
          je       1f
          decl     %r8d                        # [Store]?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г add to topics     Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          movl     USRLNG(%rsi),%r8d           # R08 = language

          leaq     0x30(%rsp),%rax             # EAX = EA empty
          movl     $0x00,0x30(%rsp)            # empty string
          movq     %rbp,%rcx                   # RCX = MH top
          xorl     %edx,%edx                   # RDX = 0 (bottom)
          shll     %r8d                        # R08 = sub[lang_top]
          movl     $0x08,%r9d                  # R09 = FDA_SEARCH
          movq     %rax,0x20(%rsp)             # P_5 = EA empty
          call     _FDacc
          movl     %eax,OLHTOP(%rsi)           # store topic number
          testl    %eax,%eax                   # valid?
          js       R40
          movl     %eax, %edx                  # RDX = entry
          movl     $0x02,%r9d                  # R09 = FDA_WRITE
          movq     %rbx,0x20(%rsp)             # P_5 = EA string
          call     _FDacc
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г discard           Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        1:movq     %r11,%rcx                   # RCX = HWND
          call _KillDlg
          jmp XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                             E R R O R   H A N D L E R                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      R40:movl     $0x40,%ecx                 # ў ERR_OLH_TOP_FULL ў
          jmp      0f
          .p2align 4,,15
      R41:movl     $0x41,%ecx                 # ў ERR_OLH_SEL_SIZE ў
        0:incl     ERR_TY(%rsi)               # system message
          call     _ErrMgr
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                               C O M M O N   E X I T                                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФП
          Г RC = TRUE           Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
      XIO:movl     $0x01,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г RC = FALSE          Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
      XIZ:xorl     %eax,%eax
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г restore registers   Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
      XIT:movq     0xA0(%rsp),%r12
          movq     0xA8(%rsp),%rbp
          movq     0xB0(%rsp),%rsi
          movq     0xB8(%rsp),%rdi
          movq     0xC0(%rsp),%rbx
          movq     0xC8(%rsp),%r11
          movq     0xD0(%rsp),%r10
          movq     0xD8(%rsp),%r9
          movq     0xE0(%rsp),%r8
          movq     0xE8(%rsp),%rdx
          movq     0xF0(%rsp),%rcx
          addq     $0xF8,%rsp
          ret
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BNR,      8, 3
          .comm    _OLH_MODE, 8, 3
