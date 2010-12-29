          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                            C o m m o n   D i a l o g s                             Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К                          *** (C) ST-Open 1979 - 2010 ***                           Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К You may copy and distribute this file as often as you want, but recipients are not Кл
          К allowed to pay anything for any copy of this file or its content. It isn't allowed Кл
          К to abuse its copyrighted content or introduced techniques for commercial purposes. Кл
          К Whatever is derived from this file or its content must be freely available without Кл
          К charge.                                                                            Кл
          К                                                                                    Кл
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
          .include "dt5.h"
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г jump table             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          .section .rdata, "dr"
          .p2align 4,,15
      jt0:.quad    L20                                 # 1460   EFld spin
          .quad    L21                                 # 1461   PBtn left  <
          .quad    L22                                 # 1462   PBtn       >
          .quad    XIZ                                 # 1463   EFld lang  1
          .quad    L23                                 # 1464   PBtn right <
          .quad    L24                                 # 1465   PBtn       >
          .quad    XIZ                                 # 1466   EFld lang  2
          .quad    L12                                 # 1467   MLE  1
          .quad    L26                                 # 1468   MLE  2
          .quad    L27                                 # 1469   EFld left  btn 1
          .quad    L27                                 # 146A   EFld           2
          .quad    L27                                 # 146B   EFld           3
          .quad    L28                                 # 146C   EFld right btn 1
          .quad    L28                                 # 146D   EFld           2
          .quad    L28                                 # 146E   EFld           3
          .quad    L29                                 # 146F   PBtn Discard
          .quad    L30                                 # 1470   PBtn Store
          .quad    L31                                 # 1471   PBtn Help
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdFLD                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _stdFLD
          .def     _stdFLD; .scl 2; .type 32; .endef
  _stdFLD:movq     $stdfld,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdOLH                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _stdOLH
          .def     _stdOLH; .scl 2; .type 32; .endef
  _stdOLH:movq     $stdolh,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdTOP                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _stdTOP
          .def     _stdTOP; .scl 2; .type 32; .endef
  _stdTOP:movq     $stdtop,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdMNU                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _stdMNU
          .def     _stdMNU; .scl 2; .type 32; .endef
  _stdMNU:movq     $stdmnu,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdMSG                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _stdMSG
          .def     _stdMSG; .scl 2; .type 32; .endef
  _stdMSG:movq     $stdmsg,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MLlang                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _MLlang
          .def     _MLlang; .scl 2; .type 32; .endef
  _MLlang:movq     $mllang,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdSPN                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _stdSPN
          .def     _stdSPN; .scl 2; .type 32; .endef
  _stdSPN:movq     $stdspn,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdBMP                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _stdBMP
          .def     _stdBMP; .scl 2; .type 32; .endef
  _stdBMP:movq     $stdbmp,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdNBK                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _stdNBK
          .def     _stdNBK; .scl 2; .type 32; .endef
  _stdNBK:movq     $stdnbk,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г DISTRIBUTOR                                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:subq     $0xF8, %rsp
          nop
          nop
          movq     %rbp,0xA0(%rsp)
          movq     %rsi,0xA8(%rsp)
          movq     %rdi,0xB0(%rsp)
          movq     %rbx,0xB8(%rsp)
          movq     %r12,0xC0(%rsp)
          movq     %r11,0xC8(%rsp)
          movq     %r10,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          movl     %r8d, %ebx                          # RBX = WPARAM
          movq     _BNR(%rip),%rsi                     # RSI = BNR
          movq     %rcx, %rdi                          # RDI = HWND
          shrl     $0x10,%ebx
          andl     $0xFFFF,%r8d
          jmp      *%rax
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdFLD  create standard fields                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND                                         Гл
          Г   RDX   MSG                                          Гл
          Г   R08   WPARAM                                       Гл
          Г   R09   LPARAM                                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   Windows RC (ignored)   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   stdfld:subl     $0x0111,%edx                        # WM_COMMAND?
          je       0f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDIALOG                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          call     _CtrWn
          movl     $0x01,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdOLH  management field OLH                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND                                         Гл
          Г   RDX   MSG                                          Гл
          Г   R08   WPARAM                                       Гл
          Г   R09   LPARAM                                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   Windows RC (ignored)   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   stdolh:subl     $0x0111,%edx                        # WM_COMMAND?
          je       0f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDIALOG                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          movq     %rdi,   %rcx                        # RCX = HWND
          movq     $0x00,  0x20(%rsp)                  # P_5 = NULL
          movl     $0x1387,%edx                        # RDX = ID MLE
          movl     $0xC8,  %r8d                        # R08 = EM_FMTLINES
          movl     $0x01,  %r9d                        # R09 = TRUE
          call     _SnDIM
          */
          call     _CtrWn
          movl     $0x01,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdTOP  management field topics                      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND                                         Гл
          Г   RDX   MSG                                          Гл
          Г   R08   WPARAM                                       Гл
          Г   R09   LPARAM                                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   Windows RC (ignored)   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   stdtop:subl     $0x0111,%edx                        # WM_COMMAND?
          je       0f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDIALOG                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          movq     %rdi,   %rcx                        # RCX = HWND
          movq     $0x00,  0x20(%rsp)                  # P_5 = NULL
          movl     $0x1387,%edx                        # RDX = ID MLE
          movl     $0xC8,  %r8d                        # R08 = EM_FMTLINES
          movl     $0x01,  %r9d                        # R09 = TRUE
          call     _SnDIM
          */
          call     _CtrWn
          movl     $0x01,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdMNU  management menu + dialog texts               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND                                         Гл
          Г   RDX   MSG                                          Гл
          Г   R08   WPARAM                                       Гл
          Г   R09   LPARAM                                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   Windows RC (ignored)   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   stdmnu:cmpl     $0x4E,  %edx                        # WM_NOTIFY?
          je       L00
          subl     $0x0111,%edx                        # WM_COMMAND?
          je       L01
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDIALOG                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          cmpl     $0x00,MNU_SY(%rsi)                  # system dialogs?
          movl     $0xFFFFFF12,%eax                    # RAX = user
          movl     $0xFFFFFF13,%ecx                    # RCX = System
          cmove    %eax,%ecx                           # choose...
          call     _ldFLD
          movq     EA_WRK(%rsi),%r11                   # R11 = EA wrk
          movq     MH_WRK(%rsi),%r12                   # R12 = MH wrk
          testl    %eax, %eax                          # load failed?
          jne      XIZ
          movl     MNU_ET(%rsi),%ebp                   # RBP = current entry
          movq     SPN_EA(%rsi),%rbx                   # RBX = EA field
          movl     0x3C(%r11),  %eax                   # RAX = entries
          movl     $0x02,%ecx                          # RCX = spin 2
          xorl     %edx, %edx                          # RDX = SPN_INIT
          movq     %rdi, %r8                           # R08 = HWND
          decl     %eax                                # RAX = max
          xorl     %r9d, %r9d
          cmpl     %eax, %ebp
          cmova    %r9d, %ebp
          movq     %rax, 0x88(%rbx)                    # set max
          movq     %rbp, 0x90(%rbx)                    #     cur
          call     _STspn
          movl     $0x0F,  %ebp                        # RBP = cnt
          movq     %rdi,   %rcx                        # RCX = HWND
          movl     $0x1453,%edx                        # RDX = ID
          movl     $0xC5,  %r8d                        # R08 = EN_SETLIMITTEXT
          movl     $0x0A,  %r9d                        # R09 = max size
          call     _SnDIM
          incl     %edx
          movl     $0x05,  %r9d                        # R09 = max size
          call     _SnDIM
          movl     $0x144F,%edx                        # RDX = ID
          movl     $0x40,  %r9d                        # R09 = max size
        0:call     _SnDIM
          decl     %edx                                # RDX = ID--
          decl     %ebp                                # RBP = cnt--
          jns      0b
       /*
          movl     $0x7D,%edx                          # RDX = title
          movl     $0x7E,%r8d                          # R08 = 1st
          movl     $0x87,%r9d                          # R09 = last
          call     _DLGtxt
       */
          call     _CtrWn
          movl     $0x01,%ebx                          # RBX = RC
          jmp      L03
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_NOTIFY                                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L00:movl     $0x02,%ecx                          # RCX = spin 2
          movl     $0x01,%edx                          # RDX = SPN_NOTIFY
          call     _STspn
          movl     %eax, MNU_ET(%rsi)                  # store cur
          jmp      L02
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L01:subl     $0x1440,%r8d                        # valid ID?
          js       XIZ
          cmpl     $0x10,  %r8d                        # language?
          jb       0f
          subl     $0x10,  %r8d                        # 1450 [Discard]?
          je       1f
          decl     %r8d                                # 1451 [Store]?
          je       2f
          decl     %r8d                                # 1452 [Help]?
          je       4f
          decl     %r8d                                # 1453 EFld spin?
          je       5f
          decl     %r8d                                # 1454 ID?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г ID                Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          cmpl     $0x0200,%ebx                        # EN_KILLFOCUS?
          jne      XIZ
          movq     %r9,  %rcx                          # RCX = HWND EFld
          leaq     0x30(%rsp),%rdx                     # RDX = EA buffer
          movl     $0x05,%r8d
          call     _WnQTx
          movq     %rdx, %rcx                          # RCX = EA buffer
          call     _hex2D
          movq     %rax,0x28(%rsp)                     # P_6 = number
          movq     MH_WRK(%rsi),%rcx                   # RCX = MH
          movl     MNU_ET(%rsi),%edx                   # RDX = entry
          movl     $0x10,%r8d                          # R08 = sub10
          movl     $0x02,%r9d                          # R09 = FDA_WRITE
          call     _FDacc
          jmp      L02
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г entryfields       Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
        0:cmpl     $0x0200,%ebx                        # EN_KILLFOCUS?
          jne      XIZ
          movl     %r8d, %ebp                          # RBP = subfield
          movq     %r9,  %rcx                          # RCX = HWND EFld
          leaq     0x30(%rsp),%rdx                     # RDX = EA buffer
          movl     $0x40,%r8d
          call     _WnQTx
          movq     %rdx,0x20(%rsp)                     # P_5 = EA string
          movq     MH_WRK(%rsi),%rcx                   # RCX = MH
          movl     MNU_ET(%rsi),%edx                   # RDX = entry
          movl     %ebp, %r8d                          # R08 = sub10
          movl     $0x02,%r9d                          # R09 = FDA_WRITE
          call     _FDacc
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г discard           Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        1:.p2align 4,,15
          andl     $0xFB,PGM_FL(%rsi)                  # store flags
          jmp      3f
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г store             Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
        2:orl      $0x04,PGM_FL(%rsi)                  # store flags
        3:call     _svFLD
          call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г help              Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
        4:movl     $0x0C,%ecx
          call     _Help
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г spin              Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
        5:cmpl     $0x0200,%ebx                        # EN_KILLFOCUS?
          jne      XIZ
          movl     $0x02,%ecx                          # RCX = spin 2
          movl     $0x02,%edx                          # RDX = SPN_EDITED
          call     _STspn
          movl     %eax, MNU_ET(%rsi)                  # store cur
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г display                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L02:xorl     %ebx, %ebx                          # RBX = 0
      L03:xorl     %eax, %eax                          # RAX = 0
          movq     MH_WRK(%rsi),%r12                   # R12 = MH wrk
          movl     MNU_ET(%rsi),%ebp                   # RBP = current entry
          movq     %rax,   0x20(%rsp)                  # P_5 = NULL
          movq     $0x0F,  %r10                        # R10 = loop_cnt
          movl     $0x144F,%r11d                       # R11 = ID Efld lang
        6:movq     %r12, %rcx                          # RCX = MH
          movl     %ebp, %edx                          # RDX = entry
          movl     %r10d,%r8d                          # R08 = subfield
          movl     $0x07,%r9d                          # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rdi, %rcx                          # RCX = HWND
          movl     %r11d,%edx                          # RCX = ID
          movq     %rax, %r8                           # R08 = EA entry
          call     _WnSDT
          decl     %r11d                               # R11 = ID--
          decl     %r10d                               # R10 = sub--
          jns      6b
          movq     %r12, %rcx                          # RCX = MH
          movl     %ebp, %edx                          # RDX = entry
          movl     $0x10,%r8d                          # R08 = sub10
          movl     $0x01,%r9d                          # R09 = FDA_READ
          call     _FDacc
          movl     %eax, %ecx                          # RCX = number
          leaq     0x20(%rsp),%rdx                     # RDX = EA buffer
          call     _W2hex
          movq     %rdx, %r8                           # R08 = EA buffer
          movq     %rdi, %rcx                          # RCX = HWND
          movl     $0x1454,%edx                        # RDX = ID
          call     _WnSDT
          movl     %ebx, %eax                          # RAX = RC
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdMSG  management messages                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND                                         Гл
          Г   RDX   MSG                                          Гл
          Г   R08   WPARAM                                       Гл
          Г   R09   LPARAM                                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   Windows RC (ignored)   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   stdmsg:cmpl     $0x4E,  %edx                        # WM_NOTIFY?
          je       L10
          subl     $0x0111,%edx                        # WM_COMMAND?
          je       L11
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDIALOG                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          cmpl     $0x00,MSG_SY(%rsi)                  # system dialogs?
          movl     $0xFFFFFFF5,%eax                    # RAX = user
          movl     $0xFFFFFFF9,%ecx                    # RCX = System
          cmove    %eax,%ecx                           # choose...
          call     _ldFLD
          movq     EA_WRK(%rsi),%r11                   # R11 = EA wrk
          movq     MH_WRK(%rsi),%r12                   # R12 = MH wrk
          testl    %eax, %eax                          # load failed?
          jne      XIZ
          movl     MSG_ET(%rsi),%ebp                   # RBP = current entry
          movq     SPN_EA(%rsi),%rbx                   # RBX = EA field
          movl     0x3C(%r11),  %eax                   # RAX = entries
          movl     $0x03,%ecx                          # RCX = spin 3
          xorl     %edx, %edx                          # RDX = SPN_INIT
          movq     %rdi, %r8                           # R08 = HWND
          decl     %eax                                # RAX = max
          shrl     $0x02,%eax                          # RAX = max/4!
          xorl     %r9d, %r9d                          # R09 = 0
          cmpl     %eax, %ebp                          # above max?
          cmova    %r9d, %ebp                          # set to zero
          movq     %rax, 0xC8(%rbx)                    # set max
          movq     %rbp, 0xD0(%rbx)                    #     cur
          call     _STspn
          movq     $0x00,  0x20(%rsp)                  # P_5 = NULL
          movl     $0x05,  %ebp                        # RBP = cnt
          movq     %rdi,   %rcx                        # RCX = HWND
          movl     $0x1469,%edx                        # RDX = ID button 1-1
          movl     $0xC5,  %r8d                        # R08 = EN_SETLIMITTEXT
          movl     $0x40,  %r9d                        # R09 = max size
        0:call     _SnDIM
          incl     %edx                                # RDX = ID--
          decl     %ebp                                # RBP = cnt--
          jns      0b
          movl     $0x1467,%edx                        # RDX = ID MLE1
          movl     $0x0400,%r9d                        # R09 = max size
          call     _SnDIM
          incl     %edx                                # RDX = ID MLE2
          call     _SnDIM
          movl     $0x1460,%edx                        # RDX = ID EFld spin
          movl     $0x04,  %r9d                        # R09 = max size
          call     _SnDIM
          movl     $0x1467,%edx                        # RDX = ID MLE1
          movl     $0xC8,  %r8d                        # R08 = EN_FMTLINES
          movl     $0x01,  %r9d                        # R09 = TRUE
          call     _SnDIM
          incl     %edx                                # RDX = ID MLE2
          call     _SnDIM
/*
call _RegDmp
          movl     $0x7D,%edx                          # RDX = title
          movl     $0x7E,%r8d                          # R08 = 1st
          movl     $0x87,%r9d                          # R09 = last
          call     _DLGtxt
*/
          call     _CtrWn
          movl     $0x01,%eax
          jmp      L15
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_NOTIFY                                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L10:movl     $0x03,%ecx                          # RCX = spin 2
          movl     $0x01,%edx                          # RDX = SPN_NOTIFY
          call     _STspn
          movl     %eax, MSG_ET(%rsi)                  # store cur
          jmp      L14
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L11:movq     MH_WRK(%rsi),%r10                   # R10 = MH
          movl     MSG_ET(%rsi),%ebp                   # RBP = msg
          movl     MSG_L1(%rsi),%r11d                  # R11 = sub 1
          movl     MSG_L2(%rsi),%r12d                  # R12 = sub 2
          shll     $0x02,  %ebp                        # RBP = entry MLE
          subl     $0x1460,%r8d                        # below?
          js       XIZ
          cmpl     $0x11,  %r8d                        # above?
          ja       XIZ
          jmp      *jt0(, %r8, 8)
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г spin              Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
      L20:cmpl     $0x0200,%ebx                        # EN_KILLFOCUS?
          jne      XIZ
          movl     $0x03,%ecx                          # RCX = spin 2
          movl     $0x02,%edx                          # RDX = SPN_EDITED
          call     _STspn
          movl     %eax, MSG_ET(%rsi)                  # store cur
          jmp      L14
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г lang1 PBtn <      Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
      L21:decl     %r11d                               # sub--
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г lang1 PBtn >      Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
      L22:incl     %r11d                               # sub++
        0:andl     $0x0F,%r11d                         # keep valid
          movl     %r11d,MSG_L1(%rsi)                  # store
          jmp      L14
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г lang2 PBtn <      Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
      L23:decl     %r12d                               # sub--
          jmp      1f
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г lang2 PBtn >      Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
      L24:incl     %r12d                               # sub++
        0:andl     $0x0F,%r12d                         # keep valid
          movl     %r12d,MSG_L2(%rsi)                  # store
          jmp      L14
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г lang2 MLE         Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
      L26:movl     %r12d,%r11d                         # R11 = sub lang2
          jmp      L12
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г lang1 buttons     Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
      L27:subl     $0x1468,%r8d                        # R08 = offfset entry
          jmp      L13
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г lang2 buttons     Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
      L28:subl     $0x146B,%r8d                        # R08 = offfset entry
          movl     %r12d,%r11d                         # R11 = sub lang2
          jmp      L13
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г discard           Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
      L29:.p2align 4,,15
          andl     $0xFB,PGM_FL(%rsi)                  # store flags
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г store             Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
      L30:orl      $0x04,PGM_FL(%rsi)                  # store flags
        0:call     _svFLD
          call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г help              Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
      L31:movl     $0x0D,%ecx
          call     _Help
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г get input w. word wrap Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L12:movq     %r9,    %r12                        # R11 = HWND MLE
          cmpl     $0x0200,%ebx                        # EN_KILLFOCUS?
          jne      XIZ
          subq     $0x0400,%rsp                        # allocate buffer
          movq     %r9,    %rcx                        # RCX = HWND MLE
          movl     $0xC8,  %edx                        # RDX = EM_FMTLINES
          xorl     %r8d,   %r8d                        # R08 = FALSE
          xorl     %r9d,   %r9d                        # R09 = NULL
          call     _SendM
          leaq     0x30(%rsp),%rdx                     # RDX = EA buffer
          movl     $0x0400,%r8d                        # R08 = size
          call     _WnQTx
          movq     %rdx, 0x20(%rsp)                    # P_5 = EA buffer
          movq     %r10, %rcx                          # RCX = MH
          movl     %ebp, %edx                          # RDX = entry MLE
          movl     %r11d,%r8d                          # R08 = sub
          movl     $0x02,%r9d                          # R09 = FDA_WRITE
          call     _FDacc
          addq     $0x0400,%rsp                        # release buffer
          movq     %r12,   %rcx                        # RCX = HWND MLE
          movl     $0xC8,  %edx                        # RDX = EM_FMTLINES
          movl     $0x01,  %r8d                        # R08 = TRUE
          xorl     %r9d,   %r9d                        # R09 = NULL
          call     _SendM
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г get input              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L13:cmpl     $0x0200,%ebx                        # EN_KILLFOCUS?
          jne      XIZ
          addl     %r8d, %ebp                          # RBP = entry
          movq     %r9,  %rcx                          # RCX = HWND MLE
          leaq     0x30(%rsp),%rdx                     # RDX = EA buffer
          movl     $0x40,%r8d                          # R08 = size
          call     _WnQTx
          movq     %rdx, 0x20(%rsp)                    # P_5 = EA buffer
          movq     %r10, %rcx                          # RCX = MH
          movl     %ebp, %edx                          # RDX = entry
          movl     %r11d,%r8d                          # R08 = sub
          movl     $0x02,%r9d                          # R09 = FDA_WRITE
          call     _FDacc
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г display                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          
          R10 = MH
          RBP = entry MLE   (msg * 4)
          R11 = sub lang1
          R12 = sub lang2

          */
          .p2align 4,,15
      L14:xorl     %ebx, %ebx                          # RBX = RC
      L15:movq     MH_WRK(%rsi),%r10                   # R10 = MH
          movl     MSG_ET(%rsi),%ebp                   # RBP = msg
          movl     MSG_L1(%rsi),%r11d                  # R11 = sub 1
          movl     MSG_L2(%rsi),%r12d                  # R12 = sub 2
          shll     $0x02,%ebp                          # RBP = entry MLE
          movq     %r10, %rcx                          # RCX = HWND
          movl     %ebp, %edx                          # RDX = mle1
          movl     %r12d,%r8d                          # R08 = subfield
          movl     $0x07,%r9d                          # R09 = FDA_ADDRESS
          call     _FDacc
          movq     $0x00,0x20(%rsp)                    # P_5 = NULL
          movq     %rax, 0x30(%rsp)                    # store
          incl     %edx                                # RDX = btn1
          call     _FDacc
          movq     %rax, 0x38(%rsp)                    # store
          incl     %edx                                # RDX = btn2
          call     _FDacc
          movq     %rax, 0x40(%rsp)                    # store
          incl     %edx                                # RDX = btn3
          call     _FDacc
          movq     %rax, 0x48(%rsp)                    # store

          movl     %ebp, %edx                          # RDX = mle2
          movl     %r11d,%r8d                          # R08 = subfield
          call     _FDacc
          movq     %rax, %rbp                          # RBP = EA msg1
          incl     %edx                                # RDX = btn1
          call     _FDacc
          movq     %rax, %r10                          # R10 = EA btn1
          incl     %edx                                # RDX = btn2
          call     _FDacc
          movq     %rax, %r11                          # R11 = EA btn2
          incl     %edx                                # RDX = btn3
          call     _FDacc
          movq     %rax,   %r12                        # R12 = EA btn3

          movq     %rdi,   %rcx                        # RCX = HWND
          movl     $0x1467,%edx                        # RDX = ID msg1
          movq     %rbp,   %r8                         # R08 = EA msg1
          call     _WnSDT
          addl     $0x02,  %edx                        # RDX = ID btn1
          movq     %r10,   %r8                         # R08 = EA btn1
          call     _WnSDT
          incl     %edx                                # RDX = ID btn2
          movq     %r11,   %r8                         # R08 = EA btn2
          call     _WnSDT
          incl     %edx                                # RDX = ID btn3
          movq     %r12,   %r8                         # R08 = EA btn3
          call     _WnSDT

          movq     0x30(%rsp),%rbp                     # RBP = EA msg2
          movq     0x38(%rsp),%r10                     # R10 = EA btn1
          movq     0x40(%rsp),%r11                     # R11 = EA btn2
          movq     0x48(%rsp),%r12                     # R12 = EA btn3
          
          movl     $0x1468,%edx                        # RDX = ID msg1
          movq     %rbp,   %r8                         # R08 = EA msg1
          call     _WnSDT
          addl     $0x04,  %edx                        # RDX = ID btn1
          movq     %r10,   %r8                         # R08 = EA btn1
          call     _WnSDT
          incl     %edx                                # RDX = ID btn2
          movq     %r11,   %r8                         # R08 = EA btn2
          call     _WnSDT
          movq     _BST(%rip),  %rbp                   # RBP = EA BST
          movl     MSG_L1(%rsi),%r10d                  # R11 = sub 1
          movl     MSG_L2(%rsi),%r11d                  # R12 = sub 2
          incl     %edx                                # RDX = ID btn3
          movq     %r12,   %r8                         # R08 = EA btn3
          call     _WnSDT

          movl     0x0180(%rbp, %r10, 4),%r8d          # R08 = offset lang1
          movl     0x0180(%rbp, %r11, 4),%r12d         # R10 = offset lang2
          movl     $0x1463,%edx                        # RDX = ID lang1
          addq     %rbp,   %r8                         # R08 = EA lang1
          addq     %rbp,   %r12                        # R12 = EA lang2
          call     _WnSDT
          movl     $0x1466,%edx                        # RDX = ID lang2
          movq     %r12,   %r8                         # R08 = EA lang2
          call     _WnSDT

          movl     %ebx,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MLlang  set language names in BST                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND                                         Гл
          Г   RDX   MSG                                          Гл
          Г   R08   WPARAM                                       Гл
          Г   R09   LPARAM                                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   Windows RC (ignored)   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   mllang:subl     $0x0111,%edx                        # WM_COMMAND?
          je       4f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDIALOG                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          movl     $0x1453,%edx                        # RDX = ID EFld entry
          xorl     %r8d,   %r8d                        # R08 = SW_HIDE
          call     _CtlSh
          incl     %edx                                # RDX = ID EFld ID
          call     _CtlSh
          incl     %edx                                # RDX = ID Text ID
          call     _CtlSh
          testl    $0x01,PGM_FL(%rsi)                  # DatTools self?
          je       0f
          movq     _BST(%rip),%r12                     # R12 = BST
          movl     $0x1450,%edx                        # RDX = ID EFld ID
          xorl     %r8d,   %r8d                        # R08 = SW_HIDE?
          call     _CtlEn
          jmp      1f
          .p2align 4,,15
        0:movl     $0xFFFFFFFC,%ecx                    # RCX = str.dat
          call     _ldFLD
          movq     EA_WRK(%rsi),%r12
          testl    %eax,   %eax                        # load failed?
          jne      XIZ
          movq     %rdi,   %rcx                        # RCX = HWND
          .p2align 4,,15
        1:movq     $0x00,  0x20(%rsp)                  # P_5 = NULL
          movl     $0x40,  %r9d                        # R09 = max size
          movq     $0x0F,  %r11                        # R11 = loop_cnt
          movl     $0x144F,%edx                        # RDX = ID Efld lang0
        2:movl     0x0180(%r12, %r11, 4),%ebp          # RBP = offset entry
          movl     $0xC5,  %r8d                        # R08 = EN_SETTEXTLIMIT
          call     _SnDIM
          leaq     0x00(%r12, %rbp, 1),%r8             # R08 = EA entry
          call     _WnSDT
          decl     %edx                                # RDX = ID--
          decq     %r11                                # R11 = loop_cnt--
          jns      2b
       /*
          movl     $0x7D,%edx                          # RDX = title
          movl     $0x7E,%r8d                          # R08 = 1st
          movl     $0x87,%r9d                          # R09 = last
          call     _DLGtxt
       */
          call     _CtrWn
          movl     $0x01,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        4:movl     PGM_FL(%rsi),%ebp                   # RBP = flags
          movq     _MHSTR(%rip),%r10                   # R10 = MH bst
          movq     MH_WRK(%rsi),%r11                   # R11 = MH_WRK
          movl     %r8d, %r12d
          testl    $0x01,%ebp                          # DatTools self?
          cmovne   %r10,%r11                           # use MHSTR
          subl     $0x1440,%r8d                        # RDX = EFld lang0?
          jb       XIZ
          cmpl     $0x10,  %r8d                        # language?
          jb       5f
          subl     $0x10,  %r8d                        # [Store]?
          je       6f                                  # [Discard]
          decl     %r8d
          je       7f
          decl     %r8d
          jne      XIZ
          movl     $0x14,%ecx                          # RCX = help 14
          call     _Help
          jmp      XIZ
          .p2align 4,,15
        5:cmpl     $0x0200,%ebx                        # EN_KILLFOCUS?
          jne      XIZ
          movq     %r9,  %rcx                          # RCX = HWND EFld
          movl     %r12d,%edx                          # RDX = ID
          leaq     0x30(%rsp),%r8                      # R08 = EA buffer
          movl     $0x40,%r9d                          # R09 = size
          subl     $0x1420,%r12d                       # R12 = 0x20 + lang
          call     _WnQDT
          movq     %r8,  0x20(%rsp)                    # P_5 = EA buffer
          movq     %r11, %rcx                          # RCX = MH
          movl     %r12d,%edx                          # RDX = entry
          xorl     %r8d, %r8d                          # R08 = sub00
          movl     $0x02,%r9d                          # R09 = FDA_READ
          call     _FDacc
          jmp      XIZ
          .p2align 4,,15
        6:andl     $0xFB,%ebp                          # reset changed
          jmp      8f
          .p2align 4,,15
        7:orl      $0x04,%ebp                          # set changed
        8:movl     %ebp,PGM_FL(%rsi)                   # store flags
          testl    $0x01,%ebp                          # DatTools self?
          jne      9f
          call     _svFLD
        9:call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdSPN  management menu + dialog texts               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND                                         Гл
          Г   RDX   MSG                                          Гл
          Г   R08   WPARAM                                       Гл
          Г   R09   LPARAM                                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   Windows RC (ignored)   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   stdspn:subl     $0x0111,%edx                        # WM_COMMAND?
          je       0f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDIALOG                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          call     _CtrWn
          movl     $0x01,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdBMP  management menu + dialog texts               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND                                         Гл
          Г   RDX   MSG                                          Гл
          Г   R08   WPARAM                                       Гл
          Г   R09   LPARAM                                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   Windows RC (ignored)   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   stdbmp:subl     $0x0111,%edx                        # WM_COMMAND?
          je       0f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDIALOG                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          call     _CtrWn
          movl     $0x01,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г stdNBK  management menu + dialog texts               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND                                         Гл
          Г   RDX   MSG                                          Гл
          Г   R08   WPARAM                                       Гл
          Г   R09   LPARAM                                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   ???? ???? ???? ????   Windows RC (ignored)   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   stdnbk:subl     $0x0111,%edx                        # WM_COMMAND?
          je       0f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDIALOG                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          call     _CtrWn
          movl     $0x01,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г common exit                                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      XIZ:xorq     %rax, %rax
      XIT:movq     0xA0(%rsp),%rbp
          movq     0xA8(%rsp),%rsi
          movq     0xB0(%rsp),%rdi
          movq     0xB8(%rsp),%rbx
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
          .comm    _BNR,    8, 3
