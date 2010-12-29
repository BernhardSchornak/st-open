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
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г On error, all datafield functions except FDacc()/FDvpt() return an qualified error Гл
          Г code. Because FDA_ADDRESS has to return a valid address, FDacc() and FDvpt() store Гл
          Г their error codes at 1FCC[BNR] and either return zero, or the address of 1FDC[BNR] Гл
          Г in case the FDA_ADDRESS subfunction was called.                                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г HighLevelLanguage programmers should call FDerr() to get the last stored error. It Гл
          Г probably is faster than the usual contortions of HLL compilers.                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г ERRORS:  0000 0000   ERR_NO_ERROR       no error occured                           Гл
          Г          0000 0001   ERR_ERROR          terminated (unkown reason)                 Гл
          Г          0000 0005   ERR_SYS_DBE_BUSY   previous write not completed               Гл
          Г          0000 0008   ERR_PAR_INVALID    invalid address                            Гл
          Г          0000 000C   ERR_PAR_COMMAND    unknown command                            Гл
          Г          0000 0012   ERR_LDR_RESIZE     resize request failed                      Гл
          Г          0000 001C   ERR_LDR_FORBIDDEN  no access to read only and system fields   Гл
          Г          0000 001E   ERR_DBE_NO_READ    field flags do not permit reading          Гл
          Г          0000 001F   ERR_DBE_NO_WRITE                             writing          Гл
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
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDerr    get FDacc() error                                                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> -      nothing                                                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX    error                                                                     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _FDerr
          .def     _FDerr; .scl 2; .type 32; .endef
   _FDerr:movq     _BNR(%rip),  %rax
          movl     FIAERR(%rax),%eax
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDacc / FDvpt                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _FDvpt
          .def     _FDvpt; .scl 2; .type 32; .endef
          .globl   _FDacc
          .def     _FDacc; .scl 2; .type 32; .endef
   _FDvpt:
   _FDacc:pxor     %xmm0, %xmm0                      # XM0 = 0
          movq     $fdacc,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SftUp                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _SftUp
          .def     _SftUp; .scl 2; .type 32; .endef
   _SftUp:pcmpeqb  %xmm0, %xmm0                      # XM0 = all 1s
          movq     $sftup,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SftDn                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _SftDn
          .def     _SftDn; .scl 2; .type 32; .endef
   _SftDn:pcmpeqb  %xmm0, %xmm0                      # XM0 = all 1s
          movq     $sftdn,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г DISTRIBUTOR                                                                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:subq     $0xF8,%rsp
          nop
          nop
          movq     %xmm0,0x80(%rsp)
          movq     %rbp, 0x88(%rsp)
          movq     %rsi, 0x90(%rsp)
          movq     %rdi, 0x98(%rsp)
          movq     %rbx, 0xA0(%rsp)
          movq     %r15, 0xA8(%rsp)
          movq     %r14, 0xB0(%rsp)
          movq     %r13, 0xB8(%rsp)
          movq     %r12, 0xC0(%rsp)
          movq     %r11, 0xC8(%rsp)
          movq     %r10, 0xD0(%rsp)
          movq     %r9,  0xD8(%rsp)
          movq     %r8,  0xE0(%rsp)
          movq     %rdx, 0xE8(%rsp)
          movq     %rcx, 0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г get params & validate     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллл
          */
          movq     _BMM(%rip),%r14                   # R14 = BMM
          movq     _BNR(%rip),%rsi                   # RSI = BNR
          movq     _BBF(%rip),%r15                   # R15 = BBF
          negq     %r14                              # r14 = -BMM
          movl     $0x21,  %ebx                      # RBX = ERR_DBE_MH
          addq     %rcx,   %r14                      # below?
          js       ERR
          cmpl     $0x1FE0,%r14                      # above?
          ja       ERR
          movq     0x00(%rcx),%rdi                   # RDI = EA field
          testl    $0x1F,  %rcx                      # multiple of 32?
          jne      ERR
          testq    %rdi,   %rdi                      # loaded?
          je       ERR
          incl     %ebx                              # RBX = ERR_DBE_SUBFIELD
          cmpl     0x24(%rdi),%r8d                   # valid subfield?
          jae      ERR
          movzwl   0x08(%rcx),%r14d                  # R14 = flags MH
          movl     0x38(%rdi),%r11d                  # R11 = max size
          movl     0x3C(%rdi),%r10d                  # R10 = max entries
          movzb    0x40(%rdi, %r8, 1),%r12d          # R12 = type
          movl     0x60(%rdi, %r8, 4),%r13d          # R13 = offset sub
          incl     %ebx                              # RBX = ERR_DBE_ENTRY
          cmpl     %r10d,%edx                        # valid entry?
          jae      ERR
          movl     $0x05,  %ebx                      # RBX = ERR_DBE_BUSY
          testl    $0x0800,%r14d                     # write in progress?
          jne      ERR
          movl     $0x1C,  %ebx                      # RBX = ERR_LDR_FORBIDDEN
          cmpq     %rsi,   %rdi                      # SystemNumerics?
          je       ERR
          movl     $0x25,  %ebx                      # RBX = ERR_DBE_CORRUPT
          testl    $0x4000,%r14d                     # field corrupted?
          jne      ERR
          movl     $0x20,  %ebx                      # RBX = ERR_DBE_TYPE
          cmpl     $0x07,  %r12d                     # valid type?
          ja       ERR0
          decl     %r12d                             # no type?
          js       ERR0
          addq     %rdi,   %r13                      # R13 = EA subfield
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г branch to function        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллл
          */
          jmp      *%rax
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
          Г   ---------------------------------------                                          Гл
          Г   RDI    EA field                                                                  Гл
          Г   RSI    BNR                                                                       Гл
          Г   R10    max entries                                                               Гл
          Г   R11    max size                                                                  Гл
          Г   R12    type - 1                                                                  Гл
          Г   R13    EA subfield                                                               Гл
          Г   R14    flags MH                                                                  Гл
          Г   R15    EA buffer                                                                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX    depends on function and data type                                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Note:    FDA_ADDRESS                                                               Гл
          Г                                                                                    Гл
          Г          If erroneous parameters are passed or access rights for SecSys controlled Гл
          Г          fields are insufficient, RC is set to FIAADR (EA of 32 zeroes in BNR).    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    fdacc:movl     $0x0C,%ebx                        # RBX = ERR_PAR_COMMAND
          cmpl     $0x0F,%r9d                        # valid command?
          jae      ERR0
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SecSys permission check   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллл
          */
          movb     USR_RW(%rsi),%al                  # RAX = permission read
          movb     USR_WR(%rsi),%r10b                # R10 =            write
          jmp      *secT(, %r9, 8)                   # jump table <secT>
          .p2align 4,,15
     secR:movl     $0x1E,%ebx                        # ERR_DBE_NO_READ
          testl    $0x01,%r14d                       # read allowed?
          je       ERR0
          cmpb     0x32(%rdi),%al                    # read permission?
          movl     $0x3E,%ebx                        # ERR_SS_READ
          ja       ERR0
          jmp      0f
          .p2align 4,,15
     secW:movl     $0x1F,%ebx                        # ERR_DBE_NO_READ
          testl    $0x02,%r14d                       # write allowed?
          je       ERR0
          movl     $0x3F,%ebx                        # ERR_SS_WRITE
          cmpb     0x33(%rdi),%r10b                  # write permission?
          ja       ERR0
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г update time stamp         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:testl    $0x20,%r14d                       # static?
          jne      1f
          call     _GetTime
          movl     %eax, 0x0C(%rcx)                  # update LDT time stamp
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г get type, calc data area  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллл
          */
        1:movq     0x0120(%rsp),%rbp                 # RBP = EA data
          movq     0x0128(%rsp),%r10                 # R10 = numeric data
          movl     $0x00,FIAERR(%rsi)                # ERR_NO_ERROR
          jmp      *cmd(, %r9, 8)                    # jump table <cmd>
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FINAL REGISTER SETTINGS:                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RAX   -                                    Гл
          Г RBX   -                                    Гл
          Г RCX   MemHandle                            Гл
          Г RDX   entry number                         Гл
          Г R08   subfield                             Гл
          Г R09   command                              Гл
          Г RDI   EA field                             Гл
          Г RSI   BNR                                  Гл
          Г RBP   PAR5 (EA data)                       Гл
          Г R10   PAR6 (numeric data)                  Гл
          Г R11   max size                             Гл
          Г R12   type - 1                             Гл
          Г R13   EA subfield                          Гл
          Г R14   flags MH                             Гл
          Г R15   EA buffer                            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_READ                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Out = FDacc(F, E, S, FDA_READ, X, Y)       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RBP address target (ignored if 01...03)    Гл
          Г RBX ignored                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RAX 01...04   DB, DW, DD, DQ               Гл
          Г     05...07   0, output 00[RBP]            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Read entry E in subfield S.                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     read:jmp      *rdjt(, %r12, 8)                  # jump table <rdjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd01:movzb    0x00(%r13, %rdx, 1),%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd02:movzwl   0x00(%r13, %rdx, 2),%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd03:movl     0x00(%r13, %rdx, 4),%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd04:movq     0x00(%r13, %rdx, 8),%rax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd05:shlq     $0x04,%rdx
          addq     %rdx,%r13
          movdqa   0x00(%r13),%xmm0
          movdqu   %xmm0,0x00(%rbp)
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd06:imull    %r11d,%edx                        # RDX = size
          addq     %rdx, %r13                        # R13 = EA entry
          shrl     $0x04,%r11d                       # RDX = owords to move
        0:movdqa   0x00(%r13),%xmm0
          movdqu   %xmm0,0x00(%rbp)
          addq     $0x10,%r13
          addq     $0x10,%rbp
          decl     %r11d
          jne      0b
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     rd07:movl     0x00(%r13, %rdx, 4),%eax          # RAX = offset
          movq     %rdi,%rbx                         # RBX = EA field
          addq     %rax,%rbx                         # RBX = EA string
          testl    %eax,%eax                         # empty string?
          je       3f
          testb    $0x1000,%r14d                     # encrypted?
          jne      1f
          /*
          кФФФФФФФФФФФП
          Г default   Гл
          РФФФФФФФФФФФйл
            лллллллллллл
          */
        0:movdqa   0x00(%rbx),%xmm0                  # copy
          movl     0x0C(%rbx),%eax                   # last DD in paragraph
          movdqu   %xmm0,0x00(%rbp)
          addq     $0x10,%rbx
          addq     $0x10,%rbp
          testl    $0xFF000000,%eax                  # string end?
          jne      0b
          jmp      XIZ
          /*
          кФФФФФФФФФФФП
          Г encrypted Гл
          РФФФФФФФФФФФйл
            лллллллллллл
          */
          .p2align 4,,15
        1:movl     0x00(%rbx),%eax                   # EAX = size (incl. 8 byte control data)
          movzwl   0x2A(%rdi),%edx                   # RDX = decode depth   (PAR2)
          movq     %rbp, %rcx                        # RCX = address target (PAR1)
          addl     $0x0F,%eax                        # RAX = size + possible padding
          shrl     $0x04,%eax                        # EAX / 16
        2:movdqa   0x00(%rbx),%xmm0                  # copy
          movdqu   %xmm0,0x00(%rbp)
          addq     $0x10,%rbx
          addq     $0x10,%rbp
          decl     %eax
          jns      2b
          call     _ssDEC
          jmp      XIT                               # we pass the RC of ssDEC()
          /*
          кФФФФФФФФФФФП
          Г empty     Гл
          РФФФФФФФФФФФйл
            лллллллллллл
          */
          .p2align 4,,15
        3:movl     %eax,0x00(%rbp)                   # empty string
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_WRITE                                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_WRITE, X, Y);           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RBP address source (ignored if 01...04)    Гл
          Г RBX numeric value  (ignored if 05...07)    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Write entry E in subfield S.               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    write:orl      $0x0804,0x08(%rcx)                # lock field, set changed
          jmp      *wrjt(, %r12, 8)                  # jump table <wrjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr01:movb     %r10b,0x00(%r13, %rdx, 1)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr02:movw     %r10w,0x00(%r13, %rdx, 2)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr03:movl     %r10d,0x00(%r13, %rdx, 4)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr04:movq     %r10,0x00(%r13, %rdx, 8)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr05:shlq     $0x04,%rdx
          addq     %rdx,%r13                         # EDX = entry
          movdqu   0x00(%rbp),%xmm0
          movdqa   %xmm0,0x00(%r13)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     wr06:imull    %r11d,%rdx                        # RDX = offset entry
          addq     %rdx, %r13                        # R13 = address entry
          shrl     $0x04,%r11d                       # R11 = paragraphs
        0:movdqu   0x00(%rbp),%xmm0
          movdqa   %xmm0,0x00(%r13)
          addq     $0x10,%rbp
          addq     $0x10,%r13
          decl     %r11d
          jne      0b
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          УФФФФФФФФФФФФФФФФФФФФФДл
          Г jump to wstr!       Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
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
   delete:orl      $0x0804,0x08(%rcx)                # lock field, set changed
          xorl     %eax,%eax                         # RAX = 0
          pxor     %xmm0,%xmm0                       # XM0 = 0
          jmp      *dljt(, %r12, 8)                  # jump table <dljt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl01:movb     %al,0x00(%r13, %rdx, 1)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl02:movw     %ax,0x00(%r13, %rdx, 2)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl03:movl     %eax,0x00(%r13, %rdx, 4)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl04:movq     %rax,0x00(%r13, %rdx, 8)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl05:shlq     $0x04,%rdx                        # RDX = offset
          addq     %r13, %rdx                        # RDX = EA entry
          movdqa   %xmm0,0x00(%rdx)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl06:imull    %r11d,%rdx                        # RDX = offset
          addq     %rdx, %r13                        # R13 = EA entry
          shrl     $0x04,%r11d                       # RDX = paragraphs
        0:movdqa   %xmm0,0x00(%r13)
          addq     $0x10,%r13
          decl     %r11d
          jne      0b
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     dl07:movq     %rdi,%rbp                         # RBP = empty string
          jmp      wstr
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
     copy:orl      $0x0804,0x08(%rcx)                # lock field, set changed
          jmp      *cpyjt(, %r12, 8)                 # jump table <cpyjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy01:movb     0x00(%r13, %r10, 1),%al
          movb     %al,0x00(%r13, %rdx, 1)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy02:movw     0x00(%r13, %r10, 2),%ax
          movw     %ax,0x00(%r13, %rdx, 2)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy03:movl     0x00(%r13, %r10, 4),%eax
          movl     %eax,0x00(%r13, %rdx, 4)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy04:movq     0x00(%r13, %r10, 8),%xmm0
          movq     %xmm0,0x00(%r13, %rdx, 8)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy05:shll     $0x04,%r10d                       # R10 = offset source
          shll     $0x04,%edx                        # RDX =        target
          addq     %r13,%r10                         # R10 = EA     source
          addq     %r13,%rdx                         # RDX =        target
          movdqa   0x00(%r10),%xmm0                  # copy
          movdqa   %xmm0,0x00(%rdx)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy06:imulq    %r11,%r10                         # R10 = OF source
          imulq    %r11,%rdx                         # RDX = OF target
          addq     %r13,%r10                         # R10 = EA source
          addq     %r13,%rdx                         # RDX = EA target
          shrl     $0x04,%r11d                       # R11 = paragraphs
        0:movdqa   0x00(%r10),%xmm0                  # copy
          movdqa   %xmm0,0x00(%rdx)
          addq     $0x10,%r10
          addq     $0x10,%rdx
          decl     %r11d
          jne      0b
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cpy07:movl     0x00(%r13, %r10, 4),%eax          # RAX = offset source
          movl     0x00(%r13, %rdx, 4),%r9d          # R09 = offset target
          movq     %rdi, %rbx                        # RBX = EA subfield
          movq     %r15, %rbp                        # RBP = EA buffer
          movq     %r15, %r10                        # R10 = EA buffer
          testl    %eax, %eax                        # empty source string?
          cmove    %rdi, %rbp                        # source is EA field
          je       wstr
          addq     %rax, %rbx                        # RBX = EA entry
          testb    $0x1000,%r14d                     # encrypted?
          jne      1f
          /*
          кФФФФФФФФФФФП
          Г default   Гл
          РФФФФФФФФФФФйл
            лллллллллллл
          */
        0:movdqa   0x00(%rbx),%xmm0                  # copy source
          movzb    0x0F(%rbx),%eax
          movdqa   %xmm0,0x00(%r10)
          addq     $0x10,%rbx
          addq     $0x10,%r10
          testl    %eax, %eax
          je       wstr
          jmp      0b
          /*
          кФФФФФФФФФФФП
          Г encrypted Гл
          РФФФФФФФФФФФйл
            лллллллллллл
          */
          .p2align 4,,15
        1:movl     0x00(%rbx),%eax                   # EAX = size (incl. 8 byte control data)
          movzwl   0x2A(%rdi),%edx                   # RDX = decode depth   (PAR2)
          movq     %rbp, %rcx                        # RCX = address target (PAR1)
          addl     $0x0F,%eax                        # RAX = size + possible padding
          shrl     $0x04,%eax                        # EAX / 16
        2:movdqa   0x00(%rbx),%xmm0                  # copy
          movdqu   %xmm0,0x00(%r10)
          addq     $0x10,%rbx
          addq     $0x10,%r10
          decl     %eax
          jns      2b
          call     _ssDEC
          movq     0xE8(%rsp),%rdx                   # RDX = entry
          movq     0xF0(%rsp),%rcx                   # RCX = MH
          jmp      wstr
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
     move:orl      $0x0804,0x08(%rcx)                # lock field, set changed
          xorl     %ebx, %ebx                        # RBX = 0
          pxor     %xmm1,%xmm1                       # XM1 = 0
          jmp      *mvjt(, %r12, 8)                  # jump table <mvjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv01:movb     0x00(%r13, %r10, 1),%al           # copy
          movb     %al,0x00(%r13, %rdx, 1)
          movb     %bl,0x00(%r13, %r10, 1)           # clear source
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv02:movw     0x00(%r13, %r10, 2),%ax           # copy
          movw     %ax,0x00(%r13, %rdx, 2)
          movw     %bx,0x00(%r13, %r10, 2)           # clear source
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv03:movl     0x00(%r13, %r10, 4),%eax          # copy
          movl     %eax,0x00(%r13, %rdx, 4)
          movl     %ebx,0x00(%r13, %r10, 4)          # clear source
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv04:movq     0x00(%r13, %r10, 8),%rax          # copy
          movq     %rax,0x00(%r13, %rdx, 8)
          movq     %rbx,0x00(%r13, %r10, 8)          # clear source
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv05:shlq     $0x04,%r10                        # entry * 16
          shll     $0x04,%edx
          addq     %r13, %r10                        # entry + EA
          addq     %r13, %rdx
          movdqa   0x00(%r10),%xmm0                  # copy
          movdqa   %xmm0,0x00(%rdx)
          movdqa   %xmm1,0x00(%r10)                  # clear source
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv06:imull    %r11,%r10d                        # entries * length
          imull    %r11,%edx
          addq     %r13,%r10                         # entries + EA
          addq     %r13,%rdx
          shrq     $0x04,%r11                        # EAX = paragraphs
        0:movdqa   0x00(%r10),%xmm0                  # copy
          movdqa   %xmm0,0x00(%rdx)
          movdqa   %xmm1,0x00(%r10)                  # clear source
          addq     $0x10,%rdx
          addq     $0x10,%r10
          decq     %r11
          jne      0b
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     mv07:movl     0x00(%r13, %r10, 4),%r9d          # R09 = offset source
          movl     0x00(%r13, %rdx, 4),%eax
          movl     %eax,0x00(%r13, %r10, 4)          # move (exchange OTs)
          movl     %r9d,0x00(%r13, %rdx, 4)
          movq     %r10,%rdx                         # RDX = entry source
          movq     %rdi,%rbp                         # RBP = EA empty string
          jmp      wstr
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
     xchg:orl      $0x0804,0x08(%rcx)                # lock field, set changed
          jmp      *xcjt(, %r12, 8)                  # jump table <xcjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     xc01:movb     0x00(%r13, %r10, 1),%al
          movb     0x00(%r13, %rdx, 1),%bl
          movb     %bl,0x00(%r13, %r10, 1)
          movb     %al,0x00(%r13, %rdx, 1)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     xc02:movw     0x00(%r13, %r10, 2),%ax
          movw     0x00(%r13, %rdx, 2),%bx
          movw     %bx,0x00(%r13, %r10, 2)
          movw     %ax,0x00(%r13, %rdx, 2)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD + $32            Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     xc03:movl     0x00(%r13, %r10, 4),%eax
          movl     0x00(%r13, %rdx, 4),%ebx
          movl     %ebx,0x00(%r13, %r10, 4)
          movl     %eax,0x00(%r13, %rdx, 4)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     xc04:movq     0x00(%r13, %r10, 8),%rax
          movq     0x00(%r13, %rdx, 8),%rbx
          movq     %rbx,0x00(%r13, %r10, 8)
          movq     %rax,0x00(%r13, %rdx, 8)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     xc05:shlq     $0x04,%r10
          shlq     $0x04,%rdx
          addq     %r13, %r10
          addq     %r13, %rdx
          movdqa   0x00(%r10),%xmm0
          movdqa   0x00(%rdx),%xmm1
          movdqa   %xmm1,0x00(%r10)
          movdqa   %xmm0,0x00(%rdx)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     xc06:imull    %r11, %r10
          imull    %r11, %rdx
          addq     %r13, %r10
          addq     %r13, %rdx
          shrq     $0x04,%r11
        0:movdqa   0x00(%r10),%xmm0
          movdqa   0x00(%rdx),%xmm1
          movdqa   %xmm1,0x00(%r10)
          movdqa   %xmm0,0x00(%rdx)
          addq     $0x10,%r10
          addq     $0x10,%rdx
          decq     %r11
          jne      0b
          jmp      UNL
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
     addr:jmp      *adjt(, %r12, 8)           # jump table <adjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ad01:leaq     0x00(%r13, %rdx),%rax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ad02:leaq     0x00(%r13, %rdx, 2),%rax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ad03:leaq     0x00(%r13, %rdx, 4),%rax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ad04:leaq     0x00(%r13, %rdx, 8),%rax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ad05:shll     $0x04,%edx
          leaq     0x00(%r13, %rdx, 1),%rax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ad06:imulq    %rdx,%r11
          leaq     0x00(%r13, %r11, 1),%rax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г If the [encrypted] flag is set, the string Гл
          Г is copied to BBF and the address of BBF is Гл
          Г returned.                                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     ad07:movl     0x00(%r10, %rdx, 4),%eax          # get  offset
          addq     %rdi,%rax                         # make address
          cmpq     %rdi,%rax                         # empty string?
          je       XIT
          testl    $0x1000,%r14                      # default?
          je       XIT
          movl     0x00(%rax),%ebx                   # RBX = size
          movzwl   0x2A(%rdi),%edx                   # RDX = decode depth
          movq     %r15, %rcx                        # RCX = buffer
          addl     $0x0F,%ebx                        # RBX = include possible padding
          shrl     $0x04,%ebx                        # RBX = paras
        0:movdqa   0x00(%rax),%xmm0                  # copy
          movdqa   %xmm0,0x00(%r15)
          addq     $0x10,%rax
          addq     $0x10,%r15
          decl     %ebx
          jne      0b
          call     _ssDEC
          movq     %rbp,%rax                         # return BBF!
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_SEARCH                                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_SEARCH, X, Y);          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RBP address source (ignored if 01...04)    Гл
          Г RBX numeric value  (ignored if 05...07)    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RAX **** ****   found entry                Гл
          Г     FFFF FFFF   no match                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Search for pattern. Start with entry E. To Гл
          Г find more matches, set E = (RC + 1).  Redo Гл
          Г the search until FFFFFFFF is returned.     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     srch:movl     0x3C(%rdi),%r9d                   # R09 = entries
          xorl     %ebx,%ebx                         # EBX = 0
          movl     %edx,%eax                         # RAX = start
          decl     %r9d                              # R09 = count
          decl     %ebx                              # RBX = no match
          subl     %edx,%r9d                         # R09 = loopc
          cmovs    %ebx,%eax                         # RAX = no match
          js       XIT
          jmp      *scjt(, %r12, 8)                  # jump table <scjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     sc01:cmpb     0x00(%r13, %rax, 1),%r10b         # match?
          je       XIT
          incl     %eax                              # entry++
          decl     %r9d                              # count--
          jns      sc01
          movl     %ebx,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     sc02:cmpw     0x00(%r13, %rax, 2),%r10w         # match?
          je       XIT
          incl     %eax                              # entry++
          decl     %r9d                              # count--
          jns      sc02
          movl     %ebx,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     sc03:cmpl     0x00(%r13, %rax, 4),%r10d         # match?
          je       XIT
          incl     %eax                              # entry++
          decl     %r9d                              # count--
          jns      sc03
          movl     %ebx,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     sc04:cmpq     0x00(%r13, %rax, 8),%r10          # match?
          je       XIT
          incl     %eax                              # entry++
          decl     %r9d                              # count--
          jns      sc04
          movl     %ebx,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     sc05:shll     $0x04,%edx                        # RDX = offset start
          movq     0x00(%rbp),%r10                   # R10 = lo DQ
          movq     0x08(%rbp),%r11                   # R11 = hi DQ
          addq     %rdx,%r13                         # R13 = EA start
        0:cmpq     0x00(%r13),%r10                   # lo DQ match?
          jne      1f
          cmpq     0x08(%r13),%r11                   # hi DQ match?
          je       XIT
        1:addq     $0x10,%r13
          incl     %eax
          decl     %r9d
          jns      0b
          movl     %ebx,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     sc06:imull    %r11d,%edx                        # RDX = offset
          addq     %r13, %rdx                        # RDX = EA entry
          .p2align 4,,15
        0:movq     %rbp, %r10                        # R10 = EA input
          movq     %rdx, %r12                        # R12 = EA entry
          movl     %r11d,%r15d                       # R15 = size
          .p2align 4,,15
        1:movdqu   0x00(%r10),%xmm0                  # XM0 = DO 0 (in)
          movdqu   0x10(%r10),%xmm1                  # XM1 = DO 1 (in)
          pcmpeqb  0x00(%r12),%xmm0                  # XM0 = compare
          pcmpeqb  0x10(%r12),%xmm1                  # XM1 = compare
          pmovmskb %xmm0,     %r8d                   # R08 = mask DO 0
          pmovmskb %xmm1,     %ecx                   # R09 = mask DO 1
          cmpl     $0xFFFF,   %r8d                   # all equal?
          jne      2f
          subl     $0x10,     %r15d                  # completed?
          je       XIT
          cmpl     $0xFFFF,   %ecx                   # all equal?
          jne      2f
          subl     $0x10,     %r15d                  # completed?
          je       XIT
          addq     $0x20,%r10                        # next DO (in)
          addq     $0x20,%r12                        # next DO (et)
          jmp      1b
          .p2align 4,,15
        2:incl     %eax                              # RAX = next entry
          addq     %r11, %rdx                        # RDX = EA next entry
          decl     %r9d
          jns      0b
          movl     %ebx,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г CAUTION!                                   Гл
          Г ФФФФФФФФ                                   Гл
          Г The input pattern is padded with zeroes up Гл
          Г to the next multiple of 16!                Гл
          Г                                            Гл
          Г Searching for encrypted strings returns no Гл
          Г valid result!                              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     sc07:movq     %rbp, %rcx                        # RCX = EA input
          xorl     %r8d, %r8d                        # R08 = 0
          call     _SPad
          movl     %eax, %r8d                        # R08 = size input
          cmpl     0x38(%rdi),%eax                   # size > maxsize?
          cmova    %ebx,%eax                         # cannot be found!
          je       XIT
          movl     %edx, %eax                        # RAX = start
          shrl     $0x04,%r8d                        # R08 = paragraphs input
          movdqu   0x00(%rbp),%xmm0                  # XM0 = 1st para
          .p2align 4,,15
        0:movl     0x00(%r13, %rax, 4),%r12d         # R12 = offset entry
          movl     %r8d, %r10d                       # R10 = pcnt
          testl    %r12d,%r12d                       # zero?
          je       3f
          addq     %rdi, %r12                        # R12 = EA input
          movq     %rbp, %rcx                        # RCX = EA input
          pcmpeqb  0x00(%r12),%xmm0                  # XM0 = eq pattern
          pmovmskb %xmm0,%rdx                        # RDX = mask
          cmpl     $0xFFFF,%rdx                      # match?
          je       2f
        1:incl     %eax                              # RAX = entry++
          decl     %r9d                              # R09 = count--
          jns      0b
          movl     %ebx,%eax                         # RAX = not found
          jmp      XIT
          .p2align 4,,15
        2:addq     $0x10,%rcx                        # RCX = EA input
          addq     $0x10,%r12                        # R12 = EA entry
          decl     %r10d                             # pcnt--
          je       XIT
          movdqu   0x00(%rcx),%xmm0                  # XM0 = para input
          pcmpeqb  0x00(%r12),%xmm0                  # XM0 = eq pattern
          pmovmskb %xmm0,%rdx                        # RDX = mask
          cmpl     $0xFFFF,%rdx                      # match?
          je       2b
          movdqu   0x00(%rbp),%xmm0                  # XM0 = 1st para
          jmp      1b
          .p2align 4,,15
        3:testl    %r8d,%r8d                         # empty input?
          je       XIT
          jmp      1b
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
          Г RAX 0000 0000   equal                      Гл
          Г     positive    entry > pattern  (DQ!)     Гл
          Г     negative    entry < pattern  (DQ!)     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Compare entry E in subfield S against pat- Гл
          Г tern (X or Y).                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     comp:jmp      *cmpjt(, %r12, 8)                 # jump table <cmpjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp01:movzb    0x00(%r13, %rdx, 1),%eax          # RAX = byte
          andq     $0xFF,%r10
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp02:movzwl   0x00(%r13, %rdx, 2),%eax          # RAX = word
          andq     $0xFFFF,%r10
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp03:movl     0x00(%r13, %rdx, 4),%eax          # RAX = dword
          andq     $0xFFFFFFFF,%r10
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp04:movq     0x00(%r13, %rdx, 8),%rax          # RAX = qword
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г common 01...04      Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
        0:subq     %r10,%rax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp05:movq     0x00(%rbp),%rbx                   # RBX = DQloPattern
          movq     0x08(%rbp),%rcx                   # RCX = DQhiPattern
          movq     0x00(%r13, %rdx, 8),%rax          # RAX = DQloEntry
          movq     0x08(%r13, %rdx, 8),%rdx          # RDX = DQhiEntry
          subq     %rbx,%rax                         # lo entry - pattern
          jne      XIT
          sbbq     %rcx,%rdx                         # lo entry - pattern
          movq     %rdx,%rax                         # RAX = result
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp06:imull    %r11d,%edx                 # RDX = offset
          addq     %rdx,%r13                  # R10 = EA entry
          shrq     $0x04,%r11                 # R09 = paragraphs
        0:movq     0x00(%rbp),%rcx            # RCX = loDQpattern
          movq     0x08(%rbp),%rdx            # RDX = hiDQpattern
          movq     0x00(%r13),%rax            # RAX = loDQentry
          movq     0x08(%r13),%rbx            # RBX = hiDQentry
          subq     %rcx,%rax                  # lo entry - pattern
          jne      XIT
          subq     %rdx,%rbx                  # hi entry - pattern
          cmovne   %rbx,%rax                  # RAX <> 0
          jne      XIT
          addq     $0x10,%rbp                 # paragraph++
          addq     $0x10,%r13                 # paragraph++
          decl     %r11d                      # paragraphs--
          je       XIT                        # RAX =  0
          jmp      0b
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г CAUTION!                                   Гл
          Г ФФФФФФФФ                                   Гл
          Г The input pattern is padded with zeroes up Гл
          Г to the next multiple of 16!                Гл
          Г                                            Гл
          Г Comparison of encrypted strings returns no Гл
          Г valid result!                              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    cmp07:movl     %rbp, %rcx                        # RCX = EA input
          movl     $0x01,%rbx                        # RBX = 1
          xorl     %r9d, %r9d                        # R09 = 0
          call     _SPad
          cmpl     0x38(%rdi),%eax                   # input > maxsize?
          ja       1f
          shrl     $0x04,%eax                        # RAX = pcnt
          movl     0x00(%r13, %rdx, 4),%edx          # RDX = offset
          testl    %edx,%edx                         # empty string?
          je       XIT
          addq     %rdi,%rdx                         # RDX = EA entry
          testl    %eax,%eax                         # empty input?
          je       1f
          .p2align 4,,15
        0:movdqu   0x00(%rbp),%xmm0                  # compare loop
          pcmpeqb  0x00(%rdx),%xmm0
          pmovmskb %xmm0,%r9d                        # R09 = mask
          addq     $0x10,%rbp                        # RBP = next para input
          addq     $0x10,%rdx                        # RDX =           entry
          cmpl     $0xFFFF,%r9d                      # equal?
          jne      1f
          decl     %eax                              # pcnt--
          je       XIT
          jmp      0b
          .p2align 4,,15
        1:movl     %rbx,%eax                         # equal if empty input
          jmp      XIT
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
     ninc:orl      $0x0804,0x08(%rcx)                # lock field, set changed
          jmp      *nijt(, %r12, 8)                  # jump table <nijt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ni01:incb     0x00(%r13, %rdx, 1)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ni02:incw     0x00(%r13, %rdx, 2)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ni03:incl     0x00(%r13, %rdx, 4)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ni04:incq     0x00(%r13, %rdx, 8)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ni05:shlq     $0x04,%rdx                        # RDX * 16
          addq     $0x01,0x00(%r13, %rdx)
          adcq     $0x00,0x08(%r13, %rdx)
          jmp      UNL
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
     ndec:orl      $0x0804,0x08(%rcx)                # lock field, set changed
          jmp      *ndjt(, %r12, 8)                  # jump table <ndjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     nd01:decb     0x00(%r13, %rdx, 1)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     nd02:decw     0x00(%r13, %rdx, 2)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     nd03:decl     0x00(%r13, %rdx, 4)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     nd04:decq     0x00(%r13, %rdx, 8)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     nd05:shlq     $0x04,%rdx                        # RDX * 16
          subq     $0x01,0x00(%r13, %rdx)
          sbbq     $0x00,0x08(%r13, %rdx)
          jmp      UNL
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
     nadd:orl      $0x0804,0x08(%rcx)                # lock field, set changed
          jmp      *najt(, %r12, 4)                  # jump table <najt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     na01:addb     %r10b,0x00(%r13, %rdx, 1)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     na02:addw     %r10w,0x00(%r13, %rdx, 2)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     na03:addl     %r10d,0x00(%r13, %rdx, 4)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     na04:addq     %r10,0x00(%r13, %rdx, 8)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     na05:shlq     $0x04,%rdx                        # RDX * 16
          movq     0x00(%rbp),%rax
          movq     0x08(%rbp),%rbx
          addq     %rax,0x00(%r13, %rdx)
          adcq     %rbx,0x08(%r13, %rdx)
          jmp      UNL
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
     nsub:orl      $0x0804,0x08(%rcx)                # lock field, set changed
          jmp      *nsjt(, %r12, 8)                  # jump table <nsjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ns01:subb     %r10b,0x00(%r13, %rdx, 1)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ns02:subw     %r10w,0x00(%r13, %rdx, 2)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ns03:subl     %r10d,0x00(%r13, %rdx, 4)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ns04:subq     %r10,0x00(%r13, %rdx, 8)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     ns05:shlq     $0x04,%rdx                        # RDX * 16
          movq     0x00(%ebp),%rax
          movq     0x08(%ebp),%rbx
          subq     %rax,0x00(%r13, %rdx)
          sbbq     %rbx,0x08(%r13, %rdx)
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г FDA_OFFSET                                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г FDacc(F, E, S, FDA_OFFSET, 0, 0);          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Return offset of entry E relative          Гл
          Г to field base.                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     offs:movq     %r13,%rax                         # RAX = EA subfield
          subq     %rdi,%rax                         # RAX = offset subfield
          jmp      *ofjt(, %r12, 8)                  # jump table <ofjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DB                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of01:addl     %edx,%eax
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DW                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of02:shrl     %edx
          jmp      of01
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DD                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of03:shll     $0x02,%edx
          jmp      of01
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DQ                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of04:shll     $0x03,%edx
          jmp      of01
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г DO                  Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of05:shll     $0x04,%edx
          jmp      of01
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г FIX                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of06:imull    %r11d,%edx
          jmp      of01
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г $32                 Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
     of07:movl     0x00(%r13, %rdx, 4),%eax
          jmp      XIT
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
          Г R08   subfield                             Гл
          Г R09   -                                    Гл
          Г RDI   EA field                             Гл
          Г RSI   BNR                                  Гл
          Г RBP   PAR5 (EA data)                       Гл
          Г R10   -                                    Гл
          Г R11   max size                             Гл
          Г R12   type - 1                             Гл
          Г R13   EA subfield                          Гл
          Г R14   flags MH                             Гл
          Г R15   EA buffer                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   always zero                        Гл
          Г   EBX   RC on error                      # Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл

          4 subfunctions jump here:

          02 FDA_WRITE    RBP = EA source
          03 FDA_DELETE   RBP = EA field
          04 FDA_COPY     RBP = EA source or field (copies string to BBF)
          05 FDA_MOVE     RBP = EA field           (exchanges OT entries)

          we first get the size of the source and the string stored in
          our field:

          EAX = size source
          EBX = size string

          Now we have two choices:

          1.  EAX = 0            empty source (delete)

              if EBX = 0         nothing to do
              if EBX > 0         shuffle entries above down, run
                                 OT correction with negative gap
                                 size, update field end

          2.  EAX > 0            source present (write)
          
              if EBX = 0         append string to field end, set OT,
                                 update field end

              if EBX > EAX       shuffle entries above down, copy
                                 source to gap, run OT correction
                                 with negative gap size, update
                                 field end
              
              if EBX < EAX       shuffle entries above up, copy
                                 source to gap, run OT correction
                                 with positive gap size, update
                                 field end
          */



          .p2align 4,,15
          .def     wstr; .scl 2; .type 32; .endef
     wstr:movl     0x00(%r13, %rdx, 4),%r10d         # R10 = offset entry
          orw      $0x0800,0x30(%rdi)                # set dirty flag field
          orw      $0x0800,0x08(%rcx)                #                MH
          movq     %rbp, %rax                        # RAX = EA input
          pxor     %xmm0,%xmm0                       # XM0 = 0
          movl     %r10d,%ebx                        # RBX = offset
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г get input size    Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          xchg     %rcx,%rbp                         # RCX = EA, RBP = MH
          call     _SPad
          leal     0x17(%eax),%r9d                   # R09 = encrypted + padding
          xchg     %rcx,%rbp                         # RCX = MH, RBP = EA
          addq     %rdi,%rbx                         # RBX = EA entry
          andl     $0xFFFFFFF0,%r9d                  # R09 = padded size
          testl    $0x1000,%r14d                     # encrypted?
          cmovne   %r9d,%eax                         # RAX + 8
          movl     0x00(%rbx),%r9d                   # R09 = encrypted size
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г get entry size    Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          testl    $0x1000,%r14d                     # encrypted?
          je       2f
          leal     0x0F(%r9d), %ebx                  # RBX = size + 15
          andl     $0xFFFFFFF0,%ebx                  # RBX = padded size
          jmp      6f
          .p2align 4,,15
        2:cmpl     %rdi,%rbx                         # empty string?
          je       5f
        3:cmpb     $0x00,0x0F(%rbx)                  # scan for entry end
          je       4f
          addl     $0x10,%rbx
          jmp      3b
          .p2align 4,,15
        4:addq     $0x10,%rbx                        # RBX = proper offset
        5:subq     %rdi, %rbx                        # RBX = proper size
        6:cmpl     %r11d,%rax                        # max size exceeded?
          jb       7f
          movl     %r11d,%eax                        # RAX = valid size
          movb     $0x00,-1(%rbp, %r11, 1)           # set terminator
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г calc gap size     Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        7:movq     %r10,0x60(%rsp)                   # s60 = entry offset
          movq     %rbx,0x68(%rsp)                   # s68 =       size
          movq     %rax,0x70(%rsp)                   # s70 = input size
          subl     %eax,%ebx                         # RBX = gap   size
          js       wsup
          ja       wsdn
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г RAX   input size                           Гл
          Г RBX   gap size (neg, 0, pos)               Гл
          Г RCX   MemHandle                            Гл
          Г RDX   entry number                         Гл
          Г R08   subfield                             Гл
          Г R09   - (encrypted size)                   Гл
          Г RDI   EA field                             Гл
          Г RSI   BNR                                  Гл
          Г RBP   EA input                             Гл
          Г R10   offset entry                         Гл
          Г R11   - (max size - 1)                     Гл
          Г R12   - (type - 1)                         Гл
          Г R13   EA subfield                          Гл
          Г R14   flags MH                             Гл
          Г R15   EA BBF                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФП
          Г input fits        Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
          addq     %rdi,%r10                         # R10 = EA entry
          shrl     $0x04,%eax                        # RAX = paras to move
          je       UNL
        0:movdqa   0x00(%rbp),%xmm0                  # copy input to entry
          movdqa   %xmm0,0x00(%r10)
          addq     $0x10,%rbp                        # RBP = next para
          addq     $0x10,%r10                        # R10 = next para
          decl     %eax                              # RAX = loop_cnt--
          jne      0b
          jmp      UNL
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г input larger      Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
     wsup:
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г input smaller     Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
     wsdn:
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г copy input        Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
     wcpy:
          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г OT correction     Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
     wotc:







          /*
          кФФФФФФФФФФФФФФФФФФФП
          Г field corrections Гл
          РФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллл
          */
        2:movl      0x3C(%rdi),%r08                  # R08 = entries
          subl      %r10d,%ebx                       # RBX = size (input - entry)
          je        write
          addl      %ebx, 0x34(%rdi)                 # set new field end
          movl      %edx, %eax
        0:
          leaq     0x00(%rdi, %r9, 1),%r15    # R15 = EA entry
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
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                           S H I F T   F U N C T I O N S                            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SftUp   delete last entry, then shift field one entry up                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   MemHandle                                                                  Гл
          Г   RDX   start entry (1st moved entry)                                              Гл
          Г   R08   subfield number                                                            Гл
          Г   -----------------------------------                                              Гл
          Г   RDI    EA field                                                                  Гл
          Г   RSI    BNR                                                                       Гл
          Г   R10    max entries                                                               Гл
          Г   R11    type size                                                                 Гл
          Г   R12    type - 1                                                                  Гл
          Г   R13    EA subfield                                                               Гл
          Г   R14    flags MH                                                                  Гл
          Г   R15    EA buffer                                                                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г SftUp() deletes the last entry in a field, then moves all entries - beginning with Гл
          Г entry PAR3 - one up. No string is moved, only the offset table is reorganised.     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    sftup:movl     %r10d,%ebp                        # RBP = max entries
          cmpl     $0x06,%r12                        # dynamic string?
          jne      0f
          xchgq    %rdx,%r10                         # R10 = start, RDX = last
          movq     $0x03,%r9                         # R09 = FDA_DELETE
          call     _FDacc
          xchgq    %rdx,%r10                         # RDX = start, R10 = last
          testl    %eax,%eax
          je       0f
          jmp      XIT
          .p2align 4,,15
        0:decq     %r10                              # R10 = last entry
          decl     %rbp                              # RBP = last entry
          movl     $0x08,%ebx                        # EBX = ERR_PAR_INVALID
          subl     %edx,%r10d                        # R10 = entries to move
          js       ERR
          je       XIZ
          orw      $0x0800,0x08(%rcx)                # lock MH
          orw      $0x0800,0x30(%rdi)                #      field
          xorl     %ebx,%ebx                         # RBX = 0
          jmp      *supjt(, %r12, 8)                 # jump table <supjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г RAX   -                                    Гл
          Г RBX   0                                    Гл
          Г RCX   MemHandle                            Гл
          Г RDX   start entry                          Гл
          Г RDI   EA field                             Гл
          Г RSI   BNR                                  Гл
          Г RBP   last (entry number)                  Гл
          Г R08   subfield number                      Гл
          Г R09   -                                    Гл
          Г R10   entries to move                      Гл
          Г R13   EA subfield                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 01             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    supDB:leaq     -1(%r13, %rbp),%r9                # R09 = EA [last - 1]
        0:movb     0x00(%r9),%al                     # EAX = DB[last - 1]
          movb     %al,0x01(%r9)                     #    -> DB[last]
          subq     $0x01,%r9                         # one DB down
          decl     %r10d                             # count--
          jne      0b
          movb     %bl,0x00(%r9)                     # clear gap
          jmp      STS
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 02             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    supDW:leaq     -2(%r13, %rbp, 2),%r9             # R09 = EA [last - 1]
        0:movw     0x00(%r9),%ax                     # EAX = DW[next - 1]
          movw     %ax,0x02(%r9)                     #    -> DW[next]
          subq     $0x02,%r9                         # one DW down
          decl     %r10d                             # count--
          jne      0b
          movw     %bx,0x00(%r9)                     # clear gap
          jmp      STS
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 03 + 07        Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    supDD:leaq     -4(%r13, %rbp, 4),%r9             # R09 = EA [last - 1]
        0:movl     0x00(%r9),%eax                    # EAX = DD[last - 1]
          movl     %eax,0x04(%r9)                    #    -> DD[last]
          subq     $0x04,%r9                         # one DD down
          decl     %r10d                             # count--
          jne      0b
          movl     %ebx,0x00(%r9)                    # clear gap
          jmp      STS
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 04             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    supDQ:leaq     -8(%r13, %rbp, 8),%r9             # R09 = EA [last - 1]
        0:movq     0x00(%r9),%rax                    # EAX = DQ[next - 1]
          movq     %rax,0x08(%r9)                    #    -> DQ[next]
          subq     $0x08,%r9                         # one DQ down
          decl     %r10d                             # count--
          jne      0b
          movq     %rbx,0x00(%r9)                    # clear gap
          jmp      STS
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 05             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    supDO:movq     %rbp,%rax                         # RAX = last
          shll     $0x04,%eax                        # EAX = offset [last]
          leaq     -16(%r13, %rax),%r9               # R09 = EA [last - 1]
          pxor     %xmm1,%xmm1
        0:movdqa   0x00(%r9),%xmm0                   # EAX = DO[next - 1]
          movdqa   %xmm0,0x10(%r9)                   #    -> DO[next]
          subq     $0x10,%r9                         # one DO down
          decl     %r10d                             # count--
          jne      0b
          movdqa   %xmm1,0x00(%r9)                   # clear gap
          jmp      STS
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 06             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    supFX:movl     0x38(%rdi),%ebx                   # RBX = entry size
          movl     0x20(%rdi),%r8d                   # R08 = subfield size
          movl     0x20(%rdi),%r9d                   # R09 = subfield size
          movq     %r10,%rax                         # RAX = entries to move
          subl     $0x80,%r8d                        # R08 = offset [last - 1]
          subl     $0x40,%r9d                        # R09 = offset [last]
          imull    %ebx,%r10d                        # R10 = byte to move
          imull    %ebx,%edx                         # RDX = offset start
          imull    %ebx,%eax                         # RAX = byte to move
          shrl     $0x06,%r10d                       # R10 = block count
          shrl     $0x04,%eax                        # RAX = paragraphs to move
          shrl     $0x04,%ebx                        # RBX =            per entry
          addq     %r13,%r8                          # R08 = EA [last - 1]
          addq     %r13,%r9                          # R09 = EA [last]
          andl     $0x03,%eax                        # RAX = remaining paragraphs to move
          addq     %rdx,%r13                         # R13 = EA [start]
          testl    %r10d,%r10d                       # any blocks?
          je       1f
        0:movdqa   0x00(%r8),%xmm0                   # read block
          movdqa   0x10(%r8),%xmm1
          movdqa   0x20(%r8),%xmm2
          movdqa   0x30(%r8),%xmm3
          movdqa   %xmm0,0x00(%r9)                   # write block
          movdqa   %xmm1,0x10(%r9)
          movdqa   %xmm2,0x20(%r9)
          movdqa   %xmm3,0x30(%r9)
          subq     $0x40,%r8                         # one block down
          subq     $0x40,%r9
          decl     %r10d                             # block count--
          jne      0b
        1:decl     %eax                              # remains--
          jbe      2f
          movdqa   0x00(%r8),%xmm0                   # copy paragraph
          movdqa   %xmm0,0x00(%r9)
          subq     $0x10,%r8                         # one block down
          subq     $0x10,%r9
          jmp      1b
        2:pxor     %xmm0,%xmm0                       # XM0 = 0
        3:movdqa   %xmm0,0x00(%r13)                  # clear gap
          addq     $0x10,%r13                        # next paragraph
          decl     %ebx                              # count--
          jne      3b
          jmp      STS
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SftDn   delete entry PAR2, then shift the field one entry down                     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   MemHandle                                                                  Гл
          Г   RDX   start entry (this one is removed!)                                         Гл
          Г   R08   subfield                                                                   Гл
          Г   ----------------------------------------                                         Гл
          Г   RDI    EA field                                                                  Гл
          Г   RSI    BNR                                                                       Гл
          Г   R10    max entries                                                               Гл
          Г   R11    type size                                                                 Гл
          Г   R12    type - 1                                                                  Гл
          Г   R13    EA subfield                                                               Гл
          Г   R14    flags MH                                                                  Гл
          Г   R15    EA buffer                                                                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г SftDn() deletes entry PAR2, then moves all entries (starting at PAR2 + 1) one unit Гл
          Г down. Strings are not moved, only the offset table is reorganised.                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    sftdn:movl     %r10d,%ebp                        # RBP = max entries
          cmpl     $0x06,%r12d                       # $32?
          jne      0f
          movl     $0x03,%r9d                        # R09 = FDA_DELETE
          call     _FDacc
          testl    %eax,%eax                         # error?
          je       0f
          jmp      XIT
          .p2align 4,,15
        0:decl     %ebp                              # RBP = last entry
          decq     %r10                              # R10 = last entry
          movl     $0x08,%ebx                        # RBX = ERR_PAR_INVALID
          subl     %edx,%ebp                         # RBP = entries to move
          js       ERR
          orw      $0x0800,0x08(%rcx)                # lock MH
          orw      $0x0800,0x30(%rdi)                #      field
          xorl     %ebx,%ebx                         # RBX = 0
          jmp      *sdnjt(, %r12, 8)                 # jump table <supjt>
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г RAX   -                                    Гл
          Г RBX   0                                    Гл
          Г RCX   MemHandle                            Гл
          Г RDX   start entry                          Гл
          Г RDI   EA field                             Гл
          Г RSI   BNR                                  Гл
          Г RBP   last (entry number)                  Гл
          Г R08   subfield number                      Гл
          Г R09   -                                    Гл
          Г R10   entries to move                      Гл
          Г R13   EA subfield                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 01             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    sdnDB:testl    %ebp,%ebp
          je       1f
        0:movb     0x01(%r13, %rdx),%al              # read next entry
          movb     %al,0x00(%r13, %rdx)              # store as entry
          incl     %edx                              # next entry
          decl     %ebp                              # count--
          jne      0b
        1:movb     %bl,0x00(%r13, %r10)              # clear last
          jmp      STS
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 02             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    sdnDW:testl    %ebp,%ebp
          je       1f
        0:movw     0x02(%r13, %rdx, 2),%ax           # read next entry
          movw     %ax,0x00(%r13, %rdx, 2)           # store as entry
          incl     %edx                              # next entry
          decl     %ebp                              # count--
          jne      0b
        1:movw     %bx,0x00(%r13, %r10, 2)           # clear last
          jmp      STS
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 03 + 07        Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    sdnDD:testl    %ebp,%ebp
          je       1f
        0:movl     0x04(%r13, %rdx, 4),%eax          # read next entry
          movl     %eax,0x00(%r13, %rdx, 4)          # store as entry
          incl     %edx                              # next entry
          decl     %ebp                              # count--
          jne      0b
        1:movl     %ebx,0x00(%r13, %r10, 4)          # clear last
          jmp      STS
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 04             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    sdnDQ:testl    %ebp,%ebp
          je       1f
        0:movq     0x08(%r13, %rdx, 8),%rax          # read next entry
          movq     %rax,0x00(%r13, %rdx, 8)          # store as entry
          incl     %edx                              # next entry
          decl     %ebp                              # count--
          jne      0b
        1:movq     %rbx,0x00(%r13, %r10, 8)          # clear last
          jmp      STS
          /*
          кФФФФФФФФФФФФФФФФФФФФФП
          Г type 05             Гл
          РФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллл
          */
          .p2align 4,,15
    sdnDO:shll     $0x04,%edx                        # EDX = offset [start]
          pxor     %xmm1,%xmm1                       # XM1 = 0
          addq     %rdx,%r13                         # R13 = EA [start]
          testl    %ebp,%ebp
          je       1f
        0:movdqa   0x10(%r13),%xmm0                  # read next entry
          movdqa   %xmm0,0x00(%r13)                  # store as entry
          addq     $0x10,%r13                        # next entry
          decl     %ebp                              # count--
          jne      0b
        1:movdqa   %xmm1,0x00(%r13)                  # clear last
          jmp      STS
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
          Г R09   -                                    Гл
          Г R10   last entry                           Гл
          Г R12   type - 1                             Гл
          Г R13   EA subfield                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    sdnFX:movl     0x38(%rdi),%ebx                   # RBX = entry size
          movl     0x20(%rdi),%r8d                   # R08 = subfield size
          movq     %rbp,%rax                         # RAX = entries to move
          movq     %r13,%r9                          # R09 = EA subfield
          imull    %ebx,%ebp                         # EBP = byte to move
          imull    %ebx,%edx                         # EDX = offset start
          subl     %ebx,%r8d                         # R08 = offset last
          shrl     $0x04,%eax                        # EAX = paragraphs to move
          addq     %rdx,%r9                          # R09 = EA start
          shrl     $0x06,%ebp                        # EBP = blocks to move
          addq     %rdx,%r13                         # R13 = EA start
          addq     %rbx,%r9                          # R09 = EA next
          andl     $0x03,%eax                        # EAX = odd paragraphs
          shrl     $0x04,%ebx                        # EBX = paragraphs per entry
          testl    %ebp,%ebp                         # any blocks?
          je       1f
        0:movdqa   0x00(%r9),%xmm0                   # read block
          movdqa   0x10(%r9),%xmm1
          movdqa   0x20(%r9),%xmm2
          movdqa   0x30(%r9),%xmm3
          movdqa   %xmm0,0x00(%r13)                  # write block
          movdqa   %xmm1,0x10(%r13)
          movdqa   %xmm2,0x20(%r13)
          movdqa   %xmm3,0x30(%r13)
          addq     $0x40,%r9                         # next block
          addq     $0x40,%r13
          decl     %ebp
          jne      0b
        1:decl     %eax                              # odd--
          jbe      2f
          movdqa   0x00(%r9),%xmm0                   # read block
          movdqa   %xmm0,0x00(%r13)                  # write block
          addq     $0x10,%r9                         # next block
          addq     $0x10,%r13
          jmp      0b
        2:pxor     %xmm0,%xmm0                       # XM0 = 0
        3:movdqa   %xmm0,0x00(%r13)                  # clear last
          addq     $0x10,%r13
          decl     %ebx
          jne      3b
          jmp      STS
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MemHandle errors                                                                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      ERR:cmpl     $0x00,0x80(%rsp)                  # FDacc?
          je       ERR0
          movl     %ebx,%eax
          jmp      XIT
          .p2align 4,,15
     ERR0:leaq     FIAADDR(%rsi),%rax                # RAX = EA empty string
          movl     %ebx, FIAERR(%rsi)                # store error
          cmpl     $0x07,%r9d                        # FDA_ADDRESS?
          jne      XIZ
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г EXIT                                                                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      STS:testb    $0x20,0x08(%rcx)                  # static?
          jb       0f                                # no time stamp
          call     _GetTime                          # get time
          movl     %eax,0x0C(%rcx)                   # update time stamp
        0:orw      $0x04,0x08(%rcx)                  # set changed flag
          .p2align 4,,15
      UNL:andw     $0xF7FF,0x08(%rcx)                # unlock MH
          andw     $0xF7FF,0x30(%rdi)                #        field
          .p2align 4,,15
      XIZ:xorl     %eax,%eax
      XIT:movq     0x88(%rsp),%rbp
          movq     0x90(%rsp),%rsi
          movq     0x98(%rsp),%rdi
          movq     0xA0(%rsp),%rbx
          movq     0xA8(%rsp),%r15
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
          .comm    _BMM, 8, 3
          .comm    _BNR, 8, 3
          .comm    _BBF, 8, 3
