       /*
       浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
       �                              S T  -  N O T E B O O K                               裁
       債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
       �                          *** (C) ST-Open 1979 - 2009 ***                           裁
       藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        裁
        債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
        � You may copy and distribute this file as often as you want, but recipients are not 裁
        � allowed to pay anything for any copy of this file or its content. It isn't allowed 裁
        � to remove parts of this file or add third party content. It isn't allowed to abuse 裁
        � the copyrighted content or introduced techniques for commercial purposes. Whatever 裁
        � is derived from this file and its content must be freely available without charge. 裁
        � You are free to modify the content of this file if you want to. However, derivates 裁
        � of the content of this file or parts of it *still* are subject to the terms of the 裁
        � FT4FP license. Recipients neither are allowed to pay anything for the original nor 裁
        � for altered or derived replica.                                                    裁
        債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
        �       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        裁
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
       � This library includes STs simplified notebook. You need one control field with the 額
       � notebook's data for every notebook yo want to create. Load that book's field, then 額
       � call InitBk(). Aquired parameters are stored in the field passed as MemHandle. The 額
       � subfields are defined as:                                                          額
       �                                                                                    額
       � SUB   Contents   Description    (  input    output )                             額
       �                                                                                    額
       �   0   reserved   reserved for system use                                           額
       �  1   TabType    ( entry 0 -> amount major + minor pages )                         額
       �  2   ResID      resource ID                                                       額
       �  3   PFNWP      address of the page dialog process ( entry point for call )       額
       �  4   HWND       window handle ( entry 0 -> book, entries above 0 -> pages )       額
       �  5   PgID       page ID from BkInit()                                             額
       �  6   StatTxt    text string for status line                                       額
       �  7   TabText    text string for tabs                                              額
       �                                                                                    額
       � To create this field just start DatTools and create a field with these data types: 額
       �                                                                                    額
       �                             DD DD DD DD DD DD $32 $32                              額
       �                                                                                    額
       � Add one to the needed amount of entries - entry number 0 is reserved for the note- 額
       � book itself (page count starts with one, not zero!). Enter the data for all pages, 額
       � including tab and status line texts.                                               額
       �                                                                                    額
       � CAUTION: Do not encrypt status line or tab texts! If you do, tabs and status lines 額
       �          are filled with encrypted strings. SetPg() uses FDA_ADDRESS, not FDA_READ 額
       �          to avoid multiple (and hence superfluous) copy actions.                   額
       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
       */
       .text
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
       � InitBk   initialize notebook               額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
       �-> PAR1   HWND notebook control             額
       �   PAR2   MemHandle notebook field          額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
       �<- EAX    0000 0000   ok                    額
       �          xxxx xxxx   error                 額
       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � get tab type            額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
   L00:movl %esi,0x00(%esp)                     # MemHandle
       movl %ecx,0x04(%esp)                     # page number
       movl $0x01,0x08(%esp)                    # subfield 01
       movl $0x01,0x0C(%esp)                    # FDA_READ
       call _FDacc
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � register page           額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       movl %ecx,0x04(%esp)                     # page number
       movl %eax,0x08(%esp)                     # tab type
       call _RegPg
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � store page ID           額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       movl %eax,%ebp                           # EBP = page ID
       movl %ecx,0x04(%esp)                     # page number
       movl $0x05,0x08(%esp)                    # subfield 05
       movl $0x02,0x0C(%esp)                    # FDA_WRITE
       movl %eax,0x14(%esp)
       call _FDacc
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � load dialog resource    額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       敖陳陳陳陳陳陳陳陳�
       � get resource ID 額
       青陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩
       */
       movl %ecx,0x04(%esp)                     # page number
       movl $0x02,0x08(%esp)                    # subfield 02
       movl $0x01,0x0C(%esp)                    # FDA_READ
       call _FDacc
       movl %eax,%ebx                           # EBX = resource ID
       /*
       敖陳陳陳陳陳陳陳陳�
       � get PFNWP       額
       青陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩
       */
       movl $0x03,0x08(%esp)                    # subfield 03
       call _FDacc
       /*
       敖陳陳陳陳陳陳陳陳�
       � load resource   額
       青陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩
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
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � store page HWND         額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       movl %esi,0x00(%esp)
       movl %ecx,0x04(%esp)                     # page number
       movl $0x04,0x08(%esp)                    # subfield 04
       movl $0x02,0x0C(%esp)                    # FDA_WRITE
       movl %eax,0x14(%esp)                     # HWND page
       call _FDacc
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � associate page          額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       movl %edx,0x00(%esp)                     # HWND book
       movl $864,0x04(%esp)                     # BKM_SETPAGEWINDOWHWND
       movl %ebp,0x08(%esp)                     #      ID
       movl %ebx,0x0C(%esp)                     # page HWND
       call _SendM
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � loop logic              額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       incl %ecx                                # page++
       xorl %ebx,%ebx                           # EBX = 0
       decl 0x18(%esp)                          # count--
       jne L00                                  # repeat until zero
   L01:/*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � get cover page HWND     額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       movl %esi,0x00(%esp)
       movl $0x01,0x04(%esp)                    # page 1
       movl $0x04,0x08(%esp)                    # subfield 04
       movl $0x01,0x0C(%esp)                    # FDA_READ
       call _FDacc
       movl %eax,%ecx                           # ECX = HWND page 1
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � get cover page ID       額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       movl $0x05,0x08(%esp)                    # subfield 05
       call _FDacc
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � turn to cover page      額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       movl %edx,0x00(%esp)                     # HWND book
       movl $0x0357,0x04(%esp)                  # BKM_TURNTOPAGE
       movl %eax,0x08(%esp)                     # ID page 1
       movl $0x00,0x0C(%esp)                    # NULL
       call _SendM
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � show cover page         額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
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
       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
       � RegPg    register page                     額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
       �-> PAR1   MemHandle notebook field          額
       �   PAR2   page number                       額
       �   PAR3   page type                         額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
       �<- EAX    0000 0000   error                 額
       �          xxxx xxxx   page ID               額
       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � load parameters         額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       movl 0x44(%esp),%esi                     # ESI = MemHandle
       movl 0x48(%esp),%ecx                     # ECX = page number
       movl 0x4C(%esp),%edx                     # EDX = page type
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � get HWND book           額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       movl %esi,0x00(%esp)                     # MemHandle
       movl $0x00,0x04(%esp)                    # book itself
       movl $0x04,0x08(%esp)                    # subfield 04
       movl $0x01,0x0C(%esp)                    # FDA_READ
       call _FDacc
       movl %eax,%edi                           # EDI = HWND book
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � set flags               額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
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
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � get address status text 額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
     2:movl %ecx,0x04(%esp)                     # page number
       movl $0x06,0x08(%esp)                    # subfield 06
       movl $0x07,0x0C(%esp)                    # FDA_ADDRESS
       call _FDacc
       movl %eax,%ecx                           # ECX = address status text
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � get address tab text    額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       movl $0x07,0x08(%esp)                    # subfield 07
       call _FDacc
       movl %eax,%edx                           # EDX = address tab text
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � insert page             額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
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
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � set status line text    額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       movl $0x0361,0x04(%esp)                  # BKM_SETSTATUSLINETEXT
       movl %esi,0x08(%esp)                     # page ID
       movl %ecx,0x0C(%esp)                     # address status line text
       call _SendM
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � set tab text            額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       movl $0x0363,0x04(%esp)                  # BKM_SETTABTEXT
       movl %edx,0x0C(%esp)                     # address tab text
       call _SendM
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � clean up & exit         額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
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
       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
       � SetTab   set tab dimensions                額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
       �-> PAR1   MemHandle notebook field          額
       �   PAR2   HWND book                         額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
       �<- EAX    0000 0000   ok                    額
       �          xxxx xxxx   error                 額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
       � STACK:                                     額
       �                                            額
       � 0174[ESP]   MinL                           額
       � 0170[ESP]   MaxL                           額
       � 0080[ESP]   FONTMETRICS                    額
       � 0050[ESP]   string buffer (48 byte max.)   額
       � 004C[ESP]   type flag                      額
       � 0040[ESP]   POINTL: TXTBOX_CONCAT          額
       � 0038[ESP]           TXTBOX_BOTTOMRIGHT     額
       � 0030[ESP]           TXTBOX_TOPRIGHT        額
       � 0028[ESP]           TXTBOX_BOTTOMLEFT      額
       � 0020[ESP]           TXTBOX_TOPLEFT         額
       � 0000[ESP]   "PUSH" area                    額
       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
       浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
       藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
       */
