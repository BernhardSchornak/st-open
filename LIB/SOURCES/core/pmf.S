          /*
            ==================================================================================
              P r e s e n t a t i o n   M a n a g e r   F u n c t i o n s   (C) ST-Open 2012
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
            The main purpose of this file is to save and restore all "volatile" registers. Its
            second purpose is to provide a - more or less - platform independent collection of
            functions to keep porting an application from one platform to another as simple as
            possible.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _CtrWn
          .def      _CtrWn; .scl 2; .type 32; .endef
   _CtrWn:movq      $ctrwn,           %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _WMsize
          .def      _WMsize; .scl 2; .type 32; .endef
  _WMsize:movq      $wmsize,          %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _SBtn
          .def      _SBtn; .scl 2; .type 32; .endef
    _SBtn:movq      $sbtn,            %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _PBtn
          .def      _PBtn; .scl 2; .type 32; .endef
    _PBtn:movq      $pbtn,            %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _QCkB
          .def      _QCkB; .scl 2; .type 32; .endef
    _QCkB:movq      $qckb,            %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _SCkB
          .def      _SCkB; .scl 2; .type 32; .endef
    _SCkB:movq      $sckb,            %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _gtMNU
          .def      _gtMNU; .scl 2; .type 32; .endef
   _gtMNU:movq      $gtmnu,           %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _gtSUB
          .def      _gtSUB; .scl 2; .type 32; .endef
   _gtSUB:movq      $gtsub,           %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _getMii
          .def      _getMii; .scl 2; .type 32; .endef
  _getMii:movq      $getmi,           %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _setMii
          .def      _setMii; .scl 2; .type 32; .endef
  _setMii:movq      $setmi,           %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _MnDel
          .def      _MnDel; .scl 2; .type 32; .endef
   _MnDel:movq      $mndel,           %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _MnAdd
          .def      _MnAdd; .scl 2; .type 32; .endef
   _MnAdd:movq      $mnadd,           %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _MnQTx
          .def      _MnQTx; .scl 2; .type 32; .endef
   _MnQTx:movq      $mnqtx,           %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _MnSTx
          .def     _MnSTx; .scl 2; .type 32; .endef
   _MnSTx:movq     $mnstx,           %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _MnuCk
          .def      _MnuCk; .scl 2; .type 32; .endef
   _MnuCk:movq      $mnuck,           %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _MnuEn
          .def      _MnuEn; .scl 2; .type 32; .endef
   _MnuEn:movq      $mnuen,           %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _LBfill
          .def      _LBfill; .scl 2; .type 32; .endef
  _LBfill:movq      $lbfill,          %rax
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            distributor
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
        0:subq      $0xF8,            %rsp
          movq      %rbp,             0xA8(%rsp)
          movq      %rsi,             0xB0(%rsp)
          movq      %rdi,             0xB8(%rsp)
          movq      %rbx,             0xC0(%rsp)
          movq      %r11,             0xC8(%rsp)
          movq      %r10,             0xD0(%rsp)
          movq      %r9,              0xD8(%rsp)
          movq      %r8,              0xE0(%rsp)
          movq      %rdx,             0xE8(%rsp)
          movq      %rcx,             0xF0(%rsp)
          movq      %r8,              %rbp               # RBP = R08 (EA or flags)
          pxor      %xmm0,            %xmm0              # XM0 = 0
          jmp       *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                     W I N D O W    F U N C T I O N S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CtrWn    center window inside parent window
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND window to center
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    ctrwn:movq      %rcx,             %rbp               # RSI = HWND myself
          movl      $0x04,            %edx               # RDX = GW_OWNER (parent)
          call      *__imp__GetWindow(%rip)
          movq      %rax,             %rdi               # RDI = HWND parent
          movq      %rbp,             %rcx               # RCX = myself HWND
          leaq      0x40(%rsp),       %rdx               # RDX =        RECTL
          call      *__imp__GetWindowRect(%rip)
          movq      %rdi,             %rcx               # RCX = parent HWND
          leaq      0x50(%rsp),       %rdx               # RDX =        RECTL
          call      *__imp__GetWindowRect(%rip)
          movl      0x40(%rsp),       %eax               # EAX = xChi
          movl      0x44(%rsp),       %ebx               # EBX = cyChi
          movl      0x48(%rsp),       %ecx               # ECX = cxChi
          movl      0x4C(%rsp),       %edx               # EDX = yChi
          movl      0x50(%rsp),       %r8d               # R08 = xPar
          movl      0x54(%rsp),       %r9d               # R09 = cyPar
          movl      0x58(%rsp),       %r10d              # R10 = cxPar
          movl      0x5C(%rsp),       %r11d              # R11 = yPar
          subl      %r8d,             %r10d              # R10 = Wpar
          subl      %eax,             %ecx               # ECX = Wchi
          subl      %r9d,             %r11d              # R11 = Hpar
          subl      %ebx,             %edx               # EDX = Hchi
          subl      %ecx,             %r10d              # R10 = xdif
          subl      %edx,             %r11d              # R11 = ydif
          shrl      %r10d                                # R10 = xdif/2
          shrl      %r11d                                # R11 = ydif/2
          pxor      %xmm0,            %xmm0
          movq      %rbp,             %rcx               # RCX = myself HWND
          xorl      %edx,             %edx               # RDX = HWND_TOP
          addl      %r10d,            %r8d               # R08 = xnew
          addl      %r11d,            %r9d               # R09 = cynew
          movdqa    %xmm0,            0x20(%rsp)         # cx + y
          movq      $0x01,            0x30(%rsp)         # SWP_NOSIZE
          call      *__imp__SetWindowPos(%rip)
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WMsize   retrieve and store window size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   ignored (HWND)
               RDX   ignored (WM_SIZE)
               R08   WPARAM
               R09   ignored (WPARAM)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Retrieve size of main window and store those
            coordinates as RIS_CX...RIS_CH. Do -not- use
            this for the client window or dialogs!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
   wmsize:movq      _BNR(%rip),       %rsi               # RSI = BNR
          leaq      0x24(%rsp),       %rdx               # RDX = EA WINDOWPLACEMENT
          testq     %r8,              %r8                # SIZE_RESTORED?
          jne       XIZ
          movq      HW_PGM(%rsi),     %rcx
          call      _GtPos
          movl      0x40(%rsp),       %edx               # RDX = x
          movl      0x44(%rsp),       %r8d               # R08 = y
          movl      0x48(%rsp),       %r9d               # R09 = right
          movl      0x4C(%rsp),       %eax               # RAX = bottom
          subl      %edx,             0x48(%rsp)         # w...
          subl      %r8d,             0x4C(%rsp)         # h...
          subl      %edx,             %r9d               # R09 = w
          subl      %r8d,             %eax               # RAX = h
          cvtdq2ps  SCN_W0(%rsi),     %xmm0              # XM0 = WHWH
          cvtdq2ps  0x40(%rsp),       %xmm2              # XM2 = xywh (pixel)
          cvtdq2ps  WRATIO(%rsi),     %xmm1              # XM1 = 4 * 10000
          divps     %xmm0,            %xmm2              # xywh / WHWH
          mulps     %xmm1,            %xmm2              # all * 10000
          cvttps2dq %xmm2,            %xmm1              # convert
          movdqa    %xmm1,            RIS_CX(%rsi)       # store xywh
          movq      %rax,             0x20(%rsp)         # P_5 = h
          movq      $0x01,            0x28(%rsp)         # P_6 = repaint
          call      _WnMov
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                  B U T T O N S  &  C H E C K B O X E S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SBtn     (de)select button
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND dialog
               RDX   DD   resource ID button
               R08   DD   0000 0000   deselect
                          **** ****   select
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SBtn() (de)selects the specified button - it
            does not push it! Works with pushbuttons and
            radiobuttons, as well.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
     sbtn:movq      $0xF1,            %r8                # R08 = BM_SETCHECK
          movl      %ebp,             %r9d               # R09 = new state
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn     push button
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND dialog
               RDX   DD   resource ID button
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PBtn() sends BM_CLICK to the specified push-
            or radiobutton control.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
     pbtn:movl      $0xF5,            %r8d               # R08 = BM_CLICK
          xorl      %ebp,             %ebp
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            QCkB    query checkbutton state
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND dialog
               RDX   DD   resource ID checkbutton
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   0000 000*   0 unchecked
                                 1 checked
                                 2 indeterminate
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     qckb:movl      $0xF0,            %r8d               # R08 = BM_GETCHECK
          xorl      %ebp,             %ebp
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SCkB    set checkbox state
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND dialog
               RDX   DD   resource ID checkbox
               R08   DD   0000 0000   uncheck
                          0000 0001   check
                          0000 0002   indeterminate
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SCkB() sets the specified check box to the
            requested state. The button is not clicked
            if you call SCkB(). To trigger a BM_CLICK,
            use PBtn()!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
     sckb:movl      $0xF1,            %r8d               # R08 = BM_SETCHECK
        0:movdqa    %xmm0,            0x20(%rsp)         # NULL
          movl      %ebp,             %r9d               # R09 = flags
          call      *__imp__SendDlgItemMessageA(%rip)
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                                M E N U S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             gtMNU   retrieve HMENU
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> PAR1  HWND menu owner
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   0000 0000   error
                     **** ****   HWND menu
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    gtmnu:call      *__imp__GetMenu(%rip)
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             gtSUB   retrieve HMENU of submenu
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> PAR1  HMENU  parent
               PAR2  DD     position (index)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   0000 0000   error
                     **** ****   HWND menu
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    gtsub:call      *__imp__GetSubMenu(%rip)
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            getMii   get menu item information
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HMENU
               RDX   menu item ID or index
               R08   0000   MF_BYCOMMAND  (RDX = ID)
                     0400   MF_BYPOSITION (RDX = index)
               R09   EA MENUITEMINFO structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   RC from API (see Windows docs)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    getmi:call      *__imp__GetMenuItemInfoA(%rip)
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            setMii   set menu item information
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HMENU
               RDX   menu item ID or index
               R08   0000   MF_BYCOMMAND  (RDX = ID)
                     0400   MF_BYPOSITION (RDX = index)
               R09   EA MENUITEMINFO structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   RC from API (see Windows docs)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    setmi:call      *__imp__SetMenuItemInfoA(%rip)
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MnDel    DeleteMenu()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HMENU
               RDX   menu item ID or index
               R08   0000   MF_BYCOMMAND  (RDX = ID)
                     0400   MF_BYPOSITION (RDX = index)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   RC from API (see Windows docs)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    mndel:call      *__imp__DeleteMenu(%rip)
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MnAdd   InsertMenuItem()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HMENU
               RDX   menu item resource ID
               R08   0000   MF_BYCOMMAND  (RDX = ID)
                     0400   MF_BYPOSITION (RDX = index)
               R09   EA MENUITEMINFO structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   RC from API (see Windows docs)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    mnadd:call      *__imp__InsertMenuItemA(%rip)
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MnQTx    query (get) menu item text
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HMENU
               RDX   menu item ID or index
               R08   buffer EA
               R09          size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   RC from API (see Windows docs)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    mnqtx:xorl      %eax,             %eax               # RAX = MF_BYCOMMAND
          movl      $0x0400,          %ebx               # RBX = MF_BYPOSITION
          cmpl      $0x1000,          %edx               # valid ID?
          cmovae    %eax,             %ebx               # use MF_BYCOMMAND
          movq      %rbx,             0x20(%rsp)         # MF_*
          call      *__imp__GetMenuStringA(%rip)
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MnSTx    set menu item text
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HMENU
               RDX   menu item ID or index
               R08   EA text buffer
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
           ³<- EAX   RC from API (see Windows docs)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    mnstx:xorl      %eax,             %eax               # RAX = MF_BYCOMMAND
          movl      $0x0400,          %r8d               # R08 = MF_BYPOSITION
          pxor      %xmm0,            %xmm0              # XM0 = 0
          cmpl      $0x1000,          %edx               # valid ID?
          cmovae    %eax,             %r8d               # use MF_BYCOMMAND
          leaq      0x20(%rsp),       %r9                # R09 = EA MENUITEMINFO
          movl      $0x50,            0x20(%rsp)         # sizeof(MENUITEMINFO)
          movl      $0x40,            0x24(%rsp)         # MIIM_STRING
          movq      %rax,             0x28(%rsp)         # MFT_STRING | MFS_ENABLED
          movq      %rdx,             0x30(%rsp)         # resource ID or index
          movq      %rax,             0x38(%rsp)         # HMENU = NULL (probably fails...)
          movdqa    %xmm0,            0x40(%rsp)         # HBITMAP = NULL, HBITMAP = NULL
          movq      %rax,             0x50(%rsp)         # dwItemData = NULL
          movq      %rbp,             0x58(%rsp)         # dwTypeData = EA string
          movdqa    %xmm0,            0x60(%rsp)         # cch = 0, HBITMAP = NULL
          call      *__imp__SetMenuItemInfoA(%rip)
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MnuCk    check/uncheck menu item
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HMENU
               RDX   menu item ID (no index allowed!)
               R08   0 uncheck, 1 check
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   RC from API (see Windows docs)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            NOTE: Submenus should never be checked, so
                  MF_BYCOMMAND is forced if the passed
                  flag is anything else than zero.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    mnuck:movl      $0x08,            %eax
          testl     %ebp,             %ebp
          cmovne    %eax,             %r8d
          call      *__imp__CheckMenuItem(%rip)
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MnuEn    enable/disable menu item
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HMENU
               RDX   menu item ID or index
               R08   0 disable, 1 enable
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   RC from API (see Windows docs)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            NOTE: To distinguish between menuitems and
                  submenus, the ID is treated as index
                  if it is below 0x1000. In this case,
                  MF_BYPOSITION is used. All other IDs
                  automatically select MF_BYCOMMAND.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
    mnuen:xorl      %eax,             %eax               # RAX = 0000
          movl      $0x0003,          %ebx               # RBX = MF_DISABLED + MF_GRAYED
          movl      $0x0400,          %r8d               # R08 = MF_BYPOSITION
          cmpl      $0x1000,          %edx               # ID < 0x1000?
          cmovae    %eax,             %r8d               # R08 = MF_BYCOMMAND
          testl     %ebp,             %ebp               # enable?
          cmovne    %eax,             %ebx               # RBX = MF_ENABLE
          addl      %ebx,             %r8d               # R08 = flags
          call      *__imp__EnableMenuItem(%rip)
          jmp       XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                    L I S T -  &   C O M B O B O X E S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LBfill   fill list/combobox from field
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND dialog
               RDX   DD   resource ID list/combobox
               R08   DQ   field MH
               R09   W[0] 1st entry          (bits 00-0F)
                     W[1] subfield           (bits 10-1F)
                     W[2] entries to process (bits 20-2F)
                     W[3] entry   to select  (bits 30-3F)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Adds n entries taken from the specified field
            to the listbox specified by RCX/RDX. The item
            passed as W3[R09] is selected (highlited).

            ListBoxes are limited to 65,535 items. Hence,
            packing 4 parameters into one 64 bit register
            was chosen to save moving 3 parameters to the
            stack, then move them to registers, again.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
   lbfill:movq      %r13,             0x98(%rsp)
          movq      %r12,             0xA0(%rsp)
          movl      %r9d,             %ebx               # RBX = P_4
          movl      %r9d,             %ebp               # RBP = P_4
          movq      %r9,              %rdi               # RDI = P_4
          movq      %r9,              %rsi               # RSI = P_4
          movq      %rcx,             %r10               # R10 = HWND
          movl      %edx,             %r11d              # R11 = ID
          movq      %r8,              %r12               # R12 = MH
          movq      0x00(%r8),        %r13               # R13 = EA field
          shrl      $0x10,            %ebp
          shrq      $0x20,            %rdi
          shrq      $0x30,            %rsi               # RSI = select
          andl      $0xFFFF,          %ebx               # RBX = entry
          andl      $0x1F,            %ebp               # RBP = subfield
          andl      $0xFFFF,          %edi               # RDI = loop_cnt
          .p2align  4,,15
        0:movq      %r12,             %rcx               # RCX = MH
          movl      %ebx,             %edx               # RDX = entry
          movl      %ebp,             %r8d               # R08 = sub
          movq      $0x07,            %r9                # R09 = FDA_ADDRESS
          call      _FDacc
          movq      %rax,             0x20(%rsp)         # P_5 = EA string
          cmpq      %rax,             %r13               # empty string?
          je        1f
          movq      %r10,             %rcx               # RCX = HWND
          movl      %r11d,            %edx               # RDX = ID
          movq      $0x0180,          %r8                # R08 = LB_ADDSTRING
          xorq      %r9,              %r9                # R09 = NULL
          call      _SnDIM
        1:incl      %ebx                                 # entry++
          decl      %edi                                 # cnt--
          jne       0b
          movq      $0x00,            0x20(%rsp)         # P_5 = NULL
          movq      $0x0186,          %r8                # R08 = LB_SETCURSEL
          movl      %esi,             %r9d               # R09 = select
          call      _SnDIM
          movq      0x98(%rsp),       %r13
          movq      0xA0(%rsp),       %r12
          jmp       XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                       R A N D O M   N U M B E R S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RAND    ST-Open random number generator
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ->       nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   random number 0 ... (2e64 - 1)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
This is three different rng's in one:

.align 16
.globl rng_hash_128
.type  rng_hash_128,@function
rng_hash_128:
	mov    8(%rdi), %rax

	movabs $0x6595a395a1ec531b, %rcx

#   Option 1)
#   Non-threaded, fastest.  No xor instruction used.

#   Option 2)
#   Threaded, use the address of the seed as a nonce.
#      xor    %rdi, %rax

#   Option 3)
#   Threaded, pass a nonce as a second parameter.
#	xor    %rsi, %rax
#  or have it stored in a larger seed:
#      xor    16(%rdi), %rax

	mov    (%rdi), %rsi
	mul    %rcx

	add    %rcx, (%rdi)
	adc    %rsi, 8(%rdi)

	xor    %rsi, %rax
	xor    %rdx, %rax
	mul    %rcx
	add    %rsi, %rax
	add    %rdx, %rax

	retq
.size	rng_hash_128, .-rng_hash_128

For non-threaded use, pick the one without the extra xor instruction.
This is fastest, taking 3.77s to output 10^9 64bit random numbers on
this machine.

If you have multiple threads, then pick option two.  The rng will use
the different addresses of the seeds to make sure that each thread
gets a different output sequence.  This takes 4.05s to output 10^9
64bit random numbers on this machine.

If you are using multiple computers, or require multithreaded
repeatability, then pick option three.  Pass a variable describing the
thread/machine-number to the rng.  (Another option is to store this
extra state into a slightly expanded seed, and use "xor    16(%rdi),
%rax" instead.)

In effect, options two and three choose a 2^128 subsequence from a
2^192 element sequence.

Why is this rng so fast?

Most normal random number generators use a mapping x_new = f(x), where
the function f defines how the seed state x is altered.

This rng instead of outputting (part of) the seed, outputs a hash g(x)
of it instead.  Thus f(x), and g(x) need to be calculated in every
call.  This looks obviously slower than the other method.  However,
two things save us.  The first is that modern processors are out-of-
order, and can execute many instructions in parallel.  Thus the
calculation of f() and g() can overlap.  The second is that the
constraints of f() and g() are different.

f() needs to map to a large cycle of states, and have good statistical
randomness.  g() just needs to have good statistical randomness.

So by picking a very fast f(), with poor randomness, and a good-enough
g() we can obtain a very fast rng that still passes stringent
statistical tests.  The problem is finding a good fast hash.
Fortunately, the extended-precision multiply used above works for g().
(A fast yet poor quality LCG easily works for f() )

Note: when re-implementing the above, be careful with the instruction
ordering.  Even small rearrangements can alter the speed by tens of
percent.

Steven
          */
          .p2align  4,,15
          .globl    _RAND
          .def      _RAND; .scl 2; .type 32; .endef
    _RAND:subq      $0xF8,            %rsp
          movq      %r9,              0xD8(%rsp)
          movq      %r8,              0xE0(%rsp)
          movq      %rdx,             0xE8(%rsp)
          movq      %rcx,             0xF0(%rsp)
          rdtsc                                          # ~71 (69-90) clocks
          movl      %eax,             %ecx               # RCX = lo_D
          movl      %eax,             %r8d               # R08 = lo_D
          movl      %edx,             %r9d               # R09 = hi_D
          andl      $0x3F,            %ecx               # RCX = 00...3F
          shlq      $0x20,            %r8                # R08 = lo_D 0000
          shlq      $0x20,            %r9                # R09 = hi_D 0000
          shlq      $0x20,            %rdx               # RDX = hi_D 0000
          addq      %rdx,             %r8                # R08 = lo_D hi_D
          addq      %rax,             %r9                # R09 = hi_D lo_D
          addq      %rdx,             %rax               # RAX = hi_D lo_D
          rorq      %cl,              %r8                # E08 = LH>
          rolq      %cl,              %r9                # E08 = HL<
          rorq      %cl,              %rax               # RAX = HL>
          addq      %r8,              %r9                # R09 = LH> + HL<
          addq      %r9,              %rax               # RAX = LH> + HL> XOR HL<
          jmp       XIT4
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RND     random numbers between MIN and MAX
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   lower limit
               RDX   upper limit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   random number between lo and hi
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _RND
          .def      _RND; .scl 2; .type 32; .endef
     _RND:subq      $0xF8,            %rsp
          movq      %r11,             0xC8(%rsp)
          movq      %r10,             0xD0(%rsp)
          movq      %r9,              0xD8(%rsp)
          movq      %r8,              0xE0(%rsp)
          movq      %rdx,             0xE8(%rsp)
          movq      %rcx,             0xF0(%rsp)
          movq      %rcx,             %r8                # R08 = min
          movq      %rdx,             %r9                # R09 = max
          movq      %rcx,             %r10               # R10 = min
          movq      %rdx,             %r11               # R11 = max
          rdtsc                                          # ~71 (69-90) clocks
          cmpq      %r10,             %r11               # min > max?
          cmova     %r9,              %r10               # exchange
          cmova     %r8,              %r11
          movl      %eax,             %ecx               # RCX = lo_D
          movl      %edx,             %r9d               # R09 = hi_D
          movl      %eax,             %r8d               # R08 = lo_D
          xorl      %edx,             %edx               # DIV!
          incq      %r11                                 # R11 = MAX + 1 (range!)
          shlq      $0x20,            %r9                # R09 = hi_D 0000
          andl      $0x3F,            %ecx               # RCX = 00...3F
          addq      %r9,              %rax               # RAX = hi_D lo_D
          shrl      $0x1A,            %r8d               # R08 = 00...3F
          rorq      %cl,              %rax               # RAX = RND
          movl      %r8d,             %ecx               # RCX = s_factor 2
          subq      %r10,             %r11               # R11 = MAX - MIN
          rolq      %cl,              %rax               # RAX = RND
          divq      %r11                                 # RND / (MAX - MIN)
          addq      %rdx,             %r10               # min + remainder
          movq      %r10,             %rax               # RAX = min + remainder
          jmp       XIT6
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                                  R I S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RISempt clear work area
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ->       nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _RISempt
          .def      _RISempt; .scl 2; .type 32; .endef
 _RISempt:movq      _BNR(%rip),       %rax               # EAX = BNR
          pxor      %xmm0,            %xmm0              # XM0 = 0
          movdqa    %xmm0,            PERC_X(%rax)       # clear RIS area
          movdqa    %xmm0,            PIXL_X(%rax)
          xorl      %eax,             %eax
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RISmain gets values for the main window
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ->       nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl    _RISmain
          .def      _RISmain; .scl 2; .type 32; .endef
 _RISmain:movq      _BNR(%rip),       %rax               # EAX = BNR
          movdqa    RIS_CX(%rax),     %xmm0              # XM0 = current config
          movdqa    %xmm0,            PERC_X(%rax)       # store as temp percent
          jmp       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            prc2pix convert percent to pixel
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ->       nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl     _prc2pix
          .def       _prc2pix; .scl 2; .type 32; .endef
 _prc2pix:movq       _BNR(%rip),      %rax
        0:cvtdq2ps   SCN_W0(%rax),    %xmm0              # XM0 = WHWH
          cvtdq2ps   PERC_X(%rax),    %xmm2              # XM2 = xywh (percent)
          cvtdq2ps   WRATIO(%rax),    %xmm1              # XM1 = 4 * 10000
          mulps      %xmm2,           %xmm0              # xywh * WHWH
          divps      %xmm1,           %xmm0              # all / 10000
          cvttps2dq  %xmm0,           %xmm1              # convert
          movdqa     %xmm1,           PIXL_X(%rax)       # store pixel
          xorl       %eax,            %eax
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            pix2prc convert pixel to percent
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ->       nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
          .globl     _pix2prc
          .def       _pix2prc; .scl 2; .type 32; .endef
 _pix2prc:movq       _BNR(%rip),      %rax
          cvtdq2ps   SCN_W0(%rax),    %xmm0              # XM0 = WHWH
          cvtdq2ps   PIXL_X(%rax),    %xmm2              # XM2 = xywh (pixel)
          cvtdq2ps   WRATIO(%rax),    %xmm1              # XM1 = 4 * 10000
          divps      %xmm0,           %xmm2              # xywh / WHWH
          mulps      %xmm1,           %xmm2              # all * 10000
          cvttps2dq  %xmm2,           %xmm1              # convert
          movdqa     %xmm1,           PERC_X(%rax)       # store percent
          xorl       %eax,            %eax
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align  4,,15
      XIZ:xorl      %eax,             %eax
      XIT:movq      0xA8(%rsp),       %rbp
          movq      0xB0(%rsp),       %rsi
          movq      0xB8(%rsp),       %rdi
          movq      0xC0(%rsp),       %rbx
     XIT6:movq      0xC8(%rsp),       %r11
          movq      0xD0(%rsp),       %r10
     XIT4:movq      0xD8(%rsp),       %r9
          movq      0xE0(%rsp),       %r8
          movq      0xE8(%rsp),       %rdx
          movq      0xF0(%rsp),       %rcx
          addq      $0xF8,            %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm     _BNR,             8, 3
          .comm     _HINST,           8, 3
