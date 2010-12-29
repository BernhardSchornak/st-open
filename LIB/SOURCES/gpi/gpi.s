       /*
       ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
       บ                       G P I   L O W   L E V E L   S T U F F                        บÛ
       บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
       บ                          *** (C) ST-Open 1979 - 2009 ***                           บÛ
       ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
        บ       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        บÛ
        บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
        บ You may copy and distribute this file as often as you want, but recipients are not บÛ
        บ allowed to pay anything for any copy of this file or its content. It isn't allowed บÛ
        บ to remove parts of this file or add third party content. It isn't allowed to abuse บÛ
        บ the copyrighted content or introduced techniques for commercial purposes. Whatever บÛ
        บ is derived from this file and its content must be freely available without charge. บÛ
        บ You are free to modify the content of this file if you want to. However, derivates บÛ
        บ of the content of this file or parts of it *still* are subject to the terms of the บÛ
        บ FT4FP license. Recipients neither are allowed to pay anything for the original nor บÛ
        บ for altered or derived replica.                                                    บÛ
        บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
        บ       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        บÛ
        ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
       บ STRUCTURE STBMP   field FFFFFF11   subfield 00                                     บÛ
       ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนÛ
       บ 00   ParHWND        >  HWND    parent HWND                                         บÛ
       บ 04   WinX           >  DD      window x-position                                   บÛ
       บ 08   WinY           >  DD             y-position                                   บÛ
       บ 0C   WinW           >  DD             width                                        บÛ
       บ 10   WinH           >  DD             height                                       บÛ
       บ 14   WinHAB        <   HAB            anchor block handle                          บÛ
       บ 18   WinHWND       <   HWND           window handle                                บÛ
       บ 1C   WinDC         <   HDC            device context handle                        บÛ
       บ 20   WinPS         <   HPS            presentation space handle                    บÛ
       บ 24   MemDC         <   HDC     memory device context handle                        บÛ
       บ 28   MemPS         <   HPS            presentation space handle                    บÛ
       บ 2C   hBMP          <   HBITMAP        handle                                       บÛ
       บ 30   BmpH           >  DD             width  (needed for WM_PAINT)                 บÛ
       บ 34   BmpW           >  DD             height (nedded for WM_PAINT)                 บÛ
       บ 38   ForeC          >  DD      colour foreground                                   บÛ
       บ 3C   BackC          >  DD             background                                   บÛ
       บ 40   User           >  DB[192] user   free for user defined data                   บÛ
       ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนÛ
       บ Filename          field FFFFFF11   subfield 01                                     บÛ
       ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนÛ
       บ 00   FileN          >   DB[256]                                                    บÛ
       ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
       บ DESCRIPTION                                                                        บÛ
       ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนÛ
       บ                                                                                    บÛ
       บ These functions draw, exchange and delete bitmaps. The main work is done here, but บÛ
       บ you have to pass the window coordinates (x, y, w, h), fore- and background colour, บÛ
       บ parent's HWND and filename in the structure stored in the passed entry of FLD_BMP. บÛ
       บ The first call goes to PScreate():                                                 บÛ
       บ                                                                                    บÛ
       บ PScreate()                                                                         บÛ
       บ                                                                                    บÛ
       บ This function initialises the window to get an anchor block handle, creates a win- บÛ
       บ dow (class "STbmp") and associates it with a window DC and presentation space. For บÛ
       บ drawing graphic primitives, a second device context and a memory PS are associated บÛ
       บ with the window. Next, the bitmap is copied to a memory PS (associated to a device บÛ
       บ context) and some preparations for later drawing are done. Required parameters are บÛ
       บ stored in the bitmap field. CAUTION: PScreate doesn't paint bitmaps to the screen, บÛ
       บ you have to do this yourself. To do so, you have to invalidate the bitmap. It will บÛ
       บ appear after the triggered WM_PAINT message was executed - your WM_PAINT procedure บÛ
       บ should look like this code snippet:                                                บÛ
       บ                                                                                    บÛ
       บ WinBeginPaint(stbmp.WinHWND, stbmp.WinPS, &rectl);                                 บÛ
       บ GpiBitBlt(stbmp.WinPS, stbmp.MemPS, 4, &aptl, ROP_SRCCOPY, BBO_IGNORE);            บÛ
       บ WinEndPaint(stbmp.WinPS);                                                          บÛ
       บ                                                                                    บÛ
       บ                                                                                    บÛ
       บ PSxchg()                                                                           บÛ
       บ                                                                                    บÛ
       บ Unloads the current bitmap from the memory PS and loads a new one - all neccessary บÛ
       บ steps are done by PSxchg(), you only have to write the new filename to subfield 1. บÛ
       บ                                                                                    บÛ
       บ                                                                                    บÛ
       บ PSplain()                                                                          บÛ
       บ                                                                                    บÛ
       บ Overpaints memory PS with the colour passed in stbmp.BackC. Your memory PS must be บÛ
       บ redrawn completely if you want to restore graphics primitives.                     บÛ
       บ                                                                                    บÛ
       บ                                                                                    บÛ
       บ PSkill()                                                                           บÛ
       บ                                                                                    บÛ
       บ Deletes both presentation spaces, then the device contexts and finally the window. บÛ
       บ All output parameters are set to zero, signalling invalid handles. You cannot open บÛ
       บ this window any more - call PScreate() to create a new window.                     บÛ
       บ                                                                                    บÛ
       ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
.data
       .align 2,0x00
   LC0:.ascii "STbmp"
       .byte 0, 0, 0
   LC1:.ascii "*"
       .byte 0, 0, 0
   LC2:.ascii "..\\bank\\default.bmp"
       .byte 0
.text
       /*
       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
       ณ PScreate     create bitmap window + PSs    ณÛ
       รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
       ณ-> PAR1       entry number in FLD_BMP       ณÛ
       ณ   PAR2       resource ID bitmap window     ณÛ
       รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
       ณ<- EAX        0000 0000   ok                ณÛ
       ณ              xxxx xxxx   error             ณÛ
       รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
       ณ STACK:                                     ณÛ
       ณ E0[ESP]      return address                ณÛ
       ณ C8[ESP]      preserved registers           ณÛ
       ณ 80[ESP]      LD                            ณÛ
       ณ 68[ESP]      FH                            ณÛ
       ณ 40[ESP]      POINTL[4]                     ณÛ
       ณ 38[ESP]      SIZEL                         ณÛ
       ณ 00[ESP]      "pushed" parameters           ณÛ
       ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
       .align 2,0x90
.globl _PScreate
_PScreate:
       subl $0xE0,%esp
       nop
       movl _BNR,%eax
       movl %ebp,0xDC(%esp)
       movl %esi,0xD8(%esp)
       movl 0x2034(%eax),%ebp                  # EBP  = EA FLD_BMP
       movl 0xE4(%esp),%eax                    # EAX  = [n]
       movl %edi,0xD4(%esp)
       movl %ebx,0xD0(%esp)
       shll $8,%eax                            # EAX *= 256
       movl 0x60(%ebp),%esi                    # ESI  = offset STBMP[0]
       movl 0x64(%ebp),%edi                    # EDI  = offset filename[0]
       movl %ecx,0xCC(%esp)
       addl %eax,%esi                          # ESI  = offset STBMP[n]
       addl %eax,%edi                          # EDI  = offset filename[n]
       shrl $8,%eax
       xorl %ebx,%ebx
       addl %ebp,%esi                          # ESI  = address STBMP[n]
       addl %ebp,%edi                          # EDI  = address filename[n]
       movl %edx,0xC8(%esp)
       movl %eax,0x00(%esp)                    # EAX = [n]
       call _PSkill
       movl %eax,0x00(%esp)                    # EAX = 0
       call _WinInitialize
       movl %eax,0x14(%esi)                    # store WinHAB
       testl %eax,%eax
       jne 0f
       incl %eax
       jmp L3
     0:movl 0xE8(%esp),%eax                    # EAX = resource ID
       movl 0x00(%esi),%ebp                    # EBP = parent HWND
       movl %ebx,0x30(%esp)                    # NULL
       movl %ebx,0x2C(%esp)                    # NULL
       movl %eax,0x28(%esp)                    # resource ID
       movl 0x04(%esi),%edx
       movl 0x08(%esi),%ecx
       movl 0x0C(%esi),%ebx
       movl 0x10(%esi),%eax
       movl $0x04,0x24(%esp)                   # HWND_BOTTOM
       movl %ebp,0x20(%esp)                    # ParHWND
       movl %eax,0x1C(%esp)                    # h
       movl %ebx,0x18(%esp)                    # w
       movl %ecx,0x14(%esp)                    # y
       movl %edx,0x10(%esp)                    # x
       movl $0x1000,0x0C(%esp)                 # FCF_NOBYTEALIGN
       movl $0x00,0x08(%esp)                   # NULL
       movl $LC0,0x04(%esp)                    # class STbmp
       movl %ebp,0x00(%esp)                    # ParHWND
       call _WnCre
       leal 0x38(%esp),%ebx
       movl %eax,0x18(%esi)                    # store WinHWND
       testl %eax,%eax
       jne 1f
       incl %eax
       jmp L3
     1:movl 0x18(%esi),%ecx
       movl 0x1C(%esi),%edx
       movl %eax,0x00(%esp)
       movl %ecx,0x18(%ebx)                    # sizel.cx
       movl %edx,0x1C(%ebx)                    # sizel.cy
       call _WinOpenWindowDC
       movl %eax,0x1C(%esi)                    # store WinDC
       testl %eax,%eax
       jne 2f
       incl %eax
       jmp L6
     2:movl 0x14(%esi),%ecx                    # ECX = WinHAB
       movl $0x5008,0x0C(%esp)                 # PU_flags
       movl %ebx,0x08(%esp)                    # address sizel
       movl %eax,0x04(%esp)                    # WinDC
       movl %ecx,0x00(%esp)                    # WinHAB
       call _GpiCreatePS
       movl %eax,0x20(%esi)                    # store WinPS
       xorl %edx,%edx
       testl %eax,%eax
       jne 3f
       incl %eax
       jmp L6
     3:movl 0x14(%esi),%ecx                    # ECX = WinHAB (API calls...)
       movl %edx,0x14(%esp)
       movl %edx,0x10(%esp)
       movl %edx,0x0C(%esp)
       movl $LC1,0x08(%esp)
       movl $0x08,0x04(%esp)
       movl %ecx,0x00(%esp)
       call _DevOpenDC
       movl %eax,0x24(%esi)                    # store MemDC
       testl %eax,%eax
       jne 4f
       incl %eax
       jmp L9
     4:movl 0x14(%esi),%ecx                    # ECX = WinHAB (API calls...)
       movl $0x5008,0x0C(%esp)                 # PU_flags
       movl %ebx,0x08(%esp)                    # address sizel
       movl %eax,0x04(%esp)                    # WinDC
       movl %ecx,0x00(%esp)                    # WinHAB
       call _GpiCreatePS
       movl %eax,0x24(%esi)                    # store MemPS
       testl %eax,%eax
       jne 5f
       incl %eax
       jmp L11
     5:leal 0x40(%esp),%edx                    # EDX = parameter area
       xorl %eax,%eax                          # EAX = 0
       movl $0x20,%ecx                         # ECX = dwords to clear
       nop
       nop
     6:movl %eax,0(%edx)                       # clear parameter area
       addl $4,%edx
       decl %ecx
       jne 6b
       leal 0x68(%esp),%edx                    # EDX = FH
       movl %eax,0x08(%esp)                    # entire file
       movl $0x02,0x04(%esp)                   # open if exist
       movl %edi,0x00(%esp)                    # address filename
       movl %edx,0x0C(%esp)                    # address FH
       call _Fopen
       testl %eax,%eax
       je 7f
       jmp L14
     7:leal 0x80(%esp),%edi                    # EDI = address LD
       movl 0x04(%edx),%ecx                    # ECX = filesize
       movl 0xE4(%esp),%eax                    # EAX = bitmap number
       movl $0xFFFFE100,0x08(%edi)             # field number[0]
       movl %ecx,0x04(%edi)                    # size
       movl $0x33,0x0C(%esp)                   # read, write, mem, static
       addl %eax,0x08(%edi)                    # field number[n]
       movl %edi,0x00(%esp)
       call _LDreq
       movl 0(%edi),%ebx                       # EBX = EA memory
       testl %eax,%eax
       je 8f
       jmp L16
       /*
       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
       ณ Because the BITMAPFILEHEADER is misaligned ณÛ
       ณ and the called API functions expect dword- ณÛ
       ณ aligned data, we load the bitmap at offset ณÛ
       ณ 0x0E.                                      ณÛ
       ณ                                            ณÛ
       ณ CAUTION:                                   ณÛ
       ณ                                            ณÛ
       ณ BITMAPINFOHEADER(2) = BITMAPINFO(2) starts ณÛ
       ณ at offset 0x00 rather than 0x0E now!       ณÛ
       ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
     8:movl %ebx,0x08(%edx)                    # FH.Mbase
       movl $0x0E,0x10(%edx)                   # FH.Foffs

       movl -96(%ebp),%eax
       movl %eax,-48(%ebp)
       movl $10,-40(%ebp)
       pushl $4
       leal -56(%ebp),%ecx
       movl %ecx,-188(%ebp)
       pushl %ecx
       call _Fread

       movl %eax,%ebx

       testl %ebx,%ebx
       jne L32

       pushl $0
       movl -96(%ebp),%eax
       pushl %eax
       call _Drd

       andl $3,%eax
       movl -96(%ebp),%edx
       movl %edx,-48(%ebp)
       movl %eax,-44(%ebp)
       movl $0,-40(%ebp)
       movl %eax,%esi
       addl -96(%ebp),%esi

       pushl $0
       movl -188(%ebp),%ecx
       pushl %ecx
       call _Fread

       movl %eax,%ebx

       testl %ebx,%ebx
       je L19
L32:
       movl $17,%ebx
       jmp L18

L19:
       movl -172(%ebp),%ecx
       pushl %ecx
       movl -168(%ebp),%ecx
       pushl %ecx
       pushl %esi
       call _cutBMQ

       movl %eax,%ebx
       addl $12,%esp
       cmpl $39,%ebx
       jbe L18
       pushl $14
       pushl %esi
       call _Drd

       addl $8,%esp
       cmpl $12,%eax
       jne L21
       pushl $18
       pushl %esi
       call _Wrd

       movl %eax,-176(%ebp)
       pushl $20
       pushl %esi
       call _Wrd

       movl %eax,-180(%ebp)
       movl -168(%ebp),%ecx
       pushl %ecx
       pushl $18
       pushl %esi
       call _Wwr

       movl -172(%ebp),%ecx
       pushl %ecx
       pushl $20
       pushl %esi
       call _Wwr

       jmp L33

L21:
       pushl $18
       pushl %esi
       call _Drd

       movl %eax,-176(%ebp)
       pushl $22
       pushl %esi
       call _Drd

       movl %eax,-180(%ebp)
       movl -168(%ebp),%ecx
       pushl %ecx
       pushl $18
       pushl %esi
       call _Dwr

       movl -172(%ebp),%ecx
       pushl %ecx
       pushl $22
       pushl %esi
       call _Dwr
L33:
       addl $40,%esp
       pushl $0
       pushl $0
       pushl $0
       leal 14(%esi),%eax
       pushl %eax
       movl -156(%ebp),%ecx
       pushl %ecx
       call _GpiCreateBitmap

       movl %eax,-132(%ebp)

       testl %eax,%eax
       jne L23
       movl $39,%ebx
       jmp L18

L23:
       movl -132(%ebp),%ecx
       pushl %ecx
       movl -156(%ebp),%ecx
       pushl %ecx
       call _GpiSetBitmap

       pushl $14
       pushl %esi
       call _Drd

       cmpl $12,%eax
       jne L24

       movl -176(%ebp),%ecx
       pushl %ecx
       pushl $18
       pushl %esi
       call _Wwr

       movl -180(%ebp),%ecx
       pushl %ecx
       pushl $20
       pushl %esi
       call _Wwr

       jmp L34

L24:
       movl -176(%ebp),%ecx
       pushl %ecx
       pushl $18
       pushl %esi
       call _Dwr

       movl -180(%ebp),%ecx
       pushl %ecx
       pushl $22
       pushl %esi
       call _Dwr
L34:
       addl $24,%esp
       movl $0,-32(%ebp)
       movl $0,-28(%ebp)
       movl -168(%ebp),%ecx
       movl %ecx,-24(%ebp)
       movl -172(%ebp),%ecx
       movl %ecx,-20(%ebp)
       movl $0,-16(%ebp)
       movl $0,-12(%ebp)
       movl -176(%ebp),%ecx
       movl %ecx,-8(%ebp)
       movl -180(%ebp),%ecx
       movl %ecx,-4(%ebp)
       pushl $10
       pushl %esi
       call _Drd

       pushl $2
       pushl $204
       leal -32(%ebp),%edx
       pushl %edx
       pushl $4
       leal 14(%esi),%edx
       pushl %edx
       addl %esi,%eax
       pushl %eax
       movl -156(%ebp),%ecx
       pushl %ecx
       call _GpiDrawBits

       movl %eax,%ebx

       cmpl $-1,%ebx
       jne L26
       movl $40,%ebx
       jmp L18

L26:
       xorl %ebx,%ebx
       movl -136(%ebp),%ecx
       pushl %ecx
       pushl $0
       pushl $2
       pushl $6
       movl 8(%ebp),%ecx
       pushl %ecx
       pushl %edi
       call _FDacc

       movl -140(%ebp),%ecx
       pushl %ecx
       pushl $0
       pushl $2
       pushl $5
       movl 8(%ebp),%ecx
       pushl %ecx
       pushl %edi
       call _FDacc

       movl -144(%ebp),%ecx
       pushl %ecx
       pushl $0
       pushl $2
       pushl $7
       movl 8(%ebp),%ecx
       pushl %ecx
       pushl %edi
       call _FDacc

       movl -152(%ebp),%ecx
       pushl %ecx
       pushl $0
       pushl $2
       pushl $8
       movl 8(%ebp),%ecx
       pushl %ecx
       pushl %edi
       call _FDacc

       movl -148(%ebp),%ecx
       pushl %ecx
       pushl $0
       pushl $2
       pushl $9
       movl 8(%ebp),%ecx
       pushl %ecx
       pushl %edi
       call _FDacc

       movl -156(%ebp),%ecx
       pushl %ecx
       pushl $0
       pushl $2
       pushl $10
       movl 8(%ebp),%ecx
       pushl %ecx
       pushl %edi
       call _FDacc

       movl -176(%ebp),%ecx
       pushl %ecx
       pushl $0
       pushl $2
       pushl $12
       movl 8(%ebp),%ecx
       pushl %ecx
       pushl %edi
       call _FDacc

       movl -180(%ebp),%ecx
       pushl %ecx
       pushl $0
       pushl $2
       pushl $13
       movl 8(%ebp),%ecx
       pushl %ecx
       pushl %edi
       call _FDacc

       movl -132(%ebp),%ecx
       pushl %ecx
       pushl $0
       pushl $2
       pushl $14
       movl 8(%ebp),%ecx
       pushl %ecx
       pushl %edi
       call _FDacc

L18:
       movl -80(%ebp),%eax
       pushl %eax
       call _LDfre

L16:
       leal -56(%ebp),%eax
       pushl %eax
       call _Fclose

       testl %ebx,%ebx
       jne L14

       pushl $0
       pushl $0
       pushl $1
       pushl $25
       movl 8(%ebp),%ecx
       pushl %ecx
       pushl %edi
       call _FDacc

       testl %eax,%eax
       je L28

       movl 8(%ebp),%ecx
       pushl %ecx
       call _PSplain
L28:
       xorl %eax,%eax
       jmp L31

L14:
       movl -156(%ebp),%ecx
       pushl %ecx
       call _GpiDestroyPS

L11:
       movl -148(%ebp),%ecx
       pushl %ecx
       call _DevCloseDC

L9:
       movl -152(%ebp),%ecx
       pushl %ecx
       call _GpiDestroyPS

L6:
       movl -136(%ebp),%ecx
       pushl %ecx
       call _WnDie

       leal -16(%ebx),%eax

       cmpl $1,%eax
       ja L29

       movl -160(%ebp),%ecx
       pushl %ecx
       pushl %ebx
       call _ShowMsgS
       jmp L3

L29:
       movl -184(%ebp),%ecx
       pushl %ecx
       pushl %ebx
       call _ShowMsgP
L3:
       movl %ebx,%eax
       sall $16,%eax
       addl $402653184,%eax
L31:
       leal -200(%ebp),%esp
       popl %ebx
       popl %esi
       popl %edi
       movl %ebp,%esp
       popl %ebp
       ret




       .align 2,0x90
.globl _PSxchg
_PSxchg:
       pushl %ebp
       movl %esp,%ebp
       subl $128,%esp
       pushl %edi
       pushl %esi
       pushl %ebx
       movl _BNR,%eax
       addl $0x2030,%eax
       pushl %eax
       call _GET
       movl %eax,-112(%ebp)
       pushl $0
       pushl $0
       pushl $1
       pushl $14
       movl 8(%ebp),%ecx
       pushl %ecx
       pushl %eax
       call _FDacc
       movl %eax,-100(%ebp)
       pushl $0
       pushl $0
       pushl $1
       pushl $6
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       addl $52,%esp
       pushl $0
       pushl $0
       pushl $1
       pushl $10
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       movl %eax,-104(%ebp)
       pushl $0
       pushl $0
       pushl $1
       pushl $8
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       addl $48,%esp
       pushl $0
       pushl $0
       pushl $1
       pushl $0
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       pushl $0
       pushl $0
       pushl $1
       pushl $1
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       addl $48,%esp
       pushl $0
       pushl $0
       pushl $1
       pushl $2
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       movl %eax,-116(%ebp)
       pushl $0
       pushl $0
       pushl $1
       pushl $3
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       movl %eax,-120(%ebp)
       addl $48,%esp
       pushl $0
       pushl $0
       pushl $1
       pushl $20
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       pushl $0
       pushl $0
       pushl $1
       pushl $21
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       addl $48,%esp
       pushl $0
       pushl $0
       pushl $7
       pushl $11
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDvpt
       movl %eax,-108(%ebp)
       movl 8(%ebp),%ecx
       movl %ecx,-128(%ebp)
       addl $24,%esp
       cmpl $0,-104(%ebp)
       jne L36
       xorl %eax,%eax
       jmp L57
       .align 2,0x90
L36:
       pushl $24
       leal -56(%ebp),%edi
       pushl %edi
       call _Mcl
       pushl %edi
       pushl $0
       pushl $2
       movl -108(%ebp),%ecx
       pushl %ecx
       call _Fopen
       movl %eax,%ebx
       addl $24,%esp
       testl %ebx,%ebx
       je L37
       movl $16,%ebx
       jmp L58
       .align 2,0x90
L37:
       pushl $40
       leal -96(%ebp),%ebx
       pushl %ebx
       call _Mcl
       movl 8(%ebp),%ecx
       addl $0xFFFFE100,%ecx
       movl %ecx,-88(%ebp)
       movl -52(%ebp),%eax
       addl $0x1FFF,%eax
       andl $0xFFFFF000,%eax
       movl %eax,-92(%ebp)
       movl $51,-84(%ebp)
       pushl %ebx
       call _LDreq
       addl $12,%esp
       movl -96(%ebp),%eax
       movl %eax,-48(%ebp)
       movl $10,-40(%ebp)
       pushl $4
       pushl %edi
       call _Fread
       movl %eax,%ebx
       addl $8,%esp
       testl %ebx,%ebx
       jne L59
       pushl $0
       movl -96(%ebp),%eax
       pushl %eax
       call _Drd
       andl $3,%eax
       movl -96(%ebp),%edx
       movl %edx,-48(%ebp)
       movl %eax,-44(%ebp)
       movl $0,-40(%ebp)
       movl %eax,%esi
       addl -96(%ebp),%esi
       pushl $0
       pushl %edi
       call _Fread
       movl %eax,%ebx
       addl $16,%esp
       testl %ebx,%ebx
       je L43
L59:
       movl $17,%ebx
       jmp L42
       .align 2,0x90
L43:
       movl -120(%ebp),%ecx
       pushl %ecx
       movl -116(%ebp),%ecx
       pushl %ecx
       pushl %esi
       call _cutBMQ
       movl %eax,%ebx
       addl $12,%esp
       cmpl $39,%ebx
       jbe L42
       pushl $14
       pushl %esi
       call _Drd
       addl $8,%esp
       cmpl $12,%eax
       jne L45
       pushl $18
       pushl %esi
       call _Wrd
       movl %eax,-124(%ebp)
       pushl $20
       pushl %esi
       call _Wrd
       movl %eax,%edi
       movl -116(%ebp),%ecx
       pushl %ecx
       pushl $18
       pushl %esi
       call _Wwr
       movl -120(%ebp),%ecx
       pushl %ecx
       pushl $20
       pushl %esi
       call _Wwr
       jmp L60
       .align 2,0x90
L45:
       pushl $18
       pushl %esi
       call _Drd
       movl %eax,-124(%ebp)
       pushl $22
       pushl %esi
       call _Drd
       movl %eax,%edi
       movl -116(%ebp),%ecx
       pushl %ecx
       pushl $18
       pushl %esi
       call _Dwr
       movl -120(%ebp),%ecx
       pushl %ecx
       pushl $22
       pushl %esi
       call _Dwr
L60:
       addl $40,%esp
       cmpl $0,-100(%ebp)
       je L47
       pushl $0
       movl -104(%ebp),%ecx
       pushl %ecx
       call _GpiSetBitmap
       movl -100(%ebp),%ecx
       pushl %ecx
       call _GpiDeleteBitmap
       addl $12,%esp
L47:
       pushl $0
       pushl $0
       pushl $0
       leal 14(%esi),%eax
       pushl %eax
       movl -104(%ebp),%ecx
       pushl %ecx
       call _GpiCreateBitmap
       movl %eax,-100(%ebp)
       addl $20,%esp
       testl %eax,%eax
       jne L48
       movl $39,%ebx
       jmp L42
       .align 2,0x90
L48:
       movl -100(%ebp),%ecx
       pushl %ecx
       movl -104(%ebp),%ecx
       pushl %ecx
       call _GpiSetBitmap
       pushl $14
       pushl %esi
       call _Drd
       addl $16,%esp
       cmpl $12,%eax
       jne L49
       movl -124(%ebp),%ecx
       pushl %ecx
       pushl $18
       pushl %esi
       call _Wwr
       pushl %edi
       pushl $20
       pushl %esi
       call _Wwr
       jmp L61
       .align 2,0x90
L49:
       movl -124(%ebp),%ecx
       pushl %ecx
       pushl $18
       pushl %esi
       call _Dwr
       pushl %edi
       pushl $22
       pushl %esi
       call _Dwr
L61:
       addl $24,%esp
       movl $0,-32(%ebp)
       movl $0,-28(%ebp)
       movl -116(%ebp),%ecx
       movl %ecx,-24(%ebp)
       movl -120(%ebp),%ecx
       movl %ecx,-20(%ebp)
       movl $0,-16(%ebp)
       movl $0,-12(%ebp)
       movl -124(%ebp),%ecx
       movl %ecx,-8(%ebp)
       movl %edi,-4(%ebp)
       pushl $10
       pushl %esi
       call _Drd
       pushl $2
       pushl $204
       leal -32(%ebp),%edx
       pushl %edx
       pushl $4
       leal 14(%esi),%edx
       pushl %edx
       addl %esi,%eax
       pushl %eax
       movl -104(%ebp),%ecx
       pushl %ecx
       call _GpiDrawBits
       movl %eax,%ebx
       addl $36,%esp
       cmpl $-1,%ebx
       jne L51
       movl $40,%ebx
       jmp L42
       .align 2,0x90
L51:
       xorl %ebx,%ebx
       movl -124(%ebp),%ecx
       pushl %ecx
       pushl $0
       pushl $2
       pushl $12
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       pushl %edi
       pushl $0
       pushl $2
       pushl $13
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       addl $48,%esp
       movl -100(%ebp),%ecx
       pushl %ecx
       pushl $0
       pushl $2
       pushl $14
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       addl $24,%esp
L42:
       movl -80(%ebp),%eax
       pushl %eax
       call _LDfre
       addl $4,%esp
       leal -56(%ebp),%eax
       pushl %eax
       call _Fclose
       addl $4,%esp
       testl %ebx,%ebx
       je L52
L58:
       movl %ebx,%eax
       sall $16,%eax
       leal 419430400(%eax),%ebx
       addl $419430384,%eax
       cmpl $1,%eax
       ja L53
       movl -108(%ebp),%ecx
       pushl %ecx
       pushl %ebx
       call _ShowMsgS
       jmp L55
       .align 2,0x90
L53:
       movl -128(%ebp),%ecx
       pushl %ecx
       pushl %ebx
       call _ShowMsgP
       jmp L55
       .align 2,0x90
L52:
       pushl $0
       pushl $0
       pushl $1
       pushl $25
       movl 8(%ebp),%ecx
       pushl %ecx
       movl -112(%ebp),%ecx
       pushl %ecx
       call _FDacc
       addl $24,%esp
       testl %eax,%eax
       je L55
       movl 8(%ebp),%ecx
       pushl %ecx
       call _PSplain
L55:
       movl %ebx,%eax
L57:
       leal -140(%ebp),%esp
       popl %ebx
       popl %esi
       popl %edi
       movl %ebp,%esp
       popl %ebp
       ret
       .align 2,0x90
.globl _PSplain
_PSplain:
       pushl %ebp
       movl %esp,%ebp
       subl $24,%esp
       pushl %edi
       pushl %esi
       pushl %ebx
       movl _BNR,%eax
       addl $0x2030,%eax
       pushl %eax
       call _GET
       movl %eax,%edi
       pushl $0
       pushl $0
       pushl $1
       pushl $10
       movl 8(%ebp),%edx
       pushl %edx
       pushl %edi
       call _FDacc
       movl %eax,%esi
       pushl $0
       pushl $0
       pushl $1
       pushl $21
       movl 8(%ebp),%edx
       pushl %edx
       pushl %edi
       call _FDacc
       movl %eax,-20(%ebp)
       addl $52,%esp
       pushl $0
       pushl $0
       pushl $1
       pushl $25
       movl 8(%ebp),%edx
       pushl %edx
       pushl %edi
       call _FDacc
       movl %eax,%ebx
       pushl %esi
       call _GpiQueryMix
       movl %eax,-24(%ebp)
       addl $28,%esp
       cmpl $1,%ebx
       je L64
       cmpl $2,%ebx
       je L65
       jmp L70
       .align 2,0x90
L64:
       pushl $2
       jmp L69
       .align 2,0x90
L65:
       pushl $4
L69:
       pushl %esi
       call _GpiSetMix
       addl $8,%esp
       movl -20(%ebp),%edx
       pushl %edx
       pushl %esi
       call _GpiSetColor
       movl $0,-8(%ebp)
       movl $0,-4(%ebp)
       pushl $0
       pushl $0
       pushl $1
       pushl $2
       movl 8(%ebp),%edx
       pushl %edx
       pushl %edi
       call _FDacc
       movl %eax,-16(%ebp)
       addl $32,%esp
       pushl $0
       pushl $0
       pushl $1
       pushl $3
       movl 8(%ebp),%edx
       pushl %edx
       pushl %edi
       call _FDacc
       movl %eax,-12(%ebp)
       leal -8(%ebp),%eax
       pushl %eax
       pushl %esi
       call _GpiMove
       addl $32,%esp
       pushl $0
       pushl $0
       leal -16(%ebp),%eax
       pushl %eax
       pushl $1
       pushl %esi
       call _GpiBox
       movl -24(%ebp),%edx
       pushl %edx
       pushl %esi
       call _GpiSetMix
L70:
       xorl %eax,%eax
       leal -36(%ebp),%esp
       popl %ebx
       popl %esi
       popl %edi
       movl %ebp,%esp
       popl %ebp
       ret




       .align 2,0x90
.globl _PSkill
_PSkill:
       pushl %ebp
       movl %esp,%ebp
       subl $16,%esp
       pushl %edi
       pushl %esi
       pushl %ebx
       movl 8(%ebp),%esi
       movl _BNR,%eax
       addl $0x2030,%eax
       pushl %eax
       call _GET
       movl %eax,%ebx
       pushl $0
       pushl $0
       pushl $1
       pushl $14
       pushl %esi
       pushl %ebx
       call _FDacc
       movl %eax,-4(%ebp)
       pushl $0
       pushl $0
       pushl $1
       pushl $10
       pushl %esi
       pushl %ebx
       call _FDacc
       movl %eax,-8(%ebp)
       addl $52,%esp
       pushl $0
       pushl $0
       pushl $1
       pushl $9
       pushl %esi
       pushl %ebx
       call _FDacc
       movl %eax,-16(%ebp)
       pushl $0
       pushl $0
       pushl $1
       pushl $8
       pushl %esi
       pushl %ebx
       call _FDacc
       movl %eax,-12(%ebp)
       addl $48,%esp
       pushl $0
       pushl $0
       pushl $1
       pushl $6
       pushl %esi
       pushl %ebx
       call _FDacc
       movl %eax,%edi
       addl $24,%esp
       cmpl $0,-4(%ebp)
       je L72
       movl -4(%ebp),%edx
       pushl %edx
       call _GpiDeleteBitmap
       addl $4,%esp
L72:
       cmpl $0,-8(%ebp)
       je L73
       movl -8(%ebp),%edx
       pushl %edx
       call _GpiDestroyPS
       addl $4,%esp
L73:
       cmpl $0,-16(%ebp)
       je L74
       movl -16(%ebp),%edx
       pushl %edx
       call _DevCloseDC
       addl $4,%esp
L74:
       cmpl $0,-12(%ebp)
       je L75
       movl -12(%ebp),%edx
       pushl %edx
       call _GpiDestroyPS
       addl $4,%esp
L75:
       testl %edi,%edi
       je L76
       pushl %edi
       call _WnDie
       addl $4,%esp
L76:
       pushl $0
       pushl $0
       pushl $3
       pushl $5
       pushl %esi
       pushl %ebx
       call _FDacc
       pushl $0
       pushl $0
       pushl $3
       pushl $6
       pushl %esi
       pushl %ebx
       call _FDacc
       addl $48,%esp
       pushl $0
       pushl $0
       pushl $3
       pushl $7
       pushl %esi
       pushl %ebx
       call _FDacc
       pushl $0
       pushl $0
       pushl $3
       pushl $8
       pushl %esi
       pushl %ebx
       call _FDacc
       addl $48,%esp
       pushl $0
       pushl $0
       pushl $3
       pushl $9
       pushl %esi
       pushl %ebx
       call _FDacc
       pushl $0
       pushl $0
       pushl $3
       pushl $10
       pushl %esi
       pushl %ebx
       call _FDacc
       addl $48,%esp
       pushl $0
       pushl $0
       pushl $3
       pushl $14
       pushl %esi
       pushl %ebx
       call _FDacc
       xorl %eax,%eax
       leal -28(%ebp),%esp
       popl %ebx
       popl %esi
       popl %edi
       movl %ebp,%esp
       popl %ebp
       ret


       /*
       ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
       ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
       */
.comm _BNR,4
