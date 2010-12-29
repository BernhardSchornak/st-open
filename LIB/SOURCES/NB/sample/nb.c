  /*
  ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
  К                                                                                    Кл
  К    n b . c                 N O T E B O O K   P A G E S                             Кл
  К                                                                                    Кл
  КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
  К                        *** (C)1979 - 2007  ST-SOFTWARE ***                         Кл
  ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
  Г                                                                                    Гл
  Г This is a skeleton for creating a notebook with six major and no minor pages. Have Гл
  Г a look into the code of DSA in the folders of my old system version 3.1.1., if you Гл
  Г want to know, how minor pages may be handled...                                    Гл
  Г                                                                                    Гл
  Г BkMain() is the notebook dialog - the book without pages. Pages are added with the Гл
  Г call to BkInit() in the NBI.C file.  To get a running notebook, copy this skeleton Гл
  Г to your program source files. Customize the code with your controls for each page. Гл
  Г Include NBK.LIB and this file in your makefile, then compile your program.  Do not Гл
  Г forget, that you need a dialog for the book and each page ( a skeleton  NB.DLG  is Гл
  Г included in this folder, too ).                                                    Гл
  Г                                                                                    Гл
  Г If you get in trouble with anything - please read the documentation NBK in the DOC Гл
  Г folder ( a subfolder of ST5 )...                                                   Гл
  Г                                                                                    Гл
  УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
  Г                                                                                    Гл
  Г Please use field number FFFFFF00 for your notebook data field. If you want to have Гл
  Г more notebooks in your program, use numbers FFFFFEFF and below, because the fields Гл
  Г above FFFFFF00 are already defined for other things, e.g. spinbutton data, etc.!   Гл
  Г                                                                                    Гл
  РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  */

#define  INCL_DOSPROCESS
#define  INCL_WINDIALOGS
#define  INCL_WINSTDBOOK
#define  INCL_WIN
#define  INCL_PM
#include <os2.h>
#include "hglb.h"
#include "hres.h"

  /*
  кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
  Г  BkMain             N O T E B O O K   M A I N   P R O C E S S         ID --        Гл
  УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
  Г                                                                                    Гл
  Г CALL   - rc = BkMain(h);                                                           Гл
  Г                                                                                    Гл
  Г INPUT  > h             HWND                                                        Гл
  Г                                                                                    Гл
  Г OUTPUT < MRESULT       specific                                                    Гл
  Г                                                                                    Гл
  РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  */

  MRESULT EXPENTRY BkMain(HWND h, DD msg, MPARAM mp1, MPARAM mp2)
  {
   switch(msg)
   {
    case WM_INITDLG : {
                       LD ld;
                       DD mh;
                       /*
                       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
                       Г load initial data                       Гл
                       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
                         лллллллллллллллллллллллллллллллллллллллллл
                       */
                       Mcl(&ld, 40);
                       ld.FldNr = 0xFFFFFF00;
                       ld.LdCtl = LDR_READ | LDR_WRITE | LDR_STATIC;
                       /*
                       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
                       Г ERROR - load initial data failed        Гл
                       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
                         лллллллллллллллллллллллллллллллллллллллллл
                       */
                       if(LDreq(&ld))
                       {
                        return(0);
                       }
                       mh = ld.MMoff;
                       /*
                       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
                       Г store MemHandle if you need book's data Гл
                       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
                         лллллллллллллллллллллллллллллллллллллллллл
                       */
                       FDacc(FLD_NUM, 0x0060, 0, FDA_WRITE, 0, mh);
                       /*
                       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
                       Г store hwnd (same as the dialog's hwnd!) Гл
                       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
                         лллллллллллллллллллллллллллллллллллллллллл
                       */
                       FDacc(FLD_NUM, 0x0061, 0, FDA_WRITE, 0, h);
                       /*
                       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
                       Г set PFNWPs (do this for each page!)     Гл
                       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
                         лллллллллллллллллллллллллллллллллллллллллл
                       */
                       FDacc(mh, 1, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg1);
                       FDacc(mh, 2, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg2);
                       FDacc(mh, 3, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg3);
                       FDacc(mh, 4, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg4);
                       FDacc(mh, 5, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg5);
                       FDacc(mh, 6, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg6);
                       /*
                       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
                       Г prevent controls from running wild      Гл
                       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
                         лллллллллллллллллллллллллллллллллллллллллл
                       */
                       FlgS(SYS_FLGS, SYS_BOOK_01);
                       /*
                       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
                       Г initialize book and set pages           Гл
                       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
                         лллллллллллллллллллллллллллллллллллллллллл
                       */
                       InitBk(h);
                       /*
                       кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
                       Г enable controls, start working          Гл
                       РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
                         лллллллллллллллллллллллллллллллллллллллллл
                       */
                       FlgR(SYS_FLGS, SYS_BOOK_01);
                       CtrWn(h);
                       return(0);
                      }
  /*
  кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
  Г delete WM_COMMAND, if your book does not have pushbuttons!     Гл
  РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  */
    case WM_COMMAND : {
                       switch(W0MP(mp1))
                       {
                        case BK_0010  : {
                                         WinDD(h);
                                         break;
                                        }
                       }
                      }
   }
   return DefDP(h, msg, mp1, mp2);
  }

  /*
  кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
  Г  NB0000                  P A G E  1/6    D L G - P R O C              ID --        Гл
  РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  */

  MRESULT EXPENTRY NB0000(HWND h, DD msg, MPARAM mp1, MPARAM mp2)
  {
   switch(msg)
   {
    case WM_INITDLG : {
                       WinSh(h, 1);
                       return(0);
                      }
    case WM_COMMAND : {
                       switch(W0MP(mp1))
                       {
                        case NB_0010 : {
                                        return(0);
                                       }
                       }
                      }
    default         : return DefDP(h, msg, mp1, mp2);
   }
   return DefDP(h, msg, mp1, mp2);
  }

  /*
  кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
  Г  NB1000                  P A G E  2/6    D L G - P R O C              ID --        Гл
  РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  */

  MRESULT EXPENTRY NB1000(HWND h, DD msg, MPARAM mp1, MPARAM mp2)
  {
   switch(msg)
   {
    case WM_INITDLG : {
                       WinSh(h, 1);
                       return(0);
                      }
    case WM_COMMAND : {
                       switch(W0MP(mp1))
                       {
                        case NB_1010 : {
                                        return(0);
                                       }
                       }
                      }
    default         : return DefDP(h, msg, mp1, mp2);
   }
   return DefDP(h, msg, mp1, mp2);
  }

  /*
  кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
  Г  NB2000                  P A G E  3/6    D L G - P R O C              ID --        Гл
  РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  */

  MRESULT EXPENTRY NB2000(HWND h, DD msg, MPARAM mp1, MPARAM mp2)
  {
   switch(msg)
   {
    case WM_INITDLG : {
                       WinSh(h, 1);
                       return(0);
                      }
    case WM_COMMAND : {
                       switch(W0MP(mp1))
                       {
                        case NB_2010 : {
                                        return(0);
                                       }
                       }
                      }
    default         : return DefDP(h, msg, mp1, mp2);
   }
   return DefDP(h, msg, mp1, mp2);
  }

  /*
  кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
  Г  NB3000                  P A G E  4/6    D L G - P R O C              ID --        Гл
  РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  */

  MRESULT EXPENTRY NB3000(HWND h, DD msg, MPARAM mp1, MPARAM mp2)
  {
   switch(msg)
   {
    case WM_INITDLG : {
                       WinSh(h, 1);
                       return(0);
                      }
    case WM_COMMAND : switch(W0MP(mp1))
                      {
                       case NB_3010 : {
                                       return(0);
                                      }
                      }
    default         : return DefDP(h, msg, mp1, mp2);
   }
   return DefDP(h, msg, mp1, mp2);
  }

  /*
  кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
  Г  NB4000                  P A G E  5/6    D L G - P R O C              ID --        Гл
  РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  */

  MRESULT EXPENTRY NB4000(HWND h, DD msg, MPARAM mp1, MPARAM mp2)
  {
   switch(msg)
   {
    case WM_INITDLG : {
                       WinSh(h, 1);
                       return(0);
                      }
    case WM_COMMAND : switch(W0MP(mp1))
                      {
                       case NB_4010 : {
                                       return(0);
                                      }
                      }
    default         : return DefDP(h, msg, mp1, mp2);
   }
   return DefDP(h, msg, mp1, mp2);
  }

  /*
  кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
  Г  NB5000                  P A G E  6/6    D L G - P R O C              ID --        Гл
  РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  */

  MRESULT EXPENTRY NB5000(HWND h, DD msg, MPARAM mp1, MPARAM mp2)
  {
   switch(msg)
   {
    case WM_INITDLG : {
                       WinSh(h, 1);
                       return(0);
                      }
    case WM_COMMAND : switch(W0MP(mp1))
                      {
                       case NB_5010 : {
                                       return(0);
                                      }
                      }
    default         : return DefDP(h, msg, mp1, mp2);
   }
   return DefDP(h, msg, mp1, mp2);
  }

