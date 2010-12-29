  /*
    Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display the file properly!
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º                          S Y S T E M   V A R I A B L E S                           ºÛ
  ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
  º                          *** (C) ST-Open 1979 - 2010 ***                           ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        ºÛ
  ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
  º You may copy and distribute this file as often as you want, but recipients are not ºÛ
  º allowed to pay anything for any copy of this file or its content. It isn't allowed ºÛ
  º to remove parts of this file or add third party content. It isn't allowed to abuse ºÛ
  º the copyrighted content or introduced techniques for commercial purposes. Whatever ºÛ
  º is derived from this file and its content must be freely available without charge. ºÛ
  º You are free to modify the content of this file if you want to. However, derivates ºÛ
  º of the content of this file or parts of it *still* are subject to the terms of the ºÛ
  º FT4FP license. Recipients neither are allowed to pay anything for the original nor ºÛ
  º for altered or derived replica.                                                    ºÛ
  ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
  º       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
#ifndef __yasm__
#define __yasm__
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ Dear user,                                                                         ³Û
  ³                                                                                    ³Û
  ³ this header file is reserved for functions in ST-Open's libraries. Please leave it ³Û
  ³ alone! Put definitions for your application in -separate- header files residing in ³Û
  ³ your application's source folder.                                                  ³Û
  ³                                                                                    ³Û
  ³ Please prefer defined symbols over hard coded addresses. Future versions might not ³Û
  ³ use the defined addresses any longer, so you're on the safe side using symbols. To ³Û
  ³ fill the current gaps, all definitions need to be reorganised sooner or later, but ³Û
  ³ their names remain for compatibility with existing programs and functions.         ³Û
  ³                                                                                    ³Û
  ³ All definitions are offsets relative to BNR!                                       ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ 0000 - 03FF   SYSTEM               permanent (stored on exit)         ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  .equ HI_PGM, 0x0000                         /* PRGM  HINSTANCE          */
  .equ HW_PGM, 0x0008                         /*       HWND               */
  .equ SCRN_W, 0x0010                         /* SCRN  width              */
  .equ SCRN_H, 0x0018                         /*       height             */
  .equ SCN_W0, 0x0020                         /*       ¿                  */
  .equ SCN_H0, 0x0024                         /*       Ã pattern for SSE  */
  .equ SCN_W1, 0x0028                         /*       ³ multiply/divide  */
  .equ SCN_H1, 0x002C                         /*       Ù                  */
  .equ USRLNG, 0x0030                         /* PRGM  current language   */
  .equ SWPMAX, 0x0034                         /*       1 = maximise frame */
  .equ CURDRV, 0x0038                         /*       current drive      */
  .equ DRVMAP, 0x003C                         /*       drive map          */

  .equ RIS_CX, 0x0040                         /* RIS   last shutdown - x  */
  .equ RIS_CY, 0x0044                         /*                     - y  */
  .equ RIS_CW, 0x0048                         /*                     - w  */
  .equ RIS_CH, 0x004C                         /*                     - h  */
  .equ RIS_DX, 0x0050                         /*       user defaults - x  */
  .equ RIS_DY, 0x0054                         /*                     - y  */
  .equ RIS_DW, 0x0058                         /*                     - w  */
  .equ RIS_DH, 0x005C                         /*                     - h  */
  .equ PERC_X, 0x0060                         /*       temp percent  - x  */
  .equ PERC_Y, 0x0064                         /*                     - y  */
  .equ PERC_W, 0x0068                         /*                     - w  */
  .equ PERC_H, 0x006C                         /*                     - h  */
  .equ PIXL_X, 0x0070                         /*       temp pixel    - x  */
  .equ PIXL_Y, 0x0074                         /*                     - y  */
  .equ PIXL_W, 0x0078                         /*                     - w  */
  .equ PIXL_H, 0x007C                         /*                     - h  */

  .equ FLSADD, 0x0080                         /* Flist auto add (off/on)  */
  .equ ID_CHK, 0x0084                         /* CHK   timer ID           */
  .equ OLHOLH, 0x0088                         /* OLH   #    help          */
  .equ OLHTOP, 0x008C                         /*            topic         */
  .equ OLHTXT, 0x0090                         /*       EA   text          */
  .equ OLHSTR, 0x0098                         /*            string buffer */
  .equ OLH_MH, 0x00A0                         /*       MH   help          */
  .equ TOP_MH, 0x00A8                         /*            topics        */
  .equ OLH_HW, 0x00B0                         /*       HWND OLH   dlg     */
  .equ TOP_HW, 0x00B8                         /*            topic dlg     */

  .equ HW_MHM, 0x00C0                         /* MHmon HWND               */
  .equ MHMCUR, 0x00C8                         /*       current handle     */
  .equ TSTCUR, 0x00D0                         /* RegMon current chunk     */
  .equ SS_NXT, 0x00D8                         /* SecSys next bit encoding */
  .equ SS_MLI, 0x00DC                         /*        failures master   */
  .equ SS_ULI, 0x00E0                         /*                 user     */
  .equ SS_TMS, 0x00E4                         /*        last failure time */
  .equ SS_DTS, 0x00E8                         /*                     date */
  .equ SS_R00, 0x00EC                         /*        reserved          */
  .equ SS_R01, 0x00F0                         /*        reserved          */
  .equ SS_R02, 0x00F4                         /*        reserved          */
  .equ SS_R03, 0x00F8                         /*        reserved          */
  .equ SS_R04, 0x00FC                         /*        reserved          */

  .equ MSGADR, 0x0100                         /* ErrMgr address string    */
  .equ MSG_V1, 0x0108                         /*        numeric 1 (DQ)    */
  .equ MSG_V2, 0x0110                         /*                2 (DQ)    */
  .equ MSG_V3, 0x0118                         /*                3 (DQ)    */
  .equ MSG_V4, 0x0120                         /*                4 (DQ)    */
  .equ MSGRPL, 0x0128                         /*        =>[err], <=[btn]  */
  .equ ERR_TY, 0x012C                         /*        0 user, x system  */
  .equ SYS_4C, 0x0130                         /* -                        */
  .equ DLG_TY, 0x0134                         /* DLGtxt 0 user, x system  */
  .equ STKDMP, 0x0138                         /* curr.  stack  dump       */
  .equ MEMDMP, 0x013C                         /*        memory dump       */

  .equ SYS_50, 0x0140                         /* -                        */
  .equ SYS_51, 0x0144                         /* -                        */
  .equ SYS_52, 0x0148                         /* -                        */
  .equ SYS_53, 0x014C                         /* -                        */
  .equ SYS_54, 0x0150                         /* -                        */
  .equ SYS_55, 0x0154                         /* -                        */
  .equ SYS_56, 0x0158                         /* -                        */
  .equ SYS_57, 0x015C                         /* -                        */
  .equ SYS_58, 0x0160                         /* -                        */
  .equ SYS_59, 0x0164                         /* -                        */
  .equ SYS_5A, 0x0168                         /* -                        */
  .equ SYS_5B, 0x016C                         /* -                        */
  .equ SYS_5C, 0x0170                         /* -                        */
  .equ SYS_5D, 0x0174                         /* -                        */
  .equ SYS_5E, 0x0178                         /* -                        */
  .equ SYS_5F, 0x017C                         /* -                        */

  .equ SYS_60, 0x0180                         /* -                        */
  .equ SYS_61, 0x0184                         /* -                        */
  .equ SYS_62, 0x0188                         /* -                        */
  .equ SYS_63, 0x018C                         /* -                        */
  .equ SYS_64, 0x0190                         /* -                        */
  .equ SYS_65, 0x0194                         /* -                        */
  .equ SYS_66, 0x0198                         /* -                        */
  .equ SYS_67, 0x019C                         /* -                        */
  .equ SYS_68, 0x01A0                         /* -                        */
  .equ SYS_69, 0x01A4                         /* -                        */
  .equ SYS_6A, 0x01A8                         /* -                        */
  .equ SYS_6B, 0x01AC                         /* -                        */
  .equ SYS_6C, 0x01B0                         /* -                        */
  .equ SYS_6D, 0x01B4                         /* -                        */
  .equ SYS_6E, 0x01B8                         /* -                        */
  .equ SYS_6F, 0x01BC                         /* -                        */

  .equ SYS_70, 0x01C0                         /* -                        */
  .equ SYS_71, 0x01C4                         /* -                        */
  .equ SYS_72, 0x01C8                         /* -                        */
  .equ SYS_73, 0x01CC                         /* -                        */
  .equ SYS_74, 0x01D0                         /* -                        */
  .equ SYS_75, 0x01D4                         /* -                        */
  .equ SYS_76, 0x01D8                         /* -                        */
  .equ SYS_77, 0x01DC                         /* -                        */
  .equ SYS_78, 0x01E0                         /* -                        */
  .equ SYS_79, 0x01E4                         /* -                        */
  .equ SYS_7A, 0x01E8                         /* -                        */
  .equ SYS_7B, 0x01EC                         /* -                        */
  .equ SYS_7C, 0x01F0                         /* -                        */
  .equ SYS_7D, 0x01F4                         /* -                        */
  .equ SYS_7E, 0x01F8                         /* -                        */
  .equ SYS_7F, 0x01FC                         /* -                        */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ 0200 - 0FFC   USER                 permanent (stored on exit)         ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ 1000 - 17FF   CONVERSION           table 1700 - 17FF is user defined  ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  .equ CV_DEC, 0x1000                         /* LUT numeric decimal      */
  .equ CV_HEX, 0x1100                         /*             hexadecimal  */
  .equ CV_UPP, 0x1200                         /*     upper case           */
  .equ CV_LOW, 0x1300                         /*     lower case           */
  .equ CV_CHR, 0x1400                         /*     ASCII chars          */
  .equ CV_NOC, 0x1500                         /*                 + ctrl   */
  .equ CV_DMP, 0x1600                         /*     hex dump             */
  .equ CV_USR, 0x1700                         /*     USER DEFINED         */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ 1800 - 1FFF   SYSTEM               internal buffers and variables     ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ 1800 - 19FF   SecSys data               ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  .equ EA_SSW, 0x1800                         /* SecSys work area EA      */
  .equ MH_SSW, 0x1808                         /*                  MH      */
  .equ MH_PWF, 0x1810                         /*        MH mpw.dat        */
  .equ EA_PWF, 0x1818                         /*        EA mpw.dat        */
  .equ SS_ACT, 0x1820                         /*        activated         */
  .equ SS_RUN, 0x1824                         /*        running           */
  .equ SS_DMP, 0x1828                         /*        dump activities   */
  .equ SS_SRV, 0x182C                         /*        server     mode   */
  .equ SS_SVM, 0x1830                         /*        supervisor mode   */
  .equ LGIABT, 0x1834                         /*        login aborted     */
  .equ SS_USR, 0x1838                         /*        local user (PIN)  */
  .equ PW_PIN, 0x183C                         /*        flag newMP()      */
  .equ MH_SSM, 0x1840                         /*        MH messages       */
  .equ ACCESS, 0x1848                         /*        rights access     */
  .equ ADMINR, 0x184C                         /*               admin      */
  .equ USR_RW, 0x1850                         /*               read       */
  .equ USR_WR, 0x1854                         /*               write      */
  .equ SS_DRT, 0x1858                         /*        dirty (dialogs)   */
  .equ LD_PWF, 0x1860                         /*        LD for PWF        */
  .equ PWEF_1, 0x1900                         /*        passwords EFld 1  */
  .equ PWEF_2, 0x1940                         /*                       2  */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ 1B00 - 1BFF   string buffer             ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  .equ SMSGBF, 0x1B00                         /* ErrMgr string buffer     */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ 1C00 - 1C3F   system flags              ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  .equ NEW_SS, 0x1C00                         /* SecSys flags             */
  .equ FLG_01, 0x1C04                         /* -                        */
  .equ SYS_FL, 0x1C08                         /* system flags (byte 0)    */
  .equ SYS_F1, 0x1C09                         /*               byte 1     */
  .equ SYS_F2, 0x1C0A                         /*               byte 2     */
  .equ SYS_F3, 0x1C0B                         /*               byte 3     */
  .equ LDR_FL, 0x1C0C                         /* loader flags             */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ 1C40 - 1FBF   system variables          ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  .equ CRC32T, 0x1C40                         /* EA     CRC32 table       */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ file list   ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  .equ FLS_MH, 0x1D00                         /* MH     ST-Open file list */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ bitmaps     ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  .equ MH_STB, 0x1D40                         /* bitmaps MH               */
  .equ EA_STB, 0x1D48                         /*         EA + 0x0100      */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ spinbuttons ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  .equ SPN_MH, 0x1D80                         /* MMoff from LD            */
  .equ SPN_EA, 0x1D88                         /* MemEA from LD + 0x0100   */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ notebook    ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  .equ BK_MHB, 0x1DC0                         /* notebook MH notebook fld */
  .equ BK_MHL, 0x1DC8                         /*          MH language fld */
  .equ BK_HWD, 0x1DD0                         /*          HWND dialog     */
  .equ BK_HWB, 0x1DD8                         /*               book       */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ 1FC0 - 1FFF    system area              ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ FDacc()            ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  .equ FIAERR, 0x1FCC                         /* FDacc() error return     */
  .equ FIAADR, 0x1FD0                         /* used as empty string     */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ date + time        ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  .equ C_TIME, 0x1FF0                         /* HMSh (in proper order)   */
  .equ C_DATE, 0x1FF4                         /* DMY                      */
  .equ T_ZONE, 0x1FF8                         /* diff. to GMT (minutes)   */
  .equ WK_DAY, 0x1FFC                         /* day in week  (Mo...Su)   */
  /*
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
#endif
