  /*
    Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display the file properly!
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º                              ST SPECIFIC DEFINITIONS                               ºÛ
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
#ifndef __ydat__
#define __ydat__
#include "ybas.h"
#include "yerr.h"
#include "ystc.h"
#include "yvar.h"
  /*
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º                  G L O B A L   P R O C E S S - V A R I A B L E S                   ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ user switches               ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  DQ    DEBUG;                                            /* 0 = do not allocate TST   */
  DQ    USE_LDF;                                          /* 0 = no loader filelist    */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ system switches             ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  DQ    LDR_AVAIL;                                        /* 0 = loader not available  */
  DQ    MSGLD;                                            /* 0 = enable ErrMgr() msgs  */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ addresses                   ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  VOID *BMM;                                              /* address loader table      */
  VOID *BNR;                                              /*         SysNumerics       */
  DQ   *GVAR;                                             /*         SysNumerics (C)   */
  VOID *BST;                                              /*         SysStrings        */
  VOID *BBF;                                              /*         SysBuffer         */
  VOID *TST;                                              /*         TST (REGmon())    */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ MemHandles                  ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  DQ    MHSTR;                                            /* MH      system strings    */
  DQ    LDF;                                              /*         loader filelist   */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ debugging tools             ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  DQ    DUMPLINE;                                         /* 1st line in dump          */
  DQ    DUMPCNT;                                          /* MonTST() counter          */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ OnLine-Help mode            ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  DQ    OLH_MODE;                                         /* internal access control   */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ OLH modes      ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define MODE_CODING          0x00000001                 /* write back changed files  */
  #define MODE_USER            0x00000000                 /* disable writing to MLEs   */
  /*
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º                        S Y S T E M   D E F I N I T I O N S                         ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ languages                               ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define LANG_UNKNOWN         0xFFFFFFFF                 /* unknown language          */
  #define LANG_0F              0x0000000F                 /* 16th    :                 */
  #define LANG_0E              0x0000000E                 /* 15th    :  fill these     */
  #define LANG_0D              0x0000000D                 /* 14th    :  empty lines    */
  #define LANG_0C              0x0000000C                 /* 13th    :  with the name  */
  #define LANG_0B              0x0000000B                 /* 12th    :  of your        */
  #define LANG_0A              0x0000000A                 /* 11th    :  mother tongue  */
  #define LANG_09              0x00000009                 /* 10th    :  if you want to */
  #define LANG_08              0x00000008                 /* 9th     :  contribute a   */
  #define LANG_07              0x00000007                 /* 8th     :  translation    */
  #define LANG_06              0x00000006                 /* 7th     :                 */
  #define LANG_05              0x00000005                 /* 6th     :                 */
  #define LANG_04              0x00000004                 /* 5th     :                 */
  #define LANG_03              0x00000003                 /* 4th     :                 */
  #define LANG_02              0x00000002                 /* 3rd     :                 */
  #define LANG_DEUTSCH         0x00000001                 /* 2nd     : German          */
  #define LANG_ENGLISH         0x00000000                 /* default : English         */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ system flags                  1C08[BNR] ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define SYS_RESV_1F          0x80000000                 /* reserved                  */
  #define SYS_RESV_1E          0x40000000                 /* reserved                  */
  #define SYS_RESV_1D          0x20000000                 /* reserved                  */
  #define SYS_RESV_1C          0x10000000                 /* reserved                  */
  #define SYS_RESV_1B          0x08000000                 /* reserved                  */
  #define SYS_RESV_1A          0x04000000                 /* reserved                  */
  #define SYS_RESV_19          0x02000000                 /* reserved                  */
  #define SYS_RESV_18          0x01000000                 /* reserved                  */
  #define SYS_RESV_17          0x00800000                 /* reserved                  */
  #define SYS_RESV_16          0x00400000                 /* reserved                  */
  #define SYS_RESV_15          0x00200000                 /* reserved                  */
  #define SYS_RESV_14          0x00100000                 /* reserved                  */
  #define SYS_RESV_13          0x00080000                 /* reserved                  */
  #define SYS_RESV_12          0x00040000                 /* reserved                  */
  #define SYS_RESV_11          0x00020000                 /* reserved                  */
  #define SYS_RESV_10          0x00010000                 /* reserved                  */
  #define SYS_RESV_0F          0x00008000                 /* reserved                  */
  #define SYS_RESV_0E          0x00004000                 /* reserved                  */
  #define SYS_RESV_0D          0x00002000                 /* reserved                  */
  #define SYS_RESV_0C          0x00001000                 /* reserved                  */
  #define SYS_RESV_0B          0x00000800                 /* reserved                  */
  #define SYS_RESV_0A          0x00000400                 /* reserved                  */
  #define SYS_RESV_09          0x00000200                 /* reserved                  */
  #define SYS_RESV_08          0x00000100                 /* reserved                  */
  #define SYS_RESV_07          0x00000080                 /* reserved                  */
  #define SYS_RESV_06          0x00000040                 /* reserved                  */
  #define SYS_RESV_05          0x00000020                 /* reserved                  */
  #define SYS_RESV_04          0x00000010                 /* reserved                  */
  #define SYS_ST_TERM          0x00000008                 /* SYSTEM  terminating       */
  #define SYS_CHK_ACT          0x00000004                 /* CHECKER update running    */
  #define SYS_LDR_BUSY         0x00000002                 /* LOADER  write in progress */
  #define SYS_DLG_INIT         0x00000001                 /* dialog initialising       */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ loader flags                            ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define LDR_BUSY             0x00008000                 /* loader currently active   */
  #define LDR_CORRUPT          0x00004000                 /* file corrupted            */
  #define LDR_SECSYS           0x00002000                 /* under control of SecSys   */
  #define LDR_ENCRYPT          0x00001000                 /* encrypted data file       */
  #define LDR_DIRTY            0x00000800                 /* write access in progress  */
  #define LDR_0A               0x00000400                 /* reserved                  */
  #define LDR_SYSTEM           0x00000200                 /* file is a system file     */
  #define LDR_UNIQUE           0x00000100                 /* only one instance allowed */
  #define LDR_NO_FIELD         0x00000080                 /* file to load is no field  */
  #define LDR_LFLIST           0x00000040                 /* add to loaded files list  */
  #define LDR_STATIC           0x00000020                 /* time stamp = FFFF FFFF    */
  #define LDR_MEM              0x00000010                 /* allocate w/o fileloading  */
  #define LDR_LEAVE_OPEN       0x00000008                 /* do not close after read   */
  #define LDR_CHANGED          0x00000004                 /* content changed           */
  #define LDR_WRITE            0x00000002                 /* write permission          */
  #define LDR_READ             0x00000001                 /* read  permission          */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define LDR_FILE             0x000000A3                 /* r, w, static, no field    */
  #define LDR_AUTOSAVE         0x000000E3                 /* LDR_FILE + LDR_LFLIST     */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ FDacc() commands                        ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define FDA_ERROR            0x0000000F                 /* triggers UNKNOWN COMMAND  */
  #define FDA_OFFSET           0x0000000E                 /* get entry offset          */
  #define FDA_SUB              0x0000000D                 /* sub value from entry      */
  #define FDA_ADD              0x0000000C                 /* add value to entry        */
  #define FDA_DEC              0x0000000B                 /* decrement entry           */
  #define FDA_INC              0x0000000A                 /* increment entry           */
  #define FDA_COMPARE          0x00000009                 /* compare with pattern      */
  #define FDA_SEARCH           0x00000008                 /* search matching entry     */
  #define FDA_ADDRESS          0x00000007                 /* get entry address         */
  #define FDA_XCHANGE          0x00000006                 /* exchange two entries      */
  #define FDA_MOVE             0x00000005                 /* copy, then delete source  */
  #define FDA_COPY             0x00000004                 /* copy entry 1 -> entry 2   */
  #define FDA_DELETE           0x00000003                 /* delete entry              */
  #define FDA_WRITE            0x00000002                 /* write entry               */
  #define FDA_READ             0x00000001                 /* read entry                */
  #define FDA_TEST             0x00000000                 /* test parameters           */
  /*
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  º                                    S e c S y s                                     ºÛ
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ SecSys                        1C00[BNR] ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define SEC_DESTROY          0x80000000                 /* VIOLATION - DESTROY DATA  */
  #define SEC_HALT             0x40000000                 /*           - HALT MACHINE  */
  #define SEC_WARN2            0x20000000                 /*           - WARNING 2     */
  #define SEC_WARN1            0x10000000                 /*           - WARNING 1     */
  #define SEC_1B               0x08000000                 /* reserved                  */
  #define SEC_1A               0x04000000                 /* reserved                  */
  #define SEC_19               0x02000000                 /* reserved                  */
  #define SEC_18               0x01000000                 /* reserved                  */
  #define SEC_17               0x00800000                 /* reserved                  */
  #define SEC_16               0x00400000                 /* reserved                  */
  #define SEC_15               0x00200000                 /* reserved                  */
  #define SEC_14               0x00100000                 /* reserved                  */
  #define SEC_13               0x00080000                 /* reserved                  */
  #define SEC_DECODE           0x00040000                 /* decode   0 ok   1 error   */
  #define SEC_ENCODE           0x00020000                 /* encode   0 ok   1 error   */
  #define SEC_ACCRIGHT         0x00010000                 /* access right violation    */
  #define SEC_VIRGIN           0x00008000                 /* SecSys very 1st run       */
  #define SEC_SECOND           0x00004000                 /* second entry MasterKey    */
  #define SEC_HIDE             0x00002000                 /* hide txt 0 text 1 hide    */
  #define SEC_0C               0x00001000                 /* reserved                  */
  #define SEC_0B               0x00000800                 /* reserved                  */
  #define SEC_0A               0x00000400                 /* reserved                  */
  #define SEC_UKTABLE          0x00000200                 /* UK table 0 ok   1 failed  */
  #define SEC_UKMEM            0x00000100                 /* UK mem   0 ok   1 failed  */
  #define SEC_MATCH            0x00000080                 /* PIN<->UK 0 ok   1 failed  */
  #define SEC_UKFAIL           0x00000040                 /* UK       0 ok   1 failed  */
  #define SEC_PINFAIL          0x00000020                 /* PIN      0 ok   1 failed  */
  #define SEC_UKABORT          0x00000010                 /* UK dlg   0 ok   1 abort   */
  #define SEC_MKMEM            0x00000008                 /* MK mem   0 ok   1 failed  */
  #define SEC_MK               0x00000004                 /* MK init  0 ok   1 failed  */
  #define SEC_MKFAIL           0x00000002                 /* MK chk   0 ok   1 failed  */
  #define SEC_MKABORT          0x00000001                 /* MK dlg   0 ok   1 abort   */
  /*
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³ SecSys commands                         ³Û
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define SSF_ERR              0x00000010                 /* unknown function          */
  #define SSF_SDN              0x0000000F                 /* shut down SecSys          */
  #define SSF_R02              0x0000000E                 /* reserved                  */
  #define SSF_R01              0x0000000D                 /* reserved                  */
  #define SSF_R00              0x0000000C                 /* reserved                  */
  #define SSF_DMP              0x0000000B                 /* dump activities           */
  #define SSF_SSV              0x0000000A                 /* set to supervisor mode    */
  #define SSF_CKS              0x00000009                 /* start internal check      */
  #define SSF_SRV              0x00000008                 /* set to server mode        */
  #define SSF_DEC              0x00000007                 /* decode data               */
  #define SSF_ENC              0x00000006                 /* encode data               */
  #define SSF_LGO              0x00000005                 /* LogOut                    */
  #define SSF_LGI              0x00000004                 /* LogIn                     */
  #define SSF_RUN              0x00000003                 /* activate SecSys           */
  #define SSF_DEF              0x00000002                 /* set to defaults           */
  #define SSF_CKM              0x00000001                 /* check MasterKey           */
  #define SSF_PRP              0x00000000                 /* prepare SecSys to run     */
  /*
  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
#endif
