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
#ifndef __yvar__
#define __yvar__
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                    V A R I A B L E S
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Dear user,

    this header file is reserved for functions in ST-Open's libraries. Please leave it
    alone! Put definitions for your application in -separate- header files residing in
    your application's source folder.

    Please prefer defined symbols over hard coded addresses. Future versions might not
    use the defined addresses any longer, so you're on the safe side using symbols. To
    fill the current gaps, all definitions need to be reorganised sooner or later.

    Not worth to mention, but nevertheless:  NEVER include this header *together* with
    the assembler header YASM.H! Some definitions are identical, so the compiler might
    use the wrong definition at the wrong place...
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    p e r m a n e n t
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define STV_HINST           ((QVAR) + (0x0000 >> 3))  /* PRGM   HINSTANCE         */
  #define STV_FRAME           ((QVAR) + (0x0008 >> 3))  /*        HWND frame        */
  #define STV_SCN_W           ((QVAR) + (0x0010 >> 3))  /* SCRN   width             */
  #define STV_SCN_H           ((QVAR) + (0x0018 >> 3))  /*        height            */
  #define STV_SCN_W0          ((DVAR) + (0x0020 >> 2))  /*        \                 */
  #define STV_SCN_H0          ((DVAR) + (0x0024 >> 2))  /*         |pattern for SSE */
  #define STV_SCN_W1          ((DVAR) + (0x0028 >> 2))  /*         |multiply/divide */
  #define STV_SCN_H1          ((DVAR) + (0x002C >> 2))  /*        /                 */
  #define STV_USR_LANGUAGE    ((DVAR) + (0x0030 >> 2))  /* PRGM   language          */
  #define STV_SWP_MAX         ((DVAR) + (0x0034 >> 2))  /*        1 = maximise frm. */
  #define STV_CUR_DRIVE       ((DVAR) + (0x0038 >> 2))  /*        current drive     */
  #define STV_DRIVE_MAP       ((DVAR) + (0x003C >> 2))  /*        drive map         */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define STV_CUR_X           ((DVAR) + (0x0040 >> 2))  /* RIS    last shutdown - x */
  #define STV_CUR_Y           ((DVAR) + (0x0044 >> 2))  /*                      - y */
  #define STV_CUR_W           ((DVAR) + (0x0048 >> 2))  /*                      - w */
  #define STV_CUR_H           ((DVAR) + (0x004C >> 2))  /*                      - h */
  #define STV_DEF_X           ((DVAR) + (0x0050 >> 2))  /*        user defaults - x */
  #define STV_DEF_Y           ((DVAR) + (0x0054 >> 2))  /*                      - y */
  #define STV_DEF_W           ((DVAR) + (0x0058 >> 2))  /*                      - w */
  #define STV_DEF_H           ((DVAR) + (0x005C >> 2))  /*                      - h */
  #define STV_X_PRC           ((DVAR) + (0x0060 >> 2))  /*        temp percent  - x */
  #define STV_Y_PRC           ((DVAR) + (0x0064 >> 2))  /*                      - y */
  #define STV_W_PRC           ((DVAR) + (0x0068 >> 2))  /*                      - w */
  #define STV_H_PRC           ((DVAR) + (0x006C >> 2))  /*                      - h */
  #define STV_X_PIX           ((DVAR) + (0x0070 >> 2))  /*        temp pixel    - x */
  #define STV_Y_PIX           ((DVAR) + (0x0074 >> 2))  /*                      - y */
  #define STV_W_PIX           ((DVAR) + (0x0078 >> 2))  /*                      - w */
  #define STV_H_PIX           ((DVAR) + (0x007C >> 2))  /*                      - h */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define STV_FLS_ADD         ((DVAR) + (0x0080 >> 2))  /* Flist  auto add on/off   */
  #define STV_CHKID           ((DVAR) + (0x0084 >> 2))  /* CHK    timer ID          */
  #define STV_OLH_OLH         ((DVAR) + (0x0088 >> 2))  /* OLH    help  number      */
  #define STV_OLH_TOP         ((DVAR) + (0x0090 >> 2))  /*        topic number      */
  #define STV_OLH_STR         ((QVAR) + (0x0098 >> 3))  /*        EA passed topic   */
  #define STV_SYS_28          ((DVAR) + (0x00A0 >> 2))  /* -      reserved          */
  #define STV_SYS_29          ((DVAR) + (0x00A4 >> 2))  /*        reserved          */
  #define STV_SYS_2A          ((DVAR) + (0x00A8 >> 2))  /*        reserved          */
  #define STV_SYS_2B          ((DVAR) + (0x00AC >> 2))  /*        reserved          */
  #define STV_W_RATIO         ((DVAR) + (0x00B0 >> 2))  /* ratio  mul+div  x 10,000 */
  #define STV_SYS_2D          ((DVAR) + (0x00B4 >> 2))  /*                 y 10,000 */
  #define STV_SYS_2E          ((DVAR) + (0x00B8 >> 2))  /*                 w 10,000 */
  #define STV_SYS_2F          ((DVAR) + (0x00BC >> 2))  /*                 h 10,000 */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define STV_MHMHWND         ((QVAR) + (0x00C0 >> 3))  /* MHmon  HWND              */
  #define STV_MHMCUR          ((QVAR) + (0x00C8 >> 3))  /*        current handle    */
  #define STV_TSTCUR          ((QVAR) + (0x00D0 >> 3))  /* RegMon current chunk     */
  #define STV_SS_NEXT         ((DVAR) + (0x00D8 >> 2))  /* SecSys next bit encoding */
  #define STV_M_LIF           ((DVAR) + (0x00DC >> 2))  /*        log in fail mast. */
  #define STV_U_LIF           ((DVAR) + (0x00E0 >> 2))  /*                    user  */
  #define STV_F_TIME          ((DVAR) + (0x00E4 >> 2))  /*        last failure time */
  #define STV_F_DATE          ((DVAR) + (0x00E8 >> 2))  /*                     date */
  #define STV_SS_00           ((DVAR) + (0x00EC >> 2))  /*        reserved 00       */
  #define STV_SS_01           ((DVAR) + (0x00F0 >> 2))  /*                 01       */
  #define STV_SS_02           ((DVAR) + (0x00F4 >> 2))  /*                 02       */
  #define STV_SS_03           ((DVAR) + (0x00F8 >> 2))  /*                 03       */
  #define STV_SS_04           ((DVAR) + (0x00FC >> 2))  /*                 04       */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define STV_MSG_ADDR        ((QVAR) + (0x0100 >> 3))  /* SyMsg  address string    */
  #define STV_MSG_VAR1        ((QVAR) + (0x0108 >> 3))  /*        numeric 1         */
  #define STV_MSG_VAR2        ((QVAR) + (0x0110 >> 3))  /*                2         */
  #define STV_MSG_VAR3        ((QVAR) + (0x0118 >> 3))  /*                3         */
  #define STV_MSG_VAR4        ((QVAR) + (0x0120 >> 3))  /*                4         */
  #define STV_MSG_REPLY       ((DVAR) + (0x0128 >> 2))  /*        i/o               */
  #define STV_ERR_TYPE        ((DVAR) + (0x012C >> 2))  /*        0 user, x system  */
  #define STV_SYS_4C          ((DVAR) + (0x0130 >> 2))  /*                 01       */
  #define STV_DLG_TYPE        ((DVAR) + (0x0134 >> 2))  /* DLGtxt 0 user, x system  */
  #define STV_STK_DMP         ((DVAR) + (0x0138 >> 2))  /* Dump   stack             */
  #define STV_MEM_DMP         ((DVAR) + (0x013C >> 2))  /*        mem               */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define STV_RES50           ((DVAR) + (0x0140 >> 2))  /* -                        */
  #define STV_RES51           ((DVAR) + (0x0144 >> 2))  /* -                        */
  #define STV_RES52           ((DVAR) + (0x0148 >> 2))  /* -                        */
  #define STV_RES53           ((DVAR) + (0x014C >> 2))  /* -                        */
  #define STV_RES54           ((DVAR) + (0x0150 >> 2))  /* -                        */
  #define STV_RES55           ((DVAR) + (0x0154 >> 2))  /* -                        */
  #define STV_RES56           ((DVAR) + (0x0158 >> 2))  /* -                        */
  #define STV_RES57           ((DVAR) + (0x015C >> 2))  /* -                        */
  #define STV_RES58           ((DVAR) + (0x0160 >> 2))  /* -                        */
  #define STV_RES59           ((DVAR) + (0x0164 >> 2))  /* -                        */
  #define STV_RES5A           ((DVAR) + (0x0168 >> 2))  /* -                        */
  #define STV_RES5B           ((DVAR) + (0x016C >> 2))  /* -                        */
  #define STV_RES5C           ((DVAR) + (0x0170 >> 2))  /* -                        */
  #define STV_RES5D           ((DVAR) + (0x0174 >> 2))  /* -                        */
  #define STV_RES5E           ((DVAR) + (0x0178 >> 2))  /* -                        */
  #define STV_RES5F           ((DVAR) + (0x017C >> 2))  /* -                        */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define STV_RES60           ((DVAR) + (0x0180 >> 2))  /* -                        */
  #define STV_RES61           ((DVAR) + (0x0184 >> 2))  /* -                        */
  #define STV_RES62           ((DVAR) + (0x0188 >> 2))  /* -                        */
  #define STV_RES63           ((DVAR) + (0x018C >> 2))  /* -                        */
  #define STV_RES64           ((DVAR) + (0x0190 >> 2))  /* -                        */
  #define STV_RES65           ((DVAR) + (0x0194 >> 2))  /* -                        */
  #define STV_RES66           ((DVAR) + (0x0198 >> 2))  /* -                        */
  #define STV_RES67           ((DVAR) + (0x019C >> 2))  /* -                        */
  #define STV_RES68           ((DVAR) + (0x01A0 >> 2))  /* -                        */
  #define STV_RES69           ((DVAR) + (0x01A4 >> 2))  /* -                        */
  #define STV_RES6A           ((DVAR) + (0x01A8 >> 2))  /* -                        */
  #define STV_RES6B           ((DVAR) + (0x01AC >> 2))  /* -                        */
  #define STV_RES6C           ((DVAR) + (0x01B0 >> 2))  /* -                        */
  #define STV_RES6D           ((DVAR) + (0x01B4 >> 2))  /* -                        */
  #define STV_RES6E           ((DVAR) + (0x01B8 >> 2))  /* -                        */
  #define STV_RES6F           ((DVAR) + (0x01BC >> 2))  /* -                        */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define STV_RES70           ((DVAR) + (0x01C0 >> 2))  /* -                        */
  #define STV_RES71           ((DVAR) + (0x01C4 >> 2))  /* -                        */
  #define STV_RES72           ((DVAR) + (0x01C8 >> 2))  /* -                        */
  #define STV_RES73           ((DVAR) + (0x01CC >> 2))  /* -                        */
  #define STV_RES74           ((DVAR) + (0x01D0 >> 2))  /* -                        */
  #define STV_RES75           ((DVAR) + (0x01D4 >> 2))  /* -                        */
  #define STV_RES76           ((DVAR) + (0x01D8 >> 2))  /* -                        */
  #define STV_RES77           ((DVAR) + (0x01DC >> 2))  /* -                        */
  #define STV_RES78           ((DVAR) + (0x01E0 >> 2))  /* -                        */
  #define STV_RES79           ((DVAR) + (0x01E4 >> 2))  /* -                        */
  #define STV_RES7A           ((DVAR) + (0x01E8 >> 2))  /* -                        */
  #define STV_RES7B           ((DVAR) + (0x01EC >> 2))  /* -                        */
  #define STV_RES7C           ((DVAR) + (0x01F0 >> 2))  /* -                        */
  #define STV_RES7D           ((DVAR) + (0x01F4 >> 2))  /* -                        */
  #define STV_RES7E           ((DVAR) + (0x01F8 >> 2))  /* -                        */
  #define STV_RES7F           ((DVAR) + (0x01FC >> 2))  /* -                        */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    (GVAR) + 0200...1FFC   USER                 user variables and buffers (stored)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    (GVAR) + 2000...3FFF   CONVERSION           table 3E00 - 3FFF is user defined
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define CV_DEC              ((QVAR) + (0x2000 >> 3))  /* LUT numeric decimal      */
  #define CV_HEX              ((QVAR) + (0x2100 >> 3))  /*             hexadecimal  */
  #define CV_UPP              ((QVAR) + (0x2200 >> 3))  /*     upper case           */
  #define CV_LOW              ((QVAR) + (0x2300 >> 3))  /*     lower case           */
  #define CV_CHR              ((QVAR) + (0x2400 >> 3))  /*     ASCII chars          */
  #define CV_NOC              ((QVAR) + (0x2500 >> 3))  /*                 + ctrl   */
  #define CV_DMP              ((QVAR) + (0x2600 >> 3))  /*     hex dump             */
  #define CV_USR              ((QVAR) + (0x2700 >> 3))  /*     USER DEFINED         */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    (GVAR) + 4000...6FFF   SYSTEM               function buffers and structures
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    W O R K   A R E A           4000...6FFF
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define SSE_CV_07           ((DVAR) + (0x4000 >> 2))  /* SSE conversion 0707...07 */
  #define SSE_CV_09           ((DVAR) + (0x4010 >> 2))  /*                0909...09 */
  #define SSE_CV_0F           ((DVAR) + (0x4020 >> 2))  /*                0F0F...0F */
  #define SSE_CV_2D           ((DVAR) + (0x4030 >> 2))  /*                2D2D...2D */
  #define SSE_CV_30           ((DVAR) + (0x4040 >> 2))  /*                3030...30 */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    (GVAR) + 7000...77FF   SYSTEM               internal buffers and structures
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    P A T H S   &   N A M E S   7200...727F
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define PATH_EXTERNAL       ((DVAR) + (0x7000 >> 2))  /* qualified_path\DATA\x    */
  #define PATH_EXTERN_IP      ((DVAR) + (0x723C >> 2))  /* insertion point x@[BNR]  */
  #define PATH_DEFAULT        ((DVAR) + (0x7240 >> 2))  /* ..\DATA\                 */
  #define PATH_DEFAULT_IP     ((DVAR) + (0x7248 >> 2))  /* insertion address        */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    C O M M O N   L D  +  F H   7280...72FF
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define LD_SYSTEM           ((QVAR) + (0x7280 >> 3))  /* LD structure    LD.MemEA */
  #define MH_SYSTEM           ((QVAR) + (0x7298 >> 3))  /*                 LD.MemHD */
  #define FH_SYSTEM           ((QVAR) + (0x72C0 >> 3))  /* FH structure    FH.WinFH */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    L D   S T R U C T U R E S   7400...77FF
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define LD_ENTRYFIELDS      ((QVAR) + (0x7400 >> 3))  /* LD entryfields  LD.MemEA */
  #define MH_ENTRYFIELDS      ((QVAR) + (0x7418 >> 3))  /*                 LD.MemHd */
  #define LD_SPINBUTTONS      ((QVAR) + (0x7440 >> 3))  /*    spinbuttons  LD.MemEA */
  #define MH_SPINBUTTONS      ((QVAR) + (0x7458 >> 3))  /*                 LD.MemHd */
  #define LD_USER_TEXTS       ((QVAR) + (0x7480 >> 3))  /*    menu+dlgs    LD.MemEA */
  #define MH_USER_TEXTS       ((QVAR) + (0x7498 >> 3))  /*                 LD.MemHd */
  #define LD_SYST_TEXTS       ((QVAR) + (0x74C0 >> 3))  /*    system dlgs  LD.MemEA */
  #define MH_SYST_TEXTS       ((QVAR) + (0x74D8 >> 3))  /*                 LD.LdrMH */
  #define LD_USER_MSGS        ((QVAR) + (0x7500 >> 3))  /*    user msgs    LD.MemEA */
  #define MH_USER_MSGS        ((QVAR) + (0x7518 >> 3))  /*                 LD.MemHd */
  #define LD_LOAD_LIST        ((QVAR) + (0x7540 >> 3))  /*    loaded files LD.MemEA */
  #define MH_LOAD_LIST        ((QVAR) + (0x7558 >> 3))  /*                 LD.MemHd */
  #define LD_FILELIST         ((QVAR) + (0x7580 >> 3))  /*    FileList     LD.MemEA */
  #define MH_FILELIST         ((QVAR) + (0x7598 >> 3))  /*                 LD.MemHd */
  #define LD_LANGUAGES        ((QVAR) + (0x75C0 >> 3))  /*    languages    LD.MemEA */
  #define MH_LANGUAGES        ((QVAR) + (0x75D8 >> 3))  /*                 LD.MemHd */
  #define LD_SYS_ERRORS       ((QVAR) + (0x7600 >> 3))  /*    sys errors   LD.MemEA */
  #define MH_SYS_ERRORS       ((QVAR) + (0x7618 >> 3))  /*                 LD.MemHd */
  #define LD_TOPICS           ((QVAR) + (0x7640 >> 3))  /*    topics       LD.MemEA */
  #define MH_TOPICS           ((QVAR) + (0x7658 >> 3))  /*                 LD.MemHd */
  #define LD_OLH              ((QVAR) + (0x7680 >> 3))  /*    OLH          LD.MemEA */
  #define MH_OLH              ((QVAR) + (0x7698 >> 3))  /*                 LD.MemHd */
  #define LD_SYS_STRINGS      ((QVAR) + (0x76C0 >> 3))  /*    SysStrings   LD.MemEA */
  #define MH_SYS_STRINGS      ((QVAR) + (0x76D8 >> 3))  /*                 LD.MemHd */
  #define LDR_TABLE           ((QVAR) + (0x7700 >> 3))  /* loader table template    */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    B U F F E R S               7800...7BFF
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define BUF_MNUTXT          ((DVAR) + (0x7800 >> 2))  /* buffer MnuTxt()          */
  #define BUF_ERRMGR          ((DVAR) + (0x7BA0 >> 2))  /*        ErrMgr()          */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    S e c S y s                 7C00...7EFF
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define SS_ACTIV            ((DVAR) + (0x7C00 >> 2))  /*        activated        */
  #define SS_IS_ON            ((DVAR) + (0x7C04 >> 2))  /*        running          */
  #define SS_DUMP             ((DVAR) + (0x7C08 >> 2))  /*        dump activities  */
  #define SS_SUPER            ((DVAR) + (0x7C0C >> 2))  /*        server mode      */
  #define SS_SERVER           ((DVAR) + (0x7C10 >> 2))  /*        supervisor mode  */
  #define SS_ABORT            ((DVAR) + (0x7C14 >> 2))  /*        login aborted    */
  #define SS_U_PIN            ((DVAR) + (0x7C18 >> 2))  /*        PIN local user   */
  #define SS_PWPIN            ((DVAR) + (0x7C1C >> 2))  /*        NewMP() flag     */
  #define SS_ACC_R            ((DVAR) + (0x7C20 >> 2))  /*        rights access    */
  #define SS_ADM_R            ((DVAR) + (0x7C24 >> 2))  /*               admin     */
  #define SS_RDA_R            ((DVAR) + (0x7C28 >> 2))  /*               read      */
  #define SS_WRA_R            ((DVAR) + (0x7C2C >> 2))  /*               write     */
  #define SS_DIRTY            ((DVAR) + (0x7C30 >> 2))  /*        dirty (dialogs)  */
  #define SS_WRKEA            ((QVAR) + (0x7C40 >> 3))  /* LD     work area EA     */
  #define SS_WRKMH            ((QVAR) + (0x7C58 >> 3))  /*                  MH     */
  #define SS_MPWEA            ((QVAR) + (0x7C80 >> 3))  /*        MPW       EA     */
  #define SS_MPWMH            ((QVAR) + (0x7C98 >> 3))  /*                  MH     */
  #define SS_LDMSG            ((QVAR) + (0x7CC0 >> 3))  /*        messages  EA     */
  #define SS_MHMSG            ((QVAR) + (0x7CD8 >> 3))  /*                  MH     */
  #define SS_LDSTC            ((QVAR) + (0x7D00 >> 3))  /*        PWF       EA     */
  #define SS_MHSTC            ((QVAR) + (0x7D18 >> 3))  /*                  MH     */
  #define SS_PWB01            ((DVAR) + (0x7E00 >> 2))  /*        buffer EFld 1    */
  #define SS_PWB02            ((DVAR) + (0x7E80 >> 2))  /*               EFld 2    */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    F l a g s                   7F00...7F3F
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define SEC_FLGS            ((DVAR) + (0x7F00 >> 2))  /* SecSys flags             */
  #define RESV_FLG            ((DVAR) + (0x7F04 >> 2))  /* reserved                 */
  #define SYS_FLGS            ((DVAR) + (0x7F08 >> 2))  /* system flags             */
  #define LDR_FLGS            ((DVAR) + (0x7F0C >> 2))  /* loader flags             */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    S y s t e m   A r e a       7FC0...7FFF
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    date + time
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define SYS_TIME            ((DVAR) + (0x7F20 >> 2))  /* HMSh (in proper order)   */
  #define SYS_DATE            ((DVAR) + (0x7F24 >> 2))  /* DMY                      */
  #define SYS_T_ZONE          ((DVAR) + (0x7F28 >> 2))  /* diff. to GMT (minutes)   */
  #define SYS_WK_DAY          ((DVAR) + (0x7F2C >> 2))  /* day in week  (Mo...Su)   */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    FDacc()
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define FIA_ERR             ((DVAR) + (0x7F30 >> 2))  /* FDacc() error return     */
  #define FIA_ADDRESS         ((DVAR) + (0x7F40 >> 2))  /* used as empty string     */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                 R U N T I M E   A R E A
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    (GVAR) + 8000...FFFC  these 8192 doublewords are reserved for your application. It
                          is strongly recommended to create a separate header for each
                          application. Please use the style introduced in this file to
                          keep your headers readable for other programmers. THANK YOU!
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    s y s t e m   s t r i n g s     00...3F
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define STR_RES_00             0x0000                 /* reserved                 */
  #define STR_PGM_FULL           0x0001                 /* real path to program DIR */
  #define STR_PGM_PATH           0x0002                 /* mutilated path (w/o DRV) */
  #define STR_RES_03             0x0003                 /* reserved                 */
  #define STR_THREAD             0x0004                 /* thread - string to pass  */
  #define STR_OLH_TITLE          0x0005                 /* OLH    - title buffer    */
  #define STR_OLH_TEXT           0x0006                 /*        - text  buffer    */
  #define STR_RES_07             0x0007                 /* reserved                 */
  #define STR_RES_08             0x0008                 /* reserved                 */
  #define STR_RES_09             0x0009                 /* reserved                 */
  #define STR_RES_0A             0x000A                 /* reserved                 */
  #define STR_RES_0B             0x000B                 /* reserved                 */
  #define STR_RES_0C             0x000C                 /* reserved                 */
  #define STR_RES_0D             0x000D                 /* reserved                 */
  #define STR_RES_0E             0x000E                 /* reserved                 */
  #define STR_RES_0F             0x000F                 /* reserved                 */
  #define STR_FLS_SELECT         0x0010                 /* FLIST - select. filename */
  #define STR_FLS_PATTERN        0x0011                 /* FOPEN - pattern          */
  #define STR_RES_12             0x0012                 /* reserved                 */
  #define STR_RES_13             0x0013                 /* reserved                 */
  #define STR_RES_14             0x0014                 /* reserved                 */
  #define STR_RES_15             0x0015                 /* reserved                 */
  #define STR_RES_16             0x0016                 /* reserved                 */
  #define STR_RES_17             0x0017                 /* reserved                 */
  #define STR_RES_18             0x0018                 /* reserved                 */
  #define STR_RES_19             0x0019                 /* reserved                 */
  #define STR_RES_1A             0x001A                 /* reserved                 */
  #define STR_RES_1B             0x001B                 /* reserved                 */
  #define STR_RES_1C             0x001C                 /* reserved                 */
  #define STR_RES_1D             0x001D                 /* reserved                 */
  #define STR_RES_1E             0x001E                 /* reserved                 */
  #define STR_RES_1F             0x001F                 /* reserved                 */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    l a n g u a g e s   O L H       20...2F
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define STR_LANG0              0x0020                 /* languages 0 ENGLISH      */
  #define STR_LANG1              0x0021                 /*           1 DEUTSCH      */
  #define STR_LANG2              0x0022                 /*           2              */
  #define STR_LANG3              0x0023                 /*           3              */
  #define STR_LANG4              0x0024                 /*           4              */
  #define STR_LANG5              0x0025                 /*           5              */
  #define STR_LANG6              0x0026                 /*           6              */
  #define STR_LANG7              0x0027                 /*           7              */
  #define STR_LANG8              0x0028                 /*           8              */
  #define STR_LANG9              0x0029                 /*           9              */
  #define STR_LANGA              0x002A                 /*           A              */
  #define STR_LANGB              0x002B                 /*           B              */
  #define STR_LANGC              0x002C                 /*           C              */
  #define STR_LANGD              0x002D                 /*           D              */
  #define STR_LANGE              0x002E                 /*           E              */
  #define STR_LANGF              0x002F                 /*           F              */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    r e s e r v e d                 30...3F
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define STR_RES_30             0x0030                 /* reserved                 */
  #define STR_RES_31             0x0031                 /* reserved                 */
  #define STR_RES_32             0x0032                 /* reserved                 */
  #define STR_RES_33             0x0033                 /* reserved                 */
  #define STR_RES_34             0x0034                 /* reserved                 */
  #define STR_RES_35             0x0035                 /* reserved                 */
  #define STR_RES_36             0x0036                 /* reserved                 */
  #define STR_RES_37             0x0037                 /* reserved                 */
  #define STR_RES_38             0x0038                 /* reserved                 */
  #define STR_RES_39             0x0039                 /* reserved                 */
  #define STR_RES_3A             0x003A                 /* reserved                 */
  #define STR_RES_3B             0x003B                 /* reserved                 */
  #define STR_RES_3C             0x003C                 /* reserved                 */
  #define STR_RES_3D             0x003D                 /* reserved                 */
  #define STR_RES_3E             0x003E                 /* reserved                 */
  #define STR_RES_3F             0x003F                 /* reserved                 */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
#endif
