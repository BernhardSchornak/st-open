          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                                 S T - L O A D E R                                  Кл
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
          */
          .include "..\\..\\..\\include\\yasm.h"
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .section .rdata, "dr"
          .p2align 4,0x00
    jtclr:.quad    cl0                       # invalid
          .quad    cl1                       # byte
          .quad    cl2                       # word
          .quad    cl3                       # dword
          .quad    cl4                       # qword
          .quad    cl5                       # oword
          .quad    cl6                       # block
          .quad    cl3                       # $32
     LC00:.long    0x2E307973                # FFFFFF00 = sy0.dat
          .long    0x2E317973                #       01 = sy1.dat
          .long    0x2E327973                #       02 = sy2.dat
          .long    0x2E337973                #       03 = sy3.dat
          .long    0x2E347973                #       04 = sy4.dat
          .long    0x2E6D736E                #       05 = nsm.dat
          .long    0x2E6C666C                #       06 = lfl.dat
          .long    0x2E736C66                #       07 = fls.dat
          .long    0x2E387973                #       08 = sy8.dat
          .long    0x2E727265                #       09 = err.dat
          .long    0x2E706F74                #       0A = top.dat
          .long    0x2E706C68                #       0B = hlp.dat
          .long    0x2E727473                #       0C = str.dat
          .long    0x2E747663                #       0D = cvt.dat
          .long    0x2E6D756E                #       0E = num.dat
          .long    0x2E3F3F3F                #       0F = ???.dat = BMM!
     LC01:.ascii   "..\\syst\\num.dat"
          .byte    0x00
     LC02:.ascii   "..\\syst\\cvt.dat"
          .byte    0x00
     LC03:.ascii   "..\\syst\\str.dat"
          .byte    0x00
     LC04:.ascii   "CPU is too old!"
          .byte    0x00, 0x00, 0x00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г LDinit  initialize Loader                                                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г->       nothing                                                                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   0000 0000 0000 0000   okay                                                 Гл
          Г         0000 0000 0000 00XX   terminate program - loader is not available!         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _LDinit
          .def     _LDinit; .scl 2; .type 32; .endef
  _LDinit:subq     $0xB8,%rsp
          nop
          nop
          movq     %rbp,0x78(%rsp)
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test CPU capabilities  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          pushf                              # no direct access to EFLAGS...
          movl     0x00(%rsp),%eax           # EAX = EFLAGS
          xorl     $0x00200000,0x00(%rsp)    # toggle ID
          popf                               # no direct access to EFLAGS...
          pushf                              # no direct access to EFLAGS...
          cmpl     %eax,0x00(%rsp)           # ID changed?
          popq     %rbx                      # no direct access to EFLAGS...
          je       R07
          movl     $0x00000001,%eax          # function 00000001
          cpuid
          testl    $0x04000000,%edx          # SSE2  avail?
          je       R07
          testl    $0x00800000,%ecx          # LZCNT avail?
          je       R07
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г option: allocate TST   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          negq     _DEBUG(%rip)              # debug option on?
          je       0f
          movq     $0x00010000,%rcx          # size
          call     _AloMem
          testq    %rax,%rax                 # failed if zero
          je       R02
          movq     %rax,_TST(%rip)           # store _TST
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г allocate BMM           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        0:movq     $0x2000,%rcx              # size
          call     _AloMem
          testq    %rax,%rax                 # failed if zero
          je       R02
          movq     %rax,_BMM(%rip)           # store BMM
          movq     %rax,%rbp                 # RBP = BMM
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г allocate BNR           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     $0x3000,%rcx              # size
          call     _AloMem
          testq    %rax,%rax                 # failed if zero
          je       R02
          movq     %rax,_BNR(%rip)           # store BNR
          leaq     0x20(%rsp),%rcx           # RCX = FH (unaligned)
          movq     %rax,%rsi                 # RSI = BNR
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set LDR table entries  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          кФФФФФФФФП
          Г _BMM   Гл
          РФФФФФФФФйл
            ллллллллл
          */
          movq     %rbp,       0x00(%rbp)    # EA BMM
          movl     $0x00000233,0x08(%rbp)    # r, w, stat, mem, sys
          movl     $0xFFFFFFFF,0x0C(%rbp)    # time stamp
          movl     $0x00002000,0x10(%rbp)    # allocated
          movl     $0x00002000,0x14(%rbp)    # real size
          movl     $0xFFFFFFFF,0x18(%rbp)    # field number
          movl     $0x00000100,0x1C(%rbp)    # entries
          /*
          кФФФФФФФФП
          Г _BNR   Гл
          РФФФФФФФФйл
            ллллллллл
          */
          movq     %rsi,       0x20(%rbp)    # store BNR
          movl     $0x00000223,0x28(%rbp)    # r, w, stat, sys
          movl     $0xFFFFFFFF,0x2C(%rbp)    # time stamp
          movl     $0x00003000,0x30(%rbp)    # allocated
          movl     $0x00003000,0x34(%rbp)    # real size
          movl     $0xFFFFFFFE,0x38(%rbp)    # field number
          movl     $0x00000400,0x3C(%rbp)    # entries
          /*
          кФФФФФФФФП
          Г _MHSTR Гл
          РФФФФФФФФйл
            ллллллллл
          */
          movl     $0x00000223,0x48(%rbp)    # r, w, stat, sys
          movl     $0xFFFFFFFF,0x4C(%rbp)    # time stamp
          movl     $0xFFFFFFFC,0x58(%rbp)    # field number
          /*
          кФФФФФФФФП
          Г _BBF   Гл
          РФФФФФФФФйл
            ллллллллл
          */
          movl     $0x00000233,0x68(%rbp)    # r, w, stat, sys
          movl     $0xFFFFFFFF,0x6C(%rbp)    # time stamp
          movl     $0x00001000,0x70(%rbp)    # allocated
          movl     $0x00001000,0x74(%rbp)    # real size
          movl     $0xFFFFFFC1,0x78(%rbp)    # field number
          movl     $0x00000001,0x7C(%rbp)    # entries
          /*
          кФФФФФФФФП
          Г _LDF   Гл
          РФФФФФФФФйл
            ллллллллл
          */
          negl     _USE_LDF(%rip)
          je       1f
          movl     $0x00000223,0x88(%rbp)    # r, w, stat, sys
          movl     $0xFFFFFFFF,0x8C(%rbp)    # time stamp
          movl     $0x00001000,0x90(%rbp)    # allocated
          movl     $0x00000500,0x94(%rbp)    # real size = 0x0100 + 0x0400
          movl     $0xFFFFFFF6,0x98(%rbp)    # field number
          movl     $0x00000100,0x9C(%rbp)    # entries
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set FH structure       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        1:movq     $0x00,  0x08(%rcx)        # fh.Fsize = 0
          movq     %rsi,   0x10(%rcx)        # fh.Mbase = BNR
          movq     $0x00,  0x18(%rcx)        # fh.Moffs = 0
          movq     $0x0100,0x20(%rcx)        # fh.Foffs = 0x0100
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г load num.dat           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          xorq     %rdx,%rdx                 # entire file
          movq     $0x02,%r8                 # open if exists
          leaq     LC01(%rip),%r9            # num.dat
          call     _Fopen
          testl    %eax,%eax
          jne      R1E                       # ў fatal: terminate ў
          movl     $0x1000,%edx              # byte to read
          call     _Fread
          movl     %eax,%ebx
          call     _Fclose
          movl     %ebx,%eax
          testl    %ebx,%ebx
          jne      R1E                       # ў fatal: terminate ў
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г load cvt.dat           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     $0x1000,0x18(%rcx)        # fh.Moffs = 1000
          xorq     %rdx,%rdx                 # entire file
          leaq     LC02(%rip),%r9            # cvt.dat
          call     _Fopen
          testl    %eax,%eax
          jne      R1E                       # ў fatal: terminate ў
          movq     $0x0800,%rdx              # 2048 byte
          call     _Fread
          movl     %eax,%ebx                 # close first!
          call     _Fclose
          xorl     %edx,%edx                 # entire file
          testl    %ebx,%ebx
          jne      R1E                       # ў fatal: terminate ў
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г load str.dat           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     %rdx,0x18(%rcx)           # fh.Moffs = 0
          movq     %rdx,0x20(%rcx)           # fh.Foffs = 0
          leaq     LC03(%rip),%r9            # str.dat
          call     _Fopen
          movl     0x08(%rcx),%edi           # RDI = file size
          testl    %eax,%eax
          jne      R1E                       # ў fatal: terminate ў
          movl     %edi,0x54(%rbp)           # LDT: file size BST
          addl     $0x00000FFF,%edi          # expand to next page
          andl     $0xFFFFF000,%edi          # fit to page size
          movq     %rcx,%rdx                 # temp store FH
          movl     %edi,0x50(%rbp)           # LDT: block size BST
          movl     %edi,%ecx                 # required block size
          call     _AloMem
          testq    %rax,%rax
          je       2f
          movq     %rdx,%rcx                 # restore FH
          movq     %rax,%rbx                 # RBX= EA SystemStrings
          movq     %rax,0x10(%rcx)           # EA SystemStrings
          movq     %rax,_BST(%rip)           # store _BST
          xorq     %rdx,%rdx                 # entire file
          call     _Fread
          movl     %eax,%edi                 # should be zero...
        2:call     _Fclose
          movq     %rcx,%rdx                 # temp store FH
          testl    %edi,%edi
          jne      R1E                       # ў fatal: terminate ў
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г allocate FDacc buffer  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movl     0x3C(%rbx),%edi           # EDI = entries BST
          movl     $0x1000,%ecx
          call     _AloMem
          testq    %rax,%rax
          je       R1E                       # ў fatal: terminate ў
          movq     %rax,_BBF(%rip)           # store _BBF
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г update LDR table       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     %rbx,0x40(%rbp)           # LDT: EA BST
          movl     %edi,0x5C(%rbp)           # LDT: entries BST
          movq     %rax,0x60(%rbp)           # LDT: EA BBF
          xorq     %rax,%rax                 # RAX = 0
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г option: load LFL       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          negl     _USE_LDF
          je       4f
          movl     $0x1000,%ecx              # initial size = 1088 byte
          call     _AloMem
          testq    %rax,%rax
          je       R1E                       # ў fatal: terminate ў
          pxor     %xmm0,%xmm0
          pxor     %xmm1,%xmm1
          pxor     %xmm2,%xmm2
          pxor     %xmm3,%xmm3
          movq     %rax,%rdi                 # RDI = EA LFL
          movq     %rax,_LDF(%rip)           # store _LFL
          movq     %rax,0x80(%rbp)           # LDT:  EA LFL
          movl     $0x40,%ecx                # RCX = clr_cnt
        3:movntdq  %xmm0,0x00(%rax)          # clear block
          movntdq  %xmm1,0x10(%rax)
          movntdq  %xmm2,0x20(%rax)
          movntdq  %xmm3,0x30(%rax)
          addq     $0x40,%rax
          decl     %ecx
          jne      3b
          leaq     0x80(%rbp),%rax           # RAX = MH LFL
          movl     $0x004C464C,0x04(%rdi)    # LFL
          movl     $0x00010000,0x20(%rdi)    # block size
          movl     $0x00000001,0x24(%rdi)    # type count
          movl     $0xFFFFFFF6,0x2C(%rdi)    # field number
          movl     $0x00000223,0x30(%rdi)    # flags
          movl     $0x00000500,0x34(%rdi)    # field size
          movl     $0x00000100,0x38(%rdi)    # max. size
          movl     $0x00000100,0x3C(%rdi)    #      entries
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set global variables   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        4:addq     $0x40,%rbp                # RBP = MHSTR
          movq     $0x01,_LDR_AVAIL(%rip)    # loader present
          movq     %rsi,_GVAR(%rip)          # GVAR (BNR defined as DD *)
          movq     %rax,_LDF(%rip)           # MH loader filelist
          movq     %rbp,_MHSTR(%rip)         # MH SystemStrings
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г integrated: DRIVES()   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     _BBF(%rip),%rdi           # RDI = address string
          call     _GetLogicalDrives
          movl     %eax,DRVMAP(%rsi)         # store DRVMAP[BNR]
          movl     $0x0200,%ecx              # size
          movq     %rdi,%rdx                 # address path
          call     *__imp__GetCurrentDirectoryA(%rip)
          movzb     0x00(%rdi),%ebx          # RBX = drive letter
          movq     %rbp,%rcx                 # MHSTR
          movl     $0x01,%edx                # entry    01
          xorq     %r8,%r8                   # subfield 00
          movl     $0x02,%r9d                # FDA_WRITE
          movq     %rdi,0x20(%rsp)           # address full path
          subl     $0x40,%ebx                # RBX = drive number
          call     _FDacc
          addq     $0x03,%rdi                # EDI = EA mutilated path
          andl     $0x1F,%ebx                # EBX = upper case...
          incl     %edx                      # entry    02
          movq     %rdi,0x20(%rsp)           # address full path
          movl     %ebx,CURDRV(%rsi)         # store CURDRV[BNR]
          call     _FDacc
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г integrated: ScnInit()  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     $0x30,%rcx                # SPI_GETWORKAREA
          xorq     %rdx,%rdx                 # NULL
          leaq     0x20(%rsp),%r8            # EA RECT
          xorq     %r9,%r9                   # NULL
          call     *__imp__SystemParametersInfoA(%rip)
          movl     0x20(%rsp),%eax           # xLeft
          movl     0x24(%rsp),%ebx           # yTop
          movl     0x28(%rsp),%ecx           # xRight
          movl     0x2C(%rsp),%edx           # yBottom
          movq     RIS_CX(%esi),%r8          # R08 = Px,Py
          movq     RIS_CW(%esi),%r9          # R09 = Pw,Ph
          subl     %eax,%ecx                 # ECX = width
          subl     %ebx,%edx                 # EDX = height
          movq     %rcx,SCRN_W(%esi)         # STV_SCREEN_W
          movq     %rdx,SCRN_H(%esi)         # STV_SCREEN_H
          pxor     %xmm0,%xmm0               # X00 = 0
          shlq     $0x20,%rdx                # RDX = hhhh0000
          movq     $0x000003E8000003E8,%rax  # RAX = default Px,Py
          movq     $0x00001F4000001F40,%rbx  # RDX = default Pw,Ph
          addq     %rcx,%rdx                 # RDX = hhhhwwww
          testq    %r8, %r8                  # Px,Py = 0?
          cmove    %rax,%r8                  # use default
          testq    %r9, %r9                  # Pw,Ph = 0?
          cmove    %rbx,%r9                  # use default
          movq     %rdx,SCN_W0(%rsi)         # write pattern
          movq     %rdx,SCN_W1(%rsi)
          movq     %r8,RIS_CX(%rsi)
          movq     %r9,RIS_CW(%rsi)
          movdqa   %xmm0,PERC_X(%rsi)        # clear RIS area
          movdqa   %xmm0,PIXL_X(%rsi)
          xorl     %eax,%eax
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г LDreq   allocate memory, load file/field                Г   LD structure           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФХФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   address of a LD structure                       Г   00   VOID *   MemEA    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФД   08   DQ       MemSz    Гл
          Г<- RAX   0000 0000   ERR_NO_ERROR                        Г   10   DD       FldNr    Гл
          Г         0000 0004   ERR_LDR_BUSY                        Г   14   DD       LdCtl    Гл
          Г         0000 0017   ERR_LDR_CORRUPT                     Г   18   DQ       LDtea    Гл
          Г         0000 001A   ERR_LDR_OUT_OF_MH                   Г   20   VOID *   FileN    Гл
          Г         0000 001B   ERR_LDR_ALLOC                       Г   28   DQ       Moffs    Гл
          Г         0000 001C   ERR_LDR_FORBIDDEN                   Г   30   DQ       Foffs    Гл
          Г         0000 0020   ERR_FILE_OPEN                       Г   38   DQ       AmtBy    Гл
          Г         0000 0022   ERR_FILE_READ                       Г   40   VOID *   FileH    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФСФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _LDreq
          .def     _LDreq; .scl 2; .type 32; .endef
   _LDreq:subq     $0xB8,%rsp
          nop
          nop
          movq     %rbp,0x78(%rsp)
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movq     _BMM,%rdi                 # RDI = BMM
          movq     _BNR,%rsi                 # RSI = BNR
          movq     %rcx,%rbp                 # RBP = LD
          addq     $0x80,%rdi                # RDI = 80[BMM]
          movl     0x10(%rbp),%ebx           # RBX = LD.FldNr
          movl     $0xFC,%ecx                # RCX = loop counter
          movq     %rdi,%rdx                 # RDX = 80[BMM]
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г check flags            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          testl    $0x0A,SYS_FL(%rsi)        # busy or terminated?
          jne      R04
          xorl     %eax,%eax                 # RAX = 0
          orb      $0x02,SYS_FL(%rsi)        # set LDR_BUSY
          testl    %ebx,%ebx                 # field number = 0?
          je       R1D
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г already loaded?        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        0:cmpl     %ebx,0x18(%rdx)
          je       1f
          addq     $0x20,%rdx                # next MemHandle
          decl     %ecx
          jne      0b
          jmp      2f                        # copy LDT to LD:
        1:movl     $0x1F,%eax                # ў ERR_INSTANCE ў
          movq     0x00(%rdx),%r8            # R08 = MemEA
          movzwl   0x08(%rdx),%ecx           # ECX = LdCtl
          movl     0x10(%rdx),%r9d           # R09 = MemSz
          incw     0x0A(%rdx)                # INSTANCE++
          je       9f
          movq     %r8, 0x00(%rbp)           # LD: MemEA
          movq     %r9, 0x08(%rbp)           # LD: MemSz
          movl     %ecx,0x14(%rbp)           # LD: LdCtl
          movq     %rdx,0x18(%rbp)           # LD: MemHd
          jmp      XITZ
        9:decw     0x0A(%rdx)                # restore
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г search free handle     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        2:movl     $0xFC,%ecx                # ECX = loop counter
        3:cmpq     %rax,0x00(%rdi)           # free?
          je       4f
          addq     $0x20,%rdi                # next handle
          decl     %ecx
          jne      3b
          jmp      R1A
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г prepare                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        4:movq     0x08(%rbp),%rax           # RAX = MemSz
          movl     0x10(%rbp),%ebx           # RBX = FldNr
          movzwl   0x14(%rbp),%ecx           # RCX = LdCtl
          addl     $0x0FFF,%eax
          andl     $0xFFFFF000,%eax
          movl     %ecx,0x08(%rdi)           # LDT: flags
          movl     %eax,0x10(%rdi)           # LDT: MemSz
          movl     %eax,0x14(%rdi)           # LDT: real size
          movl     %ebx,0x18(%rdi)           # LDT: FldNr
          movq     %rax,0x08(%rbp)           # LD : MemSz
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г file to load?          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          testl    $0x10,%ecx                # LDR_MEM?
          jne      7f
          testl    $0x80,%ecx                # LDR_NO_FIELD?
          jne      5f
          movq     %rbx,%rcx                 # field number
          leaq     0x50(%rsp),%rdx           # RDX = EA name
          call     _FnDat
          movq     %rdx,%rbx                 # RBX = EA name
          jmp      6f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г add filename to LFL    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        5:movq     %rdi,%rdx                 # RDX = MemHandle
          movq     0x20(%rbp),%rbx           # RBX = EA name
          testl    $0x40,%ecx                # LDR_LFLIST?
          je       6f
          andq     $0xFFFF,%rdx
          negl     _USE_LDF(%rip)            # option avail?
          je       6f
          movq     _LDF(%rip),%rcx           # MH
          shrl     $0x05,%edx                # entry
          xorq     %r8,%r8                   # subfield
          movq     $0x02,%r9                 # FDA_WRITE
          movq     %rbx,0x20(%rsp)           # EA name
          call     _FDacc
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г try to open file       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        6:leaq     0x20(%rsp),%rcx           # FH
          xorl     %edx,%edx                 # entire file
          movl     $0x02,%r8d                # open if exists
          movq     %rbx,%r9                  # R09 = EA name
          call     _Fopen                    # OPEN FILE
          testl    %eax,%eax
          jne      L00                       # ў ERR_FILE_OPEN ў
          movl     0x28(%rsp),%eax           # RBX = filesize
          movl     %eax,0x14(%rdi)           # LDT: real size
          addl     $0x1FFF,%eax
          andl     $0xFFFFF000,%eax
          movl     %eax,0x10(%rdi)           # LDT: block size
          movq     %rax,0x08(%rbp)           # LD : MemSz
          movl     %eax,%r9d                 # R09 = block size
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г allocate memory        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        7:movl     %eax,%ecx                 # ECX = block size
          call     _AloMem
          movq     %rax,%rbx                 # RBX = MemEA
          leaq     0x20(%rsp),%rcx           # RCX = FH
          testq    %rax,%rax                 # ERR_LDR_ALLOC?
          je       L01
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set LDT + LD params    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          xorl     %eax,%eax
          movq     %rbx,0x00(%rbp)           # LD : MemEA
          movl     %edi,0x18(%rbp)           # LD : MMoff
          movq     %rbx,0x00(%rdi)           # LDT: block EA
          decl     %eax                      # EAX = infinite
          movl     $0x01,0x1C(%rdi)          # LDT: entries = 1 
          testb    $0x20,0x14(%rbp)          # LDR_STATIC?
          jne      8f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г create time stamp      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          .p2align 4,,15
          call     _GetTime
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г copy file to memory    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        8:movl     %eax,0x0C(%rdi)           # LDT: TimeStamp
          testb    $0x10,0x14(%rbp)          # LDR_MEM?
          jne      XITZ
          movq     0x28(%rbp),%rax           # RAX = Moffs
          movq     0x30(%rbp),%r8            # R08 = Foffs
          xorq     %rdx,%rdx                 # RDX = entire file
          movq     %rbx,0x30(%rsp)           # FH : Mbase
          movq     %rax,0x38(%rsp)           # FH : Moffs
          movq     %r8,0x40(%rsp)            # FH : Foffs
          call     _Fread
          testq    %rax,%rax                 # read error?
          jne      L02
          testb    $0x08,0x0C(%rbp)          # LDR_LEAVE_OPEN?
          jne      9f
          call     _Fclose                   # CLOSE FILE
        9:movq     0x40(%rbp),%rax           # RAX = LD.FileH
          movdqa   0x20(%rsp),%xmm0          # XM0 = WINfh + Fsize
          testb    $0x08,0x14(%rbp)          # LDR_LEAVE_OPEN?
          je       0f
          testl    %eax,%eax                 # FH passed?
          je       0f
          movdqa   %xmm0,0x00(%rax)          # FH : WINfh + Fsize
          movq     %rbx,0x10(%rax)           # FH : Mbase
        0:testb    $0x80,0x14(%rbp)          # LDR_NO_FIELD?
          jne      XITZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г validate field header  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movl     0x14(%rdi),%eax           # EAX = real size
          movw     0x30(%rbx),%cx            #  CX = Header status
          movl     0x10(%rbp),%edx           # EDX = field number
          movl     0x3C(%rbx),%r8d           # EDX = max. amount
          cmpl     $0x00,0x00(%rbx)          # Header 1st DD = 0?
          jne      1f
          cmpl     0x2C(%rbx),%edx           # Header field number = LD.FldNr?
          jne      1f
          cmpl     0x34(%rbx),%eax           # Header size = FH.Fsize?
          jne      1f
          orw      %cx,0x08(%rdi)            # override LDT flags
          movl     %r8d,0x1C(%rdi)           # LDT: max. entries
          jmp      XITZ
          .p2align 4,,15
        1:movq     %rbx,%rcx                 # RCX = EA
          movq     %r9,%rdx                  # RDX = size
          call     _FreMem
          movl     $0x17,%eax                # ў ERR_LDR_CORRUPT ў
      L00:pxor     %xmm0,%xmm0
          movq     %xmm0,0x00(%rbp)          # clear LD
          movq     %xmm0,0x18(%rbp)
          movdqa   %xmm0,0x00(%rdi)          # clear LDT
          movdqa   %xmm0,0x10(%rdi)
          jmp      XITC
          .p2align 4,,15
      L01:call     _Fclose                   # close opened file
          movl     $0x1B,%eax                # ў ERR_LDR_ALLOC ў
          jmp      L00
          .p2align 4,,15
      L02:movq     %rbx,%rcx                 # EA
          movq     %r9,%rdx                  # size
          call     _FreMem
          call     _Fclose                   # close opened file
          movl     $0x16,%eax                # ў ERR_LDR_FILE  ў
          jmp      L00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г LDchg   change allocated size                                                      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   MemHandle (MMoff in LD structure)                                          Гл
          Г   RDX   new size  (multiple of 4096)                                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   0000 0000  ok                                                              Гл
          Г         0000 xxxx  ERROR DosAllocMem()                                             Гл
          Г         0000 0004  MM BUSY                                                         Гл
          Г         0000 0013  INVALID MemHandle                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _LDchg
          .def     _LDchg; .scl 2; .type 32; .endef
   _LDchg:subq     $0xB8,%rsp
          movq     _BMM,%rax                 # RAX = BMM
          nop
          movq     %rbp,0x78(%rsp)
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          addl     $0x0FFF,%edx              # RDX = match to page
          movq     %rcx,%rbp                 # RBP = MH
          movq     _BNR,%rsi                 # RSI = BNR
          andl     $0xFFFFF000,%edx          # RDX = matching size
          movq     0x00(%rbp),%r8            # R08 = old EA
          movl     0x10(%rbp),%r9d           # R09 = old size
          subq     %rax,%rcx                 # validate MH
          js       R13
          cmpq     $0x1FE0,%rcx
          ja       R13
          testq    %r8,%r8                   # EA valid?
          je       R14
          testl    $0x02,SYS_FL(%rsi)        # LDR BUSY?
          jne      R04
          orl      $0x02,SYS_FL(%rsi)        # set LDR_BUSY
          movq     %rdx,%rcx                 # new size (pages)
          call    _AloMem
          testl     %eax,%eax
          je       R12
          cmpl     %ecx,%r9d                 # old size > new size?
          cmovb    %r9d,%ecx                 # copy old size!
          movq     %r8,%rbx                  # EBX = old EA
          movq     %rax,0x00(%rbp)           # write new EA
          movl     %edx,0x10(%rbp)           #       new size
          shrl     $0x06,%ecx                # four paragraphs!
        0:movdqa   0x00(%rbx),%xmm0          # copy old mem
          movdqa   0x10(%rbx),%xmm1
          movdqa   0x20(%rbx),%xmm2
          movdqa   0x30(%rbx),%xmm3
          movntdq  %xmm0,0x00(%rax)
          movntdq  %xmm1,0x10(%rax)
          movntdq  %xmm2,0x20(%rax)
          movntdq  %xmm3,0x30(%rax)
          addq     $0x40,%rbx
          addq     $0x40,%rax
          decl     %ecx
          jne      0b
          movq     %r8,%rcx                  # old EA
          movq     %r9,%rdx                  #     size
          call     _FreMem
          jmp      XITZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г LDfre   free allocated memory                                                      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   MMoff   MemHandle                                                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   0000 0000   ERR_NO_ERROR                                                   Гл
          Г         0000 0004   ERR_SYS_LDR_BUSY                                               Гл
          Г         0000 0013   ERR_LDR_MH                                                     Гл
          Г         0000 0014   ERR_LDR_OS2MH                                                  Гл
          Г         0000 00xx   RC from calls                                                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _LDfre
          .def     _LDfre; .scl 2; .type 32; .endef
   _LDfre:subq     $0xB8,%rsp
          movq     %rcx,%rax                 # RAX = MemHandle
          nop
          movq     %rbp,0x78(%rsp)
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movq     _BNR(%rip),%rsi           # RSI = BNR
          movq     %rcx,%rdi                 # RDI = MemHandle
          subq     _BMM(%rip),%rax           # MH < 0000[BMM]?
          js       R13
          cmpq     $0x1FE0,%rax              # MH > 1FE0[BMM]?
          ja       R13
          movl     0x08(%rcx),%r8d           # R08 = flags
          movl     SYS_FL(%rsi),%eax         # EAX = SYS_FL
          movq     0x00(%rcx),%rbp           # RBP = EA block
          movl     %r8d,%r9d                 # R09 = flags
          xorl     %ebx,%ebx                 # RBX = 0
          shrq     $0x05,%rax                # RAX = entry number
          andl     $0xFFFF,%r8d              # R08 = flags, only
          shrl     $0x10,%r9d                # R09 = instance count
          testq    %rbp,%rbp                 # EA block = 0?
          je       R14
          testl    $0x02,%eax                # LDR_BUSY?
          jne      R04
          orl      $0x02,SYS_FL(%rsi)        # set LDR_BUSY
          decl     %r9d                      # INSTANCE--
          jns      XITZ
          testl    $0x02,%r8d                # read only?
          je       3f
          testl    $0x04,%r8d                # changed?
          je       3f
          testl    $0x40,%r8d                # LFL entry?
          je       0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г LFL handling           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          negl     _USE_LDF
          je       3f
          movq     _LDF,%rcx                 # LDF
          movq     %rax,%rdx                 # entry number
          xorq     %r8,%r8                   # subfield 0
          movq     $0x07,%r9                 # FDA_ADDRESS
          call     _FDacc
          movq     %rax,%r9
          jmp      2f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г save changed content   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        0:testl    $0x4890,%r8d              # corrupted, dirty, file, memory?
          jne      3f
          movl     0x18(%rdi),%ecx           # field number
          leaq     0x50(%rsp),%rdx           # EA filename
          call     _FnDat
          movq     %rdx,%r9                  # R09 = filename
        2:movq     %rbp,0x30(%rsp)           # fh.Mbase
          movq     %rbx,0x38(%rsp)           # fh.Moffs = 0
          movq     %rbx,0x40(%rsp)           # fh.Foffs = 0
          movl     0x14(%rdi),%ebx           # RBX = real size (BMM)
          leaq     0x20(%rsp),%rcx           # FH
          xorq     %rdx,%rdx                 # entire file
          movq     $0x02,%r8                 # open if exist
          call     _Fopen
          testl    %eax,%eax
          jne      XITC
          movq     %rbx,0x28(%rsp)           # fh.Fsize
          movq     %rbx,%rdx                 # size
          call    _Fwrite
          movl     %eax,%ebx                 # RBX = rc Fwrite()
          call    _Fclose
          testl    %ebx,%ebx
          jne      3f                        # if write failed:
          movl     %ebx,%eax                 # do not clear table entry
          jmp      XITC                      # do not free memory
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г free mem, clear MH     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        3:movq     %rbp,%rcx                 # RCX = EA
          movl     0x10(%rdi),%edx           # RDX = size (BMM)
          call     _FreMem
          pxor     %xmm0,%xmm0               # XM0 = 0
          movdqa   %xmm0,0x00(%rdi)          # clear MemHandle
          movdqa   %xmm0,0x10(%rdi)
          jmp      XITZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г LDexit  terminate Loader                                                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г->       nothing                                                                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   always zero                                                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _LDexit
          .def     _LDexit; .scl 2; .type 32; .endef
  _LDexit:subq     $0xB8,%rsp
          movq     _BMM,%rax                 # RAX = BMM
          nop
          movq     %rbp,0x78(%rsp)
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9,0x98(%rsp)
          movq     %r8,0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          xorl     %ebx,%ebx                 # RBX = 0
          leaq     0x1FE0(%rax),%rcx         # RCX = last MemHandle
          movl     $0xFE,%edx                # RDX = loop counter
          movq     _BNR,%rsi                 # RSI = BNR
          movq     %rax,%rbp                 # RBP = BMM
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г free open MemHandles   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        0:cmpq     %rbx,0x00(%rcx)           # MH free?
          je       1f
          movw     $0x00,0x0A(%rcx)          # INSTANCE = 1 (force free)
          call     _LDfre
        1:subq     $0x20,%rcx
          decl     %edx
          jne      0b
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г save system numerics   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     %rbx,0x28(%rsp)           # fh.Fsize
          movq     %rsi,0x30(%rsp)           # fh.Mbase
          movq     %rbx,0x38(%rsp)           # fh.Moffs
          movq     $0x0100,0x40(%rsp)        # fh.Foffs
          leaq     0x20(%rsp),%rcx           # FH
          movq     $0x02,%r8                 # open or create
          movq     $LC01,%r9                 # num.dat
          call     _Fopen
          testl    %eax,%eax
          jne      3f
          movq     $0x1100,0x28(%rsp)        # fh.Fsize
          movq     $0x1000,%rdx
          call     _Fwrite
          movq     $0x1100,%rdx              # size
          call     _Fsize
          call     _Fclose
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г free BNR and BMM       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        3:movq     %rsi,%rcx                 # BNR
          movq     $0x3000,%rdx
          call     _FreMem
          movq     %rbp,%rcx                 # BMM
          movq     $0x2000,%rdx
          call     _FreMem
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г clear globals          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     %rbx,_BBF(%rip)           # clear globals
          movq     %rbx,_BST(%rip)
          movq     %rbx,_BNR(%rip)
          movq     %rbx,_BMM(%rip)
          movq     %rbx,_GVAR(%rip)
          movq     %rbx,_LDR_AVAIL(%rip)
          jmp      XIT8
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                                   C H E C K E R                                    Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г LDchk   CHECKER-THREAD MAIN FUNCTION                                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   CHK_REMOVE - time in HMSh                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   always zero                                                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _LDchk
          .def     _LDchk; .scl 2; .type 32; .endef
   _LDchk:subq     $0xB8,%rsp
          movq     _BNR(%rip),%rax           # RAX = BNR
          nop
          movq     %rbp,0x78(%rsp)
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9,0x98(%rsp)
          movq     %r8,0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movq     %rcx,%rbx                 # RBX = CHK_REMOVE
          movq     %rax,%rsi                 # RSI = BNR
          movq     _BMM(%rip),%rdi           # RDI = BMM
          movl     $0x7E,%ebp                # EBP = loop_count
          movq     HW_MHM(%rax),%rcx         # RCX = HW_MHM
          testl    $0x06,SYS_FL(%rsi)        # LDR BUSY?
          jne      R04
          orl      $0x06,SYS_FL(%rsi)        # set SYS_MM_BUSY, SYS_CHK_ACT
          addq     $0x80,%rdi
          testq    %rcx,%rcx                 # MH monitor running?
          je       0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г post message           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movl     $0x2000,%edx              # WM_MHM0000
          xorq     %r8,%r8                   # NULL
          xorq     %r9,%r9                   # NULL
          call     _PostM
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г calculate timestamp    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        0:call     _GetTime
          cmpl     %ebx,%eax                 # crossing 00:mm:ss:hh?
          jae      1f
          addl     $0x18000000,%eax          # 24:mm:ss:hh!
        1:movq     %rax,%rcx                 # current time
          movq     %rbx,%rdx                 # CHK_REMOVE
          call     _tDiff
          movq     %rdi,%rcx                 # RCX = MH
          movl     %eax,%ebx                 # time stamp maximum
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г free unused blocks     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        2:movq     0x00(%rcx),%rdi           # RDI = EA block 1
          movl     0x0C(%rcx),%ebp           # RBP = time stamp 1
          movq     0x20(%rcx),%r8            # R08 = EA block 2
          movl     0x2C(%rcx),%r9d           # R09 = time stamp 2
          testq    %rdi,%rdi                 # 1 allocated?
          je       3f
          cmpl     $0xFFFFFFFF,%ebp          # 1 static?
          je       3f
          cmpl     %ebp,%ebx                 # 1 time stamp expired?
          jbe      3f
          call     _LDfre
        3:addq     $0x20,%rcx                # MH 2
          testq    %r8,%r8                   # 2 allocated?
          je       4f
          cmpl     $0xFFFFFFFF,%r9d          # 2 static?
          je       4f
          cmpl     %r9d,%ebx                 # 2 time stamp expired?
          jbe      4f
          call     _LDfre
        4:addq     $0x20,%rcx                # next MHs
          decl     %ebp                      # loop_count--
          jne      2b
          jmp      XITZ
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                         C R E A T E   F I E L D   N A M E                          Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FnDat   assemble filename from field #                                             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   field number                                                               Гл
          Г   RDX   EA buffer (minmum size = 17 byte!)                                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   always zero                                                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г String is set to  ..\data\xxxxxxxx                                                 Гл
          Г               or  ..\syst\xxx.dat                                                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _FnDat
          .def     _FnDat; .scl 2; .type 32; .endef
   _FnDat:movq     %rcx,%rax
          subl     $0xFFFFFFF0,%eax
          cmpl     $0x0F,%eax
          jbe      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г ..\data\xxxxxxxx       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movl     $0x645C2E2E,0x00(%rdx)
          movl     $0x5C617461,0x04(%rdx)
          addq     $0x08,%rdx
          call     _d2str
          subq     $0x08,%rdx
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г ..\syst\xxx.dat        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        0:movl     LC00(, %rax, 4),%eax
          movl     $0x735C2E2E,0x00(%rdx)
          movl     $0x5C747379,0x04(%rdx)
          movl     %eax,0x08(%rdx)
          movl     $0x00746164,0x0C(%rdx)
          xorq     %rax,%rax
          ret
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                             M I S C E L L A N E O U S                              Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г LDclr   ERASE FIELD DATA                                                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   MemHandle                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   0000 0000  ok                                                              Гл
          Г         0000 0004  ERR_SYS_LDR_BUSY                                                Гл
          Г         0000 0013  ERR_LDR_MH                                                      Гл
          Г         0000 0014  ERR_LDR_OS2MH                                                   Гл
          Г         0000 0018  ERR_LDR_NO_FIELD                                                Гл
          Г         0000 001C  ERR_DBE_TYPE                                                    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _LDclr
          .def     _LDclr; .scl 2; .type 32; .endef
   _LDclr:subq     $0xB8,%rsp
          movq     _BMM,%rax                 # RAX = BMM
          nop
          movq     %rbp,0x78(%rsp)
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9,0x98(%rsp)
          movq     %r8,0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set registers          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     _BNR,%rsi                 # RSI = BNR
          movq     %rcx,%rdi                 # RDI = EA MemHandle
          movq     0x00(%rcx),%rbp           # RBP = EA block
          movl     0x18(%rcx),%edx           # RDX = field number in BMM
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г validate with care...  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          subq     %rax,%rcx                 # validate MH
          js       R13
          cmpq     $0x1FE0,%rcx
          ja       R13
          testq    %rbp,%rbp                 # EA block = 0?
          je       R14
          testl    $0x02,SYS_FL(%rsi)        # LDR BUSY?
          jne      R04
          cmpl     $0x00,0x00(%rbp)          # starts with 4 zeroes?
          jne      R18
          cmpl     %edx,0x2C(%rbp)           # field number at 0x2C?
          jne      R18
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г prepare                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movl     0x24(%rbp),%eax           # RAX = types
          movl     0x3C(%rbp),%edx           # RDX = entries
          orl      $0x02,SYS_FL(%rsi)        # set SYS_LDR_BUSY
          decl     %eax                      # RAX = index!
          orb      $0x08,0x09(%rdi)          # set dirty flag in BMM
          movzb    0x40(%rbp, %rax, 1),%ebx  # RBX = last type
          movl     0x60(%rbp, %rax, 4),%ecx  # RCX =      offset
          pxor     %xmm0,%xmm0
          pxor     %xmm1,%xmm1
          pxor     %xmm2,%xmm2
          pxor     %xmm3,%xmm3
          xorq     %rax,%rax                 # RAX = 0
          cmpl     $0x07,%ebx                # valid type?
          cmova    %rax,%rbx                 # invalid!
          movq     %rcx,%rax                 # RAX = last offset
          jmp      *jtclr(, %rbx, 8)         # jump table <jtclr>
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г calculate parameters   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
      cl0:andl     $0xFD,SYS_FL(%rsi)        # reset SYS_DBE_BUSY, SYS_LDR_BUSY
          orl      $0x4000,0x30(%rbp)        # set   LDR_CORRUPT (field)
          orl      $0x4000,0x08(%rdi)        #                   (BMM)
          jmp      R1C
      cl2:shll     $0x01,%edx
          jmp      cl1
      cl3:shll     $0x02,%edx
          jmp      cl1
      cl4:shll     $0x03,%edx
          jmp      cl1
      cl5:shll     $0x04,%edx
          jmp      cl1
      cl6:movl     0x20(%rbp),%edx           # RDX = block size
      cl1:leaq     0x0100(%rbp),%rbx         # RBX = EA data area
          addq     %rdx,%rax                 # RAX = offset 1st free
          addq     %rdx,%rcx                 # RCX =        1st free
          subq     $0x0100,%rax              # RAX = byte to clear
          orl      $0x04,0x08(%rdi)          # set changed flag (BMM)
          movl     %ecx,0x14(%rdi)           # write new size > (BMM)
          movl     %ecx,0x34(%rbp)           #                > (header)
          andq     $0x30,%rax                # extract odd paragraphs
          subq     $0x0100,%rcx              # RCX = byte to clear
          shrq     $0x06,%rcx                # RCX = cache lines
          shrq     $0x04,%rax                # RAX = remaining paragraphs
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г clear field            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          testl    %ecx,%ecx
          je       1f
        0:movntdq  %xmm0,0x00(%rbx)
          movntdq  %xmm1,0x10(%rbx)
          movntdq  %xmm2,0x20(%rbx)
          movntdq  %xmm3,0x30(%rbx)
          addq     $0x40,%rbx
          decl     %ecx
          jne      0b
        1:sfence
          testl    %eax,%eax
          je       3f
        2:movdqa   %xmm0,0x00(%rbx)
          addq     $0x10,%rbx
          decl     %eax
          jne      2b
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г update header + BMM    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        3:andb     $0xF7,0x09(%rdi)          # reset dirty flag in BMM
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г errors                                     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      R02:movl     $0x02,%eax                # ERR_SYS_SERIOUS
          jmp      XIT8
          .p2align 4,,15
      R04:movl     $0x04,%eax                # ERR_LDR_BUSY
          jmp      XIT8
          .p2align 4,,15
      R07:addq     $0x08,%rsp                # undo PUSHF
          xorq     %rcx,%rcx                 # title = 'Error'
          movq     $LC04,%rdx                # text  = 'CPU is too old!'
          movq     $0x40,%r8                 # flags = MB_CUACRITICAL
          call     _MBox
          movl     $0x07,%eax                # ERR_CPU_TOO_OLD
          jmp      XIT8
          .p2align 4,,15
      R12:movl     $0x12,%eax                # ERR_LDR_RESIZE
          jmp      XITC
          .p2align 4,,15
      R13:movl     $0x13,%eax                # ERR_LDR_MH
          jmp      XITC
          .p2align 4,,15
      R14:movl     $0x14,%eax                # ERR_LDR_OS2MH
          jmp      XITC
          .p2align 4,,15
      R18:movl     $0x18,%eax                # ERR_LDR_NO_FIELD
          jmp      XITC
          .p2align 4,,15
      R1A:movl     $0x1A,%eax                # ERR_LDR_OUT_OF_MH
          jmp      XITC
          .p2align 4,,15
      R1C:movl     $0x1C,%eax                # ERR_LDR_FORBIDDEN
           jmp     XITC
          .p2align 4,,15
      R1D:movl     $0x1D,%eax                # ERR_LDR_ZERO
          jmp      XITC
          .p2align 4,,15
      R1E:movl     $0x1E,%eax                # ERR_LDR_INIT
          jmp      XIT8
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г common exit                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     XITZ:xorq     %rax,%rax                 # ERR_NO_ERROR
     XITC:andl     $0xFFF9,SYS_FL(%rsi)      # reset CHK_ACT / LDR_BUSY
     XIT8:movq     0x78(%rsp),%rbp
          movq     0x80(%rsp),%rsi
          movq     0x88(%rsp),%rdi
          movq     0x90(%rsp),%rbx
          movq     0x98(%rsp),%r9
          movq     0xA0(%rsp),%r8
          movq     0xA8(%rsp),%rdx           # FnDat
          movq     0xB0(%rsp),%rcx
          addq     $0xB8,%rsp
          ret
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                       m e m H a n d l e   F U N C T I O N S                        Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г getMH   get MemHandle from field #                                                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   field number                                                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   0000 0000 0000 0000   not found                                            Гл
          Г         ???? ???? ???? ????   MemHandle                                            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _getMH
          .def     _getMH; .scl 2; .type 32; .endef
   _getMH:subq     $0x38,%rsp
          movl     _BMM,%eax
          nop
          movq     %rdx,0x30(%rsp)
          movl     $0x0100,%edx              # RDX = loop counter
        0:cmpl     %ecx,0x18(%rax)
          je       1f
          addq     $0x20,%rax
          decl     %edx
          jne      0b
          xorq     %rax,%rax
        1:movq     0x30(%rsp),%rdx
          addq     $0x38,%rsp
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г LDupd   update LD structure                                                        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1  address LD structure                                                       Гл
          Г   PAR2  MemHandle                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   0000 0000   okay                                                           Гл
          Г         0000 0013   ERR_LDR_MH                                                     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _LDupd
          .def     _LDupd; .scl 2; .type 32; .endef
   _LDupd:subq     $0x38,%rsp
          movq     %rdx,%rax
          nop
          movq     %rbx,0x20(%esp)
          movq     %rdi,0x28(%esp)
          movq     %rsi,0x30(%esp)
          subq     _BMM,%rax                 # validate MH
          js       1f
          cmpl     $0x1FE0,%eax
          ja       1f
          movq     0x00(%rdx),%rbx           # RBX = EA block
          movl     0x18(%rdx),%edi           # RDI = field number
          movzwl   0x08(%rdx),%esi           # RSI = flags
          movq     %rbx,0x00(%rcx)           # LD.MemEA
          movl     %edi,0x10(%rcx)           # LD.FldNr
          movl     %esi,0x14(%rcx)           # LD.LdCtl
          xorq     %rax,%rax
        0:movq     0x20(%esp),%rbx
          movq     0x28(%esp),%rdi
          movq     0x30(%esp),%rsi
          addq     $0x38,%rsp
          ret
        1:movq     $0x13,%rax                # ERR_LDR_MH
          jmp      0b
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г LDunc   reset CHANGED flag                                                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1  MemHandle                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   always zero                                                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _LDunc
          .def     _LDunc; .scl 2; .type 32; .endef
   _LDunc:andb     $0xFB,0x08(%rcx)
          xorq     %rax,%rax
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г LDstc   set CHANGED flag                                                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1  MemHandle                                                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   always zero                                                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _LDstc
          .def     _LDstc; .scl 2; .type 32; .endef
   _LDstc:orb      $0x04,0x08(%rcx)
          xorq     %rax,%rax
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г LDsts   set CHANGED flag and real size                                             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   MemHandle                                                                  Гл
          Г   RDX   new size                                                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   always zero                                                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _LDsts
          .def     _LDsts; .scl 2; .type 32; .endef
   _LDsts:orb      $0x04,0x08(%rcx)
          movq     %rdx,0x14(%rcx)
          xorq     %rax,%rax
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MHxcg   exchange two MemHandles                                                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   MemHandle 1                                                                Гл
          Г   RDX   MemHandle 2                                                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   always zero                                                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _MHxcg
          .def     _MHxch; .scl 2; .type 32; .endef
   _MHxcg:movdqa   0x00(%rcx),%xmm0
          movdqa   0x10(%rcx),%xmm1
          movdqa   0x00(%rdx),%xmm2
          movdqa   0x10(%rdx),%xmm3
          xorq     %rax,%rax
          movdqa   %xmm2,0x00(%rcx)
          movdqa   %xmm3,0x10(%rcx)
          movdqa   %xmm0,0x00(%rdx)
          movdqa   %xmm1,0x10(%rdx)
          ret
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BMM,       8, 3
          .comm    _BNR,       8, 3
          .comm    _BST,       8, 3
          .comm    _BBF,       8, 3
          .comm    _TST,       8, 3
          .comm    _LDF,       8, 3
          .comm    _GVAR,      8, 3
          .comm    _MHSTR,     8, 3
          .comm    _LDR_AVAIL, 8, 3
          .comm    _DEBUG,     8, 3
          .comm    _USE_LDF,   8, 3
