       /*
       ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
       К                              S T  -  N O T E B O O K                               Кл
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
       Г subfields are defined as:                                                          Гл
       Г                                                                                    Гл
       Г SUB   Contents   Description    (  input    output )                             Гл
       Г                                                                                    Гл
       Г   0   reserved   reserved for system use                                           Гл
       Г  1   TabType    ( entry 0 -> amount major + minor pages )                         Гл
       Г  2   ResID      resource ID                                                       Гл
       Г  3   PFNWP      address of the page dialog process ( entry point for call )       Гл
       Г  4   HWND       window handle ( entry 0 -> book, entries above 0 -> pages )       Гл
       Г  5   PgID       page ID from BkInit()                                             Гл
       Г  6   StatTxt    text string for status line                                       Гл
       Г  7   TabText    text string for tabs                                              Гл
       Г                                                                                    Гл
       Г To create this field just start DatTools and create a field with these data types: Гл
       Г                                                                                    Гл
       Г                             DD DD DD DD DD DD $32 $32                              Гл
       Г                                                                                    Гл
       Г Add one to the needed amount of entries - entry number 0 is reserved for the note- Гл
       Г book itself (page count starts with one, not zero!). Enter the data for all pages, Гл
       Г including tab and status line texts.                                               Гл
       Г                                                                                    Гл
       Г CAUTION: Do not encrypt status line or tab texts! If you do, tabs and status lines Гл
       Г          are filled with encrypted strings. SetPg() uses FDA_ADDRESS, not FDA_READ Гл
       Г          to avoid multiple (and hence superfluous) copy actions.                   Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
       */
       .text
       /*
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г InitBk   initialize notebook               Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> PAR1   HWND notebook control             Гл
       Г   PAR2   MemHandle notebook field          Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX    0000 0000   ok                    Гл
       Г          xxxx xxxx   error                 Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 2,0x90
.globl _InitBk
_InitBk:
       subl $0x40,%esp
       nop
       nop
       movl %edx,0x28(%esp)
       movl %ecx,0x2C(%esp)
       movl %ebx,0x30(%esp)
       movl %edi,0x34(%esp)
       movl %esi,0x38(%esp)
       movl %ebp,0x3C(%esp)
       movl 0x48(%esp),%esi                     # ESI = MemHandle
       movl 0x44(%esp),%edi                     # EDI = notebook HWND
       movl %esi,0x00(%esp)                     # MemHandle
       movl $0x00,0x04(%esp)                    # entry    = 0
       movl $0x01,0x08(%esp)                    # subfield = 1
       movl $0x01,0x0C(%esp)                    # FDA_READ
       call _FDacc
       movl $0x02,0x08(%esp)                    # subfield = 2
       movl %eax,0x18(%esp)                     # 18[ESP] = page count
       call _FDacc
       movl %edi,0x00(%esp)
       movl %eax,0x04(%esp)
       call _WinId
       movl %eax,%edx                           # EDX = HWND book
       testl %eax,%eax
       je L02
       movl %esi,0x00(%esp)                     # MemHandle
       movl $0x00,0x04(%esp)                    # entry    00
       movl $0x04,0x08(%esp)                    # subfield 04
       movl $0x02,0x0C(%esp)                    # FDA_WRITE
       movl %edx,0x14(%esp)                     # HWND book
       call _FDacc
       movl %edx,0x04(%esp)
       call _SetTab                             # set tab size
       testl %eax,%eax
       jne L02
       movl $0x01,%ecx                          # ECX = page 1
       cmpl $0x00,0x18(%esp)                    # page count = 0?
       je L01
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
       movl %ebp,0x08(%esp)                     #      ID
       movl %ebx,0x0C(%esp)                     # page HWND
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
   L01:/*
       кФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г get cover page HWND     Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФйл
         лллллллллллллллллллллллллл
       */
       movl %esi,0x00(%esp)
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
   L02:movl 0x28(%esp),%edx
       movl 0x2C(%esp),%ecx
       movl 0x30(%esp),%ebx
       movl 0x34(%esp),%edi
       movl 0x38(%esp),%esi
       movl 0x3C(%esp),%ebp
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
       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
       Г SetTab   set tab dimensions                Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г-> PAR1   MemHandle notebook field          Гл
       Г   PAR2   HWND book                         Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г<- EAX    0000 0000   ok                    Гл
       Г          xxxx xxxx   error                 Гл
       УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
       Г STACK:                                     Гл
       Г                                            Гл
       Г 0174[ESP]   MinL                           Гл
       Г 0170[ESP]   MaxL                           Гл
       Г 0080[ESP]   FONTMETRICS                    Гл
       Г 0050[ESP]   string buffer (48 byte max.)   Гл
       Г 004C[ESP]   type flag                      Гл
       Г 0040[ESP]   POINTL: TXTBOX_CONCAT          Гл
       Г 0038[ESP]           TXTBOX_BOTTOMRIGHT     Гл
       Г 0030[ESP]           TXTBOX_TOPRIGHT        Гл
       Г 0028[ESP]           TXTBOX_BOTTOMLEFT      Гл
       Г 0020[ESP]           TXTBOX_TOPLEFT         Гл
       Г 0000[ESP]   "PUSH" area                    Гл
       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
         ллллллллллллллллллллллллллллллллллллллллллллл
       */
       .align 2,0x90
.globl _SetTab
_SetTab:
       subl $0x0190,%esp
       nop
       nop
       movl 0x0198(%esp),%eax                   # EAX = HWND book
       movl %edx,0x0178(%esp)
       movl %ecx,0x017C(%esp)
       movl %ebx,0x0180(%esp)
       movl %edi,0x0184(%esp)
       movl %esi,0x0188(%esp)
       movl %ebp,0x018C(%esp)
       movl %eax,0x00(%esp)
       call _WinGetPS
       testl %eax,%eax
       jne 0f
       incl %eax
       jmp L05
     0:movl 0x0194(%esp),%ebx                   # EBX = MemHandle
       movl %eax,%ebp                           # EBP = HPS book
       leal 0x20(%esp),%edx                     # EDX = address stack
       leal 0x50(%esp),%edi                     # EDI = address string
       leal 0x80(%esp),%esi                     # ESI = address FONTMETRICS
       movl %ebx,0x00(%esp)
       movl $0x00,0x04(%esp)                    # entry    00
       movl $0x01,0x08(%esp)                    # subfield 01
       movl $0x01,0x0C(%esp)                    # FDA_READ
       call _FDacc
       pxor %xmm0,%xmm0
       movl %eax,%ebx                           # EBX = page count
       movl $0x15,%ecx
     1:movdqu %xmm0,0x00(%edx)
       addl $0x10,%edx
       decl %ecx
       jne 1b
       leal 0x20(%esp),%edx                     # EDX = address stack
       movq %xmm0,0x0170(%esp)
       movl %ebp,0x00(%esp)                     # HPS book
       movl $0xE4,0x04(%esp)                    # FONTMETRICS size
       movl %esi,0x08(%esp)                     #             address
       call _GpiQueryFontMetrics
       movl 0x0194(%esp),%ecx                   # ECX = MemHandle
       testl %eax,%eax
       je 2f
       addl $0x0C,0x70(%esi)
       jmp 3f
     2:movl $0x1C,0x70(%esi)
     3:testl %ebx,%ebx
       je L04
   L03:movl %ecx,0x00(%esp)                     # MH
       movl %ebx,0x04(%esp)                     # page number
       movl $0x07,0x08(%esp)                    # subfield 07
       movl $0x01,0x0C(%esp)                    # FDA_READ
       movl %edi,0x10(%esp)                     # address string
       call _FDacc
       movl $0x01,0x08(%esp)                    # subfield 01
       call _FDacc
       movl $0x01,0x4C(%esp)                    # 4C[ESP] = type flag
       testl %eax,%eax                          # MAJOR TAB
       je 4f
       testl $0x01,%eax
       jne 4f
       incl 0x4C(%esp)                          # MINOR TAB
     4:xorl %eax,%eax                           # EAX = char count
       leal 0x20(%esp),%ecx                     # ECX = address POINTL array
     5:cmpb $0x00,0x00(%edi, %eax, 1)
       je 6f
       incl %eax                                # char count++
       jmp 5b
     6:movl %ebp,0x00(%esp)                     # HPS
       movl %eax,0x04(%esp)                     # length  string
       movl %edi,0x08(%esp)                     # address string
       movl $0x05,0x0C(%esp)                    # array count
       movl %ecx,0x10(%esp)                     # address POINTL array
       call _GpiQueryTextBox
       movl 0x40(%esp),%eax                     # EAX = pt[TXTBOX_CONCAT].x
       cmpl $0x01,0x4C(%esp)
       jne 7f
       cmpl 0x0170(%esp),%eax                   # MajL
       jbe 8f
       movl %eax,0x0170(%esp)
       jmp 8f
     7:cmpl 0x0174(%esp),%eax                   # MinL
       jbe 8f
       movl %eax,0x0174(%esp)
     8:decl %ebx
       jne L03
   L04:movl %ebp,0x00(%esp)                     # HPS
       call _WinReleasePS
       movl 0x0170(%esp),%ecx                   # ECX = MajL
       movl 0x0174(%esp),%edx                   # EDX = MinL
       movl 0x0070(%esi),%eax                   # EAX = lMaxBaseLineExt
       addl $0x0F,%ecx                          # MajL += 15
       addl $0x0F,%edx                          # MinL += 15
       shll $0x10,%eax
       xorl %ebx,%ebx                           # EBX = 0
       movl 0x0198(%esp),%ebp                   # EBP = HWND book
       addl %eax,%ecx
       addl %eax,%edx
       movl %ebp,0x00(%esp)                     # set major tab size
       movl $0x035E,0x04(%esp)
       movl %ecx,0x08(%esp)
       movl $0x01,0x0C(%esp)
       call _SendM          
       movl %edx,0x08(%esp)                     # set minor tab size
       movl $0x02,0x0C(%esp)
       call _SendM
       movl $0x00140014,0x08(%esp)              # set button size
       movl $0x0100,0x0C(%esp)
       call _SendM
       xorl %eax,%eax
   L05:movl 0x018C(%esp),%ebp
       movl 0x0188(%esp),%esi
       movl 0x0184(%esp),%edi
       movl 0x0180(%esp),%ebx
       movl 0x017C(%esp),%ecx
       movl 0x0178(%esp),%edx
       addl $0x0190,%esp
       ret
       /*
       ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
       ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
         ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
       */
