          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                   F I L E   L I S T   (C) ST-Open 2012
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
            This archive includes Window's standard file open/save dialog as well as ST-Open's
            FileList. FileList provides a listbox with the 256 most recently loaded files. The
            FileList automatically removes the last file from this list when the 257th file is
            loaded.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          .p2align 4,,15
          .globl   _FileOpen
          .def     _FileOpen; .scl 2; .type 32; .endef
_FileOpen:movq     $fileopen,             %rax
          jmp      0f
          .p2align 4,,15
          .globl   _FLSdlg
          .def     _FLSdlg; .scl 2; .type 32; .endef
  _FLSdlg:movq     $flsdlg,               %rax
          jmp      0f
          .p2align 4,,15
          .globl   _FLSadd
          .def     _FLSadd; .scl 2; .type 32; .endef
  _FLSadd:movq     $flsadd,               %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            d i s t r i b u t o r
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         */
          .p2align 4,,15
        0:subq     $0x03F8,               %rsp
          movdqa   %xmm4,                 0x0390(%rsp)
          movdqa   %xmm5,                 0x03A0(%rsp)
          movq     %rsi,                  0x03B0(%rsp)
          movq     %rdi,                  0x03B8(%rsp)
          movq     %rbx,                  0x03C0(%rsp)
          movq     %rcx,                  0x03C8(%rsp)
          movq     %rdx,                  0x03D0(%rsp)
          movq     %r8,                   0x03D8(%rsp)
          movq     %r9,                   0x03E0(%rsp)
          movq     %r10,                  0x03E8(%rsp)
          movq     %r11,                  0x03F0(%rsp)
          movq     _BNR(%rip),            %rsi          # RSI = BNR
          jmp      *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FileOpen
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    0 = open, x = save
               RDX    NULL or EA filter    (NULL => *.*)
               R08    NULL or EA start DIR (NULL => default)
               R09    NULL or EA title     (NULL => default)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX    0000 0000   okay, STR_FLS_SELECT valid
                      xxxx xxxx   user aborted or an error occured
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Passing four zeroes pops up the file open dialog with a filter *.*, standard title
            and directory. If the first parameter isn't zero, the standard file save dialog is
            shown. Filter, start directory and title are optional components to customise your
            dialogs.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            For some unknown reasons, Windoze sets the current path to the selected path. This
            unwanted change is undone by FileOpen automatically.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
 fileopen:pxor     %xmm0,%xmm0
          pxor     %xmm1,%xmm1
          pxor     %xmm2,%xmm2
          movq     HW_PGM(%rsi),          %rax          # RAX = HWND
          leaq     LC00(%rip),            %r11          # R11 = filterList
          movq     _MHSTR(%rip),          %rdi          # RDI = MHSTR
          leaq     0xC0(%rsp),            %rbx          # RBX = EA name
          testq    %rdx,                  %rdx          # flt = 0?
          cmove    %r11,                  %rdx          # use default
          movq     $0x88,                 0x20(%rsp)    # size
          movq     %rax,                  0x28(%rsp)    # HWND
          movq     %xmm0,                 0x30(%rsp)    # HINST
          movq     %rdx,                  0x38(%rsp)    # lpstrFilter
          movq     %xmm1,                 0x40(%rsp)
          movl     $0x00,                 0x48(%rsp)
          movl     $0x01,                 0x4C(%rsp)    # nFilterIndex
          movq     %rbx,                  0x50(%rsp)    # buffer EA
          movl     $0x0104,               0x58(%rsp)    #        size
          movdqa   %xmm2,                 0x60(%rsp)
          movq     %r8,                   0x70(%rsp)    # EA dir
          movq     %r9,                   0x78(%rsp)    # EA title
          movdqa   %xmm0,                 0x80(%rsp)
          movdqa   %xmm1,                 0x90(%rsp)
          movq     %xmm2,                 0xA0(%rsp)
          movdqa   %xmm0,                 0xC0(%rsp)
          testl    %ecx,                  %ecx
          jne      0f
          leaq     0x20(%rsp),            %rcx          # RCX = OPENFILENAME
          call     *__imp__GetOpenFileNameA(%rip)
          jmp 1f
          .p2align 4,,15
        0:leaq     0x20(%rsp),            %rcx          # RCX = OPENFILENAME
          call     *__imp__GetSaveFileNameA(%rip)
          .p2align 4,,15
        1:movq     %rdi,                  %rcx          # RCX = MHSTR
          movl     $0x10,                 %edx          # RDX = STR_FLS_SELECT
          xorq     %r8,                   %r8           # R08 = subfield 00
          movq     $0x03,                 %r9           # R09 = FDA_DELETE
          movl     $0x01,                 %edi          # RDI = 1
          cmpb     $0x00,                 0x00(%rbx)    # empty string?
          je       2f
          cmpb     $0x3A,                 0x01(%rbx)    # valid path?
          jne      2f
          testl    %eax,                  %eax          # pressed OK?
          je       2f
          decl     %r9d                                 # R09 = FDA_WRITE
          decl     %edi                                 # RDI = 0
        2:movl     %ebx,                  0x20(%rsp)    # s20 = EA buffer
          call     _FDacc
          testl    %edi,                  %edi          # error?
          jne      3f
          negl     FLSADD(%rsi)                         # file list enabled?
          je       3f
          call     _FLSadd
        3:movl     $0x01,                 %edx          # RDX = program path
          movq     $0x07,                 %r9           # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rax,                  %rcx          # RCX = EA path
          call     _SetPath
          movl     %edi,                  %eax          # RAX = RC
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FLSdlg   file list dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    HWND
               RDX    msg
               R08    lparam
               R09    wparam
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX    ???
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   flsdlg:movl     %r8d,                  %eax          # RAX = wParam
          movq     %rcx,                  %rdi          # RDI = HWND
          shrl     $0x10,                 %eax          # RAX = notify
          andl     $0xFFFF,               %r8d          # R08 = ID
          subl     $0x0111,               %edx          # WM_COMMAND?
          je       L00
          incl     %edx                                 # WM_INITDLG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          leaq     LD__FL(%rsi),          %rcx          # RCX = LD
          call     _LDreq
          movq     LD__FL(%rsi),          %r10          # R10 = EA fls
          testl    %eax,                  %eax
          je       0f
          movl     $0xFFFFFFF7,           MSG_V1(%rsi)  # field
          movl     $0x01,                 ERR_TY(%rsi)  # system
          movl     %eax,                  %ecx          # error
          call     _ErrMgr
          jmp      L01
          .p2align 4,,15
        0:movq     %rdi,                  %rcx          # RCX = HWND
          movl     $0x0880,               %edx          # RDX = ID LBox
          call     _WinId
          movl     $0xFF,                 %ebx          # RBX = cnt
          xorq     %r11,                  %r11          # R11 = entry
          movq     %rax,                  %rcx          # RCX = HWND LBox
          movl     $0x0180,               %edx          # RDX = LM_ADDSTRING
          xorq     %r8,                   %r8           # R08 = 0
          .p2align 4,,15
        1:movl     0x0100(%r10, %r11, 4), %r9d          # R09 = offset
          incq     %r11                                 # entry++
          testq    %r9,                   %r9           # empty string?
          je       2f
          addq     %r10,                  %r9           # R09 = EA entry
          call     _SendM
          decl     %ebx                                 # cnt--
          jns      1b
          .p2align 4,,15
        2:movl     $0x0186,               %edx          # RDX = LM_SETCURSEL
          xorq     %r9,                   %r9           # R09 = 0
          call     _SendM
          negl     FLSADD(%rsi)                         # SYS_FLS_ADD?
          je       3f
          movq     %rdi,                  %rcx          # RCX = HWND
          movl     $0x0886,               %edx          # RDX = ChkB
          movl     $0x01,                 %r8d          # R08 = TRUE
          call     _SCkB
        3:movl     _MHSTR,                %ecx          # RCX = MHSTR
          movl     $0x10,                 %edx          # RDX = STR_FLS_SELECT
          xorl     %r8d,                  %r8d          # R08 = subfield 00
          movl     $0x03,                 %r9d          # R09 = FDA_DELETE
          call     _FDacc
          incl     DLG_TY(%rsi)                         # system dialog
          movq     %rdi,                  %rcx          # RCX = HWND
          xorl     %edx,                  %edx          # RDX = 0
          movq     $0x01,                 %r8           # R08 = 1
          movq     $0x06,                 %r9           # R09 = 6
          call     _DLGtxt
          call     _CtrWn
          incl     %eax
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:subq     $0x0880,               %r8           # below?
          js       XIZ
          cmpq     $0x06,                 %r8           # above?
          ja       XIZ
          movq     $0x00,                 0x20(%rsp)    # s20 = NULL
          jmp      *jt0(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~
            doubleclick
            ~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L10:cmpl     $0x02,                 %eax          # LBN_DBLCLK?
          jne      XIZ
          jmp      L12
          /*
            ~~~~~~~~~~~~~~~
            dismiss
            ~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L11:movq     MH__FL(%rsi),          %rcx          # RCX = MH__FL
          call     _LDfre
          jmp      L01
          /*
            ~~~~~~~~~~~~~~~
            selection
            ~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L12:movq     _MHSTR(%rip),          %rbx          # RBX = MHSTR
          movq     MH__FL(%rsi),          %r11          # R11 = MH fls
          movl     $0x0880,               %edx          # RDX = ID
          movl     $0x0188,               %r8d          # R08 = LM_GETCURSEL
          xorq     %r9,                   %r9           # R09 = NULL
          call     _SnDIM
          movq     %r11,                  %rcx          # RCX = MH fls
          movl     %eax,                  %edx          # RDX = selection
          xorq     %r8,                   %r8           # R08 = subfield 00
          movq     $0x07,                 %r9           # R09 = FDA_ADDRESS
          call     _FDacc
          movl     %eax,                  0x20(%rsp)    # P_5 = EA string
          movq     %rbx,                  %rcx          # RCX = MHSTR
          movl     $0x10,                 %edx          # RDX = STR_FLS_SELECT
          movl     $0x03,                 %r9d          # R09 = FDA_WRITE
          call     _FDacc
          call     _FLSadd                              # add to file list
      L01:movq     %rdi,                  %rcx          # RCX = HWND
          call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L13:movl     $0x02,                 %ecx          # RCX = OLH number
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~
            remove
            ~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L14:movq     MH__FL(%esi),          %r11          # R11 = MH fls
          movl     $0x0880,               %edx          # RDX = ID
          movq     $0x0188,               %r8           # R08 = LM_GETCURSEL
          xorq     %r9,                   %r9           # R09 = NULL
          call     _SnDIM
          testl    %eax,                  %eax          # LB_ERR?
          js       XIZ
          movl     $0x0182,               %r8d          # R08 = LM_DELETESTRING
          movl     %eax,                  %r9d          # R09 = index
          call     _SnDIM
          movl     %r9d,                  %ebx
          decl     %eax                                 # last or error?
          je       0f                                   # nothing to select
          js       XIZ                                  #            delete
          cmpl     %eax,                  %r9d          # beyond?
          cmova    %eax,                  %r9d          # use top index
          movl     $0x0186,               %edx          # RDX = LM_SETCURSEL
          call     _SendM
        0:movq     %r11,                  %rcx          # RCX = MH fls
          xorl     %edx,                  %edx          # subfield 00
          movl     %ebx,                  %r9d          # entry
          call     _SftDn
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~
            clear list
            ~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L15:movl     $0x0880,               %edx          # RDX = ID
          movl     $0x0184,               %r8d          # R08 = LM_RESETCONTENT
          xorq     %r9,                   %r9           # R09 = NULL
          call     _SnDIM
          movq     MH__FL(%esi),          %rcx          # RCX = MH fls
          call     _LDclr
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~
            toggle add
            ~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L16:movl     FLSADD(%esi),          %ecx          # RCX = SYS_FLS_ADD
          xorl     %eax,                  %eax
          movl     $0x01,                 %ebx
          testl    %ecx,                  %ecx
          cmove    %ebx,                  %eax
          movl     %eax,                  FLSADD(%esi)  # toggle SYS_FLS_ADD
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FLSadd   add STR_FLS_SELECT to file list datafield
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> -      nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX    always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FLSadd() always requests the FileList datafield, to prevent its deletion while the
            FLSdlg() still is running. If it is not the last instance, this datafield stays in
            memory until FLSdlg() finally frees it.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   flsadd:negl     FLSADD(%rsi)                         # SYS_FLS_ADD?
          je       XIZ
          leaq     LD__FL(%rsi),          %rcx          # RCX = LD
          movq     _MHSTR(%rip),          %r11          # R11 = MHSTR
          call     _LDreq
          movq     MH__FL(%rsi),          %r10          # R10 = MH fls
          testl    %eax,                  %eax
          jne      3f
          movq     %r11,                  %rcx          # RCX = MHSTR
          movl     $0x10,                 %edx          # RDX = STR_FLS_SELECT
          xorq     %r8,                   %r8           # R08 = subfield 00
          movq     $0x07,                 %r9           # R09 = FDA_ADDRESS
          call     _FDacc
          cmpl     $0x00,                 0x00(%rax)    # zero string?
          je       2f
          movq     %rax,                  0x20(%rsp)    # P_5 = address
          movq     %r10,                  %rcx          # RCX = MH fls
          xorl     %edx,                  %edx          # RDX = start at bottom
          movq     $0x08,                 %r9           # R09 = FDA_SEARCH
          call     _FDacc
          testl    %eax,                  %eax          # found?
          js       1f
          movl     %eax,                  %edx          # RDX = entry to remove
          call     _SftDn
        1:xorl     %edx,                  %edx          # RDX = shuffle entry 00 one up
          call     _SftUp
          movq     $0x02,                 %r9           # R09 = FDA_WRITE
          call     _FDacc
        2:movq     %r10,                  %rcx          # RCX = MH fls
          call     _LDfre
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~
            report error
            ~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        3:movl     $0xFFFFFFF7,           MSG_V1(%esi)  # field number
          incl     ERR_TY(%esi)                         # system
          movl     %eax,                  %ecx          # RCX = error
          call     _ErrMgr
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorl     %eax,                  %eax
      XIT:movdqa   0x0390(%rsp),          %xmm4
          movdqa   0x03A0(%rsp),          %xmm5
          movq     0x03B0(%rsp),          %rsi
          movq     0x03B8(%rsp),          %rdi
          movq     0x03C0(%rsp),          %rbx
          movq     0x03C8(%rsp),          %rcx
          movq     0x03D0(%rsp),          %rdx
          movq     0x03D8(%rsp),          %r8
          movq     0x03E0(%rsp),          %r9
          movq     0x03E8(%rsp),          %r10
          movq     0x03F0(%rsp),          %r11
          addq     $0x03F8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,                  8, 3
          .comm    _MHSTR,                8, 3
