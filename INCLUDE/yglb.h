  /*
    ==================================================================================
                  GLOBAL FUNCTION DEFINITIONS    (C) ST-Open 1979 - 2012
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
  */

#ifndef __yglb__
#define __yglb__

#define INCL_PM
#define INCL_GPI
#include <os2.h>
#include "ydat.h"

  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                               S Y S T E M    L I B R A R Y
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    acf.S   ST's database engine
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      FDacc(DQ, DQ, DQ, DQ, VOID*, DQ);             /* default definition       */
  VOID *  FDvpt(DQ, DQ, DQ, DQ);                        /* get entry address        */
  DQ      SftUp(DQ, DQ, DQ);                            /* shift entries one up     */
  DQ      SftDn(DQ, DQ, DQ);                            /* shift entries one down   */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    cap.S   sandboxes: WinAPI
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    window create/destroy
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      RegClass(VOID *);                             /* RegisterClassA()         */
  DQ      RegClssX(VOID *);                             /* RegisterClassExA()       */
  DQ      LdIcon(DQ, VOID *);                           /* LoadIconA()              */
  DQ      LdCursor(DQ, VOID *);                         /* LoadCursorA()            */
  DQ      GStkObj(DQ, VOID *);                          /* GetStockObject()         */
  DQ      WnCreate(VOID *, VOID *, DQ, DQ, DQ, DQ, DQ, DQ, DQ, DQ, VOID *);
                                                        /* CreateWindowA()          */
  DQ      WnCreatX(DQ, VOID *, VOID *, DQ, DQ, DQ, DQ, DQ, DQ, DQ, DQ, VOID *);
                                                        /* CreateWindowExA()        */
  DQ      KillWin(DQ);                                  /* DestroyWindow()          */
  DQ      KillDlg(DQ);                                  /* EndDialog()              */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    message queue
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      GetMsg(VOID *, DQ, DQ, DQ);                   /* GetMessageA()            */
  DQ      PeekMsg(VOID *, DQ, DQ, DQ, DQ);              /* PeekMessageA()           */
  DQ      TrnsMsg(VOID *);                              /* TranslateMessage()       */
  DQ      DispMsg(VOID *);                              /* DispatchMessageA()       */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    emit message
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      DefWP(DQ, DQ, WPARAM, LPARAM);                /* DefWindowProcA()         */
  DQ      DefDP(DQ, DQ, WPARAM, LPARAM);                /* DefDlgProcA()            */
  DQ      SendM(DQ, DQ, WPARAM, LPARAM);                /* SendMessage()            */
  DQ      PostM(DQ, DQ, WPARAM, LPARAM);                /* PostMessage()            */
  DQ      SnDIM(DQ, DQ, DQ, WPARAM, LPARAM);            /* SendDlgItemMessage()     */
  DQ      Pquit(DQ);                                    /* PostQuitMessage()        */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    window properties
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      WinId(DQ, DQ);                                /* GetDlgItem()             */
  DQ      WinQW(DQ, DQ);                                /* GetWindow()              */
  DQ      WnPos(DQ, VOID *);                            /* SetWindowPlacement()     */
  DQ      WQPos(DQ, VOID *);                            /* GetWindowPlacement()     */
  DQ      WnMov(DQ, VOID *);                            /* MoveWindow()             */
  DQ      WInvR(DQ, VOID *, DQ);                        /* InvalidateRect()         */
  DQ      WinSh(DQ, DQ);                                /* ShowWindow()             */
  DQ      WinEn(DQ, DQ);                                /* EnableWindow()           */
  DQ      WnEWU(DQ, DQ);                                /* LockWindowUpdate()       */
  DQ      WnAct(DQ);                                    /* SetActiveWindow()        */
  DQ      WnFoc(DQ);                                    /* SetFocus()               */
  DQ      WnUpd(DQ);                                    /* UpdateWindow()           */
  DQ      CtlSh(DQ, DQ, DQ);                            /* ShowWindow(ID)           */
  DQ      CtlEn(DQ, DQ, DQ);                            /* EnableWindow(ID)         */
  DQ      WnSTx(DQ, VOID *);                            /* SetWindowText()          */
  VOID *  WnQTx(DQ, VOID *, DQ);                        /* GetWindowText()          */
  DQ      WnSDT(DQ, DQ, VOID *);                        /* SetDlgItemText(ID)       */
  DQ      SEf(DQ, DQ, VOID *);                          /* obsolete - use WnSDT()   */
  VOID *  WnQDT(DQ, DQ, VOID *, DQ);                    /* GetDlgItemText(ID)       */
  DQ      QEf(DQ, DQ, VOID *);                          /* obsolete - use WnQDT()   */
  DQ      WnGWL(DQ, DQ);                                /* GetWindowLongA()         */
  DQ      WnSWL(DQ, DQ, DQ);                            /* SetWindowLongA()         */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    memory allocation
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      AloMem(DQ);                                   /* VirtualAlloc()           */
  DQ      FreMem(VOID *, DQ);                           /* VirtualFree()            */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    miscellaneous
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      WaitTm(DQ);                                   /* Sleep()                  */
  DQ      WaitTx(DQ, DQ);                               /* SleepEx()                */
  DQ      GetRes(VOID);                                 /* get screen resolution    */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    cvt.S   data conversion
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      asc2s(VOID *, VOID *, DQ);                    /* ASCII-string for display */
  DQ      B2hex(DQ, VOID *);                            /* HEX -> $   DB            */
  DQ      W2hex(DQ, VOID *);                            /*            DW            */
  DQ      D2hex(DQ, VOID *);                            /*            DD            */
  DQ      Q2hex(DQ, VOID *);                            /*            DQ            */
  DQ      h2str(VOID *, VOID *, DQ, DQ);                /*            n byte        */
  DQ      D2dec(DQ, VOID *, DQ);                        /* DEC -> $   formatted     */
  DQ      Q2dec(DQ, VOID *, DQ);                        /* QWord ->   formatted dec */
  DQ      dec2f(VOID *, DQ);                            /* insert pseudo fl. point  */
  DQ      s2num(VOID *, VOID *, DQ, DQ);                /* HEX <-> unpacked digits  */
  DQ      hex2D(VOID *);                                /* $ -> HEX   signed dword  */
  DQ      hex2Q(VOID *);                                /*            signed qword  */
  DQ      dec2D(VOID *);                                /* S -> DEC   signed dword  */
  DQ      dec2Q(VOID *);                                /*            signed qword  */
  DQ      prime(DQ);                                    /* TEST       prime number? */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ldr.S   ST's loader (memory management)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      LDinit(VOID);                                 /* initialise loader        */
  DQ      LDreq(PLD);                                   /* request mem / load file  */
  DQ      LDchg(DQ, DQ);                                /* change size of memory    */
  DQ      LDfre(DQ);                                    /* free allocated memory    */
  DQ      LDexit(VOID);                                 /* shut down loader         */
  DQ      LDchk(DQ);                                    /* checker (dynamic loader) */
  DQ      FnDat(DQ, VOID *);                            /* field-# -> filename      */
  DQ      LDclr(DQ);                                    /* erase entire field data  */
  DQ      getMH(DQ);                                    /* MemHandle from field #   */
  DQ      LDupd(PLD, DQ);                               /* update LD structure      */
  DQ      LDunc(DQ);                                    /* reset changed            */
  DQ      LDstc(DQ);                                    /*   set changed            */
  DQ      LDsts(DQ, DQ);                                /*   set changed + size     */
  DQ      MHxcg(DQ, DQ);                                /* exchange two MemHandles  */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    lng.S - language support
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      MNUtxt(HWND, DQ, DQ);                         /* language support MENUS   */
  DQ      DLGtxt(HWND, DQ, DQ, DQ);                     /* language support DIALOGS */
  DQ      ErrMgr(DQ);                                   /* error manager            */
  DQ      SyMsg(HWND, DQ, MPARAM, MPARAM);              /* system messages - dialog */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    pmf.S   sandboxes: PM controls
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      DBox(HWND, DLGPROC, DQ);                      /* DialogBox(STV_HCLIENT)   */
  DQ      dbox(DLGPROC, DQ);                            /* DialogBox(HWND_DESKTOP)  */
  DQ      LDdlg(DQ, DQ, DLGPROC, HMODULE, DQ, VOID *);  /* CreateDialog()           */
  DQ      debug(DQ, DB *);                              /* common Debug MBox        */
  DQ      MBox(DB *, DB *, DQ);                         /*        MessageBox        */
  DQ      SBtn(DQ, DQ, DQ);                             /* set    button            */
  DQ      SCkB(DQ, DQ, DQ);                             /* set    check button      */
  DQ      QCkB(DQ, DQ);                                 /* query  check button      */
  DQ      MnuHw(DQ);                                    /* query  menu HWND         */
  DQ      MnGet(DQ, DQ);                                /* GetMenuItemInfo()        */
  DQ      MnSet(DQ, DQ);                                /* SetMenuItemInfo()        */
  DQ      MnAdd(DQ, DQ);                                /* InsertMenuItemA()        */
  DQ      MnDel(DQ, DQ);                                /* DeleteMenuItem()         */
  DQ      CtrWn(DQ);                                    /* center window            */
  DQ      RISmain(VOID);                                /* set numerics to main     */
  DQ      RISempt(VOID);                                /* clear RIS numerics       */
  DQ      prc2pix(VOID);                                /* convert percent to pixel */
  DQ      pix2prc(VOID);                                /*         pixel to percent */
  DQ      RAND(VOID);                                   /* ST-Open RNG   (RDTSC)    */
  DQ      RND(DQ, DQ);                                  /* RND(min, max) (RDTSC)    */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    spn.S   field controlled spinbuttons
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      STspn(DQ, DQ, DQ, VOID *);                    /* automated spinbuttons    */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    srt.S   ST-Open Sort
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      sortB(VOID *, DQ, DQ);                        /* sort array of bytes      */
  DQ      sortW(VOID *, DQ, DQ);                        /* sort array of words      */
  DQ      sortD(VOID *, DQ, DQ);                        /* sort array of dwords     */
  DQ      STsrt(VOID *, DQ, DQ, DQ);                    /* ST-Open sort             */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ssa.S   Sec(urity)Sys(tem) - low level
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      ssENC(VOID *, DQ);                            /* SecSys encode            */
  DQ      ssDEC(VOID *, DQ);                            /*        decode            */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    str.S   string handling
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      SLen(VOID *);                                 /* get stringlength         */
  DQ      SCmp(VOID *, VOID *);                         /* compare strings strcmp() */
  DQ      MCmp(VOID *, VOID *, DQ);                     /* compare memory blocks    */
  DQ      SCpy(VOID *, VOID *);                         /* copy strings    strcpy() */
  DQ      SAdd(VOID *, VOID *);                         /* add  strings    strcat() */
  DQ      SCut(VOID *, DQ, DQ);                         /* cut bytes out of string  */
  DQ      SClr(VOID *, DQ);                             /* clear n bytes at adress  */
  DQ      SInc(VOID *, VOID *);                         /* is $1 included in $2 ?   */
  DQ      SIns(VOID *, VOID *, DQ);                     /* insert $2 in $1 (at DD)  */
  DQ      CRLF(VOID *);                                 /* add CR_LF to string end  */
  DQ      EOF(VOID *);                                  /*     EOF   to string end  */
  DQ      StrAt(VOID *, VOID *, DQ);                    /* put str 2 at pos str 1   */
  DQ      CntWrd(VOID *);                               /* count words in a string  */
  DQ      Supp(VOID *);                                 /* convert to upper case    */
  DQ      Slow(VOID *);                                 /*            lower case    */
  DQ      SFill(VOID *, DQ, DQ, DQ);                    /* fill string with ASCII   */
  DQ      Mcl(VOID *, DQ);                              /* clear memory blocks      */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    tms.S   time and date functions
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      GetTime(VOID);                                /* get current HHMM SShh    */
  DQ      GetDate(VOID);                                /* get current YYYY MMDD    */
  DQ      dDiff(DQ, DQ);                                /* DMY2 - DMY1              */
  DQ      dSum(DQ, DQ);                                 /* DMY2 + DMY1              */
  DQ      d2day(DQ, DQ);                                /* days between DMY1 & DMY2 */
  DQ      M2day(DQ, DQ);                                /* days in X months from Mx */
  DQ      tDiff(DQ, DQ);                                /* difference time1 - time2 */
  DQ      tSum(DQ, DQ);                                 /* addition   time1 + time2 */
  DQ      tadd2(DQ, DQ);                                /* - same, old definition   */
  DQ      t2sec(DQ);                                    /* HHMM SShh -> s           */
  DQ      sec2t(DQ);                                    /* s         -> HHMM SShh   */
  DQ      t2hun(DQ);                                    /* HHMM SShh -> 1/100 s     */
  DQ      hun2t(DQ);                                    /* 1/100 s   -> HHMM SShh   */
  DQ      t2out(DQ, VOID *, DQ);                        /* time -> string           */
  DQ      d2out(DQ, VOID *);                            /* date -> string (EU)      */
  DQ      d2iso(DQ, VOID *);                            /* date -> string (ISO)     */
  DQ      s2DMY(VOID *);                                /* string -> date           */
  DQ      s2HMS(VOID *);                                /* string -> time           */
  DQ      GtDay(DQ);                                    /* get day   from YMD       */
  DQ      GtMon(DQ);                                    /* get month from YMD       */
  DQ      GetYr(DQ);                                    /* get year  from YMD       */
  DQ      chkLY(DQ);                                    /* check for leap year      */
  DQ      mkDate(DQ, DQ, DQ);                           /* assemble date            */
  DQ      chkDMY(DQ);                                   /* make DMY  valid          */
  DQ      chkHMS(DQ);                                   /* make HMSh valid          */
  DQ      WkDay(DQ);                                    /* get day of week from DMY */
  DQ      Since(DQ);                                    /* days between DMY...today */
  DQ      GtAge(DQ);                                    /* yrs. between DMY...today */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    wrp.S   low level file functions
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      Fopen(VOID *, DQ, DQ, PFH);                   /* open file                */
  DQ      Fread(PFH, DQ);                               /* read from file           */
  DQ      Fwrite(PFH, DQ);                              /* write to file            */
  DQ      Fsptr(PFH);                                   /* set file pointer         */
  DQ      Fsize(PFH, DQ);                               /*     file size            */
  DQ      Fclose(PFH);                                  /* close open file          */
  DQ      CrDir(VOID *);                                /* DosCreateDir()           */
  DQ      GetPath(VOID *);                              /* get path from filename   */
  DQ      NameExt(VOID *);                              /*     name + extension     */
  DQ      GetName(VOID *);                              /*     name only            */
  DQ      GetExt(VOID *);                               /*     last extension       */
  DQ      SetPath(VOID *);                              /* set current drive + path */
  DQ      DirUp(VOID *);                                /* "cd .."                  */
  DQ      remRO(VOID *);                                /* remove read only attrib. */
  /*
   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                   L I B R A R I E S
   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    A U D I O
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    low level
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      ckWAV(VOID *, DQ);                            /* check WAV header or file */
  DQ      mkWAV(VOID *, DQ, DQ, DQ, DQ);                /* create new WAVE header   */
  DQ      mo2st(VOID *, VOID *, DQ, DQ, DQ);            /* mono   -> stereo         */
  DQ      st2mo(VOID *, VOID *, DQ, DQ);                /* stereo -> mono           */
  DQ      c8x16(VOID *, VOID *, DQ);                    /*  8 bit -> 16 bit         */
  DQ      c16x8(VOID *, VOID *, DQ);                    /* 16 bit ->  8 bit         */
  DQ      m16up(VOID *, VOID *, DQ);                    /* double sample rate mo16  */
  DQ      s16up(VOID *, VOID *, DQ);                    /*                    st16  */
  DQ      m08up(VOID *, VOID *, DQ);                    /*                    mo08  */
  DQ      s08up(VOID *, VOID *, DQ);                    /*                    st08  */
  DQ      m16dn(VOID *, VOID *, DQ);                    /* half sample rate   mo16  */
  DQ      s16dn(VOID *, VOID *, DQ);                    /*                    st16  */
  DQ      m08dn(VOID *, VOID *, DQ);                    /*                    mo08  */
  DQ      s08dn(VOID *, VOID *, DQ);                    /*                    st08  */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    application level
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      m2s(VOID *, VOID *, DQ, DQ);                  /* convert mono -> stereo   */
  DQ      s2m(VOID *, VOID *, DQ);                      /*         stereo -> mono   */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    mixer
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      mix16(VOID *, VOID *, DQ, DQ);                /* mix 16 bit sources       */
  DQ      norm(VOID *);                                 /* normalise wave file      */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    F i l e   H a n d l i n g
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      NameObj(VOID *, VOID *);                      /* rename file object       */
  DQ      Frename(VOID *, VOID *);                      /* - same, old definition   */
  DQ      DelObj(VOID *);                               /* destroy file object      */
  DQ      Fdelete(VOID *);                              /* - same, old definition   */
  DQ      Fcopy(VOID *, VOID *, DQ);                    /* copy src -> dst          */
  DQ      Fmove(VOID *, VOID *, DQ);                    /* copy src -> dst, del src */
  DQ      Fcreate(VOID *, DQ);                          /* create file              */
  DQ      Fxchange(VOID *, VOID *);                     /* xchange contents 2 files */
  DQ      DsrchD(VOID *, DQ, DQ, DQ, DQ);               /* search dirs on n drives  */
  DQ      DsrchN(VOID *, DQ, DQ, DQ, DQ);               /* search dirs, name only   */
  DQ      FsrchN(VOID *, DQ, DQ, DQ, DQ);               /* search files, name only  */
  DQ      DsrchP(VOID *, DQ, DQ, DQ, DQ);               /* search dirs, path added  */
  DQ      FsrchP(VOID *, DQ, DQ, DQ, DQ);               /* search files, path added */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    F i l e L i s t
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      FileOpen(DQ);                                 /* OS/2 file dialog         */
  DQ      FLSdlg(DQ, DQ, MPARAM, MPARAM);               /* ST   file list           */
  DQ      FLSadd(VOID);                                 /* add file to list         */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    G R A P H I C S
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      BMPload(DQ);                                  /* bitmap -> PS             */
  DQ      BMPaint(DQ);                                  /* WM_PAINT response        */
  DQ      BMPquit(DQ);                                  /* delete bmp & assoc. data */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    M e m H a n d l e   M o n i t o r
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      MHmon(DQ);                                    /* MH-Monitor call          */
  DQ      MHdlg(HWND, DQ, MPARAM, MPARAM);              /* MH-Monitor dialog        */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    N O T E B O O K S
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      InitBk(DQ, DQ);                               /* initialize notebook      */
  DQ      RegPg(DQ, DQ, DQ);                            /* register pages           */
  DD      SetTab(HWND, DD);                             /* set tab size             */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    O n L i n e - H e l p
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      Help(DQ);                                     /* OLH user call            */
  DQ      HLPdl(DQ, DQ, MPARAM, MPARAM);                /*     main dialog          */
  DQ      HLPad(DQ, DQ, MPARAM, MPARAM);                /*     add/change help      */
  DQ      TOPdl(DQ, DQ, MPARAM, MPARAM);                /*     topic dialog         */
  DQ      TOPad(DQ, DQ, MPARAM, MPARAM);                /*     add new topic        */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    R e g i s t e r M o n i t o r
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      MonTST(VOID);                                 /* get register contents    */
  DQ      TSTmon(VOID);                                 /* write reg dump to file   */
  DQ      REGmon(VOID);                                 /* register monitor: call   */
  DQ      REGdlg(DQ, DQ, MPARAM, MPARAM);               /*                   dialog */
  DQ      MemDmp(VOID *, DQ);                           /* write memory to file     */
  DQ      StkDmp(VOID);                                 /* write stack  to file     */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    S e c S y s
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      SecSy(DQ, DQ, VOID *);                        /* SecSys distributor       */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Applications call SecSy(command, address, numeric), only. Low level functions in
    sec.lib rely on properly set globals. You should leave your hands off of them!
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  DQ      SecAH(VOID);                                  /* SecSys alert handler     */
  DQ      getMK(DQ, DQ, MPARAM, MPARAM);                /*        create MasterKey  */
  DQ      chkMK(DQ, DQ, MPARAM, MPARAM);                /*        login Master      */
  DQ      login(DQ, DQ, MPARAM, MPARAM);                /*              user        */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
#endif
