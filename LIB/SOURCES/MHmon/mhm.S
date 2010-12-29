       /*
       ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
       К                            L O A D E R   M O N I T O R                             Кл
       КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
       К                          *** (C) ST-Open 1979 - 2009 ***                           Кл
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
       */
       .include "..\\..\\..\\include\\yasm.h"
       .text
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г MHmon   LOADER monitor (external call)     Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> PAR1  MemHandle number                   Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX   always zero                        Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 2,0x90
.globl _MHmon
_MHmon:negl _LDR_AVAIL                   # Loader avail?
       je 0f
       subl $0x14,%esp
       nop
       nop
       movl 0x18(%esp),%eax              # EAX = handle number
       movl %esi,0x0C(%esp)
       movl %edi,0x10(%esp)
       movl _BNR,%esi                    # ESI = BNR
       andl $0xFF,%eax
       movl HW_PGM(%esi),%edi            # EDI = STV_HCLIENT
       movl %eax,MHMCUR(%esi)            # STV_MHMCUR (valid)
       movl %edi,0x00(%esp)              # HWND
       movl $_MHdlg,0x04(%esp)           # PFNWP
       movl $0x0940,0x08(%esp)           # ID
       call _DBox
       movl 0x0C(%esp),%esi
       movl 0x10(%esp),%edi
       xorl %eax,%eax
       addl $0x14,%esp
     0:ret
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г MHdlg   LOADER monitor (internal dialog)   Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> PAR1  HWND                               Гл
       Г   PAR2  message                            Гл
       Г   PAR3  MPARAM 1                           Гл
       Г   PAR4  MPARAM 2                           Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX   xxxx xxxx   MRESULT                Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 2,0x90
.globl _MHdlg
_MHdlg:subl $0x0100,%esp
       nop
       nop
       movl %edx,0xE8(%esp)
       movl %ecx,0xEC(%esp)
       movl %ebx,0xF0(%esp)
       movl %edi,0xF4(%esp)
       movl %esi,0xF8(%esp)
       movl %ebp,0xFC(%esp)
       movl 0x0104(%esp),%edi            # EDI = HWND
       movl 0x0108(%esp),%eax            # EAX = msg
       movzwl 0x010C(%esp),%ecx          # ECX = W0MP(mp1)
       movl _BNR,%esi                    # ESI = BNR
       movl %edi,0x00(%esp)
       cmpl $0x20,%eax                   # WM_COMMAND?
       je L01
       cmpl $0x2000,%eax                 # CHECKER?
       je L03
       cmpl $0x3B,%eax                   # WM_INITDLG?
       jne L04
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г WM_INITDLG                         Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллллллллл
       */
       movl %edi,HW_MHM(%esi)            # store HWND
       incl DLG_TY(%esi)                 # system dialog
       movl $0x098B,0x04(%esp)
       movl $0x00,0x08(%esp)
       call _CtlSh                       # hide "checker update..."
       movl $0x0A,0x04(%esp)
       movl $0x0B,0x08(%esp)
       movl $0x2D,0x0C(%esp)
       call _DLGtxt
       call _CtrWn
       jmp MHdsp
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г WM_COMMAND                         Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллллллллл
       */
   L01:subl $0x0950,%ecx
       js L04
       cmpl $0x03,%ecx
       ja L04
       jmp *L02(, %ecx, 4)
       .align 2,0x90
   L02:.long mhout
       .long mhhlp
       .long mhbck
       .long mhfwd
       /*
       кФФФФФФФФФФФФФФФФФФФФФФП
       Г ID_MMM10   dismiss   Гл
       РФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллл
       */
 mhout:movl %eax,HW_MHM(%esi)            # clear HWND
       call _WinDD
       jmp L05
       /*
       кФФФФФФФФФФФФФФФФФФФФФФП
       Г ID_MMM11   help      Гл
       РФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллл
       */
 mhhlp:movl $0x03,0x00(%esp)
       call _Help
       jmp L05
       /*
       кФФФФФФФФФФФФФФФФФФФФФФП
       Г ID_MMM14   one down  Гл
       РФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллл
       */
 mhbck:decl MHMCUR(%esi)
       jmp MHdsp
       /*
       кФФФФФФФФФФФФФФФФФФФФФФП
       Г ID_MMM15   one up    Гл
       РФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллл
       */
 mhfwd:incl MHMCUR(%esi)
       jmp MHdsp
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г WM_MHM0000    "checker running"    Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллллллллл
       */
   L03:movl $0x098B,0x04(%esp)
       movl $0x01,0x08(%esp)             # show
       call _CtlSh
       movl $0x05,0x00(%esp)             # sleep 0.5 seconds
       call _WaitTm
       movl %edi,0x00(%esp)
       movl $0x00,0x08(%esp)             # hide
       call _CtlSh
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г display MemHandle data             Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллллллллл
       */
 MHdsp:leal 0xB0(%esp),%ecx              # C0[ESP] = DD mem avail
       andl $0xFF,MHMCUR(%esi)           # make valid
       movl _BMM,%ebx                    # EBX = BMM
       /*
       кФФФФФФФФФФФФФФФФФФФФФФП
       Г time + avail mem     Гл
       РФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллл
       */
       movl $0x14,0x00(%esp)
       movl $0x14,0x04(%esp)
       movl %ecx,0x08(%esp)
       movl $0x04,0x0C(%esp)
       call _DosQuerySysInfo
       movl 0xB0(%esp),%edx              # EDX = mem avail
       call _GetTime
       movl %eax,0x00(%esp)              # current time
       movl %ecx,0x04(%esp)              # buffer B0
       movl $0x02,0x08(%esp)             # HH:MM:SS:hh
       call _t2out
       subl $0x10,%ecx
       movl %edx,0x00(%esp)              # mem avail
       movl %ecx,0x04(%esp)              # buffer A0
       movl $0x0A,0x08(%esp)             # 10 digits
       call _D2dec
       /*
       кФФФФФФФФФФФФФФФФФФФФФФП
       Г calc used/allocated  Гл
       РФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллл
       */
       movl MHMCUR(%esi),%ebp            # EBP = handle number
       movl $0x0100,%ecx
       shll $5,%ebp                      # EBP * 32
       addl %ebx,%ebp                    # EBP = current MH
       xorl %edx,%edx
       xorl %eax,%eax
     0:addl 0x04(%ebx),%edx              # EDX = alloc total
       addl 0x14(%ebx),%eax              # EAX = used  total
       addl $0x20,%ebx
       decl %ecx
       jne 0b
       /*
       кФФФФФФФФФФФФФФФФФФФФФФП
       Г create strings       Гл
       РФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллл
       */
       leal 0x90(%esp),%ecx
       movl %eax,0x00(%esp)              # total used
       movl %ecx,0x04(%esp)              # buffer 90
       call _D2dec
       subl $0x10,%ecx
       movl %edx,0x00(%esp)              # allocated
       movl %ecx,0x04(%esp)              # buffer 80
       call _D2dec
       subl $0x10,%ecx
       movl 0x1C(%ebp),%eax              # EAX = entries
       movl 0x14(%ebp),%ebx              # EBX = real size
       movl 0x10(%ebp),%edx              # EDX = field number
       movl %eax,0x00(%esp)              # entries
       movl %ecx,0x04(%esp)              # buffer 70
       call _D2dec
       subl $0x10,%ecx
       movl %ebx,0x00(%esp)              # real size
       movl %ecx,0x04(%esp)              # buffer 60
       call _D2dec
       subl $0x10,%ecx
       movl %edx,0x00(%esp)              # field number
       movl %ecx,0x04(%esp)              # buffer 50
       call _D2str
       subl $0x10,%ecx
       movl %ebp,0x00(%esp)              # MH
       movl %ecx,0x04(%esp)              # buffer 40
       call _D2str
       subl $0x10,%ecx
       movl 0x0C(%ebp),%eax              # EAX = timestamp
       movl 0x04(%ebp),%ebx              # EBX = alloc
       movl 0x00(%ebp),%edx              # EDX = EA
       movl %eax,0x00(%esp)              # time stamp
       movl %ecx,0x04(%esp)              # buffer 30
       movl $0x02,0x08(%esp)             # HH:MM:SS:hh
       call _t2out
       subl $0x10,%ecx
       movl %ebx,0x00(%esp)              # alloc
       movl %ecx,0x04(%esp)              # buffer 20
       movl $0x0A,0x08(%esp)             # 10 digits
       call _D2dec
       subl $0x10,%ecx
       movl %edx,0x00(%esp)              # EA
       movl %ecx,0x04(%esp)              # buffer 10
       call _D2str
       /*
       кФФФФФФФФФФФФФФФФФФФФФФП
       Г display strings      Гл
       РФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллл
       */
       movl $0x0960,%ebx
       movl $0x0B,%edx
       movl %edi,0x00(%esp)
     1:movl %ebx,0x04(%esp)
       movl %ecx,0x08(%esp)
       call _WnSDT
       incl %ebx
       addl $0x10,%ecx
       decl %edx
       jne 1b
       /*
       кФФФФФФФФФФФФФФФФФФФФФФП
       Г handle number        Гл
       РФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллл
       */
       movl MHMCUR(%esi),%edx            # EDX = handle number
       leal 0x10(%esp),%ecx              # EDX = buffer 10
       movl %ebp,%ebx                    # EBX = MH
       movl %edx,0x00(%esp)              # handle number
       movl %ecx,0x04(%esp)              # buffer 10
       call _B2str
       subl _BMM,%ebx                    # EBX = offset MH
       movl %edi,0x00(%esp)
       movl $0x0956,0x04(%esp)
       movl %ecx,0x08(%esp)              # buffer 10
       call _WnSDT
       /*
       кФФФФФФФФФФФФФФФФФФФФФФП
       Г field name           Гл
       РФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллл
       */
       movl 0x00(%ebp),%edx              # EDX = EA field
       shrl $0x05,%ebx                   # EBX = handle number
       movl $0x04,%eax
       addl $0x04,%edx                   # EDX = EA name
       cmpl $0x04,%ebx
       cmova %eax,%ebx
       jmp *fnt(, %ebx, 4)
       .align 2,0x90
   fnt:.long bmm
       .long bnr
       .long bst
       .long bbf
       .long nor
   bmm:movl $0x004D4D42,%eax             # BMM
       jmp 6f
   bnr:movl $0x00524E42,%eax             # BNR
       jmp 6f
   bst:movl $0x00545342,%eax             # BST
       jmp 6f
   bbf:movl $0x00464242,%eax             # BBF
       jmp 6f
   nor:cmpl $0x00,0x00(%ebp)             # something there?
       jne 2f
       movl $0x45455246,%eax             # FREE
       jmp 6f
     2:testb $0x90,0x08(%ebp)            # field?
       jne 3f
       cmpb $0x00,0x00(%edx)             # name?
       je 5f
       movl %edx,%ecx
       jmp 7f
     3:testb $0x80,0x08(%ebp)            # file?
       je 4f
       movl $0x454C4946,%eax             # FILE
       jmp 6f
     4:testb $0x10,0x08(%ebp)            # mem?
       je 5f
       movl $0x004D454D,%eax             # MEM
       jmp 6f
     5:movl $0x003F3F3F,%eax             # ???
     6:movl %eax,0x10(%esp)
       movl $0x00,0x14(%esp)
     7:movl $0x096D,0x04(%esp)
       movl %ecx,0x08(%esp)
       call _WnSDT
       /*
       кФФФФФФФФФФФФФФФФФФФФФФП
       Г status               Гл
       РФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллл
       */
       movl 0x08(%ebp),%edx              # EBX = status
       movl $0x01,%ebx                   # EBX = bit for test
       movl $0x10,%ecx                   # ECX = loop counter
       movl $0x0970,0x04(%esp)           # ID
       movl %edi,0x00(%esp)              # HWND
     8:xorl %ebp,%ebp                    # EBP = FALSE
       testl %ebx,%edx                   # flag set?
       je 9f
       incl %ebp
     9:movl %ebp,0x08(%esp)
       call _CtlEn                       # enable/disable
       shll $1,%ebx                      # next flag
       incl 0x04(%esp)                   # ID++
       decl %ecx
       jne 8b
       jmp L05
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г default                            Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллллллллл
       */
   L04:movl 0xEC(%esp),%ecx
       movl 0xF4(%esp),%edi
       movl 0xF8(%esp),%esi
       addl $0x0100,%esp
       jmp _DefDP
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г EXIT                               Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллллллллл
       */
   L05:movl 0xE8(%esp),%edx
       movl 0xEC(%esp),%ecx
       movl 0xF0(%esp),%ebx
       movl 0xF4(%esp),%edi
       movl 0xF8(%esp),%esi
       movl 0xFC(%esp),%ebp
       addl $0x0100,%esp
       xorl %eax,%eax
       ret
       /*
       ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
       ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
         ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
       */
.comm _BMM,4
.comm _BNR,4
