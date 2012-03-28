          /*
            ==================================================================================
                          C o m m o n   D i a l o g s    (C) ST-Open 1979 - 2011
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
             It is strongly recommended to read the HTML documentation before you use SecSys!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          .data
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      jt0:.quad L01                  # SS_PRP
          .quad L02                  # SS_CKM
          .quad L03                  # SS_DEF
          .quad L04                  # SS_RUN
          .quad L05                  # SS_LGI
          .quad L06                  # SS_LGO
          .quad L07                  # SS_ENC
          .quad L08                  # SS_DEC
          .quad XIZ                  # SS_SRV
          .quad XIZ                  # SS_CKS
          .quad L11                  # SS_SSV
          .quad L12                  # SS_DMP
          .quad XIZ                  # SS_R00
          .quad XIZ                  # SS_R01
          .quad XIZ                  # SS_R02
          .quad L16                  # SS_SDN
          .p2align 4,,15
     LC00:.ascii   "SecDlg"
          .byte    0x00, 0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          .p2align 4,,15
          .globl   _SecSy
          .def     _SecSy; .scl 2; .type 32; .endef
   _SecSy:movq     $smain,           %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SecAH
          .def     _SecAH; .scl 2; .type 32; .endef
   _SecAH:movq     $alert,           %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _getMK
          .def     _getMK; .scl 2; .type 32; .endef
   _getMK:movq     $gtmk,            %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _chkMK
          .def     _chkMK; .scl 2; .type 32; .endef
   _chkMK:movq     $ckmk,            %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _login
          .def     _login; .scl 2; .type 32; .endef
   _login:movq     $ulgi,            %rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DISTRIBUTOR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0xF8,            %rsp
          movdqa   %xmm4,            0x70(%rsp)
          movdqa   %xmm5,            0x80(%rsp)
          movq     %r15,             0x90(%rsp)
          movq     %r14,             0x98(%rsp)
          movq     %r13,             0xA0(%rsp)
          movq     %r12,             0xA8(%rsp)
          movq     %rbp,             0xB0(%rsp)
          movq     %rsi,             0xB8(%rsp)
          movq     %rdi,             0xC0(%rsp)
          movq     %r11,             0xC8(%rsp)
          movq     %r10,             0xD0(%rsp)
          movq     %r9,              0xD8(%rsp)
          movq     %r8,              0xE0(%rsp)
          movq     %rdx,             0xE8(%rsp)
          movq     %rcx,             0xF0(%rsp)
          movq     _BNR(%rip),       %rsi                    # RSI = BNR
          xorl     %ebp,             %ebp                    # RBP = 0
          jmp      *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SecSy     SecSys function distributor
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    SS_* command
               RDX    optional address
               R08             numeric
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000   ERR_NO_ERROR
                      0000 000C   ERR_PAR_COMMAND
                      0000 003C   ERR_SS_ERROR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    smain:pxor     %xmm0,            %xmm0
          pxor     %xmm1,            %xmm1
          movl     EA_SSW(%rsi),     %eax                    # RAX = EA_SSW
          movl     SS_ACT(%rsi),     %r10d                   # R10 = flag active
          movl     SS_RUN(%rsi),     %r11d                   # R11 =      running
          movl     SS_MLI(%rsi),     %r12d                   # R12 = fail master
          movl     SS_ULI(%rsi),     %r13d                   # R13 =      user
          movdqa   %xmm0,            0x40(%rsp)              # clear LD
          movdqa   %xmm1,            0x50(%rsp)
          movdqa   %xmm0,            0x60(%rsp)
          cmpl     $0x0F,            %ecx                    # valid command?
          ja       R0C
          jmp      *jt0(, %rcx, 8)                           # jump table <jt0>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_PRP
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:testl    %eax,             %eax                    # PW buffer loaded?
          jne      XIZ
          leaq     0x20(%rsp),       %rcx                    # RCX = LD
          movq     $0x00010000,      0x28(%rsp)              # 65,536 byte
          movl     $0xFFFFFFE0,      0x30(%rsp)              # field number
          movl     $0x33,            0x34(%rsp)              # r, w, mem, static
          call     _LDreq
          movq     0x20(%rsp),       %rbx                    # RBX = EA PWs
          movq     0x38(%rsp),       %rcx                    # RCX = MH PWs
          xorq     %r10,             %r10                    # R10 = 0
          testl    %eax,             %eax                    # loaded?
          jne      XIT
          decl     %ebp                                      # RBP = -1
          incq     %r10                                      # R10 = +1
          movq     %rbx,             EA_SSW(%rsi)            # store EA_SSW
          movq     %rcx,             MH_SSW(%rsi)            #       MH_SSW
          movl     %eax,             SS_MLI(%rsi)            # reset fail count master
          movl     %eax,             SS_ULI(%rsi)            #                  user
          movq     %r10,             SS_ACT(%rsi)            # SecSys = activated
          movl     %ebp,             SS_USR(%rsi)            # user   = none
          movl     $0x07,            ACCESS(%rsi)            # access = guest
          movl     $0x00,            ADMINR(%rsi)            # admin  = guest
          movl     $0x0707,          USR_RW(%rsi)            # r/w    = guest
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_CKM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L02:testq    %r10,             %r10                    # SecSys active?
          je       XIZ
          cmpq     $0x03,            %r12                    # 3 tries failed?
          jae      L16
          leaq     0x20(%rsp),       %rcx                    # RCX = LD
          movl     $0xFFFFFFE1,      0x30(%esp)              # masterkey
          movl     $0x23,            0x34(%esp)              # r, w, static
          call     _LDreq
          movq     0x20(%rsp),       %rbx                    # RBX = EA mpw
          movq     0x38(%rsp),       %rbp                    # RBP = MH mpw
          testl    %eax,             %eax                    # loaded?
          jne      XIT
          movl     %eax,             0x28(%rsp)              # clear size
          movl     $0xFFFFFFE3,      0x30(%rsp)              # SecSys texts
          call     _LDreq
          movq     0x38(%rsp),       %r9                     # R09 = MH texts
          testl    %eax,             %eax                    # loaded?
          jne      XIT
          xorq     %r8,              %r8                     # R08 = 0
          movl     $0x09F0,          %edx                    # RDX = EA [ID dlg]
          movq     %rbx,             EA_MPW(%rsi)            # store EA_MPW
          movq     %rbp,             MH_MPW(%rsi)            #       MH_MPW
          movq     %r9,              MH_SSM(%rsi)            #       MH_SSM
          cmpl     %r8d,             0x0100(%rbx)            # 1st DD = 0?
          jne      0f
          movq     $_getMK,          %rcx                    # PFNWP create MK
          call     _DBox
          negl     LGIABT(%rsi)                              # aborted?
          jne      XIT
          negl     SS_DRT(%rsi)                              # dirty?
          jne      R3C
        0:movq     $_chkMK,          %rcx                    # PFNWP check  MK
          call     _DBox
          movq     %rbp,             %rcx                    # RCX = MH mpw
          call     _LDfre
          movq     %r9,              %rcx                    # RCX = MH txt
          call     _LDfre
          negl     LGIABT(%rsi)                              # aborted?
          jne      R78
          cmpl     $0x03,            SS_MLI(%rsi)            # 3 tries failed?
          jae      L16
          negl     SS_DRT(%rsi)                              # dirty?
          jne      R3C
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_DEF
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L03:movq     %xmm0,            SS_DMP(%rsi)            # reset dump + supervisor
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_RUN
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L04:movl     $0x01,            SS_RUN(%esi)            # set running
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_LGI (local)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L05:testq    %r11,             %r11                    # running?
          je       XIZ
          cmpq     $0x03,            %r13                    # 3 tries failed?
          jae      L16
          leaq     0x20(%rsp),       %rcx                    # RCX = LD
          movdqa   %xmm0,            0x20(%rsp)              # clear EA and size
          movl     $0xFFFFFFE2,      0x30(%rsp)              # userkeys
          movl     $0x23,            0x2C(%rsp)              # r, w, static
          call     _LDreq
          movq     0x20(%rsp),       %rbx                    # RBX = EA userkeys
          movq     0x38(%rsp),       %rbp                    # RBP = MH userkeys
          testl    %eax,             %eax
          jne      XIT
          movdqa   %xmm0,            0x20(%rsp)              # clear EA and size
          movl     $0xFFFFFFE3,      0x30(%rsp)              # SecSys texts
          call     _LDreq
          movq     0x38(%rsp),       %r9                     # R09 = MH texts
          testl    %eax,             %eax
          jne      XIT
          movq     %rbx,             EA_MPW(%esi)            # store EA_MPW
          movq     %rbp,             MH_MPW(%esi)            #       MH_MPW
          movq     %r9,              MH_SSM(%esi)            #       MH_SSM
          movq     $_login,          %rcx                    # RCX = PFNWP
          movl     $0x09F0,          %edx                    # RDX = ID dlg
          xorq     %r8,              %r8                     # R08 = 0
          call     _DBox
          movq     %rbp,             %rcx                    # RCX = MH_MPW
          call     _LDfre
          movq     %r9,              %rcx                    # RCX = MH_SSM
          call     _LDfre
          negl     LGIABT(%rsi)                              # aborted?
          jne      R78
          cmpl     $0x03,            SS_ULI(%rsi)            # 3 tries failed?
          jae      L16
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_LGO (local) 
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L06:movl     $0xFFFFFFFF,      SS_USR(%rsi)            # usr = none
          movl     $0x00,            ACCESS(%rsi)            # guest
          movl     $0x07,            ADMINR(%rsi)            # guest
          movl     $0x0707,          USR_RW(%rsi)            # guest
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_ENC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L07:negl     SS_RUN(%rsi)                              # running?
          je       XIZ
          movq     %rdx,             %rcx                    # RCX = EA
          movl     %r8d,             %edx                    # RDX = key
          call     _ssENC
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_DEC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L08:negl     SS_RUN(%rsi)                              # running?
          je       XIZ
          movq     %rdx,             %rcx                    # RCX = EA
          movl     %r8d,             %edx                    # RDX = key
          call     _ssDEC
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_SRV
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          .p2align 4,,15
      L09:jmp      XIZ
          */
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_CKS
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          .p2align 4,,15
      L10:jmp      XIZ
          */
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_SSV
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L11:incl     SS_SVM(%rsi)                              # set supervisor mode
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_DMP
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L12:incl     SS_DMP(%rsi)                              # set dump activities
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_R00
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          .p2align 4,,15
      L13:jmp      XIZ
          */
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_R01
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          .p2align 4,,15
      L14:jmp      XIZ
          */
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_R02
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          .p2align 4,,15
      L15:jmp      XIZ
          */
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SS_SDN
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L16:movq     MH_SSW(%rsi),     %rcx                    # EBX = MH
          call     _LDfre
          pxor     %xmm0,            %xmm0
          pxor     %xmm1,            %xmm1
          movl     SS_MLI(%rsi),     %ebx                    # RBX = login failed master
          movl     SS_ULI(%rsi),     %ecx                    # RCX =              user
          movl     $0x74,            %edx                    # RDX = ERR_SEC_3RD_FAIL
          xorl     %eax,             %eax                    # RAX = 0
          movdqa   %xmm0,            EA_SSW(%rsi)            # clear SecSys area
          movdqa   %xmm1,            SS_ACT(%rsi)
          movdqa   %xmm0,            SS_SRV(%rsi)
          movdqa   %xmm1,            MH_SSM(%rsi)
          movdqa   %xmm0,            USR_RW(%rsi)
          testl    %ebx,             %ebx                    # master LGI failed?
          cmovne   %edx,             %eax
          testl    %ecx,             %ecx                    # user   LGI failed?
          cmovne   %edx,             %eax
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          º                            A l e r t   H a n d l i n g
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            secAH    alert handler
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          ³-> -      nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          ³<- EAX    .... ....   .
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    alert:xorl     %eax,             %eax
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          º                            S e c S y s   D i a l o g s
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            getMK     create new master key
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    HWND
               RDX    message
               R08            parameter 1
               R09                      2
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX    0000 0000   ERR_NO_ERROR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     gtmk:movq     %rcx,             %rdi                    # RDI = HWND
          andq     $0xFFFF,          %r8                     # R08 = ID control
          subl     $0x0111,          %edx                    # WM_COMMAND?
          je       L20
          incl     %edx                                      # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     $0x07,            %r9                     # R09 = FDA_ADDRESS
          movl     USRLNG(%rsi),     %r8d                    # R08 = language
          xorl     %edx,             %edx                    # RDX = msg 00
          movq     MH_SSM(%rsi),     %rcx                    # RCX = MH msgs
          movl     $0x00,            LGIABT(%rsi)            # reset aborted
          movl     $0x00,            PW_PIN(%rsi)            # flag  1st/2nd pass
          movl     $0x01,            SS_DRT(%rsi)            # set   dirty
          movl     $0x01,            DLG_TY(%rsi)            # system dialog
          call     _FDacc
          movq     %rdi,             %rcx                    # RCX = HWND
          movl     $0x09F6,          %edx                    # RDX = ID MLE
          movq     %rax,             %r8                     # R08 = EA msg
          call     _SEf
          movl     $0x38,            %edx                    # title
          movq     $0x39,            %r8                     # first
          movq     $0x3A,            %r9                     # last
          call     _DLGtxt
          call     _CtrWn
          incl     %eax
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L20:subq     $0x09F3,          %r8                     # OK?
          je       0f
          decq     %r8                                       # Abort?
          je       ABO
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            create key + user
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:pxor     %xmm0,            %xmm0
          pxor     %xmm1,            %xmm1
          movq     %rdi,             %rcx                    # RCX = HWND
          movl     $0x09F7,          %edx                    # RDX = ID EFld1
          leaq     PWEF_1(%esi),     %r8                     # R08 = EA PW1
          leaq     PWEF_2(%esi),     %r9                     # R09 = EA PW2
          movdqa   %xmm0,            0x00(%r8)               # clear PW area
          movdqa   %xmm1,            0x10(%r8)
          movdqa   %xmm0,            0x20(%r8)
          movdqa   %xmm1,            0x30(%r8)
          movdqa   %xmm0,            0x40(%r8)
          movdqa   %xmm1,            0x50(%r8)
          movdqa   %xmm0,            0x60(%r8)
          movdqa   %xmm1,            0x70(%r8)
          call     _QEf
          incl     %edx                                      # RDX = ID EFld2
          xchg     %r8,              %r9                     # R08 = EA PW2, R09 = EA PW1
          call     _QEf
          xchg     %r8,              %r9                     # R08 = EA PW2, R09 = EA PW1
          negl     PW_PIN(%rsi)                              # 1st pass?
          jne      L22
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            1st pass
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0x02,            %ebp                    # RBP = message
          movq     0x00(%r8),        %rax                    # get PWs
          movq     0x00(%r9),        %r10
          movq     0x08(%r8),        %rbx
          movq     0x08(%r9),        %r11
          movq     0x10(%r8),        %rcx
          movq     0x10(%r9),        %r12
          movq     0x18(%r8),        %rdx
          movq     0x18(%r9),        %r13
          cmpq     %rax,             %r10                    # validate
          jne      MSG
          cmpq     %rbx,             %r11
          jne      MSG
          cmpq     %rcx,             %r12
          jne      MSG
          cmpq     %rdx,             %r13
          jne      MSG
          movq     $0x3C,            %r9                     # R09 = loop_cnt
        2:movb     0x00(%r8),        %al                     # expand to 64 byte
          movb     0x01(%r8),        %bl
          movb     0x02(%r8),        %cl
          movb     0x03(%r8),        %dl
          addb     %al,              0x01(%r8)
          addb     %bl,              0x02(%r8)
          addb     %cl,              0x03(%r8)
          addb     %dl,              0x04(%r8)
          incq     %r8                                       # EA++
          decq     %r9                                       # loop_cnt--
          jne      2b
          subq     $0x3C,            %r8                     # R08 = EA PW
          movq     EA_MPW(%rsi),     %rbp                    # RBP = EA mpw.dat
          movq     MH_MPW(%rsi),     %r14                    # R14 = MH mpw.dat
          movq     $0x0001FFFF,      %r9                     # R09 = fill_cnt
          addb     %dl,              0x00(%r8)               # first byte...
        3:call     _RAND
          movq     %rax,             0x0100(%rbp, %r9, 8)    # fill with random data
          decq     %r9                                       # R09 = fill_cnt--
          jns      3b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             CAUTION: This function -might- overwrite already
                      stored parts of the password. Hence, it
                      should be recoded, writing bytes rather
                      than dwords.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     0x20(%r8),        %r10d                   # get offsets
          movl     0x24(%r8),        %r11d
          movl     0x28(%r8),        %r12d
          movl     0x2C(%r8),        %r13d
          movl     0x00(%r8),        %eax                    # get PW parts
          movl     0x04(%r8),        %ebx
          movl     0x08(%r8),        %ecx
          movl     0x0C(%r8),        %edx
          shrl     $0x0E,            %r10d                   # fit into field
          shrl     $0x0E,            %r11d
          shrl     $0x0E,            %r12d
          shrl     $0x0E,            %r13d
          addq     $0x10,            %r8
          movl     %eax,             0x0100(%rbp, %r10, 4)   # store PW in mpw.dat
          movl     %ebx,             0x0100(%rbp, %r11, 4)
          movl     %ecx,             0x0100(%rbp, %r12, 4)
          movl     %edx,             0x0100(%rbp, %r13, 4)
          addl     0x30(%r8),        %r10d                   # get offsets
          addl     0x34(%r8),        %r11d
          addl     0x38(%r8),        %r12d
          addl     0x3C(%r8),        %r13d
          movl     0x10(%r8),        %eax                    # get PW parts
          movl     0x14(%r8),        %ebx
          movl     0x18(%r8),        %ecx
          movl     0x1C(%r8),        %edx
          shrl     $0x0E,            %r10d                   # fit into field
          shrl     $0x0E,            %r11d
          shrl     $0x0E,            %r12d
          shrl     $0x0E,            %r13d
          addq     $0x10,            %r8
          movl     %eax,             0x0100(%rbp, %r10, 4)   # store PW in mpw.dat
          movl     %ebx,             0x0100(%rbp, %r11, 4)
          movl     %ecx,             0x0100(%rbp, %r12, 4)
          movl     %edx,             0x0100(%rbp, %r13, 4)
          orb      $0x04,            0x08(%r14)              # mpw.dat changed
          jmp      crKey
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            2nd pass
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L22:leaq     0x20(%rsp),       %rcx                    # RCX = LD
          leaq     PWEF_2(%rsi),     %r10                    # R10 = EA PW2
          movl     $0xFFFFFFE2,      0x30(%rsp)              # ppw.dat
          movl     $0x23,            0x34(%rsp)              # r, w, static
          call     _LDreq
          movq     0x20(%rsp),       %rbx                    # RBX = EA_PPW
          movq     0x38(%rsp),       %rbp                    # RBP = MH_PPW
          testl    %eax,             %eax
          jne      CPX
          movq     %r10,             %rcx
          call     _hex2D
          movq     %rbp,             %rcx                    # RCX = MH
          cmpl     %eax,             0x3C(%rbx)              # ECX = max entries
          ja       0f
          call     _LDfre
          movl     $0x03,            %ebp                    # PIN too large
          jmp      MSG
        0:movl     %eax,             %edx                    # RDX = PIN
          movq     $0x01,            %r8                     # R08 = subfield 01
          movq     $0x02,            %r9                     # R09 = FDA_WRITE
          movq     %r10,             0x20(%rsp)              # P_5 = EA pwd
          movl     $0x00FF0000,      0x28(%rsp)              # P_6 = full access
          call     _FDacc
          decq     %r8                                       # R08 = subfield 00
          call     _FDacc
          orb      $0x04,            0x08(%rbp)              # ppw.dat changed
          call     _LDfre
          movl     $0x00,            SS_DRT(%rsi)            # reset dirty
          jmp      CPX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            chkMK     Master login
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    HWND
               RDX    message
               R08            parameter 1
               R09                      2
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX    0000 0000   ERR_NO_ERROR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     ckmk:movq     %rcx,             %rdi                    # RDI = HWND
          andq     $0xFFFF,          %r8                     # R08 = ID control
          subl     $0x0111,          %edx                    # WM_COMMAND?
          je       L30
          incl     %edx                                      # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     MH_SSM(%rsi),     %rcx                    # RCX = MH msgs
          movl     $0x06,            %edx                    # RDX = MSG_06
          movl     USRLNG(%rsi),     %r8d                    # R08 = language
          movq     $0x07,            %r9                     # R09 = FDA_ADDRESS
          movl     $0x01,            DLG_TY(%rsi)            # system dialog
          movl     $0x00,            LGIABT(%rsi)            # reset aborted
          movl     $0x01,            SS_DRT(%rsi)            # set   dirty
          movl     $0x01,            PW_PIN(%rsi)            # set   flag
          call     _FDacc
          movq     %rdi,             %rcx                    # RCX = HWND
          movl     $0x09F6,          %edx                    # RDX = ID
          movq     %rax,             %r8                     # R08 = address
          call     _SEf
          movl     $0x09F8,          %edx                    # EDX = ID EFld PW2
          xorq     %r8,              %r8                     # R08 = SW_HIDE
          call     _CtlSh
          movl     $0x3C,            %edx                    # RDX = title
          movq     $0x3D,            %r8                     # R08 = first
          movq     $0x3E,            %r9                     # R09 = last
          call     _DLGtxt
          call     _CtrWn
          incl     %eax                                      # EAX = TRUE
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L30:subq     $0x09F3,          %r8                     # OK?
          je       0f
          decq     %r8                                       # Abort?
          je       ABO
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            check key
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:pxor     %xmm0,            %xmm0
          pxor     %xmm1,            %xmm1
          leaq     PWEF_1(%rsi),     %r8                     # R08 = EA PW1
          movq     $0x3C,            %r9                     # R09 = loop_cnt
          movl     $0x09F7,          %edx                    # RDX = ID EFld2
          movdqa   %xmm0,            0x00(%r8)
          movdqa   %xmm1,            0x10(%r8)
          movdqa   %xmm0,            0x20(%r8)
          movdqa   %xmm1,            0x30(%r8)
          call     _QEf
        1:movb     0x00(%r8),        %al                     # expand to 64 byte
          movb     0x01(%r8),        %bl
          movb     0x02(%r8),        %cl
          movb     0x03(%r8),        %dl
          addb     %al,              0x01(%r8)
          addb     %bl,              0x02(%r8)
          addb     %cl,              0x03(%r8)
          addb     %dl,              0x04(%r8)
          incq     %r8
          decq     %r9
          jne      1b
          subq     $0x3C,            %r8                     # R08 = EA PW1
          movq     EA_MPW(%rsi),     %rbp                    # RBP = mpw.dat
          movq     $0x04,            %r9                     # R09 = loop_cnt
          addb     %dl,              0x00(%r8)               # first byte...
          xorl     %ecx,             %ecx                    # RCX = offset
          xorl     %edx,             %edx                    # RDX = offset
        2:addl     0x20(%r8),        %ecx                    # validate PW in mpw.dat
          addl     0x24(%r8),        %edx
          movl     0x00(%r8),        %eax
          movl     0x04(%r8),        %ebx
          shrl     $0x0E,%ecx
          shrl     $0x0E,            %edx
          cmpl     %eax,             0x0100(%rbp, %rcx, 4)
          jne      3f
          cmpl     %ebx,             0x0100(%rbp, %rdx, 4)
          jne      3f
          addq     $0x08,            %r8
          decq     %r9
          jne      2b
          movl     $0x00,            SS_DRT(%rsi)            # reset dirty
          jmp      crKey
        3:incl     SS_MLI(%rsi)                              # failed++
          movl     $0x04,            %ebp                    # MSG_04
          call     _GetTime
          movl     %eax,             SS_TMS(%esi)            # fail date
          call     _GetDate
          movl     %eax,             SS_DTS(%esi)            # fail time
          cmpl     $0x03,            SS_MLI(%esi)            # alert?
          jbe      MSG
          jmp      CPX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            login     login user
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> PAR1   HWND
               PAR2   message
               PAR3           parameter 1
               PAR4                     2
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX    0000 0000   ERR_NO_ERROR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     ulgi:movq     %rcx,             %rdi                    # RDI = HWND
          andq     $0xFFFF,          %r8                     # R08 = ID control
          subl     $0x0111,          %edx                    # WM_COMMAND?
          je       L40
          incl     %edx                                      # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     MH_SSM(%rsi),     %rcx                    # EBX = MH msgs
          movl     $0x07,            %edx                    # MSG_07
          movl     USRLNG(%rsi),     %r8d                    # ECX = language
          movq     $0x07,            %r9                     # FDA_ADDRESS
          movl     $0x01,            DLG_TY(%rsi)            # system dialog
          movl     $0x00,            ACCESS(%rsi)            # guest
          movl     $0x00,            LGIABT(%rsi)            # reset aborted
          call     _FDacc
          movq     %rdi,             %rcx                    # RCX = HWND
          movl     $0x09F6,          %edx                    # RDX = ID EFld1
          movq     %rax,             %r8                     # R08 = address
          call     _SEf
          incl     %edx                                      # RDX = ID EFld2
          movq     $0xC5,            %r8                     # R08 = EM_SETTEXTLIMIT
          movq     $0x04,            %r9                     # R09 = 4 chars
          movl     $0x00,            0x20(%rsp)              # P_5 = NULL
          call     _SnDIM
          movl     $0x40,            %edx                    # RDX = title
          movq     $0x41,            %r8                     # R08 = first
          movq     $0x42,            %r9                     # R09 = last
          call     _DLGtxt
          call     _CtrWn
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L40:subq     $0x09F3,          %r8                     # OK?
          je       0f
          decq     %r8                                       # Abort?
          je       ABO
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            validate PIN and PW
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:pxor     %xmm0,            %xmm0
          pxor     %xmm1,            %xmm1
          movq     MH_MPW(%rsi),     %rbp                    # RBP = MH_MPW
          leaq     PWEF_1(%rsi),     %r8                     # R08 = EA PW1
          leaq     PWEF_2(%rsi),     %r9                     # R09 = EA PW2
          movl     $0x09F7,          %edx                    # RDX = ID EFld1
          movdqa   %xmm0,            0x00(%r8)
          movdqa   %xmm1,            0x10(%r8)
          movdqa   %xmm0,            0x20(%r8)
          movdqa   %xmm1,            0x30(%r8)
          call     _QEf
          xchg     %r8,              %r9                     # R08 = EA PIN, R09 = EA PW1
          incl     %edx                                      # RDX = ID EFld2
          call     _QEf
          movq     %r8,              %rcx                    # RCX = EA PIN
          call     _hex2D
          cmpl     %eax,             0x1C(%rbp)              # >= max?
          jbe      L43
          leaq     0x30(%rsp),       %r14                    # R10 = EA buffer
          movl     %eax,             SS_USR(%rsi)            # store SS_USR
          movq     %rbp,             %rcx                    # RCX = MH
          movl     %eax,             %edx                    # RDX = entry (PIN)
          movq     $0x01,            %r8                     # R08 = subfield 01
          movq     $0x01,            %r9                     # R09 = FDA_READ
          movq     %r14,             0x20(%rsp)              # P_5 = EA PW1
          call     _FDacc
          movl     %eax,             %ebx                    # RBX = adacwrrd
          decq     %r8                                       # R08 = subfield 00
          call     _FDacc
          movq     0x00(%r14),       %r10                    # validate password
          movq     0x08(%r14),       %r11
          movq     0x10(%r14),       %r12
          movq     0x18(%r14),       %r13
          movl     %ebx,             %ecx                    # RCX = adacwrrd
          movl     %ebx,             %edx                    # RDX = adacwrrd
          cmpq     %r10,             0x00(%r9)
          jne      L43
          shrl     $0x10,            %ebx                    # RBX = 0000adac
          shrl     $0x18,            %ecx                    # RCX = 000000ad
          cmpq     %r11,             0x08(%r9)
          jne      L43
          andl     $0xFF,            %ebx                    # RBX = 000000ac
          andl     $0xFFFF,          %edx                    # RDX = 0000wrrd
          cmpq     %r12,             0x10(%r9)
          jne      L43
          movl     %ecx,             ACCESS(%rsi)            # access rights
          movl     %ebx,             ADMINR(%rsi)            # admin  rights
          movl     %edx,             USR_RW(%rsi)            # r/w    rights
          cmpq     %r13,             0x18(%r9)
          jne      L43
          jmp      CPX
          .p2align 4,,15
      L43:incl     SS_ULI(%rsi)
          movl     $0x05,            %ebp                    # MSG_05
          movl     $0xFFFFFFFF,      SS_USR(%rsi)            # clear SS_USR
          call     _GetTime
          movl     %eax,             SS_TMS(%rsi)
          call     _GetDate
          movl     %eax,             SS_DTS(%rsi)
          cmpl     $0x03,            SS_ULI(%rsi)
          jbe      MSG
          jmp      CPX
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            COMMON TASKS
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            create key
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    crKey:movq     EA_MPW(%rsi),     %rbp                    # RBP = mpw.dat
          movl     PW_PIN(%rsi),     %r8d                    # R08 = flag
          movq     $0x0400,          %r9                     # R09 = loop_cnt
          leaq     PWEF_1(%rsi),     %r14                    # R14 = EA pw
          movq     EA_SSW(%rsi),     %r15                    # R15 = work area
          addq     $0x0100,          %rbp                    # RBP = EA mpw
        0:movzb    0x00(%r14),       %eax                    # read offsets
          movzb    0x01(%r14),       %ebx
          movzb    0x02(%r14),       %ecx
          movzb    0x03(%r14),       %edx
          addq     %rax,             %rbp                    # get key bytes
          movb     0x00(%rbp),       %r10b
          addq     %rbx,             %rbp
          movb     0x00(%rbp),       %r11b
          addq     %rcx,             %rbp
          movb     0x00(%rbp),       %r12b
          addq     %rdx,             %rbp
          movb     0x00(%rbp),       %r13b
          movb     %r10b,            0x00(%r15)              # write key bytes
          movb     %r11b,            0x01(%r15)
          movb     %r12b,            0x02(%r15)
          movb     %r13b,            0x03(%r15)
          addq     $0x04,            %r14
          addq     $0x04,            %r15
          andq     $0xFFFFFF3F,      %r14                    # keep in range
          decq     %r9
          jne      0b
          testq    %r8,              %r8                     # pass 1?
          jne      CPX
          movl     $0x01,            %ebp                    # MSG_01
          incl     PW_PIN(%rsi)                              # set 2nd pass
          jmp      MSG
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            abort
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      ABO:movl     $0x01,            LGIABT(%esi)            # set   aborted
          movl     $0x00,            SS_DRT(%esi)            # reset dirty
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            clear passwords
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      CPX:pxor     %xmm0,            %xmm0
          pxor     %xmm1,            %xmm1
          leaq     PWEF_1(%rsi),     %rdx                    # RDX = EA PW1
          movq     %rdi,             %rcx                    # RCX = HWND
          movdqa   %xmm0,            0x00(%rdx)
          movdqa   %xmm1,            0x10(%rdx)
          movdqa   %xmm0,            0x20(%rdx)
          movdqa   %xmm1,            0x30(%rdx)
          movdqa   %xmm0,            0x40(%rdx)
          movdqa   %xmm1,            0x50(%rdx)
          movdqa   %xmm0,            0x60(%rdx)
          movdqa   %xmm1,            0x70(%rdx)
          call     _WinDD
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            display message
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      MSG:movq     MH_SSM(%rsi),     %rcx                    # RCX = MH_SSM
          movl     USRLNG(%rsi),     %r8d                    # R08 = language
          movl     %ebp,             %edx                    # RDX = message
          movq     $0x07,            %r9                     # R09 = FDA_ADDRESS
          call     _FDacc
          movq     %rdi,             %rcx                    # RCX = HWND
          movl     $0x09F6,          %edx                    # RDX = ID MLE
          movq     %rax,             %r8                     # R08 = EA message
          call     _SEf
          incl     %edx                                      # RDX = ID PW1
          leaq     FIAADR(%rsi),     %r8                     # R08 = EA empty string
          call     _SEf
          incl     %edx                                      # RDX = ID PW2
          call     _SEf
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ERRORS
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      R0C:movl     $0x0C,            %eax                    # ERR_PAR_COMMAND
          jmp      XIT
          .p2align 4,,15
      R3C:movl     $0x3C,            %eax                    # ERR_SS_ERROR
          jmp      XIT
          .p2align 4,,15
      R78:movl     $0x00,            LGIABT(%rsi)            # reset LGIABT
          movl     $0x78,            %eax                    # ERR_LGI_ABORT
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EXIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorl     %eax,             %eax
      XIT:movdqa   0x70(%rsp),       %xmm4
          movdqa   0x80(%rsp),       %xmm5
          movq     0x90(%rsp),       %r15
          movq     0x98(%rsp),       %r14
          movq     0xA0(%rsp),       %r13
          movq     0xA8(%rsp),       %r12
          movq     0xB0(%rsp),       %rbp
          movq     0xB8(%rsp),       %rsi
          movq     0xC0(%rsp),       %rdi
          movq     0xC8(%rsp),       %r11
          movq     0xD0(%rsp),       %r10
          movq     0xD8(%rsp),       %r9
          movq     0xE0(%rsp),       %r8
          movq     0xE8(%rsp),       %rdx
          movq     0xF0(%rsp),       %rcx
          addq     $0xF8,            %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,             8, 3
