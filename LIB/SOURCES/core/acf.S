          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                           D A T A B A S E   E N G I N E                            Кл
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
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К ST-Open's DataBase Engine is optimised for maximum speed. Recent processors assume Кл
          К jump and call targets are aligned to 32 byte cache lines in the instruction cache. Кл
          К If the target instruction is not aligned, execution might be delayed. It is impos- Кл
          К sible to apply speed improvements and to keep code as small as possible. Alignment Кл
          К adds bloat by default - speed optimised code always is larger than equivalent code Кл
          К optimised for minimum size (which, on the other hand, executes sligtly slower).    Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
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
          .quad err0C                        # 0F ???
      cmd:.quad err0                         # 00 FDA_TEST
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
          .quad err0C                        # 0F ???
     rdjt:.quad err20
          .quad rd01                         # DB
          .quad rd02                         # DW
          .quad rd03                         # DD
          .quad rd04                         # DQ
          .quad rd05                         # DO
          .quad rd06                         # FIX
          .quad rd07                         # $32
     wrjt:.quad err20
          .quad wr01                         # DB
          .quad wr02                         # DW
          .quad wr03                         # DD
          .quad wr04                         # DQ
          .quad wr05                         # DO
          .quad wr06                         # FIX
          .quad wr07                         # $32
     dljt:.quad err20
          .quad dl01                         # DB
          .quad dl02                         # DW
          .quad dl03                         # DD
          .quad dl04                         # DQ
          .quad dl05                         # DO
          .quad dl06                         # FIX
          .quad dl07                         # $32
    cpyjt:.quad err20
          .quad cpy01                        # DB
          .quad cpy02                        # DW
          .quad cpy03                        # DD
          .quad cpy04                        # DQ
          .quad cpy05                        # DO
          .quad cpy06                        # FIX
          .quad cpy07                        # $32
     mvjt:.quad err20
          .quad mv01                         # DB
          .quad mv02                         # DW
          .quad mv03                         # DD
          .quad mv04                         # DQ
          .quad mv05                         # DO
          .quad mv06                         # FIX
          .quad mv07                         # $32
     xcjt:.quad err20
          .quad xc01                         # DB
          .quad xc02                         # DW
          .quad xc03                         # DD
          .quad xc04                         # DQ
          .quad xc05                         # DO
          .quad xc06                         # FIX
          .quad xc03                         # $32 (exchange OTs)
     adjt:.quad err20
          .quad ad01                         # DB
          .quad ad02                         # DW
          .quad ad03                         # DD
          .quad ad04                         # DQ
          .quad ad05                         # DO
          .quad ad06                         # FIX
          .quad ad07                         # $32
     scjt:.quad err20
          .quad sc01                         # DB
          .quad sc02                         # DW
          .quad sc03                         # DD
          .quad sc04                         # DQ
          .quad sc05                         # DO
          .quad sc06                         # FIX
          .quad sc07                         # $32
    cmpjt:.quad err20
          .quad cmp01                        # DB
          .quad cmp02                        # DW
          .quad cmp03                        # DD
          .quad cmp04                        # DQ
          .quad cmp05                        # DO
          .quad cmp06                        # FIX
          .quad cmp07                        # $32
     nijt:.quad err20
          .quad ni01                         # DB
          .quad ni02                         # DW
          .quad ni03                         # DD
          .quad ni04                         # DQ
          .quad ni05                         # DO
          .quad err0                         # FIX
          .quad err0                         # $32
     ndjt:.quad err20
          .quad nd01                         # DB
          .quad nd02                         # DW
          .quad nd03                         # DD
          .quad nd04                         # DQ
          .quad nd05                         # DO
          .quad err0                         # FIX
          .quad err0                         # $32
     najt:.quad err20
          .quad na01                         # DB
          .quad na02                         # DW
          .quad na03                         # DD
          .quad na04                         # DQ
          .quad na05                         # DO
          .quad err0                         # FIX
          .quad err0                         # $32
     nsjt:.quad err20
          .quad ns01                         # DB
          .quad ns02                         # DW
          .quad ns03                         # DD
          .quad ns04                         # DQ
          .quad ns05                         # DO
          .quad err0                         # FIX
          .quad err0                         # $32
     ofjt:.quad err20
          .quad of01                         # DB
          .quad of02                         # DW
          .quad of03                         # DD
          .quad of04                         # DQ
          .quad of05                         # DO
          .quad of06                         # FIX
          .quad of07                         # $32
    supjt:.quad sderr                        # 00 invalid
          .quad supDB                        # 01 DB
          .quad supDW                        # 02 DW
          .quad supDD                        # 03 DD
          .quad supDQ                        # 04 DQ
          .quad supDO                        # 05 DO
          .quad supFX                        # 06 FIX
          .quad supDD                        # 07 $32
    sdnjt:.quad sderr                        # 00 invalid
          .quad sdnDB                        # 01 DB
          .quad sdnDW                        # 02 DW
          .quad sdnDD                        # 03 DD
          .quad sdnDQ                        # 04 DQ
          .quad sdnDO                        # 05 DO
          .quad sdnFX                        # 06 FIX
          .quad sdnDD                        # 07 $32
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDacc    regular field access     (caller knows what is returned in RAX)           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDvpt    crutch for HLL compilers (content of RAX is named "pointer to void")      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX    MemHandle                RCX                                              Гл
          Г   RDX    entry                    RDX                                              Гл
          Г   R08    subfield                 R08                                              Гл
          Г   R09    command (FDA_***)        R09                                              Гл
          Г   20     optional: VOID *         A0[ESP]                                          Гл
          Г   28     optional: DD             A8[ESP]                                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX    depends on function and data type                                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Note:    FDA_ADDRESS                                                               Гл
          Г                                                                                    Гл
          Г          If erroneous parameters are passed or access rights for SecSys controlled Гл
          Г          fields are insufficient, the returned address is NULL!                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Because RAX is used to return numeric data, errors are written to 1FCC[BNR]!       Гл
          Г                                                                                    Гл
          Г ERRORS:  0000 0000   ERR_NO_ERROR       no error occured                           Гл
          Г          0000 0001   ERR_ERROR          terminated (unkown reason)                 Гл
          Г          0000 0005   ERR_SYS_DBE_BUSY   previous write not completed               Гл
          Г          0000 0008   ERR_PAR_INVALID    invalid address                            Гл
          Г          0000 000C   ERR_PAR_COMMAND    unknown command                            Гл
          Г          0000 0012   ERR_LDR_RESIZE     BBF resize request failed                  Гл
          Г          0000 0020   ERR_DBE_TYPE       invalid data type                          Гл
          Г          0000 0021   ERR_DBE_MH                 MemHandle                          Гл
          Г          0000 0022   ERR_DBE_SUBFIELD           subfield number                    Гл
          Г          0000 0023   ERR_DBE_ENTRY              entry number                       Гл
          Г          0000 0024   ERR_DBE_WRITE      write string failed                        Гл
          Г          0000 0025   ERR_DBE_CORRUPT    OT corrupted                               Гл
          Г          0000 0026   ERR_DBE_SECSYS     de-/encryption failed                      Гл
          Г          0000 0027   ERR_ENC_NO_SEC     LDR_ENCRYPT but no LDR_SECSYS              Гл
          Г          0000 003C   ERR_SS_ERROR       general SecSys error                       Гл
          Г          0000 003E   ERR_SS_READ        no read permission                         Гл
          Г          0000 003F   ERR_SS_WRITE       no write permission                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _FDvpt
          .def     _FDvpt; .scl 2; .type 32; .endef
          .globl   _FDacc
          .def     _FDacc; .scl 2; .type 32; .endef
   _FDvpt:
   _FDacc:movq     _BMM(%rip),%rax            # RAX = BMM
          subq     $0xB8,%rsp
          nop
          movq     %rcx,0x70(%rsp)
          movq     %rdx,0x78(%rsp)
          movq     %r8, 0x80(%rsp)
          movq     %r9, 0x88(%rsp)
          movq     %r10,0x90(%rsp)
          movq     %rbx,0x98(%rsp)
          movq     %rdi,0xA0(%rsp)
          movq     %rsi,0xA8(%rsp)
          movq     %rbp,0xB0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г get parameters            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллл
          */
          negq     %rax                       # EAX = -(BMM)!
          movq     _BNR(%rip),%rsi            # ESI = BNR
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г validate MH and flags     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллл
          */
          addq     %rcx,%rax                  # RAX = offset
          js       err21
          testq    $0x1F,%rax                 # multiple of 32?
          jne      err21
          subq     $0x1FE0,%rax               # above max?
          ja       err21
          movq     0x00(%rcx),%rdi            # RDI = EA field
          movl     $0x0F,%eax                 # RAX = FDA_ERR
          testl    $0x0800,0x08(%rcx)         # LDR locked?
          jne      err05
          testq    %rdi,%rdi                  # EA = 0?
          je       err21
          testl    $0x4000,0x30(%rdi)         # field corrupted?
          jne      err25
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г validate parameters       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллл
          */
          cmpl     $0x0F,%r9d                 # valid command?
          cmova    %eax,%r9d
          cmpl     0x24(%rdi),%r8d            # valid subfield?
          jae      err22
          cmpl     0x3C(%rdi),%edx            # valid entry?
          jae      err23
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SecSys permission check   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллл
          */
          testb    $0x20,0x31(%rdi)           # SecSys?
          je       0f
          movb     USR_RW(%rsi),%al           #  AL = permission read
          movb     USR_WR(%rsi),%bl           #  BL =            write
          jmp      *secT(, %r9, 8)            # jump table <secT>
          .p2align 4,,15
     secR:cmpb     0x32(%rdi),%al             # read permission?
          jbe      0f
          jmp      err3E
          .p2align 4,,15
     secW:cmpb     0x33(%rdi),%bl             #  write permission?
          jbe      0f
          jmp      err3F
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г update time stamp         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:testb    $0x20,0x08(%rcx)           # static?
          jne      1f
          call     _GetTime
          movl     %eax,0x0C(%rcx)            # update LDT time stamp
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г get type, calc data area  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллл
          */
        1:cmpq     %rsi,%rdi                  # SysNumerics?
          jne      2f
          xorq     %r10,%r10                  # no header
          movl     $0x03,%eax                 # data type = DD
          jmp      3f
        2:movzb    0x40(%rdi, %r8, 1),%eax    # EAX = type
          movl     0x60(%rdi, %r8, 4),%r10d   # R10 = offset
        3:movq     0xE0(%rsp),%rbp            # RBP = EA data
          movq     0xE8(%rsp),%rbx            # RBX = numeric data
          cmpl     $0x07,%eax                 # valid type?
          ja       err20
          addq     %rdi,%r10                  # R10 = EA subfield
          jmp      *cmd(, %r9, 8)             # jump table <cmd>
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FINAL REGISTER SETTINGS:           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RAX   data type                    Гл
          Г RBX   PAR6 (numeric data)          Гл
          Г RCX   MemHandle                    Гл
          Г RDX   entry number                 Гл
          Г RDI   EA field                     Гл
          Г RSI   BNR                          Гл
          Г RBP   PAR5 (EA data)               Гл
          Г R08   ## subfield                  Гл
          Г R09   command                      Гл
          Г R10   EA subfield                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_READ                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Out = FDacc(F, E, S, FDA_READ, X, Y)       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RBP address target (ignored if 01...03)    Гл
          Г RBX ignored                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RAX 01...04   DB, DW, DD, DQ               Гл
          Г RAX 05...07   0, output 00[RBP]            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Read entry E in subfield S.                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     read:jmp      *rdjt(, %rax, 8)           # jump table <rdjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd01:movzb    0x00(%r10, %rdx, 1),%eax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd02:movzwl   0x00(%r10, %rdx, 2),%eax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd03:movl     0x00(%r10, %rdx, 4),%eax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd04:movq     0x00(%r10, %rdx, 8),%rax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd05:shlq     $0x04,%rdx
          addq     %rdx,%r10
          movdqa   0x00(%r10),%xmm0
          movdqu   %xmm0,0x00(%rbp)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd06:movl     0x38(%rdi),%eax            # EAX = size
          andq     $0xFFFFFFF0,%rbx           # align target
          imulq    %rax,%rdx
          addq     %rdx,%r10
          shrq     $0x04,%rax                 # EAX = owords to move
        0:movdqa   0x00(%r10),%xmm0
          addq     $0x10,%rdx
          movdqa   %xmm0,0x00(%rbp)
          addq     $0x10,%rbp
          decl     %eax
          jne      0b
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd07:movl     0x00(%r10, %rdx, 4),%eax   # RAX = offset
          movq     %rdi,%rbx                  # RBX = address field  (we have to
          addq     %rax,%rbx                  # RBX =         source  wait for RAX)
          testl    %eax,%eax                  # empty string?
          jne      0f
          movl     %eax,0x00(%rbp)            # empty string
          jmp      err00
        0:testb    $0x10,0x31(%rdi)           # encrypted?
          jne      2f
        1:movdqa   0x00(%rbx),%xmm0           # copy
          movl     0x0C(%rbx),%eax            # last DD in paragraph
          addq     $0x10,%rbx
          movdqu   %xmm0,0x00(%rbp)
          addq     $0x10,%rbp
          testl    $0xFF000000,%eax           # string end?
          jne      1b
          jmp      err00
        2:movl     0x00(%rbx),%eax            # EAX = size (incl. 8 byte control data)
          movzwl   0x2A(%rdi),%edx            # RDX = decode depth   (PAR2)
          movq     %rbp,%rcx                  # RCX = address target (PAR1)
          shrl     $0x04,%eax                 # EAX / 16
        3:movdqa   0x00(%rbx),%xmm0
          addq     $0x10,%rbx
          movdqu   %xmm0,0x00(%rbp)
          addq     $0x10,%rbp
          decl     %eax
          jns      3b
          call     _ssDEC
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_WRITE                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_WRITE, X, Y);           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RBP address source (ignored if 01...04)    Гл
          Г RBX numeric value  (ignored if 05...08)    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Write entry E in subfield S.               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    write:orl      $0x0804,0x08(%rcx)         # lock field, set changed
          jmp      *wrjt(, %rax, 8)           # jump table <wrjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr01:movb     %bl,0x00(%r10, %rdx, 1)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr02:movw     %bx,0x00(%r10, %rdx, 2)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr03:movl     %ebx,0x00(%r10, %rdx, 4)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr04:movq     %rbx,0x00(%r10, %rdx, 8)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr05:shlq     $0x04,%rdx
          addq     %rdx,%r10                  # EDX = entry
          movdqu   0x00(%rbp),%xmm0
          movdqa   %xmm0,0x00(%r10)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr06:movl     0x38(%rdi),%eax            # RAX = size
          imulq    %rax,%rdx                  # RDX = offset entry
          andq     $0xFFFFFFF0,%rbp           # RBP = source (aligned)
          addq     %rdi,%rdx                  # RDX = address entry
          shrl     $0x04,%eax                 # EAX = paragraphs
        0:movdqa   0x00(%rbp),%xmm0
          addq     $0x10,%rbp
          movdqa   %xmm0,0x00(%rdx)
          addq     $0x10,%rdx
          decl     %eax
          jne      0b
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr07:movl     0x00(%r10, %rdx, 4),%r9d   # R09 = offset
          call     wstr
          testl    %ebx,%ebx
          jne      xit
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_DELETE                                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_DELETE, 0, 0);          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RBP ignored                                Гл
          Г RBX ignored                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Delete entry E in subfield S.              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   delete:orl      $0x0804,0x08(%rcx)         # lock field, set changed
          xorq     %rbx,%rbx
          pxor     %xmm0,%xmm0
          jmp      *dljt(, %rax, 8)           # jump table <dljt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl01:movb     %bl,0x00(%r10, %rdx, 1)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl02:movw     %bx,0x00(%r10, %rdx, 2)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl03:movl     %ebx,0x00(%r10, %rdx, 4)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl04:movq     %rbx,0x00(%r10, %rdx, 8)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl05:shlq     $0x04,%rdx                 # RDX = offset
          addq     %r10,%rdx                  # RDX = EA entry
          movdqa   %xmm0,0x00(%rdx)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl06:movl     0x38(%edi),%eax            # RAX = size
          imulq    %rax,%rdx                  # RDX = offset
          addq     %r10,%rdx                  # RDX = address
          shrl     $0x04,%eax                 # RAX = paragraphs
        0:movdqa   %xmm0,0x00(%rdx)
          addq     $0x10,%rdx
          decl     %eax
          jne      0b
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl07:movl     0x00(%r10, %rdx, 4),%r9d   # R09 = offset
          movq     %rdi,%rbp                  # EBX = empty string
          call     wstr
          testl    %ebx,%ebx
          jne      xit
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_COPY                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_COPY, 0, X);            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RDX entry number target                    Гл
          Г RBP ignored                                Гл
          Г RBX entry number source                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Copy entry X to entry E.                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     copy:orl      $0x0804,0x08(%rcx)         # lock field, set changed
          jmp      *cpyjt(, %rax, 8)          # jump table <cpyjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy01:movb     0x00(%r10, %rbx, 1),%al
          movb     %al,0x00(%r10, %rdx, 1)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy02:movw     0x00(%r10, %rbx, 2),%ax
          movw     %ax,0x00(%r10, %rdx, 2)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy03:movl     0x00(%r10, %rbx, 4),%eax
          movl     %eax,0x00(%r10, %rdx, 4)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy04:movq     0x00(%r10, %rbx, 8),%xmm0
          movq     %xmm0,0x00(%r10, %rdx, 8)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy05:shlq     $0x04,%rbx                 # EBX = offset source
          shlq     $0x04,%rdx                 # RDX =        target
          addq     %r10,%rbx                  # EBX = EA     source
          addq     %r10,%rdx                  # ECX =        target
          movdqa   0x00(%rbx),%xmm0
          movdqa   %xmm0,0x00(%rdx)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy06:movl     0x38(%rdi),%eax            # EAX = length
          imulq    %rax,%rbx                  # EBX = OF source
          imulq    %rax,%rdx                  # ECX = OF target
          addq     %r10,%rbx                  # EDI = EA source
          addq     %r10,%rdx                  # EDX = EA target
          shrl     $0x04,%eax                 # EAX = paragraphs
        0:movdqa   0x00(%rbx),%xmm0
          addq     $0x10,%rbx
          movdqa   %xmm0,0x00(%rdx)
          addq     $0x10,%rdx
          decl     %eax
          jne      0b
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г The new copy function saves redundant copy Гл
          Г operations. The target is deleted to force Гл
          Г a garbage collection, so the source can be Гл
          Г copied to the end of the field -without- a Гл
          Г temporary buffer.                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy07:movl     0x00(%r10, %rdx, 4),%r9d   # R09 = offset target
          movq     %rdi,%rbp                  # RBP = empty string at 00[EA]
          call     wstr
          testl    %ebx,%ebx
          jne      xit
          movl     0x00(%r10, %rbx, 4),%eax   # RAX = offset source
          movq     %rdi,%rbp                  # RBP = field base
          addq     %rax,%rbp                  # RBP = EA source
          call     wstr
          testl    %ebx,%ebx
          jne      xit
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_MOVE                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_MOVE, 0, X);            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RDX entry number target                    Гл
          Г RBP ignored                                Гл
          Г RBX entry number source                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Copy entry X to entry E, then delete X.    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     move:orl      $0x0804,0x08(%rcx)         # lock field, set changed
          pxor     %xmm1,%xmm1
          jmp      *mvjt(, %rax, 8)           # jump table <mvjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv01:movb     0x00(%r10, %rbx, 1),%al    # copy
          movb     %al,0x00(%r10, %rdx, 1)
          movb     $0x00,0x00(%r10, %rbx, 1)  # clear source
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv02:movw     0x00(%r10, %rbx, 2),%ax    # copy
          movw     %ax,0x00(%r10, %rdx, 2)
          movw     $0x00,0x00(%r10, %rbx, 2)  # clear source
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv03:movl     0x00(%r10, %rbx, 4),%eax   # copy
          movl     %eax,0x00(%r10, %rdx, 4)
          movd     %xmm1,0x00(%r10, %rbx, 4)  # clear source
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv04:movq     0x00(%r10, %rbx, 8),%rax   # copy
          movq     %rax,0x00(%r10, %rdx, 8)
          movq     %xmm1,0x00(%r10, %rbx, 8)  # clear source
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv05:shlq     $0x04,%rbx                 # entry * 16
          shlq     $0x04,%rdx
          addq     %r10,%rbx                  # entry + EA
          addq     %r10,%rdx
          movdqa   0x00(%rbx),%xmm0           # copy
          movdqa   %xmm0,0x00(%rdx)
          movdqa   %xmm1,0x00(%rbx)           # clear source
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv06:movl     0x38(%edi),%eax            # EAX = length
          imulq    %rax,%rbx                  # entries * length
          imulq    %rax,%rdx
          addq     %r10,%rbx                  # entries + EA
          addq     %r10,%rdx
          shrq     $0x04,%rax                 # EAX = paragraphs
        0:movdqa   0x00(%rbx),%xmm0           # copy
          movdqa   %xmm0,0x00(%rdx)
          movdqa   %xmm1,0x00(%rbx)           # clear source
          addq     $0x10,%rdx
          addq     $0x10,%rbx
          decl     %eax
          jne      0b
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv07:movl     0x00(%r10, %rbx, 4),%r9d   # R09 = offset source
          movl     0x00(%r10, %rdx, 4),%eax
          movl     %eax,0x00(%r10, %rbx, 4)   # exchange
          movl     %r9d,0x00(%r10, %rdx, 4)
          movq     %rbx,%rdx                  # RDX = source
          movq     %rdi,%rbp                  # RBP = empty string
          call     wstr
          testl    %ebx,%ebx
          jne      xit
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_XCHG                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_XCHG, 0, X);            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RDX entry number target                    Гл
          Г RBP ignored                                Гл
          Г RBX entry number source                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Exchange entry X with entry E.             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     xchg:orl      $0x0804,0x08(%rcx)         # lock field, set changed
          jmp      *xcjt(, %rax, 8)           # jump table <xcjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     xc01:movb     0x00(%r10, %rbx, 1),%al
          movb     0x00(%r10, %rdx, 1),%bpl
          movb     %bpl,0x00(%r10, %rbx, 1)
          movb     %al,0x00(%r10, %rdx, 1)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     xc02:movw     0x00(%r10, %rbx, 2),%ax
          movw     0x00(%r10, %rdx, 2),%bp
          movw     %bp,0x00(%r10, %rbx, 2)
          movw     %ax,0x00(%r10, %rdx, 2)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD + $32            Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     xc03:movl     0x00(%r10, %rbx, 4),%eax
          movl     0x00(%r10, %rdx, 4),%ebp
          movl     %ebp,0x00(%r10, %rbx, 4)
          movl     %eax,0x00(%r10, %rdx, 4)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     xc04:movq     0x00(%r10, %rbx, 8),%rax
          movq     0x00(%r10, %rdx, 8),%rbp
          movq     %rbp,0x00(%r10, %rbx, 8)
          movq     %rax,0x00(%r10, %rdx, 8)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     xc05:shlq     $0x04,%rbx
          shlq     $0x04,%rdx
          addq     %r10,%rbx
          addq     %r10,%rdx
          movdqa   0x00(%rbx),%xmm0
          movdqa   0x00(%rdx),%xmm1
          movdqa   %xmm1,0x00(%rbx)
          movdqa   %xmm0,0x00(%rdx)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     xc06:movl     0x38(%eax),%eax            # EAX = length
          imulq    %rax,%rbx
          imulq    %rax,%rdx
          addq     %r10,%rbx
          addq     %r10,%rdx
          shrl     $0x04,%eax
        0:movdqa   0x00(%rbx),%xmm0
          movdqa   0x00(%rdx),%xmm1
          movdqa   %xmm1,0x00(%rbx)
          movdqa   %xmm0,0x00(%rdx)
          addq     $0x10,%rbx
          addq     $0x10,%rdx
          decl     %eax
          jne      0b
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_ADDRESS                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_ADDRESS, 0, 0);         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RBP ignored                                Гл
          Г RBX ignored                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Get address of entry E in subfield S.      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     addr:jmp      *adjt(, %rax, 8)           # jump table <adjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ad01:leaq     0x00(%r10, %rdx, 1),%rax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ad02:leaq     0x00(%r10, %rdx, 2),%rax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ad03:leaq     0x00(%r10, %rdx, 4),%rax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ad04:leaq     0x00(%r10, %rdx, 8),%rax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ad05:shll     $0x04,%edx
          leaq     0x00(%r10, %rdx),%rax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ad06:movl     0x38(%rdi),%eax
          imulq    %rdx,%rax
          addq     %r10,%rax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г If the [encrypted] flag is set, the string Гл
          Г is copied to BBF and the address of BBF is Гл
          Г returned. Now, accessing encrypted strings Гл
          Г via their address is transparent for auto- Гл
          Г mated functions like DLGtxt().             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     ad07:movl     0x00(%r10, %rdx, 4),%eax   # get  offset
          addq     %rdi,%rax                  # make address
          cmpq     %rdi,%rax                  # empty string?
          je       err00
          testb    $0x10,0x31(%rdi)           # default?
          je       err00
          movl     0x00(%rax),%ebx            # RBX = size
          movq     _BBF,%rbp                  # RBP = buffer
          movzwl   0x2A(%rdi),%edx            # RDX = decode depth
          movq     %rbp,%rcx                  # RCX = buffer
          shrq     $0x04,%rbx                 # RBX / 16
        0:movdqa   0x00(%rax),%xmm0           # copy
          addq     $0x10,%rax
          movdqa   %xmm0,0x00(%rbp)
          addq     $0x10,%rbp
          decl     %ebx
          jns      0b
          call     _ssDEC
          movq     %rbp,%rax                  # return BBF!
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_SEARCH                                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_SEARCH, X, Y);          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RBP address source (ignored if 01...04)    Гл
          Г RBX numeric value  (ignored if 05...08)    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г <-  **** ****   found entry                Гл
          Г     FFFF FFFF   no match                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Search for pattern. Start with entry E. To Гл
          Г find more matches set E = (RC+1). Redo the Гл
          Г search until FFFFFFFF is returned.         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     srch:movl     0x3C(%rdi),%r9d            # R09 = entries
          movl     %eax,%r8d                  # R08 = type
          movl     %edx,%eax                  # RAX = start
          subl     %edx,%r9d                  # R09 = loopc
          jbe      scFF
          jmp      *scjt(, %r8, 8)            # jump table <scjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     sc01:cmpb     0x00(%r10, %rax, 1),%bl
          je       err00                      # match
          incl     %eax                       # entry++
          decl     %r9d                       # loopc--
          jne      sc01
          jmp      scFF
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     sc02:cmpw     0x00(%r10, %rax, 2),%bx
          je       err00                      # match
          incl     %eax                       # entry++
          decl     %r9d                       # loopc++
          jne      sc02
          jmp      scFF
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     sc03:cmpl     0x00(%r10, %rax, 4),%ebx
          je       err00                      # match
          incl     %eax                       # entry++
          decl     %r9d                       # loopc--
          jne      sc03
          jmp      scFF
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     sc04:cmpq     0x00(%r10, %rax, 8),%rbx
          je       err00                      # match
          incl     %eax                       # entry++
          decl     %r9d                       # loopc--
          jne      sc04
          jmp      scFF
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     sc05:shlq     $0x04,%rdx                 # RDX = offset start
          movq     0x00(%rbp),%rbx            # RBX = lo DQ
          movq     0x08(%rbp),%r8             # R08 = hi DQ
          addq     %rdx,%r10                  # R10 = EA start
        0:cmpq     0x00(%r10),%rbx            # lo DQ match?
          jne      1f
          cmpq     0x08(%r10),%r8             # hi DQ match?
          je       err00
        1:addq     $0x10,%r10
          incl     %eax
          decl     %r9d
          jne      0b
          jmp      scFF
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     sc06:movl     0x38(%rdi),%edx            # EDX = size
          movq     %rax,%r8                   # R08 = start
          movq     0x00(%rbp),%rbx            # RBX = 1st DQ
          movq     %rdx,%rcx                  # RCX = size
          imulq    %rdx,%r8                   # R08 = offset
          addq     %r8,%r10                   # R10 = EA start
        0:subq     $0x08,%rcx                 # RCX = offset last DQ
          cmpq     0x00(%r10),%rbx            # 1st DQ equal?
          je       2f
        1:movq     %rdx,%rcx                  # RCX = size
          addq     %rdx,%r10                  # R10 + size
          incl     %eax                       # entry++
          decl     %r9d                       # loopc--
          je       scFF
          jmp      0b
        2:movq     0x00(%r10, %rcx),%r8       # R08 = next DQ
          cmpq     0x00(%rbp, %rcx),%r8       # match?
          jne      1b
          subq     $0x08,%rcx                 # one DQ down
          jne      2b                         # if ECX = 0, all
          jmp      err00                      # DQs were equal!
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г CAUTION!                                   Гл
          Г ФФФФФФФФ                                   Гл
          Г Searching for encrypted strings returns no Гл
          Г valid result!                              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     sc07:movq     0x00(%rbp),%rbx            # RBX = DQ pattern
        0:movl     0x00(%r10, %rax, 4),%r8d   # R08 = offset
          xorl     %edx,%edx                  # EDX = offset
          addq     %rdi,%r8                   # R08 = EA entry
        1:cmpq     0x00(%r8,  %rdx),%rbx      # equal?
          je       2f
          incl     %eax                       # RAX = entry++
          decl     %r9d                       # R09 = count--
          je       scFF
          jmp      0b
        2:movq     0x08(%rbp, %rdx),%rbx      # RBX = DQ pattern
          cmpq     0x08(%r8,  %rdx),%rbx      # equal?
          jne      sc07
          bswap    %rbx                       # RBX = reverse
          addl     $0x08,%edx                 # RDX = next DQ
          testl    $0xFF,%ebx                 # pattern end?
          je       err00
          jmp      2b
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г common: not found   Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     scFF:movl     $0xFFFFFFFF,%eax           # EAX = FFFFFFFF
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_COMPARE                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_COMPARE, X, Y);         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RDX entry                                  Гл
          Г R08 subfield                               Гл
          Г RBP address (types 04...08)                Гл
          Г RBX number  (types 01...03)                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г <-  0000 0000   equal                      Гл
          Г     positive    entry > pattern  (DQ!)     Гл
          Г     negative    entry < pattern  (DQ!)     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Compare entry E in subfield S against pat- Гл
          Г tern (X or Y).                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     comp:jmp      *cmpjt(, %rax, 8)          # jump table <cmpjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp01:movzb    0x00(%r10, %rdx, 1),%eax   # RAX = byte
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp02:movzwl   0x00(%r10, %rdx, 2),%eax   # RAX = word
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp03:movl     0x00(%r10, %rdx, 4),%eax   # RAX = dword
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp04:movq     0x00(%r10, %rdx, 8),%rax   # RAX = qword
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г common 01...04      Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
        0:subq     %rbx,%rax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp05:movq     0x00(%rbp),%rbx            # RBX = DQloPattern
          movq     0x08(%rbp),%rcx            # RCX = DQhiPattern
          movq     0x00(%r10, %rdx, 8),%rax   # RAX = DQloEntry
          movq     0x08(%r10, %rdx, 8),%rdx   # RDX = DQhiEntry
          subq     %rbx,%rax                  # lo entry - pattern
          jne      err00
          subq     %rcx,%rdx                  # lo entry - pattern
          movq     %rdx,%rax                  # RAX = result
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp06:movl     0x38(%rdi),%r9d            # R09 = size
          imulq    %r9,%rdx                   # RDX = offset
          addq     %rdx,%r10                  # R10 = EA entry
          shrq     $0x04,%r9                  # R09 = paragraphs
        0:movq     0x00(%rbp),%rcx            # RCX = loDQpattern
          movq     0x08(%rbp),%rdx            # RDX = hiDQpattern
          movq     0x00(%r10),%rax            # RAX = loDQentry
          movq     0x08(%r10),%rbx            # RBX = hiDQentry
          subq     %rcx,%rax                  # lo entry - pattern
          jne      err00
          subq     %rdx,%rbx                  # hi entry - pattern
          jne      1f
          addq     $0x10,%r10                 # paragraph++
          addq     $0x10,%rbp                 # paragraph++
          decl     %r9d                       # paragraphs--
          je       err00                      # RAX =  0
          jmp      0b
        1:movq     %rbx,%rax                  # RAX <> 0
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г CAUTION!                                   Гл
          Г ФФФФФФФФ                                   Гл
          Г Comparison of encrypted strings returns no Гл
          Г valid result!                              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp07:movl     0x00(%r10, %rdx, 4),%r10d  # R09 = offset
          addq     %rdi,%r10                  # R09 = EA entry
        0:movq     0x00(%rbp),%rbx            # RBX = DQ1pattern
          movq     0x08(%rbp),%rcx            # RCX = DQ2pattern
          movq     0x10(%rbp),%rdx            # RDX = DQ3pattern
          movq     0x00(%r10),%rax            # RAX = DQ1entry
          movq     0x08(%r10),%r8             # R08 = DQ2entry
          movq     0x10(%r10),%r9             # R09 = DQ3entry
          subq     %rbx,%rax                  # DQ1 entry - pattern
          jne      err00
          shrq     $0x38,%rbx                 # pattern end? (rax -is- zero!)
          testl    $0xFF,%ebx
          je       err00
          subq     %rcx,%r8                   # DQ2 entry - pattern
          jne      1f
          shrq     $0x38,%r8                  # pattern end? (rax -is- zero!)
          testl    $0xFF,%r8d
          je       err00
          subq     %rdx,%r9                   # DQ3 entry - pattern
          jne      2f
          shrq     $0x38,%r9                  # pattern end? (rax -is- zero!)
          je       err00
          addq     $0x18,%r10                 # paragraph++
          addq     $0x18,%rbp                 # paragraph++
          jne      0b
          jmp      err00                      # RAX =  0
        1:movq     %r8,%rax                   # RAX <> 0
          jmp      err00
        2:movq     %r9,%rax                   # RAX <> 0
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_INC                                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_INC, 0, 0);             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RDX entry                                  Гл
          Г R08 subfield                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Incrementing -1 toggles data to zero! This Гл
          Г happens in memory -> RC is always zero!    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Increment entry E in subfield S.           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     ninc:orl      $0x0804,0x08(%rcx)         # lock field, set changed
          jmp      *nijt(, %rax, 8)           # jump table <nijt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ni01:incb     0x00(%r10, %rdx, 1)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ni02:incw     0x00(%r10, %rdx, 2)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ni03:incl     0x00(%r10, %rdx, 4)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ni04:addq     $0x01,0x00(%r10, %rdx, 8)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ni05:shlq     $0x04,%rdx                 # RDX * 16
          addq     $0x01,0x00(%r10, %rdx)
          adcq     $0x00,0x08(%r10, %rdx)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_DEC                                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_DEC, 0, 0);             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г E   entry                                  Гл
          Г S   subfield                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RDX entry                                  Гл
          Г R08 subfield                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Decrementing zero toggles data to -1! This Гл
          Г happens in memory -> RC is always zero!    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Increment entry E in subfield S.           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     ndec:orl      $0x0804,0x08(%rcx)         # lock field, set changed
          jmp      *ndjt(, %rax, 8)           # jump table <ndjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     nd01:decb     0x00(%r10, %rdx, 1)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     nd02:decw     0x00(%r10, %rdx, 2)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     nd03:decl     0x00(%r10, %rdx, 4)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     nd04:subq     $0x01,0x00(%r10, %rdx, 8)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     nd05:shlq     $0x04,%rdx                 # RDX * 16
          subq     $0x01,0x00(%r10, %rdx)
          sbbq     $0x00,0x08(%r10, %rdx)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_ADD                                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_ADD, Y, X);             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RDX entry                                  Гл
          Г R08 subfield                               Гл
          Г RBP EA DO                                  Гл
          Г RBX DB, DW, DD or DQ                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г On overflow or underflow, the result wraps Гл
          Г around. Validate all results if this is of Гл
          Г concern for you.                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Add X (Y) to entry E in subfield S.        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     nadd:orl      $0x0804,0x08(%rcx)         # lock field, set changed
          jmp      *najt(, %eax, 4)           # jump table <najt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     na01:addb %bl,0x00(%r10, %rdx, 1)
          jmp err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     na02:addw     %bx,0x00(%r10, %rdx, 2)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     na03:addl     %ebx,0x00(%r10, %rdx, 4)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     na04:addq     %rbx,0x00(%r10, %rdx, 8)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     na05:shlq     $0x04,%rdx                 # RDX * 16
          movq     0x00(%rbp),%rax
          movq     0x08(%rbp),%rbx
          addq     %rax,0x00(%r10, %rdx)
          adcq     %rbx,0x08(%r10, %rdx)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_SUB                                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_SUB, Y, X);             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RDX entry                                  Гл
          Г R08 subfield                               Гл
          Г RBP EA DO                                  Гл
          Г RBX DB, DW, DD or DQ                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г On overflow or underflow, the result wraps Гл
          Г around. Validate all results if this is of Гл
          Г concern for you.                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Subtract X (Y) from entry E in subfield S. Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     nsub:orl      $0x0804,0x08(%rcx)         # lock field, set changed
          jmp      *nsjt(, %rax, 8)           # jump table <nsjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ns01:subb     %bl,0x00(%r10, %rdx, 1)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ns02:subw     %bx,0x00(%r10, %rdx, 2)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ns03:subl     %ebx,0x00(%r10, %rdx, 4)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ns04:subq     %rbx,0x00(%r10, %rdx, 8)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ns05:shlq     $0x04,%rdx                 # RDX * 16
          movq     0x00(%ebp),%rax
          movq     0x04(%ebp),%rbx
          subq     %rax,0x00(%r10, %rdx)
          sbbq     %rbx,0x08(%r10, %rdx)
          jmp      err0
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_OFFSET                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_OFFSET, 0, 0);  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Return offset of entry E relative  Гл
          Г to field base.                     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     offs:movq     %r10,%r8                   # R08 = EA subfield
          movq     %rax,%r9                   # R09 = type
          movl     0x38(%rdi),%ebx            # RBX = size
          subq     %rdi,%r8                   # R08 = offset subfield
          movl     %edx,%eax                  # RAX = entry
          jmp      *ofjt(, %r9, 8)            # jump table <ofjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of01:jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of02:shrl     %eax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of03:shll     $0x02,%eax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of04:shll     $0x03,%eax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of05:shll     $0x04,%eax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of06:imull    %ebx,%eax
        0:addq     %r8,%rax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of07:movl     0x00(%r10, %rdx, 4),%eax
          jmp      err00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г errors (or none...)                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     err0:xorl     %eax,%eax
    err00:xorl     %ebx,%ebx                  # ERR_NO_ERROR
          andl     $0xFFFFF7FF,0x08(%rcx)     # unlock field
          jmp      1f
    err01:movl     $0x01,%ebx                 # ERR_ERROR
          jmp      xit
    err05:movl     $0x05,%ebx                 # ERR_SYS_DBE_BUSY
          jmp      xit
    err08:movl     $0x08,%ebx                 # ERR_PAR_INVALID
          jmp      xit
    err0C:movl     $0x0C,%ebx                 # ERR_PAR_COMMAND
          jmp      xit
    err12:movl     $0x12,%ebx                 # ERR_LDR_RESIZE
          jmp      xit
    err20:movl     $0x20,%ebx                 # ERR_DBE_TYPE
          jmp      xit
    err21:movl     $0x21,%ebx                 # ERR_DBE_MH
          jmp      xit
    err22:movl     $0x22,%ebx                 # ERR_DBE_SUBFIELD
          jmp      xit
    err23:movl     $0x23,%ebx                 # ERR_DBE_ENTRY
          jmp      xit
    err24:movl     $0x24,%ebx                 # ERR_DBE_WRITE
          jmp      xit
    err25:movl     $0x25,%ebx                 # ERR_LDR_CORRUPT
          jmp      xit
    err26:movl     $0x26,%ebx                 # ERR_DBE_SECSYS
          jmp      xit
    err3C:movl     $0x3C,%ebx                 # ERR_SS_ERROR
          jmp      xit
    err3E:movl     $0x3E,%ebx                 # ERR_SS_READ
          jmp      xit
    err3F:movl     $0x3F,%ebx                 # ERR_SS_WRITE
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г EXIT FIELD ACCESS                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      xit:xorl     %eax,%eax                  # RC = 0
        1:movl     %ebx,FIAERR(%rsi)          # store ERROR
          jmp      sftdX
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                        G A R B A G E   C O L L E C T I O N                         Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г wrStr   write (encrypt) string             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RAX   -                                    Гл
          Г RBX   -                                    Гл
          Г RCX   MemHandle                            Гл
          Г RDX   entry number                         Гл
          Г RDI   EA field                             Гл
          Г RSI   BNR                                  Гл
          Г RBP   EA data (PAR5)                       Гл
          Г R08   subfield                             Гл
          Г R09   offset string (relative to RDI)      Гл
          Г R10   EA subfield                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   always zero                        Гл
          Г   EBX   RC on error                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл

CONCEPT:  0. evaluate params
             set dirty
          1. get size input  (XMM)
          2.          entry  (test for zero at end of para)
                      if zero         =>   write
          3. check
                      input = entry   =>   write
                      input > entry   =>   shuffle up
                      input < entry   =>           down
             update OT
             update field end
          4. write
             update field end
          5. return

          */
          .p2align 4,,15
          .def     wstr; .scl 2; .type 32; .endef
     wstr:subq     $0x08,%rsp                 # align to paragraph
          testq    %rbp,%rbp                  # RBP = zero?
          je       gc08
          prefetch 0x00(%rbp)
          pxor     %xmm0,%xmm0                # XM0 = mask
          xorl     %eax,%eax                  # RAX = 0
          movq     %rbp,0x28(%rsp)
          movq     %r8, 0x30(%rsp)
          movq     %r9, 0x38(%rsp)
          movq     %r10,0x40(%rsp)
          movq     %r11,0x48(%rsp)
          movq     %r12,0x50(%rsp)
          movq     %r13,0x58(%rsp)
          movq     %r14,0x60(%rsp)
          movq     %r15,0x68(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г get lengths       Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          leaq     0x00(%rdi, %r9, 1),%r15    # R15 = EA entry
          orl      $0x0800,0x30(%rdi)         # set dirty flag
          movq     %rbp,%r11                  # R11 = EA input
          cmpl     0x34(%rdi),%r9d            # above end - 1?
          jae      gc25
          xorl     %eax,%eax                  # RAX = 0
          xorl     %ebx,%ebx                  # RBX = 0
          xorq     %r12,%r12                  # R12 = 0
          movl     $0x0F,%r14d                # R14 = 15
          prefetch 0x00(%r15)
        0:movdqu   0x00(%r11),%xmm1           # search input end
          pcmpeqb  %xmm0,%xmm1
          pmovmskb %xmm1,%r12d                # R12 = mask
          addl     $0x10,%eax                 # RAX = padded input
          addq     $0x10,%r11                 # R11 = next para
          testl    %r12d,%r12d                # zero detected?
          je       0b
          bsf      %r12d,%r12d                # R12 = offset zero
          testl    $0x1000,0x30(%rdi)         # encrypted?
          je       1f
          /*
          кФФФФФФФФФФФФП
          Г encrypted  Гл
          РФФФФФФФФФФФФйл
            ллллллллллллл
          */
          movl     0x00(%r15),%ebx            # RBX = length
          subl     $0x08,%eax                 # RAX = last para + encrypt info
          addl     $0x0F,%ebx                 # RBX = correction
          addl     %r12d,%eax                 # RAX = new end
          andl     $0xFFFFFFF0,%ebx           # RBX = paras entry
          addl     $0x0F,%eax                 # RAX = correction
          andl     $0xFFFFFFF0,%eax           # RBX = paras input
          jmp      2f
          /*
          кФФФФФФФФФФФФП
          Г default    Гл
          РФФФФФФФФФФФФйл
            ллллллллллллл
          */
          .p2align 4,,15
        1:movdqu   0x00(%r15),%xmm1           # search entry end
          pcmpeqb  %xmm0,%xmm1
          pmovmskb %xmm1,%r13                 # R13 = mask
          addl     $0x10,%ebx                 # RBX = padded entry
          addq     $0x10,%r15                 # R15 = next para
          testw    %r13w,%r13w                # zero detected?
          je       1b
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г set params + test Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        2:movl     %eax,0x20(%rsp)            # store size input
          xorq     %r13,%r13                  # R13 = gcol with write
          testl    %r9d,%r9d                  # empty OT entry?
          je       wend
          cmpl     $0x0100,%r9d               # inside header?
          jb       gc25
          subq     %r12,%r14                  # R14 = byte to pad
          addq     %rdi,%r9                   # R09 = EA entry
          cmpb     $0x00,0x00(%rbp)           # input empty?
          je       clre
          cmpl     %eax,%ebx                  # fits?
          js       gcol
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г write entry       Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        3:movdqu   0x00(%rbp),%xmm0           # copy string
          movdqa   %xmm0,0x00(%r9)
          addq     $0x10,%rbp
          addq     $0x10,%r9
          subl     $0x10,%eax
          ja       3b
          subq     $0x10,%r9                  # R09 = last para
          addq     %r12, %r9                  # R09 = EA zero
        4:movb     %al,0x00(%r9)              # pad
          incq     %r9
          decl     %r14d
          jns      4b
          testl    $0x1000,0x30(%rdi)         # encrypted?
          je       5f
          /*
          кФФФФФФФФФФФФП
          Г encrypt    Гл
          РФФФФФФФФФФФФйл
            ллллллллллллл
          */
          movq     %rcx,%r12                  # R12 = MemHandle
          movq     %rdx,%r14                  # R14 = entry number
          movq     0x18(%rsp),%rcx            # RCX = EA entry
          movzwl   0x2A(%rdi),%edx            # EDX = encrypt level
          call     _ssENC
          movq     %r12,%rcx                  # RCX = MemHandle
          movq     %r14,%rdx                  # RDX = entry number
          /*
          кФФФФФФФФФФФФП
          Г default    Гл
          РФФФФФФФФФФФФйл
            ллллллллллллл
          */
        5:incq     %r13                       # R13 = gcol without write
          cmpq     %r9,%r15                   # gap left?
          je       wout
          jmp      6f
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г shuffle down      Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
     clre:incq     %r13                       # R13 = gcol without write
          movl     $0x00,0x20(%rsp)           # s20 = size input
     gcol:movl     $0x00,0x00(%r10, %rdx, 4)  # clear offset
        6:prefetch 0x00(%r9)
          prefetch 0x00(%r15)
          movl     0x34(%rdi),%eax            # RAX = field size
          movq     %r15, %r14                 # R14 = EA next entry (source)
          movq     %r15, %r12                 # R12 = EA next entry (source)
          addq     %rdi, %rax                 # RAX = EA field end
          subq     %r9,  %r14                 # R14 = gap size
          subq     %rdi, %r12                 # R12 = min. offset correction
          subq     %r15, %rax                 # RAX = byte to move
          movq     %r14, %r8                  # R08 = gap size
          subl     %r14d,0x34(%rdi)           # field size (field)
          subl     %r14d,0x14(%rcx)           # field size (MemHandle)
          movl     %eax, %ebx                 # RBX = byte to move
          shrl     $0x04,%eax                 # RAX = paras to copy
          shrl     $0x04,%r8d                 # R08 =          clear
          shrl     $0x06,%ebx                 # RBX = cache lines
          andl     $0x03,%eax                 # RAX = last paras
          .p2align 4,,15
        7:decl     %ebx                       # copy cache lines
          js       8f
          movdqa   0x00(%r15),%xmm0
          movdqa   0x10(%r15),%xmm1
          movdqa   0x20(%r15),%xmm2
          movdqa   0x30(%r15),%xmm3
          movdqa   %xmm0,0x00(%r9)
          movdqa   %xmm1,0x10(%r9)
          movdqa   %xmm2,0x20(%r9)
          movdqa   %xmm3,0x30(%r9)
          prefetch 0x40(%r15)
          prefetch 0x40(%r9)
          addq     $0x40,%r15
          addq     $0x40,%r9
          jmp      7b
          .p2align 4,,15
        8:decl     %eax                       # copy last paras
          js       9f
          movdqa   0x00(%r15),%xmm0
          movdqa   %xmm0,0x00(%r9)
          addq     $0x10,%r15
          addq     $0x10,%r9
          pxor     %xmm1,%xmm1
          jmp      8b
          .p2align 4,,15
        9:decl     %r8d                       # clear gap
          js       0f
          movdqa   %xmm1,0x00(%r9)
          addq     $0x10,%r9
          jmp      9b
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г update OTs        Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        0:movl     0x24(%rdi),%r11d           # R11 = subfields
          xorq     %r15,%r15                  # R15 = subfield 00
        1:decl     %r11d                      # count--
          js       wend
          movb     0x40(%rdi, %r15, 1),%r9b   # R09 = type
          movl     0x60(%rdi, %r15, 4),%r10d  # R10 = offset sub
          incl     %r15d                      # RBX = next sub
          cmpb     $0x07,%r9b                 # strings?
          jne      1b
          movl     0x3C(%rdi),%r9d            # R09 = entries
          addq     %rdi,%r10                  # R10 = EA sub
          shrl     $0x02,%r9d                 # R09 = entries / 4
          /*
          кФФФФФФФФФФФФП
          Г correction Гл
          РФФФФФФФФФФФФйл
            ллллллллллллл
          */
        2:movl     0x00(%r10),%eax
          movl     0x04(%r10),%ebx
          movl     0x08(%r10),%ebp
          movl     0x0C(%r10),%r8d
          cmpl     %r12d,%eax
          jb       3f
          subl     %r14d,%eax
        3:cmpl     %r12d,%ebx
          jb       4f
          subl     %r14d,%ebx
        4:cmpl     %r12d,%ebp
          jb       5f
          subl     %r14d,%ebp
        5:cmpl     %r12d,%r8d
          jb       6f
          subl     %r14d,%r8d
        6:movl     %eax,0x00(%r10)
          movl     %ebx,0x04(%r10)
          movl     %ebp,0x08(%r10)
          movl     %r8d,0x0C(%r10)
          addq     $0x10,%r10
          decl     %r9d
          ja       2b
          jmp      1b
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г input -> entry    Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
     wend:movl     0x34(%rdi),%r15d           # R15 = size field
          movl     0x20(%rsp),%r12d           # R12 =      input
          testq    %r13,%r13                  # entry already copied?
          jne      wout
          leaq     0x00(%r15, %r12, 1),%r14   # R14 = new size
          movq     0x28(%rsp),%rbp            # RBP = EA source
          movq     0x30(%rsp),%r8             # R08 = subfield number
          movq     0x38(%rsp),%r9             # R09 = offset string rel to base (EDI)
          movq     0x40(%rsp),%r10            # R10 = EA subfield
          cmpl     0x10(%rcx),%r14d           # sufficient memory?
          jb       0f
          /*
          кФФФФФФФФФФФФП
          Г expand     Гл
          РФФФФФФФФФФФФйл
            ллллллллллллл
          */
          subq     %rdi,%r10                  # R10 = offset sub
          xchgq    %rdx,%r14                  # R14 = entry
          call     _LDchg
          movq     0x00(%rcx),%rdi            # EDI = EA field
          xchgq    %r14,%rdx                  # RDX = entry number
          addq     %rdi,%r10                  # R10 = EA sub
          movq     %r10,0x40(%rsp)            # update copy
          testl    %eax,%eax                  # error?
          jne      gc12
          /*
          кФФФФФФФФФФФФП
          Г set tables Гл
          РФФФФФФФФФФФФйл
            ллллллллллллл
          */
        0:movl     %r15d,0x00(%r10, %rdx, 4)  # write OT entry
          leaq     0x00(%rdi, %r15, 1),%r14   # R14 = EA target
          addl     %r12d,%r15d                # R15 = new end
          shrl     $0x04,%r12d                # R12 = paras
          pxor     %xmm1,%xmm1                # XM1 = 0
          movl     %r15d,0x14(%rcx)           # write size -> MemHandle
          movl     %r15d,0x34(%rdi)           #            -> header
          movq     %r14,%r11                  # R11 = EA target
          /*
          кФФФФФФФФФФФФП
          Г write      Гл
          РФФФФФФФФФФФФйл
            ллллллллллллл
    */
        1:movdqu   0x00(%rbp),%xmm0           # copy input -> entry
          movdqa   %xmm0,0x00(%r14)
          addq     $0x10,%rbp
          addq     $0x10,%r14
          decl     %r12d
          ja       1b
          pcmpeqb  %xmm0,%xmm1
          pmovmskb %xmm1,%r12d                # R12 = mask
          movl     $0x0F,%r13d                # R13 = 15
          bsf      %r12d,%eax                 # RAX = offset zero
          subq     $0x10,%r14                 # R14 = last para
          subl     %eax, %r13d                # R13 = byte to pad
          addq     %rax, %r14                 # R14 = EA zero
        2:movb     $0x00,0x00(%r14)           # pad
          incq     %r14
          decl     %r13d
          jns      2b
          testl    $0x1000,0x30(%rdi)         # encrypted?
          je       wout
          /*
          кФФФФФФФФФФФФП
          Г encrypt    Гл
          РФФФФФФФФФФФФйл
            ллллллллллллл
          */
          movq     %rcx,%r12                  # R12 = MemHandle
          movq     %rdx,%r14                  # R15 = entry number
          movq     %r11,%rcx                  # RCX = EA target
          movzwl   0x2A(%rdi),%edx            # EDX = encrypt level
          call     _ssENC
          movq     %r12,%rcx                  # RCX = MemHandle
          movq     %r14,%rdx                  # RDX = entry number
          jmp      wout
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г errors            Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          .p2align 4,,15
     gc08:movl     $0x08,%ebx                 # RBX = ERR_PAR_INVALID
          andw     $0xF7FB,0x08(%rcx)         # reset dirty + changed
          andw     $0xF7FB,0x08(%rdi)         # reset dirty + changed
          jmp      4f
          .p2align 4,,15
     gc12:movq     %r14,%rdx                  # RDX = entry number
          movl     %eax,%ebx                  # RBX = ERR_LDR_*
          jmp      2f
          .p2align 4,,15
     gc25:movq     %r14,%rdx                  # RDX = entry number
          movl     $0x25,%ebx                 # RBX = ERR_DBE_CORRUPT
          jmp      3f
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г exit              Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
     wout:xorl     %ebx,%ebx                  # RBX = ERR_NO_ERROR
        2:andw     $0xF7FF,0x08(%rcx)         # reset dirty
          andw     $0xF7FF,0x30(%rdi)
        3:movq     0x28(%rsp),%rbp
          movq     0x30(%rsp),%r8
          movq     0x38(%rsp),%r9
          movq     0x40(%rsp),%r10
          movq     0x48(%rsp),%r11
          movq     0x50(%rsp),%r12
          movq     0x58(%rsp),%r13
          movq     0x60(%rsp),%r14
          movq     0x68(%rsp),%r15
        4:addq     $0x08,%rsp
          ret
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                           S H I F T   F U N C T I O N S                            Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SftUp   del last entry, shift field one up Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   MemHandle                          Гл
          Г   RDX   start entry (1st moved entry)      Гл
          Г   R08   subfield number                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   0000 0000   ERR_NO_ERROR           Гл
          Г         0000 0005   ERR_SYS_DBE_BUSY       Гл
          Г         0000 0008   ERR_PAR_INVALID        Гл
          Г         0000 001C   ERR_LDR_FORBIDDEN      Гл
          Г         0000 0020   ERR_DBE_TYPE           Гл
          Г         0000 0021   ERR_DBE_MH             Гл
          Г         0000 0022   ERR_DBE_SUBFIELD       Гл
          Г         0000 0023   ERR_DBE_ENTRY          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г SftUp() deletes the last entry in a field, Гл
          Г then moves all entries (beginning with en- Гл
          Г try PAR3) one unit up. No string is moved, Гл
          Г only OT entries are reorganised.           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _SftUp
          .def     _SftUp; .scl 2; .type 32; .endef
   _SftUp:subq     $0xB8,%rsp
          movq     _BMM(%rip),%rax            # RAX = BMM
          nop
          movq     %rcx,0x70(%rsp)
          movq     %rdx,0x78(%rsp)
          movq     %r8, 0x80(%rsp)
          movq     %r9, 0x88(%rsp)
          movq     %r10,0x90(%rsp)
          movq     %rbx,0x98(%rsp)
          movq     %rdi,0xA0(%rsp)
          movq     %rsi,0xA8(%rsp)
          movq     %rbp,0xB0(%rsp)
          movq     %rcx,%r10                  # R10 = MemHandle
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г validate parameters Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          subq     %rax,%r10                  # MH - BMM
          js       sde21
          cmpq     $0x1FE0,%r10               # MH valid?
          ja       sde21
          cmpq     $0x0080,%r10               # system?
          jb       sde1C
          movq     0x00(%rcx),%rdi            # EDI = field base
          movl     0x1C(%rcx),%ebp            # EBP = entries
          testl    $0x0800,0x08(%rcx)         # field locked?
          jne      sde05
          cmpl     0x24(%rdi),%r8d            # subfield valid?
          jae      sde22
          cmpl     %ebp,%edx                  # entry valid?
          jae      sde23
          testl    $0x4000,0x08(%rcx)         # field corrupt?
          jne      sde25
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г prepare & jump      Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          movzb    0x40(%rdi, %r8, 1),%ebx    # RBX = data type
          movl     0x60(%rdi, %r8, 4),%r10d   # R10 = offset subfield
          xorl     %eax,%eax                  # RAX = 0
          decl     %ebp                       # RBP = last entry
          cmpl     $0x07,%ebx                 # valid type?
          cmova    %eax,%ebx                  # no => invalid
          cmpl     $0x07,%ebx
          jne      0f
          xchgq    %rdx,%rbp                  # RBP = start, RDX = last
          movq     $0x03,%r9                  # R09 = FDA_DELETE
          call     _FDacc
          xchgq    %rdx,%rbp                  # RDX = start, RBP = last
          testl    %eax,%eax
          jne      sftdX
        0:movq     %rbx,%r9                   # R09 = type
          addq     %rdi,%r10                  # R10 = EA subfield
          subl     %edx,%ebp                  # RBP = entries to move
          js       sde08
          orw      $0x0800,0x08(%rcx)         # lock DBE
          xorl     %ebx,%ebx                  # RBX = 0
          jmp      *supjt(, %r9, 8)           # jump table <supjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г RAX   -                                    Гл
          Г RBX   0                                    Гл
          Г RCX   MemHandle                            Гл
          Г RDX   start entry                          Гл
          Г RDI   EA field                             Гл
          Г RSI   BNR                                  Гл
          Г RBP   entries in field                     Гл
          Г R08   subfield number                      Гл
          Г R09   -                                    Гл
          Г R10   EA subfield                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 01             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    supDB:leaq     -1(%r10, %rbp),%r9         # R09 = EA [last - 1]
        0:movb     0x00(%r9),%al              # EAX = DB[last - 1]
          movb     %al,0x01(%r9)              #    -> DB[last]
          subq     $0x01,%r9                  # one DB down
          decl     %ebp                       # count--
          jne      0b
          movb     %bl,0x00(%r9)              # clear gap
          jmp      sftdY
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 02             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    supDW:leaq     -2(%r10, %rbp, 2),%r9      # R09 = EA [last - 1]
        0:movw     0x00(%r9),%ax              # EAX = DW[next - 1]
          movw     %ax,0x02(%r9)              #    -> DW[next]
          subq     $0x02,%r9                  # one DW down
          decl     %ebp                       # count--
          jne      0b
          movw     %bx,0x00(%r9)              # clear gap
          jmp      sftdY
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 03 + 07        Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    supDD:leaq     -4(%r10, %rbp, 4),%r9      # R09 = EA [last - 1]
        0:movl     0x00(%r9),%eax             # EAX = DD[last - 1]
          movl     %eax,0x04(%r9)             #    -> DD[last]
          subq     $0x04,%r9                  # one DD down
          decl     %ebp                       # count--
          jne      0b
          movl     %ebx,0x00(%r9)             # clear gap
          jmp      sftdY
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 04             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    supDQ:leaq     -8(%r10, %rbp, 8),%r9      # R09 = EA [last - 1]
        0:movq     0x00(%r9),%rax             # EAX = DQ[next - 1]
          movq     %rax,0x08(%r9)             #    -> DQ[next]
          subq     $0x08,%r9                  # one DQ down
          decl     %ebp                       # count--
          jne      0b
          movq     %rbx,0x00(%r9)             # clear gap
          jmp      sftdY
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 05             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    supDO:movq     %rbp,%rax                  # RAX = last
          shll     $0x04,%eax                 # EAX = offset [last]
          leaq     -16(%r10, %rax),%r9        # R09 = EA [last - 1]
          pxor     %xmm1,%xmm1
        0:movdqa   0x00(%r9),%xmm0            # EAX = DO[next - 1]
          movdqa   %xmm0,0x10(%r9)            #    -> DO[next]
          subq     $0x10,%r9                  # one DO down
          decl     %ebp                       # count--
          jne      0b
          movdqa   %xmm1,0x00(%r9)            # clear gap
          jmp      sftdY
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 06             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    supFX:movl     0x38(%rdi),%ebx            # RBX = entry size
          movl     0x20(%rdi),%r8d            # R08 = subfield size
          movl     0x20(%rdi),%r9d            # R09 = subfield size
          movq     %rbp,%rax                  # RAX = entries to move
          subl     $0x80,%r8d                 # R08 = offset [last - 1]
          subl     $0x40,%r9d                 # R09 = offset [last]
          imull    %ebx,%ebp                  # RBP = byte to move
          imull    %ebx,%edx                  # RDX = offset start
          imull    %ebx,%eax                  # RAX = byte to move
          shrl     $0x06,%ebp                 # RBP = block count
          shrl     $0x04,%eax                 # RAX = paragraphs to move
          shrl     $0x04,%ebx                 # RBX =            per entry
          addq     %r10,%r8                   # R08 = EA [last - 1]
          addq     %r10,%r9                   # R09 = EA [last]
          andl     $0x03,%eax                 # RAX = remaining paragraphs to move
          addq     %rdx,%r10                  # R10 = EA [start]
          testl    %ebp,%ebp                  # any blocks?
          je       1f
        0:movdqa   0x00(%r8),%xmm0            # read block
          movdqa   0x10(%r8),%xmm1
          movdqa   0x20(%r8),%xmm2
          movdqa   0x30(%r8),%xmm3
          movdqa   %xmm0,0x00(%r9)            # write block
          movdqa   %xmm1,0x10(%r9)
          movdqa   %xmm2,0x20(%r9)
          movdqa   %xmm3,0x30(%r9)
          subq     $0x40,%r8                  # one block down
          subq     $0x40,%r9
          decl     %ebp                       # block count--
          jne      0b
        1:decl     %eax                       # remains--
          jbe      2f
          movdqa   0x00(%r8),%xmm0            # copy paragraph
          movdqa   %xmm0,0x00(%r9)
          subq     $0x10,%r8                  # one block down
          subq     $0x10,%r9
          jmp      1b
        2:pxor     %xmm0,%xmm0                # XM0 = 0
        3:movdqa   %xmm0,0x00(%r10)           # clear gap
          addq     $0x10,%r10                 # next paragraph
          decl     %ebx                       # count--
          jne      3b
          jmp      sftdY
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SftDn   delete x, then shift entries down  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   MemHandle                          Гл
          Г   RDX   start entry (this one is removed!) Гл
          Г   R08   subfield                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   0000 0000   ERR_NO_ERROR           Гл
          Г         0000 0005   ERR_SYS_DBE_BUSY       Гл
          Г         0000 0008   ERR_PAR_INVALID        Гл
          Г         0000 001C   ERR_LDR_FORBIDDEN      Гл
          Г         0000 0020   ERR_DBE_TYPE           Гл
          Г         0000 0021   ERR_DBE_MH             Гл
          Г         0000 0022   ERR_DBE_SUBFIELD       Гл
          Г         0000 0023   ERR_DBE_ENTRY          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г SftDn() deletes entry PAR2, then moves all Гл
          Г entries (starting at offset PAR2) one unit Гл
          Г down. Strings are not moved, only the off- Гл
          Г set table is reorganised.                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _SftDn
          .def     _SftDn; .scl 2; .type 32; .endef
   _SftDn:subq     $0xB8,%rsp
          movq     _BMM(%rip),%rax            # RAX = BMM
          nop
          movq     %rcx,0x70(%rsp)
          movq     %rdx,0x78(%rsp)
          movq     %r8, 0x80(%rsp)
          movq     %r9, 0x88(%rsp)
          movq     %r10,0x90(%rsp)
          movq     %rbx,0x98(%rsp)
          movq     %rdi,0xA0(%rsp)
          movq     %rsi,0xA8(%rsp)
          movq     %rbp,0xB0(%rsp)
          movq     %rcx,%r10                  # R10 = MemHandle
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г validate parameters Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          subq     %rax,%r10                  # MH - BMM
          js       sde21
          cmpq     $0x1FE0,%r10               # MH valid?
          ja       sde21
          cmpq     $0x0080,%r10               # system?
          jb       sde1C
          movq     0x00(%rcx),%rdi            # EDI = field base
          movl     0x1C(%rcx),%ebp            # EBP = entries
          testl    $0x0800,0x08(%rcx)         # field locked?
          jne      sde05
          cmpl     0x24(%rdi),%r8d            # subfield valid?
          jae      sde22
          cmpl     %ebp,%edx                  # entry valid?
          jae      sde23
          testl    $0x4000,0x08(%rcx)         # field corrupt?
          jne      sde25
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г prepare & jump      Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г RAX   -                                    Гл
          Г RBX   -                                    Гл
          Г RCX   MemHandle                            Гл
          Г RDX   start entry                          Гл
          Г RDI   EA field                             Гл
          Г RSI   BNR                                  Гл
          Г RBP   entries in field                     Гл
          Г R08   subfield number                      Гл
          Г R09   -                                    Гл
          Г R10   EA subfield                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          movzb    0x40(%rdi, %r8, 1),%ebx    # RBX = data type
          movl     0x60(%rdi, %r8, 4),%r10d   # R10 = offset subfield
          xorq     %rax,%rax                  # RAX = 0
          decl     %ebp                       # RBP = last entry
          cmpl     $0x07,%ebx                 # valid type?
          cmova    %eax,%ebx                  # no => invalid
          cmpl     $0x07,%ebx                 # $32?
          jne      0f
          movl     $0x03,%r9d                 # R09 = FDA_DELETE
          call     _FDacc
        0:movl     %ebx,%eax                  # RAX = type
          movl     %ebp,%r9d                  # R09 = last entry
          addq     %rdi,%r10                  # R10 = EA subfield
          xorl     %ebx,%ebx                  # RBX = 0
          subl     %edx,%ebp                  # RBP = entries to move
          js       sde08
          orw      $0x0800,0x08(%rcx)         # lock DBE
          jmp      *sdnjt(, %rax, 8)          # jump table <supjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 01             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    sdnDB:testl    %ebp,%ebp
          je       1f
        0:movb     0x01(%r10, %rdx),%al       # read next entry
          movb     %al,0x00(%r10, %rdx)       # store as entry
          incl     %edx                       # next entry
          decl     %ebp                       # count--
          jne      0b
        1:movb     %bl,0x00(%r10, %r9)        # clear last
          jmp      sftdY
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 02             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    sdnDW:testl    %ebp,%ebp
          je       1f
        0:movw     0x02(%r10, %rdx, 2),%ax    # read next entry
          movw     %ax,0x00(%r10, %rdx, 2)    # store as entry
          incl     %edx                       # next entry
          decl     %ebp                       # count--
          jne      0b
        1:movw     %bx,0x00(%r10, %r9, 2)     # clear last
          jmp      sftdY
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 03 + 07        Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    sdnDD:testl    %ebp,%ebp
          je       1f
        0:movl     0x04(%r10, %rdx, 4),%eax   # read next entry
          movl     %eax,0x00(%r10, %rdx, 4)   # store as entry
          incl     %edx                       # next entry
          decl     %ebp                       # count--
          jne      0b
        1:movl     %ebx,0x00(%r10, %r9, 4)    # clear last
          jmp      sftdY
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 04             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    sdnDQ:testl    %ebp,%ebp
          je       1f
        0:movq     0x08(%r10, %rdx, 8),%rax   # read next entry
          movq     %rax,0x00(%r10, %rdx, 8)   # store as entry
          incl     %edx                       # next entry
          decl     %ebp                       # count--
          jne      0b
        1:movq     %rbx,0x00(%r10, %r9, 8)    # clear last
          jmp      sftdY
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 05             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    sdnDO:shll     $0x04,%edx                 # EDX = offset [start]
          pxor     %xmm1,%xmm1                # XM1 = 0
          addq     %rdx,%r10                  # R10 = EA [start]
          testl    %ebp,%ebp
          je       1f
        0:movdqa   0x10(%r10),%xmm0           # read next entry
          movdqa   %xmm0,0x00(%r10)           # store as entry
          addq     $0x10,%r10                 # next entry
          decl     %ebp                       # count--
          jne      0b
        1:movdqa   %xmm1,0x00(%r10)           # clear last
          jmp      sftdY
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 06             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г RAX   -                                    Гл
          Г RBX   0                                    Гл
          Г RCX   MemHandle                            Гл
          Г RDX   start entry                          Гл
          Г RDI   EA field                             Гл
          Г RSI   BNR                                  Гл
          Г RBP   entries to move                      Гл
          Г R08   subfield number                      Гл
          Г R09   last entry                           Гл
          Г R10   EA subfield                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    sdnFX:movl     0x38(%rdi),%ebx            # RBX = entry size
          movl     0x20(%rdi),%r8d            # R08 = subfield size
          movq     %rbp,%rax                  # RAX = entries to move
          movq     %r10,%r9                   # R09 = EA subfield
          imull    %ebx,%ebp                  # EBP = byte to move
          imull    %ebx,%edx                  # EDX = offset start
          subl     %ebx,%r8d                  # R08 = offset last
          shrl     $0x04,%eax                 # EAX = paragraphs to move
          addq     %rdx,%r9                   # R09 = EA start
          shrl     $0x06,%ebp                 # EBP = blocks to move
          addq     %rdx,%r10                  # R10 = EA start
          addq     %rbx,%r9                   # R09 = EA next
          andl     $0x03,%eax                 # EAX = odd paragraphs
          shrl     $0x04,%ebx                 # EBX = paragraphs per entry
          testl    %ebp,%ebp                  # any blocks?
          je       1f
        0:movdqa   0x00(%r9),%xmm0            # read block
          movdqa   0x10(%r9),%xmm1
          movdqa   0x20(%r9),%xmm2
          movdqa   0x30(%r9),%xmm3
          movdqa   %xmm0,0x00(%r10)           # write block
          movdqa   %xmm1,0x10(%r10)
          movdqa   %xmm2,0x20(%r10)
          movdqa   %xmm3,0x30(%r10)
          addq     $0x40,%r9                  # next block
          addq     $0x40,%r10
          decl     %ebp
          jne      0b
        1:decl     %eax                       # odd--
          jbe      2f
          movdqa   0x00(%r9),%xmm0            # read block
          movdqa   %xmm0,0x00(%r10)           # write block
          addq     $0x10,%r9                  # next block
          addq     $0x10,%r10
          jmp      0b
        2:pxor     %xmm0,%xmm0                # XM0 = 0
        3:movdqa   %xmm0,0x00(%r10)           # clear last
          addq     $0x10,%r10
          decl     %ebx
          jne      3b
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г set flags           Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    sftdY:testb    $0x20,0x08(%rcx)           # static?
          jb       0f                         # no time stamp
          call     _GetTime                   # get time
          movl     %eax,0x0C(%rcx)            # update time stamp
        0:orw      $0x04,0x08(%rcx)           # set changed flag
          xorq     %rax,%rax
          andl     $0xFFFFF7FF,0x08(%rcx)     # unlock field
    sftdX:movq     0x70(%rsp),%rcx
          movq     0x78(%rsp),%rdx
          movq     0x80(%rsp),%r8
          movq     0x88(%rsp),%r9
          movq     0x90(%rsp),%r10
          movq     0x98(%rsp),%rbx
          movq     0xA0(%rsp),%rdi
          movq     0xA8(%rsp),%rsi
          movq     0xB0(%rsp),%rbp
          addq     $0xB8,%rsp
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г errors              Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    sde05:movl     $0x05,%eax                 # ERR_SYS_DBE_BUSY
          jmp      sftdX
          .p2align 4,,15
    sde08:movl     $0x08,%eax                 # ERR_PAR_INVALID
          jmp      sftdX
    sde1C:movl     $0x1C,%eax                 # ERR_LDR_FORBIDDEN
          jmp      sftdX
          .p2align 4,,15
    sde21:movl     $0x21,%eax                 # ERR_DBE_MH
          jmp      sftdX
          .p2align 4,,15
    sde22:movl     $0x22,%eax                 # ERR_DBE_SUBFIELD
          jmp      sftdX
          .p2align 4,,15
    sde23:movl     $0x23,%eax                 # ERR_DBE_ENTRY
          jmp      sftdX
          .p2align 4,,15
    sde25:movl     $0x25,%eax                 # ERR_DBE_CORRUPT
          jmp      sftdX
          .p2align 4,,15
    sderr:movl     $0x20,%eax                 # ERR_DBE_TYPE
          jmp      sftdX
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BMM, 8, 3
          .comm    _BNR, 8, 3
          .comm    _BBF, 8, 3
