        /*
        ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
        К                             C O P Y   A N D   M O V E                              Кл
        КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
        К                          *** (C) ST-Open 1979 - 2008 ***                           Кл
        ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
          ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
        ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
        К       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        Кл
        КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
        К You may copy and distribute it as often as you want, but recipients aren't allowed Кл
        К to pay anything for any copy of this file.                                         Кл
        К                                                                                    Кл
        К You are free to modify the content of this file if you want to. However, derivates Кл
        К of the content of this file *still* are subject to the terms of the FT4FP license. Кл
        К Recipients neither are allowed to pay anything for the original nor for altered or Кл
        К derived replica.                                                                   Кл
        КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
        К       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        Кл
        ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
          ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
        */
        .include "..//..//..//..//include//yasm.h"
        .include "..//..//source//hasm.h"
        .text
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г CopyFld  copy field content          Гл
        УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
        Г-> PAR1   HWND                        Гл
        Г   PAR2   message                     Гл
        Г   PAR3           parameter 1         Гл
        Г   PAR4                     2         Гл
        УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
        Г<- EAX    xxxx xxxx   MRESULT         Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллллллллллл
        */
        .align 0x02,0x90
.globl _CopyFld
_CopyFld:
        subl $0x80,%esp
        nop
        nop
        movl %edx,0x68(%esp)
        movl %ecx,0x6C(%esp)
        movl %ebx,0x70(%esp)
        movl %edi,0x74(%esp)
        movl %esi,0x78(%esp)
        movl %ebp,0x7C(%esp)
        movl 0x84(%esp),%edi                  # EDI = HWND
        movl 0x88(%esp),%eax                  # EAX = msg
        movzwl 0x8C(%esp),%ecx                # ECX = W0MP(mp1)
        movl _BNR,%esi                        # ESI = BNR
        cmpl $0x20,%eax
        je 0f
        cmpl $0x3B,%eax
        jne L08
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г WM_INITDLG               Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллл
        */
        movl $0x00,CP_SRC(%esi)               # CPY_SOURCE = 0
        movl $0x00,CP_TGT(%esi)               # CPY_TARGET = 0
        movl %edi,0x00(%esp)
        movl $0xE6,0x04(%esp)
        movl $0xE7,0x08(%esp)
        movl $0xED,0x0C(%esp)
        call _DLGtxt
        call _CtrWn
        jmp L09
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г WM_COMMAND               Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллл
        */
      0:subl $0x14F5,%ecx
        js L08
        cmpl $0x04,%ecx
        ja L08
        movl _MHSTR,%ebp                      # EBP = FLD_STR
        jmp *L00(, %ecx, 4)
        .align 2,0x90
    L00:.long L01
        .long L02
        .long L03
        .long L04
        .long L05
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г copy               Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
    L01:jmp CpyWk
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г abort              Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
    L02:movl %edi,0x00(%esp)
        call _WinDD
        jmp L09
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г help               Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
    L03:movl $0x0F,0x00(%esp)
        call _Help
        jmp L09
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г select source      Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
    L04:movl SL_FLD(%esi),%ecx                # store SEL_FIELD
        movl %edi,0x00(%esp)                  # HWND
        movl $_SelectF,0x04(%esp)             # PFNWP
        movl $0x1300,0x08(%esp)               # ID
        call _DBox
        movl SL_FLD(%esi),%eax                # get selection
        movl %ebp,0x00(%esp)                  # FLD_STR
        movl $0x64,0x04(%esp)                 # STR_FLD_NAME
        movl $0x00,0x08(%esp)                 # subfield 00
        movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
        movl %ecx,SL_FLD(%esi)                # restore SEL_FIELD
        movl %eax,CP_SRC(%esi)                # store CPY_SOURCE
        call _FDacc
        movl $0x14FA,0x04(%esp)
        jmp 0f
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г select target      Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
    L05:movl SL_FLD(%esi),%ecx                # store SEL_FIELD
        movl %edi,0x00(%esp)                  # HWND
        movl $_SelectF,0x04(%esp)             # PFNWP
        movl $0x1300,0x08(%esp)               # ID
        call _DBox
        movl SL_FLD(%esi),%eax                # get selection
        movl %ebp,0x00(%esp)                  # FLD_STR
        movl $0x64,0x04(%esp)                 # STR_FLD_NAME
        movl $0x00,0x08(%esp)                 # subfield 00
        movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
        movl %ecx,SL_FLD(%esi)                # restore SEL_FIELD
        movl %eax,CP_TGT(%esi)                # store CPY_TARGET
        call _FDacc
        movl $0x14FB,0x04(%esp)
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г common: set EFld   Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
      0:movl %edi,0x00(%esp)
        movl %eax,0x08(%esp)
        call _SEf
        jmp L09
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г default                  Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллл
        */
    L08:movl 0x6C(%esp),%ecx
        movl 0x74(%esp),%edi
        movl 0x78(%esp),%esi
        addl $0x80,%esp
        jmp _DefDP
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г exit                     Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллл
        */
    L09:movl 0x68(%esp),%edx
        movl 0x6C(%esp),%ecx
        movl 0x70(%esp),%ebx
        movl 0x74(%esp),%edi
        movl 0x78(%esp),%esi
        movl 0x7C(%esp),%ebp
        addl $0x80,%esp
        xorl %eax,%eax
        ret
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г CopyWrk                              Гл
        УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
        Г-> -      nothing                     Гл
        УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
        Г<- EAX    garbage                     Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллллллллллл
        */
        .align 2,0x90
  CpyWk:movl CP_SRC(%esi),%ecx                # ECX = CPY_SOURCE
        movl CP_TGT(%esi),%edx                # EDX = CPY_TARGET
        testl %ecx,%ecx                       # source present?
        je L09
        testl %edx,%edx                       # target present?
        je L09
        movl %ecx,0x00(%esp)                  # source
        call _ldFLD
        movl MH_WRK(%esi),%ecx                # ECX = MH source
        testl %ecx,%ecx
        jne 0f
        movl $0x25,0x00(%esp)                 # ERR_LOAD_SOURCE
        call _ErrMgr
        jmp L09
      0:movl %ebp,0x00(%esp)                  # FLD_STR
        movl $0x63,0x04(%esp)                 # STR_CPY_WORK
        movl $0x00,0x08(%esp)                 # subfield 00
        movl $0x04,0x0C(%esp)                 # FDA_COPY
        movl $0x62,0x14(%esp)                 # STR_FLD_WORK
        call _FDacc
        movl %edx,0x00(%esp)                  # target
        call _ldFLD
        movl MH_WRK(%esi),%edx                # EDX = MH target
        testl %edx,%edx
        jne 1f
        movl %ecx,0x00(%esp)                  # source
        call _LDfre
        movl %ebx,MH_WRK(%esi)                # clear FLD_WORK
        movl $0x03,0x0C(%esp)                 # FDA_DELETE
        call _FDacc
        movl $0x62,0x04(%esp)                 # STR_FLD_WORK
        call _FDacc
        movl $0x26,0x00(%esp)                 # ERR_LOAD_TARGET
        call _ErrMgr
        jmp L09
      1:xorl %edi,%edi                        # EDI = 0
        movl 0x00(%ecx),%esi                  # ESI = EA source
        movl 0x00(%edx),%ebp                  # EBP = EA target
        movzb 0x2A(%esi),%eax                 # EAX = type count src
        movzb 0x2A(%ebp),%ebx                 # EBX =            tgt
        movl %edi,0x08(%esp)                  # subfield = 00
        movl %ecx,0x00(%esp)                  # MH source
        cmpl %eax,%ebx
        cmova %eax,%ebx                       # take smaller
        movl %ebx,0x18(%esp)                  # 18[ESP]  = subfields
        movl 0x3C(%esi),%eax                  # EAX = entries src
        movl 0x3C(%ebp),%ebx                  # EAX =         tgt
        movl %edi,0x14(%esp)                  # numeric  = 0
        movl %edi,0x10(%esp)                  # address  = 0
        cmpl %ebx,%eax
        cmovb %eax,%ebx                       # take smaller
        movl %ebx,0x1C(%esp)                  # 1C[ESP]  = entries
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г copy loop          Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
      2:movb 0x40(%esi, %edi, 1),%al          # get type
        movl 0x1C(%esp),%ebx                  # EBX = loop counter
        cmpb %al,0x40(%ebp, %edi, 1)          # same type?
        jne 5f
        cmpb $0x03,%al
        ja 4f
      3:movl %ecx,0x00(%esp)                  # MH source
        movl $0x01,0x0C(%esp)                 # FDA_READ
        call _FDacc
        movl %edx,0x00(%esp)                  # MH target
        movl $0x02,0x0C(%esp)                 # FDA_WRITE
        movl %eax,0x14(%esp)                  # numeric
        call _FDacc
        incl 0x04(%esp)                       # entry++
        decl %ebx
        jne 3b
        jmp 5f
      4:movl %ecx,0x00(%esp)                  # CPY_SOURCE
        movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
        call _FDacc
        movl %edx,0x00(%esp)                  # CPY_TARGET
        movl $0x02,0x0C(%esp)                 # FDA_WRITE
        movl %eax,0x10(%esp)                  # address
        call _FDacc
        incl 0x04(%esp)                       # entry++
        decl %ebx
        jne 4b
      5:incl %edi
        incl 0x08(%esp)                       # subfield++
        cmpl %edi,0x18(%esp)
        jne 2b
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г store target       Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
        call _svFLD                           # save new field
        movl 0x84(%esp),%edi                  # EDI = HWND
        movl %ecx,0x00(%esp)                  # release old field
        call _LDfre
        jmp L02
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г MoveEnt  move entries                Гл
        УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
        Г-> PAR1   HWND                        Гл
        Г   PAR2   message                     Гл
        Г   PAR3           parameter 1         Гл
        Г   PAR4                     2         Гл
        УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
        Г<- EAX    xxxx xxxx   MRESULT         Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллллллллллл
        */
        .align 2,0x90
.globl _MoveEnt
_MoveEnt:
        subl $0x40,%esp
        nop
        nop
        movl %edx,0x28(%esp)
        movl %ecx,0x2C(%esp)
        movl %ebx,0x30(%esp)
        movl %edi,0x34(%esp)
        movl %esi,0x38(%esp)
        movl %ebp,0x3C(%esp)
        movl 0x44(%esp),%edi                  # EDI = HWND
        movl 0x48(%esp),%eax                  # EAX = msg
        movzwl 0x4C(%esp),%ecx                # ECX = W0MP(mp1)
        movl _BNR,%esi                        # ESI = BNR
        cmpl $0x30,%eax                       # WM_CONTROL?
        je L11
        cmpl $0x20,%eax                       # WM_COMMAND?
        je L10
        cmpl $0x3B,%eax                       # WM_INITDLG?
        jne L12
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г WM_INITDLG         Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
        movl SL_FLD(%esi),%eax                # get SEL_FIELD
        movl $0x20,0x00(%esp)
        testl %eax,%eax
        je 0f
        movl %eax,0x00(%esp)
        call _ldFLD                           # load field
        movl MH_WRK(%esi),%edx                # EDX = FLD_WORK
        testl %edx,%edx
        jne 1f
        movl $0x02,0x00(%esp)
      0:call _ErrMgr
        jmp L14
      1:movl 0x00(%edx),%eax
        movl $0x00,MV_BEG(%esi)
        movl $0x00,MV_END(%esi)
        movl $0x01,MV_CNT(%esi)
        movl 0x3C(%eax),%ecx
        decl %ecx                              # ECX = entries - 1
        movl %edi,0x00(%esp)                   # HWND
        movl $0x14EA,0x04(%esp)
        movl $0x0207,0x08(%esp)                # SPBM_SETLIMITS
        movl %ecx,0x0C(%esp)                   # max
        movl $0x00,0x10(%esp)                  # min
        call _SnDIM
        movl $0x14EB,0x04(%esp)
        call _SnDIM
        movl $0x14EC,0x04(%esp)
        call _SnDIM
        movl $0x00,0x0C(%esp)                  # start = 0
        movl $0x0208,0x08(%esp)                # SPBM_SETCURRENTVALUE
        movl $0x14EA,0x04(%esp)
        call _SnDIM
        movl $0x14EB,0x04(%esp)
        call _SnDIM
        movl $0x01,0x0C(%esp)                  # start = 1
        movl $0x14EC,0x04(%esp)
        call _SnDIM
        movl $0xDC,0x04(%esp)
        movl $0xDD,0x08(%esp)
        movl $0xE2,0x0C(%esp)
        call _DLGtxt
        call _CtrWn
        jmp L13
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г WM_COMMAND         Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
    L10:cmpl $0x14E7,%ecx                      # move?
        je MovWk
        cmpl $0x14E9,%ecx                      # help?
        je 0f
        cmpl $0x14E8,%ecx                      # skip?
        jne L12
        movl MH_WRK(%esi),%eax                 # EAX = FLD_WORK
        movl _MHSTR,%ebp                       # EBP = FLD_STR
        movl $0x00,MH_WRK(%esi)                # clear FLD_WORK
        movl %eax,0x00(%esp)
        call _LDunc                            # reset changed flag
        call _LDfre
        movl %ebp,0x00(%esp)                   # FLD_STR
        movl $0x62,0x04(%esp)                  # STR_FLD_WORK
        movl $0x00,0x08(%esp)                  # subfield 00
        movl $0x03,0x0C(%esp)                  # FDA_DELETE
        call _FDacc
    L14:movl %edi,0x00(%esp)
        call _WinDD
        jmp L13
      0:movl $0x0E,0x00(%esp)
        call _Help
        jmp L13
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г WM_CONTROL         Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
    L11:cmpl $0x14EA,%ecx
        js L12
        cmpl $0x14EC,%ecx
        ja L12
        cmpw $0x020C,0x26(%esp)
        jne L12
        leal 0x18(%esp),%ebp
        movl %edi,0x00(%esp)
        movl %ecx,0x04(%esp)
        movl $0x0205,0x08(%esp)
        movl %ebp,0x0C(%esp)
        movl $0x00,0x10(%esp)
        call _SnDIM
        movl 0x18(%esp),%eax
        subl $0x14EA,%ecx
        movl %eax,MV_BEG(%esi, %ecx, 4)
        jmp L13
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г default            Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
    L12:movl 0x2C(%esp),%ecx
        movl 0x34(%esp),%edi
        movl 0x38(%esp),%esi
        addl $0x40,%esp
        jmp _DefDP
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г exit               Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
    L13:movl 0x28(%esp),%edx
        movl 0x2C(%esp),%ecx
        movl 0x30(%esp),%ebx
        movl 0x34(%esp),%edi
        movl 0x38(%esp),%esi
        movl 0x3C(%esp),%ebp
        addl $0x40,%esp
        xorl %eax,%eax
        ret
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г MoveWrk  move entries                Гл
        УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
        Г-> -      nothing                     Гл
        УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
        Г<- EAX    xxxx xxxx   rc              Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллллллллллл
        */
        .align 2,0x90
  MovWk:movl MH_WRK(%esi),%ebp                 # EBP = FLD_WORK
        movl MV_BEG(%esi),%ecx                 # ECX = MOVE_FROM
        movl MV_END(%esi),%edx                 # EDX = MOVE_TO
        movl MV_CNT(%esi),%eax                 # EAX = MOVE_AMOUNT
        movl 0x00(%ebp),%edi                   # EDI = EA field
        xorl %ebx,%ebx
        cmpl %ecx,%edx
        ja 1f
        jb 2f
        movl $0x35,0x00(%esp)
      0:call _ErrMgr
        jmp L13
      1:addl %edx,%eax
        jmp 3f
      2:addl %ecx,%eax
        xchg %ecx,%edx
      3:cmpl 0x3C(%edi),%eax
        jb 4f
        movl $0x36,0x00(%esp)
        jmp 0b
      4:movl %ecx,0x18(%esp)                   # 18[ESP] = from
        movl %edx,0x1C(%esp)                   # 1C[ESP] = to
        movzb 0x2A(%edi),%ebp                  # EBP = subfields
        movl %ebp,0x00(%esp)                   # MemHandle
        movl $0x00,0x08(%esp)                  # subfield 00
        movl $0x05,0x0C(%esp)                  # FDA_MOVE
      5:movl 0x18(%esp),%ecx                   # ECX = 1st from
        movl 0x1C(%esp),%edx                   # EDX = 1st to
        movl MV_CNT(%esi),%ebx                 # EBX = count
      6:movl %edx,0x04(%esp)                   # to
        movl %ecx,0x14(%esp)                   # from
        call _FDacc
        incl %ecx                              # from++
        incl %edx                              # to++
        decl %ebx                              # cnt--
        jne 6b
        incl 0x08(%esp)                        # subfield++
        decl %ebp                              # count--
        jne 5b
        movl 0x44(%esp),%edi                   # EDI = HWND
        call _svFLD
        jmp L14
        /*
        ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
        ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
          ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
        */
.comm _MHSTR,4
.comm _BNR,4
