          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                              L o a d e r   M o n i t o r   (C) ST-Open 2012
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
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section .rdata, "dr"
          .p2align 4,,15
      jt0:.quad    L00                                   # 0941 PBtn dismiss
          .quad    L01                                   # 0942      previous
          .quad    L02                                   # 0943      next
          .quad    L03                                   # 0944      help
          .quad    L04                                   # 0945 ChkB hex/dec
          .quad    L05                                   # 0946      dummy
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MHMon     LDT viewer
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _MHmon
          .def     _MHmon; .scl 2; .type 32; .endef
   _MHmon:subq     $0x38,              %rsp
          movq     %rdx,               0x28(%rsp)
          movq     %rcx,               0x30(%rsp)
          leaq     _MHdlg(%rip),       %rcx              # RCX = PFNWP
          movl     $0x0940,            %edx              # RDX = ID
          call     _DBox
          movq     0x28(%rsp),         %rdx
          movq     0x30(%rsp),         %rcx
          addq     $0x38,              %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MHdlg     LDT viewer dialog procedure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    HWND
               RDX    msg
               R08    WPARAM
               R09    LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    ???
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _MHdlg
          .def     _MHdlg; .scl 2; .type 32; .endef
   _MHdlg:subq     $0xF8,              %rsp
          movq     _BNR(%rip),         %rax
          movq     %r15,               0x90(%rsp)
          movq     %r14,               0x98(%rsp)
          movq     %r13,               0xA0(%rsp)
          movq     %r12,               0xA8(%rsp)
          movq     %r11,               0xB0(%rsp)
          movq     %r10,               0xB8(%rsp)
          movq     %rdi,               0xC0(%rsp)
          movq     %rsi,               0xC8(%rsp)
          movq     %rbx,               0xD0(%rsp)
          movq     %r9,                0xD8(%rsp)
          movq     %r8,                0xE0(%rsp)
          movq     %rdx,               0xE8(%rsp)
          movq     %rcx,               0xF0(%rsp)
          movq     _BMM(%rip),         %r15              # R15 = BMM
          movl     MMMCUR(%rax),       %edi              # RDI = current entry
          movl     MMMHEX(%rax),       %esi              # RSI =         mode
          andq     $0xFFFF,            %r8               # R08 = ID control
          movq     %rcx,               %r13              # R13 = HWND
          movq     %rax,               %r14              # R14 = BNR
          andl     $0x01,              %esi              # RSI = flag
          subl     $0x0111,            %edx              # WM_COMMAND?
          je       0f
          incl     %edx                                  # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_DLGINIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0x01,              DLG_TY(%r14)      # switch to system dialog
          movl     $0x50,              %edx              # title
          movl     $0x51,              %r8d              # text 1st
          movl     $0x6F,              %r9d              #      last
          call     _DLGtxt
          call     _CtrWn
          movl     $0x0111,            %edx              # RDX = WM_COMMAND
          movq     $0x0946,            %r8               # R08 = ID dummy
          xorq     %r9,                %r9               # R09 = TRUE/FALSE
          call     _PostM
          movl     $0x01,              %eax
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0x0941,            %r8               # below?
          js       XIZ
          cmpq     $0x05,              %r8               # above?
          ja       XIZ
          jmp      *jt0(, %r8, 8)
          /*
            ~~~~~~~~~~~~~~~~~
            dismiss
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:call     _KillDlg
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~
            previous
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:decl     %edi                                  # CUR - 1
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~
            next
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L02:incl     %edi                                  # CUR + 1
        0:andl     $0x07FF,            %edi              # keep valid
          movl     %edi,               MMMCUR(%r14)      # store
          jmp      L05
          /*
            ~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L03:movl     $0x03,              %ecx              # help 03
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~
            hex/dec
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L04:xorl     $0x01,              %esi              # toggle mode
          movl     %esi,               MMMHEX(%r14)      # store
          jmp      L05
          /*
            ~~~~~~~~~~~~~~~~~
            display
            ~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L05:shll     $0x05,               %edi                  # RDI = offset
          leaq     _Q2hex(%rip),        %r11                  # R11 = EA Q2hex()
          leaq     _Q2dec(%rip),        %r12                  # R12 = EA Q2dec()
          addq     %rdi,                %r15                  # R15 = EA MH
          testl    %esi,                %esi                  # decimal?
          cmove    %r11,                %r12                  # R12 = Q2***
          leaq     MNUTXT(%r14),        %rdx                  # RDX = 00[buf]
          xorq     %r8,                 %r8                   # R08 = 20 digits
          movq     M_H_EA(%r15),        %rcx                  # RCX = MemEA
          call     *%r12
          movq     %r15,                %rcx                  # RCX = MemHd
          addq     $0x20,               %rdx                  # RDX = 20[buf]
          call     *%r12
          shrq     %r8                                        # R08 = 10 digits
          leaq     _D2hex(%rip),        %r11                  # R11 = EA D2hex()
          leaq     _D2dec(%rip),        %r12                  # R12 = EA D2dec()
          addq     $0x20,               %rdx                  # RDX = 40[buf]
          testl    %esi,                %esi                  # decimal?
          cmove    %r11,                %r12                  # R12 = D2***
          movl     M_H_IC(%r15),        %ecx                  # RCX = instances
          movl     M_H_AL(%r15),        %ebx                  # RBX = allocated
          movl     M_H_SZ(%r15),        %esi                  # RDI = true size
          movl     M_H_FI(%r15),        %r10d                 # R10 = field
          movl     M_H_ET(%r15),        %r11d                 # R11 = entries
          shrl     $0x05,               %edi                  # RDI = entry
          call     *%r12
          movl     %ebx,                %ecx                  # RCX = allocated
          addq     $0x10,               %rdx                  # RDX = 50[buf]
          call     *%r12
          movl     %esi,                %ecx                  # RCX = true size
          addq     $0x10,               %rdx                  # RDX = 60[buf]
          call     *%r12
          movl     %r10d,               %ecx                  # RCX = field
          addq     $0x10,               %rdx                  # RDX = 70[buf]
          call     *%r12
          movl     %r11d,               %ecx                  # RCX = entries
          addq     $0x10,               %rdx                  # RDX = 80[buf]
          call     *%r12
          movl     %edi,                %ecx                  # RCX = entry
          addq     $0x10,               %rdx                  # RDX = 90[buf]
          call     _W2hex
          movq     %r13,                %rcx                  # RCX = HWND
          movl     $0x0947,             %edx                  # RDX = ID EA
          leaq     MNUTXT(%r14),        %r8                   # R08 = 00[buf]
          call     _WnSDT
          incl     %edx                                       # RDX = ID MH
          addq     $0x20,               %r8                   # R08 = 20[buf]
          call     _WnSDT
          incl     %edx                                       # RDX = ID inst
          addq     $0x20,               %r8                   # R08 = 40[buf]
          call     _WnSDT
          incl     %edx                                       # RDX = ID alloc
          addq     $0x10,               %r8                   # R08 = 50[buf]
          call     _WnSDT
          incl     %edx                                       # RDX = ID true
          addq     $0x10,               %r8                   # R08 = 60[buf]
          call     _WnSDT
          incl     %edx                                       # RDX = ID field
          addq     $0x10,               %r8                   # R08 = 70[buf]
          call     _WnSDT
          movl     M_H_FL(%r15),        %ebx                  # RBX = flags
          incl     %edx                                       # RDX = ID entries
          addq     $0x10,               %r8                   # R08 = 80[buf]
          call     _WnSDT
          movl     $0x094F,             %edx                  # RDX = ID entry
          addq     $0x10,               %r8                   # R08 = 90[buf]
          call     _WnSDT
          xorq     %r8,                 %r8                   # R08 = 0
          movl     $0x0950,             %edx                  # RDX = ID read
          testl    $0x0001,             %ebx                  # read?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID write
          testl    $0x0002,             %ebx                  # write?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID changed
          testl    $0x0004,             %ebx                  # changed?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID discard
          testl    $0x0008,             %ebx                  # discard?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID mem
          testl    $0x0010,             %ebx                  # mem?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID field
          testl    $0x0020,             %ebx                  # field?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID extern
          testl    $0x0040,             %ebx                  # extern?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID file
          testl    $0x0080,             %ebx                  # file?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID single
          testl    $0x0100,             %ebx                  # single?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID system
          testl    $0x0200,             %ebx                  # system?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID reserved
          xorq     %r8,                 %r8                   # R08 = disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID dirty
          testl    $0x0800,             %ebx                  # dirty?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID encrypt
          testl    $0x1000,             %ebx                  # encrypt?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID SecSys
          testl    $0x2000,             %ebx                  # SecSys?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          incl     %edx                                       # RDX = ID corrupt
          testl    $0x4000,             %ebx                  # corrupt?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          movq     MH__LF(%r14),        %r12                  # R12 = MH LFL
          incl     %edx                                       # RDX = ID busy
          testl    $0x8000,             %ebx                  # busy?
          setne    %r8b                                       # enable/disable
          call     _CtlEn
          movq     %r12,                %rcx                  # RCX = MH LFL
          movl     %edi,                %edx                  # RDX = entry
          xorq     %r8,                 %r8                   # R08 = sub00
          movq     $0x07,               %r9                   # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %r13,                %rcx                  # RCX = HWND
          movl     $0x094E,             %edx                  # RDX = ID name
          movq     %rax,                %r8                   # R08 = EA string
          call     _WnSDT
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
            COMMON EXIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorl     %eax,               %eax
      XIT:movq     0x90(%rsp),         %r15
          movq     0x98(%rsp),         %r14
          movq     0xA0(%rsp),         %r13
          movq     0xA8(%rsp),         %r12
          movq     0xB0(%rsp),         %r11
          movq     0xB8(%rsp),         %r10
          movq     0xC0(%rsp),         %rdi
          movq     0xC8(%rsp),         %rsi
          movq     0xD0(%rsp),         %rbx
          movq     0xD8(%rsp),         %r9
          movq     0xE0(%rsp),         %r8
          movq     0xE8(%rsp),         %rdx
          movq     0xF0(%rsp),         %rcx
          addq     $0xF8,              %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BMM,               8, 3
          .comm    _BNR,               8, 3
