        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �                              C R E A T E   F I E L D                               裁
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
   LC00:.long 0x00000020
   LC01:.long 0x00004244
   LC02:.long 0x00005744
   LC03:.long 0x00004444
   LC04:.long 0x00005144
   LC05:.long 0x00004F44
   LC06:.long 0x00584946
   LC07:.long 0x00323324
   LC08:.ascii "..\\auxi\\dbe.ico"
        .byte 0
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .text
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � MkDatDlg field creation dialog       額
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
.globl _MkDatDlg
_MkDatDlg:
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
        movl %edi,0x00(%esp)                  # HWND
        pxor %xmm4,%xmm4
        cmpl $0x30,%eax
        je L09
        cmpl $0x20,%eax
        je L00
        cmpl $0x3B,%eax
        jne L20
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � WM_INITDLG                 額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        movl IP_WRK(%esi),%ecx                # ECX = IP_WRK (offset)
        leal FN_SRC(%esi),%edx                # EDX = FN_SRC
        movl $0xFA,0x04(%esp)
        movl $0xFB,0x08(%esp)
        movl $0x0117,0x0C(%esp)
        addl %esi,%ecx                        # ECX = EA
        call _DLGtxt
        movb $0x00,0x00(%ecx)                 # separate path
        movl %edx,0x04(%esp)                  # title = path
        call _WnSTx
        movl $0x1521,0x04(%esp)               # ID name
        movl $0x0143,0x08(%esp)               # EM_SETTEXTLIMIT
        movl $0x1B,0x0C(%esp)                 # field name (27)
        movl $0x00,0x10(%esp)                 # NULL
        call _SnDIM
        movl $0x08,0x0C(%esp)                 # field number (8)
        movl $0x1520,0x04(%esp)               # ID number
        call _SnDIM
        movl $0x0010,0x0C(%esp)               # length, entries (16)
        movl $0x1522,0x04(%esp)               # ID entries
        call _SnDIM
        movl $0x1323,0x04(%esp)               # ID length
        call _SnDIM
        call _CtrWn
        leal F_ZERO(%esi),%eax                # EAX = header
        movl $0x10,%ecx                       # ECX = cnt
      0:movdqa %xmm4,0x00(%eax)               # clear header
        addl $0x10,%eax
        decl %ecx
        jne 0b
        movl $0x03,F_STAT(%esi)               # read, write
        jmp ShCtl
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � WM_COMMAND                 額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L00:subl $0x1510,%ecx
        js L20
        movl F_TCNT(%esi),%eax                # EAX = types
        cmpl $0x06,%ecx
        ja L08
        jmp *L01(, %ecx, 4)
        .align 2,0x90
    L01:.long L02                             # 0x1510 close
        .long L03                             # 0x1511 view
        .long MkFld                           # 0x1512 create
        .long L04                             # 0x1513 help
        .long L05                             # 0x1514 next free
        .long L06                             # 0x1515 clear last
        .long L07                             # 0x1516 clear all
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � close              額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L02:andb $0x7F,PGM_F2(%esi)               # reset PGM_GOTOVIEW
        jmp 0f
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � view data          額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L03:orb $0x80,PGM_F2(%esi)                # set PGM_GOTOVIEW
      0:call _WinDD
        jmp L21
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � help               額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L04:movl $0x08,0x00(%esp)
        call _Help
        jmp L21
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � search free number 額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L05:movl MH_FLD(%esi),%edx                # EDX = FLD_LIST_FIELDS
        movl $0x01,%ecx                       # ECX = field number
        leal 0x20(%esp),%ebp                  # EBP = buffer
        movl %edx,0x00(%esp)                  # FLD_LIST_FIELDS
        movl $0x00,0x04(%esp)                 # start with entry 00
        movl $0x01,0x08(%esp)                 # subfield 01
        movl $0x08,0x0C(%esp)                 # FDA_SEARCH
        /*
        敖陳陳陳陳陳�
        � validate  額
        青陳陳陳陳陳掏
          栩栩栩栩栩栩
        */
      0:movl %ecx,0x14(%esp)                  # testee
        call _FDacc
        testl %eax,%eax                       # match?
        js 1f
        incl %ecx                             # testee++
        jmp 0b
      1:movl %ecx,F_FNUM(%esi)                # store in header
        movl %ecx,0x00(%esp)                  # field
        movl %ebp,0x04(%esp)                  # buffer
        call _d2str
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1520,0x04(%esp)               # ID EFld number
        movl %ebp,0x08(%esp)                  # buffer
        call _SEf
        cmpb $0x00,F_NAME(%esi)               # name present?
        jne L21
        /*
        敖陳陳陳陳陳�
        � copy name 額
        青陳陳陳陳陳掏
          栩栩栩栩栩栩
        */
        movl 0x00(%ebp),%ebx
        movl 0x04(%ebp),%ecx
        movl $0x1521,0x04(%esp)               # ID EFld name
        call _SEf
        movl %ebx,F_NAME(%esi)
        movl %ecx,0x0F08(%esi)
        movl $0x00,0x0F0C(%esi)
        jmp L21
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � clear last         額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L06:decl %eax                             # types--
        js ShCtl
        movb $0x00,F_TTYP(%esi, %eax, 1)      # clear
        jmp ShCtl
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � clear all          額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L07:movdqa %xmm4,F_TTYP(%esi)             # clear types
        movdqa %xmm4,0x0F50(%esi)
        jmp ShCtl
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � add data type      額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L08:subb $0x06,%cl                        # make type (1...8)
        cmpl $0x1F,%eax                       # full?
        ja L21
        cmpb $0x07,%cl
        ja L20
        incl F_TCNT(%esi)                     # types++
        movb %cl,F_TTYP(%esi, %eax, 1)        # store type
        jmp ShCtl
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � WM_CONTROL                 額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L09:movzwl 0x8E(%esp),%eax                # EAX = W1MP(mp1)
        testb $0x01,PGM_F1(%esi)
        jne L20
        subl $0x1520,%ecx
        js L20
        cmpl $0x02,%eax                       # W1MP(mp1) > 2?
        ja L20
        cmpl $0x05,%ecx
        ja L20
        jmp *L11(, %ecx, 4)
        .align 2,0x90
    L11:.long L12                             # 0x1520 field number
        .long L13                             # 0x1521       name
        .long L14                             # 0x1522 entry amount
        .long L15                             # 0x1523       length
        .long L16                             # 0x1524 flags read
        .long L17                             # 0x1525       encrypt
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � field number       額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L12:cmpl $0x02,%eax                       # EN_KILLFOCUS?
        jne L20
        leal 0x20(%esp),%ebp                  # EBP = buffer
        leal F_NAME(%esi),%ebx                # EBX = name (header)
        movl MH_FLD(%esi),%edx                # EDX = FLD_LIST_FIELDS
        movl $0x1520,0x04(%esp)               # ID number
        movl %ebp,0x08(%esp)                  # buffer
        call _QEf
        movl %ebp,0x00(%esp)                  # buffer
        call _str2h
      0:movl %eax,%ecx                        # ECX = number
        movl %eax,0x00(%esp)                  # number
        movl %ebp,0x04(%esp)                  # buffer
        call _d2str
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1520,0x04(%esp)               # ID
        call _SEf
        testl %ecx,%ecx                       # invalid?
        je ShCtl
        movl %edx,0x00(%esp)                  # FLD_LIST_FIELDS
        movl $0x00,0x04(%esp)                 # start with entry 00
        movl $0x01,0x08(%esp)                 # subfield 01
        movl $0x08,0x0C(%esp)                 # FDA_SEARCH
        movl %ecx,0x14(%esp)                  # number
        call _FDacc
        testl %eax,%eax                       # found?
        js 1f
        movl %ebp,0x08(%esp)                  # buffer
        movl $0x2F,0x00(%esp)                 # ERR_FLD_EXISTS
        call _ErrMgr
        xorl %eax,%eax                        # number = 0
        jmp 0b
      1:movl %ecx,F_FNUM(%esi)                # write number to header
        cmpb $0x00,0x00(%ebx)                 # got name?
        jne ShCtl
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1521,0x04(%esp)               # ID name
        movl %ebp,0x08(%esp)                  # buffer
        call _SEf
        movl 0x00(%ebp),%eax                  # copy to header
        movl 0x04(%ebp),%ecx
        movl %eax,0x00(%ebx)
        movl %ecx,0x04(%ebx)
        movl $0x00,0x08(%ebx)
        jmp ShCtl
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � field name         額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L13:leal F_NAME(%esi),%ecx
        cmpl $0x02,%eax                       # EN_KILLFOCUS?
        jne L20
        movl $0x1521,0x04(%esp)
        movl %ecx,0x08(%esp)
        call _QEf
        jmp L21
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � entries            額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L14:cmpl $0x02,%eax                       # EN_KILLFOCUS?
        jne L20
        leal 0x20(%esp),%ebp
        movl %edi,0x00(%esp)
        movl $0x1522,0x04(%esp)
        movl %ebp,0x08(%esp)
        call _QEf
        movl %ebp,0x00(%esp)
        call _hex2D
        addl $0x0000000F,%eax
        movl F_MAXL(%esi),%ecx                # ECX = length
        andl $0xFFFFFFF0,%eax                 # must be a multiple of 16!
        xorl %edx,%edx                        # EDX = 0
        movl %eax,F_ENTR(%esi)                # store amount
        mull %ecx                             # EAX = block size
        movl %eax,F_BLKS(%esi)                # store block size
        jmp ShCtl
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � length             額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L15:cmpl $0x02,%eax                       # EN_KILLFOCUS?
        jne L20
        leal 0x20(%esp),%ebp
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1523,0x04(%esp)               # ID length
        movl %ebp,0x08(%esp)                  # buffer
        call _QEf
        movl %ebp,0x00(%esp)                  # buffer
        call _hex2D
        addl $0x0000000F,%eax
        movl F_ENTR(%esi),%ecx                # ECX = entries
        andl $0xFFFFFFF0,%eax                 # must be a multiple of 16!
        xorl %edx,%edx                        # EDX = 0
        movl %eax,F_MAXL(%esi)                # store length
        mull %ecx                             # EAX = block size
        movl %eax,F_BLKS(%esi)                # store block size
        jmp ShCtl
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � read only          額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L16:xorb $0x02,F_STAT(%esi)               # toggle LDR_WRITE
        jmp L21
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � encrypted          額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L17:xorb $0x30,0x0F31(%esi)               # toggle LDR_ENCRYPT + LDR_SECSYS
        jmp L21
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � default                    額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L20:movl 0x6C(%esp),%ecx
        movl 0x74(%esp),%edi
        movl 0x78(%esp),%esi
        addl $0x80,%esp
        jmp _DefDP
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � exit                       額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L21:movl 0x68(%esp),%edx
        movl 0x6C(%esp),%ecx
        movl 0x70(%esp),%ebx
        movl 0x74(%esp),%edi
        movl 0x78(%esp),%esi
        movl 0x7C(%esp),%ebp
        addl $0x80,%esp
        xorl %eax,%eax
        ret
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � ShCtl    set controls                額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �-> -      nothing                     額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �<- EAX    garbage                     額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .align 2,0x90
  ShCtl:movl $0x20,0x1C(%esp)                 # 1C[[ESP] = loop_cnt
        movl $0x00,0x0EF4(%esi)               # clear GOT
        movl $0x00,0x0EF8(%esi)               #       $16_cnt
        movl $0x00,SZ_DYN(%esi)               #       dynamic
        movl $0x00,F_TCNT(%esi)               #       types
        movl $0x0100,F_SIZE(%esi)             # header size
        xorl %ecx,%ecx                        # sub = 0
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1540,0x04(%esp)               # ID 1st type
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � evaluate types     額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L27:movzb F_TTYP(%esi, %ecx, 1),%eax      # EAX = type
        movl F_BLKS(%esi),%edx                # EDX = block size
        movl F_ENTR(%esi),%ebx                # EBX = entries
        jmp *L28(, %eax, 4)
        .align 2,0x90
    L28:.long L30                             # none
        .long L31                             # DB
        .long L32                             # DW
        .long L33                             # DD
        .long L34                             # DQ
        .long L35                             # DO
        .long L36                             # FIX
        .long L37                             # $32
        /*
        敖陳陳陳�
        � none  額
        青陳陳陳掏
          栩栩栩栩
        */
    L30:xorl %ebx,%ebx                        # size = 0
        movl $LC00,%ebp                       # BLANK
        jmp 1f
        /*
        敖陳陳陳�
        � DB    額
        青陳陳陳掏
          栩栩栩栩
        */
    L31:movl $LC01,%ebp                       # DB
        jmp 0f
        /*
        敖陳陳陳�
        � DW    額
        青陳陳陳掏
          栩栩栩栩
        */
    L32:shll $0x01,%ebx                       # size * 2
        movl $LC02,%ebp                       # DW
        jmp 0f
        /*
        敖陳陳陳�
        � DD    額
        青陳陳陳掏
          栩栩栩栩
        */
    L33:shll $0x02,%ebx                       # size * 4
        movl $LC03,%ebp                       # DD
        jmp 0f
        /*
        敖陳陳陳�
        � DQ    額
        青陳陳陳掏
          栩栩栩栩
        */
    L34:shll $0x03,%ebx                       # size * 8
        movl $LC04,%ebp                       # DQ
        jmp 0f
        /*
        敖陳陳陳�
        � DO    額
        青陳陳陳掏
          栩栩栩栩
        */
    L35:shll $0x04,%ebx                       # size * 16
        movl $LC05,%ebp                       # DO
        jmp 0f
        /*
        敖陳陳陳�
        � FIX   額
        青陳陳陳掏
          栩栩栩栩
        */
    L36:movl %edx,%ebx                        # size = dynamic
        movl $LC06,%ebp                       # FIX
        jmp 0f
        /*
        敖陳陳陳�
        � $32   額
        青陳陳陳掏
          栩栩栩栩
        */
    L37:addl %edx,SZ_DYN(%esi)                # dynamic++
        shll $0x02,%ebx                       # size * 4 (OT)
        movl $LC07,%ebp                       # $32
        /*
        敖陳陳陳�
        � calc  額
        青陳陳陳掏
          栩栩栩栩
        */
      0:incl F_TCNT(%esi)                     # types++
      1:movl F_SIZE(%esi),%edx                # EDX = current offset
        movl %ebp,0x08(%esp)                  # string
        call _SEf
        testl %ebx,%ebx                       # size = 0?
        cmove %ebx,%edx                       # clear OT entry
        addl %ebx,F_SIZE(%esi)                # update size
        movl %edx,F_TOFF(%esi, %ecx, 4)       # store offset
        incl 0x04(%esp)                       # ID++
        incl %ecx                             # type++
        decl 0x1C(%esp)                       # loop_cnt--
        jne L27
        /*
        敖陳陳陳陳陳陳�
        � size check  額
        青陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩
        */
        movl SZ_DYN(%esi),%eax                # EAX = dynamic
        movl F_SIZE(%esi),%ebx                # EBX = initial
        addl %ebx,%eax                        # EAX = max. size
        cmpl $0x04000000,%eax                 # >= 64 MB?
        jb 2f
        movl $0x05,0x00(%esp)                 # ERR_TOO_LARGE
        call _ErrMgr
        movq %xmm4,F_BLKS(%esi)               # clear block size + types
        movl $0x00,F_SIZE(%esi)               #       field size
        movq %xmm4,F_MAXL(%esi)               #       length + entries
        xorl %eax,%eax                        #       max. size
        xorl %ebx,%ebx                        #       min. size
        /*
        敖陳陳陳陳陳朕
        � show sizes 額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
      2:leal 0x20(%esp),%ebp                  # EBP = buffer 1
        leal 0x30(%esp),%edx                  # EDX = buffer 2
        movl %eax,0x00(%esp)                  # size max
        movl %ebp,0x04(%esp)                  # buffer
        movl $0x0A,0x08(%esp)                 # 10 digits
        call _D2dec
        movl %ebx,0x00(%esp)                  # size min
        movl %edx,0x04(%esp)                  # buffer
        call _D2dec
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1527,0x04(%esp)               # ID max
        movl %ebp,0x08(%esp)                  # buffer 1
        call _SEf
        movl $0x1526,0x04(%esp)               # ID min
        movl %edx,0x08(%esp)                  # buffer 2
        call _SEf
        cmpl $0x00,F_TCNT(%esi)               # any types?
        je 0f
        incl 0x0EF4(%esi)                     # GOT++
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � type buttons       額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
      0:movl F_MAXL(%esi),%ebx                # EBX = length
        movl F_ENTR(%esi),%edx                # EDX = entries
        movl $0x01,%eax                       # EAX = TRUE
        movl $0x07,%ecx                       # ECX = cnt
        movl $0x1515,%ebp                     # EBP = ID DB
        testl %edx,%edx                       # entries set?
        cmove %edx,%eax                       # EAX = FALSE
        movl %edi,0x00(%esp)                  # HWND
        movl %eax,0x08(%esp)                  # TRUE/FALSE
      1:movl %ebp,0x04(%esp)                  # ID
        call _CtlEn
        incl %ebp                             # ID++
        decl %ecx                             # cnt--
        jne 1b
        movl $0x01,%eax                       # EAX = TRUE
        movl $0x03,%ecx                       # ECX = cnt
        testl %ebx,%ebx                       # length set?
        cmove %ebx,%eax                       # EAX = FALSE
        testl %edx,%edx                       # entries set?
        cmove %edx,%eax                       # EAX = FALSE
        leal F_ZERO(%esi),%edx                # EDX = header
        movl %eax,0x08(%esp)                  # TRUE/FALSE
      2:movl %ebp,0x04(%esp)                  # ID
        call _CtlEn
        incl %ebp                             # ID++
        decl %ecx                             # cnt--
        jne 2b
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � entries + length   額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        movl F_ENTR(%esi),%eax                # EAX = entries
        leal 0x20(%esp),%ebp                  # EBP = buffer 1
        leal 0x30(%esp),%ecx                  # ECX = buffer 2
        testl %edx,%edx
        je 0f
        incl 0x0EF4(%esi)                     # GOT++
      0:testl %edx,%edx
        je 1f
        incl 0x0EF4(%esi)                     # GOT++
      1:cmpl $0x00,F_NAME(%esi)               # name present?
        je 2f
        incl 0x0EF4(%esi)                     # GOT++
      2:movl %eax,0x00(%esp)                  # entries
        movl %ebp,0x04(%esp)                  # buffer 1
        call _D2str
        movl %ebx,0x00(%esp)                  # length
        movl %ecx,0x04(%esp)                  # buffer 2
        call _D2str
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1522,0x04(%esp)               # ID entries
        movl %ebp,0x08(%esp)                  # buffer 1
        call _SEf
        movl $0x01,%ebx
        xorl %edx,%edx
        movl $0x1523,0x04(%esp)               # ID entries
        movl %ecx,0x08(%esp)                  # buffer 2
        call _SEf
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � create + view PBtn 額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        cmpl $0x04,0x0EF4(%esi)               # GOT = 4?
        cmovne %edx,%ebx
        movl $0x1512,0x04(%esp)               # ID create
        movl %ebx,0x08(%esp)                  # TRUE/FALSE
        call _CtlEn
        movl $0x1511,0x04(%esp)               # ID view
        movl $0x00,0x08(%esp)                 # FALSE
        call _CtlEn
        jmp L21
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � MkFld    create field                額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �->        nothing                     額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �<- EAX    0000 0000   okay            額
        �          xxxx xxxx   error           額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .align 2,0x90
  MkFld:movl IP_WRK(%esi),%ecx                # ECX = IP_WRK (offset)
        leal FN_SRC(%esi),%edx                # EDX = path
        leal 0x0E58(%esi),%ebp                # EBP = EA block
        subl $0x03,%ecx                       # FnDat writes ..\
        addl %esi,%ecx                        # ECX = EA
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � SecSys permissions 額               ADD PERMISSION DIALOG HERE!
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
      1:testb $0x30,0x0F31(%esi)              # encrypted?
        je 2f
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � create name        額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
      2:movl F_FNUM(%esi),%eax                # EAX = field number
        movw 0x00(%ecx),%bx                   #  BX = path end
        movdqa %xmm4,TMP_FH(%esi)             # clear FH
        movdqa %xmm4,0x0E60(%esi)
        movl %ecx,0x04(%esp)                  # address
        movl %eax,0x00(%esp)                  # number
        call _FnDat
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � allocate + copy    額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        movl F_SIZE(%esi),%eax                # EAX = field size
        movw %bx,0x00(%ecx)                   # restore path
        addl $0x00000FFF,%eax                 # extend if odd
        andl $0xFFFFF000,%eax                 # whole pages
        movl %ebp,0x00(%esp)                  # address EA
        movl %eax,0x04(%esp)                  # size
        movl $0x12,0x08(%esp)                 # write+commit
        call _DosAllocMem
        testl %eax,%eax
        jne 4f
        leal F_ZERO(%esi),%ebp                # EBP = header
        movl 0x0E58(%esi),%ebx                # EBX = block
        movl $0x04,%ecx                       # ECX = cnt
      3:movdqa 0x00(%ebp),%xmm0
        movdqa 0x10(%ebp),%xmm1
        movdqa 0x20(%ebp),%xmm2
        movdqa 0x30(%ebp),%xmm3
        movdqa %xmm0,0x00(%ebx)
        movdqa %xmm1,0x10(%ebx)
        movdqa %xmm2,0x20(%ebx)
        movdqa %xmm3,0x30(%ebx)
        addl $0x40,%ebp
        addl $0x40,%ebx
        decl %ecx
        jne 3b
        movl F_SIZE(%esi),%ecx                # EAX = field size
        movl 0x0E58(%esi),%ebp                # EBP = block
        leal TMP_FH(%esi),%ebx                # EBX = FH
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � store new field    額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        movl %ebx,0x00(%esp)                  # FH
        movl %ecx,0x04(%esp)                  # size
        movl $0x01,0x08(%esp)                 # fail if exist
        movl %edx,0x0C(%esp)                  # name
        call _Fopen
        testl %eax,%eax
        jne 4f
        movl %ecx,0x04(%esp)                  # size
        call _Fwrite
        movl %eax,%ecx
        call _Fclose
        movl %ecx,%eax
        testl %ecx,%ecx
        jne 4f
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � set icon           額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        movl $LC08,0x00(%esp)                 # DAT icon
        movl %edx,0x04(%esp)                  # name
        call _SetIcon
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � update field list  額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        movl MH_FLD(%esi),%edx                # EDX = FLD_LIST_FIELDS
        movl CT_FLD(%esi),%ebp                # EBP = CNT_FIELDS
        leal F_NAME(%esi),%ecx                # ECX = field name
        movl F_FNUM(%esi),%ebx                # EBX =       number
        movl %edx,0x00(%esp)                  # FLD_LIST_FIELDS
        movl %ebp,0x04(%esp)                  # entry
        movl $0x00,0x08(%esp)                 # subfield 00
        movl $0x02,0x0C(%esp)                 # FDA_WRITE
        movl %ecx,0x10(%esp)                  # name
        movl %ebx,0x14(%esp)                  # number
        call _FDacc
        incl %ebp                             # CNT_FIELDS++
        movl $0x01,0x08(%esp)                 # subfield 01
        call _FDacc
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � update global vars 額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        movl %ebx,SL_FLD(%esi)                # set    SEL_FIELD
        movl %ebp,CT_FLD(%esi)                # update CNT_FIELDS
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � en-/disable btns   額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1511,0x04(%esp)               # ID view
        movl $0x01,0x08(%esp)                 # TRUE
        call _CtlEn
        movl $0x1512,0x04(%esp)               # ID create
        movl $0x00,0x08(%esp)                 # FALSE
        call _CtlEn
        orb $0x02,PGM_FL(%esi)                # set PGM_CREATED
        jmp L21
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � errors             額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
      4:movl %ebx,MSGADR(%esi)
        movl %eax,MSG_V1(%esi)
        movl %eax,MSG_V2(%esi)
        movl $0x23,MSGFLG(%esi)
        movl $0x06,0x00(%esp)
        call _ErrMgr
        jmp L21
        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
.comm _BNR,4
