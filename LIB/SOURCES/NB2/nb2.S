        /*
        ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
        К                              N E W   N O T E B O O K                               Кл
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
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г This library includes STs simplified notebook. You need one control field with the Гл
        Г notebook's data for every notebook yo want to create. Load that book's field, then Гл
        Г call InitBk(). Aquired parameters are stored in the field passed as MemHandle. The Гл
        Г data blocks are defined as:                                                        Гл
        Г                                                                                    Гл
        Г       entry 00      entries 01...**                                                Гл
        Г                                                                                    Гл
        Г  00    HWND book     page HWND                                                   Гл
        Г  04    page count    page ID                                                     Гл
        Г  08    res. ID       resource ID                                                 Гл
        Г  0C     -             PFNWP page procedure                                        Гл
        Г  10     -             page type   00040141   major, first (page 1, only)          Гл
        Г                                    00020141   major, last                          Гл
        Г                                    00020181   minor, last                          Гл
        Г  14     -             entry (FFFFFF12) tab text                                   Гл
        Г  18     -                              status line text                           Гл
        Г  1C     -              reserved                                                    Гл
        Г                                                                                    Гл
        Г  Each block has a size of 32 byte. Block 00 (offset 0100) holds control data, used Гл
        Г  to create the book. Blocks 01...x provide information about the notebook's pages. Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
        */
        .text
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г InitBk   initialize notebook               Гл
        УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
        Г-> PAR1   HWND notebook dialog              Гл
        Г   PAR2   MemHandle notebook field          Гл
        УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
        Г<- EAX    0000 0000   ok                    Гл
        Г          xxxx xxxx   error                 Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллллллллллллллллл
        */
        .align 2,0x90
.globl _InitBk
_InitBk:movl 0x08(%esp),%eax                     # EAX = MemHandle
        subl $0x40,%esp
        nop
        nop
        movl 0x00(%eax),%eax                     # EAX = EA field
        movl %ebp,0x28(%esp)
        movl %esi,0x2C(%esp)
        movl %edi,0x30(%esp)
        movl %ebx,0x34(%esp)
        movl %ecx,0x38(%esp)
        movl %edx,0x3C(%esp)
        movd 0x44(%esp),%xmm4                    # XM4 = notebook HWND
        movl 0x0108(%eax),%ecx                   # ECX = resource ID
        leal 0x0100(%eax),%ebp                   # EBP = EA page 00
        movl _BNR,%esi                           # ESI = BNR
        movd %xmm4,0x00(%esp)                    # HWND
        movl %ecx,0x04(%esp)                     # ID
        call _WinId
        movl %eax,0x00(%ebp)                     # store book HWND (field)
        movl %eax,BK_HWB(%esi)                   #                 (BNR)
        testl %eax,%eax
        je L02
        movd 0x00(%ebp),%xmm5                    # XM5 = book HWND
        movl 0x04(%ebp),%edi                     # EDI = page count
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г page loop               Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФйл
          лллллллллллллллллллллллллл
        */
    L00:movl BK_MHL(%esi),%eax                   # EAX = MH language
        movd 0x28(%ebp),%xmm6                    # XM6 = resource ID
        movd 0x2C(%ebp),%xmm7                    # XM7 = PFNWP
        movl 0x30(%ebp),%ebx                     # EBX = page type
        movl 0x34(%ebp),%ebx                     # ECX = text tab
        movl 0x38(%ebp),%ebx                     # EDX =      status line
        testl %edi,%edi
        

        
        movd %xmm5,0x00(%esp)                   # book HWND


       movl $0x01,%ecx                          # ECX = page 1
       cmpl $0x00,0x18(%esp)                    # page count = 0?
       je L01

        addl $0x20,%ebp                          # EBP = next EA

       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г get tab type            Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллл
       */
   L00:movl %esi,0x00(%esp)                     # MemHandle
       movl %ecx,0x04(%esp)                     # page number
       movl $0x01,0x08(%esp)                    # subfield 01
       movl $0x01,0x0C(%esp)                    # FDA_READ
       call _FDacc
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г register page           Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллл
       */
       movl %ecx,0x04(%esp)                     # page number
       movl %eax,0x08(%esp)                     # tab type
       call _RegPg
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г store page ID           Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллл
       */
       movl %eax,%ebp                           # EBP = page ID
       movl %ecx,0x04(%esp)                     # page number
       movl $0x05,0x08(%esp)                    # subfield 05
       movl $0x02,0x0C(%esp)                    # FDA_WRITE
       movl %eax,0x14(%esp)
       call _FDacc
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г load dialog resource    Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллл
       кФФФФФФФФФФФФФФФФФП
       Г get resource ID Гл
       РФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллл
       */
       movl %ecx,0x04(%esp)                     # page number
       movl $0x02,0x08(%esp)                    # subfield 02
       movl $0x01,0x0C(%esp)                    # FDA_READ
       call _FDacc
       movl %eax,%ebx                           # EBX = resource ID
       /*
       кФФФФФФФФФФФФФФФФФП
       Г get PFNWP       Гл
       РФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллл
       */
       movl $0x03,0x08(%esp)                    # subfield 03
       call _FDacc
       /*
       кФФФФФФФФФФФФФФФФФП
       Г load resource   Гл
       РФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллл
       */
       movl %edi,0x00(%esp)                     # parent = notebook
       movl %edi,0x04(%esp)                     # owner  = notebook
       movl %eax,0x08(%esp)                     # PFNWP
       movl $0x00,0x0C(%esp)                    # (HMODULE)0
       movl %ebx,0x10(%esp)                     # resource ID page
       movl $0x00,0x14(%esp)                    # NULL
       call _LDdlg
       movl %eax,%ebx                           # EBX = HWND page
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г store page HWND         Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллл
       */
       movl %esi,0x00(%esp)
       movl %ecx,0x04(%esp)                     # page number
       movl $0x04,0x08(%esp)                    # subfield 04
       movl $0x02,0x0C(%esp)                    # FDA_WRITE
       movl %eax,0x14(%esp)                     # HWND page
       call _FDacc
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г associate page          Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллл
       */
       movl %edx,0x00(%esp)                     # HWND book
       movl $864,0x04(%esp)                     # BKM_SETPAGEWINDOWHWND
       movl %ebp,0x08(%esp)                     # page ID
       movl %ebx,0x0C(%esp)                     #      HWND
       call _SendM
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г loop logic              Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллл
       */
       incl %ecx                                # page++
       xorl %ebx,%ebx                           # EBX = 0
       decl 0x18(%esp)                          # count--
       jne L00                                  # repeat until zero
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г get cover page HWND     Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллл
       */
   L01:movl %esi,0x00(%esp)
       movl $0x01,0x04(%esp)                    # page 1
       movl $0x04,0x08(%esp)                    # subfield 04
       movl $0x01,0x0C(%esp)                    # FDA_READ
       call _FDacc
       movl %eax,%ecx                           # ECX = HWND page 1
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г get cover page ID       Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллл
       */
       movl $0x05,0x08(%esp)                    # subfield 05
       call _FDacc
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г turn to cover page      Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллл
       */
       movl %edx,0x00(%esp)                     # HWND book
       movl $0x0357,0x04(%esp)                  # BKM_TURNTOPAGE
       movl %eax,0x08(%esp)                     # ID page 1
       movl $0x00,0x0C(%esp)                    # NULL
       call _SendM
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г show cover page         Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллл
       */
       movl %ecx,0x00(%esp)                     # HWND page 1
       movl $0x01,0x04(%esp)                    # TRUE
       call _WinSh
       xorl %eax,%eax
    L02:movl 0x28(%esp),%ebp
        movl 0x2C(%esp),%esi
        movl 0x30(%esp),%edi
        movl 0x34(%esp),%ebx
        movl 0x38(%esp),%ecx
        movl 0x3C(%esp),%edx
        addl $0x40,%esp
        ret
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г RegPg    register page                     Гл
        УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
        Г-> PAR1   MemHandle notebook field          Гл
        Г   PAR2   page number                       Гл
        Г   PAR3   page type                         Гл
        УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
        Г<- EAX    0000 0000   error                 Гл
        Г          xxxx xxxx   page ID               Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
          ллллллллллллллллллллллллллллллллллллллллллллл
        */
        .align 2,0x90
.globl _RegPg
 _RegPg:subl $0x40,%esp
        nop
        nop
        movl %edx,0x28(%esp)
        movl %ecx,0x2C(%esp)
        movl %ebx,0x30(%esp)
        movl %edi,0x34(%esp)
        movl %esi,0x38(%esp)
        movl %ebp,0x3C(%esp)
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г load parameters         Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФйл
          лллллллллллллллллллллллллл
        */
        movl 0x44(%esp),%esi                     # ESI = MemHandle
        movl 0x48(%esp),%ecx                     # ECX = page number
        movl 0x4C(%esp),%edx                     # EDX = page type
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г get HWND book           Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФйл
          лллллллллллллллллллллллллл
        */
        movl %esi,0x00(%esp)                     # MemHandle
        movl $0x00,0x04(%esp)                    # book itself
        movl $0x04,0x08(%esp)                    # subfield 04
        movl $0x01,0x0C(%esp)                    # FDA_READ
        call _FDacc
        movl %eax,%edi                           # EDI = HWND book
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г set flags               Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФйл
          лллллллллллллллллллллллллл
        */
        movl $0x00020141,%ebp                    # default = MAJOR, LAST
        testl %edx,%edx                          # all are AUTOPAGESIZE, STATUSTEXTON
        jne 0f
        movl $0x00040141,%ebp                    # 0       = MAJOR, FIRST
        jmp 2f
      0:cmpl $2,%edx
        je 1f
        cmpl $4,%edx
        jne 2f
      1:movl $0x00020181,%ebp                    # 2, 4    = MINOR, LAST
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г get address status text Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФйл
          лллллллллллллллллллллллллл
        */
      2:movl %ecx,0x04(%esp)                     # page number
        movl $0x06,0x08(%esp)                    # subfield 06
        movl $0x07,0x0C(%esp)                    # FDA_ADDRESS
        call _FDacc
        movl %eax,%ecx                           # ECX = address status text
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г get address tab text    Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФйл
          лллллллллллллллллллллллллл
        */
        movl $0x07,0x08(%esp)                    # subfield 07
        call _FDacc
        movl %eax,%edx                           # EDX = address tab text
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г insert page             Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФйл
          лллллллллллллллллллллллллл
        */
        movl %edi,0x00(%esp)                     # HWND book
        movl $0x0355,0x04(%esp)                  # BKM_INSERTPAGE
        movl $0x00,0x08(%esp)                    # 0
        movl %ebp,0x0C(%esp)                     # flags
        call _SendM
        movl %eax,%esi                           # ESI = page ID
        testl %eax,%eax
        je 5f
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г set status line text    Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФйл
          лллллллллллллллллллллллллл
        */
        movl $0x0361,0x04(%esp)                  # BKM_SETSTATUSLINETEXT
        movl %esi,0x08(%esp)                     # page ID
        movl %ecx,0x0C(%esp)                     # address status line text
        call _SendM
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г set tab text            Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФйл
          лллллллллллллллллллллллллл
        */
        movl $0x0363,0x04(%esp)                  # BKM_SETTABTEXT
        movl %edx,0x0C(%esp)                     # address tab text
        call _SendM
        /*
        кФФФФФФФФФФФФФФФФФФФФФФФФФП
        Г clean up & exit         Гл
        РФФФФФФФФФФФФФФФФФФФФФФФФФйл
          лллллллллллллллллллллллллл
        */
      5:movl %esi,%eax
        movl 0x28(%esp),%edx
        movl 0x2C(%esp),%ecx
        movl 0x30(%esp),%ebx
        movl 0x34(%esp),%edi
        movl 0x38(%esp),%esi
        movl 0x3C(%esp),%ebp
        addl $0x40,%esp
        ret
        /*
        ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
        ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
          ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
        */
