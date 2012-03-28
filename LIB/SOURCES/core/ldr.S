          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                   S T - L O A D E R   (C) ST-Open 2012
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
          */
          .include "..\\..\\..\\include\\yasm.h"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          SAMPLES   FOR AVX Version

          testl     $0x10000000,         %ecx               # AVX   avail?
          testl     $0x00000200,         %ecx               # SSSE3 avail?
          movl      $0x80000001,         %eax               # function 80000001
          cpuid
          testl     $0x00100000,         %ecx               # TBM   avail?
          testl     $0x00010000,         %ecx               # FMA4  avail?
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            VERSION: 8.1.0.

            DATE   : 2012-02-28

            - A distributor for all complex functions was added.
            - Loader Table (LDT) expanded to 65,536 byte, providing 2,048 MemHandles.
            - System fields formerly stored in SYST are moved to DATA.
            - Loaded Files List (LDF) changed from mandatory to obliatory.
            - Buffer _TST changed from mandatory to obligatory.
            - The 'dynamic unloading' feature was removed.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section  .rdata, "dr"
          .p2align  4,,15
    jtclr:.quad     cl0                                     # invalid
          .quad     cl1                                     # byte
          .quad     cl2                                     # word
          .quad     cl3                                     # dword
          .quad     cl4                                     # qword
          .quad     cl5                                     # oword
          .quad     cl6                                     # block
          .quad     cl3                                     # $32
     LC00:.ascii    "..\\data\\FFFFFFFE"
          .quad     0x00, 0x00
     LC03:.ascii    "No SSE2 support!"
          .quad     0x00, 0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _LDinit
          .def      _LDinit; .scl 2; .type 32; .endef
  _LDinit:movq      $ldINIT,             %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _LDreq
          .def      _LDreq; .scl 2; .type 32; .endef
   _LDreq:movq      $ldREQ,              %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _LDchg
          .def      _LDchg; .scl 2; .type 32; .endef
   _LDchg:movq      $ldCHG,              %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _LDfre
          .def      _LDfre; .scl 2; .type 32; .endef
   _LDfre:movq      $ldFRE,              %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _LDexit
          .def      _LDexit; .scl 2; .type 32; .endef
  _LDexit:movq      $ldEXIT,             %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _LDclr
          .def      _LDclr; .scl 2; .type 32; .endef
   _LDclr:movq      $ldCLR,              %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DISTRIBUTOR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
        0:subq      $0xF8,               %rsp
          movdqa    %xmm4,               0x60(%rsp)
          movdqa    %xmm5,               0x70(%rsp)
          movq      %rbp,                0x88(%rsp)
          movq      %rsi,                0x90(%rsp)
          movq      %rdi,                0x98(%rsp)
          movq      %rbx,                0xA0(%rsp)
          movq      %r15,                0xA8(%rsp)
          movq      %r14,                0xB0(%rsp)
          movq      %r13,                0xB8(%rsp)
          movq      %r12,                0xC0(%rsp)
          movq      %r11,                0xC8(%rsp)
          movq      %r10,                0xD0(%rsp)
          movq      %r9,                 0xD8(%rsp)
          movq      %r8,                 0xE0(%rsp)
          movq      %rdx,                0xE8(%rsp)
          movq      %rcx,                0xF0(%rsp)
          movq      _BNR(%rip),          %r14
          movq      _BMM(%rip),          %r15
          movq      %rcx,                %r12
          testq     %r14,                %r14
          je        1f
          movl      SYS_FL(%r14),        %r13d
        1:jmp       *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LDinit   initialize Loader
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ->       nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000   okay
                     0000 00XX   terminate program - loader is not available!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
   ldINIT:testq     %r15,                %r15               # BMM present?
          jne       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            test CPU capabilities
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          pushf
          movq      0x00(%rsp),          %r11               # EAX = EFLAGS
          xorq      $0x00200000,         0x00(%rsp)         # toggle ID
          popf
          pushf
          popq      %r11                                    # restore RSP
          cmpq      %r10,                %r11               # ID changed?
          je        R07
          movl      $0x00000001,         %eax               # function 00000001
          cpuid
          testl     $0x04000000,         %edx               # SSE2  avail?
          je        R07
          testl     $0x00800000,         %ecx               # LZCNT avail?
          je        R07
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            allocate BMM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl      $0x00010000,         %ecx               # RBP = 65,536 byte
          call      _AloMem
          testq     %rax,                %rax               # ALLOC BMM failed?
          je        R1B
          movq      %rax,                _BMM(%rip)         # store BMM
          movq      %rax,                %r15               # R15 = BMM
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            allocate BBF
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          call      _AloMem
          testq     %rax,                %rax               # ALLOC BBF failed?
          je        R1B
          movq      %rax,                _BBF(%rip)         # store BBF
          movq      %rax,                %r13               # R13 = BBF
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            allocate OBF
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          call      _AloMem
          testq     %rax,                %rax               # ALLOC OBF failed?
          je        R1B
          movq      %rax,                _OBF(%rip)         # store OBF
          movq      %rax,                %r12               # R12 = OBF
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            allocate TST
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          call      _AloMem
          testq     %rax,                %rax               # ALLOC TST failed?
          je        R1B
          movq      %rax,                _TST(%rip)         # store TST
          movq      %rax,                %r11               # R11 = TST
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            allocate and load BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          call      _AloMem
          movq      %rax,                %r14               # R14 = BNR
          testq     %rax,                %rax               # ALLOC BNR failed?
          je        R1B
          movq      %rax,                _BNR(%rip)         # store BNR
          leaq      0x20(%rsp),          %rcx               # RCX = FH
          xorl      %edx,                %edx               # RDX = entire file
          movq      $0x02,               %r8                # R08 = open if exists
          leaq      LC00(%rip),          %r9                # R09 = ..\data\FFFFFFFE
          call      _Fopen
          movq      %r14,                FHBASE(%rcx)       # EA SysNum
          movq      %rax,                FHMOFF(%rcx)       # offset mem
          movq      $0x0100,             FHFOFF(%rcx)       #        file
          testl     %eax,                %eax               # PASS Fopen() ERROR
          jne       XIT
          movl      $0x7800,             %edx               # byte to read
          call      _Fread
          movl      %eax,                %ebx
          call      _Fclose
          leaq      LDR__T(%r14),        %r10
          movl      %ebx,                %eax
          testl     %ebx,                %ebx               # LOAD BNR FAILED?
          jne       R1F
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            create LDR table
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq      0x08(%r10),          %xmm0
          movdqa    0x10(%r10),          %xmm1
          movq      0x28(%r10),          %xmm2
          movdqa    0x30(%r10),          %xmm3
          movq      0x48(%r10),          %xmm4
          movdqa    0x50(%r10),          %xmm5
          movq      %r15,                0x00(%r15)
          movq      %xmm0,               0x08(%r15)
          movdqa    %xmm1,               0x10(%r15)
          movq      %r14,                0x20(%r15)
          movq      %xmm2,               0x28(%r15)
          movdqa    %xmm3,               0x30(%r15)
          movq      %r13,                0x40(%r15)
          movq      %xmm4,               0x48(%r15)
          movdqa    %xmm5,               0x50(%r15)
          movq      0x68(%r10),          %xmm0
          movdqa    0x70(%r10),          %xmm1
          movq      0x88(%r10),          %xmm2
          movdqa    0x90(%r10),          %xmm3
          pxor      %xmm4,               %xmm4
          pxor      %xmm5,               %xmm5
          movq      %r12,                0x60(%r15)
          movq      %xmm0,               0x68(%r15)
          movdqa    %xmm1,               0x70(%r15)
          movq      %r11,                0x80(%r15)
          movq      %xmm2,               0x88(%r15)
          movdqa    %xmm3,               0x90(%r15)
          movl      $0x06,               MHCNTR(%r14)       # field count = 5 + 1 dummy
          incl      _LDR_AVAIL(%rip)                        # Loader up and running
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            clear old LD parameters
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          pxor      %xmm0,               %xmm0              # LD structures are stored
          pxor      %xmm1,               %xmm1              # for debugging purposes -
          movdqa    %xmm0,               EA__EF(%r14)       # this feature might be
          movq      %xmm1,               MH__EF(%r14)       # removed in future versions
          movdqa    %xmm0,               EA__SP(%r14)
          movq      %xmm1,               MH__SP(%r14)
          movdqa    %xmm0,               LD__MN(%r14)
          movq      %xmm1,               MH__MN(%r14)
          movdqa    %xmm0,               LD__SD(%r14)
          movq      %xmm1,               MH__SD(%r14)
          movdqa    %xmm0,               LD__MD(%r14)
          movq      %xmm1,               MH__MD(%r14)
          movdqa    %xmm0,               LD__LF(%r14)
          movq      %xmm1,               MH__LF(%r14)
          movdqa    %xmm0,               LD__FL(%r14)
          movq      %xmm1,               MH__FL(%r14)
          movdqa    %xmm0,               LD__LG(%r14)
          movq      %xmm1,               MH__LG(%r14)
          movdqa    %xmm0,               LD__ER(%r14)
          movq      %xmm1,               MH__ER(%r14)
          movdqa    %xmm0,               LD__TP(%r14)
          movq      %xmm1,               MH__TP(%r14)
          movdqa    %xmm0,               LD__OL(%r14)
          movq      %xmm1,               MH__OL(%r14)
          movdqa    %xmm0,               LD__ST(%r14)
          movq      %xmm1,               MH__ST(%r14)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            load LFL
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          leaq      LD__LF(%r14),        %rcx               # RCX = LD LFL
          call      _LDreq
          movq      LD__LF(%r14),        %r9                # R09 = EA LFL
          movq      MH__LF(%r14),        %r12               # R13 = MH LFL
          testl     %eax,                %eax               # PASS LDreq() ERROR
          jne       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            load SystemStrings
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          leaq      LD__ST(%r14),        %rcx               # RCX = LD STR
          call      _LDreq
          movq      LD__ST(%r14),        %r10               # R11 = EA BST
          movq      MH__ST(%r14),        %r11               # R12 = MH BST
          testl     %eax,                %eax               # failed?
          jne       R1E
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            corrections (MH, LFL entry)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movdqa    0x00(%r12),          %xmm0              # copy
          movdqa    0x10(%r12),          %xmm1
          movdqa    0x00(%r11),          %xmm2
          movdqa    0x10(%r11),          %xmm3
          movl      0x0120(%r9),         %eax               # RAX = offset LFL
          movl      0x0124(%r9),         %ebx               # RBX = offset STR
          movdqa    %xmm0,               0xA0(%r15)
          movdqa    %xmm1,               0xB0(%r15)
          movdqa    %xmm2,               0xC0(%r15)
          movdqa    %xmm3,               0xD0(%r15)
          movdqa    %xmm4,               0x00(%r12)         # clear
          movdqa    %xmm5,               0x10(%r12)
          movdqa    %xmm4,               0x00(%r11)
          movdqa    %xmm5,               0x10(%r11)
          subq      $0x60,               %r12               # MH correction
          subq      $0x60,               %r11
          movl      %eax,                0x0114(%r9)        # OT correction
          movl      %ebx,                0x0118(%r9)        
          movdqa    %xmm4,               0x0120(%r9)        # clear old OTs
          movq      %r12,                MH__LF(%r14)       # MH correction
          movq      %r11,                MH__ST(%r14)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            set global variables
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq      %r10,                _BST(%rip)         # store _BST
          movq      %r11,                _MHSTR(%rip)       # MH SystemStrings
          movq      %r14,                _DVAR(%rip)        # DVAR (BNR defined as DD *)
          movq      %r14,                _QVAR(%rip)        # QVAR (BNR defined as DQ *)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            integrated: DRIVES()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          call      _DrvMap
          movl      %eax,                DRVMAP(%r14)       # store DRVMAP[BNR]
          movl      $0x0210,             %ecx               # size
          movq      %r13,                %rdx               # address path
          call      _PgPath
          movq      %r13,                0x20(%rsp)         # address full path
          movzb      0x00(%r13),         %ebx               # RBX = drive letter
          movq      %r11,                %rcx               # MHSTR
          movl      $0x01,               %edx               # entry    01
          xorq      %r8,                 %r8                # subfield 00
          movl      $0x02,               %r9d               # FDA_WRITE
          addq      $0x03,               %r13               # R13 = EA mutilated path
          call      _FDacc
          movq      %r13,                0x20(%rsp)         # address full path
          subl      $0x40,               %ebx               # RBX = drive number
          andl      $0x1F,               %ebx               # EBX = upper case...
          incl      %edx                                    # entry    02
          call      _FDacc
          movl      %ebx,                CURDRV(%r14)       # store CURDRV[BNR]
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            integrated: ScnInit()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq      $0x30,               %rcx               # SPI_GETWORKAREA
          xorq      %rdx,                %rdx               # NULL
          leaq      0x20(%rsp),          %r8                # EA RECT
          xorq      %r9,                 %r9                # NULL
          call      _WinPar
          movl      0x20(%rsp),          %eax               # xLeft
          movl      0x24(%rsp),          %ebx               # yTop
          movl      0x28(%rsp),          %ecx               # xRight
          movl      0x2C(%rsp),          %edx               # yBottom
          movq      RIS_CX(%r14),        %r8                # R08 = Px,Py
          movq      RIS_CW(%r14),        %r9                # R09 = Pw,Ph
          subl      %eax,                %ecx               # ECX = width
          subl      %ebx,                %edx               # EDX = height
          movq      %rcx,                SCRN_W(%r14)       # STV_SCREEN_W
          movq      %rdx,                SCRN_H(%r14)       # STV_SCREEN_H
          shlq      $0x20,               %rdx               # RDX = hhhh0000
          movq      $0x000003E8000003E8, %rax               # RAX = default Px,Py
          movq      $0x00001F4000001F40, %rbx               # RBX = default Pw,Ph
          addq      %rcx,                %rdx               # RDX = hhhhwwww
          testq     %r8,                 %r8                # Px,Py = 0?
          cmove     %rax,                %r8                # use default
          testq     %r9,                 %r9                # Pw,Ph = 0?
          cmove     %rbx,                %r9                # use default
          movq      %rdx,                SCN_W0(%r14)       # write pattern
          movq      %rdx,                SCN_W1(%r14)
          movq      %r8,                 RIS_CX(%r14)
          movq      %r9,                 RIS_CW(%r14)
          movdqa    %xmm4,               PERC_X(%r14)       # clear RIS area
          movdqa    %xmm5,               PIXL_X(%r14)
          xorl      %eax,                %eax
          jmp       XRS
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LDreq    allocate memory, load field or file             |   LD structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   address of a LD structure                      |   00   VOID *   MemEA
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|   08   DQ       MemSz
            <- RAX   0000 0000   ERR_NO_ERROR                       |   10   DD       FldNr
                     0000 0004   ERR_LDR_BUSY                       |   14   DD       LdCtl
                     0000 000E   ERR_UNALIGNED                      |   18   DQ       MemMH
                     0000 000F   ERR_ADDRESS                        |   20   VOID *   FileN
                     0000 0017   ERR_LDR_CORRUPT                    |   28   DQ       Moffs
                     0000 001A   ERR_LDR_OUT_OF_MH                  |   30   DQ       Foffs
                     0000 001B   ERR_LDR_ALLOC                      |   38   DQ       AmtBy
                     0000 001C   ERR_LDR_FORBIDDEN                  |
                     0000 001D   ERR_LDR_ZERO                       |
                     0000 0020   ERR_FILE_OPEN                      |
                     0000 0022   ERR_FILE_READ                      |
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FLAGS: LDRMEM overrides all >> LDFILE overrides LDREXT >> LDREXT overrides LDRFLD.
                   In a worst case scenario with all flags (deliberately) set, LDRMEM wins and
                   a memory block is allocated. With bit 4 reset and bits 7...5 set, LDFILE is
                   chosen and a file is loaded (in the hope, that parameter passed as filename
                   provides a valid address). If only bits 5 and 6 are set, LDREXT wins, and a
                   valid filename and insertion point must be passed. If only bit 5 is set (or
                   bit 7...4 are zero), a field from the program's DATA folder will be loaded.

            NOTE:  Before you call LDreq() to load fields from -external- sources, PATH_X must
                   be set to the full qualified path where those sources are stored. It has to
                   end with a backslash. The offset relative to BNR of the byte following that
                   backslash must be stored as PX__IP. Because -any- external field number can
                   be assigned to an internal field, you can't load an external field with its
                   real number. To avoid conflicts, you have to assign a unique fake number as
                   alias for the true number. This faked number is passed as member LD.LDFNUM,
                   while the true number is passed as member LD.LDSIZE. This parameter only is
                   used for memory blocks and is ignored otherwise if LDREXT is not set. After
                   LDreq() returned, you can use external fields like internal fields.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    ldREQ:testq     $0x0F,               %r12               # aligned?
          jne       R0E
          testq     $0xFFF00000,         %r12               # below 1st MB?
          je        R0F
          movl      LDFNUM(%rcx),        %ebx               # RBX = LD.FldNr
          movl      MHCNTR(%r14),        %ecx               # RCX = loop_cnt
          movq      %r15,                %r10               # R10 = 0000[BMM]
          addq      $0x0100,             %r15               # R15 = 0100[BMM]
          incl      %ebx                                    # loader table?
          je        R1C
          decl      %ebx                                    # field zero?
          je        R1D
          addl      $0x07,               %ecx               # RCX + 7
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            check flags
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          testq     $0x0A,               %r13               # busy or terminated?
          jne       R04
          orb       $0x02,               SYS_FL(%r14)       # set LDR_BUSY
          movq      %r12,                %r13               # R13 = LD
          shrl      $0x02,               %ecx               # RCX / 4
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            already loaded?
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        0:movl      0x18(%r10),          %eax
          movl      0x38(%r10),          %edx
          movl      0x58(%r10),          %edi
          movl      0x78(%r10),          %esi
          cmpl      %ebx,                %eax
          je        1f
          addq      $0x20,               %r10               # next MemHandle
          cmpl      %ebx,                %edx
          je        1f
          addq      $0x20,               %r10               # next MemHandle
          cmpl      %ebx,                %edi
          je        1f
          addq      $0x20,               %r10               # next MemHandle
          cmpl      %ebx,                %esi
          je        1f
          addq      $0x20,               %r10               # next MemHandle
          decl      %ecx
          je        2f
          jmp       0b
          /*
            ~~~~~~~~~~~~~~~~~
            copy parameters
            ~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15                                   # copy LDT to LD:
        1:movq      M_H_EA(%r10),        %r8                # R08 = MemEA
          movl      M_H_FL(%r10),        %ecx               # RCX = LdCtl
          movl      M_H_IC(%r10),        %edx               # RDX = instances
          movl      M_H_AL(%r10),        %r9d               # R09 = MemSz
          xorl      %ebx,                %ebx               # RBX = 0
          incl      %edx                                    # RDX = instance++
          testl     $0x0100,             %ecx               # single instance?
          cmove     %ebx,                %edx               # RDX = 0
          testl     %edx,                %edx               # overflow?
          js        R19
          movl      %edx,                M_H_IC(%r10)       # INSTANCE LDT
          movq      %r8,                 LDMEMA(%r13)       # LD: MemEA
          movq      %r9,                 LDSIZE(%r13)       # LD: MemSz
          movl      %ecx,                LDCNTL(%r13)       # LD: LdCtl
          movq      %r10,                LDMEMH(%r13)       # LD: MemHd
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            search free handle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
        2:movl      $0x01FE,             %ecx               # ECX = loop_cnt
        3:movl      0x18(%r15),          %eax
          movl      0x38(%r15),          %edx
          movl      0x58(%r15),          %edi
          movl      0x78(%r15),          %esi
          testl     %eax,                %eax
          je        4f
          addq      $0x20,               %r15               # next handle
          testl     %edx,                %edx
          je        4f
          addq      $0x20,               %r15               # next handle
          testl     %edi,                %edi
          je        4f
          addq      $0x20,               %r15               # next handle
          testl     %esi,                %esi
          je        4f
          addq      $0x20,               %r15               # next handle
          decl      %ecx
          jne       3b
          jmp       R1A
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            prepare
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        4:movl      LDSIZE(%r13),        %edi               # RDI = requested size
          movl      LDCNTL(%r13),        %esi               # RSI = flags
          movq      LDNAME(%r13),        %r12               # R12 = EA filename file
          movl      LDMOFF(%r13),        %ebp               # RBP = Moffs
          movl      LDFOFF(%r13),        %r10d              # R10 = Foffs
          movl      LDCOPY(%r13),        %r11d              # R11 = byte to copy
          andl      $0x33FF,             %esi               # RSI = valid flags
          leal      0x0FFF(%edi),        %ecx               # RCX = size + 4,095
          movl      PX__IP(%r14),        %r8d               # R08 = OF IP_X
          leaq      PP__IP(%r14),        %rdx               # RDX = EA IP_I
          leaq      PATH_P(%r14),        %r9                # R09 = EA filename field
          leaq      PATH_X(%r14),        %rax               # RAX =             extern
          addq      %r14,                %r8                # R08 = EA IP_X
          testl     $LDREXT,             %esi
          cmovne    %rax,                %r9                # => external
          testl     $LDFILE,             %esi
          cmovne    %r12,                %r9                # => filename
          movl      %ebx,                %eax               # RAX = field number
          testl     $LDRMEM,             %esi
          je        5f
          /*
            ~~~~~~~~~~~~~~~~~
            memory block
            ~~~~~~~~~~~~~~~~~
          */
          andl      $0xFFFFF000,         %ecx               # RCX = size alloc
          je        R0A
          call      _AloMem
          movl      %ecx,                %ebp               # RBP = size alloc
          movq      %rax,                %r12               # R12 = EA block
          movl      $0x01,               %edx               # RDX = entries
          movl      %ecx,                %r10d              # R10 = true size
          jmp       7f
          /*
            ~~~~~~~~~~~~~~~~~
            field (int + ext)
            ~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
        5:movl      %ebx,               %ecx                # RCX = field number
          testl     $LDFILE,            %esi                # file?
          jne       6f
          testl     $LDREXT,            %esi                # external source?
          cmovne    %edi,               %ecx                # => LDFNUM = LDSIZE
          cmovne    %r8,                %rdx                # => EA IP  = EA IP_X
          call      _d2str
          xorl      %ebp,               %ebp                # RBP = no Moffs
          xorq      %r10,               %r10                # R10 = no Foffs
          xorq      %r11,               %r11                # R11 = entire file
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            load
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        6:leaq      0x20(%rsp),          %rcx               # RCX = FH
          xorl      %edx,                %edx               # RDX = entire file
          movq      $0x02,               %r8                # R08 = open if exists
          call      _Fopen
          movq      FHSIZE(%rcx),        %r12               # R12 = file size
          movq      %rbp,                FHMOFF(%rcx)       # Moffs
          movq      %r10,                FHFOFF(%rcx)       # Foffs
          leaq      0x0FFF(%r12),        %rcx               # RCX = size + 4,095
          testl     %eax,                %eax               # open failed?
          jne       XRS
          andq      $0xFFFFF000,         %rcx               # RCX = page size
          movq      $0xFFFFF000,         %rax               # RAX = max size
          movq      %r12,                %r10               # R10 = true size
          cmpq      %rax,                %rcx               # beyond max?
          cmova     %eax,                %ecx               # => reduce to max
          call      _AloMem
          movl      %ecx,                %ebp               # RBP = allocated
          movq      %rax,                0x30(%rsp)         # set   FH.MBASE
          movq      %rax,                %r12               # R12 = EA block
          leaq      0x20(%rsp),          %rcx               # RCX = FH
          movl      %r11d,               %edx               # RDX = byte to read
          testq     %r12,                %r12               # allocation failed?
          je        R1B
          call      _Fread
          movl      %eax,                %r8d               # R08 = RC read
          call      _Fclose
          movl      %r8d,                %eax
          testq     %r8,                 %r8                # read file failed?
          jne       XRS
          movl      $0x01,               %edx               # RDX = entries
          testl     $0x60,               %esi               # field?
          je        7f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            validate header
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          testl     $LDREXT,             %esi               # external?
          cmove     %ebx,                %edi               # => internal
          pxor      %xmm0,               %xmm0              # XM0 = 0
          pxor      %xmm1,               %xmm1              # XM1 = 0
          movdqa    0x00(%r12),          %xmm2              # XM2 = DO0
          movdqa    0x10(%r12),          %xmm3              # XM3 = DO1
          movl      0x2C(%r12),          %ecx               # RCX = field number
          movl      0x34(%r12),          %r11d              # R11 = size
          movl      0x3C(%r12),          %edx               # RDX = entries
          pcmpeqb   %xmm0,               %xmm2              # XM2 = comp 0
          pcmpeqb   %xmm1,               %xmm3              # XM3 = comp 1
          pmovmskb  %xmm2,               %eax               # RAX = mask 0
          pmovmskb  %xmm3,               %r8d               # R08 = mask 1
          cmpl      %edi,                %ecx               # proper field number?
          jne       R18
          cmpq      %r10,                %r11               # proper file size?
          jne       R18
          cmpl      $0xFFFF,             %eax               # all zeroes?
          jne       R18
          cmpq      $0xFFFF,             %r8                # all zeroes?
          jne       R18
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            store parameters
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
        7:movq      %r12,                LDMEMA(%r13)       # LD  MemEA
          movl      %ebp,                LDSIZE(%r13)       #     MemSz
          movq      %r15,                LDMEMH(%r13)       #     MemMH
          movq      %r12,                M_H_EA(%r15)       # LDT EA
          movl      %esi,                M_H_FL(%r15)       #     flags
          movl      $0x00,               M_H_IC(%r15)       #     instances
          movl      %ebp,                M_H_AL(%r15)       #     allocated
          movl      %r10d,               M_H_SZ(%r15)       #     size
          movl      %ebx,                M_H_FI(%r15)       #     field number
          movl      %edx,                M_H_ET(%r15)       #     entries
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            add to LFL and exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
        7:movq      %r9,                 0x20(%rsp)         # P_5 = EA name
          movzwl    %r15w,               %edx               # RDX = W0[MH]
          movq      MH__LF(%r14),        %rcx               # RCX = MH LFL
          xorq      %r8,                 %r8                # R08 = sub00
          movq      $0x02,               %r9                # R09 = FDA_WRITE
          shrl      $0x05,               %edx               # RDX = entry
          call      _FDacc
          incl      MHCNTR(%r14)                            # field count + 1
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LDchg    change allocated size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   MemHandle (MMoff in LD structure)
               RDX   new size  (multiple of 4096)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000  ok
                     0000 xxxx  ERROR DosAllocMem()
                     0000 0004  MM BUSY
                     0000 0013  INVALID MemHandle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAUTION: If you downsize existing blocks, all data beyond the (now smaller) top of
                     the new area get lost. There is no way to get them back after LDchg() did
                     its job.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    ldCHG:addl      $0x0FFF,             %edx               # RDX = size + 4,095
          subq      %r15,                %rcx               # RCX = offset[BMM]
          js        R13
          cmpl      $0x0000FFE0,         %ecx               # > max?
          ja        R13
          andl      $0xFFFFF000,         %edx               # RDX = page size
          testl     $0x1F,               %ecx               # 32 byte aligned?
          jne       R13
          movq      M_H_EA(%r12),        %r8                # R08 = old EA
          movl      M_H_AL(%r12),        %r9d               # R09 = old size
          movl      %edx,                %ecx               # RCX = page size
          testq     $0x0A,               %r13               # busy or teminated?
          jne       R04
          orl       $0x02,               SYS_FL(%r14)       # set LDR_BUSY
          testq     %r8,                 %r8                # EA valid?
          je        R14
          cmpl      %ecx,                %r9d               # old size = new size?
          je        XIZ
          call     _AloMem
          testl     %eax,               %eax                # failed?
          je        R12
          cmpl      %ecx,                %r9d               # old size > new size?
          cmovb     %r9d,                %ecx               # copy old size!
          movq      %rax,                M_H_EA(%r12)       # write new EA
          movl      %edx,                M_H_AL(%r12)       #       new allocated
          shrl      $0x06,               %ecx               # four paragraphs!
          .p2align  4,,15
        0:movdqa    0x00(%r8),           %xmm0              # copy old mem
          movdqa    0x10(%r8),           %xmm1
          movdqa    0x20(%r8),           %xmm2
          movdqa    0x30(%r8),           %xmm3
          movntdq   %xmm0,               0x00(%rax)
          movntdq   %xmm1,               0x10(%rax)
          movntdq   %xmm2,               0x20(%rax)
          movntdq   %xmm3,               0x30(%rax)
          addq      $0x40,               %r8
          addq      $0x40,               %rax
          decl      %ecx
          jne       0b
          movq      %r8,                 %rcx               # old EA
          call      _FreMem
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LDfre    free allocated memory
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   MMoff   MemHandle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000   ERR_NO_ERROR
                     0000 0004   ERR_SYS_LDR_BUSY
                     0000 0013   ERR_LDR_MH
                     0000 0014   ERR_LDR_OS2MH
                     0000 00xx   RC from calls
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LDfre() releases the memory block without saving its content if any of these flags
            [LDR_MEM][LDR_DISCARD][LDR_DIRTY][LDR_CORRUPT] is set or [LDR_WRITE] is not set.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    ldFRE:subq      %r15,                %rcx               # < 0000[BMM]?
          js        R13
          cmpq      $0xFFE0,             %rcx               # > FFE0[BMM]?
          ja        R13
          testl     $0x1F,               %ecx               # 32 byte aligned?
          jne       R13
          cmpl      $0xE0,               %ecx               # system area?
          ja        0f
          testq     $SFTERM,             %r13               # terminating?
          je        R1C
          .p2align  4,,15
        0:testq     $0x02,               %r13               # LDR_BUSY?
          jne       R04
          movl      %ecx,                %ebp               # RBP = offset
          orl       $0x02,               SYS_FL(%r14)       # set LDR_BUSY
          movq      LD__LF(%r14),        %r9                # R09 = EA LFL
          movq      MH__LF(%r14),        %r13               # R13 = MH LFL
          movq      M_H_EA(%r12),        %r11               # R11 = EA block
          movl      M_H_SZ(%r12),        %r10d              # R10 = true size
          movl      M_H_FL(%r12),        %eax               # RAX = flags
          shrl      $0x05,               %ebp               # RBP = entry
          movl      0x0100(%r9,%rbp,4),  %ebx
          testq     %r11,                %r11               # EA block = 0?
          je        R14
          xorl      $LWRITE,             %eax               # toggle LDR_WRITE
          decl      M_H_IC(%r12)                            # INSTANCE--
          jns       XIZ
          testl     $0x481A,             %eax               # ro, discard, mem, dirty, corrupt?
          jne       1f
          testl     $LDRCHG,             %eax               # changed?
          je        1f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            save changed content
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          addq      %rbx,                %r9                # R09 = EA name
          leaq      0x20(%rsp),          %rcx               # RCX = FH
          xorl      %edx,                %edx               # RDX = entire file
          movq      $0x03,               %r8                # R08 = replace if exists
          call      _Fopen
          movq      %r10,                FHSIZE(%rcx)       # set FH.Fsize
          movq      %r11,                FHBASE(%rcx)       #     FH.Mbase
          movq      %rax,                FHMOFF(%rcx)       #     FH.Moffs
          movq      %rax,                FHFOFF(%rcx)       #     FH.Foffs
          testl     %eax,                %eax
          jne       XRS
          movq      %r10,                %rdx               # RDX = size
          call      _Fwrite
          movl      %eax,                %ebx               # RBX = rc Fwrite()
          call      _Fclose
          movl      %ebx,                %eax               # RAX = RC write
          testl     %ebx,                %ebx               # if write failed:
          jne       XRS                                     # do not release MH!
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            free mem, clear MH
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
        1:movq      %r13,                %rcx               # RCX = MH LFL
          movl      %ebp,                %edx               # RDX = entry
          xorq      %r8,                 %r8                # R08 = sub00
          movq      $0x03,               %r9                # R09 = FDA_DELETE
          call      _FDacc
          pxor      %xmm4,               %xmm4              # XM4 = 0
          pxor      %xmm5,               %xmm5              # XM5 = 0
          movq      %r11,                %rcx               # RCX = EA
          call      _FreMem
          movdqa    %xmm4,               M_H_EA(%r12)       # clear MemHandle
          movdqa    %xmm5,               M_H_AL(%r12)
          decl      MHCNTR(%r14)                            # field count - 1
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LDexit   terminate Loader
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ->       nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
   ldEXIT:movl      MHCNTR(%r14),        %r13d              # R13 = field count
          movl      $0x08,               SYS_FL(%r14)       # SFTERM
          xorl      %ebx,                %ebx               # RBX = 0
          movl      $0x07F8,             %edx               # RDX = loop_cnt
          leaq      0x0100(%r15),        %rcx               # RCX = 1st MH user
          subq      $0x07,               %r13               # R13 = user fields
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            free open MemHandles
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
        0:decl      %edx                                    # loop_cnt--
          js        2f
          cmpq      %rbx,                0x00(%rcx)         # MH free?
          je        1f
          movl      %ebx,                M_H_IC(%rcx)       # INSTANCE = 0 (force free)
          call      _LDfre
          decq      %r13
          js        2f
        1:addq      $0x20,               %rcx
          jmp       0b
          .p2align  4,,15
        2:leaq      0xC0(%r15),          %rcx               # RCX = STR
          movl      $0x23,               0xA8(%r15)         # set LFL flags
          call      _LDfre
          movq      %rbx,                _LDR_AVAIL(%rip)   # Loader terminated
          movq      %rbx,                _BST(%rip)         # clear BST
          movq      %rbx,                _MHSTR(%rip)       #       MHSTR
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            save NUM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq      %r14,                0x30(%rsp)         # set   FH.Mbase
          movq      %rbx,                0x38(%rsp)         #       FH.Moffs
          movq      $0x0100,             0x40(%rsp)         #       FH.Foffs
          leaq      0x20(%rsp),          %rcx               # FH
          xorl      %edx,                %edx               # RDX = entire file
          movq      $0x02,               %r8                # R08 = open if exists
          leaq      LC00(%rip),          %r9                # R09 = num.dat
          call      _Fopen
          testl     %eax,                %eax               # failed?
          jne       2f
          call      _Fwrite
          call      _Fclose
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            free LDF, buffers, NUM, BMM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        2:movq      0xA0(%r15),          %rcx               # RCX = EA LDF
          call      _FreMem
          movq      0x60(%r15),          %rcx               # RCX = EA TST
          call      _FreMem
          movq      0x40(%r15),          %rcx               # RCX = EA OBF
          movq      %rbx,                _TST(%rip)         # clear TST
          call      _FreMem
          movq      0x20(%r15),          %rcx               # RCX = EA BBF
          movq      %rbx,                _OBF(%rip)         # clear OBF
          call      _FreMem
          movq      %rax,                _BBF(%rip)         # clear BBF
          movq      %rbx,                _BNR(%rip)         # clear BNR
          movq      %rax,                _DVAR(%rip)        #       DVAR
          movq      %rbx,                _QVAR(%rip)        #       QVAR
          movq      %rax,                _BMM(%rip)         # clear BMM
          movq      %r14,                %rcx               # RCX = BNR
          call      _FreMem
          movq      %r15,                %rcx               # RCX = BMM
          call      _FreMem
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                        M I S C E L L A N E O U S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LDclr    ERASE FIELD DATA
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   MemHandle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   0000 0000  ok
                     0000 0004  ERR_SYS_LDR_BUSY
                     0000 0013  ERR_LDR_MH
                     0000 0014  ERR_LDR_OS2MH
                     0000 0018  ERR_LDR_NO_FIELD
                     0000 001C  ERR_DBE_TYPE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            R12   MH
            R13   SYS_FL
            R14   BNR
            R15   BMM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            validate parameters
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    ldCLR:pxor      %xmm0,               %xmm0              # XM0 = 0
          pxor      %xmm1,               %xmm1              # XM1 = 0
          subq      %r15,                %rcx               # validate MH
          js        R13
          cmpq      $0xFFE0,             %rcx               # beyond?
          ja        R13
          testq     $0x1F,               %rcx               # 32 byte aligned?
          jne       R13
          movq      0x00(%r12),          %r11               # R11 = EA block
          testq     $0x02,               %r13               # LDR BUSY?
          jne       R04
          testq     %r11,                %r11               # EA block = 0?
          je        R14
          movdqa    0x00(%r11),          %xmm2              # XM2 = 1st para
          movdqa    0x10(%r11),          %xmm3              # XM2 = 2nd para
          pcmpeqb   %xmm0,               %xmm2              # XM2 = comp 0
          pcmpeqb   %xmm1,               %xmm3              # XM3 = comp 1
          pmovmskb  %xmm2,               %eax               # RAX = mask 0
          pmovmskb  %xmm3,               %ebx               # RBX = mask 1
          orl       $SFBUSY,             SYS_FL(%r14)       # set SYS_LDR_BUSY
          pxor      %xmm2,               %xmm2              # XM2 = 0
          pxor      %xmm3,               %xmm3              # XM3 = 0
          cmpl      $0xFFFF,             %eax               # all zeroes?
          jne       R18
          cmpl      $0xFFFF,             %ebx               # all zeroes?
          jne       R18
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            prepare
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl      0x24(%r11),          %r13d              # R13 = type_cnt
          movl      0x34(%r11),          %ebp               # RBP = old size
          movl      0x3C(%r11),          %edx               # RDX = entries
          xorl      %eax,                %eax               # RAX = 0
          decq      %r13                                    # index - 1
          orl       $0x0800,             M_H_FL(%r12)       # set dirty flag in BMM
          subl      $0x0100,             %ebp               # RBP = byte to clear
          movzb     0x40(%r11, %r13, 1), %ebx               # RBX = last type
          movl      0x60(%r11, %r13, 4), %ecx               # RCX =      offset
          cmpl      $0x07,               %ebx               # valid type?
          cmova     %eax,                %ebx               # invalid!
          jmp       *jtclr(, %rbx, 8)                       # jump table <jtclr>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            calculate parameters
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      cl0:andl      $0xFFFD,             SYS_FL(%r14)       # reset SYS_DBE_BUSY, SYS_LDR_BUSY
          orl       $0x4000,             0x30(%r11)         # set   LDR_CORRUPT (field)
          orl       $0x4000,             0x08(%r12)         #                   (BMM)
          jmp       R1C
          .p2align  4,,15
      cl2:shll      $0x01,               %edx
          jmp       cl1
          .p2align  4,,15
      cl3:shll      $0x02,               %edx
          jmp       cl1
          .p2align  4,,15
      cl4:shll      $0x03,               %edx
          jmp       cl1
          .p2align  4,,15
      cl5:shll      $0x04,               %edx
          jmp       cl1
          .p2align  4,,15
      cl6:movl      0x20(%r11),          %edx               # RDX = block size
          .p2align  4,,15
      cl1:movl      %ebp,                %eax               # RAX = old size
          addl      %edx,                %ecx               # RCX = new size
          leaq      0x0100(%r11),        %r13               # R13 = EA data area
          orl       $0x04,               M_H_FL(%r12)       # set changed flag (BMM)
          andl      $0x30,               %eax               # RAX = odd paragraphs
          movl      %ecx,                M_H_SZ(%r12)       # write new size > (BMM)
          movl      %ecx,                0x34(%r11)         #                > (header)
          shrl      $0x06,               %ebp               # RBP = cache lines
          shrl      $0x04,               %eax               # RAX = remaining paragraphs
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            clear field
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
        0:decl      %ebp
          js        1f
          movntdq   %xmm0,               0x00(%r13)
          movntdq   %xmm1,               0x10(%r13)
          movntdq   %xmm2,               0x20(%r13)
          movntdq   %xmm3,               0x30(%r13)
          addq      $0x40,               %r13
          jmp       0b
          .p2align  4,,15
        1:decl      %eax
          js        2f
          movntdq   %xmm0,               0x00(%r13)
          addq      $0x10,               %r13
          jmp       1b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            update header + BMM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
        2:andl      $0x0000F7FF,         0x08(%r12)         # reset dirty flag in BMM
          jmp       XRS
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            errors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      R02:movl      $0x02,               %eax               # ERR_SYS_SERIOUS
          jmp       XIT
          .p2align  4,,15
      R04:movl      $0x04,               %eax               # ERR_LDR_BUSY
          jmp       XIT
          .p2align  4,,15
      R07:xorq      %rcx,                %rcx               # title = 'Error'
          movq      $LC03,               %rdx               # text  = 'CPU is too old!'
          movq      $0x40,               %r8                # flags = MB_CUACRITICAL
          call      _MBox
          movl      $0x07,               %eax               # ERR_CPU_TOO_OLD
          jmp       XIT
          .p2align  4,,15
      R0A:movl      $0x0A,               %eax               # ERR_PAR_BELOW
          jmp       XRS
          .p2align  4,,15
      R0E:movl      $0x0E,               %eax               # ERR_UNALIGNED
          jmp       XRS
          .p2align  4,,15
      R0F:movl      $0x0F,               %eax               # ERR_ADDRESS
          jmp       XRS
          .p2align  4,,15
      R12:movl      $0x12,               %eax               # ERR_LDR_RESIZE
          jmp       XRS
          .p2align  4,,15
      R13:movl      $0x13,               %eax               # ERR_LDR_MH
          jmp       XRS
          .p2align  4,,15
      R14:movl      $0x14,               %eax               # ERR_LDR_MEMEA
          jmp       XRS
          .p2align  4,,15
      R17:movl      $0x17,               %eax               # ERR_LDR_CORRUPT
          jmp       XRS
          .p2align  4,,15
      R18:movl      $0x18,               %eax               # ERR_LDR_NO_FIELD
          jmp       XRS
          .p2align  4,,15
      R19:movl      $0x19,               %eax               # ERR_LDR_INSTANCE
          jmp       XRS
          .p2align  4,,15
      R1A:movl      $0x1A,               %eax               # ERR_LDR_OUT_OF_MH
          jmp       XRS
          .p2align  4,,15
      R1B:movl      $0x1B,               %eax               # ERR_LDR_ALLOC
          jmp       XRS
          .p2align  4,,15
      R1C:movl      $0x1C,               %eax               # ERR_LDR_FORBIDDEN
           jmp      XRS
          .p2align  4,,15
      R1D:movl      $0x1D,               %eax               # ERR_LDR_ZERO
          jmp       XRS
          .p2align  4,,15
      R1E:movl      $0x1E,               %eax               # ERR_LDR_STR
          jmp       XIT
          .p2align  4,,15
      R1F:movl      $0x1F,               %eax               # ERR_LDR_BNR
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      XIZ:xorl      %eax,                %eax               # ERR_NO_ERROR
      XRS:andl      $0xFFF9,             SYS_FL(%r14)       # reset CHK_ACT / LDR_BUSY
      XIT:movdqa    0x60(%rsp),          %xmm4
          movdqa    0x70(%rsp),          %xmm5
          movq      0x88(%rsp),          %rbp
          movq      0x90(%rsp),          %rsi
          movq      0x98(%rsp),          %rdi
          movq      0xA0(%rsp),          %rbx
          movq      0xA8(%rsp),          %r15
          movq      0xB0(%rsp),          %r14
          movq      0xB8(%rsp),          %r13
          movq      0xC0(%rsp),          %r12
          movq      0xC8(%rsp),          %r11
          movq      0xD0(%rsp),          %r10
          movq      0xD8(%rsp),          %r9
          movq      0xE0(%rsp),          %r8
          movq      0xE8(%rsp),          %rdx
          movq      0xF0(%rsp),          %rcx
          addq      $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                               F n D a t ()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FnDat() is integrated in LDreq() - use d2str() as replacement for FnDat().
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                  M e m H a n d l e   F U N C T I O N S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            getMH    get MemHandle from field #
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   field number
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 0000 0000   not found
                     ???? ???? ???? ????   MemHandle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _getMH
          .def      _getMH; .scl 2; .type 32; .endef
   _getMH:movq      _BMM,                %rax
          subq      $0x38,               %rsp
          addq      $0x0100,             %rax
          movq      %rdx,                0x30(%rsp)
          movl      $0x07F8,             %edx               # RDX = loop_cnt
        0:cmpl      %ecx,                0x18(%rax)
          je        1f
          addq      $0x20,               %rax
          decl      %edx
          jne       0b
          xorl      %eax,                %eax
        1:movq      0x30(%rsp),          %rdx
          addq      $0x38,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LDupd    update LD structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   address LD structure
               RDX   MemHandle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   0000 0000   okay
                     0000 0013   ERR_LDR_MH
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _LDupd
          .def      _LDupd; .scl 2; .type 32; .endef
   _LDupd:subq      $0x38,               %rsp
          movq      %rdx,                %rax
          movq      %rbx,                0x20(%esp)
          movq      %rdi,                0x28(%esp)
          movq      %rsi,                0x30(%esp)
          subq      _BMM,                %rax               # validate MH
          js        1f
          cmpl      $0xFFE0,             %eax
          ja        1f
          movq      0x00(%rdx),          %rbx               # RBX = EA block
          movl      0x08(%rdx),          %esi               # RSI = flags
          movl      0x18(%rdx),          %edi               # RDI = field number
          xorl      %eax,                %eax
          movq      %rbx,                0x00(%rcx)         # LD.MemEA
          movl      %edi,                0x10(%rcx)         # LD.FldNr
          movl      %esi,                0x14(%rcx)         # LD.LdCtl
        0:movq      0x20(%esp),          %rbx
          movq      0x28(%esp),          %rdi
          movq      0x30(%esp),          %rsi
          addq      $0x38,               %rsp
          ret
          .p2align  4,,15
        1:movl      $0x13,               %eax               # ERR_LDR_MH
          jmp       0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LDunc    reset CHANGED flag
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> PAR1  MemHandle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _LDunc
          .def      _LDunc; .scl 2; .type 32; .endef
   _LDunc:pushq     $0x00                                   # align stack
          andb      $0xFB,               0x08(%rcx)
          popq      %rax                                    # RAX = 0
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LDstc    set CHANGED flag
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> PAR1  MemHandle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _LDstc
          .def      _LDstc; .scl 2; .type 32; .endef
   _LDstc:pushq     $0x00                                   # align stack
          orb       $0x04,               0x08(%rcx)
          popq      %rax                                    # RAX = 0
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LDsts    set CHANGED flag and real size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   MemHandle
               RDX   new size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _LDsts
          .def      _LDsts; .scl 2; .type 32; .endef
   _LDsts:pushq     $0x00                                   # align stack
          orb       $0x04,               0x08(%rcx)
          movq      %rdx,                0x14(%rcx)
          popq      %rax                                    # RAX = 0
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MHxcg    exchange two MemHandles
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   MemHandle 1
               RDX   MemHandle 2
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _MHxcg
          .def      _MHxch; .scl 2; .type 32; .endef
   _MHxcg:pushq     $0x00                                   # align stack
          movdqa    0x00(%rcx),          %xmm0
          movdqa    0x10(%rcx),          %xmm1
          movdqa    0x00(%rdx),          %xmm2
          movdqa    0x10(%rdx),          %xmm3
          movdqa    %xmm2,               0x00(%rcx)
          movdqa    %xmm3,               0x10(%rcx)
          movdqa    %xmm0,               0x00(%rdx)
          movdqa    %xmm1,               0x10(%rdx)
          popq      %rax                                    # RAX = 0
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm     _LDR_AVAIL,          8, 3
          .comm     _BMM,                8, 3
          .comm     _BNR,                8, 3
          .comm     _DVAR,               8, 3
          .comm     _QVAR,               8, 3
          .comm     _BBF,                8, 3
          .comm     _OBF,                8, 3
          .comm     _TST,                8, 3
          .comm     _BST,                8, 3
          .comm     _MHSTR,              8, 3
