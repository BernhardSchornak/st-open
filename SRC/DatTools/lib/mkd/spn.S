        /*
        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
        º                    C R E A T E   S T A N D A R D   F I E L D S                     ºÛ
        ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
        º                          *** (C) ST-Open 1979 - 2008 ***                           ºÛ
        ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
        º       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        ºÛ
        ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
        º You may copy and distribute it as often as you want, but recipients aren't allowed ºÛ
        º to pay anything for any copy of this file.                                         ºÛ
        º                                                                                    ºÛ
        º You are free to modify the content of this file if you want to. However, derivates ºÛ
        º of the content of this file *still* are subject to the terms of the FT4FP license. ºÛ
        º Recipients neither are allowed to pay anything for the original nor for altered or ºÛ
        º derived replica.                                                                   ºÛ
        ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
        º       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        ºÛ
        ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        .include "..//..//..//..//include//yasm.h"
        .include "..//..//source//hasm.h"
        .data
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        .p2align 4,0x00
   jt00:.long ctl0          # SP
        .long ctl1          # EF
        .long ctl1
        .long ctl1
        .long ctl1
        .long ctl4          # LB
        .long ctl1          # EF
        .long ctl1
        .long ctl1
        .long ctl2          # RB time
        .long ctl2
        .long ctl2
        .long ctl2
        .long ctl2
        .long ctl3          # RB date
        .long ctl3
   jt01:.long ef0           # min
        .long ef0           # max
        .long ef0           # cur
        .long ef1           # ID
        .long L99           # LBox (never used!)
        .long ef2           # sub
        .long ef2           # dig
        .long ef2           # fp
   jt02:.long ef00          # dec 32
        .long ef01          #     64
        .long ef02          # hex 08
        .long ef03          #     16
        .long ef04          #     32
        .long ef05          #     64
        .long ef06          # time
        .long ef07          # date
        .long ef04          # entry
        .long ef00          # number
        .long L99           # string array
        .long 0x00000000
   jt03:.long sc00          # dec 32
        .long sc01          #     64
        .long sc02          # hex 08
        .long sc03          #     16
        .long sc04          #     32
        .long sc05          #     64
        .long sc06          # time
        .long sc07          # date
        .long sc08          # strings
        .long sc09          # default
        .long sc09          # array
        .long 0x00000000
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        .text
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ SPNset   spinbutton editor           ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³-> PAR1   HWND                        ³Û
        ³   PAR2   message                     ³Û
        ³   PAR3           parameter 1         ³Û
        ³   PAR4                     2         ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³<- EAX    xxxx xxxx   MRESULT         ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
       .align 2,0x90
.globl _SPNset
_SPNset:subl $0x80,%esp
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
        je L12
        cmpl $0x20,%eax
        je L10
        cmpl $0x3B,%eax
        jne L98
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ WM_INITDLG                    ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ load fields        ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        movl $0xFFFFFF01,0x00(%esp)           # spinbutton field
        call _ldFLD
        movl MH_WRK(%esi),%edx                # EDX = MH_WRK
        movl EA_WRK(%esi),%ebp                # EBP = EA_WRK
        pxor %xmm4,%xmm4
        leal 0x20(%esp),%ebx                  # EBX = LD
        testl %edx,%edx                       # field loaded?
        je L97
        orb $0x04,0x08(%edx)                  # set changed flag (we loaded a MEM block!)
        movl $0xFFFFFF12,0x28(%esp)           # field number
        movl $0x23,0x2C(%esp)                 # r, w, static
        movdqu %xmm4,0x30(%esp)               # clear LD
        movdqu %xmm4,0x40(%esp)
        movl %ebx,0x00(%esp)
        call _LDreq
        movl 0x30(%esp),%ebx                  # EBX = MH dlgtxt
        testl %eax,%eax                       # error?
        jne L94
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ set listbox        ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        movl USRLNG(%esi),%edx                # EDX = USRLNG
        orb $0x01,PGM_FL(%esi)                # block WM_CONTROL
        movl $0x0A,%ecx                       # ECX = count
        movl %ebx,0x00(%esp)                  # MH dlgtxt
        movl $0x0153,0x04(%esp)               # entry
        movl %edx,0x08(%esp)                  # subfield
        movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
      0:incl 0x04(%esp)                       # entry++
        call _FDacc
        subl $0x14,%esp                       # stack frame down
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1665,0x04(%esp)               # ID
        movl $0x0161,0x08(%esp)               # LM_INSERTITEM
        movl $0xFFFF,0x0C(%esp)               # LIT_END
        movl %eax,0x10(%esp)                  # address
        call _SnDIM
        addl $0x14,%esp                       # stack frame up
        decl %ecx                             # count--
        jns 0b
        movl %ebx,0x00(%esp)                  # MH dlgtxt
        call _LDfre
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ set spinbutton     ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        movl 0x3C(%ebp),%ecx                  # ECX = entries (work)
        movl SPN_EA(%esi),%ebx                # EBX = SPN_EA  (DatTools)
        decl %ecx                             # ECX = max
        movl $0x03,0x00(%esp)                 # SpnB 03       (DatTools)
        movl $0x00,0x04(%esp)                 # SPN_INIT
        movl %edi,0x08(%esp)                  # HWND
        movl %ecx,0x01D0(%ebx)                # set max
        call _STspn
        movl 0x01D8(%ebx),%eax                # EAX = cur
        movl 0x01D8(%ebx),%ecx                # ECX = cur
        leal SPN_BF(%esi),%edx                # EDX = EA buffer
        shll $0x03,%eax                       # EAX * 8
        leal 0x0100(%ebp, %eax, 8),%ebx       # EBX = EA spin block
        movl %ecx,SPNCUR(%esi)                # store SPNCUR
        movl %ebx,SPINEA(%esi)                #       SPINEA
        movl %edx,SPNBUF(%esi)                #       EA SPN_BF
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ set texts & center ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        movl %edi,0x00(%esp)                  # HWND
        movl $0x0136,0x04(%esp)
        movl $0x0137,0x08(%esp)
        movl $0x014A,0x0C(%esp)
        call _DLGtxt
        call _CtrWn
        jmp setctl
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ WM_COMMAND                    ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    L10:movl MH_WRK(%esi),%eax                # EAX = MH
        subl $0x1658,%ecx                     # abort?
        js L98
        je L95
        decl %ecx                             # set?
        je L96
        decl %ecx                             # help?
        jne L99
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ help               ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    L11:movl $0x11,0x00(%esp)
        call _Help
        jmp L99
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ WM_CONTROL                    ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    L12:movl %ecx,%eax                        # EAX = ID
        testb $0x01,PGM_FL(%esi)              # blocked?
        jne L98
        subl $0x1660,%eax
        js L98
        cmpl $0x0F,%eax
        ja L98
        movl SPINEA(%esi),%ebx                # EBX = spin
        movd SPNBUF(%esi),%xmm4               # XM4 = EA buffer
        movl EA_WRK(%esi),%ebp                # EBP = EA_WRK
        jmp *jt00(, %eax, 4)                  # jump table 0
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ spinbutton         ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   ctl0:movl SPN_EA(%esi),%ebp                # EBP = SPN_EA
        subl $0x020A,%edx
        js L98
        cmpl $0x03,%edx
        ja L98
        orb $0x01,PGM_FL(%esi)                # block WM_CONTROL
        incl %edx                             # we are 1 below...
        movl $0x03,0x00(%esp)                 # SpnB 03
        movl %edx,0x04(%esp)                  # SPN_*
        movl $0x00,0x0C(%esp)                 # no buffer
        call _STspn
        movl 0x01D8(%ebp),%ebx                # EBX = cur
        movl 0x01D8(%ebp),%eax                # EAX = cur
        movl EA_WRK(%esi),%ebp                # EBP = EA_WRK
        shll $0x03,%ebx                       # EBX * 8
        leal 0x0100(%ebp, %ebx, 8),%ebx       # EBX = EA spin block
        movl %eax,SPNCUR(%esi)                # store CURSPN
        movl %ebx,SPINEA(%esi)                #       SPINEA
        jmp setctl
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ EFlds              ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   ctl1:decl %eax                             # index - 1
        subl $0x02,%edx                       # EN_KILLFOCUS?
        jne L98
        movl %eax,%edx                        # EDX = index EFld
        movd 0x2C(%ebx),%xmm2                 # XM2 = fp
        movd 0x30(%ebx),%xmm3                 # XM3 = dig
        movl %ecx,0x04(%esp)                  # ID
        movd %xmm4,0x08(%esp)                 # buffer
        call _QEf
        movd %xmm4,0x00(%esp)                 # buffer
        jmp *jt01(, %edx, 4)                  # jump table 01
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ min, max, cur ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    ef0:movl 0x20(%ebx),%eax                  # EAX = type
        movd %xmm4,0x00(%esp)                 # buffer
        leal 0x08(%ebx, %edx, 8),%edx         # EDX = EA target
        jmp *jt02(, %eax, 4)                  # jump table 02
        /*
        ÚÄÄÄÄÄÄÄÄÄ¿
        ³ dec 32  ³Û
        ÀÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛ
        */
   ef00:call _dec2D
        movl %eax,0x00(%edx)                  # store
        movl %eax,0x00(%esp)                  # value
        movd %xmm4,0x04(%esp)                 # buffer
        movd %xmm3,0x08(%esp)                 # dig
        call _D2dec
        movd %xmm4,0x00(%esp)                 # buffer
        movd %xmm2,0x04(%esp)                 # fp
        call _dec2f
        jmp 0f
        /*
        ÚÄÄÄÄÄÄÄÄÄ¿
        ³ dec 64  ³Û
        ÀÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛ
        */
   ef01:call _dec2Q
        movq SPN_BF(%esi),%xmm0               # get value
        movl %edx,0x00(%esp)                  # EA value
        movd %xmm4,0x04(%esp)                 # buffer
        movl $0x01,0x08(%esp)                 # format = integer
        movq %xmm0,0x00(%edx)                 # store
        call _Q2dec
      0:movd %xmm4,0x00(%esp)                 # buffer
        movd %xmm2,0x04(%esp)                 # fp
        call _dec2f
        jmp setEF
        /*
        ÚÄÄÄÄÄÄÄÄÄ¿
        ³ hex 08  ³Û
        ÀÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛ
        */
   ef02:call _hex2D
        andl $0xFF,%eax                       # reduce to byte
        movl %eax,0x00(%edx)                  # store
        movl %eax,0x00(%esp)                  # value
        movd %xmm4,0x04(%esp)                 # buffer
        call _B2str
        jmp setEF
        /*
        ÚÄÄÄÄÄÄÄÄÄ¿
        ³ hex 16  ³Û
        ÀÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛ
        */
   ef03:call _hex2D
        andl $0xFFFF,%eax                     # reduce to word
        movl %eax,0x00(%edx)                  # store
        movl %eax,0x00(%esp)                  # value
        movd %xmm4,0x04(%esp)                 # buffer
        call _W2str
        jmp setEF
        /*
        ÚÄÄÄÄÄÄÄÄÄ¿
        ³ hex 32  ³Û
        ÀÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛ
        */
   ef04:call _hex2D
        movl %eax,0x00(%edx)                  # store
        movl %eax,0x00(%esp)                  # value
        movd %xmm4,0x04(%esp)                 # buffer
        call _D2str
        jmp setEF
        /*
        ÚÄÄÄÄÄÄÄÄÄ¿
        ³ hex 64  ³Û
        ÀÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛ
        */
   ef05:call _hex2Q
        movq SPN_BF(%esi),%xmm0               # get value
        movq %xmm0,0x00(%edx)                 # store
        movl %edx,0x00(%esp)                  # EA value
        movd %xmm4,0x04(%esp)                 # buffer
        call _Q2str
        jmp setEF
        /*
        ÚÄÄÄÄÄÄÄÄÄ¿
        ³ time    ³Û
        ÀÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛ
        */
   ef06:call _s2HMS
        movl %eax,0x00(%edx)                  # store
        movl %eax,0x00(%esp)                  # HMS
        movd %xmm4,0x04(%esp)                 # buffer
        movd %xmm2,0x08(%esp)                 # format
        call _t2out
        jmp setEF
        /*
        ÚÄÄÄÄÄÄÄÄÄ¿
        ³ date    ³Û
        ÀÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛ
        */
   ef07:call _s2DMY
        movl %eax,0x00(%edx)                  # store
        movl %eax,0x00(%esp)                  # DMY
        movd %xmm4,0x04(%esp)                 # buffer
        cmpl $0x00,0x2C(%ebx)                 # EUROPEAN?
        jne 0f
        call _d2out
        jmp setEF
      0:call _d2iso
        jmp setEF
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ ID            ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    ef1:call _hex2D
        movl %eax,0x04(%ebx)                  # store
        movl %eax,0x00(%esp)                  # ID
        movd %xmm4,0x04(%esp)                 # buffer
        call _W2str
        jmp setEF
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ sub, dig, fp  ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    ef2:cmpl $0x01,0x20(%esp)                 # SPN_DEC64?
        je 0f
        movl $0x0A,%edx                       # max fp = 10
        jmp 1f
      0:movl $0x13,%edx                       # max fp = 13
      1:call _hex2D
        andl $0x1F,%eax                       # mask out invalid
        cmpl $0x1666,%ecx                     # sub?
        jne 2f
        movl %eax,0x28(%ebx)                  # store sub
        jmp 4f
      2:cmpl %edx,%eax                        # val > max?
        cmova %edx,%eax                       # val = max
        cmpl $0x1667,%ecx                     # dig?
        jne 3f
        movl %eax,0x30(%ebx)                  # store dig
        jmp 4f
      3:movl %eax,0x2C(%ebx)                  # store fp
      4:movl %eax,0x00(%esp)
        movd %xmm4,0x04(%esp)                 # buffer
        call _B2str
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ set EF (proper) ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
  setEF:movl %edi,0x00(%esp)                  # HWND
        movl %ecx,0x04(%esp)                  # ID
        movd %xmm4,0x08(%esp)                 # buffer
        call _SEf
        jmp L99
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ RBtns time         ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   ctl2:subl $0x09,%eax                       # reduce to 0...4
        jmp 0f
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ RBtns date         ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   ctl3:subl $0x0E,%eax                       # reduce to 0...1
      0:movl %eax,0x2C(%ebx)
        jmp setctl
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ LBox types         ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   ctl4:cmpl $0x05,%edx                       # LN_ENTER?
        je 0f
        decl %edx                             # LN_SELECT?
        jne L98
      0:movl %edi,0x00(%esp)                  # HWND
        movl %ecx,0x04(%esp)                  # ID LBox
        movl $0x0165,0x08(%esp)               # LM_QUERYSELECTION
        movl $0xFFFFFFFF,0x0C(%esp)           # LIT_FIRST
        movl $0x00,0x10(%esp)                 # NULL
        call _SnDIM
        testl %eax,%eax
        js L99
        movl %eax,0x20(%ebx)                  # store type
        /*
        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
        º                              S E T   C O N T R O L S                               ºÛ
        ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ EAX   -                       ³Û
        ³ EBX   EA spin block           ³Û
        ³ ECX   -                       ³Û
        ³ EDX   -                       ³Û
        ³ EDI   HWND                    ³Û
        ³ ESI   BNR                     ³Û
        ³ EBP   EA_WRK                  ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
 setctl:orb $0x01,PGM_FL(%esi)                # block WM_CONTROL
        movl 0x04(%ebx),%edx                  # EDX = ID
        leal SPN_BF(%esi),%ebp                # EBP = buffer
        movzb 0x20(%ebx),%ecx                 # ECX = type
        movl %edx,0x00(%esp)                  # ID
        movl %ebp,0x04(%esp)                  # buffer
        call _W2str
        xorl %eax,%eax                        # EAX = FALSE
        movl $0x01,%edx                       # EDX = TRUE
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ dis/enable controls ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        cmpl $0x08,%ecx                       # type 08?
        cmove %edx,%eax                       # TRUE
        movl %edi,0x00(%esp)                  # HWND
        movl $0x1666,0x04(%esp)               # ID sub
        movl %eax,0x08(%esp)
        call _CtlEn
        xorl %eax,%eax                        # EAX = FALSE
        testl %ecx,%ecx                       # type 00?
        cmove %edx,%eax                       # TRUE
        movl $0x1667,0x04(%esp)               # ID dig
        movl %eax,0x08(%esp)
        call _CtlEn
        xorl %eax,%eax                        # EAX = FALSE
        cmpl $0x02,%ecx                       # type 00 or 01?
        cmovb %edx,%eax                       # TRUE
        movl $0x1668,0x04(%esp)               # ID fp
        movl %eax,0x08(%esp)
        call _CtlEn
        xorl %eax,%eax                        # EAX = FALSE
        cmpl $0x06,%ecx                       # type 06?
        cmove %edx,%eax                       # TRUE
        movl $0x1669,0x04(%esp)               # ID       SS.hh
        movl %eax,0x08(%esp)
        call _CtlEn
        movl $0x166A,0x04(%esp)               # ID    MM:SS.hh
        call _CtlEn
        movl $0x166B,0x04(%esp)               # ID HH:MM:SS.hh
        call _CtlEn
        movl $0x166C,0x04(%esp)               # ID HH:MM:SS
        call _CtlEn
        movl $0x166D,0x04(%esp)               # ID HH:MM
        call _CtlEn
        xorl %eax,%eax                        # EAX = FALSE
        cmpl $0x07,%ecx
        cmove %edx,%eax
        movl $0x166E,0x04(%esp)               # ID EUROPEAN
        movl %eax,0x08(%esp)
        call _CtlEn
        movl $0x166F,0x04(%esp)               # ID ISO
        call _CtlEn
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ common controls     ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        movl $0x1665,0x04(%esp)               # ID LBox
        movl $0x0164,0x08(%esp)               # LM_SELECTITEM
        movl %ecx,0x0C(%esp)                  # index
        movl $0x01,0x10(%esp)                 # TRUE
        call _SnDIM
        movl $0x1664,0x04(%esp)               # ID ID
        movl %ebp,0x08(%esp)                  # buffer
        call _SEf
        jmp *jt03(, %ecx, 4)                  # jump table 03
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ DEC32     ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   sc00:movl 0x30(%ebx),%eax                  # EAX = dig
        movl 0x08(%ebx),%ecx                  # ECX = min
        movl 0x10(%ebx),%edx                  # EDX = max
        movl %eax,0x00(%esp)                  # dig
        movl %ebp,0x04(%esp)                  # 00[buffer]
        cmpl $0x0A,%eax                       # out of range?
        ja 0f
        testl %eax,%eax                       # zero?
        jne 1f
      0:movl $0x0A,%eax                       # correction!
        movl $0x0A,0x30(%ebx)
      1:movl %eax,0x08(%esp)                  # dig (for D2dec)
        call _B2str
        movl %ecx,0x00(%esp)                  # min
        addl $0x10,0x04(%esp)                 # 10[buffer]
        call _D2dec
        movl 0x18(%ebx),%ecx                  # ECX = cur
        movl %edx,0x00(%esp)                  # max
        addl $0x20,0x04(%esp)                 # 30[buffer]
        call _D2dec
        movl %ecx,0x00(%esp)                  # cur
        addl $0x20,0x04(%esp)                 # 50[buffer]
        call _D2dec
        movl 0x2C(%ebx),%ecx                  # ECX = fp
        jmp 1f
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ DEC64     ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   sc01:movl $0x2D,0x00(%ebp)                 # no digits
        addl $0x10,%ebp
        leal 0x08(%ebx),%eax                  # EAX = min
        leal 0x10(%ebx),%ecx                  # ECX = max
        leal 0x18(%ebx),%edx                  # EDX = cur
        movl %eax,0x00(%esp)                  # min
        movl %ebp,0x04(%esp)                  # 10[buffer]
        movl $0x01,0x08(%esp)                 # format = integer
        call _Q2dec
        movl %ecx,0x00(%esp)                  # max
        addl $0x20,0x04(%esp)                 # 30[buffer]
        call _Q2dec
        movl 0x2C(%ebx),%ecx                  # ECX = fp
        movl %edx,0x00(%esp)                  # cur
        addl $0x20,0x04(%esp)                 # 50[buffer]
        call _Q2dec
        subl $0x10,%ebp
      1:movl %ecx,0x00(%esp)                  # fp
        addl $0x20,0x04(%esp)                 # 70[buffer]
        call _B2str
        testl %ecx,%ecx                       # fp set?
        je scFF
        addl $0x10,%ebp
        movl %ebp,0x00(%esp)                  # 10[buffer]
        movl %ecx,0x04(%esp)                  # fp digits
        call _dec2f
        subl $0x10,%ebp
        addl $0x20,0x00(%esp)                 # 30[buffer]
        call _dec2f
        addl $0x20,0x00(%esp)                 # 50[buffer]
        call _dec2f
        movl $0x2D,0x80(%ebp)                 # no subfield
        jmp scFF
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ HEX08     ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   sc02:addl $0x10,%ebp
        movl 0x08(%ebx),%eax                  # EAX = min
        movl 0x10(%ebx),%ecx                  # ECX = max
        movl 0x18(%ebx),%edx                  # EDX = cur
        movl %eax,0x00(%esp)                  # min
        movl %ebp,0x04(%esp)                  # 10[buffer]
        call _B2str
        movl %ecx,0x00(%esp)                  # max
        addl $0x20,0x04(%esp)                 # 30[buffer]
        call _B2str
        subl $0x10,%ebp
        movl %edx,0x00(%esp)                  # cur
        addl $0x20,0x04(%esp)                 # 50[buffer]
        call _B2str
        jmp scFE
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ HEX16     ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   sc03:addl $0x10,%ebp
        movl 0x08(%ebx),%eax                  # EAX = min
        movl 0x10(%ebx),%ecx                  # ECX = max
        movl 0x18(%ebx),%edx                  # EDX = cur
        movl %eax,0x00(%esp)                  # min
        movl %ebp,0x04(%esp)                  # 10[buffer]
        call _W2str
        movl %ecx,0x00(%esp)                  # max
        addl $0x20,0x04(%esp)                 # 30[buffer]
        call _W2str
        subl $0x10,%ebp
        movl %edx,0x00(%esp)                  # cur
        addl $0x20,0x04(%esp)                 # 50[buffer]
        call _W2str
        jmp scFE
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ HEX32     ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   sc04:addl $0x10,%ebp
        movl 0x08(%ebx),%eax                  # EAX = min
        movl 0x10(%ebx),%ecx                  # ECX = max
        movl 0x18(%ebx),%edx                  # EDX = cur
        movl %eax,0x00(%esp)                  # min
        movl %ebp,0x04(%esp)                  # 10[buffer]
        call _D2str
        movl %ecx,0x00(%esp)                  # max
        addl $0x20,0x04(%esp)                 # 30[buffer]
        call _D2str
        subl $0x10,%ebp
        movl %edx,0x00(%esp)                  # cur
        addl $0x20,0x04(%esp)                 # 50[buffer]
        call _D2str
        jmp scFE
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ HEX64     ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   sc05:addl $0x10,%ebp
        leal 0x08(%ebx),%eax                  # EAX = min
        leal 0x10(%ebx),%ecx                  # ECX = max
        leal 0x18(%ebx),%edx                  # EDX = cur
        movl %eax,0x00(%esp)                  # min
        movl %ebp,0x04(%esp)                  # 10[buffer]
        call _Q2str
        movl %ecx,0x00(%esp)                  # max
        addl $0x20,0x04(%esp)                 # 30[buffer]
        call _Q2str
        subl $0x10,%ebp
        movl %edx,0x00(%esp)                  # cur
        addl $0x20,0x04(%esp)                 # 50[buffer]
        call _Q2str
        jmp scFE
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ TIME      ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   sc06:movl 0x2C(%ebx),%ecx                  # ECX = format
        addl $0x10,%ebp                       # 10[buffer]
        movl 0x08(%ebx),%eax                  # EAX = min
        movd 0x10(%ebx),%xmm4                 # XM4 = max
        movl 0x18(%ebx),%edx                  # EDX = cur
        cmpl $0x04,%ecx                       # valid?
        jbe 0f
        movl $0x02,%ecx                       # correction!
        movl $0x02,0x2C(%ebx)
      0:movl %eax,0x00(%esp)                  # min
        movl %ebp,0x04(%esp)                  # 10[buffer]
        movl %ecx,0x08(%esp)                  # format
        call _t2out
        movd %xmm4,0x00(%esp)                 # max
        addl $0x20,0x04(%esp)                 # 30[buffer]
        call _t2out
        addl $0x1669,%ecx                     # ECX = ID RBtn
        movl %edx,0x00(%esp)                  # cur
        addl $0x20,0x04(%esp)                 # 50[buffer]
        call _t2out
        jmp 6f
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ DATE      ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   sc07:addl $0x10,%ebp                       # 10[buffer]
        movl 0x2C(%ebx),%ecx                  # ECX = format
        movl 0x08(%ebx),%eax                  # EAX = min
        movd 0x10(%ebx),%xmm4                 # XM4 = max
        movl 0x18(%ebx),%edx                  # EDX = cur
        movl %eax,0x00(%esp)                  # min
        movl %ebp,0x04(%esp)                  # 10[buffer]
        testl %ecx,%ecx                       # european?
        je 1f
        cmpl $0x01,%ecx                       # valid?
        je 0f
        movl $0x01,0x2C(%ebx)                 # correction!
        movl $0x01,%ecx
      0:call _d2iso
        jmp 2f
      1:call _d2out
      2:movd %xmm4,0x00(%esp)                 # max
        addl $0x20,0x04(%esp)                 # 30[buffer]
        testl %ecx,%ecx                       # european?
        je 3f
        call _d2iso
        jmp 4f
      3:call _d2out
      4:addl $0x166E,%ecx                     # ECX = ID RBtn
        movl %edx,0x00(%esp)                  # cur
        addl $0x20,0x04(%esp)                 # 50[buffer]
        cmpl $0x166E,%ecx                     # european?
        je 5f
        call _d2iso
        jmp 6f
      5:call _d2out
      6:subl $0x10,%ebp                       # 00[buffer]
        movl %edi,0x00(%esp)                  # HWND
        movl %ecx,0x04(%esp)                  # ID RBtn
        movl $0x01,0x08(%esp)                 # TRUE
        call _SCkB
        jmp scFE
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ FIELD $$  ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   sc08:addl $0x10,%ebp
        movl 0x08(%ebx),%eax                  # EAX = min
        movl 0x10(%ebx),%ecx                  # ECX = max
        movl 0x18(%ebx),%edx                  # EDX = cur
        movl %eax,0x00(%esp)                  # min
        movl %ebp,0x04(%esp)                  # 10[buffer]
        call _D2str
        movl %ecx,0x00(%esp)                  # max
        addl $0x20,0x04(%esp)                 # 30[buffer]
        call _D2str
        movl 0x28(%ebx),%ecx                  # EDX = sub
        movl %edx,0x00(%esp)                  # cur
        addl $0x20,0x04(%esp)                 # 50[buffer]
        call _D2str
        movl %ecx,0x00(%esp)                  # sub
        addl $0x30,0x04(%esp)                 # 80[buffer]
        call _B2str
        subl $0x10,%ebp
        movl $0x2D,0x00(%ebp)                 # no digits
        movl $0x2D,0x70(%ebp)                 #    fp
        jmp scFF
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ OS/2 N+S  ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   sc09:/*
        ÚÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ common    ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛ
        */
   scFE:movl $0x2D,0x00(%ebp)                 # no digits
        movl $0x2D,0x70(%ebp)                 #    fp
        movl $0x2D,0x80(%ebp)                 #    subfield
   scFF:movl %edi,0x00(%esp)                  # HWND
        movl $0x1667,0x04(%esp)               # ID dig
        movl %ebp,0x08(%esp)                  # 00[buffer]
        call _SEf
        movl $0x1661,0x04(%esp)               # ID min
        addl $0x10,0x08(%esp)                 # 10[buffer]
        call _SEf
        movl $0x1662,0x04(%esp)               # ID max
        addl $0x20,0x08(%esp)                 # 30[buffer]
        call _SEf
        movl $0x1663,0x04(%esp)               # ID cur
        addl $0x20,0x08(%esp)                 # 50[buffer]
        call _SEf
        movl $0x1668,0x04(%esp)               # ID fp
        addl $0x20,0x08(%esp)                 # 70[buffer]
        call _SEf
        movl $0x1666,0x04(%esp)               # ID sub
        addl $0x10,0x08(%esp)                 # 80[buffer]
        call _SEf
        andb $0xFE,PGM_FL(%esi)               # unblock WM_CONTROL
        jmp L99
        /*
        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
        º                           C O M M O N   R O U T I N E S                            ºÛ
        ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ errors (abort condition)      ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    L94:movl $0x01,ERR_TY(%esi)               # system error
        movl %eax,0x00(%esp)                  # error number
        call _ErrMgr
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ dismiss                       ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    L95:andb $0xFB,0x08(%eax)                 # reset changed flag
    L96:call _svFLD
        movl %edi,0x00(%esp)                  # HWND
    L97:call _WinDD
        jmp L99
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ default                       ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    L98:movl 0x68(%esp),%edx
        movl 0x6C(%esp),%ecx
        movl 0x74(%esp),%edi
        movl 0x78(%esp),%esi
        addl $0x80,%esp
        jmp _DefDP
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ exit                          ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    L99:movl 0x68(%esp),%edx
        movl 0x6C(%esp),%ecx
        movl 0x70(%esp),%ebx
        movl 0x74(%esp),%edi
        movl 0x78(%esp),%esi
        movl 0x7C(%esp),%ebp
        addl $0x80,%esp
        xorl %eax,%eax
        ret
        /*
        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
        ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
.comm _BNR,4
