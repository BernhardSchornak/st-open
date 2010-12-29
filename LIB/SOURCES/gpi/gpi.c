  /*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  �                       G P I   L O W   L E V E L   S T U F F                        裁
  債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
  �                          *** (C) ST-Open 1979 - 2008 ***                           裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  �       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        裁
  債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
  � You may copy and distribute it as often as you want, but recipients aren't allowed 裁
  � to pay *anything* for any copy of this file.                                       裁
  �                                                                                    裁
  � You are free to modify the content of this file if you want to. However, derivates 裁
  � of the content of this file *still* are subject to the terms of the FT4FP license. 裁
  � Recipients neither are allowed to pay *anything* for original work nor for altered 裁
  � or derived replica.                                                                裁
  債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
  �       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  � SUBFIELDS IN FLD_BMP (FIELD NUMBER - FFFF FF11)                                    裁
  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様郵�
  � 00   BMP_WIN_X      >  DD      window x-position                                   裁
  � 01   BMP_WIN_Y      >  DD             y-position                                   裁
  � 02   BMP_WIN_W      >  DD             width                                        裁
  � 03   BMP_WIN_H      >  DD             height                                       裁
  � 04   BMP_PAR_HWND  <   HWND           HWND parent                                  裁
  � 05   BMP_WIN_HAB   <   HAB            anchor block handle                          裁
  � 06   BMP_WIN_HWND  <   HWND           window handle                                裁
  � 07   BMP_WIN_HDC   <   HDC            device context handle                        裁
  � 08   BMP_WIN_HPS   <   HPS            presentation space handle                    裁
  � 09   BMP_MEM_HDC   <   HDC     memory device context handle                        裁
  � 0A   BMP_MEM_HPS   <   HPS            presentation space handle                    裁
  � 0B   BMP_BMP_FILE   >  $20     bitmap filename                                     裁
  � 0C   BMP_BMP_W     <   DD             width  (needed for WM_PAINT)                 裁
  � 0D   BMP_BMP_H     <   DD             height (nedded for WM_PAINT)                 裁
  � 0E   BMP_HANDLE    <   HBITMAP        handle                                       裁
  � 0F   BMP_COM_STR    >  $20     common address �                                    裁
  � 10   BMP_COM_X0     >  DD             param 1 � used for the drawing functions -   裁
  � 11   BMP_COM_Y0     >  DD                   2 � the content of these parameters    裁
  � 12   BMP_COM_X1     >  DD                   3 � depends on the called function     裁
  � 13   BMP_COM_Y1     >  DD                   4 �                                    裁
  � 14   BMP_CLR_F      >  DD      colour foreground                                   裁
  � 15   BMP_CLR_B      >  DD             background (windows!)                        裁
  � 16   BMP_CLR_T      >  DD             text                                         裁
  � 17   BMP_CLR_C      >  DD             scales                                       裁
  � 18   BMP_COM_STR2   >  $20     common string                                       裁
  � 19   BMP_COM_PAR    >  DD             image mode                                   裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  � DESCRIPTION                                                                        裁
  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様郵�
  �                                                                                    裁
  � The functions in this file are used to draw, exchange and delete bitmaps. The main 裁
  � work is done here - you only have to store the window coordinates (x, y, w and h), 裁
  � the desired back- and foreground colour, the parent's HWND and the filename in one 裁
  � of the entries of the bitmap field. The first call goes to PScreate():             裁
  �                                                                                    裁
  � PScreate()                                                                         裁
  �                                                                                    裁
  � This function initialises the window to get an anchor block handle, creates a win- 裁
  � dow (class "STbmp") and associates it with a window DC and presentation space. For 裁
  � drawing graphic primitives, a second device context and a memory PS are associated 裁
  � with the window. Next, the bitmap is loaded into memory and cut to a proper ratio, 裁
  � fitting exactly into the bitmap window after stretching. With these new dimensions 裁
  � (w / h), the bitmap is copied to the memory PS. Finally, some preparations for the 裁
  � later drawing are done and all parameters are stored in the bitmap field. Be aware 裁
  � PScreate() does not paint the bitmap to the screen - this is done via invalidating 裁
  � the entire window rectangle and processing the WM_PAINT message.                   裁
  �                                                                                    裁
  � WM_PAINT                                                                           裁
  �                                                                                    裁
  � Your procedure should look like                                                    裁
  �                                                                                    裁
  � WinBeginPaint(BMP_WIN_HWND, BMP_WIN_HPS, &rectl);                                  裁
  � GpiBitBlt(BMP_WIN_HPS, BMP_MEM_HPS, 4, &aptl, ROP_SRCCOPY, BBO_IGNORE);            裁
  � WinEndPaint(BMP_WIN_HPS);                                                          裁
  �                                                                                    裁
  �                                                                                    裁
  � PSxchg()                                                                           裁
  �                                                                                    裁
  � Unloads the current bitmap from the memory PS and loads a new one - all neccessary 裁
  � steps are done by PSxchg(), you only have to write a new filename to BMP_BMP_FILE. 裁
  �                                                                                    裁
  �                                                                                    裁
  � PSplain()                                                                          裁
  �                                                                                    裁
  � Overpaints the memory with the colour stored in BMP_CLR_B. The bitmap in memory PS 裁
  � must be redrawn completely, if you want to restore your graphics primitives.       裁
  �                                                                                    裁
  �                                                                                    裁
  � PSkill()                                                                           裁
  �                                                                                    裁
  � Deletes both presentation spaces, then the device contexts and finally the window. 裁
  � All output parameters are set to zero, signalling invalid handles. You cannot open 裁
  � this window any more - call PScreate() to create a new window.                     裁
  �                                                                                    裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  */

#define  INCL_PM
#define  INCL_WIN
#define  INCL_GPI
#define  INCL_GPILOGCOLORTABLE
#include <os2.h>
#include "yglb.h"

  /*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  � PScreate       C R E A T E   P R E S E N T A T I O N   S P A C E S                 裁
  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様郵�
  � INPUT     :   DD   entry   entry number FLD_BMP (where the parameters are stored)  裁
  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様郵�
  � OUTPUT    :  0000 0000     ok                                                      裁
  �              xxxx xxxx     error                                                   裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  浜様様様様様様様様融
  � REV.:       0004 裁
  � DATE: 02.03.2006 裁
  藩様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩�
  */

  DD PScreate(DD entry)
  {
   HBITMAP hbmp;                        /*   4          xxx */
   POINTL  ptl[4];                      /*         32       */
   HWND    hpar, hwin;                  /*   8              */
   HAB     ha;                          /*   4              */
   HDC     dcwin, dcmem;                /*   8              */
   HPS     pswin, psmem;                /*   8              */
   SIZEL   szl;                         /*          8       */
   VOID   *name;                        /* 256              */
   VOID   *memea;                       /*          4       */
   FH      fh;                          /*         24       */
   LD      ld;                          /*         40       */
   DD      mh = GET(FLD_BMP),           /*              EDI */
           winx, winy, winw, winh,      /*  16              */
           fclr, bclr, bmpw, bmph,      /*  16              */
           a, param, rc, offset;        /*         16       */
   SD      crap[6];                     /*         24       */
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�              stack:  148       */
   � get parameters        額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   hpar = FDacc(mh, entry, BMP_PAR_HWND, FDA_READ,    0, 0);
   winx = FDacc(mh, entry, BMP_WIN_X,    FDA_READ,    0, 0);
   winy = FDacc(mh, entry, BMP_WIN_Y,    FDA_READ,    0, 0);
   winw = FDacc(mh, entry, BMP_WIN_W,    FDA_READ,    0, 0);
   winh = FDacc(mh, entry, BMP_WIN_H,    FDA_READ,    0, 0);
   fclr = FDacc(mh, entry, BMP_CLR_F,    FDA_READ,    0, 0);
   bclr = FDacc(mh, entry, BMP_CLR_B,    FDA_READ,    0, 0);
   name = FDvpt(mh, entry, BMP_BMP_FILE, FDA_ADDRESS, 0, 0);
   param = entry;
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � kill existing window  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   PSkill(entry);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � initialise window     額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   ha = WinInitialize(0);
   if(ha == NULLHANDLE)
   {
    rc = ERR_GPI_HAB;
    goto ERR00;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � create window         額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   hwin = WinCreateWindow(
                          hpar,
                          "STbmp",
                          NULL,
                          FCF_NOBYTEALIGN,
                          winx,
                          winy,
                          winw,
                          winh,
                          hpar,
                          HWND_BOTTOM,
                          (ID_BMG00 + entry),
                          NULL,
                          NULL
                         );
   if(!hwin)
   {
    rc = ERR_GPI_CREATE;
    goto ERR00;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � get window DC + PS    額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   szl.cx = winw;
   szl.cy = winh;
   dcwin = WinOpenWindowDC(hwin);
   if(!dcwin)
   {
    rc = ERR_GPI_WIN_DC;
    goto ERR01;
   }
   pswin = GpiCreatePS(
                       ha,
                       dcwin,
                       &szl,
                       PU_PELS | GPIT_MICRO | GPIA_ASSOC | GPIF_DEFAULT
                      );
   if(!pswin)
   {
    rc = ERR_GPI_WIN_PS;
    goto ERR01;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � get memory DC + PS    額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   dcmem =   DevOpenDC(
                       ha,
                       OD_MEMORY,
                       "*",
                       0,
                       0,
                       0
                      );
   if(!dcmem)
   {
    rc = ERR_GPI_MEM_DC;
    goto ERR02;
   }
   psmem = GpiCreatePS(
                       ha,
                       dcmem,
                       &szl,
                       PU_PELS | GPIT_MICRO | GPIA_ASSOC | GPIF_DEFAULT
                      );
   if(!psmem)
   {
    rc = ERR_GPI_MEM_PS;
    goto ERR03;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � open bitmap file      額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   Mcl(&fh, 24);
   rc = Fopen(name, 2, 0, &fh);
   if(rc)
   {
    name = DEF_BMP_FILE;
    rc = Fopen(name, 2, 0, &fh);
    if(rc)
    {
     rc = ERR_FILE_OPEN;
     goto ERR04;
    }
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � allocate memory       額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   Mcl(&ld, 40);
   ld.FldNr = (0xFFFFE100 + entry);
   ld.MemSz = ((fh.Fsize + 8191) & 0xFFFFF000);
   ld.LdCtl = LDR_READ | LDR_WRITE | LDR_MEM | LDR_STATIC;
   rc = LDreq(&ld);
   if(rc)
   {
    param = rc;
    rc = ERR_LOADER;
    goto ERR05;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � get bitmap offset     額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
   � We have to do this silly and unneccessary step, because the called 額
   � GpiCreateBitmap() wants the bitmap data at a dword aligned address 額
   � in the passed memory. Thus, we have to check the bitmap header and 額
   � set the file pointer in a way the first byte of the bitmap data is 額
   � at the beginning of a dword boundary...                            額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
   */
   fh.Mbase = ld.MemEA;
   fh.Foffs = 0x0A;
   rc = Fread(&fh, 4);
   if(rc)
   {
    rc = ERR_FILE_READ;
    goto ERR06;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � calculate parameters  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   a        = Drd(ld.MemEA, 0x00);
   a       &= 3;
   fh.Mbase = ld.MemEA;
   fh.Moffs = a;
   fh.Foffs = 0;
   memea    = (ld.MemEA + a);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � load file > memory    額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   rc = Fread(&fh, 0);
   if(rc)
   {
    rc = ERR_FILE_READ;
    goto ERR06;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � cut bmp to win ratio  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   rc = cutBMQ(memea, winw, winh);
   if(rc < 0x28)
   {
    goto ERR06;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � get, then patch size  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   if(Drd(memea, 0x0E) == 0x0C)
   {
    bmpw = Wrd(memea, 0x12);
    bmph = Wrd(memea, 0x14);
    Wwr(memea, 0x12, winw);
    Wwr(memea, 0x14, winh);
   }
   else
   {
    bmpw = Drd(memea, 0x12);
    bmph = Drd(memea, 0x16);
    Dwr(memea, 0x12, winw);
    Dwr(memea, 0x16, winh);
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � create bmp in mem PS  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   hbmp = GpiCreateBitmap(
                          psmem,
                          (memea + 0x0E),
                          0,
                          NULL,
                          NULL
                         );
   if(hbmp == GPI_ERROR)
   {
    rc = ERR_GPI_HBMP;
    goto ERR06;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � set as active bitmap  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   GpiSetBitmap(psmem, hbmp);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � re-patch bitmap size  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   if(Drd(memea, 0x0E) == 0x0C)
   {
    Wwr(memea, 0x12, bmpw);
    Wwr(memea, 0x14, bmph);
   }
   else
   {
    Dwr(memea, 0x12, bmpw);
    Dwr(memea, 0x16, bmph);
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � set copy coordinates  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   ptl[0].x = 0;
   ptl[0].y = 0;
   ptl[1].x = winw;
   ptl[1].y = winh;
   ptl[2].x = 0;
   ptl[2].y = 0;
   ptl[3].x = bmpw;
   ptl[3].y = bmph;
   offset   = Drd(memea, 0x0A);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � copy bitmap to mem PS 額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   rc = GpiDrawBits(
                    psmem,
                    (memea + offset),
                    (memea + 0x0E),
                    4,
                    ptl,
                    ROP_SRCCOPY,
                    BBO_IGNORE
                   );
   if(rc == GPI_ALTERROR)
   {
    rc = ERR_GPI_SETBITS;
    goto ERR06;
   }
   rc = 0;
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � store parameters      額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   FDacc(mh, entry, BMP_WIN_HWND, FDA_WRITE, 0, (DD)hwin);
   FDacc(mh, entry, BMP_WIN_HAB,  FDA_WRITE, 0, (DD)ha);
   FDacc(mh, entry, BMP_WIN_HDC,  FDA_WRITE, 0, (DD)dcwin);
   FDacc(mh, entry, BMP_WIN_HPS,  FDA_WRITE, 0, (DD)pswin);
   FDacc(mh, entry, BMP_MEM_HDC,  FDA_WRITE, 0, (DD)dcmem);
   FDacc(mh, entry, BMP_MEM_HPS,  FDA_WRITE, 0, (DD)psmem);
   FDacc(mh, entry, BMP_BMP_W,    FDA_WRITE, 0, bmpw);
   FDacc(mh, entry, BMP_BMP_H,    FDA_WRITE, 0, bmph);
   FDacc(mh, entry, BMP_HANDLE,   FDA_WRITE, 0, (DD)hbmp);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � error handling        額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   ERR06 : LDfre(ld.MMoff);
   ERR05 : Fclose(&fh);
   if(!rc)
   {
    if(FDacc(mh, entry, BMP_MODE, FDA_READ, 0, 0))
    {
     PSplain(entry);
    }
    return(0);
   }
   ERR04 : GpiDestroyPS(psmem);
   ERR03 : DevCloseDC(dcmem);
   ERR02 : GpiDestroyPS(pswin);
   ERR01 : WnDie(hwin);
   if((rc == ERR_FILE_OPEN) || (rc == ERR_FILE_READ))
   {
    ShowMsgS(rc, name);
   }
   else
   {
    ShowMsgP(rc, param);
   }
   ERR00 : return(0x18000000 + (rc << 16));
  }

  /*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  � PSxchg            R E P L A C E   C U R R E N T   B I T M A P                      裁
  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様郵�
  �                                                                                    裁
  � INPUT     :   DD   entry   entry number FLD_BMP (where the parameters are stored)  裁
  �                                                                                    裁
  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様郵�
  �                                                                                    裁
  � OUTPUT    :  0000 0000     ok                                                      裁
  �              1810 0000     ERROR: Fopen()                                          裁
  �              1811 0000            Fread()                                          裁
  �              1818 0000            LDreq()                                          裁
  �              1819 0000            rejected: "BM" missing                           裁
  �              181A 0000                      compressed image                       裁
  �              181B 0000                      multiple planes                        裁
  �              181C 0000                      width  > original                      裁
  �              181D 0000                      height > original                      裁
  �              181E 0000                      unknown format                         裁
  �              1827 0000            no HBITMAP                                       裁
  �              1828 0000            GpiSetBitmapBits()                               裁
  �                                                                                    裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  浜様様様様様様様様融
  � REV.:       0004 裁
  � DATE: 02.03.2006 裁
  藩様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩�
  */

  DD PSxchg(DD entry)
  {
   HBITMAP hbmp;
   POINTL  ptl[4];
   HWND    hb;
   HPS     psmem, pswin;
   VOID   *name;
   VOID   *memea;
   FH      fh;
   LD      ld;
   DD      mh = GET(FLD_BMP),
           winx, winy, winw, winh,
           fclr, bclr, bmpw, bmph,
           a, param, rc, offset;
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � get parameters        額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   hbmp  = (HBITMAP)FDacc(mh, entry, BMP_HANDLE,   FDA_READ,    0, 0);
   hb    =    (HWND)FDacc(mh, entry, BMP_WIN_HWND, FDA_READ,    0, 0);
   psmem =     (HPS)FDacc(mh, entry, BMP_MEM_HPS,  FDA_READ,    0, 0);
   pswin =     (HPS)FDacc(mh, entry, BMP_WIN_HPS,  FDA_READ,    0, 0);
   winx  =          FDacc(mh, entry, BMP_WIN_X,    FDA_READ,    0, 0);
   winy  =          FDacc(mh, entry, BMP_WIN_Y,    FDA_READ,    0, 0);
   winw  =          FDacc(mh, entry, BMP_WIN_W,    FDA_READ,    0, 0);
   winh  =          FDacc(mh, entry, BMP_WIN_H,    FDA_READ,    0, 0);
   fclr  =          FDacc(mh, entry, BMP_CLR_F,    FDA_READ,    0, 0);
   bclr  =          FDacc(mh, entry, BMP_CLR_B,    FDA_READ,    0, 0);
   name  =          FDvpt(mh, entry, BMP_BMP_FILE, FDA_ADDRESS, 0, 0);
   param = entry;
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � check if PS exists    額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   if(!psmem)
   {
    return(0);
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � open bitmap file      額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   Mcl(&fh, 24);
   rc = Fopen(name, 2, 0, &fh);
   if(rc)
   {
    rc = ERR_FILE_OPEN;
    goto ERR00;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � allocate memory       額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   Mcl(&ld, 40);
   ld.FldNr = (0xFFFFE100 + entry);
   ld.MemSz = ((fh.Fsize + 8191) & 0xFFFFF000);
   ld.LdCtl = LDR_READ | LDR_WRITE | LDR_MEM | LDR_STATIC;
   LDreq(&ld);
   if(rc)
   {
    param = rc;
    rc = ERR_LOADER;
    goto ERR05;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � get bitmap offset     額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
   � We have to do this silly and unneccessary step, because the called 額
   � GpiCreateBitmap() wants the bitmap data at a dword aligned address 額
   � in the passed memory. Thus, we have to check the bitmap header and 額
   � set the file pointer in a way the first byte of the bitmap data is 額
   � at the beginning of a dword boundary...                            額
   青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
     栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
   */
   fh.Mbase = ld.MemEA;
   fh.Foffs = 0x0A;
   rc = Fread(&fh, 4);
   if(rc)
   {
    rc = ERR_FILE_READ;
    goto ERR06;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � calculate parameters  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   a        = Drd(ld.MemEA, 0x00);
   a       &= 3;
   fh.Mbase = ld.MemEA;
   fh.Moffs = a;
   fh.Foffs = 0;
   memea    = (ld.MemEA + a);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � load file > memory    額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   rc = Fread(&fh, 0);
   if(rc)
   {
    rc = ERR_FILE_READ;
    goto ERR06;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � cut bmp to win ratio  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   rc = cutBMQ(memea, winw, winh);
   if(rc < 0x28)
   {
    goto ERR06;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � get, then patch size  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   if(Drd(memea, 0x0E) == 0x0C)
   {
    bmpw = Wrd(memea, 0x12);
    bmph = Wrd(memea, 0x14);
    Wwr(memea, 0x12, winw);
    Wwr(memea, 0x14, winh);
   }
   else
   {
    bmpw = Drd(memea, 0x12);
    bmph = Drd(memea, 0x16);
    Dwr(memea, 0x12, winw);
    Dwr(memea, 0x16, winh);
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � delete old bitmap     額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   if(hbmp)
   {
    GpiSetBitmap(psmem, NULLHANDLE);
    GpiDeleteBitmap(hbmp);
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � create bmp in mem PS  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   hbmp = GpiCreateBitmap(
                          psmem,
                          (memea + 0x0E),
                          0,
                          NULL,
                          NULL
                         );
   if(hbmp == GPI_ERROR)
   {
    rc = ERR_GPI_HBMP;
    goto ERR06;
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � set as active bitmap  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   GpiSetBitmap(psmem, hbmp);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � re-patch bitmap size  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   if(Drd(memea, 0x0E) == 0x0C)
   {
    Wwr(memea, 0x12, bmpw);
    Wwr(memea, 0x14, bmph);
   }
   else
   {
    Dwr(memea, 0x12, bmpw);
    Dwr(memea, 0x16, bmph);
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � set copy coordinates  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   ptl[0].x = 0;
   ptl[0].y = 0;
   ptl[1].x = winw;
   ptl[1].y = winh;
   ptl[2].x = 0;
   ptl[2].y = 0;
   ptl[3].x = bmpw;
   ptl[3].y = bmph;
   offset   = Drd(memea, 0x0A);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � copy bitmap to mem PS 額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   rc = GpiDrawBits(
                    psmem,
                    (memea + offset),
                    (memea + 0x0E),
                    4,
                    ptl,
                    ROP_SRCCOPY,
                    BBO_IGNORE
                   );
   if(rc == GPI_ALTERROR)
   {
    rc = ERR_GPI_SETBITS;
    goto ERR06;
   }
   rc = 0;
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � store bitmap handle   額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   FDacc(mh, entry, BMP_BMP_W,    FDA_WRITE, 0, bmpw);
   FDacc(mh, entry, BMP_BMP_H,    FDA_WRITE, 0, bmph);
   FDacc(mh, entry, BMP_HANDLE, FDA_WRITE, 0, (DD)hbmp);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � error handling        額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   ERR06 : LDfre(ld.MMoff);
   ERR05 : Fclose(&fh);
   ERR00 :
   if(rc)
   {
    rc = (0x19000000 + (rc << 16));
    if((rc == ERR_FILE_OPEN) || (rc == ERR_FILE_READ))
    {
     ShowMsgS(rc, name);
    }
    else
    {
     ShowMsgP(rc, param);
    }
   }
   else
   {
    if(FDacc(mh, entry, BMP_MODE, FDA_READ, 0, 0))
    {
     PSplain(entry);
    }
    rc = 0;
   }
   return(rc);
  }

  /*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  � PSplain           S W I T C H   T O   P L A I N   C O L O U R                      裁
  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様郵�
  �                                                                                    裁
  � INPUT     :   DD   entry   entry number FLD_BMP (where the parameters are stored)  裁
  �               DD   mode    00   don't change current mix mode                      裁
  �                            01   FM_OVERPAINT                                       裁
  �                            02   FM_XOR                                             裁
  �                                                                                    裁
  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様郵�
  �                                                                                    裁
  � OUTPUT    :  0000 0000     always zero                                             裁
  �                                                                                    裁
  �                            window is filled with BMP_CLR_B or turned to negative   裁
  �                                                                                    裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  浜様様様様様様様様融
  � REV.:       0004 裁
  � DATE: 02.03.2006 裁
  藩様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩�
  */

  DD PSplain(DD entry)
  {
   POINTL  pt0, pt1;
   HPS     psmem;
   DD      mh = GET(FLD_BMP),
           bclr, mode, oldm;
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � get parameters        額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   psmem  = (HPS)FDacc(mh, entry, BMP_MEM_HPS, FDA_READ, 0, 0);
   bclr   =      FDacc(mh, entry, BMP_CLR_B,   FDA_READ, 0, 0);
   mode   =      FDacc(mh, entry, BMP_MODE,    FDA_READ, 0, 0);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � get mode              額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   oldm = GpiQueryMix(psmem);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � set mix mode          額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   switch(mode)
   {
    case 1  : {
               GpiSetMix(psmem, FM_OVERPAINT);
               break;
              }
    case 2  : {
               GpiSetMix(psmem, FM_XOR);
               break;
              }
    default : {
               return(0);
              }
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � set colour            額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   GpiSetColor(psmem, bclr);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � set coordinates       額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   pt0.x = 0;
   pt0.y = 0;
   pt1.x = FDacc(mh, entry, BMP_WIN_W, FDA_READ, 0, 0);
   pt1.y = FDacc(mh, entry, BMP_WIN_H, FDA_READ, 0, 0);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � paint                 額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   GpiMove(psmem, &pt0);
   GpiBox(psmem, DRO_FILL, &pt1, 0, 0);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � restore old mode      額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   GpiSetMix(psmem, oldm);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � exit                  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   return(0);
  }

  /*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  � PSkill            T E R M I N A T E   E N T I R E   W I N D O W                    裁
  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様郵�
  �                                                                                    裁
  � INPUT     :   DD   entry   entry number FLD_BMP (where the parameters are stored)  裁
  �                                                                                    裁
  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様郵�
  �                                                                                    裁
  � OUTPUT    :  0000 0000     always zero                                             裁
  �                                                                                    裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  浜様様様様様様様様融
  � REV.:       0002 裁
  � DATE: 08.02.2006 裁
  藩様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩�
  */

  DD PSkill(DD entry)
  {
   HBITMAP hbmp;
   HWND    hb;
   HPS     psmem, pswin;
   HDC     dcmem;
   DD      mh = GET(FLD_BMP);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � get parameters        額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   hbmp  = (HBITMAP)FDacc(mh, entry, BMP_HANDLE,   FDA_READ, 0, 0);
   psmem =     (HPS)FDacc(mh, entry, BMP_MEM_HPS,  FDA_READ, 0, 0);
   dcmem =     (HDC)FDacc(mh, entry, BMP_MEM_HDC,  FDA_READ, 0, 0);
   pswin =     (HPS)FDacc(mh, entry, BMP_WIN_HPS,  FDA_READ, 0, 0);
   hb    =    (HWND)FDacc(mh, entry, BMP_WIN_HWND, FDA_READ, 0, 0);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � delete bitmap         額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   if(hbmp)
   {
    GpiDeleteBitmap(hbmp);
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � free resources        額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   if(psmem)
   {
    GpiDestroyPS(psmem);
   }
   if(dcmem)
   {
    DevCloseDC(dcmem);
   }
   if(pswin)
   {
    GpiDestroyPS(pswin);
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � kill window           額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   if(hb)
   {
    WnDie(hb);
   }
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � reset parameters      額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   FDacc(mh, entry, BMP_WIN_HAB,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_WIN_HWND, FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_WIN_HDC,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_WIN_HPS,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_MEM_HDC,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_MEM_HPS,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_HANDLE,   FDA_DELETE, 0, 0);
   /*
   敖陳陳陳陳陳陳陳陳陳陳陳�
   � exit                  額
   青陳陳陳陳陳陳陳陳陳陳陳掏
     栩栩栩栩栩栩栩栩栩栩栩栩
   */
   return(0);
  }
