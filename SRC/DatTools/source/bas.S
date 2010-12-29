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
          .section .rdata, "dr"
          */
          .data
          .p2align 4,0x00,15
     LC00:.ascii   "ST8\\SRC\\"
          .long    0x00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г about   about box                                    Гл
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
          .globl   _about
          .def     _about; .scl 2; .type 32; .endef
   _about:movq     $abtbx,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MkFile  create empty file                            Гл
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
          .globl   _MkFile
          .def     _MkFile; .scl 2; .type 32; .endef
  _MkFile:movq     $mkfile,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MovEnt  move entries                                 Гл
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
          .globl   _MovEnt
          .def     _MovEnt; .scl 2; .type 32; .endef
  _MovEnt:movq     $movent,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г CpyFld  copy field content                           Гл
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
          .globl   _CpyFld
          .def     _CpyFld; .scl 2; .type 32; .endef
  _CpyFld:movq     $cpyfld,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г DrvMsk  get drive mask                               Гл
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
          .globl   _DrvMsk
          .def     _DrvMsk; .scl 2; .type 32; .endef
  _DrvMsk:movq     $drvmsk,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SelLng  select language                              Гл
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
          .globl   _SelLng
          .def     _SelLng; .scl 2; .type 32; .endef
  _SelLng:movq     $sellng,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SelSrc  select source folder                         Гл
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
          .globl   _SelSrc
          .def     _SelSrc; .scl 2; .type 32; .endef
  _SelSrc:movq     $selsrc,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SelFld  select field                                 Гл
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
          .globl   _SelFld
          .def     _SelFld; .scl 2; .type 32; .endef
  _SelFld:movq     $selfld,%rax
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
          movq     %r12,0xA0(%rsp)
          movq     %rbp,0xA8(%rsp)
          movq     %rsi,0xB0(%rsp)
          movq     %rdi,0xB8(%rsp)
          movq     %rbx,0xC0(%rsp)
          movq     %r11,0xC8(%rsp)
          movq     %r10,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          movq     _BNR(%rip),%rsi                     # RSI = BNR
          movl     %r8d,%ebx                           # RBX = WPARAM
          movq     %rcx,%rdi                           # RDI = HWND
          andl     $0xFFFF,%r8d                        # R08 = ID
          shrl     $0x10,%ebx                          # RBX = MSG
          jmp      *%rax
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г about                                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    abtbx:subl     $0x0111,%edx                        # WM_COMMAND?
          je       KNX
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          jmp      CTW
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MkFile                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   mkfile:subl     $0x0111,%edx                        # WM_COMMAND?
          je       0f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_DLGINIT                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          jmp      CTW
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MovEnt                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   movent:subl     $0x0111,%edx                        # WM_COMMAND?
          je       0f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_DLGINIT                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          jmp      CTW
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г CpyFld                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   cpyfld:subl     $0x0111,%edx                        # WM_COMMAND?
          je       0f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_DLGINIT                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          jmp      CTW
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г DrvMsk                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   drvmsk:subl     $0x0111,%edx                        # WM_COMMAND?
          je       0f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_DLGINIT                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          movl     DRVMSK(%rsi),%eax                   # RAX = old map
          xorl     %ebx,%ebx                           # RBX = 0
          jmp      6f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:movl     $0x0B,%eax                          # RAX = help 11
          movl     $0x01,%ebx                          # RBX = A:
          movl     TMPMAP(%rsi),%eax                   # RAX = temp map
          subl     $0x1220,%r8d                        # R08 = index
          jb       XIZ
          cmpl     $0x19,%r8d                          # drive CBox?
          jbe      1f
          subl     $0x1A,%r8d                          # 122A all?
          je       2f
          decl     %r8d                                # 122B none?
          je       3f
          decl     %r8d                                # 122C reload?
          je       4f
          decl     %r8d                                # 122D Abort?
          je       KNX
          decl     %r8d                                # 122E Store?
          je       5f
          decl     %r8d
          je       HLP
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФП
          Г toggled drive  Гл
          РФФФФФФФФФФФФФФФФйл
            ллллллллллллллллл
          */
          .p2align 4,,15
        1:movb     %r8b,%cl                            # RCX = bit
          shll     %cl,%ebx                            # RBX = mask
          xorl     %ebx,%eax                           # toggle drive
          movq     %rdi,%rcx                           # RCX = HWND
          jmp      6f
          /*
          кФФФФФФФФФФФФФФФФП
          Г select all     Гл
          РФФФФФФФФФФФФФФФФйл
            ллллллллллллллллл
          */
          .p2align 4,,15
        2:movl     $0x03FFFFFF,%eax                    # select all
          jmp      6f
          /*
          кФФФФФФФФФФФФФФФФП
          Г select none    Гл
          РФФФФФФФФФФФФФФФФйл
            ллллллллллллллллл
          */
          .p2align 4,,15
        3:xorl     %eax,%eax                           # deselect all
          jmp      6f
          /*
          кФФФФФФФФФФФФФФФФП
          Г reload         Гл
          РФФФФФФФФФФФФФФФФйл
            ллллллллллллллллл
          */
          .p2align 4,,15
        4:movl     DRVMSK(%rsi),%eax                   # RAX = old map
          jmp      6f
          /*
          кФФФФФФФФФФФФФФФФП
          Г reload         Гл
          РФФФФФФФФФФФФФФФФйл
            ллллллллллллллллл
          */
          .p2align 4,,15
        5:movl     %eax,DRVMSK(%rsi)                   # store
          jmp      KNX
          /*
          кФФФФФФФФФФФФФФФФП
          Г set CBoxes     Гл
          РФФФФФФФФФФФФФФФФйл
            ллллллллллллллллл
          */
        6:movl     %eax, TMPMAP(%rsi)                  # store changes
          movl     %eax, %edi                          # RDI = mask
          movl     $0x1220,%edx                        # RDX = ID
          xorl     %r8d, %r8d                          # R08 = 0
          movl     $0x1A,%r9d                          # R09 = cnt
        7:shrl     %edi                                # RDI = set flag
          setc     %r8b                                # R08 = flag
          call     _SCkB
          incl     %edx                                # RDX = ID++
          decl     %r9d                                # R09 = cnt--
          jne      7b
          testl    %ebx,%ebx                           # WM_COMMAND?
          jne      XIZ
          jmp      CTW
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SelLng                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   sellng:subl     $0x0111,%edx                        # WM_COMMAND?
          je       0f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_DLGINIT                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          movl     USRLNG(%rsi),%ebx                   # RBX = language
          movl     $0x12F1,%edx                        # RDX = ID more...
          xorl     %r8d,   %r8d                        # R08 = FALSE
          call     _CtlEn
          leal     0x12E0(%rbx),%edx                   # RDX = ID RBtn
          movl     $0x01,%r8d                          # R08 = TRUE
          call     _SCkB
          jmp      CTW
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:cmpl     $0x12F0,%r8d                        # Abort?
          je       KNX
          subl     $0x12E0,%r8d
          js       XIZ
          cmpl     $0x0F,  %r8d                        # language?
          ja       XIZ
          movl     %r8d,USRLNG(%rsi)                   # store selection
          jmp      KNX
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SelSrc                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   selsrc:xorl     %eax,%eax                           # EAX = 0
          pxor     %xmm0,%xmm0                         # reset parameters
          subl     $0x0111,%edx                        # WM_COMMAND?
          je       1f
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_DLGINIT                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          andb     $0xF8,PGM_FL(%rsi)                  # reset parameters
          movdqa   %xmm0,SL_FLD(%rsi)
          movdqa   %xmm0,CT_SRC(%rsi)
          movdqa   %xmm0,FN_SRC(%rsi)
          movq     %rax, IP_WRK(%rsi)
          leaq     LC00(%rip),  %rcx                   # RCX = pattern
          movq     MH_SRC(%rsi),%rdx                   # RDX = MH
          xorl     %r8d,        %r8d                   # R08 = sub 00
          movl     DRVMSK(%rsi),%r9d                   # R09 = drive mask
          movl     $0x0100,0x20(%rsp)                  # P_5 = max count
          call     _DsrchD
          movq     %rdx, %rcx                          # RCX = MemHandle
          movl     %eax, %ebx                          # RBX = count
          xorl     %r8d, %r8d                          # R08 = 0
          movl     %eax, %edx                          # RDX = count
          call     _PPdir
          movq     %rcx, %r10                          # R10 = MH
          xorl     %edx, %edx                          # RDX = 0
          xorq     %r11, %r11                          # R11 = 0
          movl     %ebx, CT_SRC(%rsi)                  # store count
          testl    %ebx, %ebx                          # nothing found?
          je       CTW
          xorl     %r12d,%r12d                         # R12 = 0
          jmp      L99
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        1:movl     $0x06,  %eax                        # RAX = help 6
          subl     $0x1261,%r8d                        # abort?
          je       KNX
          decl     %r8d                                # select?
          je       2f
          decl     %r8d                                # extern?
          je       5f
          decl     %r8d                                # help?
          je       HLP
          decl     %r8d                                # listbox?
          jne      XIZ
          cmpl     $0x02,%ebx                          # LBN_DOUBLECLICK?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФП
          Г select         Гл
          РФФФФФФФФФФФФФФФФйл
            ллллллллллллллллл
          */
        2:movq     MH_SRC(%rsi),%rbx                   # RBX = MH_SRC
          movl     $0x1265,%edx                        # RDX = ID
          movl     $0x0188,%r8d                        # R08 = LB_GETCURSEL
          xorl     %r9d,   %r9d                        # R09 = NULL
          movq     %rax,   0x20(%rsp)                  # P_5 = NULL
          call     _SnDIM
          testl    %eax,%eax
          js       XIZ
          orb      $0x02,PGM_FL(%rsi)                  # SRC_PRESENT
          leaq     FN_SRC(%rsi),%r10                   # R10 = EA string
          movq     %rbx, %rcx                          # RCX = MH_SRC
          movl     %eax, %edx                          # RDX = entry
          xorl     %r8d, %r8d                          # R08 = sub00
          movl     $0x01,%r9d                          # R09 = FDA_READ
          movq     %r10, 0x20(%rsp)                    # P_5 = EA string
          call     _FDacc
          pxor     %xmm0,%xmm0                         # XM0 = 0
        3:cmpb     $0x00,0x0F(%r10)                    # search end
          je       4f
          addq     $0x10,%r10                          # R10 = next para
          jmp      3b
          .p2align 4,,15
        4:movq     %rsi, %r11                          # R11 = BNR
          pcmpeqb  0x00(%r10),%xmm0                    # get end
          pmovmskb %xmm0,%eax
          negq     %r11                                # R11 = -BNR
          bsf      %eax, %eax
          addq     %rax, %r10                          # R10 = IP (EA)
          addq     %r10, %r11                          # R11 = IP (offset)
          movq     %rdi, %rcx                          # RCX = HWND
          subq     $0x09,%r10                          # R10 = EA DatTools
          movq     %r11, IP_WRK(%rsi)                  # store IP
          cmpl     $0x54746144,0x00(%r10)              # DatTools?
          jne      KNX
          cmpl     $0x736C6F6F,0x04(%r10)
          jne      KNX
          orb      $0x01,PGM_FL(%rsi)                  # set PGM_SRC_SELF
          jmp      KNX
          /*
          кФФФФФФФФФФФФФФФФП
          Г extern         Гл
          РФФФФФФФФФФФФФФФФйл
            ллллллллллллллллл
          */
          .p2align 4,,15
        5:
          jmp      KNX
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SelFld                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   selfld:subl     $0x0111,%edx                        # WM_COMMAND?
          je       csf
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_DLGINIT                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          movl     $0x1263,%edx                        # RDX = ID extern
          xorl     %r8d,   %r8d                        # R08 = SW_HIDE
          call     _CtlSh
          movl     SELFLD(%rsi),%r12d                  # R12 = index (last selected)
          movl     CT_FLD(%rsi),%ebx                   # RBX = count
          movl     IP_WRK(%rsi),%ebp                   # RBP = IP (offset)
          movq     MH_FLD(%rsi),%r10                   # R10 = MH
          xorl     %r11d,%r11d                         # R11 = 0
          pxor     %xmm0,%xmm0                         # XM0 = 0
          testl    $0x04,PGM_FL(%rsi)                  # field selected?
          jne      L99
          testl    %ebx, %ebx                          # count = 0?
          jne      L99
          addq     %rsi, %rbp                          # RBP = IP (EA)
          andb     $0xFB,PGM_FL(%rsi)                  # reset parameters
          movdqa   %xmm0,SL_FLD(%rsi)
          movl     $0x61746164,0x00(%rbp)              # 'data'
          movl     $0x0000005C,0x04(%rbp)              # backslash
          leaq     FN_SRC(%rsi),%rcx                   # RCX = pattern
          movq     %r10,        %rdx                   # RDX = MH
          xorl     %r8d,        %r8d                   # R08 = sub00
          xorl     %r9d,        %r9d                   # R09 = 1st
          movl     $0x0800,0x20(%rsp)                  # P_5 = max count
          call     _FsrchP
          movl     $0x74737973,0x00(%rbp)              # 'syst'
          subl     %eax,0x20(%rsp)                     # P_5 = max count
          movl     %eax,%ebx                           # RBX = found
          movl     %eax,%r9d                           # R09 = 1st
          call     _FsrchP
          pxor     %xmm0,%xmm0                         # XM0 = 0
          leaq     XP_FHS(%rsi),%r12                   # R12 = FH
          leaq     XP_MEM(%rsi),%rbp                   # RBP = EA head
          addl     %eax, %ebx                          # RBX = found
          movq     %rbp, 0x10(%r12)                    # set   FH.Mbase
          movdqa   %xmm0,0x18(%r12)                    # clear FH.Moffs + FH.Foffs
          testl    %ebx, %ebx                          # nothing found?
          je       3f
        0:movq     %r10, %rcx                          # RCX = MH
          movl     %r11d,%edx                          # RDX = entry
          xorl     %r8d, %r8d                          # R08 = sub00
          movl     $0x07,%r9d                          # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %r12, %rcx                          # RCX = FH
          xorl     %edx, %edx                          # RDX = 0
          movl     $0x02,%r8d                          # R08 = open if exist
          movq     %rax, %r9                           # R09 = EA name
          call     _Fopen
          testl    %eax, %eax                          # error?
          jne      1f
          movl     $0x40,%edx                          # RDX = size
          call     _Fread
          movl     %eax, %r9d                          # R09 = error
          call     _Fclose
          testl    %r9d, %r9d                          # read error?
          jne      1f
          movl     0x00(%rbp),%eax                     # RAX = leading DD
          movl     0x2C(%rbp),%r8d                     # R08 = field number
          movl     0x34(%rbp),%r9d                     # R09 =       size
          leaq     0x04(%rbp),%rdx                     # RDX = EA field name
          testl    %eax, %eax                          # leading DD = 0?
          jne      1f
          testl    %r8d, %r8d                          # number valid?
          je       1f
          cmpl     %r9d, 0x08(%r12)                    # size valid?
          jne      1f
          movq     %rdx, 0x20(%rsp)                    # P_5 = EA name
          movq     %r8,  0x28(%rsp)                    # P_6 = field number
          movq     %r10, %rcx                          # RCX = MH
          movl     %r11d,%edx                          # RDX = entry
          xorl     %r8d, %r8d                          # R08 = sub00
          movl     $0x02,%r9d                          # R09 = FDA_WRITE
          call     _FDacc
          incl     %r8d                                # R08 = sub01
          call     _FDacc
          incl     CT_FLD(%rsi)                        # count++
          orb      $0x04,PGM_FL(%rsi)                  # field present
          jmp      2f
          .p2align 4,,15
        1:movq     %r10, %rcx                          # RCX = MH
          movl     %r11d,%edx                          # RDX = entry
          xorl     %r8d, %r8d                          # R08 = sub00
          call     _SftDn
          decl     %r11d                               # R11 = previous entry!
          incl     %r8d                                # R08 = sub01
          call     _SftDn
          .p2align 4,,15
        2:incl     %r11d                               # entry++
          decl     %ebx                                # found--
          jne      0b
          movl     CT_FLD(%rsi),%ebx                   # RBX = count
          xorl     %r11d,%r11d                         # R11 = 0
          xorl     %r12d,%r12d                         # R12 = 0
          testl    %ebx, %ebx                          # zero?
          jne      L99
        3:movl     $0x21,%ecx                          # ERR_NO_FIELDS
          call     _ErrMgr
          movq     %rdi, %rcx                          # RCX = HWND
          jmp      KNX
          .p2align 4,,15
      L99:movq     %r10, %rcx                          # RCX = MH
          movl     %r11d,%edx                          # RDX = entry
          xorl     %r8d, %r8d                          # R08 = sub00
          movl     $0x07,%r9d                          # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rax,   0x20(%rsp)                  # P_5 = EA string
          movq     %rdi,   %rcx                        # RCX = HWND
          movl     $0x1265,%edx                        # RDX = ID
          movl     $0x0180,%r8d                        # R08 = LB_ADDSTRING
          xorl     %r9d,   %r9d                        # R09 = NULL
          call     _SnDIM
          incl     %r11d                               # R11 = next entry
          decl     %ebx                                # RBX = count--
          jne      L99
          movq     %r9,    0x20(%rsp)                  # P_5 = NULL
          movl     $0x0186,%r8d                        # R08 = LB_SETCURSEL
          movl     %r12d,  %r9d                        # R09 = NULL
          call     _SnDIM
          jmp      CTW
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      csf:movl     $0x07,  %eax                        # RAX = help 7
          subl     $0x1261,%r8d                        # abort?
          je       KNX
          decl     %r8d                                # select?
          je       2f
          subl     $0x02,%r8d                          # help?
          je       HLP
          decl     %r8d                                # listbox?
          jne      XIZ
          cmpl     $0x02,%ebx                          # LBN_DOUBLECLICK?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФП
          Г select         Гл
          РФФФФФФФФФФФФФФФФйл
            ллллллллллллллллл
          */
        2:movq     MH_FLD(%rsi),%rbx                   # RBX = MH_FLD
          xorl     %eax,   %eax                        # RAX = 0
          movl     $0x1265,%edx                        # RDX = ID
          movl     $0x0188,%r8d                        # R08 = LB_GETCURSEL
          xorl     %r9d,   %r9d                        # R09 = NULL
          movq     %rax,   0x20(%rsp)                  # P_5 = NULL
          call     _SnDIM
          testl    %eax,%eax
          js       XIZ
          movl     %eax, SELFLD(%rsi)                  # store index
          movq     %rbx, %rcx                          # RCX = MH_FLD
          movl     %eax, %edx                          # RDX = entry
          movl     $0x01,%r8d                          # R08 = sub00
          movl     $0x01,%r9d                          # R09 = FDA_READ
          call     _FDacc
          movl     %eax, SL_FLD(%rsi)                  # store field number
          movq     %rdi, %rcx
          jmp      KNX
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г center dialog                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      CTW:call     _CtrWn
          movl     $0x01,%eax                          # RAX = processed
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г kill dialog                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      KNX:call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г help                                      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      HLP:movl     %eax,%ecx                           # RCX = help number
          call     _Help
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г common exit                                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      XIZ:xorq     %rax, %rax
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
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BNR,    8, 3
          .comm    _MHSTR,  8, 3
