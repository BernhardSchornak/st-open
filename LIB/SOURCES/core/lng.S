          /*
            ==================================================================================
                            L A N G U A G E   S U P P O R T   (C) ST-Open 2012
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                  THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            You may copy and distribute this file as often as you want, but recipients are not
            allowed to pay anything for any copy of this file or its content. It isn't allowed
            to abuse its copyrighted content or introduced techniques for commercial purposes.
            Whatever is derived from this file or its content must be freely available without
            charge.

            You are free to modify the content of this file if you want to. However, derivates
            of the content of this file or parts of it *still* are subject to the terms of the
            FT4FP license. Recipients neither are allowed to pay anything for the original nor
            for altered or derived replica.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                       FREE THOUGHT FOR FREE PEOPLE: KEEP CASH AWAY FROM KNOWLEDGE!
            ==================================================================================
            The language is defined with STV_USR_LANGUAGE (Cxx) or _USRLNG (assembler). Please
            read the HTML tutorial 'Language Support' for more information.

            The definition for all language fields is:

            always  :   subfield  00        English (fallback for multilangual apps)
                        subfields 01...0F   up to 15 translations

            default :   subfield  10        resource IDs           (menu and window texts)

            If more than 15 languages are supported by your application:

            1. Copy the selected language's fields FFFFFF12 and FFFFFF13 to the DATA folder.
            2. Copy the selected language's fields err.dat, hlp.dat, nsm.dat and top.dat to
               the SYST folder.
            3. AND STV_USR_LANGUAGE (or USRLNG) with 0x0000000F for a valid subfield number!
               (Assumed you use (non-ambiguous) ascending language IDs where the upper digit
                determines the corresponding language folder...)

            Keep original language fields in separate folders. Overwrite fields in DATA / SYST
            with copies taken from the selected language folder. A system function is planned,
            but there's too much other work, so it might take some time...
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4, 0x00, 15
      LC0:.ascii   "nsm.dat / err.dat?"
          .byte    0x00, 0x00
      LC1:.ascii   "O K"
          .byte    0x00
      LC2:.ascii   "Debug"
          .byte    0x00, 0x00, 0x00
      LC3:.ascii   "STsmsg"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          .p2align 4,,15
          .globl   _MNUtxt
          .def     _MNUtxt; .scl 2; .type 32; .endef
  _MNUtxt:movq     $mnutxt,             %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _DLGtxt
          .def     _DLGtxt; .scl 2; .type 32; .endef
  _DLGtxt:movq     $dlgtxt,             %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _ErrMgr
          .def     _ErrMgr; .scl 2; .type 32; .endef
  _ErrMgr:movq     $errmgr,             %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .def     SyMsg; .scl 2; .type 32; .endef
    SyMsg:movq     $errprc,             %rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                          D I S T R I B U T O R
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            This distributor catches calls to MNUtxt(), DLGtxt() and ErrMgr() if the Loader is
            not available, yet. This might be neccessary if an application moves LDinit() down
            below the window creation. In this case, MNUtxt(), DLGtxt() and ErrMgr() will fail
            with ERR_LDR_ERROR without performing the requested action.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:negl     _LDR_AVAIL(%rip)                      # loader active?
          jne      1f
          movl     $0x10,               %eax             # ERR_LDR_ERROR
          ret
          .p2align 4,,15
        1:subq     $0xF8,               %rsp
          movq     %r15,                0x88(%rsp)
          movq     %r14,                0x90(%rsp)
          movq     %r13,                0x98(%rsp)
          movq     %r12,                0xA0(%rsp)
          movq     %r11,                0xA8(%rsp)
          movq     %r10,                0xB0(%rsp)
          movq     %rbp,                0xB8(%rsp)
          movq     _BNR(%rip),          %r15             # R15 = BNR
          movq     %rsi,                0xC0(%rsp)
          movq     %rdi,                0xC8(%rsp)
          movq     %rbx,                0xD0(%rsp)
          movq     %r9,                 0xD8(%rsp)
          movq     %r8,                 0xE0(%rsp)
          movq     %rdx,                0xE8(%rsp)
          movq     %rcx,                0xF0(%rsp)
          jmp      *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             M N U t x t               S E T   M E N U   T E X T S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CALL   - MNUtxt();
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            INPUT  > -    nothing  
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OUTPUT < RAX  0000 0000   no error
                          0000 00xx   loader error
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SystemNumerics' HW_PGM must hold the main window's HWND. It is recommended to call
            gtMNU(hwnd) on top of the WM_CREATE procedure to set all menu items properly. Menu
            resources HAVE TO start at entry 0x00 in field FFFFFF12! MNUtxt() recognizes these
            markers taken from subfield 0x10:

            ID   content   action

            00   text      item text
            01   text      submenu text -> switch to new submenu
            0F   ignored   skip
            FF   ignored   submenu end  -> switch back to previous submenu

            Only bits 00...07[ID] are used, bits 08...1F[ID] are shifted out while evaluating.
            Menu nesting is supported for up to 15 descendants of any main menu item. Sane de-
            sign should not bother users with much more than two or three sub-submenus. Better
            use selection dialogs or pop-up menus if nesting exeeds three sub-submenus.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   mnutxt:movq     HW_PGM(%r15),        %rcx             # RCX = HWND program
          call     _gtMNU
          testq    %rax,                %rax             # has main menu?
          je       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            load field FFFFFF12
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     USRLNG(%r15),        %r14d            # R14 = STV_USR_LANGUAGE
          movq     %rax,                %r13             # R13 = HMENU main
          leaq     LD__MN(%r15),        %rcx             # RCX = EA LD
          movl     $0x08,               %eax             # RBX = ERR_PAR_INVALID
          andq     $0x0F,               %r14             # R14 = 00...0F
          call     _LDreq
          movq     LD__MN(%r15),        %r12             # R12 = EA field
          testl    %eax,                %eax             # failed?
          jne      XIT
          movl     0x60(%r12, %r14, 4), %r14d            # R14 = offset OT
          movl     0xA0(%r12),          %esi             # RSI = offset IDs
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            prepare loop
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          xorl     %edx,                %edx             # RDX = 0
          leaq     MNUTXT(%r15),        %r11             # R11 = EA buffer
          xorq     %r10,                %r10             # R10 = nest_cnt
          addq     %r12,                %r14             # R14 = EA OT
          addq     %r12,                %rsi             # R14 = EA IDs
          movq     %r13,                0x00(%r11)       # initial HMENU
          movq     %r11,                0x08(%r11)       #         index
          pxor     %xmm0,               %xmm0
          movq     %r13,                %rcx             # RCX = HMENU main menu
          decl     %edx                                  # RDX = initial index (loop starts with inc EDX!)
          movq     $0x0400,             %r8              # R08 = MF_BYPOSITION
          leaq     0x20(%rsp),          %r9              # R09 = EA MENUITEMINFO
          movl     $0x50,               0x20(%rsp)       # MENUITEMINFO.cbSize
          movl     $0x40,               0x24(%rsp)       #             .fMask   MIIM_STRING
          movq     $0x00,               0x28(%rsp)       #             .fType   MFT_STRING .fState  MFS_ENABLED/UNCHECKED/UNHILITE
          movdqa   %xmm0,               0x30(%rsp)       #             . wID + .hSubMenu
          movdqa   %xmm0,               0x40(%rsp)       #              .hbmpChecked + .hbmpUnchecked
          movq     $0x00,               0x50(%rsp)       #              .dwItemData
          movdqa   %xmm0,               0x60(%rsp)       #              .cch + .hbmpItem
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            set menu items
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:incl     %edx                                  # next index
          movl     0x00(%r14),          %eax             # RAX = offset string
          movl     0x00(%rsi),          %ebx             # RBX = ID
          addq     $0x04,               %r14             # next OT
          addq     $0x04,               %rsi             #      ID
          movl     %eax,                %edi             # RDI = offset string
          shll     $0x18,               %ebx             # RBX = flag << 24
          js       2f                                    # => EXIT
          shll     $0x04,               %ebx             # RBX = flag << 4
          js       0b                                    # => SKIP
          addq     %r12,                %rdi             # RDI = EA string
          testl    %eax,                %eax             # empty string?
          je       1f                                    # => DELETE
          movq     %rcx,                0x38(%rsp)       # MENUITEMINFO.hSubMenu
          movq     %rdi,                0x58(%rsp)       # MENUITEMINFO.dwTypeData
          call     _setMii                               # write structure back
          testl    %ebx,                %ebx             # submenu?
          je       0b
          /*
            ~~~~~~~~~~~~~~~~~~
            enter sub-sub
            ~~~~~~~~~~~~~~~~~~
          */
          call     _gtSUB
          testq    %rax,                %rax             # valid HMENU?
          je       0b
          addq     $0x10,               %r11             # R11 = next entry
          incq     %r10                                  # R10 = nest_cnt++
          movq     %rcx,                0x00(%r11)       # store HMENU
          movl     %edx,                0x08(%r11)       #       index
          movq     %rax,                %rcx             # current HMENU
          movl     $0xFFFFFFFF,         %edx             # start with index 0
          jmp      0b
          /*
            ~~~~~~~~~~~~~~~~~~
            delete empty
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        1:call     _MnDel
          decl     %edx                                  # we deleted one item...
          jmp      0b
          /*
            ~~~~~~~~~~~~~~~~~~
            leave sub-sub
            ~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        2:movq     0x00(%r11),          %rcx             # restore HMENU
          movl     0x08(%r11),          %edx             #         index
          subq     $0x10,               %r11             # R11 = prev entry
          decq     %r10                                  # R10 = nest_cnt--
          jns      0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            unload field FFFFFF12
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     MH__MN(%r15),        %rcx             # RCX = MemHandle
          call     _LDfre
          movq     HW_PGM(%r15),        %rcx             # RCX = HWND pgm
          call     *__imp__DrawMenuBar(%rip)
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             D L G t x t             S E T   D I A L O G   T E X T S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CALL   - DLGtxt(hwnd, title, first, last);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            INPUT  > RCX  hwnd        dialog window's HWND
                     RDX  title       title entry (field FFFFFF12 / FFFFFF13)
                     R08  first       first entry (field FFFFFF12 / FFFFFF13)
                     R09  last        last entry  (field FFFFFF12 / FFFFFF13)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OUTPUT < RAX  0000 0000   ok
                          **** ****   errors returned by called functions
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Language is determined by USRLNG[BNR]. 16 languages are recognised by DLGtxt() for
            now. If more than 16 languages are required, you have to provide multiple versions
            of fields FFFFFF12 (user) and FFFFFF13 (system) in a separate folder and copy user
            requested languages (the corresponding fields) to the DATA folder on demand.

            DLGtxt() sets the title and (last - first) window texts in the dialog window hwnd.
            The resource IDs are taken from subfield #10. If a resource ID is zero, this entry
            is ignored. The number of the window title has to be passed on its own (titles use
            another API call). If you want to display just a title, set first to something be-
            low last to force a negative loop count.

            The entry number for [title] is completely independent from [first] and [last]. It
            can be any entry in field FFFFFF12, while [first] and [last] are treated as conti-
            nuous chain of entries (beginning at [first], ending with [last]).
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            NOTE: If DLG_TY is not zero, DLGtxt() loads field FFFFFF13 (system). There is -no-
                  reason to set DLG_TY - except you want to show system dialogs on your own...
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   dlgtxt:movq     %rcx,                %r14             # RBP = HWND parent
          movl     %edx,                %ebx             # RBX = title
          movl     %r8d,                %edi             # RDI = first entry
          movl     USRLNG(%r15),        %r8d             # R08 = STV_USR_LANGUAGE
          leaq     LD__MN(%r15),        %rcx             # RCX = LD usr
          leaq     LD__SD(%r15),        %r10             # R10 = LD sys
          negl     DLG_TY(%r15)                          # STV_DLG_TEXT = user?
          cmovne   %r10,                %rcx             # RCX = EA LD
          andl     $0x0F,               %r8d             # R08 = 00...0F
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            load field FFFFFF12/13
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          call     _LDreq
          movq     LDMEMA(%rcx),        %r10             # R10 = EA field
          movq     LDMEMH(%rcx),        %r11             # R11 = MemHandle
          movl     $0x00,               DLG_TY(%r15)     # reset DLG_TY
          testl    %eax,                %eax             # failed?
          jne      XIT
          movl     0x60(%r10, %r8, 4),  %r15d            # R15 = offset OT[lang]
          movl     0xA0(%r10),          %r12d            # R12 =        IDs
          addq     %r10,                %r15             # R15 = EA     OT[lang]
          addq     %r10,                %r12             # R12 =        IDs
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            set texts
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     0x00(%r15, %rbx, 4), %edx             # RDX = offset title
          movq     %r14,                %rcx             # RCX = HWND
          addq     %r10,                %rdx             # RDX = EA title
          call     _WnSTx
          subl     %edi,                %r9d             # R09 = cnt
          js       2f
        0:movl     0x00(%r15, %rdi, 4), %r8d             # R08 = offset string
          movl     0x00(%r12, %rdi, 4), %edx             # RDX = ID
          incl     %edi                                  # next entry
          addq     %r10,                %r8              # R08 = EA string
          testl    %edx,                %edx             # zero ID?
          je       1f
          call     _WnSDT
        1:decl     %r9d
          jns      0b
        2:movq     %r11,                %rcx             # RCX = MemHandle
          call     _LDfre
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             ErrMgr                    E r r o r   H a n d l i n g
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CALL   - ErrMgr(error);
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            INPUT  > RCX  error       error number as defined in HERR.H
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OUTPUT < RAX  0000 0000   Loader not available or ERR_NO_ERROR
                          0000 0001   user pushed button 1
                          0000 0002                      2
                          0000 0003                      3
                          **** ****   invalid - numbers above 3 should never be returned!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   errmgr:movl     %ecx,                MSGRPL(%r15)     # STV_MSG_REPLY
          testl    %ecx,                %ecx             # error = 0?
          je       XIZ
          leaq     SyMsg(%rip),         %rcx             # RCX = PFNWP
          movl     $0x0FF0,             %edx             # RDX = ID
          call     _DBox
          movl     MSGRPL(%r15),        %eax             # get RC
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                        ErrMgr() DIALOG PROCEDURE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CALL   - DO NOT CALL THIS INTERNAL FUNCTION!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            INPUT  > RCX  HWND
                     RDX  message
                     R08  lParam
                     R09  wParam
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            OUTPUT < RAX  **** ****   depends on message
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            The global variable ERR_TY determines which messages are loaded. SyMsg() loads the
            application messages (field "nsm.dat") if ERR_TY is zero, else the system messages
            (field "err.dat") are loaded.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SyMsg() can be fed with one optional string and up to three numeric values:

            STV_MSG_ADDR   EA of additional string
            STV_MSG_VAR1   parameter 1
            STV_MSG_VAR2             2
            STV_MSG_VAR3             3

            Optional parameters are not shown if they are zero. Variables are cleared when all
            parameters were written to screen.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            If the message is an empty string or the message number multiplied by four exceeds
            the amount of entries defined in the field header, SyMsg() shows entry number zero
            by default ("message unknown or passed message number out of range").

            If message 00 contains an empty string, SyMsg() displays a lonesome DISMISS button
            in an empty dialog box. It is recommended to set message 0 to the standard message
            text mentioned in the last paragraph...
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            If a button text is an empty string, the button is hidden. Because the user had no
            chance to close a dialog if no button was present, SyMsg() always shows the middle
            button. Its text initially is set to DISMISS, but is overwritten with your text if
            any text for this (default) button is present. As no sane programmer evaluates the
            state of a single button, the number of the returned button doesn't really matter.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   errprc:movq     %rcx,                %r14             # RDI = HWND
          andl     $0xFFFF,             %r8d             # R08 = ID
          subl     $0x0111,             %edx             # WM_COMMAND?
          je       L02
          incl     %edx                                  # WM_INITDIALOG?
          jne      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_INITDLG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     $0x10,               %edx             # RDX = title system
          movq     $0x11,               %r8              # R08 =       user
          leaq     LD__MD(%r15),        %r10             # R10 = LD usr msgs
          leaq     LD__ER(%r15),        %r11             # R11 = LD sys msgs
          incl     DLG_TY(%r15)                          # select system field
          negl     ERR_TY(%r15)                          # STV_ERR_TYPE = 0?
          movl     MSGRPL(%r15),        %ebx             # RBX  = msg number
          cmove    %r10,                %r11             # R11 = LD
          cmove    %r8d,                %edx             # RDX = user
          incq     %r8                                   # R08 = first
          movq     $0x12,               %r9              # R09 = last
          call     _DLGtxt
          call     _CtrWn
          incl     %ebx                                  # msg00 is entry 4
          movl     USRLNG(%r15),        %edx             # RDX = language
          movq     %r11,                %rcx             # RCX = LD
          call     _LDreq
          movq     LDMEMA(%r11),        %rbp             # RCX = EA msgs
          shll     $0x02,               %ebx             # RBX = msg * 4
          andl     $0x0F,               %edx             # RDX = valid language
          testl    %eax,                %eax             # request rejected?
          jne      L00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            get text offsets
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl     0x60(%rbp, %rdx, 4), %r9d             # R09 = offset language
          movq     LDMEMH(%r11),        %r13             # R13 = MH msgs
          movl     $0x01,               %edx             # RDX = flag
          cmpl     0x3C(%rbp),          %ebx             # out of range?
          cmovae   %eax,                %ebx             # use default
          addq     %rbp,                %r9              # R09 = EAsub
          movq     $0x00,               0x20(%rsp)       # P_5 = 0
          movl     0x00(%r9, %rbx, 4),  %r8d             # R08 = offset msg
          movl     0x04(%r9, %rbx, 4),  %r10d            # R10 =        txt btn1
          movl     0x08(%r9, %rbx, 4),  %r11d            # R11 =        txt btn2
          movl     0x0C(%r9, %rbx, 4),  %r12d            # R12 =        txt btn3
          testq    %r8,                 %r8              # message empty?
          cmove    0x00(%r9),           %r8d             # => offset msg 00
          addq     %rbp,                %r10             # R10 = EA txt btn1
          addq     %rbp,                %r11             # R11 = EA txt btn2
          addq     %rbp,                %r12             # R12 = EA txt btn3
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            set message + buttons
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     %r14,                %rcx             # RCX = HWND
          movl     $0x08D0,             %edx             # RDX = ID MLE
          addq     %rbp,                %r8              # R08 = EA msg
          xorq     %r9,                 %r9              # R09 = NULL
          call     _WnSDT
          xorq     %r8,                 %r8              # R08 = disable
          call     _CtlEn
          movq     $0xB1,               %r8              # R08 = EM_SETSEL
          decq     %r9                                   # R09 = -1
          call     _SnDIM
          incl     %edx                                  # RDX = ID BTN 1
          cmpq     %rbp,                %r10
          jne      0f
          xorq     %r8,                 %r8              # R08 = hide
          call     _CtlSh
          jmp      1f
          .p2align 4,,15
        0:movq     %r10,                %r8
          call     _WnSDT
        1:incl     %edx                                  # RDX = ID BTN 2
          cmpq     %rbp,                %r11
          je       2f
          movq     %r11,                %r8
          call     _WnSDT
        2:incl     %edx                                  # RDX = ID BTN 3
          cmpq     %rbp,                %r12
          jne      3f
          xorq     %r8,                 %r8              # R08 = hide
          call     _CtlSh
          jmp      4f
          .p2align 4,,15
        3:movq     %r12,                %r8
          call     _WnSDT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            unload field
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        4:decl     %edx                                  # RDX = ID BTN 2
          call     _WinId
          movq     %rax,                %rcx             # RCX = HWND BTN 2
          call     _WnFoc
          movq     %r13,                %rcx             # RCX = MH
          call     _LDfre
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            display parameters
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     MSG_V1(%r15),        %r11             # R11 = MSG_V1
          movq     MSG_V2(%r15),        %r12             # R12 = MSG_V2
          movq     MSG_V3(%r15),        %r13             # R13 = MSG_V3
          movq     MSGADR(%r15),        %r10             # R10 = MSGADR
          movq     %r11,                %rcx             # RCX = MSG_V1
          leaq     SMSGBF(%r15),        %rdx             # RDX = 00[buf]
          call     _Q2hex
          movq     %r12,                %rcx             # RCX = MSG_V2
          addq     $0x20,               %rdx             # RDX = 20[buf]
          call     _Q2hex
          movq     %r13,                %rcx             # RCX = MSG_V3
          addq     $0x20,               %rdx             # RDX = 40[buf]
          call     _Q2hex
          movq     %r14,                %rcx             # RCX = HWND
          movl     $0x08D8,             %edx             # RDX = ID V1
          leaq     SMSGBF(%r15),        %r8              # R08 = 00[buf]
          testq    %r11,                %r11             # V_1 = 0?
          je       5f
          call     _WnSDT
        5:incl     %edx                                  # RDX = ID V2
          addq     $0x20,               %r8              # R08 = 20[buf]
          testq    %r12,                %r12             # V_2 = 0?
          je       6f
          call     _WnSDT
        6:incl     %edx                                  # RDX = ID V3
          addq     $0x20,               %r8              # R08 = 40[buf]
          testq    %r13,                %r13             # V_3 = 0?
          je       7f
          call     _WnSDT
        7:testq    %r10,                %r10             # address given?
          je       L01
          incl     %edx                                  # RDX = ID TXT
          movq     %r10,                %r8              # R08 = EA
          call     _WnSDT
          jmp      L01
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            load failed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:movq     %r14,                %rcx
          movl     $0x08D0,             %edx
          leaq     LC0(%rip),           %r8              # 'nsm.dat / err.dat?'
          call     _WnSDT
          incl     %edx                                  # BTN 1
          xorq     %r8,                 %r8              # hide
          call     _CtlSh
          addl     $0x02,               %edx             # BTN 3
          call     _CtlSh
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            clear parameters
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L01:pxor     %xmm0,               %xmm0
          xorl     %eax,                %eax
          movdqa   %xmm0,               MSGADR(%r15)     # reset MSGADR, MSG_V1
          movdqa   %xmm0,               MSG_V2(%r15)     #       MSG_V2, MSG_V3
          movl     %eax,                ERR_TY(%r15)     #       ERR_TY
          incl     %eax
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WM_COMMAND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L02:subq     $0x08D0,             %r8
          jbe      XIZ
          cmpq     $0x03,               %r8
          ja       XIZ
          movl     %r8d,                MSGRPL(%r15)
          movq     %r14,                %rcx
          call     _KillDlg
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                          C O M M O N   E X I T
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorl     %eax,                %eax
      XIT:movq     0x88(%esp),          %r15
          movq     0x90(%esp),          %r14
          movq     0x98(%esp),          %r13
          movq     0xA0(%esp),          %r12
          movq     0xA8(%esp),          %r11
          movq     0xB0(%esp),          %r10
          movq     0xB8(%esp),          %rbp
          movq     0xC0(%esp),          %rsi
          movq     0xC8(%esp),          %rdi
          movq     0xD0(%esp),          %rbx
          movq     0xD8(%esp),          %r9
          movq     0xE0(%esp),          %r8
          movq     0xE8(%esp),          %rdx
          movq     0xF0(%esp),          %rcx
          addq     $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,                8, 3
          .comm    _LDR_AVAIL,          8, 3
