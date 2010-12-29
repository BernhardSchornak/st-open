  /*
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º                       G P I   L O W   L E V E L   S T U F F                        ºÛ
  ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
  º                          *** (C) ST-Open 1979 - 2008 ***                           ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        ºÛ
  ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
  º You may copy and distribute it as often as you want, but recipients aren't allowed ºÛ
  º to pay *anything* for any copy of this file.                                       ºÛ
  º                                                                                    ºÛ
  º You are free to modify the content of this file if you want to. However, derivates ºÛ
  º of the content of this file *still* are subject to the terms of the FT4FP license. ºÛ
  º Recipients neither are allowed to pay *anything* for original work nor for altered ºÛ
  º or derived replica.                                                                ºÛ
  ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
  º       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º SUBFIELDS IN FLD_BMP (FIELD NUMBER - FFFF FF11)                                    ºÛ
  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹Û
  º 00   BMP_WIN_X      >  DD      window x-position                                   ºÛ
  º 01   BMP_WIN_Y      >  DD             y-position                                   ºÛ
  º 02   BMP_WIN_W      >  DD             width                                        ºÛ
  º 03   BMP_WIN_H      >  DD             height                                       ºÛ
  º 04   BMP_PAR_HWND  <   HWND           HWND parent                                  ºÛ
  º 05   BMP_WIN_HAB   <   HAB            anchor block handle                          ºÛ
  º 06   BMP_WIN_HWND  <   HWND           window handle                                ºÛ
  º 07   BMP_WIN_HDC   <   HDC            device context handle                        ºÛ
  º 08   BMP_WIN_HPS   <   HPS            presentation space handle                    ºÛ
  º 09   BMP_MEM_HDC   <   HDC     memory device context handle                        ºÛ
  º 0A   BMP_MEM_HPS   <   HPS            presentation space handle                    ºÛ
  º 0B   BMP_BMP_FILE   >  $20     bitmap filename                                     ºÛ
  º 0C   BMP_BMP_W     <   DD             width  (needed for WM_PAINT)                 ºÛ
  º 0D   BMP_BMP_H     <   DD             height (nedded for WM_PAINT)                 ºÛ
  º 0E   BMP_HANDLE    <   HBITMAP        handle                                       ºÛ
  º 0F   BMP_COM_STR    >  $20     common address ¿                                    ºÛ
  º 10   BMP_COM_X0     >  DD             param 1 Ã used for the drawing functions -   ºÛ
  º 11   BMP_COM_Y0     >  DD                   2 ³ the content of these parameters    ºÛ
  º 12   BMP_COM_X1     >  DD                   3 ³ depends on the called function     ºÛ
  º 13   BMP_COM_Y1     >  DD                   4 Ù                                    ºÛ
  º 14   BMP_CLR_F      >  DD      colour foreground                                   ºÛ
  º 15   BMP_CLR_B      >  DD             background (windows!)                        ºÛ
  º 16   BMP_CLR_T      >  DD             text                                         ºÛ
  º 17   BMP_CLR_C      >  DD             scales                                       ºÛ
  º 18   BMP_COM_STR2   >  $20     common string                                       ºÛ
  º 19   BMP_COM_PAR    >  DD             image mode                                   ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º DESCRIPTION                                                                        ºÛ
  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹Û
  º                                                                                    ºÛ
  º The functions in this file are used to draw, exchange and delete bitmaps. The main ºÛ
  º work is done here - you only have to store the window coordinates (x, y, w and h), ºÛ
  º the desired back- and foreground colour, the parent's HWND and the filename in one ºÛ
  º of the entries of the bitmap field. The first call goes to PScreate():             ºÛ
  º                                                                                    ºÛ
  º PScreate()                                                                         ºÛ
  º                                                                                    ºÛ
  º This function initialises the window to get an anchor block handle, creates a win- ºÛ
  º dow (class "STbmp") and associates it with a window DC and presentation space. For ºÛ
  º drawing graphic primitives, a second device context and a memory PS are associated ºÛ
  º with the window. Next, the bitmap is loaded into memory and cut to a proper ratio, ºÛ
  º fitting exactly into the bitmap window after stretching. With these new dimensions ºÛ
  º (w / h), the bitmap is copied to the memory PS. Finally, some preparations for the ºÛ
  º later drawing are done and all parameters are stored in the bitmap field. Be aware ºÛ
  º PScreate() does not paint the bitmap to the screen - this is done via invalidating ºÛ
  º the entire window rectangle and processing the WM_PAINT message.                   ºÛ
  º                                                                                    ºÛ
  º WM_PAINT                                                                           ºÛ
  º                                                                                    ºÛ
  º Your procedure should look like                                                    ºÛ
  º                                                                                    ºÛ
  º WinBeginPaint(BMP_WIN_HWND, BMP_WIN_HPS, &rectl);                                  ºÛ
  º GpiBitBlt(BMP_WIN_HPS, BMP_MEM_HPS, 4, &aptl, ROP_SRCCOPY, BBO_IGNORE);            ºÛ
  º WinEndPaint(BMP_WIN_HPS);                                                          ºÛ
  º                                                                                    ºÛ
  º                                                                                    ºÛ
  º PSxchg()                                                                           ºÛ
  º                                                                                    ºÛ
  º Unloads the current bitmap from the memory PS and loads a new one - all neccessary ºÛ
  º steps are done by PSxchg(), you only have to write a new filename to BMP_BMP_FILE. ºÛ
  º                                                                                    ºÛ
  º                                                                                    ºÛ
  º PSplain()                                                                          ºÛ
  º                                                                                    ºÛ
  º Overpaints the memory with the colour stored in BMP_CLR_B. The bitmap in memory PS ºÛ
  º must be redrawn completely, if you want to restore your graphics primitives.       ºÛ
  º                                                                                    ºÛ
  º                                                                                    ºÛ
  º PSkill()                                                                           ºÛ
  º                                                                                    ºÛ
  º Deletes both presentation spaces, then the device contexts and finally the window. ºÛ
  º All output parameters are set to zero, signalling invalid handles. You cannot open ºÛ
  º this window any more - call PScreate() to create a new window.                     ºÛ
  º                                                                                    ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */

#define  INCL_PM
#define  INCL_WIN
#define  INCL_GPI
#define  INCL_GPILOGCOLORTABLE
#include <os2.h>
#include "yglb.h"

  /*
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º PScreate       C R E A T E   P R E S E N T A T I O N   S P A C E S                 ºÛ
  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹Û
  º INPUT     :   DD   entry   entry number FLD_BMP (where the parameters are stored)  ºÛ
  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹Û
  º OUTPUT    :  0000 0000     ok                                                      ºÛ
  º              xxxx xxxx     error                                                   ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º REV.:       0004 ºÛ
  º DATE: 02.03.2006 ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿              stack:  148       */
   ³ get parameters        ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ kill existing window  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   PSkill(entry);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ initialise window     ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   ha = WinInitialize(0);
   if(ha == NULLHANDLE)
   {
    rc = ERR_GPI_HAB;
    goto ERR00;
   }
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ create window         ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ get window DC + PS    ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ get memory DC + PS    ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ open bitmap file      ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ allocate memory       ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ get bitmap offset     ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ We have to do this silly and unneccessary step, because the called ³Û
   ³ GpiCreateBitmap() wants the bitmap data at a dword aligned address ³Û
   ³ in the passed memory. Thus, we have to check the bitmap header and ³Û
   ³ set the file pointer in a way the first byte of the bitmap data is ³Û
   ³ at the beginning of a dword boundary...                            ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ calculate parameters  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   a        = Drd(ld.MemEA, 0x00);
   a       &= 3;
   fh.Mbase = ld.MemEA;
   fh.Moffs = a;
   fh.Foffs = 0;
   memea    = (ld.MemEA + a);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ load file > memory    ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   rc = Fread(&fh, 0);
   if(rc)
   {
    rc = ERR_FILE_READ;
    goto ERR06;
   }
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ cut bmp to win ratio  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   rc = cutBMQ(memea, winw, winh);
   if(rc < 0x28)
   {
    goto ERR06;
   }
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ get, then patch size  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ create bmp in mem PS  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ set as active bitmap  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   GpiSetBitmap(psmem, hbmp);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ re-patch bitmap size  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ set copy coordinates  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ copy bitmap to mem PS ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ store parameters      ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ error handling        ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º PSxchg            R E P L A C E   C U R R E N T   B I T M A P                      ºÛ
  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹Û
  º                                                                                    ºÛ
  º INPUT     :   DD   entry   entry number FLD_BMP (where the parameters are stored)  ºÛ
  º                                                                                    ºÛ
  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹Û
  º                                                                                    ºÛ
  º OUTPUT    :  0000 0000     ok                                                      ºÛ
  º              1810 0000     ERROR: Fopen()                                          ºÛ
  º              1811 0000            Fread()                                          ºÛ
  º              1818 0000            LDreq()                                          ºÛ
  º              1819 0000            rejected: "BM" missing                           ºÛ
  º              181A 0000                      compressed image                       ºÛ
  º              181B 0000                      multiple planes                        ºÛ
  º              181C 0000                      width  > original                      ºÛ
  º              181D 0000                      height > original                      ºÛ
  º              181E 0000                      unknown format                         ºÛ
  º              1827 0000            no HBITMAP                                       ºÛ
  º              1828 0000            GpiSetBitmapBits()                               ºÛ
  º                                                                                    ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º REV.:       0004 ºÛ
  º DATE: 02.03.2006 ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ get parameters        ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ check if PS exists    ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   if(!psmem)
   {
    return(0);
   }
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ open bitmap file      ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   Mcl(&fh, 24);
   rc = Fopen(name, 2, 0, &fh);
   if(rc)
   {
    rc = ERR_FILE_OPEN;
    goto ERR00;
   }
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ allocate memory       ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ get bitmap offset     ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ We have to do this silly and unneccessary step, because the called ³Û
   ³ GpiCreateBitmap() wants the bitmap data at a dword aligned address ³Û
   ³ in the passed memory. Thus, we have to check the bitmap header and ³Û
   ³ set the file pointer in a way the first byte of the bitmap data is ³Û
   ³ at the beginning of a dword boundary...                            ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ calculate parameters  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   a        = Drd(ld.MemEA, 0x00);
   a       &= 3;
   fh.Mbase = ld.MemEA;
   fh.Moffs = a;
   fh.Foffs = 0;
   memea    = (ld.MemEA + a);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ load file > memory    ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   rc = Fread(&fh, 0);
   if(rc)
   {
    rc = ERR_FILE_READ;
    goto ERR06;
   }
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ cut bmp to win ratio  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   rc = cutBMQ(memea, winw, winh);
   if(rc < 0x28)
   {
    goto ERR06;
   }
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ get, then patch size  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ delete old bitmap     ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   if(hbmp)
   {
    GpiSetBitmap(psmem, NULLHANDLE);
    GpiDeleteBitmap(hbmp);
   }
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ create bmp in mem PS  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ set as active bitmap  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   GpiSetBitmap(psmem, hbmp);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ re-patch bitmap size  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ set copy coordinates  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ copy bitmap to mem PS ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ store bitmap handle   ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   FDacc(mh, entry, BMP_BMP_W,    FDA_WRITE, 0, bmpw);
   FDacc(mh, entry, BMP_BMP_H,    FDA_WRITE, 0, bmph);
   FDacc(mh, entry, BMP_HANDLE, FDA_WRITE, 0, (DD)hbmp);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ error handling        ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º PSplain           S W I T C H   T O   P L A I N   C O L O U R                      ºÛ
  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹Û
  º                                                                                    ºÛ
  º INPUT     :   DD   entry   entry number FLD_BMP (where the parameters are stored)  ºÛ
  º               DD   mode    00   don't change current mix mode                      ºÛ
  º                            01   FM_OVERPAINT                                       ºÛ
  º                            02   FM_XOR                                             ºÛ
  º                                                                                    ºÛ
  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹Û
  º                                                                                    ºÛ
  º OUTPUT    :  0000 0000     always zero                                             ºÛ
  º                                                                                    ºÛ
  º                            window is filled with BMP_CLR_B or turned to negative   ºÛ
  º                                                                                    ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º REV.:       0004 ºÛ
  º DATE: 02.03.2006 ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */

  DD PSplain(DD entry)
  {
   POINTL  pt0, pt1;
   HPS     psmem;
   DD      mh = GET(FLD_BMP),
           bclr, mode, oldm;
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ get parameters        ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   psmem  = (HPS)FDacc(mh, entry, BMP_MEM_HPS, FDA_READ, 0, 0);
   bclr   =      FDacc(mh, entry, BMP_CLR_B,   FDA_READ, 0, 0);
   mode   =      FDacc(mh, entry, BMP_MODE,    FDA_READ, 0, 0);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ get mode              ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   oldm = GpiQueryMix(psmem);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ set mix mode          ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ set colour            ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   GpiSetColor(psmem, bclr);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ set coordinates       ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   pt0.x = 0;
   pt0.y = 0;
   pt1.x = FDacc(mh, entry, BMP_WIN_W, FDA_READ, 0, 0);
   pt1.y = FDacc(mh, entry, BMP_WIN_H, FDA_READ, 0, 0);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ paint                 ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   GpiMove(psmem, &pt0);
   GpiBox(psmem, DRO_FILL, &pt1, 0, 0);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ restore old mode      ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   GpiSetMix(psmem, oldm);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ exit                  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   return(0);
  }

  /*
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º PSkill            T E R M I N A T E   E N T I R E   W I N D O W                    ºÛ
  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹Û
  º                                                                                    ºÛ
  º INPUT     :   DD   entry   entry number FLD_BMP (where the parameters are stored)  ºÛ
  º                                                                                    ºÛ
  ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹Û
  º                                                                                    ºÛ
  º OUTPUT    :  0000 0000     always zero                                             ºÛ
  º                                                                                    ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º REV.:       0002 ºÛ
  º DATE: 08.02.2006 ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */

  DD PSkill(DD entry)
  {
   HBITMAP hbmp;
   HWND    hb;
   HPS     psmem, pswin;
   HDC     dcmem;
   DD      mh = GET(FLD_BMP);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ get parameters        ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   hbmp  = (HBITMAP)FDacc(mh, entry, BMP_HANDLE,   FDA_READ, 0, 0);
   psmem =     (HPS)FDacc(mh, entry, BMP_MEM_HPS,  FDA_READ, 0, 0);
   dcmem =     (HDC)FDacc(mh, entry, BMP_MEM_HDC,  FDA_READ, 0, 0);
   pswin =     (HPS)FDacc(mh, entry, BMP_WIN_HPS,  FDA_READ, 0, 0);
   hb    =    (HWND)FDacc(mh, entry, BMP_WIN_HWND, FDA_READ, 0, 0);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ delete bitmap         ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   if(hbmp)
   {
    GpiDeleteBitmap(hbmp);
   }
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ free resources        ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
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
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ kill window           ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   if(hb)
   {
    WnDie(hb);
   }
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ reset parameters      ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   FDacc(mh, entry, BMP_WIN_HAB,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_WIN_HWND, FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_WIN_HDC,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_WIN_HPS,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_MEM_HDC,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_MEM_HPS,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_HANDLE,   FDA_DELETE, 0, 0);
   /*
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ exit                  ³Û
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
     ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
   */
   return(0);
  }
