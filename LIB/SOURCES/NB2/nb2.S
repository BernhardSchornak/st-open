        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �                              N E W   N O T E B O O K                               裁
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
        � data blocks are defined as:                                                        額
        �                                                                                    額
        �       entry 00      entries 01...**                                                額
        �                                                                                    額
        �  00    HWND book     page HWND                                                   額
        �  04    page count    page ID                                                     額
        �  08    res. ID       resource ID                                                 額
        �  0C     -             PFNWP page procedure                                        額
        �  10     -             page type   00040141   major, first (page 1, only)          額
        �                                    00020141   major, last                          額
        �                                    00020181   minor, last                          額
        �  14     -             entry (FFFFFF12) tab text                                   額
        �  18     -                              status line text                           額
        �  1C     -              reserved                                                    額
        �                                                                                    額
        �  Each block has a size of 32 byte. Block 00 (offset 0100) holds control data, used 額
        �  to create the book. Blocks 01...x provide information about the notebook's pages. 額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .text
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � InitBk   initialize notebook               額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �-> PAR1   HWND notebook dialog              額
        �   PAR2   MemHandle notebook field          額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �<- EAX    0000 0000   ok                    額
        �          xxxx xxxx   error                 額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
        敖陳陳陳陳陳陳陳陳陳陳陳陳�
        � page loop               額
        青陳陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩栩
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
       movl %ebp,0x08(%esp)                     # page ID
       movl %ebx,0x0C(%esp)                     #      HWND
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
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳�
       � get cover page HWND     額
       青陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
   L01:movl %esi,0x00(%esp)
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
    L02:movl 0x28(%esp),%ebp
        movl 0x2C(%esp),%esi
        movl 0x30(%esp),%edi
        movl 0x34(%esp),%ebx
        movl 0x38(%esp),%ecx
        movl 0x3C(%esp),%edx
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
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
