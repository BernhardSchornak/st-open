        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �                        D I S P L A Y   F I E L D   D A T A                         裁
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
   LC00:.long 0x00000000
   LC01:.long 0x00000001
    jt0:.long L12                             # 15D0   save
        .long L13                             # 15D1   discard
        .long L16                             # 15D2   help
        .long L17                             # 15D3   zero
        .long L18                             # 15D4   max
        .long L17                             # 15D5   clear
    jt1:.long L98                             # none
        .long L31                             # DB
        .long L31                             # DW
        .long L31                             # DD
        .long L32                             # DQ
        .long L33                             # DO
        .long L34                             # FIX
        .long L35                             # $32
    jt2:.long L98                             # none
        .long L41                             # DB
        .long L42                             # DW
        .long L43                             # DD
        .long L44                             # DQ
        .long L45                             # DO
        .long L46                             # FIX
        .long L47                             # $32
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .text
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � ShowDat  display field content       額
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
.globl _ShowDat
_ShowDat:
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
        movzwl 0x8E(%esp),%edx                # ECX = W1MP(mp1)
        movl _BNR,%esi                        # ESI = BNR
        movl %edi,0x00(%esp)                  # HWND
        cmpl $0x30,%eax
        je L20
        cmpl $0x20,%eax
        je L10
        cmpl $0x3B,%eax
        jne L99
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � WM_INITDLG                    額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
        pxor %xmm4,%xmm4
        movl SL_FLD(%esi),%eax                # EAX = SEL_FIELD
        movl SPN_EA(%esi),%edx                # EDX = SPN_EA
        leal EAVIEW(%esi),%ebp                # EBP = EA_VIEW
        movl %eax,0x00(%esp)                  # SEL_FIELD
        call _ldFLD
        movl EA_WRK(%esi),%eax                # EAX = EA_WORK
        testl %eax,%eax
        je L01
        cmpw $0x00,0x28(%eax)                 # old field?
        jne L00
        testb $0x30,0x31(%eax)                # SecSys?
        je 0f
        cmpl $0x00,EA_SSW(%esi)               # SecSys activated?
        jne 0f
        movl $0x23,%eax
        jmp 2f
      0:movl 0x24(%eax),%ebx                  # EBX = types
        movl 0x3C(%eax),%ecx                  # ECX = entries
        movl %ebp,0x00(%esp)                  # address DD
        movl $0x00010000,0x04(%esp)           # 65,536 byte (MLE limit)
        movl $0x12,0x08(%esp)                 # write + commit
        call _DosAllocMem
        testl %eax,%eax
        jne L01
        orb $0x01,PGM_F1(%esi)                # set PGM_DLGINIT
        decl %ebx                             # subfields = zero based
        decl %ecx                             # entries   = zero based
        leal FN_SRC(%esi),%ebp                # EBP = name
        movl %edi,0x00(%esp)                  # HWND
        movl $0x7D,0x04(%esp)
        movl $0x7E,0x08(%esp)
        movl $0x87,0x0C(%esp)
        call _DLGtxt
        call _CtrWn
        movl %ebp,0x04(%esp)                  # name
        call _WnSTx
        movl %ecx,0x0110(%edx)                # max entries
        movl %ebx,0x0150(%edx)                #     subfields
        movl $0x00,0x00(%esp)                 # spn0
        movl $0x00,0x04(%esp)                 # SPN_INIT
        movl %edi,0x08(%esp)                  # HWND
        call _STspn
        movl $0x01,0x00(%esp)                 # spn1
        call _STspn
        testl %ebx,%ebx
        jne 1f
        movl %edi,0x00(%esp)                  # HWND
        movl $0x15C7,0x04(%esp)               # Txt sub
        movl $0x00,0x08(%esp)                 # FALSE
        call _CtlEn
        movl $0x15E1,0x04(%esp)               # SpnB sub
        call _CtlEn
      1:movl $0x00,VW_ENT(%esi)               # VIEW_ENTRY = 0
        movl $0x00,VW_SUB(%esi)               # VIEW_SUB   = 0
        jmp FillE
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � errors                        額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
    L00:movl $0x07,%eax
        jmp 2f
    L01:movl $0x01,ERR_TY(%esi)
      2:movl %eax,0x00(%esp)
        call _ErrMgr
        jmp L15
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � WM_COMMAND                    額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
    L10:subl $0x15D0,%ecx
        js L99
        cmpl $0x05,%ecx
        ja L99
        movl SPN_EA(%esi),%ebx                # EBX = SPN_EA
        movl MH_WRK(%esi),%edx                # EDX = MH_WRK
        movl EAVIEW(%esi),%ebp                # EBP = EAVIEW
        jmp *jt0(, %ecx, 4)                   # jump table 0
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � save               額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L12:orb $0x04,0x08(%edx)                  # set LDR_CHANGED
        call _svFLD
        jmp L14
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � discard            額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L13:andb $0xFB,0x08(%edx)                 # reset LDR_CHANGED
        movl %edx,0x00(%esp)                  # MH_WRK
        call _LDfre
        movl $0x00,MH_WRK(%esi)               # clear MH_WRK
        movl $0x00,EA_WRK(%esi)               #       EA_WRK
    L14:movl %ebp,0x00(%esp)                  # EA_VIEW
        call _DosFreeMem
        movl $0x00,EAVIEW(%esi)               # clear EA_VIEW
    L15:movl %edi,0x00(%esp)                  # HWND
        call _WinDD
        jmp L98
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � help               額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L16:movl $0x09,0x00(%esp)
        call _Help
        jmp L98
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � zero + clear       額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L17:movl 0x0118(%ebx),%ecx                # ECX = entry
        movl 0x0158(%ebx),%ebp                # EBP = sub
        movl %edx,0x00(%esp)                  # MH_WRK
        movl %ecx,0x04(%esp)                  # entry
        movl %ebp,0x08(%esp)                  # subfield
        movl $0x03,0x0C(%esp)                 # FDA_DELETE
        call _FDacc
        jmp FillE
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � max                額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L18:movl 0x0118(%ebx),%ecx                # ECX = entry
        movl 0x0158(%ebx),%ebp                # EBP = sub
        movl %edx,0x00(%esp)                  # FLD_WORK
        movl %ecx,0x04(%esp)                  # entry
        movl %ebp,0x08(%esp)                  # subfield
        movl $0x03,0x0C(%esp)                 # FDA_DELETE
        call _FDacc
        movl $0x0B,0x0C(%esp)                 # FDA_DEC
        call _FDacc
        jmp FillE
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � WM_CONTROL                    額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
    L20:testb $0x01,PGM_F1(%esi)              # PGM_DLGINIT set?
        jne L99                               # prevent loops...
        subl $0x15E0,%ecx
        js L99
        cmpl $0x01,%ecx
        ja L22
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳朕
        � spinbuttons            額
        青陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        subl $0x0209,%edx                     # reduce SPBM_* to SPN_*
        js L99
        cmpl $0x04,%edx                       # out of range?
        ja L99
        testl %edx,%edx                       # SPN_INIT?
        je L99
        movl %ecx,0x00(%esp)                  # SpnB 00 or 01
        movl %edx,0x04(%esp)                  # SPN_*
        movl $0x00,0x0C(%esp)                 # address = NULL
        call _STspn
        jmp FillE
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳朕
        � EFld or MLE            額
        青陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .align 2,0x90
    L22:cmpl $0x02,%ecx                       # EFld?
        jne 0f
        cmpl $0x02,%edx                       # EN_KILLFOCUS?
        je 1f
      0:cmpl $0x03,%ecx                       # MLE?
        jne L99
        cmpl $0x09,%edx                       # MLN_KILLFOCUS?
        jne L99
      1:addl $0x15E0,%ecx                     # ECX = ID
        movd MH_WRK(%esi),%xmm7               # XM7 = MH_WRK
        movl EAVIEW(%esi),%ebp                # EBP = EAVIEW
        movl VW_ENT(%esi),%ebx                # EBX = VW_ENT
        movl VW_SUB(%esi),%edx                # EDX = VW_SUB
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � query content      額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        movl %edi,0x00(%esp)                  # HWND
        movl %ecx,0x04(%esp)                  # ID
        movl $0x00010000,0x08(%esp)           # size
        movl %ebp,0x0C(%esp)                  # EAVIEW
        movl EA_WRK(%esi),%ecx                # ECX = EA_WRK
        call _WnQDT
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � type handling      額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        movzb 0x40(%ecx, %edx, 1),%eax        # EAX = type (multiple)
      4:cmpl $0x07,%eax
        ja L98
        jmp *jt1(, %eax, 4)                   # jump table 1
        /*
        敖陳陳陳陳陳朕
        � DB, DW, DD 額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
    L31:movl %ebp,0x00(%esp)
        call _hex2D
        jmp L35
        /*
        敖陳陳陳陳陳朕
        � DQ         額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
    L32:movl %ebp,0x00(%esp)
        call _hex2Q
        jmp L35
        /*
        敖陳陳陳陳陳朕
        � DO         額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
    L33:movl %ebp,%edx                        # EDX = buffer
        movl $0x10,%ecx                       # ECX = length
        jmp 0f
        /*
        敖陳陳陳陳陳朕
        � FIX        額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
    L34:movl 0x38(%ecx),%ecx                  # ECX = length
      0:xorl %eax,%eax
        xorl %ebx,%ebx
        movl %ebp,%edx                        # EDX = buffer
        leal CV_HEX(%esi),%edi                # EDI = LUT
      1:movb 0x00(%edx),%al                   # EAX = MSD
        movb 0x01(%edx),%bl                   # EBX = LSD
        movb 0x00(%edi, %eax, 1),%al          # convert
        movb 0x00(%edi, %ebx, 1),%bl
        testb %al,%al
        jns 2f
        xorb %al,%al
      2:rolb $0x04,%al
        testb %bl,%bl
        jns 3f
        xorb %bl,%bl
      3:addl $0x03,%edx                       # EDX = next
        addb %bl,%al                          #  AL = byte
        cmpb $0x0D,0x00(%edx)                 # line break?
        jne 4f
        addl $0x02,%edx                       # skip line breaks...
      4:movb %al,0x00(%ebp)
        incl %ebp
        decl %ecx
        jne 1b
        movl EAVIEW(%esi),%ebp                # EBP = EA_VIEW
        movl VW_ENT(%esi),%ebx                # EBX = VIEW_ENTRY
        movl VW_SUB(%esi),%edx                # EDX = VIEW_SUB
        movl 0x84(%esp),%edi                  # EDI = HWND
        /*
        敖陳陳陳陳陳朕
        � write      額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
    L35:movd %xmm7,0x00(%esp)                 # FLD_WORK
        movl %ebx,0x04(%esp)                  # entry
        movl %edx,0x08(%esp)                  # subfield
        movl $0x02,0x0C(%esp)                 # FDA_WRITE
        movl %ebp,0x10(%esp)                  # buffer
        movl %eax,0x14(%esp)                  # numeric
        call _FDacc
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � FillE    manage and fill controls    額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        � This is the common procedure for all 額
        � messages (except SAVE and DISCARD).  額
        �                                      額
        � All appropriate controls are enabled 額
        � and the others are disabled. Data is 額
        � saved and                            額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .align 2,0x90
  FillE:movl MH_WRK(%esi),%ebp                # EBP = MH_WRK
        movl SPN_EA(%esi),%ebx                # EBX = SPN_EA
        movd MH_WRK(%esi),%xmm7               # XM7 = MH_WRK
        movl 0x00(%ebp),%ebp                  # in case FDacc() allocated more mem
        movl 0x0118(%ebx),%ecx                # ECX = entry
        movl 0x0158(%ebx),%ebx                # EBX = subfield
        movl %ebp,EA_WRK(%esi)                # store current EA_WRK
        movl 0x38(%ebp),%eax                  # EAX = length
        movzb 0x40(%ebp, %ebx, 1),%edx        # EDX = type
        movl %ecx,VW_ENT(%esi)                # store entry
        movl %ebx,VW_SUB(%esi)                #       subfield
        movl %eax,VW_LEN(%esi)                #       length
        orb $0x01,PGM_F1(%esi)                # set PGM_DLGINIT
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � dis- / enable ctls 額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        movl %edi,0x00(%esp)                  # HWND
        cmpl $0x04,%edx                       # numeric?
        ja 2f
        movd LC01,%xmm4                       # flag1 = TRUE
        movd LC00,%xmm5                       # flag2 = FALSE
        movl $0x15E3,0x04(%esp)               # MLE
        movl $LC00,0x08(%esp)                 # empty string
        call _SEf
        jmp 3f
      2:movd LC00,%xmm4                       # flag1 = FALSE
        movd LC01,%xmm5                       # flag2 = TRUE
        movl $0x15E2,0x04(%esp)               # EFld
        movl $LC00,0x08(%esp)                 # empty string
        call _SEf
      3:movl $0x15C9,0x04(%esp)               # TXT numeric
        movd %xmm4,0x08(%esp)                 # flag1
        call _CtlEn
        movl $0x15D3,0x04(%esp)               # Btn  zero
        call _CtlEn
        movl $0x15D4,0x04(%esp)               # Btn  max
        call _CtlEn
        movl $0x15D5,0x04(%esp)               # Btn  clear
        movd %xmm5,0x08(%esp)                 # flag2
        call _CtlEn
        movl $0x15CA,0x04(%esp)               # TXT complex
        call _CtlEn
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � get entry address  額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
        movd %xmm7,0x00(%esp)                 # MH_WRK
        movl %ecx,0x04(%esp)                  # entry
        movl %ebx,0x08(%esp)                  # subfield
        movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
        call _FDacc
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � handle types       額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
      4:cmpl $0x07,%edx
        ja L98
        movl EAVIEW(%esi),%ebx                # EBX = EAVIEW
        movl $0x15E2,%ecx                     # ECX = ID EFld
        movl 0x00(%eax),%ebp                  # EBP = number (if)
        movl %ebx,0x04(%esp)                  # buffer
        jmp *jt2(, %edx, 4)                   # jump table 2
        /*
        敖陳陳陳陳陳朕
        � DB         額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
    L41:movl %ebp,0x00(%esp)                  # number
        call _B2str
        jmp L48
        /*
        敖陳陳陳陳陳朕
        � DW         額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
    L42:movl %ebp,0x00(%esp)                  # number
        call _W2str
        jmp L48
        /*
        敖陳陳陳陳陳朕
        � DD         額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
    L43:movl %ebp,0x00(%esp)                  # number
        call _D2str
        jmp L48
        /*
        敖陳陳陳陳陳朕
        � DQ         額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
    L44:movl %eax,0x00(%esp)                  # number
        call _Q2str
        jmp L48
        /*
        敖陳陳陳陳陳朕
        � DO         額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
    L45:movl $0x10,%ecx                       # ECX = once
        jmp 0f
        /*
        敖陳陳陳陳陳朕
        � FIX        額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
    L46:movl VW_LEN(%esi),%ecx                # ECX = length
      0:movl %ebx,%ebp                        # EBP = target
        movl %eax,%edx                        # EDX = source
        movl $0x10,0x08(%esp)                 # 16 byte
        movl $0x01,0x0C(%esp)                 # bytes
        shrl $0x04,%ecx                       # ECX = loop_cnt
      1:movl %edx,0x00(%esp)                  # source
        movl %ebp,0x04(%esp)                  # target
        call _h2str
        movl $0x000A0D20,0x2F(%ebp)           # misaligned...
        decl %ecx                             # loop_cnt--
        je 2f
        addl $0x10,%edx                       # source + 16
        addl $0x32,%ebp                       # target + 50
        jmp 1b
      2:movl $0x15E3,%ecx                     # ECX = ID MLE
        jmp L48
        /*
        敖陳陳陳陳陳朕
        � $32        額
        青陳陳陳陳陳潰�
          栩栩栩栩栩栩�
        */
    L47:incl %ecx                             # ECX = ID MLE
        movl %eax,%ebx                        # EBX = address
        /*
        敖陳陳陳陳陳陳陳陳陳朕
        � set EFld or MLE    額
        青陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩�
        */
    L48:movl %edi,0x00(%esp)                  # HWND
        movl %ecx,0x04(%esp)                  # ID
        movl %ebx,0x08(%esp)                  # buffer
        call _SEf
        andb $0xFE,PGM_F1(%esi)               # reset PGM_DLGINIT
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � exit                          額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
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
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
        � default                       額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
        */
    L99:movl 0x68(%esp),%edx
        movl 0x6C(%esp),%ecx
        movl 0x74(%esp),%edi
        movl 0x78(%esp),%esi
        addl $0x80,%esp
        jmp _DefDP
        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
.comm _BNR,4
