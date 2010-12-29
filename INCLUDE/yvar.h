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
#ifndef __yvar__
#define __yvar__
  /*
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º                                 V A R I A B L E S                                  ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ Dear user,                                                                         ³Û
  ³                                                                                    ³Û
  ³ this header file is reserved for functions in ST-Open's libraries. Please leave it ³Û
  ³ alone! Put definitions for your application in -separate- header files residing in ³Û
  ³ your application's source folder.                                                  ³Û
  ³                                                                                    ³Û
  ³ Please prefer defined symbols over hard coded addresses. Future versions might not ³Û
  ³ use the defined addresses any longer, so you're on the safe side using symbols. To ³Û
  ³ fill the current gaps, all definitions need to be reorganised sooner or later.     ³Û
  ³                                                                                    ³Û
  ³ Not worth to mention, but neverthelesss: NEVER include this header *together* with ³Û
  ³ the assembler header YASM.H! Some definitions are identical, so the compiler might ³Û
  ³ use the wrong definition at the wrong place...                                     ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ p e r m a n e n t                       ³Û
  ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
  ³ We've to shift all offsets right by two ³Û
  ³ 'cause the compiler multipies them with ³Û
  ³ four. God save all C-compilers!         ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define STV_HFRAME             ((GVAR) + (0x0000 >> 2))  /* PRGM   HWND frame        */
  #define STV_HCLIENT            ((GVAR) + (0x0008 >> 2))  /*             client       */
  #define STV_SCN_W              ((GVAR) + (0x0010 >> 2))  /* SCRN   width             */
  #define STV_SCN_H              ((GVAR) + (0x0018 >> 2))  /*        height            */
  #define STV_SCN_W0             ((GVAR) + (0x0020 >> 2))  /*        ¿                 */
  #define STV_SCN_H0             ((GVAR) + (0x0024 >> 2))  /*        Ã pattern for SSE */
  #define STV_SCN_W1             ((GVAR) + (0x0028 >> 2))  /*        ³ multiply/divide */
  #define STV_SCN_H1             ((GVAR) + (0x002C >> 2))  /*        Ù                 */
  #define STV_USR_LANGUAGE       ((GVAR) + (0x0030 >> 2))  /* PRGM   language          */
  #define STV_SWP_MAX            ((GVAR) + (0x0034 >> 2))  /*        1 = maximise frm. */
  #define STV_CUR_DRIVE          ((GVAR) + (0x0038 >> 2))  /*        current drive     */
  #define STV_DRIVE_MAP          ((GVAR) + (0x003C >> 2))  /*        drive map         */
  /*ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
    ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
      ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ*/
  #define STV_CUR_X              ((GVAR) + (0x0040 >> 2))  /* RIS    last shutdown - x */
  #define STV_CUR_Y              ((GVAR) + (0x0044 >> 2))  /*                      - y */
  #define STV_CUR_W              ((GVAR) + (0x0048 >> 2))  /*                      - w */
  #define STV_CUR_H              ((GVAR) + (0x004C >> 2))  /*                      - h */
  #define STV_DEF_X              ((GVAR) + (0x0050 >> 2))  /*        user defaults - x */
  #define STV_DEF_Y              ((GVAR) + (0x0054 >> 2))  /*                      - y */
  #define STV_DEF_W              ((GVAR) + (0x0058 >> 2))  /*                      - w */
  #define STV_DEF_H              ((GVAR) + (0x005C >> 2))  /*                      - h */
  #define STV_X_PRC              ((GVAR) + (0x0060 >> 2))  /*        temp percent  - x */
  #define STV_Y_PRC              ((GVAR) + (0x0064 >> 2))  /*                      - y */
  #define STV_W_PRC              ((GVAR) + (0x0068 >> 2))  /*                      - w */
  #define STV_H_PRC              ((GVAR) + (0x006C >> 2))  /*                      - h */
  #define STV_X_PIX              ((GVAR) + (0x0070 >> 2))  /*        temp pixel    - x */
  #define STV_Y_PIX              ((GVAR) + (0x0074 >> 2))  /*                      - y */
  #define STV_W_PIX              ((GVAR) + (0x0078 >> 2))  /*                      - w */
  #define STV_H_PIX              ((GVAR) + (0x007C >> 2))  /*                      - h */
  /*ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
    ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
      ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ*/
  #define STV_CUR_HLP            ((GVAR) + (0x0080 >> 2))  /* OLH    help  #           */
  #define STV_CUR_TOP            ((GVAR) + (0x0084 >> 2))  /*        topic #           */
  #define STV_MH_OLH             ((GVAR) + (0x0088 >> 2))  /*        MH help           */
  #define STV_MH_TOP             ((GVAR) + (0x0090 >> 2))  /*        MH topics         */
  #define STV_OLH_STR            ((GVAR) + (0x0098 >> 2))  /*        EA passed topic   */
  #define STV_CHKID              ((GVAR) + (0x00A0 >> 2))  /* CHK    timer ID          */
  #define STV_ABOUTID            ((GVAR) + (0x00A8 >> 2))  /* About  thread ID         */
  #define STV_ABOUTHWND          ((GVAR) + (0x00B0 >> 2))  /*        HWND              */
  #define STV_FLS_ADD            ((GVAR) + (0x00B8 >> 2))  /* Flist  auto add (off/on) */
  #define STV_RES2F              ((GVAR) + (0x00BC >> 2))  /* System reserved          */
  /*ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
    ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
      ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ*/
  #define STV_MHMHWND            ((GVAR) + (0x00C0 >> 2))  /* MHmon  HWND              */
  #define STV_MHMCUR             ((GVAR) + (0x00C8 >> 2))  /*        current handle    */
  #define STV_TSTCUR             ((GVAR) + (0x00D0 >> 2))  /* RegMon current chunk     */
  #define STV_SS_NEXT            ((GVAR) + (0x00D8 >> 2))  /* SecSys next bit encoding */
  #define STV_M_LIF              ((GVAR) + (0x00DC >> 2))  /*        log in fail mast. */
  #define STV_U_LIF              ((GVAR) + (0x00E0 >> 2))  /*                    user  */
  #define STV_F_TIME             ((GVAR) + (0x00E4 >> 2))  /*        last failure time */
  #define STV_F_DATE             ((GVAR) + (0x00E8 >> 2))  /*                     date */
  #define STV_SS_00              ((GVAR) + (0x00EC >> 2))  /*        reserved 00       */
  #define STV_SS_01              ((GVAR) + (0x00F0 >> 2))  /*                 01       */
  #define STV_SS_02              ((GVAR) + (0x00F4 >> 2))  /*                 02       */
  #define STV_SS_03              ((GVAR) + (0x00F8 >> 2))  /*                 03       */
  #define STV_SS_04              ((GVAR) + (0x00FC >> 2))  /*                 04       */
  /*ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
    ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
      ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ*/
  #define STV_MSG_ADDR           ((GVAR) + (0x0100 >> 2))  /* SyMsg  address string    */
  #define STV_MSG_VAR1           ((GVAR) + (0x0108 >> 2))  /*        numeric 1         */
  #define STV_MSG_VAR2           ((GVAR) + (0x0110 >> 2))  /*                2         */
  #define STV_MSG_VAR3           ((GVAR) + (0x0118 >> 2))  /*                3         */
  #define STV_MSG_FLAG           ((GVAR) + (0x0120 >> 2))  /*        flags             */
  #define STV_MSG_REPLY          ((GVAR) + (0x0124 >> 2))  /*        i/o               */
  #define STV_MSG_00             ((GVAR) + (0x0128 >> 2))  /*        reserved 00       */
  #define STV_MSG_01             ((GVAR) + (0x012C >> 2))  /*                 01       */
  #define STV_DLG_TYPE           ((GVAR) + (0x0130 >> 2))  /* DLGtxt 0 user, x system  */
  #define STV_ERR_TYPE           ((GVAR) + (0x0134 >> 2))  /* ErrMgr 0 user, x system  */
  #define STV_STK_DMP            ((GVAR) + (0x0138 >> 2))  /* Dump   stack             */
  #define STV_MEM_DMP            ((GVAR) + (0x013C >> 2))  /*        mem               */
  /*ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
    ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
      ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ*/
  #define STV_RES50              ((GVAR) + (0x002C >> 2))  /* -                        */
  #define STV_RES51              ((GVAR) + (0x0030 >> 2))  /* -                        */
  #define STV_RES52              ((GVAR) + (0x0148 >> 2))  /* -                        */
  #define STV_RES53              ((GVAR) + (0x014C >> 2))  /* -                        */
  #define STV_RES54              ((GVAR) + (0x0150 >> 2))  /* -                        */
  #define STV_RES55              ((GVAR) + (0x0154 >> 2))  /* -                        */
  #define STV_RES56              ((GVAR) + (0x0158 >> 2))  /* -                        */
  #define STV_RES57              ((GVAR) + (0x015C >> 2))  /* -                        */
  #define STV_RES58              ((GVAR) + (0x0160 >> 2))  /* -                        */
  #define STV_RES59              ((GVAR) + (0x0164 >> 2))  /* -                        */
  #define STV_RES5A              ((GVAR) + (0x0168 >> 2))  /* -                        */
  #define STV_RES5B              ((GVAR) + (0x016C >> 2))  /* -                        */
  #define STV_RES5C              ((GVAR) + (0x0170 >> 2))  /* -                        */
  #define STV_RES5D              ((GVAR) + (0x0174 >> 2))  /* -                        */
  #define STV_RES5E              ((GVAR) + (0x0178 >> 2))  /* -                        */
  #define STV_RES5F              ((GVAR) + (0x017C >> 2))  /* -                        */
  /*ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
    ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
      ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ*/
  #define STV_RES60              ((GVAR) + (0x0180 >> 2))  /* -                        */
  #define STV_RES61              ((GVAR) + (0x0184 >> 2))  /* -                        */
  #define STV_RES62              ((GVAR) + (0x0188 >> 2))  /* -                        */
  #define STV_RES63              ((GVAR) + (0x018C >> 2))  /* -                        */
  #define STV_RES64              ((GVAR) + (0x0190 >> 2))  /* -                        */
  #define STV_RES65              ((GVAR) + (0x0194 >> 2))  /* -                        */
  #define STV_RES66              ((GVAR) + (0x0198 >> 2))  /* -                        */
  #define STV_RES67              ((GVAR) + (0x019C >> 2))  /* -                        */
  #define STV_RES68              ((GVAR) + (0x01A0 >> 2))  /* -                        */
  #define STV_RES69              ((GVAR) + (0x01A4 >> 2))  /* -                        */
  #define STV_RES6A              ((GVAR) + (0x01A8 >> 2))  /* -                        */
  #define STV_RES6B              ((GVAR) + (0x01AC >> 2))  /* -                        */
  #define STV_RES6C              ((GVAR) + (0x01B0 >> 2))  /* -                        */
  #define STV_RES6D              ((GVAR) + (0x01B4 >> 2))  /* -                        */
  #define STV_RES6E              ((GVAR) + (0x01B8 >> 2))  /* -                        */
  #define STV_RES6F              ((GVAR) + (0x01BC >> 2))  /* -                        */
  /*ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
    ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
      ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ*/
  #define STV_RES70              ((GVAR) + (0x01C0 >> 2))  /* -                        */
  #define STV_RES71              ((GVAR) + (0x01C4 >> 2))  /* -                        */
  #define STV_RES72              ((GVAR) + (0x01C8 >> 2))  /* -                        */
  #define STV_RES73              ((GVAR) + (0x01CC >> 2))  /* -                        */
  #define STV_RES74              ((GVAR) + (0x01D0 >> 2))  /* -                        */
  #define STV_RES75              ((GVAR) + (0x01D4 >> 2))  /* -                        */
  #define STV_RES76              ((GVAR) + (0x01D8 >> 2))  /* -                        */
  #define STV_RES77              ((GVAR) + (0x01DC >> 2))  /* -                        */
  #define STV_RES78              ((GVAR) + (0x01E0 >> 2))  /* -                        */
  #define STV_RES79              ((GVAR) + (0x01E4 >> 2))  /* -                        */
  #define STV_RES7A              ((GVAR) + (0x01E8 >> 2))  /* -                        */
  #define STV_RES7B              ((GVAR) + (0x01EC >> 2))  /* -                        */
  #define STV_RES7C              ((GVAR) + (0x01F0 >> 2))  /* -                        */
  #define STV_RES7D              ((GVAR) + (0x01F4 >> 2))  /* -                        */
  #define STV_RES7E              ((GVAR) + (0x01F8 >> 2))  /* -                        */
  #define STV_RES7F              ((GVAR) + (0x01FC >> 2))  /* -                        */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ (GVAR) + 0200...0FFC   USER                 user variables and buffers (stored)    ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ (GVAR) + 1000...17FF   CONVERSION           table 1700 - 17FF is user defined      ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define CV_DEC                 ((GVAR) + (0x1000 >> 2))  /* LUT numeric decimal      */
  #define CV_HEX                 ((GVAR) + (0x1100 >> 2))  /*             hexadecimal  */
  #define CV_UPP                 ((GVAR) + (0x1200 >> 2))  /*     upper case           */
  #define CV_LOW                 ((GVAR) + (0x1300 >> 2))  /*     lower case           */
  #define CV_CHR                 ((GVAR) + (0x1400 >> 2))  /*     ASCII chars          */
  #define CV_NOC                 ((GVAR) + (0x1500 >> 2))  /*                 + ctrl   */
  #define CV_DMP                 ((GVAR) + (0x1600 >> 2))  /*     hex dump             */
  #define CV_USR                 ((GVAR) + (0x1700 >> 2))  /*     USER DEFINED         */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ (GVAR) + 1800...1FFF   SYSTEM               internal buffers and variables         ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ S e c S y s   N E W         1800...19FF ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define SS_WRKEA               ((GVAR) + (0x1800 >> 2))  /* SecSys work area EA     */
  #define SS_WRKMH               ((GVAR) + (0x1808 >> 2))  /*                  MH     */
  #define SS_MPWMH               ((GVAR) + (0x1810 >> 2))  /*        MPW.DAT   MH     */
  #define SS_MPWEA               ((GVAR) + (0x1818 >> 2))  /*                  EA     */
  #define SS_ACTIV               ((GVAR) + (0x1820 >> 2))  /*        activated        */
  #define SS_IS_ON               ((GVAR) + (0x1824 >> 2))  /*        running          */
  #define SS_DUMP                ((GVAR) + (0x1828 >> 2))  /*        dump activities  */
  #define SS_SERVR               ((GVAR) + (0x182C >> 2))  /*        server mode      */
  #define SS_SUPER               ((GVAR) + (0x1830 >> 2))  /*        supervisor mode  */
  #define SS_ABORT               ((GVAR) + (0x1834 >> 2))  /*        login aborted    */
  #define SS_U_PIN               ((GVAR) + (0x1838 >> 2))  /*        PIN local user   */
  #define SS_PWPIN               ((GVAR) + (0x183C >> 2))  /*        NewMP() flag     */
  #define SS_MHMSG               ((GVAR) + (0x1840 >> 2))  /*        messages  MH     */
  #define SS_ACC_R               ((GVAR) + (0x1848 >> 2))  /*        rights access    */
  #define SS_ADM_R               ((GVAR) + (0x184C >> 2))  /*               admin     */
  #define SS_RDA_R               ((GVAR) + (0x1850 >> 2))  /*               read      */
  #define SS_WRA_R               ((GVAR) + (0x1854 >> 2))  /*               write     */
  #define SS_DIRTY               ((GVAR) + (0x1858 >> 2))  /*        dirty (dialogs)  */
  #define SS_LDSTC               ((GVAR) + (0x1860 >> 2))  /*        LD structure     */
  #define SS_PWB01               ((GVAR) + (0x1900 >> 2))  /*        buffer EFld 1    */
  #define SS_PWB02               ((GVAR) + (0x1940 >> 2))  /*               EFld 2    */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ F l a g s                   1C00...1C3F ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define SEC_FLGS               ((GVAR) + (0x1C00 >> 2))  /* SecSys flags             */
  #define RESV_FLG               ((GVAR) + (0x1C04 >> 2))  /* reserved                 */
  #define SYS_FLGS               ((GVAR) + (0x1C08 >> 2))  /* system flags             */
  #define LDR_FLGS               ((GVAR) + (0x1C0C >> 2))  /* loader flags             */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ V a r i a b l e s           1C40...1FBF ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ file list   ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define FLS_MH                 ((GVAR) + (0x1D00 >> 2))  /* MH     ST-Open file list */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ bitmaps     ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define FLD_STB                ((GVAR) + (0x1D40 >> 2))  /* bitmap structures MH     */
  #define ADR_STB                ((GVAR) + (0x1D48 >> 2))  /*                   EA     */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ spinbuttons ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define SPN_EA                 ((GVAR) + (0x1D80 >> 2))  /* MemEA from LD            */
  #define SPN_MH                 ((GVAR) + (0x1D88 >> 2))  /* MMoff from LD            */
  #define SPN_FLAG               ((GVAR) + (0x1D90 >> 2))  /* block SPBM_CHANGE loops  */
  #define SPN_ARRAY_CNT          ((GVAR) + (0x1D94 >> 2))  /* array element count      */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ notebooks   ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define NBK_MH_BOOK            ((GVAR) + (0x1DC0 >> 2))  /* MH   notebook field      */
  #define NBK_MH_LANG            ((GVAR) + (0x1DC8 >> 2))  /*      language (FFFFFF12) */
  #define NBK_HWND_DLG           ((GVAR) + (0x1DD0 >> 2))  /* HWND dialog              */
  #define NBK_HWND_BOOK          ((GVAR) + (0x1DD8 >> 2))  /*      notebook control    */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ S y s t e m   A r e a       1FC0...1FFF ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ FDacc()            ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define FIA_ERR                ((GVAR) + (0x1FCC >> 2))  /* FDacc() error return     */
  #define FIA_ADDRESS            ((GVAR) + (0x1FD0 >> 2))  /* used as empty string     */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ date + time        ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define SYS_TIME               ((GVAR) + (0x1FF0 >> 2))  /* HMSh (in proper order)   */
  #define SYS_DATE               ((GVAR) + (0x1FF4 >> 2))  /* DMY                      */
  #define SYS_T_ZONE             ((GVAR) + (0x1FF8 >> 2))  /* diff. to GMT (minutes)   */
  #define SYS_WK_DAY             ((GVAR) + (0x1FFC >> 2))  /* day in week  (Mo...Su)   */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³                              R U N T I M E   A R E A                               ³Û
  ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
  ³ (GVAR) + 2000...2FFC  these 1024 doublewords are reserved for your application. It ³Û
  ³                       is strongly recommended to create a separate header for each ³Û
  ³                       application. Please use the style introduced in this file to ³Û
  ³                       keep your headers readable for other programmers. THANK YOU! ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º s y s t e m   s t r i n g s     00...3F                                            ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define STR_RES_00             0x0000                    /* reserved                 */
  #define STR_PGM_FULL           0x0001                    /* real path to program DIR */
  #define STR_PGM_PATH           0x0002                    /* mutilated path (w/o DRV) */
  #define STR_RES_03             0x0003                    /* reserved                 */
  #define STR_THREAD             0x0004                    /* thread - string to pass  */
  #define STR_OLH_TITLE          0x0005                    /* OLH    - title buffer    */
  #define STR_OLH_TEXT           0x0006                    /*        - text  buffer    */
  #define STR_RES_07             0x0007                    /* reserved                 */
  #define STR_RES_08             0x0008                    /* reserved                 */
  #define STR_RES_09             0x0009                    /* reserved                 */
  #define STR_RES_0A             0x000A                    /* reserved                 */
  #define STR_RES_0B             0x000B                    /* reserved                 */
  #define STR_RES_0C             0x000C                    /* reserved                 */
  #define STR_RES_0D             0x000D                    /* reserved                 */
  #define STR_RES_0E             0x000E                    /* reserved                 */
  #define STR_RES_0F             0x000F                    /* reserved                 */
  #define STR_FLS_SELECT         0x0010                    /* FLIST - select. filename */
  #define STR_FLS_PATTERN        0x0011                    /* FOPEN - pattern          */
  #define STR_RES_12             0x0012                    /* reserved                 */
  #define STR_RES_13             0x0013                    /* reserved                 */
  #define STR_RES_14             0x0014                    /* reserved                 */
  #define STR_RES_15             0x0015                    /* reserved                 */
  #define STR_RES_16             0x0016                    /* reserved                 */
  #define STR_RES_17             0x0017                    /* reserved                 */
  #define STR_RES_18             0x0018                    /* reserved                 */
  #define STR_RES_19             0x0019                    /* reserved                 */
  #define STR_RES_1A             0x001A                    /* reserved                 */
  #define STR_RES_1B             0x001B                    /* reserved                 */
  #define STR_RES_1C             0x001C                    /* reserved                 */
  #define STR_RES_1D             0x001D                    /* reserved                 */
  #define STR_RES_1E             0x001E                    /* reserved                 */
  #define STR_RES_1F             0x001F                    /* reserved                 */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ l a n g u a g e s   O L H       20...2F ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define STR_LANG0              0x0020                    /* languages 0 ENGLISH      */
  #define STR_LANG1              0x0021                    /*           1 DEUTSCH      */
  #define STR_LANG2              0x0022                    /*           2              */
  #define STR_LANG3              0x0023                    /*           3              */
  #define STR_LANG4              0x0024                    /*           4              */
  #define STR_LANG5              0x0025                    /*           5              */
  #define STR_LANG6              0x0026                    /*           6              */
  #define STR_LANG7              0x0027                    /*           7              */
  #define STR_LANG8              0x0028                    /*           8              */
  #define STR_LANG9              0x0029                    /*           9              */
  #define STR_LANGA              0x002A                    /*           A              */
  #define STR_LANGB              0x002B                    /*           B              */
  #define STR_LANGC              0x002C                    /*           C              */
  #define STR_LANGD              0x002D                    /*           D              */
  #define STR_LANGE              0x002E                    /*           E              */
  #define STR_LANGF              0x002F                    /*           F              */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ r e s e r v e d                 30...3F ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define STR_RES_30             0x0030                    /* reserved                 */
  #define STR_RES_31             0x0031                    /* reserved                 */
  #define STR_RES_32             0x0032                    /* reserved                 */
  #define STR_RES_33             0x0033                    /* reserved                 */
  #define STR_RES_34             0x0034                    /* reserved                 */
  #define STR_RES_35             0x0035                    /* reserved                 */
  #define STR_RES_36             0x0036                    /* reserved                 */
  #define STR_RES_37             0x0037                    /* reserved                 */
  #define STR_RES_38             0x0038                    /* reserved                 */
  #define STR_RES_39             0x0039                    /* reserved                 */
  #define STR_RES_3A             0x003A                    /* reserved                 */
  #define STR_RES_3B             0x003B                    /* reserved                 */
  #define STR_RES_3C             0x003C                    /* reserved                 */
  #define STR_RES_3D             0x003D                    /* reserved                 */
  #define STR_RES_3E             0x003E                    /* reserved                 */
  #define STR_RES_3F             0x003F                    /* reserved                 */
  /*
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
#endif
