        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �                    C R E A T E   S T A N D A R D   F I E L D S                     裁
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
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
        .p2align 4,0x00
   LC00:.byte 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07
   LC01:.ascii "..\\data\\FFFFFF13"
        .byte 0x00, 0x00, 0x00, 0x00
   LC02:.ascii "..\\syst\\err.dat"
        .byte 0x00
   LC03:.long 0x00000001
        .long 0x00000002
        .long 0x00000004
        .long 0x00000008
        .long 0x00000010
        .long 0x00000020
        .long 0x00000040
        .long 0x00000080
        .long 0x00000100
        .long 0x00000000
        .long 0x00000FF0
        .long 0x000003F0
        .long 0x000001F0
        .long 0x000003F0
        .long 0x000000F0
        .long 0x000000F0
        .long 0x00000070
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
        .text
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � stdFLD   create standard fields      額
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
.globl _stdFLD
_stdFLD:subl $0x80,%esp
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
        movzwl 0x8E(%esp),%edx                # EDX = W1MP(mp1)
        movl _BNR,%esi                        # ESI = BNR
        movl %edi,0x00(%esp)                  # HWND
        cmpl $0x30,%eax
        je L02
        cmpl $0x20,%eax
        je L00
        cmpl $0x3B,%eax
        jne L52
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � WM_INITDLG                    額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
        orb $0x01,PGM_FL(%esi)                # block WM_CONTROL
        movl $0x162A,0x04(%esp)               # ID SpnB
        movl $0x0207,0x08(%esp)               # SPBM_SETLIMITS
        movl $0x0FF0,0x0C(%esp)               # STDDLG max
        movl $0x0050,0x10(%esp)               #        min
        call _SnDIM
        movl $0x162B,0x04(%esp)               # ID SpnB
        movl $0x03F0,0x0C(%esp)               # STDMSG max
        movl $0x0020,0x10(%esp)               #        min
        call _SnDIM
        movl $0x162C,0x04(%esp)               # ID SpnB
        movl $0x01F0,0x0C(%esp)               # STDOLH max
        movl $0x0010,0x10(%esp)               #        min
        call _SnDIM
        movl $0x162D,0x04(%esp)               # ID SpnB
        movl $0x03F0,0x0C(%esp)               # STDTOP max
        movl $0x0040,0x10(%esp)               #        min
        call _SnDIM
        movl $0x162E,0x04(%esp)               # ID SpnB
        movl $0x00F0,0x0C(%esp)               # STDSPN max
        movl $0x0010,0x10(%esp)               #        min
        call _SnDIM
        movl $0x162F,0x04(%esp)               # ID SpnB
        movl $0x00F0,0x0C(%esp)               # STDBMP max
        movl $0x0010,0x10(%esp)               #        min
        call _SnDIM
        movl $0x1630,0x04(%esp)               # ID SpnB
        movl $0x0070,0x0C(%esp)               # STDNBK max
        movl $0x0010,0x10(%esp)               #        min
        call _SnDIM
        movl STDDLG(%esi),%eax                # EAX = STDDLG
        movl STDMSG(%esi),%ebx                # EBX = STDMSG
        movl STDOLH(%esi),%ecx                # ECX = STDOLH
        movl STDTOP(%esi),%edx                # EDX = STDTOP
        movl $0x162A,0x04(%esp)               # ID SpnB
        movl $0x0208,0x08(%esp)               # SPBM_SETCURRENTVALUE
        movl %eax,0x0C(%esp)                  # STDDLG
        movl $0x00,0x10(%esp)                 # NULL
        call _SnDIM
        movl $0x162B,0x04(%esp)               # ID SpnB
        movl %ebx,0x0C(%esp)                  # STDMSG
        call _SnDIM
        movl $0x162C,0x04(%esp)               # ID SpnB
        movl %ecx,0x0C(%esp)                  # STDOLH
        call _SnDIM
        movl $0x162D,0x04(%esp)               # ID SpnB
        movl %edx,0x0C(%esp)                  # STDTOP
        call _SnDIM
        movl STDSPN(%esi),%eax                # EAX = STDSPN
        movl STDBMP(%esi),%ebx                # EBX = STDBMP
        movl STDNBK(%esi),%ecx                # ECX = STDNBK
        movl STDFLG(%esi),%edx                # EDX = STDFLG
        movl $0xFFFFFF00,STDNFD(%esi)         #       STDNFD
        movl $0x162E,0x04(%esp)               # ID SpnB
        movl %eax,0x0C(%esp)                  # STDSPN
        call _SnDIM
        movl $0x162F,0x04(%esp)               # ID SpnB
        movl %ebx,0x0C(%esp)                  # STDBMP
        call _SnDIM
        movl $0x1630,0x04(%esp)               # ID SpnB
        movl %ecx,0x0C(%esp)                  # STDNBK
        call _SnDIM
        movl $0x01,%ebp                       # EBP = pattern
        movl $0x1620,%ebx                     # EBX = ID ChkB
        movl $0x08,%edi                       # EDI = loop_cnt
      0:xorl %eax,%eax
        movl $0x01,%ecx
        testl %ebp,%edx
        cmovne %ecx,%eax
        movl %ebx,0x04(%esp)                  # ID
        movl %eax,0x08(%esp)                  # flag
        call _SCkB
        incl %ebx                             # ID++
        shll $0x01,%ebp                       # pattern * 2
        decl %edi                             # loop_cnt--
        jns 0b
        movl $0x3C,0x04(%esp)
        movl $0x3D,0x08(%esp)
        movl $0x51,0x0C(%esp)
        call _DLGtxt
        call _CtrWn
        andb $0xFE,PGM_FL(%esi)               # unblock WM_CONTROL
        jmp L53
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � WM_COMMAND                    額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
    L00:movl STDFLG(%esi),%edx                # EDX = flags
        cmpl $0x1610,%ecx
        je L51
        cmpl $0x1612,%ecx
        je L01
        cmpl $0x1611,%ecx
        jne L52
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � create             額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        testl %edx,%edx
        je L52

        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � help               額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L01:movl $0x10,0x00(%esp)
        call _Help
        jmp L53
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � WM_CONTROL                    額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
    L02:movl %ecx,0x04(%esp)                  # ID
        movl $0x01,%eax
        testb $0x01,PGM_FL(%esi)              # blocked?
        jne L52
        subl $0x1620,%ecx
        js L52
        cmpl $0x10,%ecx
        ja L52
        shll %cl,%eax                         # EAX = bit in STDFLG
        leal 0x20(%esp),%ebp                  # EBP = buffer
        jmp *L03(, %ecx, 4)
        .align 2,0x90
    L03:.long L04        # 1620   ChkB dlg usr
        .long L04        # 1621            sys
        .long L04        # 1622        msg usr
        .long L04        # 1623            sys
        .long L04        # 1624        olh
        .long L04        # 1625        top
        .long L04        # 1626        spn
        .long L04        # 1627        bmp
        .long L04        # 1628        nbk
        .long L05        # 1629   EFld fld nbk
        .long L06        # 162A   SpnB FFFFFF13
        .long L06        # 162B        msg.dat
        .long L06        # 162C        olh.dat
        .long L06        # 162D        top.dat
        .long L06        # 162E        FFFFFF01
        .long L06        # 162F        FFFFFF10
        .long L06        # 1630        FFFFFF00
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � checkboxes         額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L04:xorl %eax,STDFLG(%esi)
        jmp L53
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � entryfield         額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L05:cmpl $0x02,%edx                       # EN_KILLFOCUS?
        jne L52
        movl %ebp,0x08(%esp)                  # buffer
        call _QEf
        subl $0x08,%esp                       # protect parameters
        movl %ebp,0x00(%esp)                  # buffer
        call _hex2D
        movl %eax,STDNFD(%esi)                # store field number
        movl %eax,0x00(%esp)
        movl %ebp,0x04(%esp)
        call _d2str
        addl $0x08,%esp                       # back to real stack
        call _SEf
        jmp L53
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � spinbuttons        額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L06:movl STDDLG(%esi, %eax, 4),%ebp       # EBP = current value
        movl %eax,%ecx                        # ECX = spin number
        cmpl $0x020A,%edx
        jne 0f
        addl $0x10,%ebp
        jmp 1f
      0:subl $0x10,%ebp
        cmpl $0x020B,%edx
        jne L52
      1:andl %ebx,%ebp                        # make valid
        movl $0x0208,0x08(%esp)               # SPBM_SETCURRENTVALUE
        movl %ebp,0x0C(%esp)                  # value
        movl $0x00,0x10(%esp)                 # NULL
        call _SnDIM
        movl %ebp,STDDLG(%esi, %ecx, 4)       # store current value
        jmp L53
        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �                                 R E A L   W O R K                                  裁
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � mkDlgs   create user menu+dialog txt 額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �-> EAX    msg                         額
        �   EBX    ?                           額
        �   ECX    ID                          額
        �   EDX    flags                       額
        �   EDI    HWND                        額
        �   ESI    BNR                         額
        �   EBP    ?                           額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �<- EAX    **** ****   garbage         額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
 mkDlgs:movl STDDLG(%esi),%ebx                # EBX = STDDlG
        movl STDDLG(%esi),%eax                # EAX = STDDlG
        pxor %xmm4,%xmm4
        testl $0x01,%edx                      # STDDLG?
        je mkErrs
        shll $0x06,%ebx                       # EBX * 64
        shll $0x02,%eax                       # EAX *  4
        leal 0x20(%esp),%ebp                  # EBP = LD
        leal 0x0100(%ebx, %eax, 1),%ebx       # EBX = size
        movl %ebp,0x00(%esp)                  # LD
        movl %ebx,0x24(%esp)                  # size
        movl $0xFFFF0000,0x28(%esp)           # field dlg
        movl $0x33,0x2C(%esp)                 # r, w, static
        movdqu %xmm4,0x30(%esp)
        movdqu %xmm4,0x40(%esp)
        call _LDreq
        movl 0x20(%esp),%ecx                  # ECX = EA
        movl 0x30(%esp),%ebp                  # EBP = MH
        testl %eax,%eax
        jne L49

 mkErrs:
        jmp L51
        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �                           C O M M O N   R O U T I N E S                            裁
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � errors (abort condition)      額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
    L48:movl %ebp,0x0100(%esi)                # filename
    L49:movl $0x01,ERR_TY(%esi)               # system error
    L50:movl %eax,0x00(%esp)                  # error number
        call _ErrMgr
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � dismiss                       額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
    L51:movl %edi,0x00(%esp)                  # HWND
        call _WinDD
        jmp L53
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � default                       額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
    L52:movl 0x68(%esp),%edx
        movl 0x6C(%esp),%ecx
        movl 0x74(%esp),%edi
        movl 0x78(%esp),%esi
        addl $0x80,%esp
        jmp _DefDP
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � exit                          額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
    L53:movl 0x68(%esp),%edx
        movl 0x6C(%esp),%ecx
        movl 0x70(%esp),%ebx
        movl 0x74(%esp),%edi
        movl 0x78(%esp),%esi
        movl 0x7C(%esp),%ebp
        addl $0x80,%esp
        xorl %eax,%eax
        ret
        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
.comm _BNR,4
