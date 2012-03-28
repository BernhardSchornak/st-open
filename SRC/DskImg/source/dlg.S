          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                              C o m m o n   D i a l o g s   (C) ST-Open 2012
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
          .include "dim.h"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            jump tables
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section .rdata, "dr"
          .p2align 4,,15
      jt0:.quad    L01                                   # 1101 PBtn abort
          .quad    KLD                                   # 1102      select
          .quad    L02                                   # 1103      help
      jt1:.quad    KLD                                   # 1181 PBtn abort
          .quad    L12                                   # 1182      write
          .quad    L13                                   # 1183      help
      jt2:.quad    L31                                   # 11C1 PBtn add files
          .quad    L32                                   # 11C2 LBox files
          .quad    L33                                   # 11C3 PBtn select all
          .quad    L34                                   # 11C4      deselect all
          .quad    L35                                   # 11C5      remove selected
          .quad    L37                                   # 11C6      dismiss
          .quad    L36                                   # 11C7      glue
          .quad    L38                                   # 11C8      help
          .quad    L39                                   # 11C9      dummy
     LC00:.ascii   "*.o"
          .byte    0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          .p2align 4,,15
          .globl   _SelTgt
          .def     _SelTgt; .scl 2; .type 32; .endef
  _SelTgt:movq     $sltgt,           %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _WrImg
          .def     _WrImg; .scl 2; .type 32; .endef
   _WrImg:movq     $wrimg,           %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _STglue
          .def     _STglue; .scl 2; .type 32; .endef
  _STglue:movq     $stglue,          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common distributor
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0xF8,            %rsp
          movq     %r15,             0x88(%rsp)
          movq     %r14,             0x90(%rsp)
          movq     %r13,             0x98(%rsp)
          movq     %r12,             0xA0(%rsp)
          movq     %r11,             0xA8(%rsp)
          movq     %r10,             0xB0(%rsp)
          movq     %rbp,             0xB8(%rsp)
          movq     %rsi,             0xC0(%rsp)
          movq     %rdi,             0xC8(%rsp)
          movq     %rbx,             0xD0(%rsp)
          movq     %r9,              0xD8(%rsp)
          movq     %r8,              0xE0(%rsp)
          movq     %rdx,             0xE8(%rsp)
          movq     %rcx,             0xF0(%rsp)
          movq     _BNR(%rip),       %r15                # R15 = BNR
          movl     %r8d,             %ebx                # RBX = WPARAM
          movq     %rcx,             %r14                # R14 = HWND
          andl     $0xFFFF,          %ebx                # RBX = W0[WPARAM]
          shrl     $0x10,            %r8d                # R08 = W1[WPARAM]
          jmp      *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                                 A B O U T
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _about
          .def     _about; .scl 2; .type 32; .endef
   _about:subq     $0xF8,        %rsp
          xorl     %eax,         %eax
          nop
          movq     %r9,              0xD8(%rsp)
          movq     %r8,              0xE0(%rsp)
          movq     %rdx,             0xE8(%rsp)
          movq     %rcx,             0xF0(%rsp)
          subl     $0x0111,          %edx                # WM_COMMAND?
          je       0f
          incl     %edx                                  # WM_INITDIALOG?
          jne      XT4
          movl     $0x60,            %edx                # RDX = title
          movq     $0x61,            %r8                 # R08 = 1st
          movq     $0x63,            %r9                 # R09 = last
          call     _DLGtxt
          call     _CtrWn
          movl     $0x01,            %eax
          jmp      XT4
          .p2align 4,,15
        0:addq     $0xF8,            %rsp                # remove stack frame
          addl     $0x0111,          %edx                # restore
          jmp      _KillDlg
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                        S E L E C T    T A R G E T
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
    sltgt:subl     $0x0111,          %edx                # WM_COMMAND?
          je       L00
          incl     %edx                                  # WM_INITDLG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     EA_DRP(%r15),     %r13                # R13 = EA DRP
          leaq     DTYPES(%r15),     %r11                # R11 = EA types
          movl     $0x70,            %edx                # RDX = title
          movq     $0x71,            %r8                 # R08 = 1st
          movq     $0x7A,            %r9                 # R09 = last
          call     _DLGtxt
          addq     $0x0100,          %r13
          call     _CtrWn
          leaq     BUFFER(%r15),     %rdx                # RDX = 00[buf]
          movl     DRV_CT(%r15),     %r12d               # R12 = loop_cnt
          .p2align 4,,15
        0:movl     0x00(%r13),       %ecx                # RCX = cylinders
          movl     0x08(%r13),       %ebx                # RBX = type
          movl     0x0C(%r13),       %r10d               # R10 = heads
          movl     0x10(%r13),       %edi                # RDI = sectors
          movl     0x14(%r13),       %esi                # RSI = byte/sector
          movzb    0x31(%r13),       %ebp                # RBP = drive name
          xorl     %eax,             %eax                # RAX = 0
          xorq     %r8,              %r8                 # R08 = default
          cmpl     $0x19,            %ebx                # RBX > known?
          cmova    %eax,             %ebx                # y =>  unknown
          movl     %ecx,             %r9d                # R09 = cylinders
          call     _D2dec
          movl     %r10d,            %ecx                # RCX = heads
          addq     $0x10,            %rdx                # RDX = 10[buf]
          movq     $0x03,            %r8                 # R08 = 3 digits
          shll     $0x04,            %ebx                # RBX * 16
          shll     $0x08,            %ebp                # RBP * 256
          imulq    %r10,             %r9                 # R09 = cylinders * heads
          call     _D2dec
          movl     %edi,             %ecx                # RCX = sectors
          addq     $0x10,            %rdx                # RDX = 20[buf]
          addq     %r11,             %rbx                # RBX = EA type
          addl     $0x30,            %ebp                # RBP = '0x'
          imull    %esi,             %edi                # RDI = sectors * byte/sector
          call     _D2dec
          movl     %esi,             %ecx                # RCX = byte/sector
          addq     $0x10,            %rdx                # RDX = 30[buf]
          movq     $0x06,            %r8                 # R08 = 6 digits
          imulq    %rdi,             %r9                 # R09 = capacity
          call     _D2dec
          movq     %r9,              %rcx                # RCX = capacity
          addq     $0x10,            %rdx                # RDX = 40[buf]
          movq     $0x14,            %r8                 # R08 = 20 digits
          call     _Q2dec
          movq     %r9,              0x18(%r13)          # store capacity
          movdqa   0x00(%rbx),       %xmm0               # XM0 = type
          movl     %ebp,             0x20(%rdx)          # 60[buf] drive number
          movdqa   %xmm0,            0x30(%rdx)          # 70[buf] media type
          addq     $0x40,            %r13                # R13 = next block
          addq     $0x40,            %rdx                # RDX = next block
          decq     %r12
          jne      0b
          movl     $0x0A,            %ebp                # RBP = 10
          movl     DRV_CT(%r15),     %ebx                # RBX = loop_cnt
          movl     $0x1104,          %edi                # RDI = ID RBtn
          movl     $0x1110,          %esi                # RDI = ID EFld
          leaq     BUFFER(%r15),     %r13                # R13 = 00[buf]
          movq     %r14,             %rcx                # RCX = HWND
          subl     %ebx,             %ebp                # RBP = unused slots
          .p2align 4,,15
        1:movl     %edi,             %edx                # RDX = ID RBtn drv
          leaq     0x60(%r13),       %r8                 # R08 = 60[buf] drive number
          call     _WnSDT
          movl     %esi,             %edx                # RDX = ID EFld type
          addq     $0x10,            %r8                 # R08 = 70[buf] media type
          call     _WnSDT
          incl     %edx                                  # RDX = ID EFld cyl
          movq     %r13,             %r8                 # R08 = 00[buf] cylinders
          call     _WnSDT
          incl     %edx                                  # RDX = ID EFld head
          addq     $0x10,            %r8                 # R08 = 10[buf] heads
          call     _WnSDT
          incl     %edx                                  # RDX = ID EFld sect
          addq     $0x10,            %r8                 # R08 = 20[buf] sectors
          call     _WnSDT
          incl     %edx                                  # RDX = ID EFld byte/sect
          addq     $0x10,            %r8                 # R08 = 30[buf] byte/sector
          call     _WnSDT
          incl     %edx                                  # RDX = ID EFld cap
          addq     $0x10,            %r8                 # R08 = 40[buf] capacity
          call     _WnSDT
          incl     %edi                                  # RDI = next RBtn
          addl     $0x08,            %esi                # RSI =      EFld
          addq     $0x80,            %r13                # RSI =      block
          decl     %ebx
          jne      1b
          xorq     %r8,              %r8                 # R08 = hide
          .p2align 4,,15
        2:movl     %edi,             %edx                # RDX = ID RBtn drv
          call     _CtlSh
          movl     %esi,             %edx                # RDX = ID EFld type
          call     _CtlSh
          incl     %edx                                  # RDX = ID EFld cyl
          call     _CtlSh
          incl     %edx                                  # RDX = ID EFld head
          call     _CtlSh
          incl     %edx                                  # RDX = ID EFld sect
          call     _CtlSh
          incl     %edx                                  # RDX = ID EFld byte/sect
          call     _CtlSh
          incl     %edx                                  # RDX = ID EFld cap
          call     _CtlSh
          incl     %edi                                  # RDI = next RBtn
          addl     $0x08,            %esi                # RSI =      EFld
          decl     %ebp
          jne      2b
          movl     $0x1104,          %edx                # RDX = ID
          call     _PBtn
          movl     $0x01,            %eax                # RAX = processed
          movl     $0xFFFFFFFF,      DRV_SL(%r15)        # target = invalid
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:subl     $0x1101,          %ebx                # below?
          js       XIZ
          cmpl     $0x02,            %ebx                # above?
          ja       L03
          jmp      *jt0(, %rbx, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            abort
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:andl     $0xFD,            PGM_FL(%r15)
          movl     $0xFFFFFFFF,      DRV_SL(%r15)
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L02:movl     $0x08,            %ecx                # RCX = Help 08
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            RBtn 0...9
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L03:movq     EA_DRP(%r15),     %r13                # R13 = EA DRP
          subl     $0x03,            %ebx                # RBX = drive
          testq    %r8,              %r8                 #       BN_CLICKED?
          jne      XIZ
          movl     %ebx,             %edx
          cmpl     $0x09,            %ebx                #       above?
          ja       XIZ
          shll     $0x06,            %edx
          movq     0x0118(%r13,%rdx),%r12                # R12 = capacity
          movdqa   0x0120(%r13,%rdx),%xmm0               #       read name
          movdqa   0x0130(%r13,%rdx),%xmm1
          orl      $FLG_TS,          PGM_FL(%r15)        # set   flags
          movl     %ebx,             DRV_SL(%r15)        # store drive
          movq     %r12,             TGT_SZ(%r15)        #       capacity
          movdqa   %xmm0,            TARGET(%r15)        #       name
          movdqa   %xmm1,            TARG_1(%r15)
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                          W R I T E    I M A G E
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    wrimg:subl     $0x0111,          %edx                # WM_COMMAND?
          je       L10
          incl     %edx                                  # WM_INITDLG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0x80,            %edx                # RDX = title
          movq     $0x81,            %r8                 # R08 = 1st
          movq     $0x9B,            %r9                 # R09 = last
          call     _DLGtxt
          movq     SRC_SZ(%r15),     %r13
          call     _CtrWn
          movq     %r13,             %rcx
          leaq     0x20(%rsp),       %rdx
          movq     $0x14,            %r8
          call     _Q2dec
          movq     %r14,             %rcx
          movl     $0x1184,          %edx
          leaq     0x20(%rsp),       %r8
          call     _WnSDT
          incl     %edx                                  # RDX = ID++
          xorq     %r8,              %r8                 # R08 = FALSE
          movq     $0x16,            %r9                 # R09 = loop_cnt
          .p2align 4,,15
        0:incl     %edx
          call     _CtlSh
          decq     %r9
          jne      0b
          movl     $0x01,            %eax                # RAX = processed
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L10:subl     $0x1181,          %ebx                # below?
          js       XIZ
          cmpl     $0x02,            %ebx                # above?
          ja       XIZ
          jmp      *jt1(, %rbx, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            write
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L12:movl     $0x1182,          %edx                # RDX = ID write
          xorq     %r8,              %r8                 # R08 = FALSE
          call     _CtlSh
          decl     %edx                                  # RDX = ID dismiss
          call     _CtlEn
          movl     $0x1186,          %esi                # RSI = ID load image
          call     wdsp
          leaq     SOURCE(%r15),     %r12                # R12 = EA source name
          leaq     EA_IMG(%r15),     %rcx                # RCX = LD
          movq     %r12,             LDNAME(%rcx)        #       store LD.Fname
          call     _LDreq
          movq     LDSIZE(%rcx),     %r13                # R13 = SRC_SZ
          testl    %eax,             %eax                #       error?
          jne      R08
          incl     %esi                                  # RSI = ID done
          call     wdsp
          movl     $0x1189,          %esi                # RSI = ID open target
          call     wdsp
          movq     %r13,             %rcx                # RCX = size
          call     _AloMem
          movq     %rax,             %r12                # R12 = EA buffer
          leaq     TARGET(%r15),     %rcx                # RCX = EA target name
          movl     $0xC0000000,      %edx                # RDX = r/w
          call     _Open
          movq     %rax,             %rcx                # RCX = handle
          movq     %rax,             %r11                # R11 = handle
          testq    %rax,             %rax
          je       R06
          incl     %esi                                  # RSI = ID done
          call     wdsp
          movl     $0x118C,          %esi                # RSI = ID read target
          call     wdsp
          movq     %r12,             %rdx                # RDX = EA buffer
          movq     %r13,             %r8                 # R08 = size
          call     _Read
          testl    %eax,             %eax                #       error?
          je       R07
          incl     %esi                                  # RSI = ID done
          call     wdsp
          movl     $0x118F,          %esi                # RSI = ID open backup
          call     wdsp
          movl     BCK_NR(%r15),     %ecx                # RCX = backup number
          leaq     BCK_IP(%r15),     %rdx                # RDX = EA IP
          leaq     BACKUP(%r15),     %r9                 # R09 = EA name
          call     _W2hex
          incl     BCK_NR(%r15)                          #       next backup number
          pxor     %xmm0,            %xmm0
          movq     %r12,             0x30(%rsp)          #       EA buffer
          movq     %xmm0,            0x38(%rsp)          #       clear
          movdqa   %xmm0,            0x40(%rsp)
          leaq     0x20(%rsp),       %rcx                # RCX = FH
          xorl     %edx,             %edx                # RDX = default
          xorq     %r8,              %r8                 # R08 = open or create
          call     _Fopen
          testl    %eax,             %eax
          jne      R04
          incl     %esi                                  # RSI = ID done
          call     wdsp
          movl     $0x1192,          %esi                # RSI = ID write backup
          call     wdsp
          movq     %r13,             %rdx                # RDX = size
          call     _Fwrite
          movl     %eax,             %ebx                # RBX = error
          call     _Fclose
          movq     %r12,             %rcx                # RCX = EA buffer
          call     _FreMem
          testl    %ebx,             %ebx                #       write error?
          jne      R05
          incl     %esi                                  # RSI = ID done
          call     wdsp
          movl     $0x1195,          %esi                # RSI = ID lock target
          call     wdsp
          movq     %r11,             %rcx                # RCX = handle
          call     _Dlock
          movq     EA_IMG(%r15),     %rdx                # RDX = EA image
          testl    %eax,             %eax                #       error?
          jne      R09
          incl     %esi                                  # RSI = ID done
          call     wdsp
          movl     $0x1198,          %esi                # RSI = ID write target
          call     wdsp
          movq     %r13,             %r8                 # R08 = image size
          call     _Write
          movl     %eax,             %ebx                # RBX = error
          call     _Close
          testl    %ebx,             %ebx                #       error?
          je       R0B
          movq     %r14,             %rcx                # RCX = HWND
          movl     $0x1199,          %edx                # RDX = ID done
          movq     $0x01,            %r8                 # R08 = TRUE
          call     _CtlSh
          movl     $0x119B,          %edx                # RDX = ID success
          call     _CtlSh
          movl     $0x1181,          %edx                # RDX = ID dismiss
          call     _CtlEn
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            help
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L13:movl     $0x09,            %ecx                # RCX = Help 09
          call     _Help
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            fill entryfields
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            R13   ID to show
            R14   HWND
            R15   BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
     wdsp:subq     $0xF8,            %rsp
          movq     %r9,              0xD8(%rsp)
          movq     %r8,              0xE0(%rsp)
          movq     %rdx,             0xE8(%rsp)
          movq     %rcx,             0xF0(%rsp)
          movq     $0x01,            %r8
          movl     %esi,             %edx
          movq     %r14,             %rcx
          call     _CtlSh
          call     _WnUpd
          jmp      XT4
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                               S T  g l u e
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   MSG
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   Windows RC (ignored)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   stglue:movl     GLUECT(%r15),     %r10d               # R10 = cnt
          movq     GLUEEA(%r15),     %r12                # R12 = EA
          movq     GLUEMH(%r15),     %r13                # R13 = MH
          subl     $0x0111,          %edx                # WM_COMMAND?
          je       L30
          incl     %edx                                  # WM_INITDLG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          leaq     GLUEEA(%r15),     %rcx                # RCX = LD
          call     _LDreq
          testl    %eax,             %eax                #       error?
          jne      R0C
          movq     %r14,             %rcx                # RCX = HWND
          movl     $0xA0,            %edx                # RDX = title
          movq     $0xA1,            %r8                 # R08 = 1st
          movq     $0xA8,            %r9                 # R09 = last
          call     _DLGtxt
          call     _CtrWn
          movl     $0x11C9,          %edx                # RDX = ID dummy
          movq     $0x0111,          %r8
          xorq     %r9,              %r9
          call     _PostM
          movl     $0x01,            %eax                # RAX = processed
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L30:addq     $0x0100,          %r12                # R12 = EA DDs
          subl     $0x11C1,          %ebx                # below?
          js       XIZ
          cmpl     $0x08,            %ebx                # above?
          ja       XIZ
          jmp      *jt2(, %rbx, 8)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            00 add file(s)
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L31:movq     _MHSTR(%rip),     %rdi                # RDI = MHSTR
          leaq     GLUE_F(%r15),     %r11                # R11 = EA name
          movl     $0x0400,          %ebx                # RBX = field limit
          xorl     %ecx,             %ecx                # RCX = file open
          leaq     LC00(%rip),       %rdx                # RDX = EA filter
          xorq     %r8,              %r8                 # R08 = default start dir
          xorq     %r9,              %r9                 # R08 =         title
          movq     %r11,             0x20(%rsp)          # P_5 = EA name
          subl     %r10d,            %ebx                # RBX = max entries
          call     _FileOpen
          testl    %eax,             %eax                # error or aborted?
          jne      XIZ
          movq     %rdi,             %rcx                # RCX = MHSTR
          movl     $0x10,            %edx                # RDX = STR_FLS_SELECT
          xorq     %r8,              %r8                 # R08 = sub00
          movq     $0x01,            %r9                 # R09 = FDA_READ
          call     _FDacc
          testl    %eax,             %eax                #       error?
          jne      XIZ
          movq     %r11,             %rcx                # RCX = EA pattern
          movl     $0x006F2E2A,      %ebp                # RDX = "*.o"
          call     _GetPath
          movq     %rbx,             0x20(%rsp)          # P_5 = max entries
          movq     %rbp,             0x00(%r11, %rax)    #       append pattern
          movq     %r13,             %rdx                # RDX = MH
          movq     $0x01,            %r8                 # R08 = sub01
          movq     %r10,             %r9                 # R09 = start
          call     _FsrchP
          addl     %eax,             GLUECT(%r15)        #       update count
          movq     %r14,             %rcx                # RCX = HWND
          addl     %eax,             %r10d               # R10 = new count
          jmp      L39
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            01 listbox
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L32:movq     $0x00,            0x20(%rsp)          # P_5 = 0
          cmpq     $0x04,            %r8                 # R08 = LBN_KILLFOCUS?
          jne      XIZ
          testq    %r10,             %r10                # R10 = 0?
          je       XIZ
          movl     $0x11C2,          %edx                # RDX = ID LBox
          movq     $0x0187,          %r8                 # R08 = LB_GETSEL
          xorq     %r9,              %r9                 # R09 = item index
          .p2align 4,,15
        0:call     _SnDIM
          movl     %eax,             0x00(%r12)          #       save state
          incq     %r9
          addq     $0x04,            %r12
          decq     %r10
          jne      0b
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            02 select all
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L33:movq     %r10,             %r8                 # R08 = cnt
          movq     %r12,             %r9                 # R09 = EA fld
          pcmpeqb  %xmm0,            %xmm0               # XM0 = FFF...FFF
          shrq     $0x04,            %r8                 # R08 = paragraphs
          je       XIZ
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            02 deselect all
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L34:movq     %r10,             %r8                 # R08 = cnt
          movq     %r12,             %r9                 # R09 = EA fld
          pxor     %xmm0,            %xmm0               # XM0 = 000...000
          shrq     $0x04,            %r8                 # R08 = paragraphs
          je       XIZ
          .p2align 4,,15
        0:movdqa   %xmm0,            0x00(%r9)           #       set/reset
          addq     $0x10,            %r9                 # R09 = next EA
          decq     %r8                                   # R08 = cnt--
          jns      0b
          jmp      L39
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            03 remove selected
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L35:
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            04 glue
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L36:xorl     %eax,             %eax                # RAX = 0
          call     _glue
          .p2align 4,,15
      L37:movq     %r13,             %rcx                # RCX = MH
          call     _LDfre
          movq     %r14,             %rcx                # RCX = HWND
          jmp      KLD
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            06 help
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L38:movl     $0x0C,            %ecx                # RCX = help 0C
          call     _Help
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~
            07 fill listbox
            ~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L39:testq    %r10,             %r10                # R10 = 0?
          je       XIZ
          movq     $0x00,            0x20(%rsp)          # P_5 = 0
          movl     0x0000(%r12),     %ebx                # RBX = flag
          movl     0x1000(%r12),     %ebp                # RBP = offset
          xorq     %r11,             %r11                # R11 = entry
          movl     $0x11C2,          %edx                # RDX = ID LBox
          movq     $0x0184,          %r8                 # R08 = LB_RESETCONTENT
          xorq     %r9,              %r9                 # R09 = NULL
          call     _SnDIM
        0:movq     %rbp,             0x20(%rsp)          # P_5 = EA string
          movq     $0x0181,          %r8                 # R08 = LB_INSERTSTRING
          decq     %r9                                   # R09 = -1 (last)
          call     _SnDIM
          movq     %r11,             0x20(%rsp)          # P_5 = index
          movq     $0x0185,          %r8                 # R08 = LB_SETSEL
          movl     %ebx,             %r9d                # R09 = state
          call     _SnDIM
          movl     0x1004(%r12,%r11),%ebp                # RBP = offset
          movl     0x0004(%r12,%r11),%ebx                # RBX = flag
          xorq     %r9,              %r9                 # R09 = NULL
          incq     %r11                                  # R11 = next entry
          testl    %ebp,             %ebp                # RBP = empty string?
          je       XIZ
          addq     %r12,             %rbp                # RAX = EA string
          jmp      0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            errors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      R04:movl     $0x04,            %ebx                # RCX = DIM_OPEN_BACKUP
          movl     $0x1191,          %esi                # RSI = ID
          jmp      RCH
          .p2align 4,,15
      R05:movl     $0x05,            %ecx                # RCX = DIM_WRITE_BACKUP
          movl     $0x1194,          %esi                # RSI = ID
          jmp      RCH
          .p2align 4,,15
      R06:movl     $0x06,            %ebx                # RBX = DIM_OPEN_TARGET
          movl     $0x118B,          %esi                # RSI = ID
          jmp      RRP
          .p2align 4,,15
      R07:movl     $0x07,            %ebx                # RCX = DIM_READ_TARGET
          movl     $0x118E,          %esi                # RSI = ID
          jmp      RCH
          .p2align 4,,15
      R08:movl     $0x08,            %ebx                # RBX = DIM_OPEN_IMAGE
          movl     $0x1188,          %esi                # RSI = ID
          jmp      RRP
          .p2align 4,,15
      R09:movl     %eax,             %ebx                # RBX = DIM_LOCK_FAILED / DIM_UNMOUNT
          movl     $0x1197,          %esi                # RSI = ID
          jmp      RCH
          .p2align 4,,15
      R0B:movl     $0x0B,            %ebx                # RBX = DIM_WRITE_IMAGE
          movl     $0x119A,          %esi                # RSI = ID
          jmp      RRP
          .p2align 4,,15
      R0C:movl     $0x0C,            %ecx                # RCX = DIM_GLUE_LD
          call     _ErrMgr
          movq     %r14,             %rcx                # RCX = HWND
          jmp      KLD
          .p2align 4,,15
      RCH:movq     %r11,             %rcx
          call     _Close
          jmp      RRP
          .p2align 4,,15
      RRP:movl     %ebx,             %ecx                # RCX = error
          call     _ErrMgr
          movq     %r14,             %rcx                # RCX = HWND
          movl     %esi,             %edx                # RDX = ID
          movq     $0x01,            %r8                 # R08 = TRUE
          call     _CtlSh
          movl     $0x1181,          %edx                # RDX = ID dismiss
          call     _CtlEn
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      KLD:call     _KillDlg
          .p2align 4,,15
      XIZ:xorl     %eax,             %eax
      XIT:movq     0x88(%rsp),       %r15
          movq     0x90(%rsp),       %r14
          movq     0x98(%rsp),       %r13
          movq     0xA0(%rsp),       %r12
          movq     0xA8(%rsp),       %r11
          movq     0xB0(%rsp),       %r10
          movq     0xB8(%rsp),       %rbp
          movq     0xC0(%rsp),       %rsi
          movq     0xC8(%rsp),       %rdi
          movq     0xD0(%rsp),       %rbx
      XT4:movq     0xD8(%rsp),       %r9
          movq     0xE0(%rsp),       %r8
          movq     0xE8(%rsp),       %rdx
          movq     0xF0(%rsp),       %rcx
          addq     $0xF8,            %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,             8, 3
