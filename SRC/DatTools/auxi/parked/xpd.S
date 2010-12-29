       /*
       ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
       К                                E X P A N D   D A T                                 Кл
       КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
       К                          *** (C) ST-Open 1979 - 2008 ***                           Кл
       ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
         ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
       ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
       К       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        Кл
       КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
       К You may copy and distribute it as often as you want, but recipients aren't allowed Кл
       К to pay *anything* for any copy of this file.                                       Кл
       К                                                                                    Кл
       К You are free to modify the content of this file if you want to. However, derivates Кл
       К of the content of this file *still* are subject to the terms of the FT4FP license. Кл
       К Recipients neither are allowed to pay *anything* for original work nor for altered Кл
       К or derived replica.                                                                Кл
       КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
       К       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        Кл
       ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
         ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .include "..//..//..//..//include//yasm.h"
       .include "..//..//source//hasm.h"
       .data
       .p2align 4,0x00
  LC00:.long 0x07070707, 0x07070707, 0x07070707, 0x07070707
       .text
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г xpand    expand language fields to 16 subs    Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> -      nothing                              Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX    0000 0000   ERR_NO_ERR               Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г Convert language fields from old (8) into new Гл
       Г (16 languages) format.                        Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 2,0x90
.globl _xpand
_xpand:subl $0x40,%esp
       movl _BNR,%eax
       nop
       movl %edx,0x28(%esp)
       movl %ecx,0x2C(%esp)
       movl %ebx,0x30(%esp)
       movl %edi,0x34(%esp)
       movl %esi,0x38(%esp)
       movl %ebp,0x3C(%esp)
       pxor %xmm4,%xmm4
       movl IP_SRC(%eax),%ebx               # EBX = IP_SRC
       leal FN_SRC(%eax),%ecx               # ECX = path SRC
       movl _MHSTR,%edx                     # EDX = MH_STR
       leal XP_LDS(%eax),%edi               # EDI = LD
       movl %eax,%esi                       # ESI = BNR
       leal XP_FHS(%eax),%ebp               # EBP = FH
       movl $0xFFFFF000,0x08(%edi)          # field number
       movl $0x33,0x0C(%edi)                # r, w, mem, static
       movdqa %xmm4,0x10(%edi)
       movdqa %xmm4,0x20(%edi)
       movdqa %xmm4,0x40(%edi)
       movdqa %xmm4,0x50(%edi)
       /*
       кФФФФФФФФФФФФФФФП
       Г FFFF FF12     Гл
       РФФФФФФФФФФФФФФФйл
         лллллллллллллллл
       */
       movl %edx,0x00(%esp)                 # MHSTR
       movl $0x70,0x04(%esp)                # FFFFFF12
       movl $0x00,0x08(%esp)                # subfield 00
       movl $0x01,0x0C(%esp)                # FDA_READ
       movl %ebx,0x10(%esp)                 # IP_SRC         <=== PAR5 does not change!
       call _FDacc
movl %eax,0x00(%esp)
movl %ecx,0x04(%esp)
call _debug
       movl %ecx,0x00(%esp)                 # full name
       movl $0x02,0x04(%esp)                # open if exist
       movl %ebp,0x0C(%esp)                 # FH
       call _Fopen
       movl 0x04(%ebp),%ebx                 # EBX = size
       testl %eax,%eax
       jne L00
       shll $0x02,%ebx                      # size * 4
       movl %edi,0x00(%esp)                 # LD
       movl %ebx,0x04(%edi)
       call _LDreq
       movl 0x00(%edi),%ebx                 # EBX = EA
       testl %eax,%eax                      # error?
       jne 0f
       movl %ebx,0x08(%ebp)                 # FH.Mbase
       movl %ebp,0x00(%esp)                 # FH
       movl $0x00,0x04(%esp)                # entire file
       call _Fread
       call xpDLG
       movl %eax,0x04(%ebp)                 # store size
       call _Fwrite
     0:call _Fclose
       movl %edi,0x00(%esp)                 # LD
       call _LDfre
       /*
       кФФФФФФФФФФФФФФФФФФФФП
       Г FFFF FF13          Гл
       РФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллл
       */
   L00:movl %edx,0x00(%esp)                 # MHSTR
       movl $0x71,0x04(%esp)                # FFFFFF13
       movl $0x01,0x0C(%esp)                # FDA_READ
       call _FDacc
movl %eax,0x00(%esp)
movl %ecx,0x04(%esp)
call _debug
       movl %ecx,0x00(%esp)                 # full name
       movl $0x02,0x04(%esp)                # open if exist
       movl %ebp,0x0C(%esp)                 # FH
       call _Fopen
       movl 0x04(%ebp),%ebx                 # EBX = size
       testl %eax,%eax
       jne L01
       shll $0x02,%ebx                      # size * 4
       movl %edi,0x00(%esp)                 # LD
       movl %ebx,0x04(%edi)
       call _LDreq
       movl 0x00(%edi),%ebx                 # EBX = MH
       testl %eax,%eax                      # error?
       jne 1f
       movl %ebx,0x08(%ebp)                 # FH.Mbase
       movl %ebp,0x00(%esp)                 # FH
       movl $0x00,0x04(%esp)                # entire file
       call _Fread
       call xpDLG
       call _Fwrite
     1:call _Fclose
       movl %edi,0x00(%esp)                 # LD
       call _LDfre
       /*
       кФФФФФФФФФФФФФФФФФФФФП
       Г err.dat            Гл
       РФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллл
       */
   L01:movl %edx,0x00(%esp)                 # MHSTR
       movl $0x72,0x04(%esp)                # err.dat
       movl $0x01,0x0C(%esp)                # FDA_READ
       call _FDacc
movl %eax,0x00(%esp)
movl %ecx,0x04(%esp)
call _debug
       movl %ecx,0x00(%esp)                 # full name
       movl $0x02,0x04(%esp)                # open if exist
       movl %ebp,0x0C(%esp)                 # FH
       call _Fopen
       movl 0x04(%ebp),%ebx                 # EBX = size
       testl %eax,%eax
       jne L02
       shll $0x02,%ebx                      # size * 4
       movl %edi,0x00(%esp)                 # LD
       movl %ebx,0x04(%edi)
       call _LDreq
       movl 0x00(%edi),%ebx                 # EBX = MH
       testl %eax,%eax                      # error?
       jne 2f
       movl %ebx,0x08(%ebp)                 # FH.Mbase
       movl %ebp,0x00(%esp)                 # FH
       movl $0x00,0x04(%esp)                # entire file
       call _Fread
       call xpMSG
       call _Fwrite
     2:call _Fclose
       movl %edi,0x00(%esp)                 # LD
       call _LDfre
       /*
       кФФФФФФФФФФФФФФФФФФФФП
       Г hlp.dat            Гл
       РФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллл
       */
   L02:movl %edx,0x00(%esp)                 # MHSTR
       movl $0x73,0x04(%esp)                # hlp.dat
       movl $0x01,0x0C(%esp)                # FDA_READ
       call _FDacc
movl %eax,0x00(%esp)
movl %ecx,0x04(%esp)
call _debug
       movl %ecx,0x00(%esp)                 # full name
       movl $0x02,0x04(%esp)                # open if exist
       movl %ebp,0x0C(%esp)                 # FH
       call _Fopen
       movl 0x04(%ebp),%ebx                 # EBX = size
       testl %eax,%eax
       jne L03
       shll $0x02,%ebx                      # size * 4
       movl %edi,0x00(%esp)                 # LD
       movl %ebx,0x04(%edi)
       call _LDreq
       movl 0x00(%edi),%ebx                 # EBX = MH
       testl %eax,%eax                      # error?
       jne 3f
       movl %ebx,0x08(%ebp)                 # FH.Mbase
       movl %ebp,0x00(%esp)                 # FH
       movl $0x00,0x04(%esp)                # entire file
       call _Fread
       call xpHLP
       call _Fwrite
     3:call _Fclose
       movl %edi,0x00(%esp)                 # LD
       call _LDfre
       /*
       кФФФФФФФФФФФФФФФФФФФФП
       Г nsm.dat            Гл
       РФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллл
       */
   L03:movl %edx,0x00(%esp)                 # MHSTR
       movl $0x74,0x04(%esp)                # err.dat
       movl $0x01,0x0C(%esp)                # FDA_READ
       call _FDacc
movl %eax,0x00(%esp)
movl %ecx,0x04(%esp)
call _debug
       movl %ecx,0x00(%esp)                 # full name
       movl $0x02,0x04(%esp)                # open if exist
       movl %ebp,0x0C(%esp)                 # FH
       call _Fopen
       movl 0x04(%ebp),%ebx                 # EBX = size
       testl %eax,%eax
       jne L04
       shll $0x02,%ebx                      # size * 4
       movl %edi,0x00(%esp)                 # LD
       movl %ebx,0x04(%edi)
       call _LDreq
       movl 0x00(%edi),%ebx                 # EBX = MH
       testl %eax,%eax                      # error?
       jne 4f
       movl %ebx,0x08(%ebp)                 # FH.Mbase
       movl %ebp,0x00(%esp)                 # FH
       movl $0x00,0x04(%esp)                # entire file
       call _Fread
       call xpMSG
       call _Fwrite
     4:call _Fclose
       movl %edi,0x00(%esp)                 # LD
       call _LDfre
       /*
       кФФФФФФФФФФФФФФФФФФФФП
       Г top.dat            Гл
       РФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллл
       */
   L04:movl %edx,0x00(%esp)                 # MHSTR
       movl $0x75,0x04(%esp)                # hlp.dat
       movl $0x01,0x0C(%esp)                # FDA_READ
       call _FDacc
movl %eax,0x00(%esp)
movl %ecx,0x04(%esp)
call _debug
       movl %ecx,0x00(%esp)                 # full name
       movl $0x02,0x04(%esp)                # open if exist
       movl %ebp,0x0C(%esp)                 # FH
       call _Fopen
       movl 0x04(%ebp),%ebx                 # EBX = size
       testl %eax,%eax
       jne L05
       shll $0x02,%ebx                      # size * 4
       movl %edi,0x00(%esp)                 # LD
       movl %ebx,0x04(%edi)
       call _LDreq
       movl 0x00(%edi),%ebx                 # EBX = MH
       testl %eax,%eax                      # error?
       jne 5f
       movl %ebx,0x08(%ebp)                 # FH.Mbase
       movl %ebp,0x00(%esp)                 # FH
       movl $0x00,0x04(%esp)                # entire file
       call _Fread
       call xpHLP
       call _Fwrite
     5:call _Fclose
       movl %edi,0x00(%esp)                 # LD
       call _LDfre
       /*
       кФФФФФФФФФФФФФФФФФФФФП
       Г exit               Гл
       РФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллл
       */
   L05:movl 0x28(%esp),%edx
       movl 0x2C(%esp),%ecx
       movl 0x30(%esp),%ebx
       movl 0x34(%esp),%edi
       movl 0x38(%esp),%esi
       movl 0x3C(%esp),%ebp
       addl $0x40,%esp
       ret
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г xpDLG    menu + dialog texts                  Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> EBX    EA field                             Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX    **** ****   new size                 Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 2,0x90
 xpDLG:subl $0x20,%esp
       nop
       nop
       movl %edx,0x08(%esp)
       movl %ecx,0x0C(%esp)
       movl %ebx,0x10(%esp)
       movl %edi,0x14(%esp)
       movl %esi,0x18(%esp)
       movl %ebp,0x1C(%esp)
       movl 0x34(%ebx),%eax                 # EAX = field size
       movl 0x3C(%ebx),%ecx                 # ECX = entries
       movl 0x80(%ebx),%edx                 # EDX = offset IDs
       cmpl $0x09,0x24(%ebx)                # old texts?
       jne xpXIT
       movdqa LC00,%xmm0
       movl %ecx,%ebp
       movl %ebx,%edi
       movl %ebx,%esi
       shll $0x05,%ecx                      # ECX = entries * 4 * 8
       shll $0x01,%ebp                      # EBP = entries * 8
       addl %eax,%edi
       addl %eax,%esi
       movl $0x11,0x24(%ebx)                # 17 subfields
       addl %ecx,0x34(%ebx)                 # update size
       movq %xmm0,0x48(%ebx)                # add 8 * $32
       movl $0x03,0x50(%ebx)                # and 1 * DD
       addl %ecx,%edi
       subl %edx,%eax                       # EAX = byte to move
       andl $0xFFFFFFC0,%edi                # EDI = next lower 64 byte block target
       andl $0xFFFFFFC0,%esi                # ESI =                          source
       shrl $0x06,%eax                      # EAX = 64 byte blocks to move
     0:movdqa 0x00(%esi),%xmm0
       movdqa 0x10(%esi),%xmm1
       movdqa 0x20(%esi),%xmm2
       movdqa 0x30(%esi),%xmm3
       movntdq %xmm0,0x00(%edi)
       movntdq %xmm1,0x10(%edi)
       movntdq %xmm2,0x20(%edi)
       movntdq %xmm3,0x30(%edi)
       subl $0x40,%esi
       subl $0x40,%edi
       decl %eax
       jns 0b
       sfence
       movl %ecx,%edi
       pxor %xmm0,%xmm0
       pxor %xmm1,%xmm1
       pxor %xmm2,%xmm2
       pxor %xmm3,%xmm3
       shrl $0x06,%ecx
     1:movntdq %xmm0,0x00(%esi)
       movntdq %xmm1,0x10(%esi)
       movntdq %xmm2,0x20(%esi)
       movntdq %xmm3,0x30(%esi)
       addl $0x40,%esi
       decl %ecx
       jne 1b
       sfence
       leal 0x0100(%ebx),%esi
     2:movl 0x00(%esi),%eax
       movl 0x04(%esi),%ebx
       movl 0x08(%esi),%ecx
       movl 0x0C(%esi),%edx
       testl %eax,%eax
       je 3f
       addl %edi,%eax
     3:testl %ebx,%ebx
       je 4f
       addl %edi,%ebx
     4:testl %ecx,%ecx
       je 5f
       addl %edi,%ecx
     5:testl %edx,%edx
       je 6f
       addl %edi,%edx
     6:movl %eax,0x00(%esi)
       movl %ebx,0x04(%esi)
       movl %ecx,0x08(%esi)
       movl %edx,0x0C(%esi)
       addl $0x10,%esi
       decl %ebp
       jne 2b
       movl 0x10(%esp),%ebx
       movl $0x21,%ebp
       movl $0x08,%edx
       movl 0x3C(%ebx),%ecx
       movl 0x80(%ebx),%eax
       shll $0x02,%ecx
     7:addl %ecx,%eax
       movl %eax,0x00(%ebx, %ebp, 4)
       incl %ebp
       decl %edx
       jne 7b
       movl 0x34(%ebx),%eax
       jmp xpXIT
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г xpHLP    OLH + topics                         Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> EBX    EA field                             Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX    **** ****   new size                 Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 2,0x90
 xpHLP:subl $0x20,%esp
       nop
       nop
       movl %edx,0x08(%esp)
       movl %ecx,0x0C(%esp)
       movl %ebx,0x10(%esp)
       movl %edi,0x14(%esp)
       movl %esi,0x18(%esp)
       movl %ebp,0x1C(%esp)
       movl 0x34(%ebx),%eax                 # EAX = field size
       movl 0x3C(%ebx),%ecx                 # ECX = entries
       cmpl $0x10,0x24(%ebx)                # old help?
       jne xpXIT
       movdqa LC00,%xmm0
       movl %ecx,%ebp
       movl %ebx,%edi
       movl %ebx,%esi
       shll $0x06,%ecx                      # ECX = entries * 4 * 16
       shll $0x02,%ebp                      # EBP = entries * 16
       addl %eax,%edi
       addl %eax,%esi
       movl $0x20,0x24(%ebx)                # 32 subfields
       addl %ecx,0x34(%ebx)                 # update size
       movdqa %xmm0,0x50(%ebx)              # add 16 * $32
       addl %ecx,%edi
       subl %ecx,%eax                       # EAX = byte to move
       andl $0xFFFFFFC0,%edi                # EDI = next lower 64 byte block target
       andl $0xFFFFFFC0,%esi                # ESI =                          source
       shrl $0x06,%eax                      # EAX = 64 byte blocks to move
     0:movdqa 0x00(%esi),%xmm0
       movdqa 0x10(%esi),%xmm1
       movdqa 0x20(%esi),%xmm2
       movdqa 0x30(%esi),%xmm3
       movntdq %xmm0,0x00(%edi)
       movntdq %xmm1,0x10(%edi)
       movntdq %xmm2,0x20(%edi)
       movntdq %xmm3,0x30(%edi)
       subl $0x40,%esi
       subl $0x40,%edi
       decl %eax
       jns 0b
       sfence
       movl %ecx,%edi
       pxor %xmm0,%xmm0
       pxor %xmm1,%xmm1
       pxor %xmm2,%xmm2
       pxor %xmm3,%xmm3
       shrl $0x06,%ecx
     1:movntdq %xmm0,0x00(%esi)
       movntdq %xmm1,0x10(%esi)
       movntdq %xmm2,0x20(%esi)
       movntdq %xmm3,0x30(%esi)
       addl $0x40,%esi
       decl %ecx
       jns 1b
       sfence
       leal 0x0100(%ebx),%esi
     2:movl 0x00(%esi),%eax
       movl 0x04(%esi),%ebx
       movl 0x08(%esi),%ecx
       movl 0x0C(%esi),%edx
       testl %eax,%eax
       je 3f
       addl %edi,%eax
     3:testl %ebx,%ebx
       je 4f
       addl %edi,%ebx
     4:testl %ecx,%ecx
       je 5f
       addl %edi,%ecx
     5:testl %edx,%edx
       je 6f
       addl %edi,%edx
     6:movl %eax,0x00(%esi)
       movl %ebx,0x04(%esi)
       movl %ecx,0x08(%esi)
       movl %edx,0x0C(%esi)
       addl $0x10,%esi
       decl %ebp
       jne 2b
       movl 0x10(%esp),%ebx
       movl $0x28,%ebp
       movl $0x10,%edx
       movl 0x3C(%ebx),%ecx
       movl 0x9C(%ebx),%eax
       shll $0x02,%ecx
     7:addl %ecx,%eax
       movl %eax,0x00(%ebx, %ebp, 4)
       incl %ebp
       decl %edx
       jne 7b
       movl 0x34(%ebx),%eax
       jmp xpXIT
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г xpMSG    messages                             Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> EBX    EA field                             Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX    **** ****   new size                 Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 2,0x90
 xpMSG:subl $0x20,%esp
       nop
       nop
       movl %edx,0x08(%esp)
       movl %ecx,0x0C(%esp)
       movl %ebx,0x10(%esp)
       movl %edi,0x14(%esp)
       movl %esi,0x18(%esp)
       movl %ebp,0x1C(%esp)
       movl 0x34(%ebx),%eax                 # EAX = field size
       movl 0x3C(%ebx),%ecx                 # ECX = entries
       movl 0x7C(%ebx),%edx                 # EDX = last OT
       cmpl $0x08,0x24(%ebx)                # old messages?
       jne xpXIT
       movdqa LC00,%xmm0
       movl %ecx,%ebp
       movl %ebx,%edi
       movl %ebx,%esi
       shll $0x05,%ecx                      # ECX = entries * 4 * 8
       shll $0x01,%ebp                      # EBP = entries * 8
       addl %eax,%edi
       addl %eax,%esi
       movl $0x10,0x24(%ebx)                # 16 subfields
       addl %ecx,0x34(%ebx)                 # update size
       movq %xmm0,0x48(%ebx)                # add 8 * $32
       addl %ecx,%edi
       subl %edx,%eax                       # EAX = byte to move
       andl $0xFFFFFFC0,%edi                # EDI = next lower 64 byte block target
       andl $0xFFFFFFC0,%esi                # ESI =                          source
       shrl $0x06,%eax                      # EAX = 64 byte blocks to move
     0:movdqa 0x00(%esi),%xmm0
       movdqa 0x10(%esi),%xmm1
       movdqa 0x20(%esi),%xmm2
       movdqa 0x30(%esi),%xmm3
       movntdq %xmm0,0x00(%edi)
       movntdq %xmm1,0x10(%edi)
       movntdq %xmm2,0x20(%edi)
       movntdq %xmm3,0x30(%edi)
       subl $0x40,%esi
       subl $0x40,%edi
       decl %eax
       jns 0b
       sfence
       movl %ecx,%edi
       pxor %xmm0,%xmm0
       pxor %xmm1,%xmm1
       pxor %xmm2,%xmm2
       pxor %xmm3,%xmm3
       shrl $0x06,%ecx
     1:movntdq %xmm0,0x00(%esi)
       movntdq %xmm1,0x10(%esi)
       movntdq %xmm2,0x20(%esi)
       movntdq %xmm3,0x30(%esi)
       addl $0x40,%esi
       decl %ecx
       jns 1b
       sfence
       leal 0x0100(%ebx),%esi
     2:movl 0x00(%esi),%eax
       movl 0x04(%esi),%ebx
       movl 0x08(%esi),%ecx
       movl 0x0C(%esi),%edx
       testl %eax,%eax
       je 3f
       addl %edi,%eax
     3:testl %ebx,%ebx
       je 4f
       addl %edi,%ebx
     4:testl %ecx,%ecx
       je 5f
       addl %edi,%ecx
     5:testl %edx,%edx
       je 6f
       addl %edi,%edx
     6:movl %eax,0x00(%esi)
       movl %ebx,0x04(%esi)
       movl %ecx,0x08(%esi)
       movl %edx,0x0C(%esi)
       addl $0x10,%esi
       decl %ebp
       jne 2b
       movl 0x10(%esp),%ebx
       movl $0x20,%ebp
       movl $0x08,%edx
       movl 0x3C(%ebx),%ecx
       movl 0x7C(%ebx),%eax
       shll $0x02,%ecx
     7:addl %ecx,%eax
       movl %eax,0x00(%ebx, %ebp, 4)
       incl %ebp
       decl %edx
       jne 7b
       movl 0x34(%ebx),%eax
 xpXIT:movl 0x08(%esp),%edx
       movl 0x0C(%esp),%ecx
       movl 0x10(%esp),%ebx
       movl 0x14(%esp),%edi
       movl 0x18(%esp),%esi
       movl 0x1C(%esp),%ebp
       addl $0x20,%esp
       movl %eax,0x04(%ebp)                 # store size
       ret
       /*
       ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
       ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
         ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
       */
.comm _BNR,4
