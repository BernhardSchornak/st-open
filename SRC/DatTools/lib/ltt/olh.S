        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �                          T R A N S L A T I O N   T O O L                           裁
        債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
        �                          *** (C) ST-Open 1979 - 2008 ***                           裁
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        裁
        債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
        � You may copy and distribute it as often as you want, but recipients aren't allowed 裁
        � to pay anything for any copy of this file.                                         裁
        �                                                                                    裁
        � You are free to modify the content of this file if you want to. However, derivates 裁
        � of the content of this file *still* are subject to the terms of the FT4FP license. 裁
        � Recipients neither are allowed to pay anything for the original nor for altered or 裁
        � derived replica.                                                                   裁
        債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
        �       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        裁
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .include "..//..//..//..//include//yasm.h"
        .include "..//..//source//hasm.h"
        .data
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .p2align 4,0x00
    jt0:.long L02
        .long L04
        .long L05
        .long L06
        .long L07
        .long L08
        .long L09
        .long L10
    jt1:.long L22
        .long L24
        .long L25
        .long L26
        .long L27
        .long L28
        .long L29
        .long L30
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .text
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � HTrans   manage OLH texts + headings 額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �-> PAR1   HWND                        額
        �   PAR2   message                     額
        �   PAR3           parameter 1         額
        �   PAR4                     2         額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �<- EAX    xxxx xxxx   MRESULT         額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .align 2,0x90
.globl _HTrans
_HTrans:subl $0x40,%esp
        nop
        nop
        movl %ebx,0x28(%esp)
        movl %ecx,0x2C(%esp)
        movl %edx,0x30(%esp)
        movl %edi,0x34(%esp)
        movl %esi,0x38(%esp)
        movl %ebp,0x3C(%esp)
        movl 0x44(%esp),%edi                  # EDI = HWND
        movl 0x48(%esp),%eax                  # EAX = msg
        movzwl 0x4C(%esp),%ecx                # ECX = W0MP(mp1)
        movzwl 0x4E(%esp),%edx                # ECX = W1MP(mp1)
        movl _BNR,%esi                        # ESI = BNR
        cmpl $0x30,%eax                       # WM_CONTROL?
        je L11
        cmpl $0x20,%eax                       # WM_COMMAND?
        je L00
        cmpl $0x3B,%eax                       # WM_INITDLG?
        jne L99
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � WM_INITDLG                 額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        movl $0xFFFFFFFB,0x00(%esp)
        call _ldFLD
        movl EA_WRK(%esi),%eax                # EAX = EA_WRK
        movl MH_WRK(%esi),%edx                # EDX = MH_WRK
        cmpl $0xFFFFFFFB,0x2C(%eax)           # proper field?
        jne L02
        testl %edx,%edx                       # valid MH?
        je L02
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1495,0x04(%esp)               # ID EFld title 1
        movl $0x0143,0x08(%esp)               # LM_SETTEXTLIMIT
        movl $0x28,0x0C(%esp)                 # size
        movl $0x00,0x10(%esp)                 # NULL
        call _SnDIM
        movl $0x1497,0x04(%esp)               # ID EFld title 2
        call _SnDIM
        movl $0xA0,0x04(%esp)
        movl $0xA1,0x08(%esp)
        movl $0xA8,0x0C(%esp)
        call _DLGtxt
        call _CtrWn
        jmp HTrWk
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � WM_COMMAND                 額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L00:subl $0x148A,%ecx
        js L98
        cmpl $0x07,%ecx
        ja L98
        movl MH_WRK(%esi),%edx                # EDX = MH_WRK
        jmp *jt0(, %ecx, 4)                   # jump table 0
        /*
        敖陳陳陳陳陳陳陳朕
        � close          額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L02:call _svFLD
        movl %edi,0x00(%esp)                  # HWND
        call _WinDD
        jmp L98
        /*
        敖陳陳陳陳陳陳陳朕
        � copy           額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L04:subl $0x1020,%esp
        leal 0x20(%esp),%ebx
        movl %edi,0x00(%esp)
        movl $0x1496,0x04(%esp)
        movl $0x1000,0x08(%esp)
        movl %ebx,0x0C(%esp)
        call _WnQDT
        movl $0x1498,0x04(%esp)
        movl %ebx,0x08(%esp)
        call _WnSDT
        addl $0x1020,%esp
        jmp L98
        /*
        敖陳陳陳陳陳陳陳朕
        � help previous  額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L05:decl HTR_ET(%esi)
        jmp HTrWk
        /*
        敖陳陳陳陳陳陳陳朕
        � help next      額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L06:incl HTR_ET(%esi)
        jmp HTrWk
        /*
        敖陳陳陳陳陳陳陳朕
        � lang1 previuos 額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L07:decl HTR_L1(%esi)
        jmp HTrWk
        /*
        敖陳陳陳陳陳陳陳朕
        � lang1 next     額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L08:incl HTR_L1(%esi)
        jmp HTrWk
        /*
        敖陳陳陳陳陳陳陳朕
        � lang2 previuos 額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L09:decl HTR_L2(%esi)
        jmp HTrWk
        /*
        敖陳陳陳陳陳陳陳朕
        � lang2 next     額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L10:incl HTR_L2(%esi)
        /*
        敖陳陳陳陳陳陳陳陳陳陳朕
        � common: set controls 額
        青陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩�
        */
  HTrWk:orb $0x01,PGM_F1(%esi)                # prevent message flood
        movd MH_WRK(%esi),%xmm4               # XM4 = FLD_WORK
        movl 0x00(%edx),%eax                  # EAX = EA field
        andl $0x0F,HTR_L1(%esi)               # lang1 correction
        andl $0x0F,HTR_L2(%esi)               # lang2 correction
        movl HTR_ET(%esi),%ecx                # ECX = current help
        movl 0x3C(%eax),%eax                  # EAX = max. entries
        leal 0x10(%esp),%ebp                  # EBP = address
        decl %eax                             # max. entries
        xorl %ebx,%ebx                        # EBX = 0
        testl %ecx,%ecx                       # underflow?
        cmovs %eax,%ecx                       # ECX = max
        cmpl %ecx,%eax                        # overflow?
        cmovb %ebx,%ecx                       # ECX = 0
        movl HTR_L1(%esi),%ebx                # EBX = lang1
        movl HTR_L2(%esi),%edx                # EDX = lang2
        movl %ecx,HTR_ET(%esi)                # store help number
        movl %ecx,0x00(%esp)                  # number
        movl %ebp,0x04(%esp)                  # buffer
        movl $0x03,0x08(%esp)                 # 3 digits
        call _d2dec
        addl $0x20,%ebx                       # EBX = entry1
        addl $0x20,%edx                       # EDX = entry2
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1494,0x04(%esp)               # ID
        movl %ebp,0x08(%esp)                  # buffer
        movl _MHSTR,%ebp                      # EBP = FLD_STR
        call _WnSDT
        movl %ebp,0x00(%esp)                  # FLD_STR
        movl %edx,0x04(%esp)                  # entry2
        movl $0x00,0x08(%esp)                 # subfield 00
        movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
        call _FDacc
        movl %eax,%ebp                        # EBP = address2
        movl %ebx,0x04(%esp)                  # entry1
        call _FDacc
        subl $0x20,%ebx                       # EBX = lang1
        subl $0x20,%edx                       # EDX = lang2
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1492,0x04(%esp)               # ID lang1
        movl %eax,0x08(%esp)                  # address
        call _WnSDT
        shll $0x01,%ebx                       # EBX = title1
        shll $0x01,%edx                       # EDX = title2
        movl $0x1493,0x04(%esp)               # ID lang2
        movl %ebp,0x08(%esp)                  # address
        call _WnSDT
        movd %xmm4,0x00(%esp)                 # FLD_WORK
        movl %ecx,0x04(%esp)                  # entry
        movl %edx,0x08(%esp)                  # subfield title2
        call _FDacc
        movl %eax,%ebp                        # EBP = address2
        movl %ebx,0x08(%esp)                  # subfield lang1
        call _FDacc
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1495,0x04(%esp)               # ID title1
        movl %eax,0x08(%esp)                  # address
        call _WnSDT
        incl %ebx                             # EBX = text1
        incl %edx                             # EDX = text2
        movl $0x1497,0x04(%esp)               # ID title2
        movl %ebp,0x08(%esp)                  # address2
        call _WnSDT
        movd %xmm4,0x00(%esp)                 # FLD_WORK
        movl %ecx,0x04(%esp)                  # entry
        movl %edx,0x08(%esp)                  # subfield text2
        call _FDacc
        movl %eax,%ebp                        # EBP = address2
        movl %ebx,0x08(%esp)                  # subfield text1
        call _FDacc
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1496,0x04(%esp)               # ID text1
        movl %eax,0x08(%esp)                  # address
        call _WnSDT
        movl $0x1498,0x04(%esp)               # ID text2
        movl %ebp,0x08(%esp)                  # address2
        call _WnSDT
        andb $0xFE,PGM_F1(%esi)
        jmp L98
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � WM_CONTROL                 額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L11:movl %ecx,%eax
        testb $0x01,PGM_F1(%esi)              # SYS_DLG_INIT?
        jne L99
        cmpl $0x02,%edx                       # EN_KILLFOCUS?
        je 0f
        cmpl $0x09,%edx                       # MLN_KILLFOCUS?
        jne L99
      0:subl $0x1495,%eax
        js L99
        cmpl $0x1498,%ecx
        ja L99
        subl $0x1020,%esp
        movd MH_WRK(%esi),%xmm4               # XM4 = FLD_WORK
        movl HTR_L1(%esi),%ebx                # EBX = lang1
        movl HTR_L2(%esi),%edx                # EBX = lang2
        leal 0x20(%esp),%ebp                  # EBP = address buffer
        cmpl $0x02,%eax                       # lang2?
        cmovb %ebx,%edx                       # lang1
        andl $0x01,%eax                       # tt = 0 title, 1 text
        shll $0x01,%edx                       # EDX = lang * 2
        movl HTR_ET(%esi),%ebx                # EBX = entry number
        addl %eax,%edx                        # sub + tt
        movl %edi,0x00(%esp)                  # HWND
        movl %ecx,0x04(%esp)                  # ID
        movl $0x1000,0x08(%esp)               # size
        movl %ebp,0x0C(%esp)                  # address
        call _WnQDT
        movd %xmm4,0x00(%esp)                 # FLD_WORK
        movl %ebx,0x04(%esp)                  # entry
        movl %edx,0x08(%esp)                  # subfield
        movl $0x02,0x0C(%esp)                 # FDA_WRITE
        movl %ebp,0x10(%esp)                  # address
        call _FDacc
        addl $0x1020,%esp
        jmp L98
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � TTrans   manage OLH topics           額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �-> PAR1   HWND                        額
        �   PAR2   message                     額
        �   PAR3           parameter 1         額
        �   PAR4                     2         額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �<- EAX    xxxx xxxx   MRESULT         額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .align 2,0x90
.globl _TTrans
_TTrans:subl $0x40,%esp
        nop
        nop
        movl %ebx,0x28(%esp)
        movl %ecx,0x2C(%esp)
        movl %edx,0x30(%esp)
        movl %edi,0x34(%esp)
        movl %esi,0x38(%esp)
        movl %ebp,0x3C(%esp)
        movl 0x44(%esp),%edi                  # EDI = HWND
        movl 0x48(%esp),%eax                  # EAX = msg
        movzwl 0x4C(%esp),%ecx                # ECX = W0MP(mp1)
        movzwl 0x4E(%esp),%edx                # ECX = W1MP(mp1)
        movl _BNR,%esi                        # ESI = BNR
        cmpl $0x30,%eax                       # WM_CONTROL?
        je L31
        cmpl $0x20,%eax                       # WM_COMMAND?
        je L20
        cmpl $0x3B,%eax                       # WM_INITDLG?
        jne L99
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � WM_INITDLG                 額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        movl $0xFFFFFFFA,0x00(%esp)
        call _ldFLD
        movl MH_WRK(%esi),%edx                # EDX = MH_WRK
        movl EA_WRK(%esi),%eax                # EAX = EA_WRK
        testl %edx,%edx                       # valid MH?
        je L22
        cmpl $0xFFFFFFFA,0x2C(%eax)           # proper field?
        jne L22
        movl %edi,0x00(%esp)
        movl $0x14B5,0x04(%esp)
        movl $0x0143,0x08(%esp)
        movl $0x28,0x0C(%esp)
        movl $0x00,0x10(%esp)
        call _SnDIM
        movl $0x14B7,0x04(%esp)
        call _SnDIM
        movl $0xAA,0x04(%esp)
        movl $0xAB,0x08(%esp)
        movl $0xB2,0x0C(%esp)
        call _DLGtxt
        call _CtrWn
        movl MH_WRK(%esi),%edx
        jmp TTrWk
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � WM_COMMAND                 額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L20:subl $0x14AA,%ecx
        js L98
        cmpl $0x07,%ecx
        ja L98
        movl MH_WRK(%esi),%edx                # EDX = FLD_WORK
        jmp *jt1(, %ecx, 4)                   # jump table 1
        /*
        敖陳陳陳陳陳陳陳朕
        � close          額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L22:call _svFLD
        movl %edi,0x00(%esp)                  # HWND
        call _WinDD
        jmp L98
        /*
        敖陳陳陳陳陳陳陳朕
        � copy           額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L24:subl $0x1020,%esp
        leal 0x20(%esp),%ebx
        movl %edi,0x00(%esp)
        movl $0x14B6,0x04(%esp)
        movl $0x1000,0x08(%esp)
        movl %ebx,0x0C(%esp)
        call _WnQDT
        movl $0x14B8,0x04(%esp)
        movl %ebx,0x08(%esp)
        call _WnSDT
        addl $0x1020,%esp
        jmp L98
        /*
        敖陳陳陳陳陳陳陳朕
        � help previous  額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L25:decl TTR_ET(%esi)
        jmp TTrWk
        /*
        敖陳陳陳陳陳陳陳朕
        � help next      額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L26:incl TTR_ET(%esi)
        jmp TTrWk
        /*
        敖陳陳陳陳陳陳陳朕
        � lang1 previuos 額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L27:decl TTR_L1(%esi)
        jmp TTrWk
        /*
        敖陳陳陳陳陳陳陳朕
        � lang1 next     額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L28:incl TTR_L1(%esi)
        jmp TTrWk
        /*
        敖陳陳陳陳陳陳陳朕
        � lang2 previuos 額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L29:decl TTR_L2(%esi)
        jmp TTrWk
        /*
        敖陳陳陳陳陳陳陳朕
        � lang2 next     額
        青陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩�
        */
    L30:incl TTR_L2(%esi)
        /*
        敖陳陳陳陳陳陳陳陳陳陳朕
        � common: set controls 額
        青陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩�
        */
  TTrWk:orb $0x01,PGM_F1(%esi)                # prevent message flood
        movd MH_WRK(%esi),%xmm4               # XM4 = FLD_WORK
        movl 0x00(%edx),%eax                  # EAX = EA field
        andl $0x0F,TTR_L1(%esi)               # lang1 correction
        andl $0x0F,TTR_L2(%esi)               # lang2 correction
        movl TTR_ET(%esi),%ecx                # ECX = current help
        movl 0x3C(%eax),%eax                  # EAX = max. entries
        leal 0x10(%esp),%ebp                  # EBP = address
        decl %eax                             # max. entries
        xorl %ebx,%ebx                        # EBX = 0
        testl %ecx,%ecx                       # underflow?
        cmovs %eax,%ecx                       # ECX = max
        cmpl %ecx,%eax                        # overflow?
        cmovb %ebx,%ecx                       # ECX = 0
        movl TTR_L1(%esi),%ebx                # EBX = lang1
        movl TTR_L2(%esi),%edx                # EDX = lang2
        movl %ecx,TTR_ET(%esi)                # store topic number
        movl %ecx,0x00(%esp)                  # number
        movl %ebp,0x04(%esp)                  # buffer
        movl $0x03,0x08(%esp)                 # 3 digits
        call _d2dec
        addl $0x20,%ebx                       # EBX = entry1
        addl $0x20,%edx                       # EDX = entry2
        movl %edi,0x00(%esp)                  # HWND
        movl $0x14B4,0x04(%esp)               # ID
        movl %ebp,0x08(%esp)                  # buffer
        movl _MHSTR,%ebp                      # EBP = FLD_STR
        call _WnSDT
        movl %ebp,0x00(%esp)                  # FLD_STR
        movl %edx,0x04(%esp)                  # entry2
        movl $0x00,0x08(%esp)                 # subfield 00
        movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
        call _FDacc
        movl %eax,%ebp                        # EBP = address2
        movl %ebx,0x04(%esp)                  # entry1
        call _FDacc
        subl $0x20,%ebx                       # EBX = lang1
        subl $0x20,%edx                       # EDX = lang2
        movl %edi,0x00(%esp)                  # HWND
        movl $0x14B2,0x04(%esp)               # ID lang1
        movl %eax,0x08(%esp)                  # address
        call _WnSDT
        shll $0x01,%ebx                       # EBX = title1
        shll $0x01,%edx                       # EDX = title2
        movl $0x14B3,0x04(%esp)               # ID lang2
        movl %ebp,0x08(%esp)                  # address
        call _WnSDT
        movd %xmm4,0x00(%esp)                 # FLD_WORK
        movl %ecx,0x04(%esp)                  # entry
        movl %edx,0x08(%esp)                  # subfield title2
        call _FDacc
        movl %eax,%ebp                        # EBP = address2
        movl %ebx,0x08(%esp)                  # subfield lang1
        call _FDacc
        movl %edi,0x00(%esp)                  # HWND
        movl $0x14B5,0x04(%esp)               # ID title1
        movl %eax,0x08(%esp)                  # address
        call _WnSDT
        incl %ebx                             # EBX = text1
        incl %edx                             # EDX = text2
        movl $0x14B7,0x04(%esp)               # ID title2
        movl %ebp,0x08(%esp)                  # address2
        call _WnSDT
        movd %xmm4,0x00(%esp)                 # FLD_WORK
        movl %ecx,0x04(%esp)                  # entry
        movl %edx,0x08(%esp)                  # subfield text2
        call _FDacc
        movl %eax,%ebp                        # EBP = address2
        movl %ebx,0x08(%esp)                  # subfield text1
        call _FDacc
        movl %edi,0x00(%esp)                  # HWND
        movl $0x14B6,0x04(%esp)               # ID text1
        movl %eax,0x08(%esp)                  # address
        call _WnSDT
        movl $0x14B8,0x04(%esp)               # ID text2
        movl %ebp,0x08(%esp)                  # address2
        call _WnSDT
        andb $0xFE,PGM_F1(%esi)
        jmp L98
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � WM_CONTROL                 額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L31:movl %ecx,%eax
        testb $0x01,PGM_F1(%esi)              # SYS_DLG_INIT?
        jne L99
        cmpl $0x02,%edx                       # EN_KILLFOCUS?
        je 0f
        cmpl $0x09,%edx                       # MLN_KILLFOCUS?
        jne L99
      0:subl $0x14B5,%eax
        js L99
        cmpl $0x14B8,%ecx
        ja L99
        subl $0x1020,%esp
        movd MH_WRK(%esi),%xmm4               # XM4 = FLD_WORK
        movl TTR_L1(%esi),%ebx                # EBX = lang1
        movl TTR_L2(%esi),%edx                # EBX = lang2
        leal 0x20(%esp),%ebp                  # EBP = address buffer
        cmpl $0x02,%eax                       # lang2?
        cmovb %ebx,%edx                       # lang1
        andl $0x01,%eax                       # tt = 0 title, 1 text
        shll $0x01,%edx                       # EDX = lang * 2
        movl TTR_ET(%esi),%ebx                # EBX = entry number
        addl %eax,%edx                        # sub + tt
        movl %edi,0x00(%esp)                  # HWND
        movl %ecx,0x04(%esp)                  # ID
        movl $0x1000,0x08(%esp)               # size
        movl %ebp,0x0C(%esp)                  # address
        call _WnQDT
        movd %xmm4,0x00(%esp)                 # FLD_WORK
        movl %ebx,0x04(%esp)                  # entry
        movl %edx,0x08(%esp)                  # subfield
        movl $0x02,0x0C(%esp)                 # FDA_WRITE
        movl %ebp,0x10(%esp)                  # address
        call _FDacc
        addl $0x1020,%esp
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � exit                       額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L98:movl 0x28(%esp),%ebx
        movl 0x2C(%esp),%ecx
        movl 0x30(%esp),%edx
        movl 0x34(%esp),%edi
        movl 0x38(%esp),%esi
        movl 0x3C(%esp),%ebp
        addl $0x40,%esp
        xorl %eax,%eax
        ret
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � default                    額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L99:movl 0x2C(%esp),%ecx
        movl 0x30(%esp),%edx
        movl 0x34(%esp),%edi
        movl 0x38(%esp),%esi
        addl $0x40,%esp
        jmp _DefDP
        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
.comm _BMM,4
.comm _BNR,4
