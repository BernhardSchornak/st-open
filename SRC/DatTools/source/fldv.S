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
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г jump table                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .section .rdata, "dr"
          .p2align 4,,15
      jt0:.quad    L00                                 # 1380   EFld entry
          .quad    L01                                 # 1381   EFld subfield
          .quad    L02                                 # 1382   ChkB decimal
          .quad    L03                                 # 1383   EFld numeric data
          .quad    L04                                 # 1384   PBtn zero
          .quad    L05                                 # 1385   PBtn max
          .quad    L06                                 # 1386   PBtn complex clear
          .quad    L07                                 # 1387   MLE  complex data
          .quad    L08                                 # 1388   PBtn discard
          .quad    L09                                 # 1389   PBtn store
          .quad    L10                                 # 138A   PBtn help
      jte:.quad    XIZ                                 # SET    nt
          .quad    L21                                 #        DB
          .quad    L22                                 #        DW
          .quad    L23                                 #        DD
          .quad    L24                                 #        DQ
      jts:.quad    L91                                 # SHOW   DB
          .quad    L92                                 #        DW
          .quad    L93                                 #        DD
          .quad    L94                                 #        DQ
          .quad    L95                                 #        DO
          .quad    L96                                 #        FIX
          .quad    L97                                 #        $32
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FldMg   field manager (all fields)                   Гл
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
          .globl   _FldMg
          .def     _FldMg; .scl 2; .type 32; .endef
   _FldMg:subq     $0xF8, %rsp
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
          movl     VW_ENT(%rax),%r11d                  # R11 = current entry
          movl     VW_SUB(%rax),%r12d                  # R12 =         subfield
          movq     EA_WRK(%rax),%r13                   # R13 = EA field
          movq     EAVIEW(%rax),%r14                   # R14 = EA work area
          movl     %r8d,   %ebx                        # RBX = WPARAM
          movq     %rcx,   %rdi                        # RDI = HWND
          movq     %rax,   %rsi                        # RSI = BNR
          andl     $0xFFFF,%r8d                        # R08 = W0[WPARAM]
          shrl     $0x10,  %ebx                        # RBX = W1[WPARAM]
          cmpl     $0x004E,%edx                        # WM_NOTIFY?
          je       cnt
          subl     $0x0111,%edx                        # WM_COMMAND?
          je       cmd
          incl     %edx                                # WM_INITDIALOG?
          jne      XIZ
          /*

          RBX   W1[wparam]
          RCX   HWND
          RDX   msg
          R08   W0[wparam]
          R09   lparam
          RDI   HWND
          RSI   BNR
          RBP
          R10   
          R11   current entry
          R12           subfield
          R13   EA field
          R14   EA work

          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_DLGINIT                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          pxor     %xmm0,%xmm0
          movl     SL_FLD(%rsi),%ecx                   # RCX = field number
          movdqa   %xmm0,EAVIEW(%rsi)                  # clear parameters
          call     _ldFLD
          movq     EA_WRK(%rsi),%r13                   # R13 = EA field
          movl     $0x00010000, %ecx                   # RCX = 65,536 byte
          testq    %r13, %r13                          # field loaded?
          je       KIL0
          call     _AloMem
          testq    %rax, %rax                          # got mem?
          je       KIL1
          movl     0x3C(%r13),%r10d                    # R10 = entries
          movl     0x24(%r13),%ebx                     # RBX = subfields
          xorl     %edx, %edx                          # EDX = 0
          movq     %rax, %r14                          # R14 = EA work
          movq     %rax, EAVIEW(%rsi)                  # store EAVIEW
          movq     %rcx, SZVIEW(%rsi)                  # store SZVIEW
          cmpl     %r11d,%r10d                         # entry valid?
          cmovbe   %edx, %r11d                         # zero if not
          cmpl     %r12d,%ebx                          # subfield valid?
          cmovbe   %edx, %r12d                         # zero if not
          movq     SPN_EA(%rsi),%r9                    # R09 = SPN_EA
          movl     %r11d,VW_ENT(%rsi)                  # store...
          movl     %r12d,VW_SUB(%rsi)
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г set spinbutton   Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          decl     %r10d                               # R10 = max entry
          decl     %ebx                                # RBX = max sub
          xorl     %ecx, %ecx                          # RCX = spin 0
          xorl     %edx, %edx                          # RDX = SPN_INIT
          movq     %rdi, %r8                           # R08 = HWND
          movq     %rcx, 0x00(%r9)                     # set min    0 
          movq     %r10, 0x08(%r9)                     #     max    0
          movq     %r11, 0x10(%r9)                     #     cur    0
          movq     %rcx, 0x40(%r9)                     #     min    1
          movq     %rbx, 0x48(%r9)                     #     max    1
          movq     %r12, 0x50(%r9)                     #     cur    1
          call     _STspn
          incl     %ecx                                # RCX = spin 1
          call     _STspn
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г handle subfield  Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          movq     %rdi,   %rcx                        # RCX = HWND
          movq     $0x00,  0x20(%rsp)                  # P_5 = NULL
          movl     $0x1387,%edx                        # RDX = ID MLE
          movl     $0xC8,  %r8d                        # R08 = EM_FMTLINES
          movl     $0x01,  %r9d                        # R09 = TRUE
          call     _SnDIM
          testl    %ebx, %ebx                          # single type?
          jne      2f
          leaq     0x30(%rsp),%r8                      # R08 = EA '0'
          movl     $0x30,  0x30(%rsp)                  # '0'
          movl     $0x1381,%edx                        # RDX = ID EFld
          call     _WnSDT
          xorl     %r8d,   %r8d                        # R08 = FALSE
          call     _CtlEn
          movl     $0x138C,%edx                        # RDX = ID spin
          call     _CtlEn
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г set hex/dec      Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          .p2align 4,,15
        2:xorl     %eax,   %eax                        # RAX = FALSE
          movl     $0x01,  %r8d                        # R08 = TRUE
          movl     $0x1382,%edx                        # RDX = ID ChkB
          testl    $0x80,  PGM_FL(%rsi)                # decimal?
          cmove    %eax,   %r8d                        # FALSE
          call     _SCkB
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г center + display Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
/*
call _RegDmp
          movl     $0x7D,%edx                          # RDX = title
          movl     $0x7E,%r8d                          # R08 = 1st
          movl     $0x87,%r9d                          # R09 = last
          call     _DLGtxt
*/
          call     _CtrWn
          movl     $0x01,%ebx                          # set flag
          jmp      SHOW
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_NOTIFY                                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      cnt:xorl     %ecx,   %ecx                        # RCX = spin 0
          movl     $0x01,  %edx                        # RDX = SPN_NOTIFY
          subl     $0x138B,%r8d                        # dd1?
          jne      0f
          call     _STspn
          movl     %eax,   VW_ENT(%rsi)                # store
          movl     %eax,   %r11d                       # R11 = entry
          jmp      SHWC
          .p2align 4,,15
        0:incl     %ecx                                # RCX = spin 1
          decl     %r8d                                # dd 2?
          jne      XIZ
          call     _STspn
          movl     %eax,   VW_SUB(%rsi)                # store
          movl     %eax,   %r12d                       # R12 = sub
          jmp      SHWC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      cmd:subl     $0x1380,%r8d                        # skip unknown IDs
          js       XIZ
          cmpl     $0x0A,  %r8d                        # above?
          ja       XIZ
          movq     MH_WRK(%rsi),       %rdx            # RDX = MH_WRK
          movzb    0x40(%r13, %r12, 1),%ebp            # RBP = type
          movl     0x60(%r13, %r12, 4),%eax            # RAX = offset sub
          movl     PGM_FL(%rsi),       %r10d           # R10 = flags
          jmp      *jt0(, %r8, 8)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г EFld entry number (spin)   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L00:cmpl     $0x0200,%ebx                        # EN_KILLFOCUS?
          jne      XIZ
          xorl     %ecx,   %ecx                        # RCX = spin 0
          movl     $0x02,  %edx                        # RDX = SPN_EDITED
          call     _STspn
          movl     %eax,   %r11d                       # R11 = entry
          movl     %eax,   VW_ENT(%rsi)                # store VW_ENT
          jmp      SHWC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г EFld subfield     (spin)   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L01:cmpl     $0x0200,%ebx                        # EN_KILLFOCUS?
          jne      XIZ
          movl     $0x01,  %ecx                        # RCX = spin 1
          movl     $0x02,  %edx                        # RDX = SPN_EDITED
          call     _STspn
          movl     %eax,   %r12d                       # R12 = sub
          movl     %eax,   VW_SUB(%rsi)                # store VW_SUB
          jmp      SHWC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г ChkB decimal               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L02:xorl     $0x80,PGM_FL(%rsi)                  # toggle flag
          jmp      SHWC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г EFld numeric data          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L03:cmpl     $0x0200,%ebx                        # EN_KILLFOCUS?
          jne      XIZ
          movl     %eax, %ebx                          # RBX = offset sub
          movq     %r9,  %rcx                          # RCX = HWND numeric
          leaq     0x20(%rsp),%rdx                     # RDX = EA buffer
          movl     $0x20,%r8d                          # R08 = size
          call     _WnQTx
          movq     %rdx, %rcx                          # RCX = EA buffer
          addq     %r13, %rbx                          # RBX = EA subfield
          testl    $0x80,%r10d                         # decimal?
          jne      0f
          call     _hex2Q
          jmp      *jte(, %rbp, 8)
          .p2align 4,,15
        0:call     _dec2Q
          jmp      *jte(, %rbp, 8)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г PBtn zero                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L04:movl     %eax, %ebx                          # RBX = offset sub
          xorl     %eax, %eax                          # RAX = zero
          addq     %r13, %rbx                          # RBX = EA subfield
          jmp      *jte(, %rbp, 8)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г PBtn max                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L05:movl     %eax, %ebx                          # RBX = offset sub
          xorl     %eax, %eax                          # RAX = 0
          addq     %r13, %rbx                          # RBX = EA subfield
          decq     %rax                                # RAX = max
          jmp      *jte(, %rbp, 8)
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г write numeric    Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          .p2align 4,,15
      L21:movb     %al, 0x00(%rbx, %r11, 1)            # store byte
          jmp      SHWC
      L22:movw     %ax, 0x00(%rbx, %r11, 2)            # store word
          jmp      SHWC
      L23:movl     %eax,0x00(%rbx, %r11, 4)            # store dword
          jmp      SHWC
      L24:movq     %rax,0x00(%rbx, %r11, 8)            # store qword
          jmp      SHWC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г PBtn clear complex         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L06:cmpl     $0x0200,%ebx                        # EN_KILLFOCUS?
          jne      XIZ
          pxor     %xmm0,%xmm0                         # XM0 = 0
          movl     %eax, %ebx                          # RBX = offset sub
          movl     %r11d,%edx                          # RDX = entry
          movl     %r12d,%r8d                          # R08 = sub
          movl     0x38(%r13),%eax                     # RAX = block size
          addq     %r13, %rbx                          # RBX = EA sub
          cmpl     $0x05,%ebp                          # DO?
          je       0f
          cmpl     $0x06,%ebp                          # FIX?
          je       1f
          movl     $0x03,%r9d                          # R09 = FDA_DELETE
          call     _FDacc
          jmp      SHWC
          .p2align 4,,15
        0:shll     $0x04,%edx                          # RDX = offset entry
          addq     %rdx, %rbx                          # RBX = EA entry
          movdqa   %xmm0,0x00(%rbx)                    # clear entry
          jmp      SHWC
          .p2align 4,,15
        1:movl     %eax, %ecx                          # RCX = block size
          mull     %edx                                # RAX = size * entry
          addq     %rax, %rbx                          # RBX = EA entry
          shrl     $0x04,%ecx                          # ECX = loop_cnt
        2:movdqa   %xmm0,0x00(%rbx)                    # clear
          addq     $0x10,%rbx                          # RBX = next paras
          decl     %ecx                                # RCX = loop_cnt--
          jne      2b
          jmp      SHWC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MLE  complex data          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L07:cmpl     $0x0200,%ebx                        # EN_KILLFOCUS?
          jne      XIZ
          movl     SZVIEW(%rsi),%r8d                   # R08 = size
          movq     %rdx, %r10                          # R10 = MH_WRK
          movl     %eax, %ebx                          # RBX = offset sub
          movq     %r9,  %rcx                          # RCX = HWND numeric
          movq     %r14, %rdx                          # RDX = EA buffer
          addq     %r13, %rbx                          # RBX = EA subfield
          call     _WnQTx
          cmpl     $0x07,%ebp                          # $32?
          jne      0f
          movq     %r14,0x20(%rsp)                     # P_5 = EA buffer
          movq     %r10, %rcx                          # RCX = MH
          movl     %r11d,%edx                          # RDX = entry
          movl     %r12d,%r8d                          # R08 = sub
          movl     $0x02,%r9d                          # R09 = FDA_WRITE
          call     _FDacc
          jmp      XIZ
        0:call     UNDMP
          jmp      SHWC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г PBtn discard               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L08:andb     $0xFB,0x08(%rdx)                    # reset changed flag
          jmp      KILL
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г PBtn store                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L09:orl      $0x04,0x08(%rdx)                    # set changed flag
          jmp      KILL
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г PBtn help                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L10:movl     $0x09,%ecx
          call     _Help                               # help 9
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г show data                                            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     SHWC:xorl     %ebx,%ebx                           # EBX = FALSE
     SHOW:movl     PGM_FL(%rsi),%r10d                  # R10 = flags
          movzb    0x40(%r13, %r12, 1),%rbp            # RBP = type
          movl     0x60(%r13, %r12, 4),%r9d            # R09 = offset subfield
          movl     $0x3F,VIEW_E(%rsi)                  # '?'
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г enable/disable   Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          .p2align 4,,15
        3:xorl     %eax,   %eax                        # RAX = FALSE
          movl     $0x01,  %r8d                        # R08 = TRUE
          movq     %rdi,   %rcx                        # RCX = HWND
          movl     $0x1383,%edx                        # RDX = ID Efld num
          cmpl     $0x04,  %ebp                        # complex?
          cmova    %eax,   %r8d                        # start with FALSE
          call     _CtlEn
          incl     %edx                                # ID zero
          call     _CtlEn
          incl     %edx                                # ID max
          call     _CtlEn
          decl     %r8d                                # R08 = 0 or FFFFFFFF
          incl     %edx                                # ID clear
          call     _CtlEn
          incl     %edx                                # ID MLE
          call     _CtlEn
          pxor     %xmm0,%xmm0                         # XM0 = 0
          leaq     VIEW_E(%rsi),%rdx                   # RDX = EA numeric buffer
          decl     %ebp                                # type valid?
          js       sx
          movdqa   %xmm0,0x00(%r14)                    #       complex
          addq     %r13, %r9                           # R09 = EA subfield
          jmp      *jts(, %rbp, 8)
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г DB               Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          .p2align 4,,15
      L91:movzb    0x00(%r9, %r11, 1),%ecx             # RCX = DB
          testl    $0x80,%r10d                         # decimal?
          jne      sd
          call     _B2hex
          jmp      sx
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г DW               Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          .p2align 4,,15
      L92:movzwl   0x00(%r9, %r11, 2),%ecx             # RCX = DW
          testl    $0x01,%r10d                         # decimal?
          jne      sd
          call     _W2hex
          jmp      sx
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г DD               Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          .p2align 4,,15
      L93:movl     0x00(%r9, %r11, 4),%ecx             # RCX = DD
          testl    $0x01,%r10d                         # decimal?
          jne      sd
          call     _D2hex
          jmp      sx
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г DQ               Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          .p2align 4,,15
      L94:movq     0x00(%r9, %r11, 8),%rcx             # RCX = DQ
          testl    $0x01,%r10d                         # decimal?
          jne      sd
          call     _Q2hex
          jmp      sx
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г DO               Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          .p2align 4,,15
      L95:shll     $0x04,%r11d                         # R11 = offset
          addq     %r9,  %r11
          movq     %r11, %rcx                          # RCX = EA entry
          movq     %r14, %rdx                          # RDX = EA wrk
          call     _O2hex
          leaq     VIEW_E(%rsi),%rdx                   # RDX = EA numric buffer
          jmp      sx
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г FIX              Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          .p2align 4,,15
      L96:movl     0x38(%r13),%eax                     # RAX = size
          movq     %r9,  %rcx                          # RCX = EA subfield
          movl     %eax, %r8d                          # R08 = size
          mull     %r11d
          addq     %rax, %rcx                          # RCX = EA entry
          movq     %r14, %rdx                          # RDX = EA buffer
          call     DMP
          jmp      sx
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г $32              Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          .p2align 4,,15
      L97:movq     %r13, %r14                          # R14 = EA field
          movl     0x00(%r9, %r11, 4),%eax             # R10 = offset
          addq     %rax, %r14                          # R14 = EA string
          jmp      sx
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г decimal          Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          .p2align 4,,15
       sd:movl     $0x0A,%r8d                          # R08 = unsigned, 10 digit
          call     _Q2dec
          /*
          кФФФФФФФФФФФФФФФФФФП
          Г fill controls    Гл
          РФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллл
          */
          .p2align 4,,15
       sx:movq     %rdi,   %rcx                        # RCX = HWND
          movl     $0x1383,%edx                        # RDX = ID entry
          leaq     VIEW_E(%rsi),%r8                    # R08 = VIEW_E[BNR]
          call     _WnSDT
          movl     $0x1387,%edx                        # RDX = ID entry
          movq     %r14,   %r8                         # R08 = EA buffer or string
          call     _WnSDT
          testl    %ebx,   %ebx                        # DLGINIT?
          je       XIZ
          movl     $0x01,  %eax                        # return 1...
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г dump create                                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      DMP:subq     $0x08,%rsp

          movl     $0x706D7564,0x00(%r14)
          movl     $0x00,      0x04(%r14)

          addq     $0x08,%rsp
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г dump store                                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    UNDMP:subq     $0x08,%rsp

          movl     $0x706D7564,0x00(%r14)
          movl     $0x00,      0x04(%r14)

          addq     $0x08,%rsp
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г kill dialog                                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     KILL:movq     %r14,%rcx                           # RCX = EA
          movl     SZVIEW(%rsi),%edx                   # RDX = size
          call     _FreMem
     KIL1:call     _svFLD
     KIL0:movq     %rdi,%rcx                           # RCX = HWND
          call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г exit                                                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      XIZ:xorq     %rax, %rax
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
          .comm    _BNR,    8, 3
