          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                          L A N G U A G E   S U P P O R T                           Кл
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
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г The definition for all language fields is:                                         Гл
          Г                                                                                    Гл
          Г always  :   subfield  00        English (fallback for multilangual apps)           Гл
          Г             subfields 01...0F   up to 15 translations                              Гл
          Г                                                                                    Гл
          Г default :   subfield  10        resource IDs           (menu and window texts)     Гл
          Г                                                                                    Гл
          Г optional:   subfield  10        English second strings (help and topic  texts)     Гл
          Г             subfields 11...1F   up to 15 translations  (help and topic  texts)     Гл
          Г                                                                                    Гл
          Г If more than 15 languages are supported by your application:                       Гл
          Г                                                                                    Гл
          Г 1. Copy the selected language's fields FFFFFF12 and FFFFFF13 to the DATA folder.   Гл
          Г 2. Copy the selected language's fields err.dat, hlp.dat, nsm.dat and top.dat to    Гл
          Г    the SYST folder.                                                                Гл
          Г                                                                                    Гл
          Г Keep original language fields in separate folders. Overwrite fields in DATA / SYST Гл
          Г with copies taken from the selected language folder. A system function is planned, Гл
          Г but there's too much other work, so it might take some time...                     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
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
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г  M N U t x t               S E T   M E N U   T E X T S                             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г CALL   - MNUtxt(hwnd, first, last);                                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г INPUT  > RCX  hmenu       menu handle                                              Гл
          Г          RDX  first       first entry (in field FFFFFF12)                          Гл
          Г          R08  last        last entry  (in field FFFFFF12)                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г OUTPUT < RAX  0000 0000   ok                                                       Гл
          Г               0000 000A   ERR_PAR_BELOW (last below first)                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г The language is defined with STV_USR_LANGUAGE (Cxx) or _USRLNG (assembler). Please Гл
          Г read the HTML tutorial 'Language Support' for more information.                    Гл
          Г                                                                                    Гл
          Г MNUtxt() sets (last - first) menu items in the menu assigned to hwnd. The resource Гл
          Г IDs are taken from sub-field #10. Any entry is ignored if its resource ID is zero. Гл
          Г If a resource ID is present, but the text is an empty string, the menu item is re- Гл
          Г moved from this menu, avoiding empty menu items. If last is -equal- to first, only Гл
          Г one menu item (specified by the first entry) is set.                               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _MNUtxt
          .def     _MNUtxt; .scl 2; .type 32; .endef
  _MNUtxt:movq     $mnutxt,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г  D L G t x t             S E T   D I A L O G   T E X T S                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г CALL   - DLGtxt(hwnd, title, first, last);                                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г INPUT  > RCX  hwnd        dialog window's HWND                                     Гл
          Г          RDX  title       title entry (field FFFFFF12 / FFFFFF13)                  Гл
          Г          R08  first       first entry (field FFFFFF12 / FFFFFF13)                  Гл
          Г          R09  last        last entry  (field FFFFFF12 / FFFFFF13)                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г OUTPUT < RAX  0000 0000   ok                                                       Гл
          Г               **** ****   errors returned by called functions                      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Language is determined by USRLNG[BNR]. 16 languages are recognised by DLGtxt() for Гл
          Г now. If more than 16 languages are required, you have to provide multiple versions Гл
          Г of fields FFFFFF12 (user) and FFFFFF13 (system) in a separate folder and copy user Гл
          Г requested languages (the corresponding fields) to the DATA folder on demand.       Гл
          Г                                                                                    Гл
          Г DLGtxt() sets the title and (last - first) window texts in the dialog window hwnd. Гл
          Г The resource IDs are taken from subfield #10. If a resource ID is zero, this entry Гл
          Г is ignored. The number of the window title has to be passed on its own (titles use Гл
          Г another API call). If you want to display just a title, set first to something be- Гл
          Г low last to force a negative loop count.                                           Гл
          Г                                                                                    Гл
          Г The entry number for [title] is completely independent from [first] and [last]. It Гл
          Г can be any entry in field FFFFFF12, while [first] and [last] are treated as conti- Гл
          Г nuous chain of entries (beginning at [first], ending with [last]).                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г NOTE: If DLG_TY is not zero, DLGtxt() loads field FFFFFF13 (system). There is *no* Гл
          Г       reason to set DLG_TY (except you want to show system dialogs on your own).   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _DLGtxt
          .def     _DLGtxt; .scl 2; .type 32; .endef
  _DLGtxt:movq     $dlgtxt,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г  ErrMgr                    E r r o r   H a n d l i n g                             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г CALL   - ErrMgr(error);                                                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г INPUT  > RCX  error       error number as defined in HERR.H                        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г OUTPUT < RAX  0000 0000   Loader not available or ERR_NO_ERROR                     Гл
          Г               0000 0001   user pushed button 1                                     Гл
          Г               0000 0002                      2                                     Гл
          Г               0000 0003                      3                                     Гл
          Г               **** ****   invalid - numbers above 3 should never be returned!      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _ErrMgr
          .def     _ErrMgr; .scl 2; .type 32; .endef
  _ErrMgr:movq     $errmgr,%rax
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                             ErrMgr() DIALOG PROCEDURE                              Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г CALL   - DO NOT CALL THIS INTERNAL FUNCTION!                                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г INPUT  > RCX  HWND                                                                 Гл
          Г          RDX  message                                                              Гл
          Г          R08  lParam                                                               Гл
          Г          R09  wParam                                                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г OUTPUT < RAX  **** ****   depends on message                                       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г The global variable ERR_TY determines which messages are loaded. If it is not set, Гл
          Г SyMsg() loads the application messages "nsm.dat" and opens a dialog with dark blue Гл
          Г background. If ERR_TY is not zero, system messages "err.dat" are loaded and a dia- Гл
          Г log with dark red background is opened.                                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г SyMsg() can be fed with one optional string and up to four numeric values:         Гл
          Г                                                                                    Гл
          Г STV_MSG_ADDR   EA of the string to be displayed                                    Гл
          Г STV_MSG_VAR1   number to be displayed as parameter 1                               Гл
          Г STV_MSG_VAR2                                       2                               Гл
          Г STV_MSG_VAR3                                       3                               Гл
          Г STV_MSG_VAR4                                       4                               Гл
          Г STV_MSG_FLAG   control flags:                                                      Гл
          Г                               MSG_VAR1_ON    0x00000001   show variable 1          Гл
          Г                               MSG_VAR2_ON    0x00000002   show variable 2          Гл
          Г                               MSG_VAR3_ON    0x00000004   show variable 3          Гл
          Г                               MSG_VAR4_ON    0x00000008   show variable 4          Гл
          Г                                                                                    Гл
          Г If the optional parameters are omitted, no additional info is displayed. Variables Гл
          Г are cleared after all parameters are written to screen.                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г If the message is an empty string or the message number multiplied by four exceeds Гл
          Г the amount of entries defined in the field header, SyMsg() shows entry number zero Гл
          Г by default ("message unknown or passed message number out of range").              Гл
          Г                                                                                    Гл
          Г If message 0 contains an empty string, SyMsg() displays a quite lonesome OK button Гл
          Г in an empty dialog box. It is recommended to set message 0 to the standard message Гл
          Г text mentioned in the last paragraph...                                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г If a button text is an empty string, the button is hidden. Because the user has no Гл
          Г chance to close the dialog if no buttons are displayed, SyMsg() automatically adds Гл
          Г an OK button if all three button texts are empty strings.                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     SyMsg; .scl 2; .type 32; .endef
    SyMsg:movq     $errprc,%rax
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                               D I S T R I B U T O R                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г This distributor catches calls to MNUtxt(), DLGtxt() and ErrMgr() if the Loader is Гл
          Г not available, yet. This might be neccessary if an application moves LDinit() down Гл
          Г below the window creation. In this case, MNUtxt(), DLGtxt() and ErrMgr() will fail Гл
          Г with ERR_LDR_ERROR without performing the requested action.                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
        0:negl     _LDR_AVAIL(%rip)             # loader active?
          jne      1f
          movl     $0x10,%eax                   # ERR_LDR_ERROR
          ret
          .p2align 4,,15
        1:subq     $0xF8,%rsp
          nop
          nop
          movq     %r12,0xA0(%rsp)
          movq     %rbp,0xA8(%rsp)
          movq     %rsi,0xB0(%rsp)
          movq     %rdi,0xB8(%rsp)
          movq     %rbx,0xC0(%rsp)
          movq     %r11,0xC8(%rsp)
          movq     %r10,0xD0(%rsp)
          movq     %r9, 0xD8(%rsp)
          movq     %r8, 0xE0(%rsp)
          movq     %rdx,0xE8(%rsp)
          movq     %rcx,0xF0(%rsp)
          movq     _BNR(%rip),%rsi              # RSI = BNR
          jmp      *%rax
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                                  M N U t x t ( )                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RCX   HWND                                                                         Гл
          Г RDX   first entry                                                                  Гл
          Г R08   last entry                                                                   Гл
          Г RSI   BNR                                                                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г NOTE: Menus are application-specific controls. It is -strongly- recommended to use Гл
          Г entries 00 and up, corresponding to the hierarchy of your menuitems. No popup menu Гл
          Г has an identifier, so MNUtxt() has to set menu texts the complicated way. You have Гл
          Г to start with the texts for the main menu, followed by the texts for the submenus. Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   mnutxt:movq     %rcx,%rbp                    # RBP = HWND parent
          movl     %edx,%ebx                    # RBX = first entry
          movl     %r8d,%edi                    # RDI = last  entry
          movl     $0x0A,%eax                   # RAX = ERR_PAR_BELOW
          movl     USRLNG(%rsi),%edx            # RDX = STV_USR_LANGUAGE
          leaq     0x20(%rsp),%rcx              # RCX = LD
          pxor     %xmm0,%xmm0
          subl     %ebx,%edi                    # RDI = cnt
          js       XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set LD structure       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movdqa   %xmm0,0x20(%rsp)
          movl     $0xFFFFFF12,0x30(%rsp)       # LD.FldNr = FFFFFF12
          movl     $0x00000021,0x34(%rsp)       # LD.LdCtl = r, static
          movq     %xmm0,0x38(%rsp)
          movdqa   %xmm0,0x40(%rsp)
          movdqa   %xmm0,0x50(%rsp)
          movdqa   %xmm0,0x60(%rsp)
          movdqa   %xmm0,0x70(%rsp)
          andl     $0x0F,%edx                   # EDX = 00...0F
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г load field FFFFFF12    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          call     _LDreq
          movq     0x20(%rsp),%r10              # R10 = EA field
          movq     0x38(%rsp),%r11              # R11 = MemHandle
          testl    %eax,%eax                    # failed?
          jne      XITC
          movl     0x60(%r10, %rdx, 4),%esi     # RSI = offset string OT
          movl     0xA0(%r10),%r12d             # R12 =        IDs
          addq     %r10,%r12                    # R12 = EA IDs
          addq     %r10,%rsi                    # RSI = EA string OT
          movq     %rbp,%rcx                    # RCX = HWND
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set menu texts         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        0:movl     0x00(%r12, %rbx, 4),%edx     # RDX = ID
          movl     0x00(%rsi, %rbx, 4),%r8d     # R08 = offset string
          testl    %edx,%edx                    # zero ID?
          je       2f
          testl    %r8d,%r8d                    # empty string?
          je       1f
          addq     %r10,%r8                     # R08 = EA string
          call     _MnSTx
          jmp      2f
        1:call     _MnDel
        2:incl     %ebx                         # next entry
          decl     %edi                         # cnt--
          jns      0b
          movq     %r11,%rcx                    # RCX = MemHandle
          call     _LDfre
          jmp      XITZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                                  D L G t x t ( )                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RCX   HWND       RSI   BNR                                                         Гл
          Г RDX   title                                                                        Гл
          Г R08   first                                                                        Гл
          Г R09   last                                                                         Гл
          Г RSI   BNR                                                                          Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   dlgtxt:movq     %rcx,%rbp                    # RBP = HWND parent
          movl     %edx,%ebx                    # RBX = title
          movl     %r8d,%edi                    # RDI = first entry
          pxor     %xmm0,%xmm0                  # XM0 = 0
          xorl     %eax,%eax                    # RAX = 0
          movl     $0xFFFFFF12,%r10d            # R10 = LD.FldNr (user)
          movl     $0xFFFFFF13,%r11d            # R11 =          (system)
          movl     USRLNG(%rsi),%edx            # RDX = STV_USR_LANGUAGE
          negl     DLG_TY(%rsi)                 # STV_DLG_TEXT = user?
          cmove    %r10,%r11                    # R11 = field number
          leaq     0x20(%rsp),%rcx              # RCX = LD
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set LD structure       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movdqa   %xmm0,0x20(%rsp)
          movl     %r11d,0x30(%rsp)             # LD.FldNr = FFFFFF12/13
          movl     $0x21,0x34(%rsp)             # LD.LdCtl = r, static
          movq     %rax, 0x38(%rsp)
          movdqa   %xmm0,0x40(%rsp)
          movdqa   %xmm0,0x50(%rsp)
          movdqa   %xmm0,0x60(%rsp)
          movdqa   %xmm0,0x70(%rsp)
          andl     $0x0F,%edx                   # EDX = 00...0F
          movl     %eax ,DLG_TY(%rsi)           # reset DLG_TY
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г load field FFFFFF12/13 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          call     _LDreq
          movq     0x20(%rsp),%r10              # R10 = EA field
          movq     0x38(%rsp),%r11              # R11 = MemHandle
          testl    %eax,%eax                    # failed?
          jne      XITC
          movl     0x60(%r10, %rdx, 4),%esi     # RSI = offset string OT[lang]
          movl     0xA0(%r10),%r12d             # R12 =        IDs
          movl     %r8d,%ebx                    # RBX = first
          addq     %r10,%rsi                    # RSI = EA string OT
          addq     %r10,%r12                    # R12 =    IDs
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set texts              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movl     0x00(%rsi, %rbx, 4),%edx     # RDX = offset title
          movq     %rbp,%rcx                    # RCX = HWND
          addq     %r10,%rdx                    # RDX = EA title
          call     _WnSTx
          subl     %edi,%r9d                    # R09 = cnt
          js       2f
        0:movl     0x00(%rsi, %rdi, 4),%r8d     # R08 = offset string
          movl     0x00(%r12, %rdi, 4),%edx     # RDX = ID
          incl     %edi                         # next entry
          addq     %r10,%r8                     # R08 = EA string
          testl    %edx,%edx                    # zero ID?
          je       1f
          call     _WnSDT
        1:decl     %r9d
          js       0b
        2:movq     %r11,%rcx                    # RCX = MemHandle
          call     _LDfre
          jmp      XITZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                                  E r r M g r ( )                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RCX  error                                                                         Гл
          Г RSI  BNR                                                                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   errmgr:movl     %ecx,MSGRPL(%rsi)            # STV_MSG_REPLY
          testl    %ecx,%ecx                    # error = 0?
          je       XITZ
          leaq     SyMsg(%rip),%rcx             # RCX = PFNWP
          leaq     LC3(%rip),%rdx               # RDX = ID
          call     _DBox
          movl     MSGRPL(%rsi),%eax            # get RC
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                                  E r r P r c ( )                                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RCX  HWND                                                                          Гл
          Г RDX  message                                                                       Гл
          Г R08  lParam                                                                        Гл
          Г R09  wParam                                                                        Гл
          Г RSI  BNR                                                                           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
   errprc:movq     %rcx,%rdi                    # RDI = HWND
          andl     $0xFFFF,%r8d                 # R08 = ID
          subl     $0x0111,%edx                 # WM_COMMAND?
          je       L02
          incl     %edx                         # WM_INITDIALOG?
          jne      XITZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_INITDLG                       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллл
          */
          movl     $0xFFFFFFF9,%eax             # RBX  = FFFFFFF9 (system)
          movl     $0xFFFFFFF5,%ebx             # RBX  = FFFFFFF5 (user)
          pxor     %xmm0,%xmm0
          negl     ERR_TY(%rsi)                 # STV_ERR_TYPE = 0?
          cmove    %ebx,%eax                    # EAX = field number
          leaq     0x20(%rsp),%rcx              # RCX  = LD
          movl     MSGRPL(%rsi),%ebx            # RBX  = msg number
          movl     USRLNG(%rsi),%edx            # RDX = language
          movdqa   %xmm0,0x20(%rsp)
          movl     %eax, 0x30(%rsp)             # LD.FldNr
          movl     $0x21,0x34(%rsp)             # LD.LdCtl (r, static)
          movq     %xmm0,0x38(%rsp)
          movdqa   %xmm0,0x40(%rsp)
          movdqa   %xmm0,0x50(%rsp)
          movdqa   %xmm0,0x60(%rsp)
          call     _LDreq
          movq     0x20(%rsp),%rcx              # RCX = EAmsg
          incl     %ebx                         # msg00 is entry 4
          andl     $0x0F,%edx                   # make language valid
          testl    %eax,%eax
          jne      L00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г get text offsets       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          shll     $0x02,%ebx                   # RBX = msg * 4
          movl     0x60(%rcx, %rdx, 4),%r9d     # R09 = OFsub
          movq     0x38(%rsp),%rbp              # RBP = MHmsg
          movl     $0x01,%edx                   # RDX = flag
          cmpl     0x3C(%rcx),%ebx              # out of range?
          cmovae   %eax,%ebx                    # use default
          addq     %rcx,%r9                     # R09 = EAsub
          movl     0x00(%r9, %rbx, 4),%eax      # RAX = msg
          movl     0x04(%r9, %rbx, 4),%r10d     # R10 = btn1
          movl     0x08(%r9, %rbx, 4),%r11d     # R11 = btn2
          movl     0x0C(%r9, %rbx, 4),%r12d     # R12 = btn3
          testl    %eax,%eax                    # msg empty?
          cmove    0x00(%r9, %rbx, 4),%eax      # RAX = msg
          leaq     LC1(%rip),%rbx               # RBX = EA OK
          addq     %rcx, %rax                   # RAX = EA txtmsg
          movl     %r10d,%edx                   # RDX = sum[offsets]
          addq     %rcx, %r10                   # R10 = EA txtbtn1
          addl     %r11d,%edx                   # RDX = sum[offsets]
          addq     %rcx, %r11                   # R11 = EA txtbtn2
          addl     %r12d,%edx                   # RDX = sum[offsets]
          addq     %rcx, %r12                   # R12 = EA txtbtn3
          testl    %edx, %edx                   # all empty?
          cmove    %rbx, %r11                   # R11 = OK
          movq     %rcx, %rbx                   # RBX = EAmsg
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г set message + buttons  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     %rdi,%rcx                    # RCX = HWND
          movl     $0x08D0,%edx                 # RDX = ID MLE
          movq     %rax,%r8
          call     _WnSDT
          incl     %edx                         # RDX = ID BTN 1
          cmpq     %rbx,%r10
          jne      0f
          xorl     %r8d,%r8d                    # R08 = hide
          call     _CtlSh
          jmp      1f
        0:movq     %r10,%r8
          call     _WnSDT
        1:incl     %edx                         # RDX = ID BTN 2
          cmpq     %rbx,%r11
          jne      2f
          xorl     %r8d,%r8d                    # R08 = hide
          call     _CtlSh
          jmp      3f
        2:movq     %r11,%r8
          call     _WnSDT
        3:incl     %edx                         # RDX = ID BTN 3
          cmpq     %rbx,%r12
          jne      4f
          xorl     %r8d,%r8d                    # R08 = hide
          call     _CtlSh
          jmp      5f
        4:movq     %r12,%r8
          call     _WnSDT
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г unload field           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
        5:movq     %rbp,%rcx                    # RCX = MH
          call     _LDfre
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г display parameters     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          movq     MSG_V1(%rsi),%rcx            # RCX = MSG_V1
          leaq     SMSGBF(%rsi),%rdx            # RDX = EA buffer
          xorl     %r8d,%r8d                    # R08 = 20 digits unsigned
          call     _Q2hex
          addq     $0x20,%rdx
          call     _Q2dec
          movq     MSG_V2(%rsi),%rcx            # RCX = MSG_V2
          addq     $0x20,%rdx
          call     _Q2hex
          addq     $0x20,%rdx
          call     _Q2dec
          movq     MSG_V3(%rsi),%rcx            # RCX = MSG_V3
          addq     $0x20,%rdx
          call     _Q2hex
          addq     $0x20,%rdx
          call     _Q2dec
          movq     MSG_V4(%rsi),%rcx            # RCX = MSG_V4
          addq     $0x20,%rdx
          call     _Q2hex
          addq     $0x20,%rdx
          call     _Q2dec
          movq     %rdi,%rcx                    # RCX = HWND
          movl     $0x08D8,%edx                 # RDX = ID V1hex
          leaq     SMSGBF(%rsi),%r8             # R08 = EA buffer
          movl     $0x08,%ebx                   # RBX = cnt
        6:call     _WnSDT
          incl     %edx
          addq     $0x20,%r8
          decl     %ebx
          jne      6b
          movq     MSGADR(%rsi),%r8             # R09 = MSGADR
          call     _WnSDT
          jmp      L01
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г load failed            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L00:movq     %rdi,%rcx
          movl     $0x08D8,%edx
          leaq     LC0(%rip),%r8                # 'nsm.dat / err.dat?'
          call     _WnSDT
          incl     %edx                         # BTN 1
          xorq     %r8,%r8                      # hide
          call     _CtlSh
          incl     %edx                         # BTN 2
          leaq     LC1(%rip),%r8                # 'O K'
          call     _WnSDT
          incl     %edx                         # BTN 3
          xorq     %r8,%r8                      # hide
          call     _CtlSh
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФП
          Г clear parameters       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L01:pxor     %xmm0,%xmm0
          movdqa   %xmm0,MSGADR(%esi)           # reset MSGADR, MSG_V1
          movdqa   %xmm0,MSG_V2(%esi)           #       MSG_V2, MSG_V3
          movdqa   %xmm0,MSG_V4(%esi)           #       MSG_V4, MSGRPL, ERR_TY
          call     _CtrWn
          movl     $0x01,%eax
          jmp      XITC
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WM_COMMAND                       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      L02:subl     $0x08D0,%r8d
          jbe      XITZ
          cmpl     $0x03,%r8d
          ja       XITZ
          movl     %r8d,MSGRPL(%esi)
          movq     %rdi,%rcx
          call     _KillDlg
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                               C O M M O N   E X I T                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     XITZ:xorl     %eax,%eax
     XITC:movq     0xA0(%esp),%r12
          movq     0xA8(%esp),%rbp
          movq     0xB0(%esp),%rsi
          movq     0xB8(%esp),%rdi
          movq     0xC0(%esp),%rbx
          movq     0xC8(%esp),%r11
          movq     0xD0(%esp),%r10
          movq     0xD8(%esp),%r9
          movq     0xE0(%esp),%r8
          movq     0xE8(%esp),%rdx
          movq     0xF0(%esp),%rcx
          addq     $0xF8,%rsp
          ret
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BNR,       8, 3
          .comm    _LDR_AVAIL, 8, 3
