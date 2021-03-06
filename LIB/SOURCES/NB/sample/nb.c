  /*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  �                                                                                    裁
  �    n b . c                 N O T E B O O K   P A G E S                             裁
  �                                                                                    裁
  債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
  �                        *** (C)1979 - 2007  ST-SOFTWARE ***                         裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  �                                                                                    額
  � This is a skeleton for creating a notebook with six major and no minor pages. Have 額
  � a look into the code of DSA in the folders of my old system version 3.1.1., if you 額
  � want to know, how minor pages may be handled...                                    額
  �                                                                                    額
  � BkMain() is the notebook dialog - the book without pages. Pages are added with the 額
  � call to BkInit() in the NBI.C file.  To get a running notebook, copy this skeleton 額
  � to your program source files. Customize the code with your controls for each page. 額
  � Include NBK.LIB and this file in your makefile, then compile your program.  Do not 額
  � forget, that you need a dialog for the book and each page ( a skeleton  NB.DLG  is 額
  � included in this folder, too ).                                                    額
  �                                                                                    額
  � If you get in trouble with anything - please read the documentation NBK in the DOC 額
  � folder ( a subfolder of ST5 )...                                                   額
  �                                                                                    額
  団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
  �                                                                                    額
  � Please use field number FFFFFF00 for your notebook data field. If you want to have 額
  � more notebooks in your program, use numbers FFFFFEFF and below, because the fields 額
  � above FFFFFF00 are already defined for other things, e.g. spinbutton data, etc.!   額
  �                                                                                    額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  �  BkMain             N O T E B O O K   M A I N   P R O C E S S         ID --        額
  団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
  �                                                                                    額
  � CALL   - rc = BkMain(h);                                                           額
  �                                                                                    額
  � INPUT  > h             HWND                                                        額
  �                                                                                    額
  � OUTPUT < MRESULT       specific                                                    額
  �                                                                                    額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  */

  MRESULT EXPENTRY BkMain(HWND h, DD msg, MPARAM mp1, MPARAM mp2)
  {
   switch(msg)
   {
    case WM_INITDLG : {
                       LD ld;
                       DD mh;
                       /*
                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
                       � load initial data                       額
                       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
                         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
                       */
                       Mcl(&ld, 40);
                       ld.FldNr = 0xFFFFFF00;
                       ld.LdCtl = LDR_READ | LDR_WRITE | LDR_STATIC;
                       /*
                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
                       � ERROR - load initial data failed        額
                       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
                         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
                       */
                       if(LDreq(&ld))
                       {
                        return(0);
                       }
                       mh = ld.MMoff;
                       /*
                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
                       � store MemHandle if you need book's data 額
                       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
                         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
                       */
                       FDacc(FLD_NUM, 0x0060, 0, FDA_WRITE, 0, mh);
                       /*
                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
                       � store hwnd (same as the dialog's hwnd!) 額
                       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
                         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
                       */
                       FDacc(FLD_NUM, 0x0061, 0, FDA_WRITE, 0, h);
                       /*
                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
                       � set PFNWPs (do this for each page!)     額
                       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
                         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
                       */
                       FDacc(mh, 1, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg1);
                       FDacc(mh, 2, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg2);
                       FDacc(mh, 3, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg3);
                       FDacc(mh, 4, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg4);
                       FDacc(mh, 5, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg5);
                       FDacc(mh, 6, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg6);
                       /*
                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
                       � prevent controls from running wild      額
                       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
                         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
                       */
                       FlgS(SYS_FLGS, SYS_BOOK_01);
                       /*
                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
                       � initialize book and set pages           額
                       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
                         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
                       */
                       InitBk(h);
                       /*
                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
                       � enable controls, start working          額
                       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
                         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
                       */
                       FlgR(SYS_FLGS, SYS_BOOK_01);
                       CtrWn(h);
                       return(0);
                      }
  /*
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  � delete WM_COMMAND, if your book does not have pushbuttons!     額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  �  NB0000                  P A G E  1/6    D L G - P R O C              ID --        額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  �  NB1000                  P A G E  2/6    D L G - P R O C              ID --        額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  �  NB2000                  P A G E  3/6    D L G - P R O C              ID --        額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  �  NB3000                  P A G E  4/6    D L G - P R O C              ID --        額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  �  NB4000                  P A G E  5/6    D L G - P R O C              ID --        額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  �  NB5000                  P A G E  6/6    D L G - P R O C              ID --        額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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

