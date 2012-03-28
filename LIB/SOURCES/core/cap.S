          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                    W R A P P E R S   (C) ST-Open 2012
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
            To reduce the size of this library, all functions use a common prologue and epilo-
            gue. This technique offers a good compromise between required size and performance
            issues. It was improved throughout the last two years towards reliability and high
            speed. Remember that we have to preserve eight registers for each Win64 API call.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          .text

          .p2align 4,,15
          .globl   _RegClass
          .def     _RegClass; .scl 2; .type 32; .endef
_RegClass:movq        $rclass,       %rax
          jmp         0f

          .p2align 4,,15
          .globl   _RgClassX
          .def     _RgClassX; .scl 2; .type 32; .endef
_RgClassX:movq     $rclssx,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _LdIcon
          .def     _LdIcon; .scl 2; .type 32; .endef
  _LdIcon:movq     $ldicon,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _LdCursor
          .def     _LdCursor; .scl 2; .type 32; .endef
_LdCursor:movq     $ldcurs,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _GtStkObj
          .def     _GtStkObj; .scl 2; .type 32; .endef
_GtStkObj:movq     $gstkob,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnCreate
          .def     _WnCreate; .scl 2; .type 32; .endef
_WnCreate:movq     $wncrea,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnCreatX
          .def     _WnCreatX; .scl 2; .type 32; .endef
_WnCreatX:movq     $wncrex,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _KillWin
          .def     _KillWin; .scl 2; .type 32; .endef
 _KillWin:movq     $wnkill,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _KillDlg
          .def     _KillDlg; .scl 2; .type 32; .endef
 _KillDlg:movq     $disdlg,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _GetMsg
          .def     _GetMsg; .scl 2; .type 32; .endef
  _GetMsg:movq     $getmsg,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _PeekMsg
          .def     _PeekMsg; .scl 2; .type 32; .endef
 _PeekMsg:movq     $peemsg,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _TrnsMsg
          .def     _TrnsMsg; .scl 2; .type 32; .endef
 _TrnsMsg:movq     $tnsmsg,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _DispMsg
          .def     _DispMsg; .scl 2; .type 32; .endef
 _DispMsg:movq     $dismsg,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _DefWP
          .def     _DefWP; .scl 2; .type 32; .endef
   _DefWP:movq     $defwin,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _DefDP
          .def     _DefDP; .scl 2; .type 32; .endef
   _DefDP:movq     $defdlg,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _SendM
          .def     _SendM; .scl 2; .type 32; .endef
   _SendM:movq     $sendmg,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _PostM
          .def     _PostM; .scl 2; .type 32; .endef
   _PostM:movq     $postmg,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _SnDIM
          .def     _SnDIM; .scl 2; .type 32; .endef
   _SnDIM:movq     $snddim,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _Pquit
          .def     _Pquit; .scl 2; .type 32; .endef
   _Pquit:movq     $postqm,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WinId
          .def     _WinId; .scl 2; .type 32; .endef
   _WinId:movq     $windid,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WinQW
          .def     _WinQW; .scl 2; .type 32; .endef
   _WinQW:movq     $windqw,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnPos
          .def     _WnPos; .scl 2; .type 32; .endef
   _WnPos:movq     $setpos,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _GtPos
          .def     _GtPos; .scl 2; .type 32; .endef
   _GtPos:movq     $getpos,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnMov
          .def     _WnMov; .scl 2; .type 32; .endef
   _WnMov:movq     $winmov,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _InvRect
          .def     _InvRect; .scl 2; .type 32; .endef
 _InvRect:movq     $invrct,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WinSh
          .def     _WinSh; .scl 2; .type 32; .endef
   _WinSh:movq     $wnshow,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WinEn
          .def     _WinEn; .scl 2; .type 32; .endef
   _WinEn:movq     $winena,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnEWU
          .def     _WnEWU; .scl 2; .type 32; .endef
   _WnEWU:movq     $winewu,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnAct
          .def     _WnAct; .scl 2; .type 32; .endef
   _WnAct:movq     $winact,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnFoc
          .def     _WnFoc; .scl 2; .type 32; .endef
   _WnFoc:movq     $winfoc,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnUpd
          .def     _WnUpd; .scl 2; .type 32; .endef
   _WnUpd:movq     $winupd,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _CtlSh
          .def     _CtlSh; .scl 2; .type 32; .endef
   _CtlSh:movq     $ctlshw,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _CtlEn
          .def     _CtlEn; .scl 2; .type 32; .endef
   _CtlEn:movq     $ctlena,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnSTx
          .def     _WnSTx; .scl 2; .type 32; .endef
   _WnSTx:movq     $wintxs,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnQTx
          .def     _WnQTx; .scl 2; .type 32; .endef
   _WnQTx:movq     $wintxq,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnSDT
          .def     _WnSDT; .scl 2; .type 32; .endef
   _WnSDT:movq     $dlgtxs,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _QEf
          .def     _QEf;   .scl 2; .type 32; .endef
     _QEf:movq     $dlgqef,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnQDT
          .def     _WnQDT; .scl 2; .type 32; .endef
   _WnQDT:movq     $dlgtxq,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnGWL
          .def     _WnGWL; .scl 2; .type 32; .endef
   _WnGWL:movq     $wngetl,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WnSWL
          .def     _WnSWL; .scl 2; .type 32; .endef
   _WnSWL:movq     $wnsetl,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _DBox
          .def     _DBox; .scl 2; .type 32; .endef
    _DBox:movq     $Dibox,           %rax
          jmp      0f

          .p2align 4,,15
          .globl   _dbox
          .def     _dbox; .scl 2; .type 32; .endef
    _dbox:movq     $dibox,           %rax
          jmp      0f

          .p2align 4,,15
          .globl   _LDdlg
          .def     _LDdlg; .scl 2; .type 32; .endef
   _LdDlg:movq     $lddlg,           %rax
          jmp      0f

          .p2align 4,,15
          .globl   _MBox
          .def     _MBox; .scl 2; .type 32; .endef
    _MBox:movq     $mbox,            %rax
          jmp      0f

          .p2align 4,,15
          .globl   _ThrdCrea
          .def     _ThrdCrea; .scl 2; .type 32; .endef
_ThrdCrea:movq     $thdcre,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _ThrdSusp
          .def     _ThrdSusp; .scl 2; .type 32; .endef
_ThrdSusp:movq     $thdsus,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _ThrdResu
          .def     _ThrdResu; .scl 2; .type 32; .endef
_ThrdResu:movq     $thdres,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _ThrdSwi2
          .def     _ThrdSwi2; .scl 2; .type 32; .endef
_ThrdSwi2:movq     $thdsw2,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _ThrdExit
          .def     _ThrdExit; .scl 2; .type 32; .endef
_ThrdExit:movq     $thdxit,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _ThrdTerm
          .def     _ThrdTerm; .scl 2; .type 32; .endef
_ThrdTerm:movq     $thdtrm,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _AloMem
          .def     _AloMem; .scl 2; .type 32; .endef
  _AloMem:movq     $alomem,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _FreMem
          .def     _FreMem; .scl 2; .type 32; .endef
  _FreMem:movq     $fremem,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WaitTm
          .def     _WaitTm; .scl 2; .type 32; .endef
  _WaitTm:movq     $waittm,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WaitTx
          .def     _WaitTx; .scl 2; .type 32; .endef
  _WaitTx:movq     $waittx,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _GetRes
          .def     _GetRes; .scl 2; .type 32; .endef
  _GetRes:movq     $getres,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _CrSoBrsh
          .def     _CrSoBrsh; .scl 2; .type 32; .endef
_CrSoBrsh:movq     $sbrush,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _LdAccel
          .def     _LdAccel; .scl 2; .type 32; .endef
 _LdAccel:movq     $ldaccl,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _TrAccel
          .def     _TrAccel; .scl 2; .type 32; .endef
 _TrAccel:movq     $traccl,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _GetErr
          .def     _GetErr; .scl 2; .type 32; .endef
  _GetErr:movq     $geterr,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _GtCRct
          .def     _GtCRct; .scl 2; .type 32; .endef
  _GtCRct:movq     $gtcrct,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _WinPar
          .def     _WinPar; .scl 2; .type 32; .endef
  _WinPar:movq     $winpar,          %rax
          jmp      0f

          .p2align 4,,15
          .globl   _IComCt
          .def     _IComCt; .scl 2; .type 32; .endef
  _IComCt:movq     $icomct,          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            distributor
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0xB8,            %rsp
          movdqa   0xE0(%rsp),       %xmm0              # XM0 = PAR5+PAR6
          movdqa   %xmm4,            0x60(%rsp)
          movdqa   %xmm5,            0x70(%rsp)
          movq     %rcx,             0x88(%rsp)
          movq     %rdx,             0x90(%rsp)
          movq     %r8,              0x98(%rsp)
          movq     %r9,              0xA0(%rsp)
          movq     %r10,             0xA8(%rsp)
          movq     %r11,             0xB0(%rsp)
          movq     _BNR(%rip),       %r10               # R10 = BNR
          jmp      *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RegClass  RegisterClassA()                00
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    VOID* EA WNDCLASS structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   class ID
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   rclass:call     *__imp__RegisterClassA(%rip)
          jmp XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RegClssX  RegisterClassExA()              01
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    VOID* EA WNDCLASS structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   class ID
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   rclssx:call     *__imp__RegisterClassExA(%rip)
          jmp XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LdIcon    LoadIconA()                     02
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HINSTANCE
               RDX    VOID* EA icon name
                or    (LPCTSTR)ID      (cast required!)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   HICON
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   ldicon:call     *__imp__LoadIconA(%rip)
          jmp XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LdCursor  LoadCursorA()                   03
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HINSTANCE
               RDX    VOID* EA cursor name
                or    (LPCTSTR)ID      (cast required!)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   HCURSOR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   ldcurs:call     *__imp__LoadCursorA(%rip)
          jmp XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GStkObj   GetStockObject()                04
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    object type
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   HGDIOBJ
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   gstkob:call     *__imp__GetStockObject(%rip)
          jmp XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnCreate  CreateWindowA()                 05
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    VOID* EA class name
               RDX    VOID* EA window title
               R08    DQ    style (WS_*)
               R09    DQ    x (left)
               0x20   DQ    y (bottom)
               0x28   DQ    width
               0x30   DQ    height
               0x38   DQ    HWND parent or owner
               0x40   DQ    HMENU ???
               0x48   DQ    HANDLE instance
               0x50   VOID* win creation data
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   HWND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             CAUTION

             Do not use WnCreate()! GCC maps the simple
             CreateWindowA() to CreateWindowExA(). This
             does not work with AS at all, so ST-Open's
             function shuffles parameters up 8 byte and
             moves R09 to the stack, R08 to R09, RDX to
             R08, RCX to RDX and clears RCX, then jumps
             to CreateWindowExA()...
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   wncrea:movdqa   0x00F0(%rsp),     %xmm1              # copy parameters
          movdqa   0x0100(%rsp),     %xmm2
          movq     0x0110(%rsp),     %rax
          movq     %r9,              0x20(%rsp)
          movdqu   %xmm0,            0x28(%rsp)
          movq     %r8,              %r9
          movdqu   %xmm1,            0x38(%rsp)
          movq     %rdx,             %r8
          movdqu   %xmm2,            0x48(%rsp)
          movq     %rcx,             %rdx
          movq     %rax,             0x58(%rsp)
          xorq     %rcx,             %rcx
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnCreatX  CreateWindowExA()               06
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    xtended style (WS_*)
               RDX    VOID* EA class name
               R08    VOID* EA window title
               R09    DQ    style (WS_*)
               0x20   DQ    x (left)
               0x28   DQ    y (bottom)
               0x30   DQ    width
               0x38   DQ    height
               0x40   DQ    HWND parent or owner
               0x48   DQ    HMENU ???
               0x50   DQ    HANDLE instance
               0x58   VOID* win creation data
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   HWND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   wncrex:movdqa   0x00F0(%rsp),     %xmm1              # copy parameters
          movdqa   0x0100(%rsp),     %xmm2
          movdqa   0x0110(%rsp),     %xmm3
          movdqa   %xmm0,            0x20(%rsp)
          movdqa   %xmm1,            0x30(%rsp)
          movdqa   %xmm2,            0x40(%rsp)
          movdqa   %xmm3,            0x50(%rsp)
        0:call     *__imp__CreateWindowExA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            KillWin   DestroyWindow()                 07
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND window
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   wnkill:call     *__imp__DestroyWindow(%rip)
          jmp XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            KillDlg   EndDialog()                     08
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND dialog
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             Do not use WinDD() if you have to return a
             non-zero value to the parent window! Users
             of ST-Open's libraries probably pass para-
             meters in global variables (SysNumerics or
             SysStrings) - no need to return a specific
             return value via the operating system.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   disdlg:xorq     %rdx,             %rdx               # return zero to caller
          call     *__imp__EndDialog(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GetMsg    GetMessage()                    09
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    EA   MSG
               RDX    DQ   HWND
               R08    DQ   filter min
               R09    DQ          max
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   WM_QUIT
                      xxxx xxxx xxxx xxxx   WM_???
                      FFFF FFFF FFFF FFFF   error
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             CAUTION: Retrieves all messages for thread
                      and its children. Don't call this
                      if you need specific messages for
                      a specific window.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   getmsg:call     *__imp__GetMessageA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MSQpm     PeekMessage()                   0A
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    EA   MSG
               RDX    DQ   HWND
               R08    DQ   filter min
               R09    DQ          max
               0x20   DQ   remove flags
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   WM_QUIT
                      xxxx xxxx xxxx xxxx   WM_???
                      FFFF FFFF FFFF FFFF   error
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   peemsg:movdqa   %xmm0,            0x20(%rsp)         # PAR5+PAR6
          call     *__imp__PeekMessageA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            TrnsMsg   TranslateMessage()              0B
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    EA MSG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   tnsmsg:call     *__imp__TranslateMessage(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DispMsg   DispatchMessage()               0C
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    EA MSG
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   dismsg:call     *__imp__DispatchMessageA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DefWP     DefWindowProc()                 0D
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
               RDX    DQ   message
               R08    DQ   WPARAM
               R09    DQ   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   defwin:call     *__imp__DefWindowProcA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DefDP     DefDlgProc()                    0E
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
               RDX    DQ   message
               R08    DQ   WPARAM
               R09    DQ   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    MRESULT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   defdlg:call     *__imp__DefDlgProcA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SendM     SendMessage()                   0F
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
               RDX    DQ   message
               R08    DQ   WPARAM
               R09    DQ   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    MRESULT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   sendmg:call     *__imp__SendMessageA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PostM     PostMessage()                   10
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
               RDX    DQ   message
               R08    DQ   WPARAM
               R09    DQ   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    MRESULT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   postmg:call     *__imp__PostMessageA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SnDIM     SendDlgItemMessage()            11
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND dialog
               RDX    DQ   resource ID
               R08    DQ   message
               R09    DQ   WPARAM
               0x20   DQ   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    MRESULT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   snddim:movdqa   %xmm0,            0x20(%rsp)         # PAR5+PAR6
          call     *__imp__SendDlgItemMessageA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Pquit     PostQuitMessage()               12
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   exit code
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    MRESULT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   postqm:call     *__imp__PostQuitMessage(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WinId     GetDlgItem()                    13
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND parent
               RDX    DQ   resource ID
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    HWND control
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   windid:call     *__imp__GetDlgItem(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WinQW     GetWindow()                     14
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
               RDX    DQ   relationship (GW_*)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    HWND for requested window
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   windqw:call     *__imp__GetWindow(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnPos     SetWindowPlacement()            15
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND to position
               RDX    VOID* EA WINDOWPLACEMENT struct
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   setpos:call     *__imp__SetWindowPlacement(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GtPos     GetWindowPlacement()            16
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HWND
               RDX    VOID* EA WINDOWPLACEMENT struct
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   getpos:call     *__imp__GetWindowPlacement(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WinMov    MoveWindow()                    17
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HWND
               RDX    DQ    x
               R08    DQ    y
               R09    DQ    w
               0x20   DQ    h
               0x28   DQ    0 no repaint, else repaint
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   winmov:movdqa   %xmm0,            0x20(%rsp)         # PAR5+PAR6
          call     *__imp__MoveWindow(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WInvR     InvalidateRect()                18
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HWND
               RDX    VOID* address RECTL structure
               R08    DQ    include background (0 or 1)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   invrct:call     *__imp__InvalidateRect(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WinSh     ShowWindow()                    19
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
               RDX    DQ   flag (SW_*)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   wnshow:call     *__imp__ShowWindow(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WinEn     EnableWindow()                  1A
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
               RDX    DQ   FALSE   disable
                           TRUE    enable
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   winena:call     *__imp__EnableWindow(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnEWU     LockWindowUpdate()              1B
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             Call WnEWU(HWND) to lock window HWND. Call
             WnEWU(NULL) to unlock it.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   winewu:call     *__imp__LockWindowUpdate(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnAct     SetActiveWindow()               1C
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   winact:call     *__imp__SetActiveWindow(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnFoc     SetFocus()                      1D
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   winfoc:call     *__imp__SetFocus(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnUpd     UpdateWindow()                  1E
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   winupd:call     *__imp__UpdateWindow(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CtlSh     ShowWindow() from ID            1F
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
               RDX    DQ   resource ID
               R08    DQ   flag (SW_*)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   ctlshw:call     *__imp__GetDlgItem(%rip)
          movq     %rax,             %rcx               # HWND
          movq     0x98(%rsp),       %rdx               # flag
          call     *__imp__ShowWindow(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CtlEn     EnableWindow() from ID          20
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   HWND
               RDX    DQ   resource ID
               R08    DQ   FALSE   disable
                           TRUE    enable
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    previous state
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   ctlena:call     *__imp__GetDlgItem(%rip)
          movq     %rax,             %rcx               # HWND
          movq     0x98(%rsp),       %rdx               # flag
          call     *__imp__EnableWindow(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnSTx()   SetWindowText()                 21
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HWND
               RDX    VOID* address string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   wintxs:call     *__imp__SetWindowTextA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnQTx()    GetWindowText()                22
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HWND
               RDX    VOID* buffer address
               R08    DQ           size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    EA buffer
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   wintxq:call     *__imp__GetWindowTextA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnSDT     SetDlgItemText()                23
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HWND
               RDX    DQ    resource ID
               R08    VOID* address buffer
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   dlgtxs:call     *__imp__SetDlgItemTextA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            QEf       query entryfield text           24
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HWND
               RDX    DQ    resource ID
               R08    VOID*        address
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            QEf() does the same as WnQDT, but the size
            of the output string is fixed to 32 byte.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   dlgqef:movq     $0x20,            %r9                # size = 32 byte
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnQDT     GetDlgItemText()                25
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HWND
               RDX    DQ    resource ID
               R08    VOID*        address
               R09    DQ    buffer size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    RC
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
   dlgtxq:call     *__imp__GetDlgItemTextA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnGWL     GetWindowLongA()                26
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HWND
               RDX    DQ    index
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      ???? ???? ???? ????   req. value
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   wngetl:call     *__imp__GetWindowLongA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WnSWL     SetWindowLongA()                27
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HWND
               RDX    DQ    index
               R08    DQ    new value
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      ???? ???? ???? ????   prev. value
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   wnsetl:call     *__imp__SetWindowLongA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DBox     DialogBox()                      28
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   PFNWP dialog procedure
               RDX   resource ID dialog
               R08   dwInitParam (whoever needs this)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000   default
                     000D   is loaded (2nd instance)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             Parent is set to STV_HCLIENT by default.

             CAUTION: If your dialog window exceeds the
                      size of your application's client
                      area, your dialog is truncated at
                      the borders of your application's
                      client area. In this case, dbox()
                      might be a better choice.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
    Dibox:movq     %rcx,             %r9                # R09 = EA procedure
          movq     HW_PGM(%r10),     %r8                # R08 = HWND main
          call     _WinId
          movq     $0x0D,            %r11               # R10 = ERR_2ND_INSTANCE
          testq    %rax,             %rax               # already running?
          cmovne   %r11,             %rax
          jne      XIT
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            dbox     DialogBox(), HWND_DESKTOP        29
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   PFNWP dialog process
               RDX   resource ID dialog
               R08   dwInitParam (whoever needs this)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   ???? ???? FFFF FFFF   error
                    xxxx xxxx xxxx xxxx   exit code
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             Opens a dialog with parent HWND_DESKTOP.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    dibox:movq     %rcx,             %r9                # R09 = EA procedure
          xorl     %eax,             %eax               # RAX = 0
          xorl     %r8d,             %r8d               # R08 = HWND_DESKTOP
        0:movq     HI_PGM(%r10),     %rcx               # RCX = HINST
          movq     %rax,             0x20(%rsp)         # P_5 = 0
          call     *__imp__DialogBoxParamA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LdDlg    CreateDialog()                   2A
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   instance handle parent
               RDX   EA dialog template
               R08   parent window
               R09   EA dialog procedure
               0x20  dwInitParam (whoever needs this)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 0000 0000   error
                     xxxx xxxx xxxx xxxx   dialog HWND
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    lddlg:movdqa   %xmm0,            0x20(%rsp)         # PAR5+PAR6
          call     *__imp__CreateDialogParamA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MBox     MessageBoxA()                    2B
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> PAR1  DB * message title
               PAR2  DB *         text
               PAR2  DD   MB_ flag(s)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   MBID_* value
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     mbox:movq     %r8,              %r9                # R09 = style
          movq     %rdx,             %r8                # R08 = title
          movq     %rcx,             %rdx               # RDX = text
          xorq     %rcx,             %rcx               # RCX = HWND_DESKTOP
          call     *__imp__MessageBoxA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ThrdCrea  CreateThread()                  2C
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    thread security attributes
               RDX    DQ    stack size
               R08    DQ    EA thread function
               R09    DQ    EA of DQ with thread info
               0x20   DQ    creation flags
               0x28   DQ    EA of DQ getting threadID
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      ???? ???? ???? ????   thrd handle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   thdcre:movdqa   %xmm0,            0x20(%rsp)         # PAR5+PAR6
          call     *__imp__CreateThread(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ThrdSusp  SuspendThread()                 2D
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    thread handle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      ???? ???? ???? ????   thrd handle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   thdsus:call     *__imp__SuspendThread(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ThrdResu  ResumeThread()                  2E
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    thread handle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      ???? ???? ???? ????   thrd handle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   thdres:call     *__imp__ResumeThread(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ThrdSwi2  SwitchToThread()                2F
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> -      VOID  nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   not switched
                      ???? ???? ???? ????   switched
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   thdsw2:call     *__imp__SwitchToThread(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ThrdExit  ExitThread()                    30
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    exit code
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    undefined
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   thdxit:call     *__imp__ExitThread(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ThrdTerm  TerminateThread()               31
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    thread handle
               RDX    DQ    exit code
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      ???? ???? ???? ????   success
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   thdtrm:call     *__imp__TerminateThread(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            AloMem    VirtualAlloc()                  32
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   requested size in byte
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      ???? ???? ???? ????   EA block
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   alomem:movq     %rcx,             %rdx               # RDX = size
          movq     $0x1000,          %r8                # R08 = MEM_COMMIT
          movq     $0x04,            %r9                # R09 = PAGE_READWRITE
          addq     $0x0FFF,          %rdx               # RDX + 4,095
          xorq     %rcx,             %rcx               # RCX = NULL (EA assigned by Windows)
          andq     $0xFFFFF000,      %rdx               # RDX = page aligned size
          call     *__imp__VirtualAlloc(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FreMem    VirtualFree()                   33
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    VOID* EA of block to free
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX    0000 0000   error
                      xxxx xxxx   okay
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   fremem:xorl     %edx,             %edx               # must be zero!
          movq     $0x8000,          %r8                # MEM_RELEASE
          call     *__imp__VirtualFree(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WaitTm    Sleep()                         34
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   sleep time in milliseconds
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX    garbage
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   waittm:call     *__imp__Sleep(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WaitTx    SleepEx()                       35
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ   sleep time in milliseconds
               RDX    DQ   exception flags
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX    garbage
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   waittx:call     *__imp__SleepEx(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GetRes    get screen resolution           36
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> -      -    nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX    always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             GetRes() queries screen width & height and
             saves them as STV_SCREEN_W / STV_SCREEN_H.
             GetRes() is called by the Loader at system
             initialisation time. There is no reason to
             call GetRes() after executing LDinit() nor
             can it be called if LDinit() fails (System
             Numerics are not available in this case).
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   getres:movl     $0x30,            %ecx               # RCX = SPI_GETWORKAREA
          xorl     %edx,             %edx               # RDX = NULL
          leaq     0x20(%rsp),       %r8                # R08 = EA RECT
          xorq     %r9,              %r9                # R09 = NULL
          call     *__imp__SystemParametersInfoA(%rip)  # call destroys R10...
          movq     _BNR(%rip),       %r8                # R08 = BNR
          movl     0x20(%rsp),       %ecx               # xLeft
          movl     0x24(%rsp),       %edx               # yTop
          movl     0x28(%rsp),       %eax               # xRight
          movl     0x2C(%rsp),       %ebx               # yBottom
          subl     %eax,             %ecx               # ECX = width
          subl     %ebx,             %edx               # EDX = height
          xorl     %eax,             %eax               # RC  = 0
          movl     %ecx,             0x08(%r8)          # STV_SCREEN_W
          movl     %edx,             0x0C(%r8)          # STV_SCREEN_H
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CrSoBrsh  CreateSolidBrush()              37
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DD    RGB (will be reversed!)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   HBRUSH
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             Windows expexts BGR, so we have to reverse
             RGB and shift the result one byte down...
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   sbrush:bswap    %ecx                                 # RCX = BGR0
          shrl     $0x08,            %ecx               # RCX = 0BGR
          call     *__imp__CreateSolidBrush(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LdAccel   LoadAcceleratorsA()             38
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HINSTANCE
               RDX    DQ    EA ID (must be a string!)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   HACCEL
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   ldaccl:call     *__imp__LoadAcceleratorsA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            TrAccel   TranslateAcceleratorA()         39
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    DQ    HWND
               RDX    DQ    HACCEL
               R08    DQ    EA message structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    FALSE no match
                      TRUE  msg is sent via WM_COMMAND!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   traccl:call     *__imp__TranslateAcceleratorA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GetErr    GetLastError()                  3A
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> -      nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    errorcode of last error
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   geterr:call     *__imp__GetLastError(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GtCRct    GetClientRect()                 3B
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    HWND window
               RDX    EA RECT structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    errorcode of last error
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   gtcrct:call     *__imp__GetClientRect(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WinPar    SystemParameterInfoA()          3C
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    parameter to query or set
               RDX    \
               R08      depend on parameter
               R09    /
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    errorcode
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   winpar:call     *__imp__SystemParametersInfoA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            IComCt    InitCommonControlsEx()          3D
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    parameter to query or set
               RDX    \
               R08      depend on parameter
               R09    /
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    errorcode
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          movl     $0x08,            0x20(%rsp)
          movl     $0xFFFF,          0x24(%rsp)
          leaq     0x20(%rsp),       %rcx
   icomct:call     *__imp__InitCommonControlsEx(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIT:movdqa   0x60(%rsp),       %xmm4
          movdqa   0x70(%rsp),       %xmm5
          movq     0x88(%rsp),       %rcx
          movq     0x90(%rsp),       %rdx
          movq     0x98(%rsp),       %r8
          movq     0xA0(%rsp),       %r9
          movq     0xA8(%rsp),       %r10
          movq     0xB0(%rsp),       %r11
          addq     $0xB8,            %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,             8, 3
