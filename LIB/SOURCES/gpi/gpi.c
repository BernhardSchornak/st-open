  /*
  ������������������������������������������������������������������������������������ͻ
  �                       G P I   L O W   L E V E L   S T U F F                        ��
  ������������������������������������������������������������������������������������ĺ�
  �                          *** (C) ST-Open 1979 - 2008 ***                           ��
  ������������������������������������������������������������������������������������ͼ�
    �������������������������������������������������������������������������������������
  ������������������������������������������������������������������������������������ͻ
  �       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        ��
  ������������������������������������������������������������������������������������ĺ�
  � You may copy and distribute it as often as you want, but recipients aren't allowed ��
  � to pay *anything* for any copy of this file.                                       ��
  �                                                                                    ��
  � You are free to modify the content of this file if you want to. However, derivates ��
  � of the content of this file *still* are subject to the terms of the FT4FP license. ��
  � Recipients neither are allowed to pay *anything* for original work nor for altered ��
  � or derived replica.                                                                ��
  ������������������������������������������������������������������������������������ĺ�
  �       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        ��
  ������������������������������������������������������������������������������������ͼ�
    �������������������������������������������������������������������������������������
  ������������������������������������������������������������������������������������ͻ
  � SUBFIELDS IN FLD_BMP (FIELD NUMBER - FFFF FF11)                                    ��
  ������������������������������������������������������������������������������������͹�
  � 00   BMP_WIN_X      >  DD      window x-position                                   ��
  � 01   BMP_WIN_Y      >  DD             y-position                                   ��
  � 02   BMP_WIN_W      >  DD             width                                        ��
  � 03   BMP_WIN_H      >  DD             height                                       ��
  � 04   BMP_PAR_HWND  <   HWND           HWND parent                                  ��
  � 05   BMP_WIN_HAB   <   HAB            anchor block handle                          ��
  � 06   BMP_WIN_HWND  <   HWND           window handle                                ��
  � 07   BMP_WIN_HDC   <   HDC            device context handle                        ��
  � 08   BMP_WIN_HPS   <   HPS            presentation space handle                    ��
  � 09   BMP_MEM_HDC   <   HDC     memory device context handle                        ��
  � 0A   BMP_MEM_HPS   <   HPS            presentation space handle                    ��
  � 0B   BMP_BMP_FILE   >  $20     bitmap filename                                     ��
  � 0C   BMP_BMP_W     <   DD             width  (needed for WM_PAINT)                 ��
  � 0D   BMP_BMP_H     <   DD             height (nedded for WM_PAINT)                 ��
  � 0E   BMP_HANDLE    <   HBITMAP        handle                                       ��
  � 0F   BMP_COM_STR    >  $20     common address �                                    ��
  � 10   BMP_COM_X0     >  DD             param 1 � used for the drawing functions -   ��
  � 11   BMP_COM_Y0     >  DD                   2 � the content of these parameters    ��
  � 12   BMP_COM_X1     >  DD                   3 � depends on the called function     ��
  � 13   BMP_COM_Y1     >  DD                   4 �                                    ��
  � 14   BMP_CLR_F      >  DD      colour foreground                                   ��
  � 15   BMP_CLR_B      >  DD             background (windows!)                        ��
  � 16   BMP_CLR_T      >  DD             text                                         ��
  � 17   BMP_CLR_C      >  DD             scales                                       ��
  � 18   BMP_COM_STR2   >  $20     common string                                       ��
  � 19   BMP_COM_PAR    >  DD             image mode                                   ��
  ������������������������������������������������������������������������������������ͼ�
    �������������������������������������������������������������������������������������
  ������������������������������������������������������������������������������������ͻ
  � DESCRIPTION                                                                        ��
  ������������������������������������������������������������������������������������͹�
  �                                                                                    ��
  � The functions in this file are used to draw, exchange and delete bitmaps. The main ��
  � work is done here - you only have to store the window coordinates (x, y, w and h), ��
  � the desired back- and foreground colour, the parent's HWND and the filename in one ��
  � of the entries of the bitmap field. The first call goes to PScreate():             ��
  �                                                                                    ��
  � PScreate()                                                                         ��
  �                                                                                    ��
  � This function initialises the window to get an anchor block handle, creates a win- ��
  � dow (class "STbmp") and associates it with a window DC and presentation space. For ��
  � drawing graphic primitives, a second device context and a memory PS are associated ��
  � with the window. Next, the bitmap is loaded into memory and cut to a proper ratio, ��
  � fitting exactly into the bitmap window after stretching. With these new dimensions ��
  � (w / h), the bitmap is copied to the memory PS. Finally, some preparations for the ��
  � later drawing are done and all parameters are stored in the bitmap field. Be aware ��
  � PScreate() does not paint the bitmap to the screen - this is done via invalidating ��
  � the entire window rectangle and processing the WM_PAINT message.                   ��
  �                                                                                    ��
  � WM_PAINT                                                                           ��
  �                                                                                    ��
  � Your procedure should look like                                                    ��
  �                                                                                    ��
  � WinBeginPaint(BMP_WIN_HWND, BMP_WIN_HPS, &rectl);                                  ��
  � GpiBitBlt(BMP_WIN_HPS, BMP_MEM_HPS, 4, &aptl, ROP_SRCCOPY, BBO_IGNORE);            ��
  � WinEndPaint(BMP_WIN_HPS);                                                          ��
  �                                                                                    ��
  �                                                                                    ��
  � PSxchg()                                                                           ��
  �                                                                                    ��
  � Unloads the current bitmap from the memory PS and loads a new one - all neccessary ��
  � steps are done by PSxchg(), you only have to write a new filename to BMP_BMP_FILE. ��
  �                                                                                    ��
  �                                                                                    ��
  � PSplain()                                                                          ��
  �                                                                                    ��
  � Overpaints the memory with the colour stored in BMP_CLR_B. The bitmap in memory PS ��
  � must be redrawn completely, if you want to restore your graphics primitives.       ��
  �                                                                                    ��
  �                                                                                    ��
  � PSkill()                                                                           ��
  �                                                                                    ��
  � Deletes both presentation spaces, then the device contexts and finally the window. ��
  � All output parameters are set to zero, signalling invalid handles. You cannot open ��
  � this window any more - call PScreate() to create a new window.                     ��
  �                                                                                    ��
  ������������������������������������������������������������������������������������ͼ�
    �������������������������������������������������������������������������������������
  */

#define  INCL_PM
#define  INCL_WIN
#define  INCL_GPI
#define  INCL_GPILOGCOLORTABLE
#include <os2.h>
#include "yglb.h"

  /*
  ������������������������������������������������������������������������������������ͻ
  � PScreate       C R E A T E   P R E S E N T A T I O N   S P A C E S                 ��
  ������������������������������������������������������������������������������������͹�
  � INPUT     :   DD   entry   entry number FLD_BMP (where the parameters are stored)  ��
  ������������������������������������������������������������������������������������͹�
  � OUTPUT    :  0000 0000     ok                                                      ��
  �              xxxx xxxx     error                                                   ��
  ������������������������������������������������������������������������������������ͼ�
    �������������������������������������������������������������������������������������
  ������������������ͻ
  � REV.:       0004 ��
  � DATE: 02.03.2006 ��
  ������������������ͼ�
    �������������������
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
   �����������������������Ŀ              stack:  148       */
   � get parameters        ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � kill existing window  ��
   ��������������������������
     ������������������������
   */
   PSkill(entry);
   /*
   �����������������������Ŀ
   � initialise window     ��
   ��������������������������
     ������������������������
   */
   ha = WinInitialize(0);
   if(ha == NULLHANDLE)
   {
    rc = ERR_GPI_HAB;
    goto ERR00;
   }
   /*
   �����������������������Ŀ
   � create window         ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � get window DC + PS    ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � get memory DC + PS    ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � open bitmap file      ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � allocate memory       ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � get bitmap offset     ��
   ��������������������������
     ������������������������
   ��������������������������������������������������������������������Ŀ
   � We have to do this silly and unneccessary step, because the called ��
   � GpiCreateBitmap() wants the bitmap data at a dword aligned address ��
   � in the passed memory. Thus, we have to check the bitmap header and ��
   � set the file pointer in a way the first byte of the bitmap data is ��
   � at the beginning of a dword boundary...                            ��
   �����������������������������������������������������������������������
     ���������������������������������������������������������������������
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
   �����������������������Ŀ
   � calculate parameters  ��
   ��������������������������
     ������������������������
   */
   a        = Drd(ld.MemEA, 0x00);
   a       &= 3;
   fh.Mbase = ld.MemEA;
   fh.Moffs = a;
   fh.Foffs = 0;
   memea    = (ld.MemEA + a);
   /*
   �����������������������Ŀ
   � load file > memory    ��
   ��������������������������
     ������������������������
   */
   rc = Fread(&fh, 0);
   if(rc)
   {
    rc = ERR_FILE_READ;
    goto ERR06;
   }
   /*
   �����������������������Ŀ
   � cut bmp to win ratio  ��
   ��������������������������
     ������������������������
   */
   rc = cutBMQ(memea, winw, winh);
   if(rc < 0x28)
   {
    goto ERR06;
   }
   /*
   �����������������������Ŀ
   � get, then patch size  ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � create bmp in mem PS  ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � set as active bitmap  ��
   ��������������������������
     ������������������������
   */
   GpiSetBitmap(psmem, hbmp);
   /*
   �����������������������Ŀ
   � re-patch bitmap size  ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � set copy coordinates  ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � copy bitmap to mem PS ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � store parameters      ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � error handling        ��
   ��������������������������
     ������������������������
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
  ������������������������������������������������������������������������������������ͻ
  � PSxchg            R E P L A C E   C U R R E N T   B I T M A P                      ��
  ������������������������������������������������������������������������������������͹�
  �                                                                                    ��
  � INPUT     :   DD   entry   entry number FLD_BMP (where the parameters are stored)  ��
  �                                                                                    ��
  ������������������������������������������������������������������������������������͹�
  �                                                                                    ��
  � OUTPUT    :  0000 0000     ok                                                      ��
  �              1810 0000     ERROR: Fopen()                                          ��
  �              1811 0000            Fread()                                          ��
  �              1818 0000            LDreq()                                          ��
  �              1819 0000            rejected: "BM" missing                           ��
  �              181A 0000                      compressed image                       ��
  �              181B 0000                      multiple planes                        ��
  �              181C 0000                      width  > original                      ��
  �              181D 0000                      height > original                      ��
  �              181E 0000                      unknown format                         ��
  �              1827 0000            no HBITMAP                                       ��
  �              1828 0000            GpiSetBitmapBits()                               ��
  �                                                                                    ��
  ������������������������������������������������������������������������������������ͼ�
    �������������������������������������������������������������������������������������
  ������������������ͻ
  � REV.:       0004 ��
  � DATE: 02.03.2006 ��
  ������������������ͼ�
    �������������������
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
   �����������������������Ŀ
   � get parameters        ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � check if PS exists    ��
   ��������������������������
     ������������������������
   */
   if(!psmem)
   {
    return(0);
   }
   /*
   �����������������������Ŀ
   � open bitmap file      ��
   ��������������������������
     ������������������������
   */
   Mcl(&fh, 24);
   rc = Fopen(name, 2, 0, &fh);
   if(rc)
   {
    rc = ERR_FILE_OPEN;
    goto ERR00;
   }
   /*
   �����������������������Ŀ
   � allocate memory       ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � get bitmap offset     ��
   ��������������������������
     ������������������������
   ��������������������������������������������������������������������Ŀ
   � We have to do this silly and unneccessary step, because the called ��
   � GpiCreateBitmap() wants the bitmap data at a dword aligned address ��
   � in the passed memory. Thus, we have to check the bitmap header and ��
   � set the file pointer in a way the first byte of the bitmap data is ��
   � at the beginning of a dword boundary...                            ��
   �����������������������������������������������������������������������
     ���������������������������������������������������������������������
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
   �����������������������Ŀ
   � calculate parameters  ��
   ��������������������������
     ������������������������
   */
   a        = Drd(ld.MemEA, 0x00);
   a       &= 3;
   fh.Mbase = ld.MemEA;
   fh.Moffs = a;
   fh.Foffs = 0;
   memea    = (ld.MemEA + a);
   /*
   �����������������������Ŀ
   � load file > memory    ��
   ��������������������������
     ������������������������
   */
   rc = Fread(&fh, 0);
   if(rc)
   {
    rc = ERR_FILE_READ;
    goto ERR06;
   }
   /*
   �����������������������Ŀ
   � cut bmp to win ratio  ��
   ��������������������������
     ������������������������
   */
   rc = cutBMQ(memea, winw, winh);
   if(rc < 0x28)
   {
    goto ERR06;
   }
   /*
   �����������������������Ŀ
   � get, then patch size  ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � delete old bitmap     ��
   ��������������������������
     ������������������������
   */
   if(hbmp)
   {
    GpiSetBitmap(psmem, NULLHANDLE);
    GpiDeleteBitmap(hbmp);
   }
   /*
   �����������������������Ŀ
   � create bmp in mem PS  ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � set as active bitmap  ��
   ��������������������������
     ������������������������
   */
   GpiSetBitmap(psmem, hbmp);
   /*
   �����������������������Ŀ
   � re-patch bitmap size  ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � set copy coordinates  ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � copy bitmap to mem PS ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � store bitmap handle   ��
   ��������������������������
     ������������������������
   */
   FDacc(mh, entry, BMP_BMP_W,    FDA_WRITE, 0, bmpw);
   FDacc(mh, entry, BMP_BMP_H,    FDA_WRITE, 0, bmph);
   FDacc(mh, entry, BMP_HANDLE, FDA_WRITE, 0, (DD)hbmp);
   /*
   �����������������������Ŀ
   � error handling        ��
   ��������������������������
     ������������������������
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
  ������������������������������������������������������������������������������������ͻ
  � PSplain           S W I T C H   T O   P L A I N   C O L O U R                      ��
  ������������������������������������������������������������������������������������͹�
  �                                                                                    ��
  � INPUT     :   DD   entry   entry number FLD_BMP (where the parameters are stored)  ��
  �               DD   mode    00   don't change current mix mode                      ��
  �                            01   FM_OVERPAINT                                       ��
  �                            02   FM_XOR                                             ��
  �                                                                                    ��
  ������������������������������������������������������������������������������������͹�
  �                                                                                    ��
  � OUTPUT    :  0000 0000     always zero                                             ��
  �                                                                                    ��
  �                            window is filled with BMP_CLR_B or turned to negative   ��
  �                                                                                    ��
  ������������������������������������������������������������������������������������ͼ�
    �������������������������������������������������������������������������������������
  ������������������ͻ
  � REV.:       0004 ��
  � DATE: 02.03.2006 ��
  ������������������ͼ�
    �������������������
  */

  DD PSplain(DD entry)
  {
   POINTL  pt0, pt1;
   HPS     psmem;
   DD      mh = GET(FLD_BMP),
           bclr, mode, oldm;
   /*
   �����������������������Ŀ
   � get parameters        ��
   ��������������������������
     ������������������������
   */
   psmem  = (HPS)FDacc(mh, entry, BMP_MEM_HPS, FDA_READ, 0, 0);
   bclr   =      FDacc(mh, entry, BMP_CLR_B,   FDA_READ, 0, 0);
   mode   =      FDacc(mh, entry, BMP_MODE,    FDA_READ, 0, 0);
   /*
   �����������������������Ŀ
   � get mode              ��
   ��������������������������
     ������������������������
   */
   oldm = GpiQueryMix(psmem);
   /*
   �����������������������Ŀ
   � set mix mode          ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � set colour            ��
   ��������������������������
     ������������������������
   */
   GpiSetColor(psmem, bclr);
   /*
   �����������������������Ŀ
   � set coordinates       ��
   ��������������������������
     ������������������������
   */
   pt0.x = 0;
   pt0.y = 0;
   pt1.x = FDacc(mh, entry, BMP_WIN_W, FDA_READ, 0, 0);
   pt1.y = FDacc(mh, entry, BMP_WIN_H, FDA_READ, 0, 0);
   /*
   �����������������������Ŀ
   � paint                 ��
   ��������������������������
     ������������������������
   */
   GpiMove(psmem, &pt0);
   GpiBox(psmem, DRO_FILL, &pt1, 0, 0);
   /*
   �����������������������Ŀ
   � restore old mode      ��
   ��������������������������
     ������������������������
   */
   GpiSetMix(psmem, oldm);
   /*
   �����������������������Ŀ
   � exit                  ��
   ��������������������������
     ������������������������
   */
   return(0);
  }

  /*
  ������������������������������������������������������������������������������������ͻ
  � PSkill            T E R M I N A T E   E N T I R E   W I N D O W                    ��
  ������������������������������������������������������������������������������������͹�
  �                                                                                    ��
  � INPUT     :   DD   entry   entry number FLD_BMP (where the parameters are stored)  ��
  �                                                                                    ��
  ������������������������������������������������������������������������������������͹�
  �                                                                                    ��
  � OUTPUT    :  0000 0000     always zero                                             ��
  �                                                                                    ��
  ������������������������������������������������������������������������������������ͼ�
    �������������������������������������������������������������������������������������
  ������������������ͻ
  � REV.:       0002 ��
  � DATE: 08.02.2006 ��
  ������������������ͼ�
    �������������������
  */

  DD PSkill(DD entry)
  {
   HBITMAP hbmp;
   HWND    hb;
   HPS     psmem, pswin;
   HDC     dcmem;
   DD      mh = GET(FLD_BMP);
   /*
   �����������������������Ŀ
   � get parameters        ��
   ��������������������������
     ������������������������
   */
   hbmp  = (HBITMAP)FDacc(mh, entry, BMP_HANDLE,   FDA_READ, 0, 0);
   psmem =     (HPS)FDacc(mh, entry, BMP_MEM_HPS,  FDA_READ, 0, 0);
   dcmem =     (HDC)FDacc(mh, entry, BMP_MEM_HDC,  FDA_READ, 0, 0);
   pswin =     (HPS)FDacc(mh, entry, BMP_WIN_HPS,  FDA_READ, 0, 0);
   hb    =    (HWND)FDacc(mh, entry, BMP_WIN_HWND, FDA_READ, 0, 0);
   /*
   �����������������������Ŀ
   � delete bitmap         ��
   ��������������������������
     ������������������������
   */
   if(hbmp)
   {
    GpiDeleteBitmap(hbmp);
   }
   /*
   �����������������������Ŀ
   � free resources        ��
   ��������������������������
     ������������������������
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
   �����������������������Ŀ
   � kill window           ��
   ��������������������������
     ������������������������
   */
   if(hb)
   {
    WnDie(hb);
   }
   /*
   �����������������������Ŀ
   � reset parameters      ��
   ��������������������������
     ������������������������
   */
   FDacc(mh, entry, BMP_WIN_HAB,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_WIN_HWND, FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_WIN_HDC,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_WIN_HPS,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_MEM_HDC,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_MEM_HPS,  FDA_DELETE, 0, 0);
   FDacc(mh, entry, BMP_HANDLE,   FDA_DELETE, 0, 0);
   /*
   �����������������������Ŀ
   � exit                  ��
   ��������������������������
     ������������������������
   */
   return(0);
  }
