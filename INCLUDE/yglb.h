  /*
    Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display the file properly!
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  �                       GLOBAL FUNCTION DEFINITIONS (WINDOZE)                        裁
  債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
  �                          *** (C) ST-Open 1979 - 2010 ***                           裁
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
  */

#ifndef __yglb__
#define __yglb__

#define INCL_PM
#define INCL_GPI
#include <os2.h>
#include "ydat.h"

   /*
   浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
   �                           S Y S T E M   L I B R A R Y                            裁
   藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � acf.S   ST's database engine            額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      FDacc(DQ, DQ, DQ, DQ, VOID*, DQ);              /* default definition       */
   VOID *  FDvpt(DQ, DQ, DQ, DQ);                         /* get entry address        */
   DQ      SftUp(DQ, DQ, DQ);                             /* shift entries one up     */
   DQ      SftDn(DQ, DQ, DQ);                             /* shift entries one down   */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � cap.S   sandboxes: WinAPI               額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � window create/destroy 額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      RegClass(VOID *);                              /* RegisterClassA()         */
   DQ      RegClssX(VOID *);                              /* RegisterClassExA()       */
   DQ      LdIcon(DQ, VOID *);                            /* LoadIconA()              */
   DQ      LdCursor(DQ, VOID *);                          /* LoadCursorA()            */
   DQ      GStkObj(DQ, VOID *);                           /* GetStockObject()         */
   DQ      WnCreate(VOID *, VOID *, DQ, DQ, DQ, DQ, DQ, DQ, DQ, DQ, VOID *);
                                                          /* CreateWindowA()          */
   DQ      WnCreatX(DQ, VOID *, VOID *, DQ, DQ, DQ, DQ, DQ, DQ, DQ, DQ, VOID *);
                                                          /* CreateWindowExA()        */
   DQ      KillWin(DQ);                                   /* DestroyWindow()          */
   DQ      KillDlg(DQ);                                   /* EndDialog()              */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � message queue         額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      GetMsg(VOID *, DQ, DQ, DQ);                    /* GetMessageA()            */
   DQ      PeekMsg(VOID *, DQ, DQ, DQ, DQ);               /* PeekMessageA()           */
   DQ      TrnsMsg(VOID *);                               /* TranslateMessage()       */
   DQ      DispMsg(VOID *);                               /* DispatchMessageA()       */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � emit message          額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      DefWP(DQ, DQ, WPARAM, LPARAM);                 /* DefWindowProcA()         */
   DQ      DefDP(DQ, DQ, WPARAM, LPARAM);                 /* DefDlgProcA()            */
   DQ      SendM(DQ, DQ, WPARAM, LPARAM);                 /* SendMessage()            */
   DQ      PostM(DQ, DQ, WPARAM, LPARAM);                 /* PostMessage()            */
   DQ      SnDIM(DQ, DQ, DQ, WPARAM, LPARAM);             /* SendDlgItemMessage()     */
   DQ      Pquit(DQ);                                     /* PostQuitMessage()        */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � window properties     額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      WinId(DQ, DQ);                                 /* GetDlgItem()             */
   DQ      WinQW(DQ, DQ);                                 /* GetWindow()              */
   DQ      WnPos(DQ, VOID *);                             /* SetWindowPlacement()     */
   DQ      WQPos(DQ, VOID *);                             /* GetWindowPlacement()     */
   DQ      WnMov(DQ, VOID *);                             /* MoveWindow()             */
   DQ      WInvR(DQ, VOID *, DQ);                         /* InvalidateRect()         */
   DQ      WinSh(DQ, DQ);                                 /* ShowWindow()             */
   DQ      WinEn(DQ, DQ);                                 /* EnableWindow()           */
   DQ      WnEWU(DQ, DQ);                                 /* LockWindowUpdate()       */
   DQ      WnAct(DQ);                                     /* SetActiveWindow()        */
   DQ      WnFoc(DQ);                                     /* SetFocus()               */
   DQ      WnUpd(DQ);                                     /* UpdateWindow()           */
   DQ      CtlSh(DQ, DQ, DQ);                             /* ShowWindow(ID)           */
   DQ      CtlEn(DQ, DQ, DQ);                             /* EnableWindow(ID)         */
   DQ      WnSTx(DQ, VOID *);                             /* SetWindowText()          */
   VOID *  WnQTx(DQ, VOID *, DQ);                         /* GetWindowText()          */
   DQ      WnSDT(DQ, DQ, VOID *);                         /* SetDlgItemText(ID)       */
   DQ      SEf(DQ, DQ, VOID *);                           /* obsolete - use WnSDT()   */
   VOID *  WnQDT(DQ, DQ, VOID *, DQ);                     /* GetDlgItemText(ID)       */
   DQ      QEf(DQ, DQ, VOID *);                           /* obsolete - use WnQDT()   */
   DQ      WnGWL(DQ, DQ);                                 /* GetWindowLongA()         */
   DQ      WnSWL(DQ, DQ, DQ);                             /* SetWindowLongA()         */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � memory allocation     額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      AloMem(DQ);                                    /* VirtualAlloc()           */
   DQ      FreMem(VOID *, DQ);                            /* VirtualFree()            */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � miscellaneous         額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      WaitTm(DQ);                                    /* Sleep()                  */
   DQ      WaitTx(DQ, DQ);                                /* SleepEx()                */
   DQ      GetRes(VOID);                                  /* get screen resolution    */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � cvt.S   data conversion                 額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      asc2s(VOID *, VOID *, DQ);                     /* ASCII-string for display */
   DQ      B2hex(DQ, VOID *);                             /* HEX -> $   DB            */
   DQ      W2hex(DQ, VOID *);                             /*            DW            */
   DQ      D2hex(DQ, VOID *);                             /*            DD            */
   DQ      Q2hex(DQ, VOID *);                             /*            DQ            */
   DQ      h2str(VOID *, VOID *, DQ, DQ);                 /*            n byte        */
   DQ      D2dec(DQ, VOID *, DQ);                         /* DEC -> $   formatted     */
   DQ      Q2dec(DQ, VOID *, DQ);                         /* QWord ->   formatted dec */
   DQ      dec2f(VOID *, DQ);                             /* insert pseudo fl. point  */
   DQ      s2num(VOID *, VOID *, DQ, DQ);                 /* HEX <-> unpacked digits  */
   DQ      hex2D(VOID *);                                 /* $ -> HEX   signed dword  */
   DQ      hex2Q(VOID *);                                 /*            signed qword  */
   DQ      dec2D(VOID *);                                 /* S -> DEC   signed dword  */
   DQ      dec2Q(VOID *);                                 /*            signed qword  */
   DQ      prime(DQ);                                     /* TEST       prime number? */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � ldr.S   ST's loader (memory management) 額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      LDinit(VOID);                                  /* initialise loader        */
   DQ      LDreq(PLD);                                    /* request mem / load file  */
   DQ      LDchg(DQ, DQ);                                 /* change size of memory    */
   DQ      LDfre(DQ);                                     /* free allocated memory    */
   DQ      LDexit(VOID);                                  /* shut down loader         */
   DQ      LDchk(DQ);                                     /* checker (dynamic loader) */
   DQ      FnDat(DQ, VOID *);                             /* field-# -> filename      */
   DQ      LDclr(DQ);                                     /* erase entire field data  */
   DQ      getMH(DQ);                                     /* MemHandle from field #   */
   DQ      LDupd(PLD, DQ);                                /* update LD structure      */
   DQ      LDunc(DQ);                                     /* reset changed            */
   DQ      LDstc(DQ);                                     /*   set changed            */
   DQ      LDsts(DQ, DQ);                                 /*   set changed + size     */
   DQ      MHxcg(DQ, DQ);                                 /* exchange two MemHandles  */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � lng.S - language support                額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      MNUtxt(HWND, DQ, DQ);                          /* language support MENUS   */
   DQ      DLGtxt(HWND, DQ, DQ, DQ);                      /* language support DIALOGS */
   DQ      ErrMgr(DQ);                                    /* error manager            */
   DQ      SyMsg(HWND, DQ, MPARAM, MPARAM);               /* system messages - dialog */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � pmf.S   sandboxes: PM controls          額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      DBox(HWND, DLGPROC, DQ);                       /* DialogBox(STV_HCLIENT)   */
   DQ      dbox(DLGPROC, DQ);                             /* DialogBox(HWND_DESKTOP)  */
   DQ      LDdlg(DQ, DQ, DLGPROC, HMODULE, DQ, VOID *);   /* CreateDialog()           */
   DQ      debug(DQ, DB *);                               /* common Debug MBox        */
   DQ      MBox(DB *, DB *, DQ);                          /*        MessageBox        */
   DQ      SBtn(DQ, DQ, DQ);                              /* set    button            */
   DQ      SCkB(DQ, DQ, DQ);                              /* set    check button      */
   DQ      QCkB(DQ, DQ);                                  /* query  check button      */
   DQ      MnuHw(DQ);                                     /* query  menu HWND         */
   DQ      MnGet(DQ, DQ);                                 /* GetMenuItemInfo()        */
   DQ      MnSet(DQ, DQ);                                 /* SetMenuItemInfo()        */
   DQ      MnAdd(DQ, DQ);                                 /* InsertMenuItemA()        */
   DQ      MnDel(DQ, DQ);                                 /* DeleteMenuItem()         */
   DQ      CtrWn(DQ);                                     /* center window            */
   DQ      RISmain(VOID);                                 /* set numerics to main     */
   DQ      RISempt(VOID);                                 /* clear RIS numerics       */
   DQ      prc2pix(VOID);                                 /* convert percent to pixel */
   DQ      pix2prc(VOID);                                 /*         pixel to percent */
   DQ      RAND(VOID);                                    /* ST-Open RNG   (RDTSC)    */
   DQ      RND(DQ, DQ);                                   /* RND(min, max) (RDTSC)    */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � spn.S   field controlled spinbuttons    額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      STspn(DQ, DQ, DQ, VOID *);                     /* automated spinbuttons    */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � srt.S   ST-Open Sort                    額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      sortB(VOID *, DQ, DQ);                         /* sort array of bytes      */
   DQ      sortW(VOID *, DQ, DQ);                         /* sort array of words      */
   DQ      sortD(VOID *, DQ, DQ);                         /* sort array of dwords     */
   DQ      STsrt(VOID *, DQ, DQ, DQ);                     /* ST-Open sort             */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � ssa.S   Sec(urity)Sys(tem) - low level  額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      ssENC(VOID *, DQ);                             /* SecSys encode            */
   DQ      ssDEC(VOID *, DQ);                             /*        decode            */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � str.S   string handling                 額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      SLen(VOID *);                                  /* get stringlength         */
   DQ      SCmp(VOID *, VOID *);                          /* compare strings strcmp() */
   DQ      MCmp(VOID *, VOID *, DQ);                      /* compare memory blocks    */
   DQ      SCpy(VOID *, VOID *);                          /* copy strings    strcpy() */
   DQ      SAdd(VOID *, VOID *);                          /* add  strings    strcat() */
   DQ      SCut(VOID *, DQ, DQ);                          /* cut bytes out of string  */
   DQ      SClr(VOID *, DQ);                              /* clear n bytes at adress  */
   DQ      SInc(VOID *, VOID *);                          /* is $1 included in $2 ?   */
   DQ      SIns(VOID *, VOID *, DQ);                      /* insert $2 in $1 (at DD)  */
   DQ      CRLF(VOID *);                                  /* add CR_LF to string end  */
   DQ      EOF(VOID *);                                   /*     EOF   to string end  */
   DQ      StrAt(VOID *, VOID *, DQ);                     /* put str 2 at pos str 1   */
   DQ      CntWrd(VOID *);                                /* count words in a string  */
   DQ      Supp(VOID *);                                  /* convert to upper case    */
   DQ      Slow(VOID *);                                  /*            lower case    */
   DQ      SFill(VOID *, DQ, DQ, DQ);                     /* fill string with ASCII   */
   DQ      Mcl(VOID *, DQ);                               /* clear memory blocks      */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � tms.S   time and date functions         額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      GetTime(VOID);                                 /* get current HHMM SShh    */
   DQ      GetDate(VOID);                                 /* get current YYYY MMDD    */
   DQ      dDiff(DQ, DQ);                                 /* DMY2 - DMY1              */
   DQ      dSum(DQ, DQ);                                  /* DMY2 + DMY1              */
   DQ      d2day(DQ, DQ);                                 /* days between DMY1 & DMY2 */
   DQ      M2day(DQ, DQ);                                 /* days in X months from Mx */
   DQ      tDiff(DQ, DQ);                                 /* difference time1 - time2 */
   DQ      tSum(DQ, DQ);                                  /* addition   time1 + time2 */
   DQ      tadd2(DQ, DQ);                                 /* - same, old definition   */
   DQ      t2sec(DQ);                                     /* HHMM SShh -> s           */
   DQ      sec2t(DQ);                                     /* s         -> HHMM SShh   */
   DQ      t2hun(DQ);                                     /* HHMM SShh -> 1/100 s     */
   DQ      hun2t(DQ);                                     /* 1/100 s   -> HHMM SShh   */
   DQ      t2out(DQ, VOID *, DQ);                         /* time -> string           */
   DQ      d2out(DQ, VOID *);                             /* date -> string (EU)      */
   DQ      d2iso(DQ, VOID *);                             /* date -> string (ISO)     */
   DQ      s2DMY(VOID *);                                 /* string -> date           */
   DQ      s2HMS(VOID *);                                 /* string -> time           */
   DQ      GtDay(DQ);                                     /* get day   from YMD       */
   DQ      GtMon(DQ);                                     /* get month from YMD       */
   DQ      GetYr(DQ);                                     /* get year  from YMD       */
   DQ      chkLY(DQ);                                     /* check for leap year      */
   DQ      mkDate(DQ, DQ, DQ);                            /* assemble date            */
   DQ      chkDMY(DQ);                                    /* make DMY  valid          */
   DQ      chkHMS(DQ);                                    /* make HMSh valid          */
   DQ      WkDay(DQ);                                     /* get day of week from DMY */
   DQ      Since(DQ);                                     /* days between DMY...today */
   DQ      GtAge(DQ);                                     /* yrs. between DMY...today */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � wrp.S   low level file functions        額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      Fopen(VOID *, DQ, DQ, PFH);                    /* open file                */
   DQ      Fread(PFH, DQ);                                /* read from file           */
   DQ      Fwrite(PFH, DQ);                               /* write to file            */
   DQ      Fsptr(PFH);                                    /* set file pointer         */
   DQ      Fsize(PFH, DQ);                                /*     file size            */
   DQ      Fclose(PFH);                                   /* close open file          */
   DQ      CrDir(VOID *);                                 /* DosCreateDir()           */
   DQ      GetPath(VOID *);                               /* get path from filename   */
   DQ      NameExt(VOID *);                               /*     name + extension     */
   DQ      GetName(VOID *);                               /*     name only            */
   DQ      GetExt(VOID *);                                /*     last extension       */
   DQ      SetPath(VOID *);                               /* set current drive + path */
   DQ      DirUp(VOID *);                                 /* "cd .."                  */
   DQ      remRO(VOID *);                                 /* remove read only attrib. */
   /*
   浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
   �                                L I B R A R I E S                                 裁
   藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � A U D I O                               額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   敖陳陳陳陳陳陳陳陳陳朕
   � low level          額
   青陳陳陳陳陳陳陳陳陳潰�
     栩栩栩栩栩栩栩栩栩栩�
   */
   DQ      ckWAV(VOID *, DQ);                             /* check WAV header or file */
   DQ      mkWAV(VOID *, DQ, DQ, DQ, DQ);                 /* create new WAVE header   */
   DQ      mo2st(VOID *, VOID *, DQ, DQ, DQ);             /* mono   -> stereo         */
   DQ      st2mo(VOID *, VOID *, DQ, DQ);                 /* stereo -> mono           */
   DQ      c8x16(VOID *, VOID *, DQ);                     /*  8 bit -> 16 bit         */
   DQ      c16x8(VOID *, VOID *, DQ);                     /* 16 bit ->  8 bit         */
   DQ      m16up(VOID *, VOID *, DQ);                     /* double sample rate mo16  */
   DQ      s16up(VOID *, VOID *, DQ);                     /*                    st16  */
   DQ      m08up(VOID *, VOID *, DQ);                     /*                    mo08  */
   DQ      s08up(VOID *, VOID *, DQ);                     /*                    st08  */
   DQ      m16dn(VOID *, VOID *, DQ);                     /* half sample rate   mo16  */
   DQ      s16dn(VOID *, VOID *, DQ);                     /*                    st16  */
   DQ      m08dn(VOID *, VOID *, DQ);                     /*                    mo08  */
   DQ      s08dn(VOID *, VOID *, DQ);                     /*                    st08  */
   /*
   敖陳陳陳陳陳陳陳陳陳朕
   � application level  額
   青陳陳陳陳陳陳陳陳陳潰�
     栩栩栩栩栩栩栩栩栩栩�
   */
   DQ      m2s(VOID *, VOID *, DQ, DQ);                   /* convert mono -> stereo   */
   DQ      s2m(VOID *, VOID *, DQ);                       /*         stereo -> mono   */
   /*
   敖陳陳陳陳陳陳陳陳陳朕
   � mixer              額
   青陳陳陳陳陳陳陳陳陳潰�
     栩栩栩栩栩栩栩栩栩栩�
   */
   DQ      mix16(VOID *, VOID *, DQ, DQ);                 /* mix 16 bit sources       */
   DQ      norm(VOID *);                                  /* normalise wave file      */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � F i l e   H a n d l i n g               額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      NameObj(VOID *, VOID *);                       /* rename file object       */
   DQ      Frename(VOID *, VOID *);                       /* - same, old definition   */
   DQ      DelObj(VOID *);                                /* destroy file object      */
   DQ      Fdelete(VOID *);                               /* - same, old definition   */
   DQ      Fcopy(VOID *, VOID *, DQ);                     /* copy src -> dst          */
   DQ      Fmove(VOID *, VOID *, DQ);                     /* copy src -> dst, del src */
   DQ      Fcreate(VOID *, DQ);                           /* create file              */
   DQ      Fxchange(VOID *, VOID *);                      /* xchange contents 2 files */
   DQ      DsrchD(VOID *, DQ, DQ, DQ, DQ);                /* search dirs on n drives  */
   DQ      DsrchN(VOID *, DQ, DQ, DQ, DQ);                /* search dirs, name only   */
   DQ      FsrchN(VOID *, DQ, DQ, DQ, DQ);                /* search files, name only  */
   DQ      DsrchP(VOID *, DQ, DQ, DQ, DQ);                /* search dirs, path added  */
   DQ      FsrchP(VOID *, DQ, DQ, DQ, DQ);                /* search files, path added */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � F i l e L i s t                         額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      FileOpen(DQ);                                  /* OS/2 file dialog         */
   DQ      FLSdlg(DQ, DQ, MPARAM, MPARAM);                /* ST   file list           */
   DQ      FLSadd(VOID);                                  /* add file to list         */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � G R A P H I C S                         額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      BMPload(DQ);                                   /* bitmap -> PS             */
   DQ      BMPaint(DQ);                                   /* WM_PAINT response        */
   DQ      BMPquit(DQ);                                   /* delete bmp & assoc. data */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � M e m H a n d l e   M o n i t o r       額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      MHmon(DQ);                                     /* MH-Monitor call          */
   DQ      MHdlg(HWND, DQ, MPARAM, MPARAM);               /* MH-Monitor dialog        */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � N O T E B O O K S                       額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      InitBk(DQ, DQ);                                /* initialize notebook      */
   DQ      RegPg(DQ, DQ, DQ);                             /* register pages           */
   DD      SetTab(HWND, DD);                              /* set tab size             */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � O n L i n e - H e l p                   額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      Help(DQ);                                      /* OLH user call            */
   DQ      HLPdl(DQ, DQ, MPARAM, MPARAM);                 /*     main dialog          */
   DQ      HLPad(DQ, DQ, MPARAM, MPARAM);                 /*     add/change help      */
   DQ      TOPdl(DQ, DQ, MPARAM, MPARAM);                 /*     topic dialog         */
   DQ      TOPad(DQ, DQ, MPARAM, MPARAM);                 /*     add new topic        */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � R e g i s t e r M o n i t o r           額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      MonTST(VOID);                                  /* get register contents    */
   DQ      TSTmon(VOID);                                  /* write reg dump to file   */
   DQ      REGmon(VOID);                                  /* register monitor: call   */
   DQ      REGdlg(DQ, DQ, MPARAM, MPARAM);                /*                   dialog */
   DQ      MemDmp(VOID *, DQ);                            /* write memory to file     */
   DQ      StkDmp(VOID);                                  /* write stack  to file     */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
   � S e c S y s                             額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
   */
   DQ      SecSy(DQ, DQ, VOID *);                         /* SecSys distributor       */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
   � Applications call SecSy(command, address, numeric), only. Low level functions in 額
   � sec.lib rely on properly set globals. You should leave your hands off of them!   額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
   */
   DQ      SecAH(VOID);                                   /* SecSys alert handler     */
   DQ      getMK(DQ, DQ, MPARAM, MPARAM);                 /*        create MasterKey  */
   DQ      chkMK(DQ, DQ, MPARAM, MPARAM);                 /*        login Master      */
   DQ      login(DQ, DQ, MPARAM, MPARAM);                 /*              user        */
   /*
   浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
   藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
   */
#endif
