  /*
  ������������������������������������������������������������������������������������ͻ
  �                                                                                    ��
  �    n b . c                 N O T E B O O K   P A G E S                             ��
  �                                                                                    ��
  ������������������������������������������������������������������������������������ĺ�
  �                        *** (C)1979 - 2007  ST-SOFTWARE ***                         ��
  ������������������������������������������������������������������������������������ͼ�
    �������������������������������������������������������������������������������������
  ������������������������������������������������������������������������������������Ŀ
  �                                                                                    ��
  � This is a skeleton for creating a notebook with six major and no minor pages. Have ��
  � a look into the code of DSA in the folders of my old system version 3.1.1., if you ��
  � want to know, how minor pages may be handled...                                    ��
  �                                                                                    ��
  � BkMain() is the notebook dialog - the book without pages. Pages are added with the ��
  � call to BkInit() in the NBI.C file.  To get a running notebook, copy this skeleton ��
  � to your program source files. Customize the code with your controls for each page. ��
  � Include NBK.LIB and this file in your makefile, then compile your program.  Do not ��
  � forget, that you need a dialog for the book and each page ( a skeleton  NB.DLG  is ��
  � included in this folder, too ).                                                    ��
  �                                                                                    ��
  � If you get in trouble with anything - please read the documentation NBK in the DOC ��
  � folder ( a subfolder of ST5 )...                                                   ��
  �                                                                                    ��
  ������������������������������������������������������������������������������������Ĵ�
  �                                                                                    ��
  � Please use field number FFFFFF00 for your notebook data field. If you want to have ��
  � more notebooks in your program, use numbers FFFFFEFF and below, because the fields ��
  � above FFFFFF00 are already defined for other things, e.g. spinbutton data, etc.!   ��
  �                                                                                    ��
  ���������������������������������������������������������������������������������������
    �������������������������������������������������������������������������������������
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
  ������������������������������������������������������������������������������������Ŀ
  �  BkMain             N O T E B O O K   M A I N   P R O C E S S         ID --        ��
  ������������������������������������������������������������������������������������Ĵ�
  �                                                                                    ��
  � CALL   - rc = BkMain(h);                                                           ��
  �                                                                                    ��
  � INPUT  > h             HWND                                                        ��
  �                                                                                    ��
  � OUTPUT < MRESULT       specific                                                    ��
  �                                                                                    ��
  ���������������������������������������������������������������������������������������
    �������������������������������������������������������������������������������������
  */

  MRESULT EXPENTRY BkMain(HWND h, DD msg, MPARAM mp1, MPARAM mp2)
  {
   switch(msg)
   {
    case WM_INITDLG : {
                       LD ld;
                       DD mh;
                       /*
                       �����������������������������������������Ŀ
                       � load initial data                       ��
                       ��������������������������������������������
                         ������������������������������������������
                       */
                       Mcl(&ld, 40);
                       ld.FldNr = 0xFFFFFF00;
                       ld.LdCtl = LDR_READ | LDR_WRITE | LDR_STATIC;
                       /*
                       �����������������������������������������Ŀ
                       � ERROR - load initial data failed        ��
                       ��������������������������������������������
                         ������������������������������������������
                       */
                       if(LDreq(&ld))
                       {
                        return(0);
                       }
                       mh = ld.MMoff;
                       /*
                       �����������������������������������������Ŀ
                       � store MemHandle if you need book's data ��
                       ��������������������������������������������
                         ������������������������������������������
                       */
                       FDacc(FLD_NUM, 0x0060, 0, FDA_WRITE, 0, mh);
                       /*
                       �����������������������������������������Ŀ
                       � store hwnd (same as the dialog's hwnd!) ��
                       ��������������������������������������������
                         ������������������������������������������
                       */
                       FDacc(FLD_NUM, 0x0061, 0, FDA_WRITE, 0, h);
                       /*
                       �����������������������������������������Ŀ
                       � set PFNWPs (do this for each page!)     ��
                       ��������������������������������������������
                         ������������������������������������������
                       */
                       FDacc(mh, 1, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg1);
                       FDacc(mh, 2, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg2);
                       FDacc(mh, 3, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg3);
                       FDacc(mh, 4, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg4);
                       FDacc(mh, 5, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg5);
                       FDacc(mh, 6, 3, FDA_WRITE, 0, (PFNWP)Bk1Pg6);
                       /*
                       �����������������������������������������Ŀ
                       � prevent controls from running wild      ��
                       ��������������������������������������������
                         ������������������������������������������
                       */
                       FlgS(SYS_FLGS, SYS_BOOK_01);
                       /*
                       �����������������������������������������Ŀ
                       � initialize book and set pages           ��
                       ��������������������������������������������
                         ������������������������������������������
                       */
                       InitBk(h);
                       /*
                       �����������������������������������������Ŀ
                       � enable controls, start working          ��
                       ��������������������������������������������
                         ������������������������������������������
                       */
                       FlgR(SYS_FLGS, SYS_BOOK_01);
                       CtrWn(h);
                       return(0);
                      }
  /*
  ����������������������������������������������������������������Ŀ
  � delete WM_COMMAND, if your book does not have pushbuttons!     ��
  �������������������������������������������������������������������
    �����������������������������������������������������������������
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
  ������������������������������������������������������������������������������������Ŀ
  �  NB0000                  P A G E  1/6    D L G - P R O C              ID --        ��
  ���������������������������������������������������������������������������������������
    �������������������������������������������������������������������������������������
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
  ������������������������������������������������������������������������������������Ŀ
  �  NB1000                  P A G E  2/6    D L G - P R O C              ID --        ��
  ���������������������������������������������������������������������������������������
    �������������������������������������������������������������������������������������
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
  ������������������������������������������������������������������������������������Ŀ
  �  NB2000                  P A G E  3/6    D L G - P R O C              ID --        ��
  ���������������������������������������������������������������������������������������
    �������������������������������������������������������������������������������������
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
  ������������������������������������������������������������������������������������Ŀ
  �  NB3000                  P A G E  4/6    D L G - P R O C              ID --        ��
  ���������������������������������������������������������������������������������������
    �������������������������������������������������������������������������������������
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
  ������������������������������������������������������������������������������������Ŀ
  �  NB4000                  P A G E  5/6    D L G - P R O C              ID --        ��
  ���������������������������������������������������������������������������������������
    �������������������������������������������������������������������������������������
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
  ������������������������������������������������������������������������������������Ŀ
  �  NB5000                  P A G E  6/6    D L G - P R O C              ID --        ��
  ���������������������������������������������������������������������������������������
    �������������������������������������������������������������������������������������
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

