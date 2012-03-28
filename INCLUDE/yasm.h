  /*
    ==================================================================================
                S Y S T E M   V A R I A B L E S    (C) ST-Open 1979 - 2012
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
#ifndef __yasm__
#define __yasm__
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    Dear user,

    this header file is reserved for functions in ST-Open's libraries. Please leave it
    alone! Put definitions for your application in -separate- header files residing in
    your application's source folder.

    Please prefer defined symbols over hard coded addresses. Future versions might not
    use the defined addresses any longer, so you're on the safe side using symbols. To
    fill the current gaps, all definitions need to be reorganised sooner or later, but
    their names remain for compatibility with existing programs and functions.

    All definitions are offsets relative to BNR!

    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    0000 - 01FF   SYSTEM                         permanent (stored on exit)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ HI_PGM, 0x0000                         /* PRGM   HINSTANCE                   */
  .equ HW_PGM, 0x0008                         /*        HWND                        */
  .equ SCRN_W, 0x0010                         /* SCRN   width                       */
  .equ SCRN_H, 0x0018                         /*        height                      */
  .equ SCN_W0, 0x0020                         /*        \                           */
  .equ SCN_H0, 0x0024                         /*         | pattern for SSE          */
  .equ SCN_W1, 0x0028                         /*         | multiply/divide          */
  .equ SCN_H1, 0x002C                         /*        /                           */
  .equ USRLNG, 0x0030                         /* PRGM   current language            */
  .equ SWPMAX, 0x0034                         /*        1 = maximise frame          */
  .equ CURDRV, 0x0038                         /*        current drive               */
  .equ DRVMAP, 0x003C                         /*        drive map                   */

  .equ RIS_CX, 0x0040                         /* RIS    last shutdown - x           */
  .equ RIS_CY, 0x0044                         /*                      - y           */
  .equ RIS_CW, 0x0048                         /*                      - w           */
  .equ RIS_CH, 0x004C                         /*                      - h           */
  .equ RIS_DX, 0x0050                         /*        user defaults - x           */
  .equ RIS_DY, 0x0054                         /*                      - y           */
  .equ RIS_DW, 0x0058                         /*                      - w           */
  .equ RIS_DH, 0x005C                         /*                      - h           */
  .equ PERC_X, 0x0060                         /*        temp percent  - x           */
  .equ PERC_Y, 0x0064                         /*                      - y           */
  .equ PERC_W, 0x0068                         /*                      - w           */
  .equ PERC_H, 0x006C                         /*                      - h           */
  .equ PIXL_X, 0x0070                         /*        temp pixel    - x           */
  .equ PIXL_Y, 0x0074                         /*                      - y           */
  .equ PIXL_W, 0x0078                         /*                      - w           */
  .equ PIXL_H, 0x007C                         /*                      - h           */

  .equ FLSADD, 0x0080                         /* Flist  auto add (off/on)           */
  .equ SYS_21, 0x0084                         /* -                                  */
  .equ OLHOLH, 0x0088                         /* OLH    #    help                   */
  .equ OLHTOP, 0x008C                         /*             topic                  */
  .equ OLHTXT, 0x0090                         /*        EA   text                   */
  .equ OLHSTR, 0x0098                         /*             string buffer          */
  .equ HW__OL, 0x00A0                         /*        HWND OLH dialog             */
  .equ HW__TP, 0x00A8                         /*             TOP dialog             */
  .equ SYS_2B, 0x00AC                         /* -                                  */
  .equ WRATIO, 0x00B0                         /* RIS    mul/div parameter x 10,000  */
  .equ SYS_2D, 0x00B4                         /*                          y 10,000  */
  .equ SYS_2E, 0x00B8                         /*                          w 10,000  */
  .equ SYS_2F, 0x00BC                         /*                          h 10,000  */

  .equ MMMCUR, 0x00C0                         /* MHmon  current entry               */
  .equ MMMHEX, 0x00C8                         /*        decimal/hexadecimal         */
  .equ TSTCUR, 0x00D0                         /* RegMon current chunk               */
  .equ SS_NXT, 0x00D8                         /* SecSys next bit encoding           */
  .equ SS_MLI, 0x00DC                         /*        failures master             */
  .equ SS_ULI, 0x00E0                         /*                 user               */
  .equ SS_TMS, 0x00E4                         /*        last failure time           */
  .equ SS_DTS, 0x00E8                         /*                     date           */
  .equ SS_R00, 0x00EC                         /* -                                  */
  .equ SS_R01, 0x00F0                         /* -                                  */
  .equ SS_R02, 0x00F4                         /* -                                  */
  .equ MHCNTR, 0x00F8                         /* Loader MemHandle Count             */
  .equ BR_PGM, 0x00FC                         /* progm  color brush handle          */

  .equ MSGADR, 0x0100                         /* ErrMgr address string              */
  .equ MSG_V1, 0x0108                         /*        numeric 1 (DQ)              */
  .equ MSG_V2, 0x0110                         /*                2 (DQ)              */
  .equ MSG_V3, 0x0118                         /*                3 (DQ)              */
  .equ MSG_V4, 0x0120                         /*        obsolete                    */
  .equ MSGRPL, 0x0128                         /*        =>[err], <=[btn]            */
  .equ ERR_TY, 0x012C                         /*        0 user, x system            */
  .equ SYS_4C, 0x0130                         /* -                                  */
  .equ DLG_TY, 0x0134                         /* DLGtxt 0 user, x system            */
  .equ STKDMP, 0x0138                         /* curr.  stack  dump                 */
  .equ MEMDMP, 0x013C                         /*        memory dump                 */

  .equ HXBASE, 0x0140                         /* HexEd  base address memory block   */
  .equ HEXCUR, 0x0148                         /*        current address             */
  .equ HEXSTP, 0x014C                         /*        step size (byte to show)    */
  .equ HEXMSZ, 0x0150                         /*        size memory block           */
  .equ HEXUOF, 0x0154                         /*        user offset                 */
  .equ HEXUSZ, 0x0158                         /*             block size             */
  .equ HEXRET, 0x015C                         /*        RC (0 = unchanged)          */
  .equ SYS_58, 0x0160                         /* -                                  */
  .equ SYS_59, 0x0164                         /* -                                  */
  .equ SYS_5A, 0x0168                         /* -                                  */
  .equ SYS_5B, 0x016C                         /* -                                  */
  .equ SYS_5C, 0x0170                         /* -                                  */
  .equ SYS_5D, 0x0174                         /* -                                  */
  .equ SYS_5E, 0x0178                         /* -                                  */
  .equ SYS_5F, 0x017C                         /* -                                  */

  .equ SYS_60, 0x0180                         /* -                                  */
  .equ SYS_61, 0x0184                         /* -                                  */
  .equ SYS_62, 0x0188                         /* -                                  */
  .equ SYS_63, 0x018C                         /* -                                  */
  .equ SYS_64, 0x0190                         /* -                                  */
  .equ SYS_65, 0x0194                         /* -                                  */
  .equ SYS_66, 0x0198                         /* -                                  */
  .equ SYS_67, 0x019C                         /* -                                  */
  .equ SYS_68, 0x01A0                         /* -                                  */
  .equ SYS_69, 0x01A4                         /* -                                  */
  .equ SYS_6A, 0x01A8                         /* -                                  */
  .equ SYS_6B, 0x01AC                         /* -                                  */
  .equ SYS_6C, 0x01B0                         /* -                                  */
  .equ SYS_6D, 0x01B4                         /* -                                  */
  .equ SYS_6E, 0x01B8                         /* -                                  */
  .equ SYS_6F, 0x01BC                         /* -                                  */

  .equ SYS_70, 0x01C0                         /* -                                  */
  .equ SYS_71, 0x01C4                         /* -                                  */
  .equ SYS_72, 0x01C8                         /* -                                  */
  .equ SYS_73, 0x01CC                         /* -                                  */
  .equ SYS_74, 0x01D0                         /* -                                  */
  .equ SYS_75, 0x01D4                         /* -                                  */
  .equ SYS_76, 0x01D8                         /* -                                  */
  .equ SYS_77, 0x01DC                         /* -                                  */
  .equ SYS_78, 0x01E0                         /* -                                  */
  .equ SYS_79, 0x01E4                         /* -                                  */
  .equ SYS_7A, 0x01E8                         /* -                                  */
  .equ SYS_7B, 0x01EC                         /* -                                  */
  .equ MAXCYL, 0x01F0                         /* disk   maximum cylinder            */
  .equ MAXHDS, 0x01F8                         /*                head      (00...FF) */
  .equ MAXSEC, 0x01FC                         /*                sector    (01...3F) */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    0200 - 1FFF   USER                           permanent (stored on exit)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    This is the standardised interface to pass
    parameters to LD() or F(ile) functions.
    Both structures are optional - remove them
    if you do not use this interface.
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ LD_USR, 0x1F80                         /* USER           LD                  */
  .equ MH_USR, 0x1F98                         /*                MH                  */
  .equ FH_USR, 0x1FC0                         /*                FH                  */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    2000 - 37FF   CONVERSION                     table 3E00 - 3FFF is user defined
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ CV_DEC, 0x2000                         /* LUT numeric decimal                */
  .equ CV_HEX, 0x2100                         /*             hexadecimal            */
  .equ CV_UPP, 0x2200                         /*     upper case                     */
  .equ CV_LOW, 0x2300                         /*     lower case                     */
  .equ CV_CHR, 0x2400                         /*     ASCII chars                    */
  .equ CV_NOC, 0x2500                         /*                 + ctrl             */
  .equ CV_DMP, 0x2600                         /*     hex dump                       */
  .equ CV__HX, 0x2800                         /*     hex byte => word               */
  .equ CV_USR, 0x3E00                         /*     USER DEFINED                   */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    4000 - 7BFF   SYSTEM BUFFERS                 internal buffers and variables
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    4000 - 6FFF              conversion tables
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ CVTCUT, 0x4000                         /* convert        cut off garbage     */
  .equ CVT_00, 0x4100                         /*                16 * 0x00 last CUT! */
  .equ CVT_07, 0x4110                         /*                16 * 0x07           */
  .equ CVT_09, 0x4120                         /*                16 * 0x09           */
  .equ CVT_0F, 0x4130                         /*                16 * 0x0F           */
  .equ CVT_20, 0x4140                         /*                16 * 0x20           */
  .equ CVT_2D, 0x4150                         /*                16 * 0x2D           */
  .equ CVT_30, 0x4160                         /*                16 * 0x30           */
  .equ CVT_39, 0x4170                         /*                16 * 0x39           */
  .equ CVT_40, 0x4180                         /*                16 * 0x40           */
  .equ CVT_46, 0x4190                         /*                16 * 0x46           */
  .equ CVT_60, 0x41A0                         /*                16 * 0x60           */
  .equ CVT_80, 0x41B0                         /*                16 * 0x80           */
  .equ CVT_X0, 0x41C0                         /*                 8 * 0xFF00         */
  .equ CVT_7F, 0x41D0                         /*                16 * 0x7F           */
  .equ CVT_1F, 0x41E0                         /*                16 * 0x1F           */
  .equ CVT_2E, 0x41F0                         /*                16 * 0x2E           */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7000 - 71FF                  EXTERNAL path
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Please read the documentation -before- you
    use this feature!
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ PATH_X, 0x7000                         /* external path  DRV:\path\data\X    */
  .equ PX__IP, 0x723C                         /*                insertion point     */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7260 - 727F                  INTERNAL path
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ PATH_P, 0x7240                         /* internal path  ..\data\            */
  .equ PP__IP, 0x7248                         /*                insertion point     */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7280 - 72FF                 common LD + FH
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ LD_SYS, 0x7280                         /* COMMON         LD                  */
  .equ MH_SYS, 0x7298                         /*                MH                  */
  .equ FH_SYS, 0x72C0                         /*                FH                  */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7300 - 77FF                  LD structures
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ EA__SP, 0x7400                         /* spinbuttons    EA + 0x0100         */
  .equ MH__SP, 0x7418                         /*                MH                  */
  .equ EA__EF, 0x7440                         /* entryfields    EA + 0x0100         */
  .equ MH__EF, 0x7458                         /*                MH                  */
  .equ LD__MN, 0x7480                         /* menu+dialogs   LD FFFFFF12         */
  .equ MH__MN, 0x7498                         /*                MH                  */
  .equ LD__SD, 0x74C0                         /* sys dialogs    LD FFFFFF13         */
  .equ MH__SD, 0x74D8                         /*                MH                  */
  .equ LD__MD, 0x7500                         /* pgm messages   LD FFFFFFF5         */
  .equ MH__MD, 0x7518                         /*                MH                  */
  .equ LD__LF, 0x7540                         /* loaded files   LD FFFFFFF6         */
  .equ MH__LF, 0x7558                         /*                MH                  */
  .equ LD__FL, 0x7580                         /* file list      LD FFFFFFF7         */
  .equ MH__FL, 0x7598                         /*                MH                  */
  .equ LD__LG, 0x75C0                         /* languages      LD FFFFFFF8         */
  .equ MH__LG, 0x75D8                         /*                MH                  */
  .equ LD__ER, 0x7600                         /* SysErr         LD FFFFFFF9         */
  .equ MH__ER, 0x7618                         /*                MH                  */
  .equ LD__TP, 0x7640                         /* topics         LD FFFFFFFA         */
  .equ MH__TP, 0x7658                         /*                MH                  */
  .equ LD__OL, 0x7680                         /* OLH            LD FFFFFFFB         */
  .equ MH__OL, 0x7698                         /*                MH                  */
  .equ LD__ST, 0x76C0                         /* STR            LD FFFFFFFC         */
  .equ MH__ST, 0x76D8                         /*                MH                  */
  .equ LDR__T, 0x7700                         /* LDR            loader table (init) */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7800 - 78FF                MNUtxt() buffer
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ MNUTXT, 0x7800                         /* buffer MNUtxt()                    */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7900 - 7AFF                       reserved
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7B00 - 7BFF                ErrMgr() buffer
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ SMSGBF, 0x7B00                         /* buffer ErrMgr()                    */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7C00 - 7CFF   SecSys                         SecSys working area
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ SS_ACT, 0x7C00                         /*        activated                   */
  .equ SS_RUN, 0x7C04                         /*        running                     */
  .equ SS_DMP, 0x7C08                         /*        dump activities             */
  .equ SS_SVM, 0x7C0C                         /*        supervisor mode             */
  .equ SS_SRV, 0x7C10                         /*        server     mode             */
  .equ LGIABT, 0x7C14                         /*        login aborted               */
  .equ SS_USR, 0x7C18                         /*        local user (PIN)            */
  .equ PW_PIN, 0x7C1C                         /*        flag newMP()                */
  .equ ACCESS, 0x7C20                         /*        rights access               */
  .equ ADMINR, 0x7C24                         /*               admin                */
  .equ USR_RW, 0x7C28                         /*               read                 */
  .equ USR_WR, 0x7C2C                         /*               write                */
  .equ SS_DRT, 0x7C30                         /*        dirty (dialogs)             */
  .equ EA_SSW, 0x7C40                         /* SecSys work area EA                */
  .equ MH_SSW, 0x7C58                         /*                  MH                */
  .equ EA_MPW, 0x7C80                         /*        mpw.dat   EA                */
  .equ MH_MPW, 0x7C98                         /*                  MH                */
  .equ LD_SSM, 0x7CC0                         /*        messages  EA                */
  .equ MH_SSM, 0x7CD8                         /*                  MH                */
  .equ LD_PWF, 0x7D00                         /*        PWF       LD                */
  .equ MH_PWF, 0x7D18                         /*                  MH                */
  .equ PWEF_1, 0x7E00                         /*        passwords EFld 1            */
  .equ PWEF_2, 0x7E80                         /*                       2            */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7F00 - 7FFF   SYSTEM DATA                    flags and other data
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7F00                          SecSys flags
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ NEW_SS, 0x7F00                         /* SecSys flags                       */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7F04                              reserved
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ FLG_01, 0x7F04                         /* -                                  */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7F08                          system flags
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ SYS_FL, 0x7F08                         /* system flags (byte 0)              */
  .equ SYS_F1, 0x7F09                         /*               byte 1               */
  .equ SYS_F2, 0x7F0A                         /*               byte 2               */
  .equ SYS_F3, 0x7F0B                         /*               byte 3               */
  /*
    ~~~~~~~~~~~~~~~~~~~~~
    system flags
    ~~~~~~~~~~~~~~~~~~~~~
  */
  .equ SFLG07, 0x00000080                     /* -                                  */
  .equ SFLG06, 0x00000040                     /* -                                  */
  .equ SFLG05, 0x00000020                     /* -                                  */
  .equ SFLG04, 0x00000010                     /* -                                  */
  .equ SFTERM, 0x00000008                     /* Loader shut down                   */
  .equ SFLG02, 0x00000004                     /* -                                  */
  .equ SFBUSY, 0x00000002                     /* Loader busy                        */
  .equ SFLDLG, 0x00000001                     /* dialog init                        */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7F0C                          Loader flags
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ LDR_FL, 0x7F0C                         /* loader flags                       */
  /*
    ~~~~~~~~~~~~~~~~~~~~~
    Loader flags
    ~~~~~~~~~~~~~~~~~~~~~
  */
  .equ LDBUSY, 0x00008000                     /* ??? (probably obsolete...)         */
  .equ LDCORR, 0x00004000                     /* field corrupt                      */
  .equ LDRSEC, 0x00002000                     /* SecSys                             */
  .equ LDRENC, 0x00001000                     /* encrypted        (SecSys required) */
  .equ LDIRTY, 0x00000800                     /* dirty            (write active)    */
  .equ LDR_0A, 0x00000400                     /* -                                  */
  .equ LDLOCK, 0x00000200                     /* bypass LDfre()                     */
  .equ LDINST, 0x00000100                     /* single instance                    */
  .equ LDFILE, 0x00000080                     /* not a field      (file to load)    */
  .equ LDREXT, 0x00000040                     /* external field   (PATH_X\data\x)   */
  .equ LDRFLD, 0x00000020                     /* internal field   (..\data\x)       */
  .equ LDRMEM, 0x00000010                     /* memory block                       */
  .equ LDDISC, 0x00000008                     /* discard changes  (override LDRCHG) */
  .equ LDRCHG, 0x00000004                     /* content changed                    */
  .equ LWRITE, 0x00000002                     /* write access                       */
  .equ LDREAD, 0x00000001                     /* read  access                       */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    7F20 - 7F2F                    system area
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    date + time
    ~~~~~~~~~~~~~~~~~
  */
  .equ C_TIME, 0x7F20                         /* HMSh (in proper order)             */
  .equ C_DATE, 0x7F24                         /* DMY                                */
  .equ T_ZONE, 0x7F28                         /* diff. to GMT (minutes)             */
  .equ WK_DAY, 0x7F2C                         /* day in week  (Mo...Su)             */
  /*
    ~~~~~~~~~~~~~~~~~
    FDacc()
    ~~~~~~~~~~~~~~~~~
  */
  .equ FIAERR, 0x7F30                         /* FDacc() last error                 */
  .equ FIAADR, 0x7F40                         /* used as empty string               */
  /*
    ==================================================================================
                                    S T R U C T U R E S
    ==================================================================================
    MH     size: 0x20
    ~~~~~~~~~~~~~~~~~
  */
  .equ M_H_EA, 0x00                           /*            EA memory block         */
  .equ M_H_FL, 0x08                           /*            block flags             */
  .equ M_H_IC, 0x0C                           /*            instance counter        */
  .equ M_H_AL, 0x10                           /*            allocated size          */
  .equ M_H_SZ, 0x14                           /*            used      size          */
  .equ M_H_FI, 0x18                           /*            field number            */
  .equ M_H_ET, 0x1C                           /*            entries                 */
  /*
    ~~~~~~~~~~~~~~~~~
    FH     size: 0x30
    ~~~~~~~~~~~~~~~~~
  */
  .equ FH_WIN, 0x00                           /* FH.WINfh   WIN file handle         */
  .equ FHSIZE, 0x08                           /* FH.Fsize   file size               */
  .equ FHBASE, 0x10                           /* FH.Mbase   EA source/target        */
  .equ FHMOFF, 0x18                           /* FH.Moffs   option: offset to EA    */
  .equ FHFOFF, 0x20                           /* FH.Foffs                  in file  */
  .equ FHSTAT, 0x28                           /* FH.Fstat   WIN status flags        */
  /*
    ~~~~~~~~~~~~~~~~~
    LD     size: 0x40
    ~~~~~~~~~~~~~~~~~
  */
  .equ LDMEMA, 0x00                           /* LD.MemEA   EA memory block         */
  .equ LDSIZE, 0x08                           /* LD.MemSz   size allocated          */
  .equ LDFNUM, 0x10                           /* LD.FldNr   field number            */
  .equ LDCNTL, 0x14                           /* LD.LdCtl   control flags           */
  .equ LDMEMH, 0x18                           /* LD.MemHd   EA LDT entry            */
  .equ LDNAME, 0x20                           /* LD.FileN   EA filename             */
  .equ LDMOFF, 0x28                           /* LD.Moffs   option: offset to MemEA */
  .equ LDFOFF, 0x30                           /* LD.Foffs           => file pointer */
  .equ LDCOPY, 0x38                           /* LD.AmtBy           byte to copy    */
  /*
    ~~~~~~~~~~~~~~~~~
    EFD    size: 0x80
    ~~~~~~~~~~~~~~~~~
  */
  .equ EF_EHW, 0x00                           /* EFD.hwnd   HWND entryfield         */
  .equ EF_EID, 0x08                           /* EFD.ResId  ID   entryfield         */
  .equ EF_FLG, 0x0C                           /* EFD.Eflgs  EFld flags              */
  .equ EF_TYP, 0x10                           /* EFD.Type   type                    */
  .equ EF_TFL, 0x14                           /* EFD.Tflgs  type flags  (function)  */
  .equ EF_TDA, 0x18                           /* EFD.Tdata       data   (subfield)  */
  .equ EF_MCH, 0x1C                           /* EFD.MxChr  maximum chars           */
  .equ EF_MIN, 0x20                           /* EFD.Min    minimum     (field MH)  */
  .equ EF_MAX, 0x28                           /* EFD.Max    maximum                 */
  .equ EF_CUR, 0x30                           /* EFD.Cur    current                 */
  .equ EFCONT, 0x40                           /* EFD.Cont   content (64 byte)       */
  /*
    ~~~~~~~~~~~~~~~~~
    SPN    size: 0x40
    ~~~~~~~~~~~~~~~~~
  */
  .equ SP_MIN, 0x00                           /* SPN.Min    minimum                 */
  .equ SP_MAX, 0x08                           /* SPN.Max    maximum                 */
  .equ SP_CUR, 0x10                           /* SPN.Cur    current                 */
  .equ SP_EHW, 0x18                           /* SPN.Ehwnd  HWND entryfield         */
  .equ SP_EID, 0x20                           /* SPN.EFid   ID   entryfield         */
  .equ SP_SID, 0x24                           /* SPN.UDid        up/down control    */
  .equ SP_FMH, 0x28                           /* SPN.Fmh    MemHandle (strings)     */
  .equ SP_TYP, 0x30                           /* SPN.Type   spinbutton type         */
  .equ SP_FLG, 0x34                           /* SPN.Flags             flags        */
  .equ SP_TFL, 0x38                           /* SPN.Tflgs  type flags  (function)  */
  .equ SP_TDA, 0x3C                           /* SPN.Tdata       data   (subfield)  */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
#endif
