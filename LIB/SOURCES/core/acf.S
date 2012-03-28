          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                             D A T A B A S E   E N G I N E   (C) ST-Open 2012
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
            On error, all datafield functions except FDacc()/FDvpt() return an qualified error
            code. Because FDA_ADDRESS has to return a valid address, FDacc() and FDvpt() store
            their error codes at 1FCC[BNR] and either return zero, or the address of 1FDC[BNR]
            in case the FDA_ADDRESS subfunction was called.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            High Level Language programmers should call FDerr() to get the last stored error -
            it might be faster than the usual contortions of HLL compilers...
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ERRORS:  0000 0000   ERR_NO_ERROR       no error occured
                     0000 0001   ERR_ERROR          terminated (unkown reason)
                     0000 0005   ERR_SYS_DBE_BUSY   previous write not completed
                     0000 0008   ERR_PAR_INVALID    invalid address
                     0000 000C   ERR_PAR_COMMAND    unknown command
                     0000 0012   ERR_LDR_RESIZE     resize request failed
                     0000 001C   ERR_LDR_FORBIDDEN  no access to read only and system fields
                     0000 001E   ERR_DBE_NO_READ    field flags do not permit reading
                     0000 001F   ERR_DBE_NO_WRITE                             writing
                     0000 0020   ERR_DBE_TYPE       invalid data type
                     0000 0021   ERR_DBE_MH                 MemHandle
                     0000 0022   ERR_DBE_SUBFIELD           subfield number
                     0000 0023   ERR_DBE_ENTRY              entry number
                     0000 0024   ERR_DBE_WRITE      write string failed
                     0000 0025   ERR_DBE_CORRUPT    OT corrupted
                     0000 0026   ERR_DBE_SECSYS     de-/encryption failed
                     0000 0027   ERR_ENC_NO_SEC     LDR_ENCRYPT but no LDR_SECSYS
                     0000 003C   ERR_SS_ERROR       general SecSys error
                     0000 003E   ERR_SS_READ        no read permission
                     0000 003F   ERR_SS_WRITE       no write permission
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,0x00
     secT:.quad secR                         # 00 FDA_TEST
          .quad secR                         # 01 FDA_READ
          .quad secW                         # 02 FDA_WRITE
          .quad secW                         # 03 FDA_DELETE
          .quad secW                         # 04 FDA_COPY
          .quad secW                         # 05 FDA_MOVE
          .quad secW                         # 06 FDA_XCHANGE
          .quad secR                         # 07 FDA_ADDRESS
          .quad secR                         # 08 FDA_SEARCH
          .quad secR                         # 09 FDA_COMPARE
          .quad secW                         # 0A FDA_INC
          .quad secW                         # 0B FDA_DEC
          .quad secW                         # 0C FDA_ADD
          .quad secW                         # 0D FDA_SUB
          .quad secR                         # 0E FDA_OFFSET
      cmd:.quad XIZ                          # 00 FDA_TEST
          .quad read                         # 01 FDA_READ
          .quad write                        # 02 FDA_WRITE
          .quad delete                       # 03 FDA_DELETE
          .quad copy                         # 04 FDA_COPY
          .quad move                         # 05 FDA_MOVE
          .quad xchg                         # 06 FDA_XCHG
          .quad addr                         # 07 FDA_ADDRESS
          .quad srch                         # 08 FDA_SEARCH
          .quad comp                         # 09 FDA_COMPARE
          .quad ninc                         # 0A FDA_INC
          .quad ndec                         # 0B FDA_DEC
          .quad nadd                         # 0C FDA_ADD
          .quad nsub                         # 0D FDA_SUB
          .quad offs                         # 0E FDA_OFFSET
     rdjt:.quad rd01                         # DB
          .quad rd02                         # DW
          .quad rd03                         # DD
          .quad rd04                         # DQ
          .quad rd05                         # DO
          .quad rd06                         # FIX
          .quad rd07                         # $32
     wrjt:.quad wr01                         # DB
          .quad wr02                         # DW
          .quad wr03                         # DD
          .quad wr04                         # DQ
          .quad wr05                         # DO
          .quad wr06                         # FIX
          .quad wstr                         # $32 (jumps to wstr directly)
     dljt:.quad dl01                         # DB
          .quad dl02                         # DW
          .quad dl03                         # DD
          .quad dl04                         # DQ
          .quad dl05                         # DO
          .quad dl06                         # FIX
          .quad dl07                         # $32 (sets source to EA field)
    cpyjt:.quad cpy01                        # DB
          .quad cpy02                        # DW
          .quad cpy03                        # DD
          .quad cpy04                        # DQ
          .quad cpy05                        # DO
          .quad cpy06                        # FIX
          .quad cpy07                        # $32 (copies source to BBF)
     mvjt:.quad mv01                         # DB
          .quad mv02                         # DW
          .quad mv03                         # DD
          .quad mv04                         # DQ
          .quad mv05                         # DO
          .quad mv06                         # FIX
          .quad mv07                         # $32 (exchanges OTs, sets source to EA field)
     xcjt:.quad xc01                         # DB
          .quad xc02                         # DW
          .quad xc03                         # DD
          .quad xc04                         # DQ
          .quad xc05                         # DO
          .quad xc06                         # FIX
          .quad xc03                         # $32 (exchanges OTs, only)
     adjt:.quad ad01                         # DB
          .quad ad02                         # DW
          .quad ad03                         # DD
          .quad ad04                         # DQ
          .quad ad05                         # DO
          .quad ad06                         # FIX
          .quad ad07                         # $32
     scjt:.quad sc01                         # DB
          .quad sc02                         # DW
          .quad sc03                         # DD
          .quad sc04                         # DQ
          .quad sc05                         # DO
          .quad sc06                         # FIX
          .quad sc07                         # $32
    cmpjt:.quad cmp01                        # DB
          .quad cmp02                        # DW
          .quad cmp03                        # DD
          .quad cmp04                        # DQ
          .quad cmp05                        # DO
          .quad cmp06                        # FIX
          .quad cmp07                        # $32
     nijt:.quad ni01                         # DB
          .quad ni02                         # DW
          .quad ni03                         # DD
          .quad ni04                         # DQ
          .quad ni05                         # DO
          .quad UNL                          # FIX
          .quad UNL                          # $32
     ndjt:.quad nd01                         # DB
          .quad nd02                         # DW
          .quad nd03                         # DD
          .quad nd04                         # DQ
          .quad nd05                         # DO
          .quad UNL                          # FIX
          .quad UNL                          # $32
     najt:.quad na01                         # DB
          .quad na02                         # DW
          .quad na03                         # DD
          .quad na04                         # DQ
          .quad na05                         # DO
          .quad UNL                          # FIX
          .quad UNL                          # $32
     nsjt:.quad ns01                         # DB
          .quad ns02                         # DW
          .quad ns03                         # DD
          .quad ns04                         # DQ
          .quad ns05                         # DO
          .quad UNL                          # FIX
          .quad UNL                          # $32
     ofjt:.quad of01                         # DB
          .quad of02                         # DW
          .quad of03                         # DD
          .quad of04                         # DQ
          .quad of05                         # DO
          .quad of06                         # FIX
          .quad of07                         # $32
    supjt:.quad supDB                        # 01 DB
          .quad supDW                        # 02 DW
          .quad supDD                        # 03 DD
          .quad supDQ                        # 04 DQ
          .quad supDO                        # 05 DO
          .quad supFX                        # 06 FIX
          .quad supDD                        # 07 $32
    sdnjt:.quad sdnDB                        # 01 DB
          .quad sdnDW                        # 02 DW
          .quad sdnDD                        # 03 DD
          .quad sdnDQ                        # 04 DQ
          .quad sdnDO                        # 05 DO
          .quad sdnFX                        # 06 FIX
          .quad sdnDD                        # 07 $32
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDerr    get FDacc() error
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
           -> -      nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
           <- RAX    last error (should be zero...)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _FDerr
          .def       _FDerr; .scl 2; .type 32; .endef
   _FDerr:movq       _BNR(%rip),          %rax          # RAX = BNR
          movl       FIAERR(%rax),        %eax          # RAX = last error
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc / FDvpt
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _FDvpt
          .def       _FDvpt; .scl 2; .type 32; .endef
          .globl     _FDacc
          .def       _FDacc; .scl 2; .type 32; .endef
   _FDvpt:
   _FDacc:pxor       %xmm0,               %xmm0         # XM0 = 0
          movq       $fdacc,              %rax
          jmp        0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SftUp
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _SftUp
          .def       _SftUp; .scl 2; .type 32; .endef
   _SftUp:pcmpeqb    %xmm0,               %xmm0         # XM0 = all 1s
          movq       $sftup,              %rax
          jmp        0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SftDn
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .globl     _SftDn
          .def       _SftDn; .scl 2; .type 32; .endef
   _SftDn:pcmpeqb    %xmm0,               %xmm0         # XM0 = all 1s
          movq       $sftdn,              %rax
          jmp        0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DISTRIBUTOR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
        0:subq       $0xF8,               %rsp
          movq       %xmm0,               0x80(%rsp)    # used as flag for error handling
          movq       %rbp,                0x88(%rsp)
          movq       %rsi,                0x90(%rsp)
          movq       %rdi,                0x98(%rsp)
          movq       %rbx,                0xA0(%rsp)
          movq       %r15,                0xA8(%rsp)
          movq       %r14,                0xB0(%rsp)
          movq       %r13,                0xB8(%rsp)
          movq       %r12,                0xC0(%rsp)
          movq       %r11,                0xC8(%rsp)
          movq       %r10,                0xD0(%rsp)
          movq       %r9,                 0xD8(%rsp)
          movq       %r8,                 0xE0(%rsp)
          movq       %rdx,                0xE8(%rsp)
          movq       %rcx,                0xF0(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            get params & validate
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq       _BMM(%rip),          %r14          # R14 = BMM
          movq       _BNR(%rip),          %rsi          # RSI = BNR
          movq       _BBF(%rip),          %r15          # R15 = BBF
          negq       %r14                               # r14 = -BMM
          movl       $0x21,               %ebx          # RBX = ERR_DBE_MH
          addq       %rcx,                %r14          # below?
          js         ERR
          cmpl       $0xFFE0,             %r14d         # above?
          ja         ERR
          movq       0x00(%rcx),          %rdi          # RDI = EA field
          testq      $0x1F,               %rcx          # multiple of 32?
          jne        ERR
          testq      %rdi,                %rdi          # loaded?
          je         ERR
          incl       %ebx                               # RBX = ERR_DBE_SUBFIELD
          cmpl       0x24(%rdi),          %r8d          # valid subfield?
          jae        ERR
          movzwl     0x08(%rcx),          %r14d         # R14 = flags MH
          movl       0x38(%rdi),          %r11d         # R11 = max size
          movl       0x3C(%rdi),          %r10d         # R10 = max entries
          movzb      0x40(%rdi, %r8),     %r12d         # R12 = type
          movl       0x60(%rdi, %r8, 4),  %r13d         # R13 = offset sub
          incl       %ebx                               # RBX = ERR_DBE_ENTRY
          cmpl       %r10d,               %edx          # valid entry?
          jae        ERR
          movl       $0x05,               %ebx          # RBX = ERR_DBE_BUSY
          testl      $0x0800,             %r14d         # write in progress?
          jne        ERR
          movl       $0x1C,               %ebx          # RBX = ERR_LDR_FORBIDDEN
          cmpq       %rsi,                %rdi          # SystemNumerics?
          je         ERR
          movl       $0x25,               %ebx          # RBX = ERR_DBE_CORRUPT
          testl      $0x4000,             %r14d         # field corrupted?
          jne        ERR
          movl       $0x20,               %ebx          # RBX = ERR_DBE_TYPE
          cmpl       $0x07,               %r12d         # valid type?
          ja         ERR0
          decl       %r12d                              # no type?
          js         ERR0
          addq       %rdi,                %r13          # R13 = EA subfield
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            branch to function
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          jmp        *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc    regular field access     (caller knows what is returned in RAX)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDvpt    crutch for HLL compilers (content of RAX is renamed to "pointer to void")
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   MemHandle            RCX
               RDX   entry                RDX
               R08   subfield             R08
               R09   command (FDA_***)    R09
               20    optional: VOID *     A0[ESP]
               28    optional: DD         A8[ESP]
               -----------------------------------
               RDI   EA field
               RSI   BNR
               R10   max entries
               R11   max size
               R12   type - 1
               R13   EA subfield
               R14   flags MH
               R15   EA buffer
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   depends on function and data type
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Note:    FDA_ADDRESS

                     If erroneous parameters are passed or access rights for SecSys controlled
                     fields are insufficient, RC is set to FIAADR (EA of 32 zeroes in BNR).
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    fdacc:movl       $0x0C,               %ebx          # RBX = ERR_PAR_COMMAND
          cmpl       $0x0F,               %r9d          # valid command?
          jae        ERR0
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SecSys permission check
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movb       USR_RW(%rsi),        %al           # RAX = permission read
          movb       USR_WR(%rsi),        %r10b         # R10 =            write
          jmp        *secT(, %r9, 8)                    # jump table <secT>
          .p2align   4,,15
     secR:movl       $0x1E,               %ebx          # ERR_DBE_NO_READ
          testl      $0x01,               %r14d         # read allowed?
          je         ERR0
          cmpb       0x32(%rdi),          %al           # read permission?
          movl       $0x3E,               %ebx          # ERR_SS_READ
          ja         ERR0
          jmp        0f
          .p2align   4,,15
     secW:movl       $0x1F,               %ebx          # ERR_DBE_NO_READ
          testl      $0x02,               %r14d         # write allowed?
          je         ERR0
          movl       $0x3F,               %ebx          # ERR_SS_WRITE
          cmpb       0x33(%rdi),          %r10b         # write permission?
          ja         ERR0
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            get type, calc data area
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
        0:movq       0x0120(%rsp),        %rbp          # RBP = EA data
          movq       0x0128(%rsp),        %r10          # R10 = numeric data
          movl       $0x00,               FIAERR(%rsi)  # ERR_NO_ERROR
          jmp        *cmd(, %r9, 8)                     # jump table <cmd>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FINAL REGISTER SETTINGS:
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX   -
            RBX   -
            RCX   MemHandle
            RDX   entry number
            R08   subfield
            R09   command
            RDI   EA field
            RSI   BNR
            RBP   PAR5 (EA data)
            R10   PAR6 (numeric data)
            R11   max size
            R12   type - 1
            R13   EA subfield
            R14   flags MH
            R15   EA buffer
            ============================================
            FDA_READ
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Out = FDacc(F, E, S, FDA_READ, X, Y)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBP address target (ignored if 01...03)
            R10 ignored
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX 01...04   DB, DW, DD, DQ
                05...07   0, output 00[RBP]
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Read entry E in subfield S.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     read:jmp        *rdjt(, %r12, 8)                   # jump table <rdjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     rd01:movzb      0x00(%r13, %rdx),    %eax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     rd02:movzwl     0x00(%r13, %rdx, 2), %eax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     rd03:movl       0x00(%r13, %rdx, 4), %eax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     rd04:movq       0x00(%r13, %rdx, 8), %rax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     rd05:shlq       $0x04,               %rdx
          addq       %rdx,                %r13
          movdqa     0x00(%r13),          %xmm0
          movdqu     %xmm0,               0x00(%rbp)
          jmp        XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            FIX
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     rd06:imull      %r11d,               %edx          # RDX = size
          addq       %rdx,                %r13          # R13 = EA entry
          shrl       $0x04,               %r11d         # RDX = owords to move
        0:movdqa     0x00(%r13),          %xmm0
          movdqu     %xmm0,               0x00(%rbp)
          addq       $0x10,               %r13
          addq       $0x10,               %rbp
          decl       %r11d
          jne        0b
          jmp        XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            $32
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     rd07:movl       0x00(%r13, %rdx, 4), %eax          # RAX = offset
          movq       %rdi,                %rbx          # RBX = EA field
          addq       %rax,                %rbx          # RBX = EA string
          testl      %eax,                %eax          # empty string?
          je         3f
          testl      $0x1000,             %r14d         # encrypted?
          jne        1f
          /*
            ~~~~~~~~~~~~
            default
            ~~~~~~~~~~~~
          */
        0:movdqa     0x00(%rbx),          %xmm0         # copy
          movl       0x0C(%rbx),          %eax          # last DD in paragraph
          movdqu     %xmm0,               0x00(%rbp)
          addq       $0x10,               %rbx
          addq       $0x10,               %rbp
          testl      $0xFF000000,         %eax          # string end?
          jne        0b
          jmp        XIZ
          /*
            ~~~~~~~~~~~~
            encrypted
            ~~~~~~~~~~~~
          */
          .p2align   4,,15
        1:movl       0x00(%rbx),          %eax          # EAX = size (incl. 8 byte control data)
          movzwl     0x2A(%rdi),          %edx          # RDX = decode depth   (PAR2)
          movq       %rbp,                %rcx          # RCX = address target (PAR1)
          addl       $0x0F,               %eax          # RAX = size + possible padding
          shrl       $0x04,               %eax          # EAX / 16
        2:movdqa     0x00(%rbx),          %xmm0         # copy
          movdqu     %xmm0,               0x00(%rbp)
          addq       $0x10,               %rbx
          addq       $0x10,               %rbp
          decl       %eax
          jns        2b
          call       _ssDEC
          jmp        XIT                                # we pass the RC of ssDEC()
          /*
            ~~~~~~~~~~~~
            empty
            ~~~~~~~~~~~~
          */
          .p2align   4,,15
        3:movl       %eax,                0x00(%rbp)    # empty string
          jmp        XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_WRITE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_WRITE, X, Y);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBP address source (ignored if 01...04)
            R10 numeric value  (ignored if 05...07)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Write entry E in subfield S.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    write:orw        $0x0804,             0x08(%rcx)    # lock field, set changed
          jmp        *wrjt(, %r12, 8)                   # jump table <wrjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     wr01:movb       %r10b,               0x00(%r13, %rdx)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     wr02:movw       %r10w,               0x00(%r13, %rdx, 2)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     wr03:movl       %r10d,               0x00(%r13, %rdx, 4)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     wr04:movq       %r10,                0x00(%r13, %rdx, 8)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     wr05:shlq       $0x04,               %rdx
          addq       %rdx,                %r13          # EDX = entry
          movdqu     0x00(%rbp),          %xmm0
          movdqa     %xmm0,               0x00(%r13)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            FIX
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     wr06:imull      %r11d,               %edx          # RDX = offset entry
          addq       %rdx,                %r13          # R13 = address entry
          shrl       $0x04,               %r11d         # R11 = paragraphs
        0:movdqu     0x00(%rbp),          %xmm0
          movdqa     %xmm0,               0x00(%r13)
          addq       $0x10,               %rbp
          addq       $0x10,               %r13
          decl       %r11d
          jne        0b
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            $32
            ~~~~~~~~~~~~~~~~~~~~~~
            direct jump to wstr
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_DELETE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_DELETE, 0, 0);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBP ignored
            R10 ignored
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Delete entry E in subfield S.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
   delete:orw        $0x0804,             0x08(%rcx)    # lock field, set changed
          xorl       %eax,                %eax          # RAX = 0
          pxor       %xmm0,               %xmm0         # XM0 = 0
          jmp        *dljt(, %r12, 8)                   # jump table <dljt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     dl01:movb       %al,                 0x00(%r13, %rdx)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     dl02:movw       %ax,                 0x00(%r13, %rdx, 2)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     dl03:movl       %eax,                0x00(%r13, %rdx, 4)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     dl04:movq       %rax,                0x00(%r13, %rdx, 8)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     dl05:shlq       $0x04,               %rdx          # RDX = offset
          addq       %r13,                %rdx          # RDX = EA entry
          movdqa     %xmm0,               0x00(%rdx)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            FIX
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     dl06:imull      %r11d,               %edx          # RDX = offset
          addq       %rdx,                %r13          # R13 = EA entry
          shrl       $0x04,               %r11d         # RDX = paragraphs
        0:movdqa     %xmm0,               0x00(%r13)
          addq       $0x10,               %r13
          decl       %r11d
          jne        0b
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            $32
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     dl07:movq       %rdi,                %rbp          # RBP = empty string
          jmp        wstr
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_COPY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_COPY, 0, X);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RDX entry number target
            RBP ignored
            R10 entry number source
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Copy entry X to entry E.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     copy:movl       $0x23,               %ebx          # ERR_DBE_ENTRY
          cmpl       0x3C(%rdi),          %r10d         # src entry valid?
          jae        ERR
          orw        $0x0804,             0x08(%rcx)    # lock field, set changed
          jmp        *cpyjt(, %r12, 8)                  # jump table <cpyjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cpy01:movb       0x00(%r13, %r10),    %al
          movb       %al,                 0x00(%r13, %rdx)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cpy02:movw       0x00(%r13, %r10, 2), %ax
          movw       %ax,                 0x00(%r13, %rdx, 2)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cpy03:movl       0x00(%r13, %r10, 4), %eax
          movl       %eax,                0x00(%r13, %rdx, 4)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cpy04:movq       0x00(%r13, %r10, 8), %xmm0
          movq       %xmm0,               0x00(%r13, %rdx, 8)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cpy05:shll       $0x04,               %r10d         # R10 = offset source
          shll       $0x04,               %edx          # RDX =        target
          addq       %r13,                %r10          # R10 = EA     source
          addq       %r13,                %rdx          # RDX =        target
          movdqa     0x00(%r10),          %xmm0         # copy
          movdqa     %xmm0,               0x00(%rdx)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            FIX
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cpy06:imulq      %r11,                %r10          # R10 = OF source
          imulq      %r11,                %rdx          # RDX =    target
          addq       %r13,                %r10          # R10 = EA source
          addq       %r13,                %rdx          # RDX =    target
          shrl       $0x04,               %r11d         # R11 = paragraphs
        0:movdqa     0x00(%r10),          %xmm0         # copy
          movdqa     %xmm0,               0x00(%rdx)
          addq       $0x10,               %r10
          addq       $0x10,               %rdx
          decl       %r11d
          jne        0b
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            $32
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cpy07:movl       0x00(%r13, %r10, 4), %eax          # RAX = offset source
          movl       0x00(%r13, %rdx, 4), %r9d          # R09 = offset target
          movq       %rdi,                %rbx          # RBX = EA subfield
          movq       %r15,                %rbp          # RBP = EA buffer
          movq       %r15,                %r10          # R10 = EA buffer
          testl      %eax,                %eax          # empty source string?
          cmove      %rdi,                %rbp          # source is EA field
          je         wstr
          addq       %rax,                %rbx          # RBX = EA entry
          testl      $0x1000,             %r14d         # encrypted?
          jne        1f
          /*
            ~~~~~~~~~~~~
            default
            ~~~~~~~~~~~~
          */
        0:movdqa     0x00(%rbx),          %xmm0         # copy source
          movzb      0x0F(%rbx),          %eax
          movdqa     %xmm0,               0x00(%r10)
          addq       $0x10,               %rbx
          addq       $0x10,               %r10
          testl      %eax,                %eax
          je         wstr
          jmp        0b
          /*
            ~~~~~~~~~~~~
            encrypted
            ~~~~~~~~~~~~
          */
          .p2align   4,,15
        1:movl       0x00(%rbx),          %eax          # EAX = size (incl. 8 byte control data)
          movzwl     0x2A(%rdi),          %edx          # RDX = decode depth   (PAR2)
          movq       %rbp,                %rcx          # RCX = address target (PAR1)
          addl       $0x0F,               %eax          # RAX = size + possible padding
          shrl       $0x04,               %eax          # EAX / 16
        2:movdqa     0x00(%rbx),          %xmm0         # copy
          movdqu     %xmm0,               0x00(%r10)
          addq       $0x10,               %rbx
          addq       $0x10,               %r10
          decl       %eax
          jns        2b
          call       _ssDEC
          movq       0xE8(%rsp),          %rdx          # RDX = entry
          movq       0xF0(%rsp),          %rcx          # RCX = MH
          jmp        wstr
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_MOVE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_MOVE, 0, X);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RDX entry number target
            RBP ignored
            R10 entry number source
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Copy entry X to entry E, then delete X.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     move:movl       $0x23,               %ebx          # ERR_DBE_ENTRY
          cmpl       0x3C(%rdi),          %r10d         # src entry valid?
          jae        ERR
          orw        $0x0804,             0x08(%rcx)    # lock field, set changed
          xorl       %ebx,                %ebx          # RBX = 0
          pxor       %xmm1,               %xmm1         # XM1 = 0
          jmp        *mvjt(, %r12, 8)                   # jump table <mvjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     mv01:movb       0x00(%r13, %r10),    %al                 # copy
          movb       %al,                 0x00(%r13, %rdx)
          movb       %bl,                 0x00(%r13, %r10)    # clear source
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     mv02:movw       0x00(%r13, %r10, 2), %ax                 # copy
          movw       %ax,                 0x00(%r13, %rdx, 2)
          movw       %bx,                 0x00(%r13, %r10, 2) # clear source
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     mv03:movl       0x00(%r13, %r10, 4), %eax                # copy
          movl       %eax,                0x00(%r13, %rdx, 4)
          movl       %ebx,                0x00(%r13, %r10, 4) # clear source
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     mv04:movq       0x00(%r13, %r10, 8), %rax                # copy
          movq       %rax,                0x00(%r13, %rdx, 8)
          movq       %rbx,                0x00(%r13, %r10, 8) # clear source
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     mv05:shlq       $0x04,               %r10          # entry * 16
          shll       $0x04,               %edx
          addq       %r13,                %r10          # entry + EA
          addq       %r13,                %rdx
          movdqa     0x00(%r10),          %xmm0         # copy
          movdqa     %xmm0,               0x00(%rdx)
          movdqa     %xmm1,               0x00(%r10)    # clear source
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            FIX
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     mv06:imull      %r11d,               %r10d         # entries * length
          imull      %r11d,               %edx
          addq       %r13,                %r10          # entries + EA
          addq       %r13,                %rdx
          shrq       $0x04,               %r11          # EAX = paragraphs
        0:movdqa     0x00(%r10),          %xmm0         # copy
          movdqa     %xmm0,               0x00(%rdx)
          movdqa     %xmm1,               0x00(%r10)    # clear source
          addq       $0x10,               %rdx
          addq       $0x10,               %r10
          decq       %r11
          jne        0b
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            $32
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     mv07:movl       0x00(%r13, %r10, 4), %r9d                # R09 = offset source
          movl       0x00(%r13, %rdx, 4), %eax
          movl       %eax,                0x00(%r13, %r10, 4) # move (exchange OTs)
          movl       %r9d,                0x00(%r13, %rdx, 4)
          movq       %r10,                %rdx                # RDX = entry source
          movq       %rdi,                %rbp                # RBP = EA empty string
          jmp        wstr
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_XCHG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_XCHG, 0, X);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RDX entry number target
            RBP ignored
            R10 entry number source
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Exchange entry X with entry E.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     xchg:movl       $0x23,               %ebx          # ERR_DBE_ENTRY
          cmpl       0x3C(%rdi),          %r10d         # src entry valid?
          jae        ERR
          orw        $0x0804,             0x08(%rcx)    # lock field, set changed
          jmp        *xcjt(, %r12, 8)                   # jump table <xcjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     xc01:movb       0x00(%r13, %r10),    %al
          movb       0x00(%r13, %rdx),    %bl
          movb       %bl,                 0x00(%r13, %r10)
          movb       %al,                 0x00(%r13, %rdx)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     xc02:movw       0x00(%r13, %r10, 2), %ax
          movw       0x00(%r13, %rdx, 2), %bx
          movw       %bx,                 0x00(%r13, %r10, 2)
          movw       %ax,                 0x00(%r13, %rdx, 2)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD + $32
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     xc03:movl       0x00(%r13, %r10, 4), %eax
          movl       0x00(%r13, %rdx, 4), %ebx
          movl       %ebx,                0x00(%r13, %r10, 4)
          movl       %eax,                0x00(%r13, %rdx, 4)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     xc04:movq       0x00(%r13, %r10, 8), %rax
          movq       0x00(%r13, %rdx, 8), %rbx
          movq       %rbx,                0x00(%r13, %r10, 8)
          movq       %rax,                0x00(%r13, %rdx, 8)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     xc05:shlq       $0x04,               %r10
          shlq       $0x04,               %rdx
          addq       %r13,                %r10
          addq       %r13,                %rdx
          movdqa     0x00(%r10),          %xmm0
          movdqa     0x00(%rdx),          %xmm1
          movdqa     %xmm1,               0x00(%r10)
          movdqa     %xmm0,               0x00(%rdx)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            FIX
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     xc06:imull      %r11d,               %r10d
          imull      %r11d,               %edx
          addq       %r13,                %r10
          addq       %r13,                %rdx
          shrq       $0x04,               %r11
        0:movdqa     0x00(%r10),          %xmm0
          movdqa     0x00(%rdx),          %xmm1
          movdqa     %xmm1,               0x00(%r10)
          movdqa     %xmm0,               0x00(%rdx)
          addq       $0x10,               %r10
          addq       $0x10,               %rdx
          decq       %r11
          jne        0b
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_ADDRESS
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_ADDRESS, 0, 0);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBP ignored
            RBX ignored
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Get address of entry E in subfield S.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     addr:jmp        *adjt(, %r12, 8)                   # jump table <adjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ad01:leaq       0x00(%r13, %rdx),    %rax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ad02:leaq       0x00(%r13, %rdx, 2), %rax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ad03:leaq       0x00(%r13, %rdx, 4), %rax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ad04:leaq       0x00(%r13, %rdx, 8), %rax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ad05:shll       $0x04,               %edx
          leaq       0x00(%r13, %rdx, 1), %rax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            FIX
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ad06:imulq      %rdx,                %r11
          leaq       0x00(%r13, %r11, 1), %rax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            $32
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            If the [encrypted] flag is set, your strings
            are copied to BBF and the address of BBF is
            returned.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ad07:movl       0x00(%r13, %rdx, 4), %eax          # get  offset
          addq       %rdi,                %rax          # make address
          cmpq       %rdi,                %rax          # empty string?
          je         XIT
          testl      $0x1000,             %r14d         # default?
          je         XIT
          movl       0x00(%rax),          %ebx          # RBX = size
          movzwl     0x2A(%rdi),          %edx          # RDX = decode depth
          movq       %r15,                %rcx          # RCX = buffer
          addl       $0x0F,               %ebx          # RBX = include possible padding
          shrl       $0x04,               %ebx          # RBX = paras
        0:movdqa     0x00(%rax),          %xmm0         # copy
          movdqa     %xmm0,               0x00(%r15)
          addq       $0x10,               %rax
          addq       $0x10,               %r15
          decl       %ebx
          jne        0b
          call       _ssDEC
          movq       %rbp,                %rax          # return BBF!
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_SEARCH
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_SEARCH, X, Y);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RBP address source (ignored if 01...04)
            R10 numeric value  (ignored if 05...07)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX **** ****   found entry
                FFFF FFFF   no match
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Search for pattern. Start with entry E. Find
            more matches by setting E = (RC + 1). Repeat
            searching until FFFFFFFF is returned.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     srch:movl       0x3C(%rdi),          %r9d          # R09 = entries
          xorl       %ebx,                %ebx          # EBX = 0
          movl       %edx,                %eax          # RAX = start
          decl       %r9d                               # R09 = count
          decl       %ebx                               # RBX = no match
          subl       %edx,                %r9d          # R09 = loopc
          cmovs      %ebx,                %eax          # RAX = no match
          js         XIT
          jmp        *scjt(, %r12, 8)                   # jump table <scjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     sc01:cmpb       0x00(%r13, %rax, 1), %r10b         # match?
          je         XIT
          incl       %eax                               # entry++
          decl       %r9d                               # count--
          jns        sc01
          movl       %ebx,                %eax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     sc02:cmpw       0x00(%r13, %rax, 2), %r10w         # match?
          je         XIT
          incl       %eax                               # entry++
          decl       %r9d                               # count--
          jns        sc02
          movl       %ebx,                %eax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     sc03:cmpl       0x00(%r13, %rax, 4), %r10d         # match?
          je         XIT
          incl       %eax                               # entry++
          decl       %r9d                               # count--
          jns        sc03
          movl       %ebx,                %eax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     sc04:cmpq       0x00(%r13, %rax, 8), %r10          # match?
          je         XIT
          incl       %eax                               # entry++
          decl       %r9d                               # count--
          jns        sc04
          movl       %ebx,                %eax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     sc05:shll       $0x04,               %edx          # RDX = offset start
          movq       0x00(%rbp),          %r10          # R10 = lo DQ
          movq       0x08(%rbp),          %r11          # R11 = hi DQ
          addq       %rdx,                %r13          # R13 = EA start
        0:cmpq       0x00(%r13),          %r10          # lo DQ match?
          jne        1f
          cmpq       0x08(%r13),          %r11          # hi DQ match?
          je         XIT
        1:addq       $0x10,               %r13
          incl       %eax
          decl       %r9d
          jns        0b
          movl       %ebx,                %eax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            FIX
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     sc06:imull      %r11d,               %edx          # RDX = offset
          addq       %r13,                %rdx          # RDX = EA entry
          .p2align   4,,15
        0:movq       %rbp,                %r10          # R10 = EA input
          movq       %rdx,                %r12          # R12 = EA entry
          movl       %r11d,               %r15d         # R15 = size
          .p2align   4,,15
        1:movdqu     0x00(%r10),          %xmm0         # XM0 = DO 0 (in)
          movdqu     0x10(%r10),          %xmm1         # XM1 = DO 1 (in)
          pcmpeqb    0x00(%r12),          %xmm0         # XM0 = compare
          pcmpeqb    0x10(%r12),          %xmm1         # XM1 = compare
          pmovmskb   %xmm0,               %r8d          # R08 = mask DO 0
          pmovmskb   %xmm1,               %ecx          # R09 = mask DO 1
          cmpl       $0xFFFF,             %r8d          # all equal?
          jne        2f
          subl       $0x10,               %r15d         # completed?
          je         XIT
          cmpl       $0xFFFF,             %ecx          # all equal?
          jne        2f
          subl       $0x10,               %r15d         # completed?
          je         XIT
          addq       $0x20,               %r10          # next DO (in)
          addq       $0x20,               %r12          # next DO (et)
          jmp        1b
          .p2align   4,,15
        2:incl       %eax                               # RAX = next entry
          addq       %r11,                %rdx          # RDX = EA next entry
          decl       %r9d
          jns        0b
          movl       %ebx,                %eax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            $32
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAUTION!
            --------------------------------------------
            The input pattern is padded with zeroes up
            to the next multiple of 16!

            Searching for encrypted strings returns no
            valid result!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     sc07:movq       %rbp,                %rcx          # RCX = EA input
          xorl       %r8d,                %r8d          # R08 = 0
          call       _SPad
          movl       %eax,                %r8d          # R08 = size input
          cmpl       0x38(%rdi),          %eax          # size > maxsize?
          cmova      %ebx,                %eax          # cannot be found!
          je         XIT
          movl       %edx,                %eax          # RAX = start
          shrq       $0x04,               %r8           # R08 = paragraphs input
          .p2align   4,,15
        0:movdqu     0x00(%rbp),          %xmm0         # XM0 = 1st para
          movl       0x00(%r13, %rax, 4), %r12d         # R12 = offset entry
          movq       %r8,                 %r10          # R10 = pcnt
          testq      %r12,                %r12          # zero?
          je         3f
          addq       %rdi,                %r12          # R12 = EA input
          movq       %rbp,                %rcx          # RCX = EA input
          pcmpeqb    0x00(%r12),          %xmm0         # XM0 = eq pattern
          pmovmskb   %xmm0,               %rdx          # RDX = mask
          cmpl       $0xFFFF,             %edx          # match?
          je         2f
        1:incl       %eax                               # RAX = entry++
          decq       %r9                                # R09 = count--
          jns        0b
          movl       %ebx,                %eax          # RAX = not found
          jmp        XIT
          .p2align   4,,15
        2:addq       $0x10,               %rcx          # RCX = EA input
          addq       $0x10,               %r12          # R12 = EA entry
          decq       %r10                               # pcnt--
          je         XIT
          movdqu     0x00(%rcx),          %xmm0         # XM0 = para input
          pcmpeqb    0x00(%r12),          %xmm0         # XM0 = eq pattern
          pmovmskb   %xmm0,               %rdx          # RDX = mask
          cmpl       $0xFFFF,             %edx          # match?
          jne        0b
          jmp        2b
          .p2align   4,,15
        3:testq      %r8,                 %r8           # empty input?
          je         XIT
          jmp        1b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_COMPARE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_COMPARE, X, Y);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RDX entry
            R08 subfield
            RBP address (types 05...07)
            R10 number  (types 01...04)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX 0000 0000   equal
                positive    entry > pattern  (DQ!)
                negative    entry < pattern  (DQ!)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Compare entry E in subfield S against pat-
            tern (X or Y).
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     comp:jmp        *cmpjt(, %r12, 8)                  # jump table <cmpjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cmp01:movzb      0x00(%r13, %rdx, 1), %eax          # RAX = byte
          andq       $0xFF,%r10
          jmp        0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cmp02:movzwl     0x00(%r13, %rdx, 2), %eax          # RAX = word
          andq       $0xFFFF,%r10
          jmp        0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cmp03:movl       0x00(%r13, %rdx, 4), %eax          # RAX = dword
          andq       $0xFFFFFFFF,%r10
          jmp        0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cmp04:movq       0x00(%r13, %rdx, 8), %rax          # RAX = qword
          jmp        0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            common 01...04
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
        0:subq       %r10,                %rax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cmp05:movq       0x00(%rbp),          %rbx          # RBX = DQloPattern
          movq       0x08(%rbp),          %rcx          # RCX = DQhiPattern
          movq       0x00(%r13, %rdx, 8), %rax          # RAX = DQloEntry
          movq       0x08(%r13, %rdx, 8), %rdx          # RDX = DQhiEntry
          subq       %rbx,                %rax          # lo entry - pattern
          jne        XIT
          sbbq       %rcx,                %rdx          # lo entry - pattern
          movq       %rdx,                %rax          # RAX = result
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            FIX
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cmp06:imull      %r11d,               %edx          # RDX = offset
          addq       %rdx,                %r13          # R10 = EA entry
          shrq       $0x04,               %r11          # R09 = paragraphs
        0:movq       0x00(%rbp),          %rcx          # RCX = loDQpattern
          movq       0x08(%rbp),          %rdx          # RDX = hiDQpattern
          movq       0x00(%r13),          %rax          # RAX = loDQentry
          movq       0x08(%r13),          %rbx          # RBX = hiDQentry
          subq       %rcx,                %rax          # lo entry - pattern
          jne        XIT
          subq       %rdx,                %rbx          # hi entry - pattern
          cmovne     %rbx,                %rax          # RAX <> 0
          jne        XIT
          addq       $0x10,               %rbp          # paragraph++
          addq       $0x10,               %r13          # paragraph++
          decl       %r11d                              # paragraphs--
          je         XIT                                # RAX =  0
          jmp        0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            $32
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAUTION!
            --------
            All input patterns are padded with zeroes up
            to the next multiple of 16.

            Comparison of encrypted strings returns -no-
            valid result. If it did, attackers could get
            valuable information about how those strings
            are organised within the database. Comparing
            encrypted strings doesn't return such clues.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    cmp07:movq       %rbp,                %rcx          # RCX = EA input
          movl       $0x01,               %ebx          # RBX = 1
          xorl       %r9d,                %r9d          # R09 = 0
          call       _SPad
          cmpl       0x38(%rdi),          %eax          # input > maxsize?
          ja         1f
          shrl       $0x04,               %eax          # RAX = pcnt
          movl       0x00(%r13, %rdx, 4), %edx          # RDX = offset
          testl      %edx,                %edx          # empty string?
          je         XIT
          addq       %rdi,                %rdx          # RDX = EA entry
          testl      %eax,                %eax          # empty input?
          je         1f
          .p2align   4,,15
        0:movdqu     0x00(%rbp),          %xmm0         # compare loop
          pcmpeqb    0x00(%rdx),          %xmm0
          pmovmskb   %xmm0,               %r9d          # R09 = mask
          addq       $0x10,               %rbp          # RBP = next para input
          addq       $0x10,               %rdx          # RDX =           entry
          cmpl       $0xFFFF,             %r9d          # equal?
          jne        1f
          decl       %eax                               # pcnt--
          je         XIT
          jmp        0b
          .p2align   4,,15
        1:movl       %ebx,                %eax          # equal if empty input
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_INC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_INC, 0, 0);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RDX entry
            R08 subfield
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Incrementing -1 toggles data to zero! This
            happens in memory -> RC is always zero!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Increment entry E in subfield S.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ninc:orw        $0x0804,             0x08(%rcx)     # lock field, set changed
          jmp        *nijt(, %r12, 8)                    # jump table <nijt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ni01:incb       0x00(%r13, %rdx, 1)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ni02:incw       0x00(%r13, %rdx, 2)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ni03:incl       0x00(%r13, %rdx, 4)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ni04:incq       0x00(%r13, %rdx, 8)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ni05:shlq       $0x04,               %rdx          # RDX * 16
          addq       $0x01,               0x00(%r13, %rdx)
          adcq       $0x00,               0x08(%r13, %rdx)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_DEC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_DEC, 0, 0);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            E   entry
            S   subfield
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RDX entry
            R08 subfield
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Decrementing zero toggles data to -1! This
            happens in memory -> RC is always zero!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Increment entry E in subfield S.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ndec:orw        $0x0804,             0x08(%rcx)    # lock field, set changed
          jmp        *ndjt(, %r12, 8)                   # jump table <ndjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     nd01:decb       0x00(%r13, %rdx, 1)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     nd02:decw       0x00(%r13, %rdx, 2)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     nd03:decl       0x00(%r13, %rdx, 4)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     nd04:decq       0x00(%r13, %rdx, 8)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     nd05:shlq       $0x04,               %rdx          # RDX * 16
          subq       $0x01,               0x00(%r13, %rdx)
          sbbq       $0x00,               0x08(%r13, %rdx)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_ADD
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_ADD, Y, X);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RDX entry
            R08 subfield
            RBP EA DO
            R10 DB, DW, DD or DQ
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            On overflow or underflow, the result wraps
            around. Validate all results if this is of
            concern for you.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Add X (Y) to entry E in subfield S.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     nadd:orw        $0x0804,             0x08(%rcx)    # lock field, set changed
          jmp        *najt(, %r12, 8)                   # jump table <najt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     na01:addb       %r10b,               0x00(%r13, %rdx, 1)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     na02:addw       %r10w,               0x00(%r13, %rdx, 2)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     na03:addl       %r10d,               0x00(%r13, %rdx, 4)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     na04:addq       %r10,                0x00(%r13, %rdx, 8)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     na05:shlq       $0x04,               %rdx          # RDX * 16
          movq       0x00(%rbp),          %rax
          movq       0x08(%rbp),          %rbx
          addq       %rax,                0x00(%r13, %rdx)
          adcq       %rbx,                0x08(%r13, %rdx)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_SUB
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_SUB, Y, X);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RDX entry
            R08 subfield
            RBP EA DO
            R10 DB, DW, DD or DQ
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            On overflow or underflow, the result wraps
            around. Validate all results if this is of
            concern for you.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Subtract X (Y) from entry E in subfield S.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     nsub:orw        $0x0804,             0x08(%rcx)    # lock field, set changed
          jmp        *nsjt(, %r12, 8)                   # jump table <nsjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ns01:subb       %r10b,               0x00(%r13, %rdx, 1)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ns02:subw       %r10w,               0x00(%r13, %rdx, 2)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ns03:subl       %r10d,               0x00(%r13, %rdx, 4)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ns04:subq       %r10,                0x00(%r13, %rdx, 8)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     ns05:shlq       $0x04,               %rdx          # RDX * 16
          movq       0x00(%ebp),          %rax
          movq       0x08(%ebp),          %rbx
          subq       %rax,                0x00(%r13, %rdx)
          sbbq       %rbx,                0x08(%r13, %rdx)
          jmp        UNL
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDA_OFFSET
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FDacc(F, E, S, FDA_OFFSET, 0, 0);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Return offset of entry E relative
            to field base.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     offs:movq       %r13,                %rax          # RAX = EA subfield
          subq       %rdi,                %rax          # RAX = offset subfield
          jmp        *ofjt(, %r12, 8)                   # jump table <ofjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DB
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     of01:addl       %edx,                %eax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DW
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     of02:shrl       %edx
          jmp        of01
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DD
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     of03:shll       $0x02,               %edx
          jmp        of01
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DQ
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     of04:shll       $0x03,               %edx
          jmp        of01
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            DO
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     of05:shll       $0x04,               %edx
          jmp        of01
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            FIX
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     of06:imull      %r11d,               %edx
          jmp        of01
          /*
            ~~~~~~~~~~~~~~~~~~~~~~
            $32
            ~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     of07:movl       0x00(%r13, %rdx, 4), %eax
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                   G A R B A G E   C O L L E C T I O N
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            wstr   write (encrypt) string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX    -
            RBX    -
            RCX    MemHandle
            RDX    entry number
            R08    subfield
            R09    -
            RDI    EA field
            RSI    BNR
            RBP    PAR5 (EA data)
            R10    -
            R11    max size
            R12    -
            R13    EA subfield
            R14    flags MH
            R15    -
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
           <- EAX  always zero
              EBX  RC on error
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
          .def       wstr; .scl 2; .type 32; .endef
     wstr:movl       0x34(%rdi),          %r15d         # R15 = field size
          movl       0x00(%r13, %rdx, 4), %r10d         # R10 = offset entry
          movq       %rbp,                %r9           # R09 = EA   input
          leaq       0x00(%rdi, %r10, 1), %r12          # R12 = EA   entry
          xorl       %eax,                %eax          # RAX = size input
          xorl       %ebx,                %ebx          # RBX =      entry
          /*
            ~~~~~~~~~~~~~~~~~~~~
            process input
            ~~~~~~~~~~~~~~~~~~~~
          */
        0:cmpb       $0x00,               0x00(%r9)           # scan for zero
          je         1f
          incq       %r9                                      # R09 = EA++
          incl       %eax                                     # RAX = size++
          jmp        0b
          .p2align   4,,15
        1:testl      %eax,                %eax                # empty string?
          je         4f
          cmpl       %r11d,               %eax                # RAX >= max size?
          jb         2f
          cmova      %r11d,               %eax                # RAX = max size
          movb       $0x00,               -1(%rbp, %r11, 1)   # truncate!
        2:testl      $0x1000,             %r14d               # encrypted?
          je         3f
          /*
            ~~~~~~~~~~~~~
            encrypted
            ~~~~~~~~~~~~~
          */
          addl       $0x08,               %eax                # RAX + encrypt info
          movzwl     0x2A(%rdi),          %edx                # EDX = encrypt level
          xchg       %rcx,                %rbp                # RCX = EA input, RBP = MH
          cmpl       %r11d,               %eax                # max size exceeded?
          jb         0f
          movb       $0x00,               -9(%rcx, %r11, 1)   # truncate
        0:call       _ssENC
          movq       0xE8(%rsp),          %rdx                # RDX = entry
          xchg       %rcx,                %rbp                # RCX = MH, RBP = EA input
          jmp        4f                                       # RAX = size
          /*
            ~~~~~~~~~~~~~
            default
            ~~~~~~~~~~~~~
          */
          .p2align   4,,15
        3:incl       %eax                               # RAX = size++
          incq       %r9                                # R09 = EA++
          testl      $0x0F,               %eax          # new para?
          je         4f
          movb       $0x00,               0x00(%r9)     # padding
          jmp        3b
          /*
            ~~~~~~~~~~~~~~~~~~~~
            process entry
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
        4:leaq       0x00(%rdi, %r15, 1), %r9           # R09 = EA field end
          testl      $0x1000,             %r14d         # encrypted?
          je         5f
          /*
            ~~~~~~~~~~~~~
            encrypted
            ~~~~~~~~~~~~~
          */
          movl       0x00(%r12),          %ebx          # RBX = size
          addl       $0x0F,               %ebx          # RBX + padding
          andl       $0xFFFFFFF0,         %ebx          # RBX = padded size
          cmove      %r9,                 %r12          # R12 = EA field end if empty
          addq       %rbx,                %r12          # R12 = EA next entry
          jmp        8f
          /*
            ~~~~~~~~~~~~~
            default
            ~~~~~~~~~~~~~
          */
          .p2align   4,,15
        5:cmpq       %rdi,                %r12          # empty string?
          cmove      %r9,                 %r12          # R12 = EA field end if empty
          je         8f
        6:addl       $0x10,               %ebx          # RBX = size++
          cmpb       $0x00,               0x0F(%r12)    # scan for entry end
          je         7f
          addq       $0x10,               %r12          # R12 = EA++
          jmp        6b
          .p2align   4,,15
        7:addq       $0x10,               %r12          # R12 = EA next entry
          /*
            ~~~~~~~~~~~~~~~~~~~~
            field expansion?
            ~~~~~~~~~~~~~~~~~~~~
          */
        8:movl       %eax,                %r9d          # R09 = input size
          subl       %ebx,                %r9d          # R09 = new size
          addl       %r15d,               %r9d          # R09 = new field size
          cmpl       0x10(%rcx),          %r9d          # sufficient memory?
          jb         9f
          /*
            ~~~~~~~~~~~~~
            expand
            ~~~~~~~~~~~~~
          */
          movl       %eax,                0x78(%rsp)    # store input size
          xchgq      %rdx,                %r9           # RDX = new size, R09 = entry
          subq       %rdi,                %r12          # R12 = offset next entry
          subq       %rdi,                %r13          # R13 =        subfield
          call       _LDchg
          movq       0x00(%rcx),          %rdi          # RDI = EA field (new)
          testl      %eax,                %eax          # error?
          jne        XIT
          movl       0x78(%rsp),          %eax          # RAX = input size
          xchgq      %rdx,                %r9           # RDX = entry, R09 = new size
          addq       %rdi,                %r12          # R12 = EA next entry
          addq       %rdi,                %r13          # R13 =    subfield
          /*
            ~~~~~~~~~~~~~~~~~~~~
            prepare & branch
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX    size input
            RBX         entry
            RCX    MemHandle
            RDX    entry number
            R08    subfield
            R09    new field size
            RDI    EA field
            RSI    BNR
            RBP    EA input
            R10    offset entry
            R11    max size
            R12    EA next entry
            R13    EA subfield
            R14    flags MH
            R15    old field size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
        9:orw        $0x0800,             0x30(%rdi)    # field: dirty
          orw        $0x0804,             0x08(%rcx)    # MH   : dirty, changed
          testl      %ebx,                %ebx          # entry present?
          je         wend
          cmpl       %eax,                %ebx          # input <> entry?
          ja         wsdn
          jb         wsup
          /*
            ~~~~~~~~~~~~~~~~~~~~
            input fits
            ~~~~~~~~~~~~~~~~~~~~
          */
          shrl       $0x04,               %eax          # RAX = paras to copy
          addq       %rdi,                %r10          # R10 = EA entry
        0:movdqu     0x00(%rbp),          %xmm0         # copy input to entry
          movdqa     %xmm0,               0x00(%r10)
          addq       $0x10,               %rbp          # RBP = next para
          addq       $0x10,               %r10          # R10 = next para
          decl       %eax                               # RAX = loop_cnt--
          je         UNL
          jmp        0b
          /*
            ~~~~~~~~~~~~~~~~~~~~
            append to end
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     wend:testl      %eax,                %eax                # input present?
          je         UNL
          movl       %r15d,               0x00(%r13, %rdx, 4) # store offset entry
          addl       %eax,                0x34(%rdi)          # new field end (field)
          addl       %eax,                0x14(%rcx)          #               (MH)
          addq       %rdi,                %r15                # R15 = EA old end
          shrl       $0x04,               %eax                # RAX = paras to copy
        0:movdqu     0x00(%rbp),          %xmm0               # copy loop
          movdqa     %xmm0,               0x00(%r15)
          addq       $0x10,               %rbp                # RBP = next para source
          addq       $0x10,               %r15                # R15 =           entry
          decl       %eax                                     # RAX = paras--
          je         UNL
          jmp        0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX    size input
            RBX         entry
            RCX    MemHandle
            RDX    entry number
            R08    subfield
            R09    new field size
            RDI    EA field
            RSI    BNR
            RBP    EA input
            R10    offset entry
            R11    max size
            R12    EA next entry
            R13    EA subfield
            R14    flags MH
            R15    old field size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            input smaller
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     wsdn:movq       %r12,                %r9                 # R09 = EA next
          movq       %r12,                %r11                # R11 = EA next
          addq       %rdi,                %r10                # R10 = EA entry
          subl       %eax,                %ebx                # RBX = gap size
          subq       %rdi,                %r9                 # R09 = offset next
          subl       %ebx,                0x34(%rdi)          # new field end (field)
          subq       %r9,                 %r15                # R15 = byte to move
          subl       %ebx,                0x14(%rcx)          #               (MH)
          shrl       $0x04,               %eax                # RAX = paras input
          jne        0f
          movl       %eax,                0x00(%r13, %rdx, 4) # input is empty string!
          jmp        1f
        0:movdqu     0x00(%rbp),          %xmm0               # write entry
          movdqa     %xmm0,               0x00(%r10)
          addq       $0x10,               %rbp                # RBP = input++
          addq       $0x10,               %r10                # R10 = entry++
          decl       %eax                                     # RAX = loop_cnt--
          jne        0b
        1:movl       %ebx,                %eax                # RAX = gap size
          pxor       %xmm1,               %xmm1               # X01 = zero
          shrq       $0x04,               %r15                # R15 = paras to move
          je         3f
        2:movdqa     0x00(%r11),          %xmm0               # shuffle down
          movdqa     %xmm0,               0x00(%r10)
          addq       $0x10,               %r11                # R11 = source++
          addq       $0x10,               %r10                # R10 = target++
          decq       %r15                                     # R15 = loop_cnt--
          jne        2b
        3:shrl       $0x04,               %eax                # RAX = paras to clear
        4:movdqa     %xmm1,               0x00(%r10)          # clean up remains
          addq       $0x10,               %r10                # R10 = target++
          decl       %eax                                     # RAX = loop_cnt--
          je         wotc
          jmp        4b
          /*
            ~~~~~~~~~~~~~~~~~~~~
            input larger
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     wsup:movq       %r15,                %r9           # R09 = field size
          movq       %r15,                %r11          # R11 = field size
          movl       %r15d,               %edx          # RDX = field size
          subq       %rax,                %rbx          # RBX = gap size (negative!)
          addq       %rdi,                %r9           # R09 = EA field end
          addq       %rdi,                %rdx          # RDX = EA field end
          addq       %rdi,                %r10          # R10 = EA entry
          addq       %rdi,                %r11          # R11 = EA field end
          subq       %rbx,                %r9           # R09 = EA new end
          subq       %r12,                %rdx          # RDX = field end - next entry
          subl       %ebx,                0x14(%rcx)    # new field size (MH)
          subl       %ebx,                0x34(%rdi)    #                (field)
          shrl       $0x04,               %edx          # RDX = paras to move
          shrl       $0x04,               %eax          # RAX = paras to copy
          .p2align   4,,15
        0:subq       $0x10,               %r11          # R11 = EA next source
          subq       $0x10,               %r9           # R09 =         target
          decl       %edx                               # RDX = loop_cnt--
          js         1f
          movdqa     0x00(%r11),          %xmm0         # shuffle up
          movdqa     %xmm0,               0x00(%r9)
          jmp        0b
          .p2align   4,,15
        1:movdqu     0x00(%rbp),          %xmm0         # copy entry
          movdqa     %xmm0,               0x00(%r10)
          addq       $0x10,               %rbp
          addq       $0x10,               %r10
          decl       %eax
          je         wotc
          jmp        1b
          /*
            ~~~~~~~~~~~~~~~~~~~~
            OT correction
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
     wotc:movl       0x24(%rdi),          %r8d          # R08 = subfields
          leaq       0x40(%rdi),          %r10          # R10 = EA type table
          leaq       0x60(%rdi),          %r11          # R11 = EA offs table
          subq       %rdi,                %r12          # R12 = offset next
          .p2align   4,,15
        0:movzb      0x00(%r10),          %eax          # RAX = type
          movl       0x00(%r11),          %edx          # RDX = offset field
          movl       0x3C(%rdi),          %r9d          # R09 = loop_cnt
          cmpl       $0x07,               %eax          # string?
          jne        6f
          addq       %rdi,                %rdx          # RDX = EA subfield OT
          shrl       $0x02,               %r9d          # R09 = loop_cnt
          /*
            ~~~~~~~~~~~~~
            update OT
            ~~~~~~~~~~~~~
          */
          .p2align   4,,15
        1:movl       0x00(%rdx),          %eax          # get 4 entries (4 clocks)
          movl       0x04(%rdx),          %r13d
          movl       0x08(%rdx),          %r14d
          movl       0x0C(%rdx),          %r15d
          cmpl       %r12d,               %eax          # 1st above or equal?
          jb         2f
          subl       %ebx,                %eax          # update 1st
        2:cmpl       %r12d,               %r13d         # 2nd above or equal?
          jb         3f
          subl       %ebx,                %r13d         # update 2nd
        3:cmpl       %r12d,               %r14d         # 3rd above or equal?
          jb         4f
          subl       %ebx,                %r14d         # update 3rd
        4:cmpl       %r12d,               %r15d         # 4th above or equal?
          jb         5f
          subl       %ebx,                %r15d         # update 4th
        5:movl       %eax,                0x00(%rdx)    # write back (triggers WC)
          movl       %r13d,               0x04(%rdx)
          movl       %r14d,               0x08(%rdx)
          movl       %r15d,               0x0C(%rdx)
          addq       $0x10,               %rdx
          decl       %r9d                               # R09 = loop_cnt--
          je         6f
          jmp        1b
          /*
            ~~~~~~~~~~~~~
            loop logic
            ~~~~~~~~~~~~~
          */
          .p2align   4,,15
        6:incq       %r10                               # R10 = next type
          addq       $0x04,               %r11          # R11 =      offset
          decq       %r8                                # R08 = subfields--
          je         UNL
          jmp        0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                      S H I F T   F U N C T I O N S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SftUp   delete last entry, then shift field one entry up
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
           -> RCX   MemHandle
              RDX   start entry (1st moved entry)
              R08   subfield number
              -----------------------------------
              RDI    EA field
              RSI    BNR
              R10    max entries
              R11    type size
              R12    type - 1
              R13    EA subfield
              R14    flags MH
              R15    EA buffer
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SftUp() deletes the last entry in a field, then moves all entries - beginning with
            entry PAR3 - one up. No string is moved, only the offset table is reorganised.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    sftup:movl       %r10d,               %ebp          # RBP = max entries
          cmpl       $0x06,               %r12d         # dynamic string?
          jne        0f
          xchgq      %rdx,                %r10          # R10 = start, RDX = last
          movq       $0x03,               %r9           # R09 = FDA_DELETE
          call       _FDacc
          xchgq      %rdx,                %r10          # RDX = start, R10 = last
          testl      %eax,                %eax
          je         0f
          jmp        XIT
          .p2align   4,,15
        0:decq       %r10                               # R10 = last entry
          decq       %rbp                               # RBP = last entry
          movl       $0x08,               %ebx          # EBX = ERR_PAR_INVALID
          subl       %edx,                %r10d         # R10 = entries to move
          js         ERR
          je         XIZ
          orw        $0x0800,             0x08(%rcx)    # lock MH
          orw        $0x0800,             0x30(%rdi)    #      field
          xorl       %ebx,                %ebx          # RBX = 0
          jmp        *supjt(, %r12, 8)                  # jump table <supjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX   -
            RBX   0
            RCX   MemHandle
            RDX   start entry
            RDI   EA field
            RSI   BNR
            RBP   last (entry number)
            R08   subfield number
            R09   -
            R10   entries to move
            R13   EA subfield
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            type 01
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    supDB:leaq       -1(%r13, %rbp),      %r9           # R09 = EA[last - 1]
        0:movb       0x00(%r9),           %al           # EAX = DB[last - 1]
          movb       %al,                 0x01(%r9)     #    -> DB[last]
          subq       $0x01,               %r9           # one DB down
          decl       %r10d                              # count--
          jne        0b
          movb       %bl,                 0x00(%r9)     # clear gap
          jmp        STS
          /*
            ~~~~~~~~~~~~~~~~~~~~
            type 02
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    supDW:leaq       -2(%r13, %rbp, 2),   %r9           # R09 = EA[last - 1]
        0:movw       0x00(%r9),           %ax           # EAX = DW[next - 1]
          movw       %ax,                 0x02(%r9)     #    -> DW[next]
          subq       $0x02,               %r9           # one DW down
          decl       %r10d                              # count--
          jne        0b
          movw       %bx,                 0x00(%r9)     # clear gap
          jmp        STS
          /*
            ~~~~~~~~~~~~~~~~~~~~
            type 03 + 07
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    supDD:leaq       -4(%r13, %rbp, 4),   %r9           # R09 = EA[last - 1]
        0:movl       0x00(%r9),           %eax          # EAX = DD[last - 1]
          movl       %eax,                0x04(%r9)     #    -> DD[last]
          subq       $0x04,               %r9           # one DD down
          decl       %r10d                              # count--
          jne        0b
          movl       %ebx,                0x00(%r9)     # clear gap
          jmp        STS
          /*
            ~~~~~~~~~~~~~~~~~~~~
            type 04
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    supDQ:leaq       -8(%r13, %rbp, 8),   %r9           # R09 = EA[last - 1]
        0:movq       0x00(%r9),           %rax          # EAX = DQ[next - 1]
          movq       %rax,                0x08(%r9)     #    -> DQ[next]
          subq       $0x08,               %r9           # one DQ down
          decl       %r10d                              # count--
          jne        0b
          movq       %rbx,                0x00(%r9)     # clear gap
          jmp        STS
          /*
            ~~~~~~~~~~~~~~~~~~~~
            type 05
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    supDO:movq       %rbp,                %rax          # RAX = last
          shll       $0x04,               %eax          # EAX = offset [last]
          leaq       -16(%r13, %rax),     %r9           # R09 = EA[last - 1]
          pxor       %xmm1,               %xmm1
        0:movdqa     0x00(%r9),           %xmm0         # EAX = DO[next - 1]
          movdqa     %xmm0,               0x10(%r9)     #    -> DO[next]
          subq       $0x10,               %r9           # one DO down
          decl       %r10d                              # count--
          jne        0b
          movdqa     %xmm1,               0x00(%r9)     # clear gap
          jmp        STS
          /*
            ~~~~~~~~~~~~~~~~~~~~
            type 06
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    supFX:movl       0x38(%rdi),          %ebx          # RBX = entry size
          movl       0x20(%rdi),          %r8d          # R08 = subfield size
          movl       0x20(%rdi),          %r9d          # R09 = subfield size
          movq       %r10,                %rax          # RAX = entries to move
          subl       $0x80,               %r8d          # R08 = offset [last - 1]
          subl       $0x40,               %r9d          # R09 = offset [last]
          imull      %ebx,                %r10d         # R10 = byte to move
          imull      %ebx,                %edx          # RDX = offset start
          imull      %ebx,                %eax          # RAX = byte to move
          shrl       $0x06,               %r10d         # R10 = block count
          shrl       $0x04,               %eax          # RAX = paragraphs to move
          shrl       $0x04,               %ebx          # RBX =            per entry
          addq       %r13,                %r8           # R08 = EA [last - 1]
          addq       %r13,                %r9           # R09 = EA [last]
          andl       $0x03,               %eax          # RAX = remaining paragraphs to move
          addq       %rdx,                %r13          # R13 = EA [start]
          testl      %r10d,               %r10d         # any blocks?
          je         1f
        0:movdqa     0x00(%r8),           %xmm0         # read block
          movdqa     0x10(%r8),           %xmm1
          movdqa     0x20(%r8),           %xmm2
          movdqa     0x30(%r8),           %xmm3
          movdqa     %xmm0,               0x00(%r9)     # write block
          movdqa     %xmm1,               0x10(%r9)
          movdqa     %xmm2,               0x20(%r9)
          movdqa     %xmm3,               0x30(%r9)
          subq       $0x40,               %r8           # one block down
          subq       $0x40,               %r9
          decl       %r10d                              # block count--
          jne        0b
        1:decl       %eax                               # remains--
          jbe        2f
          movdqa     0x00(%r8),           %xmm0         # copy paragraph
          movdqa     %xmm0,               0x00(%r9)
          subq       $0x10,               %r8           # one block down
          subq       $0x10,               %r9
          jmp        1b
        2:pxor       %xmm0,               %xmm0         # XM0 = 0
        3:movdqa     %xmm0,               0x00(%r13)    # clear gap
          addq       $0x10,               %r13          # next paragraph
          decl       %ebx                               # count--
          jne        3b
          jmp        STS
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SftDn   delete entry PAR2, then shift the field one entry down
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
           -> RCX   MemHandle
              RDX   start entry (this one is removed!)
              R08   subfield
              ----------------------------------------
              RDI    EA field
              RSI    BNR
              R10    max entries
              R11    type size
              R12    type - 1
              R13    EA subfield
              R14    flags MH
              R15    EA buffer
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SftDn() deletes entry PAR2, then moves all entries (starting at PAR2 + 1) one unit
            down. Strings are not moved, only the offset table is reorganised.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    sftdn:movl       %r10d,               %ebp          # RBP = max entries
          cmpl       $0x06,               %r12d         # $32?
          jne        0f
          movl       $0x03,               %r9d          # R09 = FDA_DELETE
          call       _FDacc
          testl      %eax,                %eax          # error?
          je         0f
          jmp        XIT
          .p2align   4,,15
        0:decl       %ebp                               # RBP = last entry
          decq       %r10                               # R10 = last entry
          movl       $0x08,               %ebx          # RBX = ERR_PAR_INVALID
          subl       %edx,                %ebp          # RBP = entries to move
          js         ERR
          orw        $0x0800,             0x08(%rcx)    # lock MH
          orw        $0x0800,             0x30(%rdi)    #      field
          xorl       %ebx,                %ebx          # RBX = 0
          jmp        *sdnjt(, %r12, 8)                  # jump table <supjt>
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX   -
            RBX   0
            RCX   MemHandle
            RDX   start entry
            RDI   EA field
            RSI   BNR
            RBP   last (entry number)
            R08   subfield number
            R09   -
            R10   entries to move
            R13   EA subfield
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            type 01
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    sdnDB:testl      %ebp,                %ebp
          je         1f
        0:movb       0x01(%r13, %rdx),    %al                 # read next entry
          movb       %al,                 0x00(%r13, %rdx)    # store as entry
          incl       %edx                                     # next entry
          decl       %ebp                                     # count--
          jne        0b
        1:movb       %bl,                 0x00(%r13, %r10)    # clear last
          jmp        STS
          /*
            ~~~~~~~~~~~~~~~~~~~~
            type 02
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    sdnDW:testl      %ebp,                %ebp
          je         1f
        0:movw       0x02(%r13, %rdx, 2), %ax                 # read next entry
          movw       %ax,                 0x00(%r13, %rdx, 2) # store as entry
          incl       %edx                                     # next entry
          decl       %ebp                                     # count--
          jne        0b
        1:movw       %bx,                 0x00(%r13, %r10, 2) # clear last
          jmp        STS
          /*
            ~~~~~~~~~~~~~~~~~~~~
            type 03 + 07
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    sdnDD:testl      %ebp,                %ebp
          je         1f
        0:movl       0x04(%r13, %rdx, 4), %eax                # read next entry
          movl       %eax,                0x00(%r13, %rdx, 4) # store as entry
          incl       %edx                                     # next entry
          decl       %ebp                                     # count--
          jne        0b
        1:movl       %ebx,                0x00(%r13, %r10, 4) # clear last
          jmp        STS
          /*
            ~~~~~~~~~~~~~~~~~~~~
            type 04
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    sdnDQ:testl      %ebp,                %ebp
          je         1f
        0:movq       0x08(%r13, %rdx, 8), %rax                # read next entry
          movq       %rax,                0x00(%r13, %rdx, 8) # store as entry
          incl       %edx                                     # next entry
          decl       %ebp                                     # count--
          jne        0b
        1:movq       %rbx,                0x00(%r13, %r10, 8) # clear last
          jmp        STS
          /*
            ~~~~~~~~~~~~~~~~~~~~
            type 05
            ~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    sdnDO:shll       $0x04,               %edx          # EDX = offset [start]
          pxor       %xmm1,               %xmm1         # XM1 = 0
          addq       %rdx,                %r13          # R13 = EA [start]
          testl      %ebp,                %ebp
          je         1f
        0:movdqa     0x10(%r13),          %xmm0         # read next entry
          movdqa     %xmm0,               0x00(%r13)    # store as entry
          addq       $0x10,               %r13          # next entry
          decl       %ebp                               # count--
          jne        0b
        1:movdqa     %xmm1,               0x00(%r13)    # clear last
          jmp        STS
          /*
            ~~~~~~~~~~~~~~~~~~~~
            type 06
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAX   -
            RBX   0
            RCX   MemHandle
            RDX   start entry
            RDI   EA field
            RSI   BNR
            RBP   entries to move
            R08   subfield number
            R09   -
            R10   last entry
            R12   type - 1
            R13   EA subfield
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
    sdnFX:movl       0x38(%rdi),          %ebx          # RBX = entry size
          movl       0x20(%rdi),          %r8d          # R08 = subfield size
          movq       %rbp,                %rax          # RAX = entries to move
          movq       %r13,                %r9           # R09 = EA subfield
          imull      %ebx,                %ebp          # EBP = byte to move
          imull      %ebx,                %edx          # EDX = offset start
          subl       %ebx,                %r8d          # R08 = offset last
          shrl       $0x04,               %eax          # EAX = paragraphs to move
          addq       %rdx,                %r9           # R09 = EA start
          shrl       $0x06,               %ebp          # EBP = blocks to move
          addq       %rdx,                %r13          # R13 = EA start
          addq       %rbx,                %r9           # R09 = EA next
          andl       $0x03,               %eax          # EAX = odd paragraphs
          shrl       $0x04,               %ebx          # EBX = paragraphs per entry
          testl      %ebp,                %ebp          # any blocks?
          je         1f
        0:movdqa     0x00(%r9),           %xmm0         # read block
          movdqa     0x10(%r9),           %xmm1
          movdqa     0x20(%r9),           %xmm2
          movdqa     0x30(%r9),           %xmm3
          movdqa     %xmm0,               0x00(%r13)    # write block
          movdqa     %xmm1,               0x10(%r13)
          movdqa     %xmm2,               0x20(%r13)
          movdqa     %xmm3,               0x30(%r13)
          addq       $0x40,               %r9           # next block
          addq       $0x40,               %r13
          decl       %ebp
          jne        0b
        1:decl       %eax                               # odd--
          jbe        2f
          movdqa     0x00(%r9),           %xmm0         # read block
          movdqa     %xmm0,               0x00(%r13)    # write block
          addq       $0x10,               %r9           # next block
          addq       $0x10,               %r13
          jmp        0b
        2:pxor       %xmm0,               %xmm0         # XM0 = 0
        3:movdqa     %xmm0,               0x00(%r13)    # clear last
          addq       $0x10,               %r13
          decl       %ebx
          jne        3b
          jmp        STS
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MemHandle errors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
      ERR:cmpl       $0x00,               0x80(%rsp)    # FDacc?
          je         ERR0
          movl       %ebx,                %eax
          jmp        XIT
          .p2align   4,,15
     ERR0:leaq       FIAADR(%rsi),        %rax          # RAX = EA empty string
          movl       %ebx,                FIAERR(%rsi)  # store error
          cmpl       $0x07,               %r9d          # FDA_ADDRESS?
          jne        XIZ
          jmp        XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EXIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align   4,,15
      STS:orw        $0x04,               0x08(%rcx)    # set changed flag
          .p2align   4,,15
      UNL:andw       $0xF7FF,             0x08(%rcx)    # unlock MH
          andw       $0xF7FF,             0x30(%rdi)    #        field
          .p2align   4,,15
      XIZ:xorl       %eax,                %eax
      XIT:movq       0x88(%rsp),          %rbp
          movq       0x90(%rsp),          %rsi
          movq       0x98(%rsp),          %rdi
          movq       0xA0(%rsp),          %rbx
          movq       0xA8(%rsp),          %r15
          movq       0xB0(%rsp),          %r14
          movq       0xB8(%rsp),          %r13
          movq       0xC0(%rsp),          %r12
          movq       0xC8(%rsp),          %r11
          movq       0xD0(%rsp),          %r10
          movq       0xD8(%rsp),          %r9
          movq       0xE0(%rsp),          %r8
          movq       0xE8(%rsp),          %rdx
          movq       0xF0(%rsp),          %rcx
          addq       $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BMM, 8, 3
          .comm    _BNR, 8, 3
          .comm    _BBF, 8, 3
