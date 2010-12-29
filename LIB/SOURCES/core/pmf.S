          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                              P M - F U N C T I O N S                               Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К                          *** (C) ST-Open 1979 - 2010 ***                           Кл
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
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К The main purpose of this file is to save RCX, RDX, R8, R9, R10, R11, XMM4 and XMM5 Кл
          К marked as "volatile". Its second purpose is to provide a - more or less - platform Кл
          К independent collection of functions to keep porting applications from one platform Кл
          К to another as simple as possible.                                                  Кл
          К                                                                                    Кл
          К Well, the big idea behind pmf.S got lost a little bit, but I will add useful stuff Кл
          К as soon as possible.                                                               Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .include "..\\..\\..\\include\\yasm.h"
          .data
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4, 0x00, 15
     LC00:.byte    0x10, 0x27, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г CtrWn   center window inside parent window Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND window to center              Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   0000 0000   always zero            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _CtrWn
          .def     _CtrWn; .scl 2; .type 32; .endef
   _CtrWn:movq     $ctrwn,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SBtn    (de)select button                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND dialog                        Гл
          Г   RDX   DD   resource ID button            Гл
          Г   R08   DD   0000 0000   deselect          Гл
          Г              **** ****   select            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   0000 0000   always zero            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г SBtn() *selects* the specified button - it Гл
          Г does not *push* it!                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _SBtn
          .def     _SBtn; .scl 2; .type 32; .endef
    _SBtn:movq     $sbtn,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г QCkB    query checkbutton state            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND dialog                        Гл
          Г   RDX   DD   resource ID checkbutton       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   0000 000*   0 unchecked            Гл
          Г                     1 checked              Гл
          Г                     2 indeterminate        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _QCkB
          .def     _QCkB; .scl 2; .type 32; .endef
    _QCkB:movq     $qckb,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г SCkB    set checkbox state                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HWND dialog                        Гл
          Г   RDX   DD   resource ID checkbox          Гл
          Г   R08   DD   0000 0000   uncheck           Гл
          Г              0000 0001   check             Гл
          Г              0000 0002   indeterminate     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   0000 0000   always zero            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г SCkB() sets the specified check box to the Гл
          Г requested state. The button is not clicked Гл
          Г if you call SCkB(). To trigger a BM_CLICK, Гл
          Г you have to SnDIM() it!                    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _SCkB
          .def     _SCkB; .scl 2; .type 32; .endef
    _SCkB:movq     $sckb,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г gtMNU   retrieve HMENU                     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1  HWND menu owner                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   0000 0000   error                  Гл
          Г         **** ****   HWND menu              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _gtMNU
          .def     _gtMNU; .scl 2; .type 32; .endef
   _gtMNU:movq     $gtmnu,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г getMi   get menu item information          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HMENU                              Гл
          Г   RDX   menu item ID or index              Гл
          Г   R08   0000   MF_BYCOMMAND  (RDX = ID)    Гл
          Г         0400   MF_BYPOSITION (RDX = index) Гл
          Г   R09   EA MENUITEMINFO structure          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   RC from API (see Windows docs)     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _getMii
          .def     _getMii; .scl 2; .type 32; .endef
  _getMii:movq     $getmi,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г setMii  set menu item information          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HMENU                              Гл
          Г   RDX   menu item ID or index              Гл
          Г   R08   0000   MF_BYCOMMAND  (RDX = ID)    Гл
          Г         0400   MF_BYPOSITION (RDX = index) Гл
          Г   R09   EA MENUITEMINFO structure          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   RC from API (see Windows docs)     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _setMii
          .def     _setMii; .scl 2; .type 32; .endef
  _setMii:movq     $setmi,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MnDel   DeleteMenu()                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HMENU                              Гл
          Г   RDX   menu item ID or index              Гл
          Г   R08   0000   MF_BYCOMMAND  (RDX = ID)    Гл
          Г         0400   MF_BYPOSITION (RDX = index) Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   RC from API (see Windows docs)     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _MnDel
          .def     _MnDel; .scl 2; .type 32; .endef
   _MnDel:movq     $mndel,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MnAdd   InsertMenuItem()                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HMENU                              Гл
          Г   RDX   menu item resource ID              Гл
          Г   R08   0000   MF_BYCOMMAND  (RDX = ID)    Гл
          Г         0400   MF_BYPOSITION (RDX = index) Гл
          Г   R09   EA MENUITEMINFO structure          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   RC from API (see Windows docs)     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _MnAdd
          .def     _MnAdd; .scl 2; .type 32; .endef
   _MnAdd:movq     $mnadd,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MnQTx   get menu item text                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HMENU                              Гл
          Г   RDX   menu item ID or index              Гл
          Г   R08   buffer EA                          Гл
          Г   R09          size                        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   RC from API (see Windows docs)     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _MnQTx
          .def     _MnQTx; .scl 2; .type 32; .endef
   _MnQTx:movq     $mnqtx,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MnSTx   set menu item text                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HMENU                              Гл
          Г   RDX   menu item ID or index              Гл
          Г   R08   EA text buffer                     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   RC from API (see Windows docs)     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _MnSTx
          .def     _MnSTx; .scl 2; .type 32; .endef
   _MnSTx:movq     $mnstx,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MnuCk   check/uncheck menu item            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HMENU                              Гл
          Г   RDX   menu item ID (no index allowed!)   Гл
          Г   R08   0 uncheck, 1 check                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   RC from API (see Windows docs)     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _MnuCk
          .def     _MnuCk; .scl 2; .type 32; .endef
   _MnuCk:movq     $mnuck,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г MnuEn   enable/disable menu item           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HMENU                              Гл
          Г   RDX   menu item ID or index              Гл
          Г   R08   0 disable, 1 enable                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   RC from API (see Windows docs)     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _MnuEn
          .def     _MnuEn; .scl 2; .type 32; .endef
   _MnuEn:movq     $mnuen,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г distributor                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:subq     $0xF8,%rsp
          nop
          nop
          movq     %rbp, 0x88(%rsp)
          movq     %rsi, 0x90(%rsp)
          movq     %rdi, 0x98(%rsp)
          movdqa   %xmm5,0xA0(%rsp)
          movdqa   %xmm4,0xB0(%rsp)
          movq     %rbx, 0xC0(%rsp)
          movq     %r11, 0xC8(%rsp)
          movq     %r10, 0xD0(%rsp)
          movq     %r9,  0xD8(%rsp)
          movq     %r8,  0xE0(%rsp)
          movq     %rdx, 0xE8(%rsp)
          movq     %rcx, 0xF0(%rsp)
          movq     %r8,  %rbp                           # RBP = R08 (EA or flags)
          movq     %rdx, %rsi                           # RSI = ID  (or index)
          jmp      *%rax
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                             C E N T E R   W I N D O W                              Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г center window inside parent window         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
    ctrwn:movq     %rcx, %rbp                   # RSI = HWND myself
          movl     $0x04,%edx                   # RDX = GW_OWNER (parent)
          call     *__imp__GetWindow(%rip)
          movq     %rax, %rdi                   # RDI = HWND parent
          movq     %rbp, %rcx                   # RCX = myself HWND
          leaq     0x40(%rsp),%rdx              # RDX =        RECTL
          call     *__imp__GetWindowRect(%rip)
          movq     %rdi, %rcx                   # RCX = parent HWND
          leaq     0x50(%rsp),%rdx              # RDX =        RECTL
          call     *__imp__GetWindowRect(%rip)
          movl     0x40(%rsp),%eax              # EAX = xChi
          movl     0x44(%rsp),%ebx              # EBX = cyChi
          movl     0x48(%rsp),%ecx              # ECX = cxChi
          movl     0x4C(%rsp),%edx              # EDX = yChi
          movl     0x50(%rsp),%r8d              # R08 = xPar
          movl     0x54(%rsp),%r9d              # R09 = cyPar
          movl     0x58(%rsp),%r10d             # R10 = cxPar
          movl     0x5C(%rsp),%r11d             # R11 = yPar
          subl     %r8d, %r10d                  # R10 = Wpar
          subl     %eax, %ecx                   # ECX = Wchi
          subl     %r9d, %r11d                  # R11 = Hpar
          subl     %ebx, %edx                   # EDX = Hchi
          subl     %ecx, %r10d                  # R10 = xdif
          subl     %edx, %r11d                  # R11 = ydif
          shrl     %r10d                        # R10 = xdif/2
          shrl     %r11d                        # R11 = ydif/2
          pxor     %xmm0,%xmm0
          movq     %rbp, %rcx                   # RCX = myself HWND
          xorl     %edx, %edx                   # RDX = HWND_TOP
          addl     %r10d,%r8d                   # R08 = xnew
          addl     %r11d,%r9d                   # R09 = cynew
          movdqa   %xmm0,0x20(%rsp)             # cx + y
          movq     $0x01,0x30(%rsp)             # SWP_NOSIZE
          call     *__imp__SetWindowPos(%rip)
          jmp      XITZ
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                       B U T T O N S  &  C H E C K B O X E S                        Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г (de)select button                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     sbtn:movl     $0xF3,%r8d                   # R08 = BM_SETSTATE
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г query checkbutton state                    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     qckb:movl     $0xF0,%r8d                   # R08 = BM_GETCHECK
          xorq     %rbp,%rbp
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set checkbox state                         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     sckb:movl     $0xF1,%r8d                   # R08 = BM_SETCHECK
        0:movl     %ebp, %r9d                   # R09 = flags
          movq     $0x00,0x20(%rsp)             # NULL
          call     *__imp__SendDlgItemMessageA(%rip)
          jmp      XITC
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                                     M E N U S                                      Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г retrieve HMENU                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    gtmnu:call     *__imp__GetMenu(%rip)
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г get menu item information                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    getmi:call     *__imp__GetMenuItemInfoA(%rip)
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set menu item information                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    setmi:call     *__imp__SetMenuItemInfoA(%rip)
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г delete menu item                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    mndel:call     *__imp__DeleteMenu(%rip)
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г insert menu item                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    mnadd:call     *__imp__InsertMenuItemA(%rip)
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г get menu item text                         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    mnqtx:xorl     %eax,   %eax                         # RAX = MF_BYCOMMAND
          movl     $0x0400,%ebx                         # RBX = MF_BYPOSITION
          cmpl     $0x1000,%edx                         # valid ID?
          cmovae   %eax,   %ebx                         # use MF_BYCOMMAND
          movq     %rbx,   0x20(%rsp)                   # MF_*
          call     *__imp__GetMenuStringA(%rip)
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set menu item text                         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    mnstx:xorl     %eax,   %eax                         # RAX = MF_BYCOMMAND
          movl     $0x0400,%r8d                         # R08 = MF_BYPOSITION
          pxor     %xmm0,  %xmm0                        # XM0 = 0
          cmpl     $0x1000,%edx                         # valid ID?
          cmovae   %eax,   %r8d                         # use MF_BYCOMMAND
          leaq     0x20(%rsp),%r9                       # R09 = EA MENUITEMINFO
          movl     $0x48,  0x20(%rsp)                   # sizeof(MENUITEMINFO)
          movl     $0x0140,0x24(%rsp)                   # MIIM_STRING + MIIM_FTYPE
          movq     %rax,   0x28(%rsp)                   # MFT_STRING  + MFS_ENABLED
          movq     %rdx,   0x30(%rsp)                   # resource ID
          movq     %rax,   0x38(%rsp)                   # HWND       = NULL
          movdqa   %xmm0,  0x40(%rsp)                   # HBITMAP = NULL, HBITMAP = NULL
          movq     %rax,   0x50(%rsp)                   # dwItemData = NULL
          movq     %rbp,   0x58(%rsp)                   # dwTypeData = EA string
          movdqa   %xmm0,  0x60(%rsp)                   # cch = 0, HBITMAP = NULL
          call     *__imp__SetMenuItemInfoA(%rip)
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г check/uncheck menu item                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г NOTE: Submenus should never be checked, so Гл
          Г       MF_BYCOMMAND is forced if the passed Гл
          Г       flag is anything else than zero.     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    mnuck:movl     $0x08,%eax
          testl    %ebp, %ebp
          cmovne   %eax, %r8d
          call     *__imp__CheckMenuItem(%rip)
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г enable/disable menu item                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г NOTE: To distinguish between menuitems and Гл
          Г       submenus, the ID is treated as index Гл
          Г       if it is below 0x1000. In this case, Гл
          Г       MF_BYPOSITION is used. All other IDs Гл
          Г       automatically select MF_BYCOMMAND.   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
    mnuen:xorl     %eax,   %eax                         # RAX = 0000
          movl     $0x0003,%ebx                         # RBX = MF_DISABLED + MF_GRAYED
          movl     $0x0400,%r8d                         # R08 = MF_BYPOSITION
          cmpl     $0x1000,%edx                         # ID < 0x1000?
          cmovae   %eax,   %r8d                         # R08 = MF_BYCOMMAND
          testl    %ebp,   %ebp                         # enable?
          cmovne   %eax,   %ebx                         # RBX = MF_ENABLE
          addl     %ebx,   %r8d                         # R08 = flags
          call     *__imp__EnableMenuItem(%rip)
          jmp      XITC
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                            R A N D O M   N U M B E R S                             Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г RAND    ST-Open random number generator    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г->       nothing                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   random number 0 ... (2e64 - 1)     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _RAND
          .def     _RAND; .scl 2; .type 32; .endef
    _RAND:subq     $0xF8,%rsp
          nop
          nop
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          rdtsc                                 # ~71 (69-90) clocks
          movl     %eax,%ecx                    # RCX = lo_D
          movl     %eax,%r8d                    # R08 = lo_D
          movl     %edx,%r9d                    # R09 = hi_D
          andl     $0x3F,%ecx                   # RCX = 00...3F
          shlq     $0x20,%r8                    # R08 = lo_D 0000
          shlq     $0x20,%r9                    # R09 = hi_D 0000
          shlq     $0x20,%rdx                   # RDX = hi_D 0000
          addq     %rdx,%r8                     # R08 = lo_D hi_D
          addq     %rax,%r9                     # R09 = hi_D lo_D
          addq     %rdx,%rax                    # RAX = hi_D lo_D
          rorq     %cl, %r8                     # E08 = LH>
          rolq     %cl, %r9                     # E08 = HL<
          rorq     %cl, %rax                    # RAX = HL>
          addq     %r8, %r9                     # R09 = LH> + HL<
          addq     %r9, %rax                    # RAX = LH> + HL> XOR HL<
          jmp      XIT4
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г RND     random numbers between MIN and MAX Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   lower limit                        Гл
          Г   RDX   upper limit                        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   random number between lo and hi    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _RND
          .def     _RND; .scl 2; .type 32; .endef
     _RND:subq     $0xF8,%rsp
          nop
          nop
          movq     %r11,0xC8(%rsp)
          movq     %r10,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          movq     %rcx,%r8                     # R08 = min
          movq     %rdx,%r9                     # R09 = max
          movq     %rcx,%r10                    # R10 = min
          movq     %rdx,%r11                    # R11 = max
          rdtsc                                 # ~71 (69-90) clocks
          cmpq     %r10,%r11                    # min > max?
          cmova    %r9, %r10                    # exchange
          cmova    %r8, %r11
          movl     %eax,%ecx                    # RCX = lo_D
          movl     %edx,%r9d                    # R09 = hi_D
          movl     %eax,%r8d                    # R08 = lo_D
          xorl     %edx,%edx                    # DIV!
          shrq     $0x20,%r9                    # R08 = hi_D 0000
          andl     $0x3F,%ecx                   # RCX = 00...3F
          addq     %r9, %rax                    # RAX = hi_D lo_D
          shrl     $0x1A,%r8d                   # R08 = 00...3F
          rorq     %cl, %rax                    # RAX = RND
          movl     %r8d,%ecx                    # RCX = s_factor 2
          subq     %r10,%r11                    # R11 = MAX - MIN
          rolq     %cl, %rax                    # RAX = RND
          divq     %r11                         # RND / (MAX - MIN)
          addq     %rdx,%r10                    # min + remainder
          movq     %r10,%rax                    # RAX = min + remainder
          jmp      XIT6
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                                       R I S                                        Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г RISempt clear work area                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г->       nothing                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   always zero                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _RISempt
          .def     _RISempt; .scl 2; .type 32; .endef
 _RISempt:movq     _BNR(%rip),%rax              # EAX = BNR
          pxor     %xmm0,%xmm0
          movdqa   %xmm0,PERC_X(%rax)           # clear RIS area
          movdqa   %xmm0,PIXL_X(%rax)
          xorl     %eax,%eax
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г RISmain gets values for the main window    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г->       nothing                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   always zero                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _RISmain
          .def     _RISmain; .scl 2; .type 32; .endef
 _RISmain:movq     _BNR(%rip),%rax              # EAX = BNR
          movdqa   RIS_CX(%rax),%xmm0           # XM0 = current config
          movdqa   %xmm0,PERC_X(%rax)           # store as temp percent
          jmp 0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г prc2pix convert percent to pixel           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г->       nothing                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   always zero                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl    _prc2pix
          .def      _prc2pix; .scl 2; .type 32; .endef
 _prc2pix:movq      _BNR(%rip),%rax
        0:cvtdq2ps  SCN_W0(%rax),%xmm0          # XM0 = WHWH
          cvtdq2ps  PERC_X(%rax),%xmm2          # XM2 = xywh (percent)
          cvtdq2ps  LC00(%rip),%xmm1            # XM1 = 4 * 10000
          mulps     %xmm2,%xmm0                 # xywh * WHWH
          divps     %xmm1,%xmm0                 # all / 10000
          cvttps2dq %xmm0,%xmm1                 # convert
          movdqa    %xmm1,PIXL_X(%rax)          # store pixel
          xorl      %eax,%eax
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г pix2prc convert pixel to percent           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г->       nothing                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   always zero                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl    _pix2prc
          .def      _pix2prc; .scl 2; .type 32; .endef
 _pix2prc:movq      _BNR(%rip),%rax
          cvtdq2ps  SCN_W0(%rax),%xmm0          # XM0 = WHWH
          cvtdq2ps  PIXL_X(%rax),%xmm2          # XM2 = xywh (pixel)
          cvtdq2ps  LC00(%rip),%xmm1            # XM1 = 4 * 10000
          divps     %xmm0,%xmm2                 # xywh / WHWH
          mulps     %xmm1,%xmm2                 # all * 10000
          cvttps2dq %xmm2,%xmm1                 # convert
          movdqa    %xmm1,PERC_X(%rax)          # store percent
          xorl      %eax,%eax
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г common exit                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     XITZ:xorl     %eax,%eax
     XITC:movq     0x88(%rsp),%rbp
          movq     0x90(%rsp),%rsi
          movq     0x98(%rsp),%rdi
          movdqa   0xA0(%rsp),%xmm5
          movdqa   0xB0(%rsp),%xmm4
          movq     0xC0(%rsp),%rbx
     XIT6:movq     0xC8(%rsp),%r11
          movq     0xD0(%rsp),%r10
     XIT4:movq     0xD8(%rsp),%r9
          movq     0xE0(%rsp),%r8
          movq     0xE8(%rsp),%rdx
          movq     0xF0(%rsp),%rcx
          addq     $0xF8,%rsp
          ret
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BNR,       8, 3
          .comm    _HINST,     8, 3
