        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �                            S y s t e m M e s s a g e s                             裁
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
    jt0:.long L02                             # save
        .long L01                             # discard
        .long L04                             # help
        .long L05                             # LANG1 <<
        .long L06                             # LANG1 >>
        .long L07                             # LANG2 <<
        .long L08                             # LANG2 >>
    jt1:.long L21                             # never used!
        .long L13                             # 14D2   MLE 1
        .long L13                             # 14D3   Btn 11
        .long L13                             # 14D4   Btn 12
        .long L13                             # 14D5   Btn 13
        .long L14                             # 14D6   MLE 2
        .long L14                             # 14D7   Btn 21
        .long L14                             # 14D8   Btn 22
        .long L14                             # 14D9   Btn 23
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .text
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � STrans   system messages             額
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
.globl _STrans
_STrans:subl $0x80,%esp
        nop
        nop
        movl %ebp,0x68(%esp)
        movl %esi,0x6C(%esp)
        movl %edi,0x70(%esp)
        movl %ebx,0x74(%esp)
        movl %ecx,0x78(%esp)
        movl %edx,0x7C(%esp)
        movl 0x84(%esp),%edi                  # EDI = HWND
        movl 0x88(%esp),%eax                  # EAX = msg
        movzwl 0x8C(%esp),%ecx                # ECX = W0MP(mp1)
        movzwl 0x8E(%esp),%edx                # EDX = W1MP(mp1)
        movl _BNR,%esi                        # ESI = BNR
        movl %edi,0x00(%esp)                  # HWND
        cmpl $0x30,%eax                       # WM_CONTROL?
        je L10
        cmpl $0x20,%eax                       # WM_COMMAND?
        je L00
        cmpl $0x3B,%eax                       # WM_INITDLG?
        jne L20
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � WM_INITDLG                   額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        movl $0xFFFFFFF5,%ecx                 # ECX = user messages
        movl $0xB3,%ebp                       # EBP = title
        negl MSG_SY(%esi)                     # system errors?
        je 0f
        addl $0x04,%ecx                       # ECX = sys messages
        incl %ebp                             # EBP = title++
        movl $0x00,MSG_SY(%esi)               # clear flag
      0:movl %ecx,0x00(%esp)                  # field number
        call _ldFLD
        movl MH_WRK(%esi),%edx                # EDX = FLD_WORK
        movl SMS_ET(%esi),%ecx                # ECX = current entry
        testl %edx,%edx                       # field loaded?
        je L03
        movl 0x00(%edx),%eax                  # EAX = EA_WORK
        movl 0x3C(%eax),%eax                  # EAX = entries
        shrl $0x02,%eax                       # entries /= 4
        cmpl %eax,%ecx                        # out of range?
        jb 1f
        movl $0x01,%ecx                       # 1st message
        movl $0x01,SMS_ET(%esi)               # store
      1:decl %eax                             # one less!
        movl %edi,0x00(%esp)                  # HWND
        movl $0x14D1,0x04(%esp)               # ID SpnB
        movl $0x0207,0x08(%esp)               # SPBM_SETLIMITS
        movl %eax,0x0C(%esp)                  # max
        movl $0x00,0x10(%esp)                 # min
        call _SnDIM
        incl 0x08(%esp)                       # SPBM_SETCURRENTVALUE
        movl %ecx,0x0C(%esp)                  # current
        call _SnDIM
        movl %ebp,0x04(%esp)                  # title
        movl $0xB5,0x08(%esp)
        movl $0xC0,0x0C(%esp)
        call _DLGtxt
        call _CtrWn
        jmp MsgWk                             # fill controls
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � WM_COMMAND                   額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L00:movl MH_WRK(%esi),%edx
        subl $0x14CA,%ecx
        js L20
        cmpl $0x06,%ecx
        ja L20
        jmp *jt0(, %ecx, 4)                   # jump table 0
        /*
        敖陳陳陳陳陳陳陳陳�
        � discard         額
        青陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩
        */
    L01:andb $0xFB,0x08(%edx)                 # reset changed flag
        /*
        敖陳陳陳陳陳陳陳陳�
        � save            額
        青陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩
        */
    L02:call _svFLD
    L03:call _WinDD
        jmp L21
        /*
        敖陳陳陳陳陳陳陳陳�
        � help            額
        青陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩
        */
    L04:movl $0x0D,0x00(%esp)
        call _Help
        jmp L21
        /*
        敖陳陳陳陳陳陳陳陳�
        � upper <<        額
        青陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩
        */
    L05:decl SMS_L1(%esi)
        jmp MsgWk
        /*
        敖陳陳陳陳陳陳陳陳�
        � upper >>        額
        青陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩
        */
    L06:incl SMS_L1(%esi)
        jmp MsgWk
        /*
        敖陳陳陳陳陳陳陳陳�
        � lower <<        額
        青陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩
        */
    L07:decl SMS_L2(%esi)
        jmp MsgWk
        /*
        敖陳陳陳陳陳陳陳陳�
        � lower >>        額
        青陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩
        */
    L08:incl SMS_L2(%esi)
        /*
        敖陳陳陳陳陳陳陳陳陳陳朕
        � common: set controls 額
        青陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩�
        */
  MsgWk:andl $0x0F,SMS_L1(%esi)               # SMS_LANG1 correction
        andl $0x0F,SMS_L2(%esi)               # SMS_LANG2 correction
        movd 0x84(%esp),%xmm4                 # XM4 = HWND
        movd MH_WRK(%esi),%xmm5               # XM5 = FLD_WORK
        movl SMS_ET(%esi),%eax
        movl SMS_L1(%esi),%ecx                # EAX = LANG1
        movl SMS_L2(%esi),%edi                # EDI = LANG2
        shll $0x02,%eax                       # EAX = 1st entry
        movl $0x14D2,%ebx                     # EBX = ID
        movl $0x04,%edx                       # EDX = cnt
        movd %xmm5,0x00(%esp)                 # FLD_WORK
        movl %eax,0x04(%esp)                  # entry
        movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
      0:movl %edi,0x08(%esp)                  # subfield LANG2
        call _FDacc
        movl %eax,%ebp
        movl %ecx,0x08(%esp)                  # subfield LANG1
        call _FDacc
        subl $0x0C,%esp
        movd %xmm4,0x00(%esp)                 # HWND
        movl %ebx,0x04(%esp)                  # ID LANG1
        movl %eax,0x08(%esp)                  # address
        call _SEf
        addl $0x04,0x04(%esp)                 # ID LANG2
        movl %ebp,0x08(%esp)                  # address
        call _SEf
        addl $0x0C,%esp
        incl %ebx                             # ID++
        incl 0x04(%esp)                       # entry++
        decl %edx                             # cnt--
        jne 0b
        movl _MHSTR,%ebp                      # EBP = FLD_STR
        addl $0x20,%ecx                       # ECX = LANG1
        addl $0x20,%edi                       # EDI = LANG2
        movl %ebp,0x00(%esp)                  # FLD_STR
        movl %edi,0x04(%esp)                  # LANG2
        movl $0x00,0x08(%esp)                 # subfield 00
        call _FDacc
        movl %eax,%ebx
        movl %ecx,0x04(%esp)                  # LANG1
        call _FDacc
        movd %xmm4,0x00(%esp)                 # HWND
        movl $0x14DF,0x04(%esp)               # ID
        movl %eax,0x08(%esp)                  # address
        call _SEf
        movl $0x14DA,0x04(%esp)               # ID
        movl %ebx,0x08(%esp)                  # address
        call _SEf
        jmp L21
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � WM_CONTROL                   額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L10:subl $0x14D1,%ecx
        js L20
        je L12
        movl SMS_ET(%esi),%eax                # EAX = SMS_ENTRY
        cmpl $0x08,%ecx
        ja L20
        cmpl $0x09,%edx                       # MLN_KILLFOCUS?
        je 0f
        cmpl $0x02,%edx                       # EN_KILLFOCUS?
        jne L20
      0:jmp *jt1(, %ecx, 4)                   # jump table 1
        /*
        敖陳陳陳陳陳陳陳陳�
        � spinbutton      額
        青陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩
        */
    L12:cmpl $0x020C,%edx                     # SPBN_ENDSPIN?
        jne L20
        leal SMS_ET(%esi),%eax                # EAX = address SMS_ENTRY
        movl $0x14D1,0x04(%esp)               # ID SpnB
        movl $0x0205,0x08(%esp)               # SPBM_QUERYVALUE
        movl %eax,0x0C(%esp)                  # address DD
        movl $0x00,0x10(%esp)                 # NULL
        call _SnDIM
        jmp MsgWk
        /*
        敖陳陳陳陳陳陳陳陳�
        � upper MLE-EFlds 額
        青陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩
        */
    L13:decl %ecx                             # ECX = offset
        movl $0x14D2,%ebx
        leal 0x00(%ecx, %eax, 4),%edx         # EDX = ((entry * 4) + offset)
        addl %ecx,%ebx                        # EBX = ID
        movl SMS_L1(%esi),%ecx                # ECX = SMS_LANG1
        jmp 1f
        /*
        敖陳陳陳陳陳陳陳陳�
        � lower MLE-EFlds 額
        青陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩
        */
    L14:subl $0x05,%ecx                       # ECX = offset
        movl $0x14D6,%ebx
        leal 0x00(%ecx, %eax, 4),%edx         # EDX = ((entry * 4) + offset)
        addl %ecx,%ebx                        # EBX = ID
        movl SMS_L1(%esi),%eax                # EAX = SMS_LANG1
        movl SMS_L2(%esi),%ecx                # ECX = SMS_LANG2
        cmpl %eax,%ecx                        # lang1 = lang2?
        je L21
      1:movl %ebx,0x04(%esp)                  # ID
        call _WinId
        movl MH_WRK(%esi),%edi                # EDI = FLD_WORK
        subl $0x0420,%esp                     # reserve temp buffer
        leal 0x20(%esp),%ebp                  # EBP = temp buffer
        movl %eax,0x00(%esp)                  # HWND
        movl $0x0400,0x04(%esp)               # size
        movl %ebp,0x08(%esp)                  # address
        call _WnQTx
        movl %edi,0x00(%esp)                  # FLD_WORK
        movl %edx,0x04(%esp)                  # entry
        movl %ecx,0x08(%esp)                  # subfield
        movl $0x02,0x0C(%esp)                 # FDA_WRITE
        movl %ebp,0x10(%esp)                  # address
        call _FDacc
        addl $0x0420,%esp                     # free temp buffer
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � exit                         額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L21:movl 0x68(%esp),%ebp
        movl 0x6C(%esp),%esi
        movl 0x70(%esp),%edi
        movl 0x74(%esp),%ebx
        movl 0x78(%esp),%ecx
        movl 0x7C(%esp),%edx
        addl $0x80,%esp
        xorl %eax,%eax
        ret
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � default                      額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
    L20:movl 0x6C(%esp),%esi
        movl 0x70(%esp),%edi
        movl 0x78(%esp),%ecx
        movl 0x7C(%esp),%edx
        addl $0x80,%esp
        jmp _DefDP
        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
.comm _MHSTR,4
.comm _BNR,4
