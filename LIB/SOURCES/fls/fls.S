          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                              F I L E   D I A L O G S                               Кл
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
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г This archive includes Window's standard file open/save dialog as well as ST-Open's Гл
          Г FileList. FileList provides a listbox with the 256 most recently loaded files. The Гл
          Г FileList automatically removes the last file from this list when the 257th file is Гл
          Г loaded.                                                                            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4, 0x00, 15
     LC00:.byte    0x46, 0x69, 0x6C, 0x65, 0x20, 0x28, 0x2A, 0x2E, 0x2A, 0x29, 0x00, 0x2A, 0x2E, 0x2A, 0x00, 0x00
      jt0:.quad    L10
          .quad    L11
          .quad    L12
          .quad    L13
          .quad    L14
          .quad    L15
          .quad    L16
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          .p2align 4,,15
          .globl   _FileOpen
          .def     _FileOpen; .scl 2; .type 32; .endef
_FileOpen:movq     $fileopen,%rax
          jmp      0f
          .p2align 4,,15
          .globl   _FLSdlg
          .def     _FLSdlg; .scl 2; .type 32; .endef
  _FLSdlg:movq     $flsdlg,%rax
          jmp      0f
          .p2align 4,,15
          .globl   _FLSadd
          .def     _FLSadd; .scl 2; .type 32; .endef
  _FLSadd:movq     $flsadd,%rax
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г d i s t r i b u t o r                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:subq     $0x03F8,%rsp
          nop
          nop
          movdqa   %xmm4,0x0390(%rsp)
          movdqa   %xmm5,0x03A0(%rsp)
          movq     %rsi, 0x03B0(%rsp)
          movq     %rdi, 0x03B8(%rsp)
          movq     %rbx, 0x03C0(%rsp)
          movq     %rcx, 0x03C8(%rsp)
          movq     %rdx, 0x03D0(%rsp)
          movq     %r8,  0x03D8(%rsp)
          movq     %r9,  0x03E0(%rsp)
          movq     %r10, 0x03E8(%rsp)
          movq     %r11, 0x03F0(%rsp)
          movq     _BNR(%rip),%rsi               # RSI = BNR
          jmp      *%rax
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FileOpen                                                                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX    0 = open, x = save                                                        Гл
          Г   RDX    NULL or EA filter    (NULL => *.*)                                        Гл
          Г   R08    NULL or EA start DIR (NULL => default)                                    Гл
          Г   R09    NULL or EA title     (NULL => default)                                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX    0000 0000   okay, STR_FLS_SELECT valid                                    Гл
          Г          xxxx xxxx   user aborted or an error occured                              Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Passing four zeroes pops up the file open dialog with a filter *.*, standard title Гл
          Г and directory. If the first parameter isn't zero, the standard file save dialog is Гл
          Г shown. Filter, start directory and title are optional components to customise your Гл
          Г dialogs.                                                                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
 fileopen:pxor     %xmm0,%xmm0
          pxor     %xmm1,%xmm1
          pxor     %xmm2,%xmm2
          movq     HW_PGM(%rsi),%rax               # RAX = HWND
          leaq     LC00(%rip),%r11                 # RBX = filterList
          movq     _MHSTR(%rip),%rdi               # RDI = MHSTR
          leaq     0xC0(%rsp),%rbx                 # R11 = EA name
          testq    %rdx,%rdx                       # flt = 0?
          cmove    %r11,%rdx                       # use default
          movq     $0x88,  0x20(%rsp)              # size
          movq     %rax,   0x28(%rsp)              # HWND
          movq     %xmm0,  0x30(%rsp)              # HINST
          movq     %rdx,   0x38(%rsp)              # lpstrFilter
          movq     %xmm1,  0x40(%rsp)
          movl     $0x00,  0x48(%rsp)
          movl     $0x01,  0x4C(%rsp)              # nFilterIndex
          movq     %rbx,   0x50(%rsp)              # buffer EA
          movl     $0x0104,0x58(%rsp)              #        size
          movdqa   %xmm2,  0x60(%rsp)
          movq     %r8,    0x70(%rsp)              # EA dir
          movq     %r9,    0x78(%rsp)              # EA title
          movdqa   %xmm0,  0x80(%rsp)
          movdqa   %xmm1,  0x90(%rsp)
          movq     %xmm2,  0xA0(%rsp)
          movdqa   %xmm0,  0xC0(%rsp)
          testl    %ecx,%ecx
          jne      0f
          leaq     0x20(%rsp),%rcx                 # RCX = OPENFILENAME
          call     *__imp__GetOpenFileNameA(%rip)
          jmp 1f
          .p2align 4,,15
        0:leaq     0x20(%rsp),%rcx                 # RCX = OPENFILENAME
          call     *__imp__GetSaveFileNameA(%rip)
          .p2align 4,,15
        1:movq     %rdi, %rcx                      # RCX = MHSTR
          movl     $0x10,%edx                      # RDX = STR_FLS_SELECT
          xorl     %r8d, %r8d                      # R08 = subfield 00
          movl     $0x03,%r9d                      # R09 = FDA_DELETE
          movl     $0x01,%edi                      # RDI = 1
          cmpb     $0x00,0x00(%ebx)                # empty string?
          je       3f
          cmpb     $0x3A,0x01(%ebx)                # valid path?
          je       3f
          testl    %eax, %eax                      # pressed OK?
          jne      3f
          decl     %r9d                            # R09 = FDA_WRITE
          decl     %edi                            # RDI = 0
        3:movl     %ebx, 0x20(%rsp)                # s20 = EA buffer
          call     _FDacc
          testl    %edi,%edi                       # error?
          jne      4f
          negl     FLSADD(%rsi)                    # file list enabled?
          je       4f
          call     _FLSadd
        4:movl     %edi,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FLSdlg   file list dialog                                                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX    HWND                                                                      Гл
          Г   RDX    msg                                                                       Гл
          Г   R08    lparam                                                                    Гл
          Г   R09    wparam                                                                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX    ???                                                                       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   flsdlg:movl     %r8d,%eax                       # RAX = wParam
          movq     %rcx,%rdi                       # RDI = HWND
          shrl     $0x10,%eax                      # RAX = notify
          andl     $0xFFFF,%r8d                    # R08 = ID
          subl     $0x0111,%edx                    # WM_COMMAND?
          je       L00
          incl     %edx                            # WM_INITDLG?
          jne      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDLG              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллл
          */
          pxor     %xmm0,%xmm0
          leaq     0x20(%rsp),%rcx
          movl     $0xFFFFFFF7,0x30(%rsp)          # fls.dat
          movl     $0x23,      0x34(%rsp)          # r, w, static
          movq     %xmm0,      0x38(%rsp)
          movdqa   %xmm0,      0x40(%rsp)
          movdqa   %xmm0,      0x50(%rsp)
          movdqa   %xmm0,      0x60(%rsp)
          call     _LDreq
          movq     0x20(%rsp),%r10                 # R10 = EA top
          movq     0x38(%rsp),%r11                 # R11 = MH top
          testl    %eax,%eax
          je       0f
          movl     $0xFFFFFFF7,MSG_V1(%esi)        # field
          movl     $0x01,ERR_TY(%esi)              # system
          movl     %eax,%ecx                       # error
          call     _ErrMgr
          jmp      L01
        0:movq     %r11,FLS_MH(%esi)               # store FLS_MH
          movq     %rdi,%rcx                       # RCX = HWND
          movl     $0x0880,%edx                    # RDX = ID LBox
          call     _WinId
          movl     $0xFF,%ebx                      # RBX = cnt
          xorq     %r11,%r11                       # R11 = entry
          movq     %rax,%rcx                       # RCX = HWND LBox
          movl     $0x0180,%edx                    # RDX = LM_ADDSTRING
          xorl     %r8d,%r8d                       # R08 = 0
        1:movl     0x0100(%r10, %r11, 4),%r9d      # R09 = offset
          incq     %r11                            # entry++
          testl    %r9d,%r9d                       # empty string?
          je       2f
          addq     %r10,%r9                        # R09 = EA entry
          call     _SendM
          decl     %ebx                            # cnt--
          jns      1b
        2:movl     $0x0186,%edx                    # RDX = LM_SETCURSEL
          xorl     %r9d,%r9d                       # R09 = 0
          call     _SendM
          negl     FLSADD(%esi)                    # SYS_FLS_ADD?
          je       3f
          movq     %rdi,   %rcx                    # RCX = HWND
          movl     $0x0886,%edx                    # RDX = ChkB
          movl     $0x01,  %r8d                    # R08 = TRUE
          call     _SCkB
        3:movl     _MHSTR,%ecx                     # RCX = MHSTR
          movl     $0x10, %edx                     # RDX = STR_FLS_SELECT
          xorl     %r8d,  %r8d                     # R08 = subfield 00
          movl     $0x03, %r9d                     # R09 = FDA_DELETE
          call     _FDacc
          movl     $0x01,DLG_TY(%esi)              # system dialog
          movq     %rdi, %rcx                      # RCX = HWND
          xorl     %edx, %edx                      # RDX = 0
          movl     $0x01,%r8d                      # R08 = 1
          movl     $0x06,%r9d                      # R09 = 6
          call     _DLGtxt
          call     _CtrWn
          incl     %eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L00:subl     $0x0880,%r8d                    # below?
          js       XIZ
          cmpl     $0x06,%r8d                      # above?
          ja       XIZ
          movq     $0x00,0x20(%rsp)                # s20 = NULL
          jmp      *jt0(, %r8, 8)
          /*
          кФФФФФФФФФФФФФФП
          Г doubleclick  Гл
          РФФФФФФФФФФФФФФйл
            ллллллллллллллл
          */
          .p2align 4,,15
      L10:cmpl     $0x02,%eax                      # LBN_DBLCLK?
          jne      XIZ
          jmp      L12
          /*
          кФФФФФФФФФФФФФФП
          Г dismiss      Гл
          РФФФФФФФФФФФФФФйл
            ллллллллллллллл
          */
          .p2align 4,,15
      L11:movq     FLS_MH(%rsi),%rcx               # RCX = FLS_MH
          call     _LDfre
          movq     $0x00,FLS_MH(%esi)              # clear FLS_MH
          jmp      L01
          /*
          кФФФФФФФФФФФФФФП
          Г selection    Гл
          РФФФФФФФФФФФФФФйл
            ллллллллллллллл
          */
          .p2align 4,,15
      L12:movq     _MHSTR(%rip),%rbx               # RBX = MHSTR
          movq     FLS_MH(%rsi),%r11               # R11 = MHfls
          movl     $0x0880,%edx                    # RDX = ID
          movl     $0x0188,%r8d                    # R08 = LM_GETCURSEL
          xorq     %r9,%r9                         # R09 = NULL
          call     _SnDIM
          movq     %r11, %rcx                      # RCX = MHfls
          movl     %eax, %edx                      # RDX = selection
          xorl     %r8d, %r8d                      # R08 = subfield 00
          movl     $0x07,%r9d                      # R09 = FDA_WRITE
          call     _FDacc
          movq     %rbx, %rcx                      # RCX = MHfls
          movl     $0x10,%edx                      # RDX = STR_FLS_SELECT
          movl     $0x07,%r9d                      # R09 = FDA_WRITE
          movl     %eax, 0x20(%rsp)                # s20 = EA string
          call     _FDacc
          call     _FLSadd                         # add to file list
      L01:movq     %rdi,%rcx                       # RCX = HWND
          call     _KillDlg
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФП
          Г help         Гл
          РФФФФФФФФФФФФФФйл
            ллллллллллллллл
          */
          .p2align 4,,15
      L13:movl     $0x02,%ecx                      # RCX = OLH number
#          call     _Help
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФП
          Г remove       Гл
          РФФФФФФФФФФФФФФйл
            ллллллллллллллл
          */
          .p2align 4,,15
      L14:movq     FLS_MH(%esi),%r11               # R11 = MHfls
          movl     $0x0880,%edx                    # RDX = ID
          movl     $0x0188,%r8d                    # R08 = LM_GETCURSEL
          xorq     %r9,%r9                         # R09 = NULL
          call     _SnDIM
          testl    %eax,%eax                       # LB_ERR?
          js       XIZ
          movl     $0x0182,%r8d                    # R08 = LM_DELETESTRING
          movl     %eax,%r9d                       # R09 = index
          call     _SnDIM
          movl     %r9d,%ebx
          decl     %eax                            # last or error?
          je       0f                              # nothing to select
          js       XIZ                             #            delete
          cmpl     %eax,%r9d                       # beyond?
          cmova    %rax,%r9d                       # use top index
          movl     $0x0186,%edx                    # RDX = LM_SETCURSEL
          call     _SendM
        0:movq     %r11, %rcx                      # RCX = MHfls
          movl     $0x00,%edx                      # subfield 00
          movl     %ebx,%r9d                       # entry
          call     _SftDn
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФП
          Г clear list   Гл
          РФФФФФФФФФФФФФФйл
            ллллллллллллллл
          */
          .p2align 4,,15
      L15:movl     $0x0880,%edx                    # RDX = ID
          movl     $0x0184,%r8d                    # R08 = LM_RESETCONTENT
          xorq     %r9,%r9                         # R09 = NULL
          call     _SnDIM
          movq     FLS_MH(%esi),%rcx               # RCX = MH fls
          call     _LDclr
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФП
          Г toggle add   Гл
          РФФФФФФФФФФФФФФйл
            ллллллллллллллл
          */
          .p2align 4,,15
      L16:movl     FLSADD(%esi),%ecx               # RCX = SYS_FLS_ADD
          xorl     %eax,%eax
          movl     $0x01,%ebx
          testl    %ecx,%ecx
          cmove    %ebx,%eax
          movl     %eax,FLSADD(%esi)               # toggle SYS_FLS_ADD
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FLSadd   add STR_FLS_SELECT to file list datafield                                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> -      nothing                                                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX    always zero                                                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FLSadd() always requests the FileList datafield, to prevent its deletion while the Гл
          Г FLSdlg() still is running. If it is not the last instance, this datafield stays in Гл
          Г memory until FLSdlg() finally frees it.                                            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   flsadd:movq     _MHSTR(%rip),%r11               # R11 = MHSTR
          pxor     %xmm0,%xmm0                     # XM0 = 0
          negl     FLSADD(%esi)                    # SYS_FLS_ADD?
          je       XIZ
          movl     $0xFFFFFFF7,0x30(%rsp)          # fls.dat
          movl     $0x23,      0x0C(%edx)          # r, w, static
          movdqa   %xmm0,      0x10(%edx)
          movq     %xmm0,      0x20(%edx)
          leaq     0x20(%rsp), %rcx                # RCX = LD
          call     _LDreq
          movq     0x38(%rsp),%rbx                 # RBX = MHfls
          testl    %eax,%eax
          jne      3f
          movq     %r11, %rcx                      # RCX = MHSTR
          movl     $0x10,%edx                      # RDX = STR_FLS_SELECT
          movl     $0x00,%r8d                      # R08 = subfield 00
          movl     $0x07,%r9d                      # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rax,%r10                       # R10 = EA STR_FLS_SELECT
          cmpl     $0x00,0x00(%rax)                # zero string?
          je       2f
          movq     %rbx, %rcx                      # RCX = MHfls
          xorl     %edx, %edx                      # RDX = start at bottom
          movl     $0x08,%r9d                      # R09 = FDA_SEARCH
          movq     %rax, 0x20(%rsp)                # s20 = address
          call     _FDacc
          testl    %eax,%eax                       # found?
          js       1f
          movl     %eax,%edx                       # RDX = entry to remove
          call     _SftDn
        1:xorl     %edx,%edx                       # RDX = shuffle entry 00 one up
          call     _SftUp
          movl     $0x02,%r9d                      # R09 = FDA_WRITE
          movq     %r10, 0x20(%rsp)                # s20 = STR_FLS_SELECT
          call     _FDacc
        2:call     _LDfre
          jmp      XIZ
        3:movl     $0xFFFFFFF7,MSG_V1(%esi)        # field number
          movl     $0x01,      ERR_TY(%esi)        # system
          movl     %eax,%ecx                       # RCX = error
          call     _ErrMgr
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г common exit                                                                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      XIZ:xorl     %eax,%eax
      XIT:movdqa   0x0390(%rsp),%xmm4
          movdqa   0x03A0(%rsp),%xmm5
          movq     0x03B0(%rsp),%rsi
          movq     0x03B8(%rsp),%rdi
          movq     0x03C0(%rsp),%rbx
          movq     0x03C8(%rsp),%rcx
          movq     0x03D0(%rsp),%rdx
          movq     0x03D8(%rsp),%r8
          movq     0x03E0(%rsp),%r9
          movq     0x03E8(%rsp),%r10
          movq     0x03F0(%rsp),%r11
          addq     $0x03F8,%rsp
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BNR,   8, 3
          .comm    _MHSTR, 8, 3
