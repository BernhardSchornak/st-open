        /*
        ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
        К                       M E N U S  &  W I N D O W   T E X T S                        Кл
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
        Г MLmenu   menus and dialog texts      Гл
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
.globl _MLmenu
_MLmenu:subl $0x80,%esp
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
        cmpl $0x30,%eax
        je L01
        cmpl $0x20,%eax
        je L00
        cmpl $0x3B,%eax
        jne L99
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г WM_INITDLG                   Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллл
        */
        movl $0xFFFFFF12,%eax                 # fld user
        movl $0xFFFFFF13,%ebx                 #     system
        movl $0x96,%ecx                       # 1st system
        movl $0x95,%edx                       #     user
        negl MNU_SY(%esi)                     # user?
        cmovne %ebx,%eax                      # fld = system
        cmovne %ecx,%edx                      # 1st = system
        movl $0x00,MNU_SY(%esi)               # clear
        movl %eax,0x00(%esp)                  # field number
        call _ldFLD
        cmpl $0x00,MH_WRK(%esi)               # invalid MH?
        je 1f
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г spinbutton         Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
        movl EA_WRK(%esi),%ebp                # EBP = EA field
        movl SPN_EA(%esi),%ebx                # EBX = SPN_EA
        movl MNU_ET(%esi),%ecx                # ECX = last selected entry
        movl 0x3C(%ebp),%eax                  # EAX = max + 1
        movl $0x02,0x00(%esp)                 # SpnB
        movl $0x00,0x04(%esp)                 # SPN_INIT
        movl %edi,0x08(%esp)                  # HWND
        decl %eax                             # EAX = max
        andl $0xFFFF,%eax                     # reduce max to word
        andl $0xFFFF,%ecx                     #        cur to word
        movl %eax,0x0190(%ebx)                # max
        movl %ecx,0x0198(%ebx)                # current
        call _STspn
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г EFld text limits   Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
        movl 0x38(%ebp),%eax                  # max. size
        movl $0x10,%ebx                       # EBX = count
        movl $0x1590,%ebp                     # EBP = ID
        movl %edi,0x00(%esp)                  # HWND
        movl $0x0143,0x08(%esp)               # EM_SETTEXTLIMIT
        movl %eax,0x0C(%esp)                  # size
        movl $0x00,0x10(%esp)                 # NULL
      0:movl %ebp,0x04(%esp)                  # ID
        call _SnDIM
        incl %ebp                             # ID++
        decl %ebx                             # count--
        jne 0b
        movl %ebp,0x04(%esp)                  # ID ID
        movl $0x04,0x0C(%esp)                 # size = 4
        call _SnDIM
        movl %edx,0x04(%esp)
        movl $0x97,0x08(%esp)
        movl $0x99,0x0C(%esp)
        call _DLGtxt
        call _CtrWn
        jmp L03
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г WM_COMMAND                   Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллл
        */
    L00:cmpl $0x1585,%ecx
        je 2f
        cmpl $0x1584,%ecx
        jne L99
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г close              Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
      1:call _svFLD                           # save, unload, clear LD+FH
        movl %edi,0x00(%esp)
        call _WinDD
        jmp L98
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г help               Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
      2:movl $0x0C,0x00(%esp)
        call _Help
        jmp L98
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г WM_CONTROL                   Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллл
        */
    L01:testl $0x01,PGM_FL(%esi)
        jne L99
        movzwl 0x8E(%esp),%eax
        subl $0x1590,%ecx                     # reduce to 00...11
        js L99
        cmpl $0x11,%ecx
        je L02                                # spin
        ja L99                                # out of range
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г entryfields        Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
      0:cmpl $0x02,%eax                       # EN_KILLFOCUS?
        jne L99
        leal 0x1590(%ecx),%edx                # EDX = ID
        leal 0x20(%esp),%ebx                  # EBX = buffer
        movl %edi,0x00(%esp)                  # HWND
        movl %edx,0x04(%esp)                  # ID
        movl %ebx,0x08(%esp)                  # buffer
        call _QEf
        cmpl $0x10,%ecx                       # EFld ID?
        jne 1f
        /*
        кФФФФФФФФФФФФФП
        Г ID          Гл
        РФФФФФФФФФФФФФйл
          лллллллллллллл
        */
        movl %ebx,0x00(%esp)
        call _str2h
        /*
        кФФФФФФФФФФФФФП
        Г text        Гл
        РФФФФФФФФФФФФФйл
          лллллллллллллл
        */
      1:movl MH_WRK(%esi),%edx                # EDX = FLD_WORK
        movl MNU_ET(%esi),%ebp                # EBP = MNU_ENTRY
        movl %edx,0x00(%esp)                  # FLD_WORK
        movl %ebp,0x04(%esp)                  # entry
        movl %ecx,0x08(%esp)                  # subfield
        movl $0x02,0x0C(%esp)                 # FDA_WRITE
        movl %ebx,0x10(%esp)                  # buffer
        movl %eax,0x14(%esp)                  # ID
        call _FDacc
        jmp L98
        /*
        кФФФФФФФФФФФФФФФФФФФФП
        Г spinbutton         Гл
        РФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллл
        */
    L02:subl $0x0209,%eax                     # reduce SPBN_* to SPN_*
        js L99
        cmpl $0x04,%eax                       # out of range?
        ja L99
        testl %eax,%eax                       # SPN_INIT?
        je L99
        movl $0x02,0x00(%esp)                 # SpnB 02
        movl %eax,0x04(%esp)                  # SPN_*
        movl $0x00,0x0C(%esp)                 # address = NULL
        call _STspn
    L03:movl SPN_EA(%esi),%ebp                # EBP = SPN_EA
        leal MNU_ET(%esi),%ebx                # EBX = MNU_ET
        movl MH_WRK(%esi),%edx                # EDX = MH_WRK
        movl 0x0198(%ebp),%eax                # EAX = entry
        movl $0x10,%ebx                       # EBX = count
        xorl %ecx,%ecx                        # ECX = subfield
        movl $0x1590,%ebp                     # EBP = ID
        movl %eax,MNU_ET(%esi)                # store entry
        movl %edx,0x00(%esp)                  # FLD_WORK
        movl %eax,0x04(%esp)                  # entry
        movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
      2:movl %ecx,0x08(%esp)                  # subfield
        call _FDacc
        subl $0x0C,%esp                       # stack - 12
        movl %edi,0x00(%esp)                  # HWND
        movl %ebp,0x04(%esp)                  # ID
        movl %eax,0x08(%esp)                  # address
        call _SEf
        addl $0x0C,%esp                       # stack + 12
        incl %ebp                             # ID++
        incl %ecx                             # sub++
        decl %ebx                             # count--
        jne 2b
        leal 0x20(%esp),%ebx                  # ECX = buffer
        movl %ecx,0x08(%esp)                  # subfield
        movl $0x01,0x0C(%esp)                 # FDA_READ
        call _FDacc
        movl %eax,0x00(%esp)                  # ID
        movl %ebx,0x04(%esp)                  # buffer
        call _W2str
        movl %edi,0x00(%esp)                  # HWND
        movl %ebp,0x04(%esp)                  # ID
        movl %ebx,0x08(%esp)                  # buffer
        call _SEf
        jmp L98
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г MLlang   manage language names       Гл
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
.globl _MLlang
_MLlang:subl $0x80,%esp
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
        movl %edi,0x00(%esp)
        cmpl $0x30,%eax
        je L11
        cmpl $0x20,%eax
        je L10
        cmpl $0x3B,%eax
        jne L99
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г WM_INITDLG                   Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллл
        */
        movl $0xFFFFFFFC,0x00(%esp)
        call _ldFLD
        movl MH_WRK(%esi),%edx                # EDX = FLD_WORK
        movl $0x20,%ebx                       # EBX = entry
        movl $0x10,%ecx                       # ECX = cnt
        movl $0x1590,%ebp                     # EBP = ID
        movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
        testl %edx,%edx                       # field loaded?
        je 2f
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1582,0x04(%esp)               # ID txt
        movl $0x00,0x08(%esp)                 # false
        call _CtlSh
        movl $0x15A0,0x04(%esp)               # ID EFld ID
        call _CtlSh
        movl $0x15A1,0x04(%esp)               # ID SpnB
        call _CtlSh
      1:movl %edx,0x00(%esp)                  # FLD_WORK
        movl %ebx,0x04(%esp)                  # entry
        movl $0x00,0x08(%esp)                 # subfield 00
        call _FDacc
        movl %edi,0x00(%esp)                  # HWND
        movl %ebp,0x04(%esp)                  # ID
        movl %eax,0x08(%esp)                  # address
        call _SEf
        incl %ebp                             # ID++
        incl %ebx                             # entry++
        decl %ecx                             # cnt--
        jne 1b
        movl $0x9B,0x04(%esp)
        movl $0x9C,0x08(%esp)
        movl $0x9D,0x0C(%esp)
        call _DLGtxt
        call _CtrWn
        jmp L98
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г WM_COMMAND                   Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллл
        */
    L10:cmpl $0x1584,%ecx                     # close?
        jne 3f
        call _svFLD
      2:call _WinDD
        jmp L98
      3:cmpl $0x1585,%ecx                     # help?
        jne L99
        movl $0x14,0x00(%esp)
        call _Help
        jmp L98
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г WM_CONTROL                   Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллл
        */
    L11:cmpw $0x02,0x8E(%esp)                 # EN_KILLFOCUS?
        jne L99
        cmpl $0x1490,%ecx                     # entryfield?
        jb L99
        cmpl $0x149F,%ecx
        ja L99
        leal 0x20(%esp),%ebp                  # EBP = buffer
        movl MH_WRK(%esi),%edx                # EDX = FLD_WORK
        movl %ecx,0x04(%esp)                  # entry
        movl %ebp,0x08(%esp)                  # buffer
        call _QEf
        subl $0x1570,%ecx                     # ECX = entry (lang = 20...2F)
        movl %edx,0x00(%esp)                  # FLD_WORK
        movl %ecx,0x04(%esp)                  # entry
        movl $0x00,0x08(%esp)                 # subfield 00
        movl $0x02,0x0C(%esp)                 # FDA_WRITE
        movl %ebp,0x10(%esp)                  # buffer
        call _FDacc
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г exit                         Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллл
        */
    L98:movl 0x68(%esp),%edx
        movl 0x6C(%esp),%ecx
        movl 0x70(%esp),%ebx
        movl 0x74(%esp),%edi
        movl 0x78(%esp),%esi
        movl 0x7C(%esp),%ebp
        addl $0x80,%esp
        xorl %eax,%eax
        ret
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г default                      Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллл
        */
    L99:movl 0x6C(%esp),%ecx
        movl 0x74(%esp),%edi
        movl 0x78(%esp),%esi
        addl $0x80,%esp
        jmp _DefDP
        /*
        ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
        ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
          ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
        */
.comm _MHSTR,4
.comm _BNR,4
