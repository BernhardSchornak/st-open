       /*
       ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
       К                        S e c S y s   D i s t r i b u t o r                         Кл
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
       ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
       К It is strongly recommended to read the HTML documentation *before* you use SecSys! Кл
       ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
         ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .include "..\\..\\..\\include\\yasm.h"
       .data
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .p2align 4,0x00
   jt0:.long L01                              # SS_PRP
       .long L02                              # SS_CKM
       .long L03                              # SS_DEF
       .long L04                              # SS_RUN
       .long L05                              # SS_LGI
       .long L06                              # SS_LGO
       .long L07                              # SS_ENC
       .long L08                              # SS_DEC
       .long L09                              # SS_SRV
       .long L10                              # SS_CKS
       .long L11                              # SS_SSV
       .long L12                              # SS_DMP
       .long L13                              # SS_R00
       .long L14                              # SS_R01
       .long L15                              # SS_R02
       .long L16                              # SS_SDN
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .text
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SecSy    SecSys function distributor          Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> PAR1   SS_* command                         Гл
       Г   PAR2   optional address                     Гл
       Г   PAR3            numeric                     Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX    0000 0000   ERR_NO_ERROR             Гл
       Г          0000 000C   ERR_PAR_COMMAND          Гл
       Г          0000 003C   ERR_SS_ERROR             Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 0x04
.globl _SecSy
_SecSy:subl $0x80,%esp
       nop
       nop
       movl %edx,0x68(%esp)
       movl %ecx,0x6C(%esp)
       movl %ebx,0x70(%esp)
       movl %edi,0x74(%esp)
       movl %esi,0x78(%esp)
       movl %ebp,0x7C(%esp)
       pxor %xmm0,%xmm0
       movl 0x84(%esp),%eax                   # EAX = command
       movl _BNR,%esi                         # ESI = BNR
       leal 0x20(%esp),%ebp                   # EBP = LD
       cmpl $0x0F,%eax                        # valid command?
       ja L17
       jmp *jt0(, %eax, 4)                    # jump table <jt0>
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_PRP                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L01:cmpl %eax,EA_SSW(%esi)                 # SecSys active?
       jne L49
       movl %ebp,0x00(%esp)                   # LD
       movl $0x00010000,0x24(%esp)            # 65,536 byte
       movl $0xFFFFFFE0,0x28(%esp)            # field number
       movl $0x33,0x2C(%esp)                  # r, w, mem, static
       movdqu %xmm0,0x30(%esp)
       movq %xmm0,0x40(%esp)
       call _LDreq
       movl 0x00(%ebp),%ebx
       movl 0x10(%ebp),%ecx
       testl %eax,%eax
       jne L50
       movl %ebx,EA_SSW(%esi)                 # store EA_SSW
       movl %ecx,MH_SSW(%esi)                 #       MH_SSW
       movl $0x00,SS_MLI(%esi)                # reset fail count master
       movl $0x00,SS_ULI(%esi)                #                  user
       movl $0x01,SS_ACT(%esi)                # set   SecSys activated
       movl $0xFFFFFFFF,SS_USR(%esi)          # usr = none
       movl $0x07,ACCESS(%esi)                # guest
       movl $0x00,ADMINR(%esi)                # guest
       movl $0x0707,USR_RW(%esi)              # guest
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_CKM                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L02:negl SS_ACT(%esi)                      # activated?
       je L50
       cmpl $0x03,SS_MLI(%esi)                # 3 tries failed?
       jae L16
       movl %ebp,0x00(%esp)                   # LD
       movl $0xFFFFFFE1,0x28(%esp)            # masterkey
       movl $0x23,0x2C(%esp)                  # r, w, static
       movdqu %xmm0,0x30(%esp)
       movq %xmm0,0x40(%esp)
       call _LDreq
       movl 0x00(%ebp),%ebx
       movl 0x10(%ebp),%ecx
       testl %eax,%eax
       jne L50
       movl HW_PGM(%esi),%edi                 # EDI = HWND
       movl $0xFFFFFFE3,0x28(%esp)            # SecSys texts
       movl $0x23,0x2C(%esp)                  # r, w, static
       call _LDreq
       movl 0x30(%esp),%edx                   # EBX = MH texts
       testl %eax,%eax
       jne L50
       movl %ebx,EA_PWF(%esi)                 # store EA_PWF
       movl %ecx,MH_PWF(%esi)                 #       MH_PWF
       movl %edx,MH_SSM(%esi)                 #       MH_SSM
       movl %edi,0x00(%esp)                   # HWND
       cmpl $0x00,0x0100(%ebx)                # 1st DD = 0?
       jne 0f
       movl $_getMK,0x04(%esp)                # PFNWP   create MK files
       movl $0x09F0,0x08(%esp)                # ID
       call _DBox
       negl LGIABT(%esi)                      # aborted?
       jne L50
       negl SS_DRT(%esi)                      # dirty?
       jne 1f
     0:movl $_chkMK,0x04(%esp)                # PFNWP
       movl $0x09F0,0x08(%esp)                # ID
       call _DBox
       movl %ecx,0x00(%esp)
       call _LDfre
       movl %edx,0x00(%esp)
       call _LDfre
       negl LGIABT(%esi)                      # aborted?
       jne L18
       cmpl $0x03,SS_MLI(%esi)                # 3 tries failed?
       jae L16
       negl SS_DRT(%esi)                      # dirty?
       je L49
     1:movl $0x3C,%eax                        # ERR_SS_ERROR
       jmp L50
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_DEF                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L03:movl $0x00,SS_DMP(%esi)                # reset dump activities
       movl $0x00,SS_SVM(%esi)                #       supervisor mode
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_RUN                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L04:movl $0x01,SS_RUN(%esi)                # set running
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_LGI (local)           Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L05:negl SS_RUN(%esi)                      # activated?
       je L49
       cmpl $0x03,SS_ULI(%esi)                # 3 tries failed?
       jae L16
       movl %ebp,0x00(%esp)                   # LD
       movl $0xFFFFFFE2,0x28(%esp)            # userkeys
       movl $0x23,0x2C(%esp)                  # r, w, static
       movdqu %xmm0,0x30(%esp)
       movq %xmm0,0x40(%esp)
       call _LDreq
       movl 0x00(%ebp),%ebx
       movl 0x10(%ebp),%ecx
       testl %eax,%eax
       jne L50
       movl $0xFFFFFFE3,0x28(%esp)            # SecSys texts
       movl $0x23,0x2C(%esp)                  # r, w, static
       call _LDreq
       movl 0x30(%esp),%edx                   # EBX = MH texts
       testl %eax,%eax
       jne L50
       movl HW_PGM(%esi),%edi                 # EDI = HWND
       movl %ebx,EA_PWF(%esi)                 # store EA_PWF
       movl %ecx,MH_PWF(%esi)                 #       MH_PWF
       movl %edx,MH_SSM(%esi)                 #       MH_SSM
       movl %edi,0x00(%esp)                   # HWND
       movl $_login,0x04(%esp)                # PFNWP
       movl $0x09F0,0x08(%esp)                # ID
       call _DBox
       movl %ecx,0x00(%esp)
       call _LDfre
       movl %edx,0x00(%esp)
       call _LDfre
       negl LGIABT(%esi)                      # aborted?
       jne L18
       cmpl $0x03,SS_ULI(%esi)                # 3 tries failed?
       jb L49
       jmp L16
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_LGO (local)           Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L06:movl $0xFFFFFFFF,SS_USR(%esi)          # usr = none
       movl $0x00,ACCESS(%esi)                # guest
       movl $0x07,ADMINR(%esi)                # guest
       movl $0x0707,USR_RW(%esi)              # guest
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_ENC                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L07:movl 0x88(%esp),%ebx
       movl 0x8C(%esp),%ecx
       negl SS_RUN(%esi)                      # activated?
       je L49
       movl %ebx,0x00(%esp)
       movl %ecx,0x04(%esp)
       call _ssENC
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_DEC                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L08:movl 0x88(%esp),%ebx
       movl 0x8C(%esp),%ecx
       negl SS_RUN(%esi)                      # activated?
       je L49
       movl %ebx,0x00(%esp)
       movl %ecx,0x04(%esp)
       call _ssDEC
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_SRV                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L09:jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_CKS                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L10:jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_SSV                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L11:movl $0x01,SS_SVM(%esi)                # set supervisor mode
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_DMP                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L12:movl $0x01,SS_DMP(%esi)                # set dump activities
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_R00                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L13:jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_R01                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L14:jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_R02                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L15:jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_SDN                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L16:movl MH_SSW(%esi),%ebx                 # EBX = MH
       movl %ebx,0x00(%esp)                   # MH
       call _LDfre
       movdqa %xmm0,EA_SSW(%esi)              # clear SecSys area
       movdqa %xmm0,SS_ACT(%esi)
       movdqa %xmm0,SS_SVM(%esi)
       movl $0x74,%eax                        # ERR_3RD_FAIL
       jmp L50
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SS_ERR                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L17:movl $0x0C,%eax
       jmp L50
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г clear LGIABT             Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллл
       */
   L18:movl $0x00,LGIABT(%esi)                # reset LGIABT
       movl $0x78,%eax                        # ERR_SEC_LGI_ABORT
       jmp L50
       /*
       ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
       К                            A l e r t   H a n d l i n g                             Кл
       ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
         ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г secAH    alert handler                        Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> -      nothing                              Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX    .... ....   .                        Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 0x04
.globl _SecAH
_SecAH:
       ret
       /*
       ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
       К                            S e c S y s   D i a l o g s                             Кл
       ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
         ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г getMK    create new master key                Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> PAR1   HWND                                 Гл
       Г   PAR2   message                              Гл
       Г   PAR3           parameter 1                  Гл
       Г   PAR4                     2                  Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX    0000 0000   ERR_NO_ERROR             Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 2,0x90
.globl _getMK
_getMK:subl $0x80,%esp
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
       cmpl $0x20,%eax                       # WM_COMMAND
       je L20
       cmpl $0x3B,%eax                       # WM_INITDLG?
       jne L48
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г WM_INITDLG                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллл
       */
       movl MH_SSM(%esi),%ebx                # EBX = MH msgs
       movl USRLNG(%esi),%ecx                # ECX = language
       movl $0x00,LGIABT(%esi)               # reset aborted
       movl $0x00,PW_PIN(%esi)               # flag  1st/2nd pass
       movl $0x01,SS_DRT(%esi)               # set   dirty
       movl %ebx,0x00(%esp)                  # MH
       movl $0x00,0x04(%esp)                 # MSG_00
       movl %ecx,0x08(%esp)                  # language
       movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
       call _FDacc
       movl %edi,0x00(%esp)                  # HWND
       movl $0x09F6,0x04(%esp)               # ID
       movl %eax,0x08(%esp)                  # address
       call _SEf
       movl $0x01,DLG_TY(%esi)
       movl $0x46,0x04(%esp)
       movl $0x47,0x08(%esp)
       movl $0x48,0x0C(%esp)
       call _DLGtxt
       call _CtrWn
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г WM_COMMAND                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллл
       */
   L20:subl $0x09F3,%ecx
       js L48
       testl %ecx,%ecx
       je 0f
       decl %ecx
       je L41
       jmp L48
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФП
       Г create key + user     Гл
       РФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллл
       */
     0:pxor %xmm0,%xmm0
       leal PWEF_1(%esi),%ecx                # ECX = PW1
       leal PWEF_2(%esi),%edx                # EDX = PW2
       movdqa %xmm0,0x00(%ecx)
       movdqa %xmm0,0x10(%ecx)
       movdqa %xmm0,0x20(%ecx)
       movdqa %xmm0,0x30(%ecx)
       movl %edi,0x00(%esp)                  # HWND
       movl $0x09F7,0x04(%esp)               # ID EFld1
       movl %ecx,0x08(%esp)                  # PW1
       call _QEf
       movl $0x09F8,0x04(%esp)               # ID EFld2
       movl %edx,0x08(%esp)                  # PW2
       call _QEf
       leal 0x20(%esp),%ebp
       negl PW_PIN(%esi)
       jne L22
       /*
       кФФФФФФФФФФФФФФФП
       Г 1st pass      Гл
       РФФФФФФФФФФФФФФФйл
         лллллллллллллллл
       */
       leal PWEF_1(%esi),%edi                # EDI = PW1
       movl $0x01,%ebp
     1:movl 0x00(%edi),%eax                  # identical?
       movl 0x04(%edi),%ebx
       movl 0x08(%edi),%ecx
       movl 0x0C(%edi),%edx
       cmpl %eax,0x20(%edi)
       jne L24
       cmpl %ebx,0x24(%edi)
       jne L24
       cmpl %ecx,0x28(%edi)
       jne L24
       cmpl %edx,0x2C(%edi)
       jne L24
       addl $0x10,%edi
       decl %ebp
       jns 1b
       leal PWEF_1(%esi),%edi                # EDI = PW1
       movl $0x3C,%ebp
     2:movb 0x00(%edi),%al                   # expand to 64 byte
       movb 0x01(%edi),%bl
       movb 0x02(%edi),%cl
       movb 0x03(%edi),%dl
       addb %al,0x01(%edi)
       addb %bl,0x02(%edi)
       addb %cl,0x03(%edi)
       addb %dl,0x04(%edi)
       incl %edi
       decl %ebp
       jne 2b
       movl EA_PWF(%esi),%ebp                # EBX = mpw.dat
       leal PWEF_1(%esi),%edi                # EDI = PW
       addb %dl,0x00(%edi)                   # first byte...
       movl $0x0003FFFF,%ecx                 # ECX = counter
     3:call _RAND
       movl %eax,0x0100(%ebp, %ecx, 4)       # fill with random data
       decl %ecx
       jns 3b
       xorl %ecx,%ecx
       xorl %edx,%edx
       movl $0x04,0x1C(%esp)
     4:addl 0x20(%edi),%ecx                  # store PW in mpw.dat
       addl 0x24(%edi),%edx
       movl 0x00(%edi),%eax
       movl 0x04(%edi),%ebx
       shrl $0x0E,%ecx
       shrl $0x0E,%edx
       movl %eax,0x0100(%ebp, %ecx, 4)
       movl %ebx,0x0100(%ebp, %edx, 4)
       addl $0x08,%edi
       decl 0x1C(%esp)
       jne 4b
       movl MH_PWF(%esi),%edi                # EDI = MH_PWF
       call crKey
       orb $0x04,0x08(%edi)                  # PWF = changed
       movl $0x01,%ebp                       # MSG_01
       incl PW_PIN(%esi)                     # set 2nd pass
       jmp L25
       /*
       кФФФФФФФФФФФФФФФП
       Г 2nd pass      Гл
       РФФФФФФФФФФФФФФФйл
         лллллллллллллллл
       */
   L22:movl %ebp,0x00(%esp)                  # LD
       movl $0xFFFFFFE2,0x28(%esp)           # ppw.dat
       movl $0x23,0x2C(%esp)                 # r, w, static
       movdqu %xmm0,0x30(%esp)
       movq %xmm0,0x40(%esp)
       call _LDreq
       movl 0x20(%esp),%ebx                  # EBX = EA_PPW
       movl 0x30(%esp),%ebp                  # EBP = MH_PPW
       testl %eax,%eax
       jne L42
       movl %ecx,0x00(%esp)                  # PIN
       call _hex2D
       movl %ebp,0x00(%esp)                  # MH
       cmpl %eax,0x3C(%ebx)                  # ECX = max entries
       ja 5f
       call _LDfre
       movl $0x03,%ebp                       # PIN too large
       jmp L25
     5:movl %eax,0x04(%esp)                  # PIN
       movl $0x01,0x08(%esp)                 # subfield 01
       movl $0x02,0x0C(%esp)                 # FDA_WRITE
       movl $0x00FF0000,0x14(%esp)           # full access
       call _FDacc
       movl $0x00,0x08(%esp)                 # subfield 00
       movl %edx,0x10(%esp)                  # PW
       call _FDacc
       orb $0x04,0x08(%ebp)                  # PWF = changed
       call _LDfre
       movl $0x00,SS_DRT(%esi)               # reset dirty
       jmp L42
       /*
       кФФФФФФФФФФФФФФФП
       Г messages      Гл
       РФФФФФФФФФФФФФФФйл
         лллллллллллллллл
       */
   L24:movl $0x02,%ebp                       # MSG_02
   L25:leal 0x20(%esp),%edx
       movl 0x84(%esp),%edi                  # EDI = HWND
       movl MH_SSM(%esi),%ebx                # EBX = MH_SSM
       movl USRLNG(%esi),%ecx                # ECX = language
       movl %edi,0x00(%esp)                  # HWND
       movl $0x09F7,0x04(%esp)               # ID EFld1
       movl %edx,0x08(%esp)                  # PW1
       movl $0x00,0x20(%esp)
       call _SEf
       movl $0x09F8,0x04(%esp)               # ID EFld2
       call _SEf
       movl %ebx,0x00(%esp)                  # MH msgs
       movl %ebp,0x04(%esp)                  # message
       movl %ecx,0x08(%esp)                  # lang
       movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
       call _FDacc
       movl %edi,0x00(%esp)                  # HWND
       movl $0x09F6,0x04(%esp)               # ID
       movl %eax,0x08(%esp)                  # address
       call _SEf
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г chkMK    Master login                         Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> PAR1   HWND                                 Гл
       Г   PAR2   message                              Гл
       Г   PAR3           parameter 1                  Гл
       Г   PAR4                     2                  Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX    0000 0000   ERR_NO_ERROR             Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 2,0x90
.globl _chkMK
_chkMK:subl $0x80,%esp
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
       cmpl $0x20,%eax                       # WM_COMMAND
       je L30
       cmpl $0x3B,%eax                       # WM_INITDLG?
       jne L48
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г WM_INITDLG                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллл
       */
       leal 0x20(%esp),%edx
       movl MH_SSM(%esi),%ebx                # EBX = MH msgs
       movl USRLNG(%esi),%ecx                # ECX = language
       movl $0x00,LGIABT(%esi)               # reset aborted
       movl $0x01,SS_DRT(%esi)               # set   dirty
       movl %ebx,0x00(%esp)                  # MH
       movl $0x06,0x04(%esp)                 # MSG_06
       movl %ecx,0x08(%esp)                  # language
       movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
       movl $0x00,0x20(%esp)                 # empty string
       call _FDacc
       movl %edi,0x00(%esp)                  # HWND
       movl $0x09F6,0x04(%esp)               # ID
       movl %eax,0x08(%esp)                  # address
       call _SEf
       movl $0x09F8,0x04(%esp)               # PW2
       movl $0x00,0x08(%esp)                 # hide
       call _CtlSh
       movl $0x01,DLG_TY(%esi)
       movl $0x4A,0x04(%esp)
       movl $0x4B,0x08(%esp)
       movl $0x4C,0x0C(%esp)
       call _DLGtxt
       call _CtrWn
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г WM_COMMAND                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллл
       */
   L30:subl $0x09F3,%ecx
       js L48
       testl %ecx,%ecx
       je 0f
       decl %ecx
       je L41
       jmp L48
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФП
       Г check key             Гл
       РФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллл
       */
     0:pxor %xmm0,%xmm0
       leal PWEF_1(%esi),%ecx                # ECX = PW1
       leal PWEF_2(%esi),%edx                # EDX = PW2
       movdqa %xmm0,0x00(%ecx)
       movdqa %xmm0,0x10(%ecx)
       movdqa %xmm0,0x20(%ecx)
       movdqa %xmm0,0x30(%ecx)
       movl %edi,0x00(%esp)                  # HWND
       movl $0x09F7,0x04(%esp)               # ID EFld2
       movl %ecx,0x08(%esp)                  # address
       call _QEf
       movl %edx,0x08(%esp)                  # address
       call _QEf
       movl %ecx,%edi                        # EDI = PW
       movl $0x3C,%ebp
     1:movb 0x00(%edi),%al                   # expand to 64 byte
       movb 0x01(%edi),%bl
       movb 0x02(%edi),%cl
       movb 0x03(%edi),%dl
       addb %al,0x01(%edi)
       addb %bl,0x02(%edi)
       addb %cl,0x03(%edi)
       addb %dl,0x04(%edi)
       incl %edi
       decl %ebp
       jne 1b
       leal PWEF_1(%esi),%edi                # EDI = PW
       movl EA_PWF(%esi),%ebp                # EBP = mpw.dat
       movl $0x04,0x1C(%esp)
       addb %dl,0x00(%edi)                   # first byte...
       xorl %ecx,%ecx
       xorl %edx,%edx
     2:addl 0x20(%edi),%ecx                  # validate PW in mpw.dat
       addl 0x24(%edi),%edx
       movl 0x00(%edi),%eax
       movl 0x04(%edi),%ebx
       shrl $0x0E,%ecx
       shrl $0x0E,%edx
       cmpl %eax,0x0100(%ebp, %ecx, 4)
       jne 3f
       cmpl %ebx,0x0100(%ebp, %edx, 4)
       jne 3f
       addl $0x08,%edi
       decl 0x1C(%esp)
       jne 2b
       movl $0x00,SS_DRT(%esi)               # reset dirty
       call crKey
       jmp L42
     3:incl SS_MLI(%esi)
       movl $0x04,%ebp                       # MSG_04
       call _GetTime
       movl %eax,SS_TMS(%esi)
       call _GetDate
       movl %eax,SS_DTS(%esi)
       cmpl $0x03,SS_MLI(%esi)
       jbe L25
       jmp L42
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г login    login user                           Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> PAR1   HWND                                 Гл
       Г   PAR2   message                              Гл
       Г   PAR3           parameter 1                  Гл
       Г   PAR4                     2                  Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX    0000 0000   ERR_NO_ERROR             Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 2,0x90
.globl _login
_login:subl $0x80,%esp
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
       cmpl $0x20,%eax                       # WM_COMMAND
       je L40
       cmpl $0x3B,%eax                       # WM_INITDLG?
       jne L48
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г WM_INITDLG                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллл
       */
       movl MH_SSM(%esi),%ebx                # EBX = MH msgs
       movl USRLNG(%esi),%ecx                # ECX = language
       movl $0x00,ACCESS(%esi)               # guest
       movl $0x00,LGIABT(%esi)               # reset aborted
       movl %ebx,0x00(%esp)                  # MH
       movl $0x07,0x04(%esp)                 # MSG_07
       movl %ecx,0x08(%esp)                  # language
       movl $0x07,0x0C(%esp)                 # FDA_ADDRESS
       call _FDacc
       movl %edi,0x00(%esp)                  # HWND
       movl $0x09F6,0x04(%esp)               # ID
       movl %eax,0x08(%esp)                  # address
       call _SEf
       movl $0x09F7,0x04(%esp)
       movl $0x0143,0x08(%esp)               # EM_SETTEXTLIMIT
       movl $0x04,0x0C(%esp)
       movl $0x00,0x10(%esp)
       call _SnDIM
       movl $0x01,DLG_TY(%esi)
       movl $0x4E,0x04(%esp)
       movl $0x4F,0x08(%esp)
       movl $0x50,0x0C(%esp)
       call _DLGtxt
       call _CtrWn
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г WM_COMMAND                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллл
       */
   L40:subl $0x09F3,%ecx
       js L48
       testl %ecx,%ecx
       je 0f
       decl %ecx
       jne L48
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФП
       Г abort                 Гл
       РФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллл
       */
   L41:movl $0x01,LGIABT(%esi)               # set   aborted
       movl $0x00,SS_DRT(%esi)               # reset dirty
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФП
       Г common exit           Гл
       РФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллл
       */
   L42:pxor %xmm0,%xmm0
       leal PWEF_1(%esi),%ecx                # ECX = PW1
       movl 0x84(%esp),%edi
       movdqa %xmm0,0x00(%ecx)
       movdqa %xmm0,0x10(%ecx)
       movdqa %xmm0,0x20(%ecx)
       movdqa %xmm0,0x30(%ecx)
       movl %edi,0x00(%esp)                  # HWND
       call _WinDD
       jmp L49
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФП
       Г validate PIN and PW   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллл
       */
     0:pxor %xmm0,%xmm0
       movl EA_PWF(%esi),%ebx                # EBX = EA_PWF
       movl MH_PWF(%esi),%ebp                # EBP = MH_PWF
       leal PWEF_1(%esi),%ecx                # ECX = PW1
       leal PWEF_2(%esi),%edx                # EDX = PW2
       movdqa %xmm0,0x00(%ecx)
       movdqa %xmm0,0x10(%ecx)
       movdqa %xmm0,0x20(%ecx)
       movdqa %xmm0,0x30(%ecx)
       movl %edi,0x00(%esp)                  # HWND
       movl $0x09F7,0x04(%esp)               # ID EFld1
       movl %ecx,0x08(%esp)                  # PW1
       call _QEf
       movl $0x09F8,0x04(%esp)               # ID EFld2
       movl %edx,0x08(%esp)                  # PW2
       call _QEf
       movl %ecx,0x00(%esp)
       call _hex2D
       cmpl %eax,0x3C(%ebx)                  # ECX = max entries
       jbe L43
       movl %eax,SS_USR(%esi)                # store SS_USR
       movl $0x00,USR_RW(%esi)               # clear USR_RW
       movl %ebp,0x00(%esp)                  # MH
       movl %eax,0x04(%esp)                  # entry = PIN
       movl $0x01,0x08(%esp)                 # subfield 01
       movl $0x01,0x0C(%esp)                 # FDA_READ
       call _FDacc
       movl %eax,%ebx                        # EBX = access rights
       movl $0x00,0x08(%esp)                 # subfield 00
       movl %ecx,0x10(%esp)                  # buffer
       call _FDacc
       decl USR_RW(%esi)                     # USR_RW = no access
     1:movl 0x00(%ecx),%eax
       addl $0x04,%ecx
       cmpl %eax,0x00(%edx)
       jne L43
       addl $0x04,%edx
       testl $0xFF000000,%eax
       jne 1b
       movl %ebx,%ecx
       movl %ebx,%edx
       shrl $0x10,%ebx
       shrl $0x18,%ecx
       andl $0xFF,%ebx
       andl $0xFFFF,%edx
       movl %ecx,ACCESS(%esi)                # store access rights
       movl %ebx,ADMINR(%esi)                # store admin  rights
       movl %edx,USR_RW(%esi)                # store r/w    rights
       jmp L42
   L43:incl SS_ULI(%esi)
       movl $0x05,%ebp                       # MSG_05
       movl $0xFFFFFFFF,SS_USR(%esi)         # clear SS_USR
       call _GetTime
       movl %eax,SS_TMS(%esi)
       call _GetDate
       movl %eax,SS_DTS(%esi)
       cmpl $0x03,SS_ULI(%esi)
       jbe L25
       jmp L42
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г default                      Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллл
       */
   L48:movl 0x6C(%esp),%ecx
       movl 0x74(%esp),%edi
       movl 0x78(%esp),%esi
       addl $0x80,%esp
       jmp _DefDP
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г exit                         Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллл
       */
   L49:xorl %eax,%eax
   L50:movl 0x68(%esp),%edx
       movl 0x6C(%esp),%ecx
       movl 0x70(%esp),%ebx
       movl 0x74(%esp),%edi
       movl 0x78(%esp),%esi
       movl 0x7C(%esp),%ebp
       addl $0x80,%esp
       ret
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г crKey    create key                           Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> EBX    offset  master = 0000                Гл
       Г                  user   = 1000 ... F000       Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- ***    all registers are restored           Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллллллллллллллллллллллллл
       */
 crKey:movl %esi,%eax
       movl %edx,0x50(%esp)
       movl %ecx,0x54(%esp)
       movl %ebx,0x58(%esp)
       movl %edi,0x5C(%esp)
       movl %esi,0x60(%esp)
       movl %ebp,0x64(%esp)
       movl EA_SSW(%eax),%esi                # ESI = work area
       movl EA_PWF(%eax),%ebp                # EBP = mpw.dat
       leal PWEF_1(%eax),%edi                # EDI = PW
       movl $0x0400,0x1C(%esp)
       addl $0x0100,%ebp
     0:movzb 0x00(%edi),%eax                 # read offsets
       movzb 0x01(%edi),%ebx
       movzb 0x02(%edi),%ecx
       movzb 0x03(%edi),%edx
       addl %eax,%ebp                        # get key bytes
       movb 0x00(%ebp),%al
       addl %ebx,%ebp
       movb 0x00(%ebp),%bl
       addl %ecx,%ebp
       movb 0x00(%ebp),%cl
       addl %edx,%ebp
       movb 0x00(%ebp),%dl
       movb %al,0x00(%esi)                   # write key bytes
       movb %bl,0x01(%esi)
       movb %cl,0x02(%esi)
       movb %dl,0x03(%esi)
       addl $0x04,%edi
       addl $0x04,%esi
       andl $0xFFFFFF3F,%edi                 # keep in range
       decl 0x1C(%esp)
       jne 0b
       movl 0x50(%esp),%edx
       movl 0x54(%esp),%ecx
       movl 0x58(%esp),%ebx
       movl 0x5C(%esp),%edi
       movl 0x60(%esp),%esi
       movl 0x64(%esp),%ebp
       ret
       /*
       ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
       ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
         ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
       */
.comm _BNR,4
