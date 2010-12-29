          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                       P r o g r a m m i n g   T o o l B o x                        Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К                          *** (C) ST-Open 1979 - 2010 ***                           Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К You may copy and distribute this file as often as you want, but recipients are not Кл
          К allowed to pay anything for any copy of this file or its content. It isn't allowed Кл
          К to abuse its copyrighted content or introduced techniques for commercial purposes. Кл
          К Whatever is derived from this file or its content must be freely available without Кл
          К charge.                                                                            Кл
          К                                                                                    Кл
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
          .include "dt5.h"
          .section .rdata, "dr"
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г jump table             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          .p2align 4,0x00
      jt0:.quad    L06                                            # 00 1010 SecSys login
          .quad    L07                                            # 01 1011 exit
          .quad    L08                                            # 02 1012 start (WM_CREATE)
          .quad    L09                                            # 03 1013 sel src
          .quad    L10                                            # 04 1014 sel fld
          .quad    L11                                            # 05 1015 drv map
          .quad    L12                                            # 06 1016 create file
          .quad    L13                                            # 07 1017 create field
          .quad    L14                                            # 08 1018 move entries
          .quad    L15                                            # 09 1019 copy field content
          .quad    L16                                            # 0A 101A ShowDat
          .quad    L17                                            # 0B 101B OLH
          .quad    L18                                            # 0C 101C topics
          .quad    L20                                            # 0D 101D menus
          .quad    L22                                            # 0E 101E messages
          .quad    L19                                            # 0F 101F sys dialogs
          .quad    L21                                            # 10 1020 sys errors
          .quad    L24                                            # 11 1021 lang names
          .quad    L25                                            # 12 1022 std create
          .quad    L26                                            # 13 1023     spinbuttons
          .quad    L27                                            # 14 1024     bitmaps
          .quad    L28                                            # 15 1025     notebooks
          .quad    XIZ                                            # 16 1026 -
          .quad    XIZ                                            # 17 1027 -
          .quad    L31                                            # 18 1028 help help
          .quad    L32                                            # 19 1029 help DTools
          .quad    L33                                            # 1A 102A about
          .quad    0x00                                           # -  -    align...
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г data                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
   WRATIO:.byte    0x10, 0x27, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г strings                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
     LC00:.ascii   "STmenu"
          .byte    0x00, 0x00
     LC01:.ascii   "dt5"
          .byte    0x00
     LC02:.ascii   "DatTools 5"
          .byte    0x00, 0x00
     LC03:.ascii   "STaccl"
          .byte    0x00, 0x00
     ID02:.ascii   "selang"
          .byte    0x00, 0x00
     ID03:.ascii   "dfsel"
          .byte    0x00, 0x00, 0x00
     ID04:.ascii   "drvmsk"
          .byte    0x00, 0x00
     ID05:.ascii   "crfile"
          .byte    0x00, 0x00
     ID06:.ascii   "create"
          .byte    0x00, 0x00
     ID07:.ascii   "viewer"
          .byte    0x00, 0x00
     ID08:.ascii   "movent"
          .byte    0x00, 0x00
     ID09:.ascii   "cpyfld"
          .byte    0x00, 0x00
     ID10:.ascii   "stdolh"
          .byte    0x00, 0x00
     ID11:.ascii   "stdtop"
          .byte    0x00, 0x00
     ID12:.ascii   "stdmnu"
          .byte    0x00, 0x00
     ID13:.ascii   "stdmsg"
          .byte    0x00, 0x00
     ID15:.ascii   "stdfld"
          .byte    0x00, 0x00
     ID16:.ascii   "stdspn"
          .byte    0x00, 0x00
     ID17:.ascii   "stdbmp"
          .byte    0x00, 0x00
     ID18:.ascii   "stdnbk"
          .byte    0x00, 0x00
     ID19:.ascii   "about"
          .byte    0x00, 0x00, 0x00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WinMain()                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   Hinstance                           Гл
          Г   RDX   Hprevinstance (always zero!)        Гл
          Г   R08   EA command line parameters          Гл
          Г   R09   flag window state (min, max, std)   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   xxxx xxxx xxxx xxxx   ???           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _WinMain
          .def     _WinMain; .scl 2; .type 32; .endef
 _WinMain:subq     $0xF8, %rsp
          nop
          nop
          movq     %rbp,0xD8(%rsp)
          movq     %rsi,0xE0(%rsp)
          movq     %rdi,0xE8(%rsp)
          movq     %rbx,0xF0(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г retrieve parameters    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     %rcx,   %rbp                          # RBP = Hinstance
          movl     %r9d,   %ebx                          # RBX = window state
          movl     $0x1000,%edx                          # RDX = ID icon
          call     _LdIcon
          movq     %rax,   %rsi                          # RSI = Hicon
          xorl     %ecx,   %ecx                          # RCX = NULLHANDLE
          movl     $0x7F00,%edx                          # RDX = IDC_ARROW
          call     _LdCursor
          movq     %rax,   %rdi                          # RDI = Hcursor
          movl     $0x00FFFF00,%ecx
          call     _CrSoBrsh
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г register class         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          pxor     %xmm0,     %xmm0                      # XM0 = 0
          leaq     _dt5(%rip),%r9                        # R09 = EA window procedure
          leaq     LC01(%rip),%r8                        # R08 = EA class name
          leaq     LC00(%rip),%rdx                       # RDX = EA menu  name
          leaq     0x60(%rsp),%rcx                       # RCX = EA WC
          movq     %xmm0,0x60(%rsp)                      # 0x00[WC] = 0
          movq     %r9,  0x68(%rsp)                      # 0x08[WC] = EA window procedure
          movq     %xmm0,0x70(%rsp)                      # 0x10[WC] = 0, 0x14[WC] = 0
          movq     %rbp, 0x78(%rsp)                      # 0x18[WC] = Hinstance
          movq     %rsi, 0x80(%rsp)                      # 0x20[WC] = Hicon
          movq     %rdi, 0x88(%rsp)                      # 0x28[WC] = Hcursor
          movq     %rax, 0x90(%rsp)                      # 0x30[WC] = background colour
          movq     %rdx, 0x98(%rsp)                      # 0x38[WC] = EA menu name
          movq     %r8,  0xA0(%rsp)                      # 0x40[WC] = EA class name
          call     _RegClass
          testl    %eax, %eax                            # registered?
          je       2f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г start ST Loader        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */

          call     *__imp__InitCommonControls(%rip)

          movq     $0x01,_DEBUG(%rip)                    # debugging enabled
          movq     $0x01,_OLH_MODE(%rip)                 # OLH edit  enabled
          call     _LDinit
          movq     _BNR(%rip),%rsi                       # RSI = BNR
          testl    %eax, %eax                            # error?
          jne      2f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г RIS and create window  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          cvtdq2ps SCN_W0(%rsi),%xmm0                    # XM0 = WHWH
          cvtdq2ps RIS_CX(%rsi),%xmm2                    # XM2 = xywh (percent)
          cvtdq2ps WRATIO(%rip),%xmm1                    # XM1 = 4 * 10000
          pxor     %xmm3,%xmm3                           # XM3 = 0
          mulps    %xmm2,%xmm0                           # xywh * WHWH
          divps    %xmm1,%xmm0                           # all / 10000
          cvttps2dq %xmm0,%xmm1                          # convert
          movdqa   %xmm1,0x20(%rsp)                      # store pixel
          xorq     %rcx, %rcx                            # RCX = 0
          leaq     LC01(%rip),%rdx                       # RDX = EA class name
          leaq     LC02(%rip),%r8                        # R08 = EA title
          movl     0x24(%rsp),%eax                       # RDI = y
          movl     0x28(%rsp),%edi                       # RDI = w
          movl     0x2C(%rsp),%r9d                       # R09 = h
          movl     %ecx, 0x24(%rsp)                      # clear upper DD of x
          movq     %rax, 0x28(%rsp)                      # y
          movq     %rdi, 0x30(%rsp)                      # w
          movq     %r9,  0x38(%rsp)                      # h
          movdqa   %xmm3,0x40(%rsp)                      # HWND = 0, HMENU = 0
          movq     %rbp, 0x50(%rsp)                      # Hinstance
          movq     %rcx, 0x58(%rsp)                      # create parameters
          movl     $0x00CF0000,%r9d                      # R09 = style
          call     _WnCreatX
          testq    %rax, %rax                            # error?
          je       2f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г store params and show  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     %rax,%rcx                             # RCX = HWND
          movl     %ebx,%edx                             # RDX = window state
          movq     %rbp,HI_PGM(%rsi)                     # store HI_PGM
          movq     %rax,HW_PGM(%rsi)                     # store HW_PGM
          call     _WinSh
          call     _WnUpd
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г add accelerator        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г message loop           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          leaq     0x80(%rsp),%rcx                       # RCX = EA MSG
          xorl     %edx,%edx                             # all windows
          xorl     %r8d,%r8d                             # NULL
          xorl     %r9d,%r9d                             # NULL
        0:call     _GetMsg
          testl    %eax,%eax                             # WM_QUIT?
          je       1f
          incl     %eax                                  # shorter than cmp $0xFFFFFFFF,%eax
          je       0b
          call     _TrnsMsg
          call     _DispMsg
          jmp      0b
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г exit                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        1:call     _LDexit
          incl     %eax                                  # RC = 1
        2:movq     0xD8(%rsp),%rbp
          movq     0xE0(%rsp),%rsi
          movq     0xE8(%rsp),%rdi
          movq     0xF0(%rsp),%rbx
          addq     $0xF8,%rsp
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MainWndProc()                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND                                Гл
          Г   RDX   MSG                                 Гл
          Г   R08   WPARAM                              Гл
          Г   R09   LPARAM                              Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   0000 0000 0000 0000   processed     Гл
          Г         xxxx xxxx xxxx xxxx   not processed Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _dt5
          .def     _dt5; .scl 2; .type 32; .endef
     _dt5:subq     $0xF8, %rsp
          movq     _BNR(%rip),%rax                       # RAX = BNR
          nop
          movq     %rbp,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          movq     HI_PGM(%rax),%rbx                     # RBX = H_INST
          movq     %rax,%rsi                             # RSI = BNR
          movq     %rcx,%rdi                             # RDI = H_EDIT
          andl     $0xFFFF,%r8d                          # R08 = ID
          cmpl     $0x0005,%edx                          # WM_SIZE?
          je       L01
          cmpl     $0x0111,%edx                          # WM_COMMAND?
          je       L02
          cmpl     $0x0002,%edx                          # WM_DESTROY?
          je       L00
          cmpl     $0x0010,%edx                          # WM_CLOSE?
          je       L07
          cmpl     $0x0001,%edx                          # WM_CREATE?
          jne      DWP
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_CREATE                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          call     _gtMNU
          movl     $0x00,      FLSADD(%rsi)              # disable file list add
          movq     %rax,       PHMENU(%rsi)              # store PHMENU
          movl     $0x0111,    %edx                      # RDX = WM_COMMAND
          movl     $0x1012,    %r8d                      # R08 = ID_START
          xorl     %r9d,       %r9d                      # R09 = NULL
          call     _PostM
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_DESTROY             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L00:xorl     %ecx,%ecx                             # RCX = NULL
          call     _Pquit
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_SIZE                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L01:leaq     0x24(%rsp),%rdx                       # RDX = EA WINDOWPLACEMENT
          testl    $0x03,%r8d                            # minimised or maximised?
          jne      XIT
          call     _GtPos
          movl     0x40(%rsp),%edx                       # RDX = x
          movl     0x44(%rsp),%r8d                       # R08 = y
          movl     0x48(%rsp),%r9d                       # R09 = right
          movl     0x4C(%rsp),%eax                       # RAX = bottom
          subl     %edx,0x48(%rsp)                       # w...
          subl     %r8d,0x4C(%rsp)                       # h...
          subl     %edx,%r9d                             # R09 = w
          subl     %r8d,%eax                             # RAX = h
          cvtdq2ps SCN_W0(%rsi),%xmm0                    # XM0 = WHWH
          cvtdq2ps 0x40(%rsp),  %xmm2                    # XM2 = xywh (pixel)
          cvtdq2ps WRATIO(%rip),%xmm1                    # XM1 = 4 * 10000
          divps    %xmm0,       %xmm2                    # xywh / WHWH
          mulps    %xmm1,       %xmm2                    # all * 10000
          cvttps2dq %xmm2,      %xmm1                    # convert
          movdqa   %xmm1,       RIS_CX(%rsi)             # store xywh
          movq     %rax, 0x20(%rsp)                      # P_5 = h
          movq     $0x01,0x28(%rsp)                      # P_6 = repaint
          call     _WnMov
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L02:subl     $0x1010,%r8d
          js       DWP
          cmpl     $0x1A,%r8d
          ja       L05
          xorl     %eax,%eax                             # RAX = 0
          movl     PGM_FL(%rsi),%ebp                     # RBP = PGM_FL
          jmp      *jt0(, %r8, 8)
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г lang 00 - 0F       Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L05:subl     $0x1B,%r8d                            # language?
          jne      DWP
          leaq     _SelLng(%rip),%rcx                    # RCX = EA procedure
          leaq     ID02(%rip),   %rdx                    # RDX = EA ID
          call     _DBox
          jmp      2f
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г SecSys login       Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L06:
          /*
          xorl     %ecx,%ecx                             # RCX = SS_PRP
          xorl     %edx,%edx                             # RDX = NULL
          xorl     %r8d,%r8d                             # R08 = NULL
          call     _SecSy
          incl     %ecx                                  # SSF_CKM
          call     _SecSy
          movl     $0x03,%ecx                            # SSF_RUN
          call     _SecSy
          incl     %ecx                                  # SSF_LGI
          call     _SecSy
          */
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г exit               Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L07:/*
          andl     $0x02013004,PGM_FL(%rsi)              # reset PGM_FLGS
             finish pending jobs before final termination
          */
          call     _KillWin
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г start              Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L08:leaq     0x20(%rsp), %rcx                      # RCX = LD
          pxor     %xmm3,      %xmm3                     # XM3 = 0
          movl     $0xFFFFFF01,0x30(%rsp)                # FLD_SPN
          movl     $0x23,      0x34(%rsp)                # r, w, static
          movdqa   %xmm3,      0x40(%rsp)                # clear LD
          movdqa   %xmm3,      0x50(%rsp)
          movdqa   %xmm3,      0x60(%rsp)
          movdqa   %xmm3,      0x70(%rsp)
          call     _LDreq
          testl    %eax,%eax                             # error?
          jne      3f
          movl     $0xFFFFFF18,0x30(%rsp)                # field names + numbers
          movq     0x20(%rsp), %rbx                      # RBX = SPN_EA
          movq     0x38(%rsp), %r8                       # R08 = SPN_MH
          call     _LDreq
          addq     $0x0100,    %rbx                      # RBX = start data area
          orb      $0x04,      0x08(%r8)                 # set changed flag
          testl    %eax,%eax                             # error?
          jne      3f
          movl     $0xFFFFFF19,0x30(%rsp)                # source folders
          movq     0x38(%rsp), %rdx                      # RDX = MH_FLD
          call     _LDreq
          testl    %eax,%eax                             # error?
          jne      3f
          movq     0x38(%rsp),%rbp                       # RBP = MH_SRC
          leaq     EA_WRK(%esi),%rax                     # RAX = EA_WRK
          movq     %rbx, SPN_EA(%rsi)                    # store SPN_EA
          movq     %r8,  SPN_MH(%rsi)                    #       SPN_MH
          movq     %rdx, MH_FLD(%rsi)                    #       MH_FLD
          movq     %rbp, MH_SRC(%rsi)                    #       MH_SRC
          movdqa   %xmm3,0x00(%rax)                      # clear LD and FH
          movdqa   %xmm3,0x10(%rax)
          movdqa   %xmm3,0x20(%rax)
          movdqa   %xmm3,0x30(%rax)
          movdqa   %xmm3,0x40(%rax)
          movdqa   %xmm3,0x50(%rax)
          movdqa   %xmm3,0x60(%rax)
        2:
/*
          movq     PHMENU(%rsi),%rcx                     # RCX = PHMENU
          movl     $0x00,       %rdx                     # RDX = MNU_FIRST
          movl     $0x30,       %r8d                     # R08 = MNU_LAST
          call     _MNUtxt
*/
          jmp      XIZ
        3:movl     0x30(%rsp),%eax                       # RAX = field number
          call     _debug
          movq     %rdi,%rcx                             # RCX = HWND
          jmp      L07
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г sel: source        Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L09:leaq     _SelSrc(%rip),%rcx                    # RCX = EA procedure
          leaq     ID03(%rip),   %rdx                    # RDX = EA ID
          call     _DBox
          cmpl     $0x00,FN_SRC(%rsi)
          je       XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г sel: field         Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L10:leaq     _SelFld(%rip),%rcx                    # RCX = EA procedure
          leaq     ID03(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г sel: drv mask      Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L11:leaq     _DrvMsk(%rip),%rcx                    # RCX = EA procedure
          leaq     ID04(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г mkd: create file   Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L12:leaq     _MkFile(%rip),%rcx                    # RCX = EA procedure
          leaq     ID05(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г mkd: create field  Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L13:testl    $0x02,%ebp                            # source present?
          jne      0f
          leaq     _SelSrc(%rip),%rcx                    # RCX = EA procedure
          leaq     ID03(%rip),   %rdx                    # RDX = EA ID
          call     _DBox
          cmpl     $0x00,FN_SRC(%rsi)
          je       XIZ
        0:leaq     _FldCr(%rip),%rcx                     # RCX = EA procedure
          leaq     ID06(%rip),  %rdx                     # RDX = EA ID
          call     _DBox
        1:testb    $0x80,PGM_F2(%rsi)                    # PGM_GOTOVIEW?
          je       XIZ
          andb     $0x7F,PGM_F2(%rsi)                    # reset PGM_GOTOVIEW
        2:leaq     _FldMg(%rip),%rcx                     # RCX = EA procedure
          leaq     ID07(%rip),  %rdx                     # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г mkd: move          Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L14:leaq     _MovEnt(%rip),%rcx                    # RCX = EA procedure
          leaq     ID08(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г mkd: copy          Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L15:leaq     _CpyFld(%rip),%rcx                    # RCX = EA procedure
          leaq     ID09(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г mkd: field viewer  Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L16:testl    $0x02,%ebp                            # source present?
          jne      3f
          leaq     _SelSrc(%rip),%rcx                    # RCX = EA procedure
          leaq     ID03(%rip),   %rdx                    # RDX = EA ID
          call     _DBox
          cmpl     $0x00,FN_SRC(%rsi)
          je       XIZ
        3:testl    $0x04,%ebp                            # source present?
          jne      2b
          leaq     _SelFld(%rip),%rcx                    # RCX = EA procedure
          leaq     ID03(%rip),   %rdx                    # RDX = EA ID
          call     _DBox
          cmpl     $0x00,SL_FLD(%rsi)
          je       XIZ
          jmp      2b
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г lang: OLH          Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L17:leaq     _stdOLH(%rip),%rcx                    # RCX = EA procedure
          leaq     ID10(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г lang: topics       Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L18:leaq     _stdTOP(%rip),%rcx                    # RCX = EA procedure
          leaq     ID11(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г lang: sys menus    Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L19:decl     MNU_SY(%rsi)                          # MNU_SY = system
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г lang: user menus   Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L20:movl     $0x00,MNU_SY(%rsi)                    # MNU_SY = user
        0:leaq     _stdMNU(%rip),%rcx                    # RCX = EA procedure
          leaq     ID12(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г lang: sys msgs     Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L21:decl     MSG_SY(%rsi)                          # MSG_SY = system
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г lang: user msgs    Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L22:movl     $0x00,MSG_SY(%rsi)                    # MSG_SY = user
        0:leaq     _stdMSG(%rip),%rcx                    # RCX = EA procedure
          leaq     ID13(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г lang: names        Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L24:leaq     _MLlang(%rip),%rcx                    # RCX = EA procedure
          leaq     ID12(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г standard create    Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L25:testb    $0x01,PGM_FL(%rsi)                    # DatTools self?
          jne      XIZ
          leaq     _stdFLD(%rip),%rcx                    # RCX = EA procedure
          leaq     ID15(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г std: spinbuttons   Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L26:leaq     _stdSPN(%rip),%rcx                    # RCX = EA procedure
          leaq     ID16(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г std: bitmaps       Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L27:leaq     _stdBMP(%rip),%rcx                    # RCX = EA procedure
          leaq     ID17(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г std: notebooks     Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L28:leaq     _stdNBK(%rip),%rcx                    # RCX = EA procedure
          leaq     ID18(%rip),   %rdx                    # RDX = EA ID
          jmp      DBX
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г help DatTools      Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L32:movl     $0x01,%ecx                            # help 01
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г help OLH           Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L31:xorl     %ecx,%ecx                             # help 00
        0:call     _Help
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г about              Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      L33:leaq     _about(%rip),%rcx                     # RCX = EA procedure
          leaq     ID19(%rip),  %rdx                     # RDX = EA ID
          .p2align 4,,15
      DBX:call     _DBox
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г ldFLD   load requested field                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   field number                        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   always zero                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г The ErrorHandler is invoked if an important Гл
          Г operation failed. On error, MH_WRK + EA_WRK Гл
          Г are set to zero.                            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _ldFLD
          .def     _ldFLD; .scl 2; .type 32; .endef
   _ldFLD:subq     $0xF8, %rsp
          movq     _BNR(%rip),%rax                       # RAX = BNR
          nop
          movq     %rbp,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          movq     %rax,%rsi                             # RSI = BNR
          movl     %ecx,%ebx                             # RBX = field number
          movq     MH_WRK(%rax),%rcx                     # RCX = MH_WRK
          movl     NR_WRK(%rax),%edx                     # RDX = NR_WRK             
          movl     PGM_FL(%rax),%edi                     # RDI = PGM_FL
          leaq     EA_WRK(%rax),%rbp                     # RBP = LD
          testq    %rcx,%rcx                             # something loaded?
          je       1f
          cmpl     $0xFFFFE000,%edx                      # external field?
          jne      0f
          movw     $0x00,0x0A(%rcx)                      # clear instance counter
        0:call     _LDfre
          pxor     %xmm3,%xmm3                           # XM3 = 0
          cmpq     $0x00,0x00(%rcx)                      # really unloaded?
          jne      R08
        1:movq     %rsi,%rdx                             # RDX = BNR
          movdqa   %xmm3,0x00(%rbp)                      # clear LD + FH
          movdqa   %xmm3,0x10(%rbp)
          movdqa   %xmm3,0x20(%rbp)
          movdqa   %xmm3,0x30(%rbp)
          movdqa   %xmm3,0x40(%rbp)
          movdqa   %xmm3,0x50(%rbp)
          movdqa   %xmm3,0x60(%rbp)
          subq     $0x03,%rdx                            # FnDat() emits ..\xxxxxxxx
          testl    $0x01,%edi                            # PGM_SRC_SELF?
          je       2f
          cmpl     $0xFFFFFFF0,%ebx                      # system field?
          jnc      R09
          movl     %ebx, 0x10(%rbp)                      # field number
          movl     $0x23,0x14(%rbp)                      # r, w, static
          jmp      3f
        2:addq     IP_WRK(%rsi),%rdx                     # EDX = EA insertion point
          leaq     FN_SRC(%rsi),%rdi                     # EDI = path
          movl     %ebx, %ecx                            # RCX = field number
          movw     0x00(%edx),%r8w                       # overwritten word
          call     _FnDat
          movw     %r8w,       0x00(%rdx)                # restore word
          movl     $0xFFFFE000,0x10(%rbp)                # field number
          movl     $0xA3,      0x14(%rbp)                # r, w, static, file
          movl     %edi,       0x20(%rbp)                # filename
        3:movq     %rbp,%rcx                             # RCX = LD
          call     _LDreq
          testl    %eax,%eax
          je       XIT
          leaq     FN_SRC(%rsi),%r9                      # R09 = EA filename
          jmp      R02
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г svFLD   save current working field          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> -     nothing                             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   always zero                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г The ErrorHandler is invoked if an important Гл
          Г operation failed. On error, you are able to Гл
          Г save the field as a MemDump (it's stored in Гл
          Г DatTools' source folder).                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _svFLD
          .def     _svFLD; .scl 2; .type 32; .endef
   _svFLD:subq     $0xF8, %rsp
          movq     _BNR(%rip),%rax                       # RAX = BNR
          nop
          movq     %rbp,0xB8(%rsp)
          movq     %rsi,0xC0(%rsp)
          movq     %rdi,0xC8(%rsp)
          movq     %rbx,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          movq     MH_WRK(%rax),%rbx                     # RBX = MH field
          leaq     FH_WRK(%rax),%rcx                     # RCX = FH
          leaq     FN_SRC(%rax),%r9                      # R09 = name
          movq     0x00(%rbx),%rdi                       # RDI = EA field
          movq     %rax,%rsi                             # RSI = BNR
          testq    %rbx,%rbx                             # anything loaded?
          je       1f
          testl    $0x01,PGM_FL(%rsi)                    # PGM_SRC_SELF?
          jne      0f
          testl    $0x04,0x08(%rbx)                      # content changed? (reset by forget buttons)
          je       0f
          movl     0x34(%rdi),%ebp                       # RBP = size
          movl     $0x00,%edx                            # entire file
          movl     $0x02,%r8d                            # open if exist
          call     _Fopen
          testl    %eax,%eax                             # failed?
          jne      R03
          movq     %rbp,0x08(%rcx)                       # FH.Fsize
          movq     %rdi,0x10(%rcx)                       # FH.Mbase
          movl     %ebp,%edx                             # RDX = size
          call     _Fwrite
          movl     %eax,%edx                            # RDX = RC Fwrite()
          call     _Fclose
          testl    %edx,%edx                            # Fwrite failed?
          jne      R03
        0:cmpl     $0xFFFFE000,NR_WRK(%rsi)             # external field?
          jne      1f
          leaq     EA_WRK(%rsi),%rbp                    # RBP = EA_WRK
          movw     $0x00,0x0A(%ebx)                     # clear instance counter
          movq     %rbx,%rcx                            # MH field
          call     _LDfre
          cmpq     $0x00,0x00(%rbx)                     # really unloaded?
          jne      R08
        1:subq     $0x28,%rcx                           # RCX = LD
          pxor     %xmm3,%xmm3                          # XM3 = 0
          xorl     %eax, %eax                           # RAX = 0
          movdqa   %xmm3,0x00(%rbp)                     # clear LD + FH
          movdqa   %xmm3,0x10(%rbp)
          movdqa   %xmm3,0x20(%rbp)
          movdqa   %xmm3,0x30(%rbp)
          movdqa   %xmm3,0x50(%rbp)
          movdqa   %xmm3,0x60(%rbp)
          movdqa   %xmm3,0x70(%rbp)
          jmp      XIT
          /*
          кФФФФФФФФФФФФФФФФФФФФП
          Г error handling     Гл
          РФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллл
          */
          .p2align 4,,15
      R02:movl     $0x02,%ecx                           # ERR_CANNOT_LOAD
          jmp      0f
          .p2align 4,,15
      R03:movl     $0x03,%ecx                           # ERR_CANNOT_SAVE
          jmp      0f
          .p2align 4,,15
      R08:movl     $0x08,%ecx                           # ERR_CANNOT_UNLOAD
          jmp      1f
          .p2align 4,,15
      R09:movl     $0x09,%ecx                           # ERR_SYSTEM_FLD
          jmp      2f
          .p2align 4,,15
        0:movq     %r9,  MSGADR(%rsi)                   # name
        1:movl     %eax, MSG_V1(%rsi)                   # error (dec)
        2:call     _ErrMgr
          cmpl     $0x01,MSGRPL(%rsi)                   # save as MemDump?
          jne      XIZ
          movq     0x00(%rbx),%rcx                      # RCX = EA
          movl     0x10(%rbx),%edx                      # RDX = size
          call     _MemDmp
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г common exit                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      XIZ:xorq     %rax, %rax
      XIT:movq     0xB8(%rsp),%rbp
          movq     0xC0(%rsp),%rsi
          movq     0xC8(%rsp),%rdi
          movq     0xD0(%rsp),%rbx
          movq     0xD8(%rsp),%r9
          movq     0xE0(%rsp),%r8
          movq     0xE8(%rsp),%rdx
          movq     0xF0(%rsp),%rcx
          addq     $0xF8,%rsp
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г default window procedure                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      DWP:movq     0xB8(%rsp),%rbp
          movq     0xC0(%rsp),%rsi
          movq     0xC8(%rsp),%rdi
          movq     0xD0(%rsp),%rbx
          movq     0xD8(%rsp),%r9
          movq     0xE0(%rsp),%r8
          movq     0xE8(%rsp),%rdx
          movq     0xF0(%rsp),%rcx
          addq     $0xF8,%rsp
          jmp      _DefWP
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BMM,       8, 3
          .comm    _BNR,       8, 3
          .comm    _BST,       8, 3
          .comm    _BBF,       8, 3
          .comm    _TST,       8, 3
          .comm    _LDF,       8, 3
          .comm    _GVAR,      8, 3
          .comm    _MHSTR,     8, 3
          .comm    _LDR_AVAIL, 8, 3
          .comm    _DEBUG,     8, 3
          .comm    _USE_LDF,   8, 3
          .comm    _OLH_MODE,  8, 3
