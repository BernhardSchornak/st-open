  /*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  �                    B I T M A P   W I N D O W   H A N D L I N G                     裁
  債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
  �                          *** (C) ST-Open 1979 - 2008 ***                           裁
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

#define  INCL_PM
#define  INCL_WIN
#include <os2.h>
#include "yglb.h"
#include "..\..\..\SRC\AVDL\source\hmsg.h"
#include "..\..\..\SRC\AVDL\source\hpgm.h"
#include "..\..\..\SRC\AVDL\source\hvar.h"
#include "..\..\..\SRC\AVDL\source\hres.h"

  /*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  �  BMPdisp                   B I T M A P   W I N D O W S                             裁
  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様郵�
  �                                                                                    裁
  � Process loop for all bitmap windows in the program.                                裁
  �                                                                                    裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  浜様様様様様様様様融
  � REV.: 0003       裁
  � DATE: 22.02.2006 裁
  藩様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩�
  */

  MRESULT EXPENTRY BMPdisp(HWND h, DD msg, MPARAM mp1, MPARAM mp2)
  {
   switch(msg)
   {
    case WM_CREATE          : {
                               WinSh(h, 1);
                               break;
                              }
    case WM_ERASEBACKGROUND :
    case WM_MOVE            :
    case WM_PAINT           : {
                               DD   mh   = GET(FLD_BMP), entry;
                               entry = FDacc(mh, 0, BMP_WIN_HWND, FDA_SEARCH, 0, h);
                               if(entry != 0xFFFFFFFF)
                               {
                                HBITMAP hbmp  = (HBITMAP)FDacc(mh, entry, BMP_HANDLE,  FDA_READ, 0, 0);
                                HPS     pswin =     (HPS)FDacc(mh, entry, BMP_WIN_HPS, FDA_READ, 0, 0),
                                        psmem =     (HPS)FDacc(mh, entry, BMP_MEM_HPS, FDA_READ, 0, 0),
                                        psstd;
                                /*
                                敖陳陳陳陳陳陳陳陳陳朕
                                � begin painting     額
                                青陳陳陳陳陳陳陳陳陳潰�
                                  栩栩栩栩栩栩栩栩栩栩�
                                */
                                psstd = WinBeginPaint(h, pswin, NULL);
                                /*
                                敖陳陳陳陳陳陳陳陳陳朕
                                � open dialogs?      額
                                青陳陳陳陳陳陳陳陳陳潰�
                                  栩栩栩栩栩栩栩栩栩栩�
                                */
                                if(hbmp)
                                {
                                 POINTL ptl[4];
                                 /*
                                 敖陳陳陳陳陳陳陳陳陳朕
                                 � use BitBlt         額
                                 青陳陳陳陳陳陳陳陳陳潰�
                                   栩栩栩栩栩栩栩栩栩栩�
                                 */
                                 ptl[0].x = 0;
                                 ptl[0].y = 0;
                                 ptl[1].x = FDacc(mh, entry, BMP_WIN_W, FDA_READ, 0, 0);
                                 ptl[1].y = FDacc(mh, entry, BMP_WIN_H, FDA_READ, 0, 0);
                                 ptl[2].x = 0;
                                 ptl[2].y = 0;
                                 ptl[3].x = FDacc(mh, entry, BMP_WIN_W, FDA_READ, 0, 0);
                                 ptl[3].y = FDacc(mh, entry, BMP_WIN_H, FDA_READ, 0, 0);
                                 GpiBitBlt(pswin, psmem, 4, ptl, ROP_SRCCOPY, BBO_IGNORE);
                                 WinEndPaint(pswin);
                                }
                                else
                                {
                                 RECTL r;
                                 DD    clr = FDacc(mh, entry, BMP_CLR_B, FDA_READ, 0, 0);
                                 /*
                                 敖陳陳陳陳陳陳陳陳陳朕
                                 � standard painting  額
                                 青陳陳陳陳陳陳陳陳陳潰�
                                   栩栩栩栩栩栩栩栩栩栩�
                                 */
                                 WinQueryWindowRect(h, (PRECTL)&r);
                                 WinFillRect(psstd, &r, clr);
                                 WinEndPaint(psstd);
                                }
                               }
                               else
                               {
                                /*
                                敖陳陳陳陳陳陳陳陳陳朕
                                � unknown windows    額
                                青陳陳陳陳陳陳陳陳陳潰�
                                  栩栩栩栩栩栩栩栩栩栩�
                                */
                                return(WinDefWindowProc(h, msg, mp1, mp2));
                               }
                               break;
                              }
    case WM_SIZE            : {
                               DD entry = FDacc(GET(FLD_BMP), 0, BMP_WIN_HWND, FDA_SEARCH, 0, h);
                               if(entry != 0xFFFFFFFF)
                               {
                                if(entry == 63)
                                {
                                 PostM((HWND)GET(HWND_MSGLOOP), WM_COMMAND, MPDD(ID_BACKG), 0);
                                }
                               }
                               break;
                              }
    case WM_BUTTON1CLICK    : {
                               /*
                               敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
                               � draw marker                             額
                               青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
                                 栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
                               */
                               if(GET(GRP_MODE) == MODE_ANALYSIS)
                               {
                                GAMmark(W0MP(mp1), W1MP(mp1));
                               }
                               break;
                              }
    case WM_BUTTON2CLICK    : {
                               /*
                               敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
                               � PopUp creation                          額
                               青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
                                 栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
                               */
                               HWND hpu;
                               DD   entry = FDacc(GET(FLD_BMP), 0, BMP_WIN_HWND, FDA_SEARCH, 0, h),
                                    mx = W0MP(mp1),
                                    my = W1MP(mp1),
                                    menid, popid, rc;
                               switch(entry)
                               {
                                case 0x00 ... 0x3F : {
                                                      /*
                                                      敖陳陳陳陳陳陳陳陳陳朕
                                                      � graph images       額
                                                      青陳陳陳陳陳陳陳陳陳潰�
                                                        栩栩栩栩栩栩栩栩栩栩�
                                                      */
                                                      if(GET(GRP_MODE) == MODE_MULTIMEDIA)
                                                      {
                                                       menid = MM_POPUP;
                                                       popid = GRP_PU10;
                                                      }
                                                      else
                                                      {
                                                       menid = MA_POPUP;
                                                       popid = GRP_PU20;
                                                      }
                                                      break;
                                                     }
                                default            : {
                                                      /*
                                                      敖陳陳陳陳陳陳陳陳陳朕
                                                      � skip non defined   額
                                                      青陳陳陳陳陳陳陳陳陳潰�
                                                        栩栩栩栩栩栩栩栩栩栩�
                                                      */
                                                      return(WinDefWindowProc(h, msg, mp1, mp2));
                                                     }
                               }
                               PUT(BMP_SELWINDOW, entry);
                               hpu = WinLoadMenu(h, (HMODULE)NULL, menid);
                               WinPopupMenu(
                                            h,
                                            h,
                                            hpu,
                                            mx,
                                            my,
                                            popid,
                                            PU_HCONSTRAIN | PU_VCONSTRAIN | PU_MOUSEBUTTON1 | PU_NONE
                                           );
                               /*
                               敖陳陳陳陳陳陳陳陳陳朕
                               � centerline chkmark 額
                               青陳陳陳陳陳陳陳陳陳潰�
                                 栩栩栩栩栩栩栩栩栩栩�
                               */
                               if(popid == GRP_PU10)
                               {
                                if(FlgT(PGM_SETTINGS, PGS_DRAWZERO))
                                {
                                 SendM(
                                       hpu,
                                       MM_SETITEMATTR,
                                       MP2W(GRP_PU15, TRUE),
                                       MP2W (MIA_CHECKED, MIA_CHECKED)
                                      );
                                }
                               }
                               break;
                              }
    case WM_COMMAND         : {
                               /*
                               敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
                               � PopUp commands                          額
                               青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
                                 栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
                               */
                               HWND hbmp;
                               DD   entry  = GET(BMP_SELWINDOW),
                                    mh     = GET(FLD_BMP),
                                    graphs = GET(GRAPH_AMNT), a;
                               hbmp = (HWND)FDacc(mh, entry, BMP_WIN_HWND, FDA_READ, 0, 0);
                               switch(W0MP(mp1))
                               {
                                case GRP_PU10 :
                                case GRP_PU20 : {
                                                 /*
                                                 敖陳陳陳陳陳陳陳陳陳朕
                                                 � image              額
                                                 青陳陳陳陳陳陳陳陳陳潰�
                                                   栩栩栩栩栩栩栩栩栩栩�
                                                 */
                                                 VOID *p;
                                                 if(!FDacc(mh, entry, BMP_MEM_HPS, FDA_READ, 0, 0))
                                                 {
                                                  return(0);
                                                 }
                                                 FDacc(mh, entry, BMP_MODE, FDA_WRITE, 0, GRA_BCK_BMP);
                                                 dopen();
                                                 DBox((HWND)GET(STV_HCLIENT), (PFNWP)ImageSel, ID_FSDIA);
                                                 dclose();
                                                 p = FDvpt(FLD_STR, STR_FLS_SELECT, 0, FDA_ADDRESS, 0, 0);
                                                 FDacc(mh, entry, BMP_BMP_FILE, FDA_WRITE, p, 0);
                                                 GRPback(entry);
                                                 break;
                                                }
                                case GRP_PU11 :
                                case GRP_PU21 : {
                                                 /*
                                                 敖陳陳陳陳陳陳陳陳陳朕
                                                 � positive           額
                                                 青陳陳陳陳陳陳陳陳陳潰�
                                                   栩栩栩栩栩栩栩栩栩栩�
                                                 */
                                                 FDacc(mh, entry, BMP_MODE, FDA_WRITE, 0, GRA_BCK_BMP);
                                                 GRPback(entry);
                                                 break;
                                                }
                                case GRP_PU12 :
                                case GRP_PU22 : {
                                                 /*
                                                 敖陳陳陳陳陳陳陳陳陳朕
                                                 � negative           額
                                                 青陳陳陳陳陳陳陳陳陳潰�
                                                   栩栩栩栩栩栩栩栩栩栩�
                                                 */
                                                 FDacc(mh, entry, BMP_MODE, FDA_WRITE, 0, GRA_BCK_XOR);
                                                 GRPback(entry);
                                                 break;
                                                }
                                case GRP_PU13 :
                                case GRP_PU23 : {
                                                 /*
                                                 敖陳陳陳陳陳陳陳陳陳朕
                                                 � plain colour       額
                                                 青陳陳陳陳陳陳陳陳陳潰�
                                                   栩栩栩栩栩栩栩栩栩栩�
                                                 */
                                                 if(entry == 63)
                                                 {
                                                  PUT(USR_BACKGROUND, 0);
                                                  PSkill(63);
                                                  WinInvalidateRect(GET(STV_HCLIENT), NULL, TRUE);
                                                 }
                                                 else
                                                 {
                                                  FDacc(mh, entry, BMP_MODE, FDA_WRITE, 0, GRA_BCK_CLR);
                                                  GRPback(entry);
                                                 }
                                                 break;
                                                }
                                case GRP_PU14 :
                                case GRP_PU24 : {
                                                 /*
                                                 敖陳陳陳陳陳陳陳陳陳朕
                                                 � background colour  額
                                                 青陳陳陳陳陳陳陳陳陳潰�
                                                   栩栩栩栩栩栩栩栩栩栩�
                                                 */
                                                 DD col = FDacc(mh, entry, BMP_CLR_B, FDA_READ, 0, 0);
                                                 PUT(USR_SEL_CLR, col);
                                                 dopen();
                                                 DBox(GET(STV_HCLIENT), (PFNWP)ColSelect, ID_COSEL);
                                                 dclose();
                                                 col = GET(USR_SEL_CLR);
                                                 FDacc(mh, entry, BMP_CLR_B, FDA_WRITE, 0, col);
                                                 GRPback(entry);
                                                 break;
                                                }
                                case GRP_PU15 : {
                                                 /*
                                                 敖陳陳陳陳陳陳陳陳陳朕
                                                 � show centerline    額
                                                 青陳陳陳陳陳陳陳陳陳潰�
                                                   栩栩栩栩栩栩栩栩栩栩�
                                                 */
                                                 if(FlgT(PGM_SETTINGS, PGS_DRAWZERO))
                                                 {
                                                  FlgR(PGM_SETTINGS, PGS_DRAWZERO);
                                                  MnuCk(h, GRP_PU15, 1);
                                                 }
                                                 else
                                                 {
                                                  FlgS(PGM_SETTINGS, PGS_DRAWZERO);
                                                  MnuCk(h, GRP_PU15, 0);
                                                 }
                                                 GRPback(entry);
                                                 break;
                                                }
                                case GRP_PU25 : {
                                                 /*
                                                 敖陳陳陳陳陳陳陳陳陳朕
                                                 � graph colour       額
                                                 青陳陳陳陳陳陳陳陳陳潰�
                                                   栩栩栩栩栩栩栩栩栩栩�
                                                 */
                                                 DD col = FDacc(mh, entry, BMP_CLR_F, FDA_READ, 0, 0);
                                                 PUT(USR_SEL_CLR, col);
                                                 DBox(GET(STV_HCLIENT), (PFNWP)ColSelect, ID_COSEL);
                                                 col = GET(USR_SEL_CLR);
                                                 FDacc(mh, entry, BMP_CLR_F, FDA_WRITE, 0, col);
                                                 GAMplot();
                                                 break;
                                                }
                                case GRP_PU26 : {
                                                 /*
                                                 敖陳陳陳陳陳陳陳陳陳朕
                                                 � text  colour       額
                                                 青陳陳陳陳陳陳陳陳陳潰�
                                                   栩栩栩栩栩栩栩栩栩栩�
                                                 */
                                                 DD col = FDacc(mh, entry, BMP_CLR_T, FDA_READ, 0, 0);
                                                 PUT(USR_SEL_CLR, col);
                                                 DBox(GET(STV_HCLIENT), (PFNWP)ColSelect, ID_COSEL);
                                                 col = GET(USR_SEL_CLR);
                                                 FDacc(mh, entry, BMP_CLR_T, FDA_WRITE, 0, col);
                                                 GAMplot();
                                                 break;
                                                }
                                case GRP_PU27 : {
                                                 /*
                                                 敖陳陳陳陳陳陳陳陳陳朕
                                                 � scale colour       額
                                                 青陳陳陳陳陳陳陳陳陳潰�
                                                   栩栩栩栩栩栩栩栩栩栩�
                                                 */
                                                 DD col = FDacc(mh, entry, BMP_CLR_C, FDA_READ, 0, 0);
                                                 PUT(USR_SEL_CLR, col);
                                                 DBox(GET(STV_HCLIENT), (PFNWP)ColSelect, ID_COSEL);
                                                 col = GET(USR_SEL_CLR);
                                                 FDacc(mh, entry, BMP_CLR_C, FDA_WRITE, 0, col);
                                                 GAMplot();
                                                 break;
                                                }
                                default       : {
                                                 return(WinDefWindowProc(h, msg, mp1, mp2));
                                                }
                               }
                               break;
                              }
    default                 : {
                               return(WinDefWindowProc(h, msg, mp1, mp2));
                              }
   }
   return(0);
  }
