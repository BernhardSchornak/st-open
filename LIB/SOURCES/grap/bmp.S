        /*
        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
        º                          B I T M A P   F U N C T I O N S                           ºÛ
        ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
        º                          *** (C) ST-Open 1979 - 2009 ***                           ºÛ
        ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
        º       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        ºÛ
        ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
        º You may copy and distribute this file as often as you want, but recipients are not ºÛ
        º allowed to pay anything for any copy of this file or its content. It isn't allowed ºÛ
        º to remove parts of this file or add third party content. It isn't allowed to abuse ºÛ
        º the copyrighted content or introduced techniques for commercial purposes. Whatever ºÛ
        º is derived from this file and its content must be freely available without charge. ºÛ
        º You are free to modify the content of this file if you want to. However, derivates ºÛ
        º of the content of this file or parts of it *still* are subject to the terms of the ºÛ
        º FT4FP license. Recipients neither are allowed to pay anything for the original nor ºÛ
        º for altered or derived replica.                                                    ºÛ
        ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
        º       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        ºÛ
        ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ BITMAP STRUCTURE                                               size: 256 byte      ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³ 00  > bitmap w     ³ 04  > bitmap h     ³ 08 <> EA/scaled w  ³ 0C <  scaled h      ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³ 10  > window x     ³ 14  > window y     ³ 18  > window w     ³ 1C  > window h      ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³ 20 <  RECTL  x     ³ 24 <  RECTL  y     ³ 28 <  RECTL  cx    ³ 2C <  RECTL  cy     ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³ 30 <  HWND window  ³ 34 <  HPS          ³ 38 <  HBITMAP      ³ 3C <  flags         ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³ 40   > filename (192 byte)                                                         ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
        º  >       These parameters are required as input for BMPcre().                      ºÛ
        º <>       For BMPcre(), 08 must be set to the address where the bitmap is stored.   ºÛ
        º <        These parameters are set automatically if required. Do not alter them!    ºÛ
        º                                                                                    ºÛ
        º FLAGS    00000001   scale                                                          ºÛ
        º          00000002   center                                                         ºÛ
        º                                                                                    ºÛ
        º SCALE:   Scale the passed bitmap to fit into the passed window rectangle, but keep ºÛ
        º          its width to height ratio intact. Parameters are taken from the structure ºÛ
        º          address passed with PAR1. Width and height are scaled to the current win- ºÛ
        º          dow dimensions. The results are stored as scaled w and h (08 and 0C).     ºÛ
        º                                                                                    ºÛ
        º CENTER:  Center the bitmap within the current window dimensions. Not used areas of ºÛ
        º          the bitmap window are painted black.                                      ºÛ
        ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        .include "..\\..\\..\\include\\yasm.h"
        .data
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    LC00:.ascii "STbmp"
         .byte 0x00, 0x00, 0x00
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        .text
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ BMPcre   load bitmap into presentation space  ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³-> PAR1   structure EA                         ³Û
        ³   PAR2   bitmap    MH                         ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³<- EAX    0000 0000   always zero              ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
       .align 2,0x90
.globl _BMPcre
_BMPcre:subl $0x60,%esp
        nop
        nop
        movl 0x64(%esp),%eax                    # EAX = EA structure
        movl %ebp,0x48(%esp)
        movl %esi,0x4C(%esp)
        movl %edi,0x50(%esp)
        movl %ebx,0x54(%esp)
        movl %ecx,0x58(%esp)
        movl %edx,0x5C(%esp)
        movl _BNR,%esi                          # ESI = BNR
        movl %eax,%ebx
        movl %eax,%ebp                          # EBP = EA structure
        andl $0xFFFF,%ebx                       # EBX = ID
        movl HW_PGM(%esi),%edi                  # EDI = HWND
        shrl $0x08,%ebx
        cmpl $0x00,0x3C(%ebp)                   # transform?
        je 0f
        movl %ebp,0x00(%esp)
        call _BMPtrf
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ create window           ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
      0:movdqa 0x10(%ebp),%xmm0                 # XM0 = XYWH
        addl $0x10BF,%ebx                       # EBX = ID
        movl %edi,0x00(%esp)                    # HWND parent
        movl $LC00,0x04(%esp)                   # class
        movl $0x00,0x08(%esp)                   # no name
        movl $0x1000,0x0C(%esp)                 # FCF_NOBYTEALIGN
        movdqu %xmm0,0x10(%esp)                 # XYWH
        movl %edi,0x20(%esp)                    # HWND owner
        movl $0x04,0x24(%esp)                   # HWND_BOTTOM
        movl %ebx,0x28(%esp)                    # resource ID
        movl $0x00,0x2C(%esp)                   # NULL
        movl $0x00,0x30(%esp)                   # NULL
        call _WnCre
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ get device context      ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        testl %eax,%eax                         # error?
        je XIT
        movl 0x68(%esp),%edi                    # EDI = MH bitmap mem
        movl _hab,%esi                          # ESI = HAB
        pxor %xmm3,%xmm3                        # XM3 = 0
        movl %eax,0x30(%ebp)                    # store HWND bitmap window
        movl %eax,0x00(%esp)                    # HWND bitmap window
        call _WinOpenWindowDC
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ create present. space   ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        movl 0x00(%edi),%ebx                    # EBX = EA bitmap mem
        movdqu %xmm3,0x34(%esp)                 # SIZEL
        leal 0x34(%esp),%edx                    # EDX = address (0, 0)
        movl %esi,0x00(%esp)                    # HAB
        movl %eax,0x04(%esp)                    # HDC
        movl %edx,0x08(%esp)                    # address (0, 0)
        movl $0x5008,0x0C(%esp)                 # PU_PELS, GPIF_DEFAULT, GPIT_MICRO, GPIA_ASSOC
        call _GpiCreatePS
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ create bitmap           ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        leal 0xFFFFFFFE(%ebx),%edx              # EDX = file begin
        leal 0x0C(%ebx),%ecx                    # ECX = BITMAPINFOHEADER
        addl 0x08(%ebx),%edx                    # EDX = PELDATA
        movl %eax,%ebx                          # EBX = HPS
        movl %eax,0x00(%esp)                    # HPS
        movl %ecx,0x04(%esp)                    # BITMAPINFOHEADER
        movl $0x04,0x08(%esp)                   # CBM_INIT
        movl %edx,0x0C(%esp)                    # PELDATA
        movl %ecx,0x10(%esp)                    # BITMAPINFOHEADER
        call _GpiCreateBitmap
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ free mem                ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        movl %eax,%esi                          # ESI = HBITMAP
        movl %ebx,0x34(%ebp)                    # HPS
        movl %eax,0x38(%ebp)                    # HBITMAP
        movl %edi,0x00(%esp)                    # MH
        call _LDfre
        movl %ebp,0x00(%esp)
        call _BMPtrf
        leal 0x20(%ebp),%ecx                    # ECX = RECTL
        movl %ebx,0x00(%esp)                    # HPS paint
        movl %esi,0x04(%esp)                    # HBITMAP
        movl $0x00,0x08(%esp)                   # entire bitmap
        movl %ecx,0x0C(%esp)                    # RECTL
        movl $0x00,0x10(%esp)                   # NULL
        movl $0x00,0x14(%esp)                   # NULL
        movl $0x04,0x18(%esp)                   # DBM_NORMAL, DBM_STRETCH
        call _WinDrawBitmap
        jmp XIT
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ BMPpnt   process WM_PAINT message             ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³-> PAR1   EA structure                         ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³<- EAX    0000 0000   always zero              ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        .align 2,0x90
.globl _BMPpnt
_BMPpnt:subl $0x60,%esp
        nop
        nop
        movl 0x64(%esp),%eax
        movl %ebp,0x48(%esp)
        movl %esi,0x4C(%esp)
        movl %edi,0x50(%esp)
        movl %ebx,0x54(%esp)
        movl %ecx,0x58(%esp)
        movl %edx,0x5C(%esp)
        leal 0x20(%eax),%ebx                    # EBX = RECTL
        movl 0x30(%eax),%ecx                    # ECX = HWND
        movl 0x34(%eax),%edi                    # EDI = HPS
        movl 0x38(%eax),%esi                    # ESI = HBITMAP
        movl %eax,%ebp                          # EBP = EA struc
        movl 0x30(%ebp),%edx                    # EDX = HWND
        leal 0x20(%esp),%ecx                    # ECX = RECTL dummy
        leal 0x20(%ebp),%ebx                    # EBX = RECTL
        movl %edx,0x00(%esp)                    # HWND bitmap
        movl %edi,0x04(%esp)                    # HPS
        movl %ecx,0x08(%esp)                    # RECTL dummy
        call _WinBeginPaint
        movl %edi,0x00(%esp)                    # HPS paint
        movl %esi,0x04(%esp)                    # HBITMAP
        movl $0x00,0x08(%esp)                   # entire bitmap
        movl %ebx,0x0C(%esp)                    # RECTL
        movl $0x00,0x10(%esp)                   # NULL
        movl $0x00,0x14(%esp)                   # NULL
        movl $0x04,0x18(%esp)                   # DBM_NORMAL, DBM_STRETCH
        call _WinDrawBitmap
        call _WinEndPaint
        jmp XIT
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ BMPdes   destroy bitmap window                ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³-> PAR1   EA structure                         ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³<- EAX    0000 0000   always zero              ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
       .align 2,0x90
.globl _BMPdes
_BMPdes:subl $0x60,%esp
        nop
        nop
        movl 0x64(%esp),%eax
        movl %ebp,0x48(%esp)
        movl %esi,0x4C(%esp)
        movl %edi,0x50(%esp)
        movl %ebx,0x54(%esp)
        movl %ecx,0x58(%esp)
        movl %edx,0x5C(%esp)
        movl 0x30(%eax),%edi                    # EDI = HWND
        movl 0x38(%eax),%esi                    # ESI = HPS
        movl 0x3C(%eax),%ebp                    # EBP = HBITMAP
        pxor %xmm4,%xmm4
        movl %eax,%ebx                          # EBX = EA structure
        testl %ebp,%ebp
        je 0f
        movl %ebp,0x00(%esp)                    # HBITMAP
        call _GpiDeleteBitmap
      0:testl %esi,%esi
        je 1f
        movl %esi,0x00(%esp)                    # HPS
        call _GpiDestroyPS
      1:testl %edi,%edi
        je 2f
        movl %edi,0x00(%esp)                    # HWND
        call _WinDestroyWindow
      2:/*
        movdqa %xmm4,0x30(%ebx)                 # clear parameters
        */
        jmp XIT
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ BMPtrf   transformations (scale and center)   ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³-> PAR1   EA structure                         ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³<- EAX    0000 0000   always zero              ³Û
        ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
        ³ Depending on the flags @ 0x3C[EA], the bitmap ³Û
        ³ is scaled (0x**1) and centered (0x**2) within ³Û
        ³ the given boundaries. The RECTL is set to the ³Û
        ³ calculated coordinates while centering, so it ³Û
        ³ is a good idea to set -both flags- if you let ³Û
        ³ BMPcre() scale your bitmap.                   ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
       .align 2,0x90
.globl _BMPtrf
_BMPtrf:subl $0x60,%esp
        nop
        nop
        movl 0x64(%esp),%eax
        movl %ebp,0x48(%esp)
        movl %esi,0x4C(%esp)
        movl %edi,0x50(%esp)
        movl %ebx,0x54(%esp)
        movl %ecx,0x58(%esp)
        movl %edx,0x5C(%esp)
        movl %eax,%ebp
        movq 0x00(%eax),%xmm4                   # get wh
        movl 0x00(%eax),%eax                    # EAX = Bw
        movl 0x04(%ebp),%ebx                    # EBX = Bh
        movl 0x18(%ebp),%ecx                    # ECX = Ww
        movl 0x1C(%ebp),%edx                    # EDX = Wh
        movq %xmm4,0x08(%ebp)                   # store as scaled
        testb $0x01,0x3C(%ebp)                  # scale?
        je 2f
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ scale bitmap to RECTL   ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        movl %ecx,%edi                          # EDI = Ww
        movl %edx,%esi                          # ESI = Wh
        cvtsi2sd 0x00(%ebp),%xmm0               # XM0 = Bw
        cvtsi2sd 0x04(%ebp),%xmm1               # XM1 = Bh
        cvtsi2sd 0x18(%ebp),%xmm2               # XM2 = Ww
        cvtsi2sd 0x1C(%ebp),%xmm3               # XM3 = Wh
        subl %eax,%edi                          # ECX = Ww - Bw
        subl %ebx,%esi                          # EDX = Hh - Bh
        divsd %xmm0,%xmm2                       # XM2 = ratio Ww / Bw
        divsd %xmm1,%xmm3                       # XM3 = ratio Wh / Bh
        cmpl %edi,%esi                          # (Ww - Bw) > (Wh - Bh)?
        jg 0f
        mulsd %xmm3,%xmm0                       # scale to height
        mulsd %xmm3,%xmm1
        jmp 1f
      0:mulsd %xmm2,%xmm0                       # scale to width
        mulsd %xmm2,%xmm1
      1:cvttsd2si %xmm0,%eax                    # GOD SAVE LETNi...
        cvttsd2si %xmm1,%ebx
        movl %eax,0x08(%ebp)                    # store bitmap w
        movl %ebx,0x0C(%ebp)                    #              h
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ center bitmap           ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
      2:testb $0x02,0x3C(%ebp)                  # center?
        je XIT
        xorl %edi,%edi                          # EDI = 0
        subl %eax,%ecx                          # dx = Ww - Bw
        cmovs %edi,%ecx
        subl %ebx,%edx                          # dy = Wh - Bh
        cmovs %edi,%edx
        shrl %ecx                               # fx = dx / 2
        shrl %edx                               # fy = dy / 2
        movl %ecx,0x10(%ebp)                    # x + fx
        movl %edx,0x14(%ebp)                    # y + fy
        movl %eax,0x18(%ebp)                    # w
        movl %ebx,0x1C(%ebp)                    # h
        addl %ecx,%eax                          # cx = fx + Bw
        addl %edx,%ebx                          # cy = fy + Bh
        movl %ecx,0x20(%ebp)                    # x + fx
        movl %edx,0x24(%ebp)                    # y + fy
        movl %eax,0x28(%ebp)                    # w - dx
        movl %ebx,0x2C(%ebp)                    # h - dy
        /*
        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
        ³ common exit             ³Û
        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
    XIT:movl 0x48(%esp),%ebp
        movl 0x4C(%esp),%esi
        movl 0x50(%esp),%edi
        movl 0x54(%esp),%ebx
        movl 0x58(%esp),%ecx
        movl 0x5C(%esp),%edx
        addl $0x60,%esp
        xorl %eax,%eax
        ret
        /*
        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
        ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
.comm _hab,4
.comm _BNR,4
