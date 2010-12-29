  /*
    Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display the file properly!
  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ                                S T R U C T U R E S                                 บÛ
  บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
  บ                          *** (C) ST-Open 1979 - 2010 ***                           บÛ
  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        บÛ
  บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
  บ You may copy and distribute this file as often as you want, but recipients are not บÛ
  บ allowed to pay anything for any copy of this file or its content. It isn't allowed บÛ
  บ to remove parts of this file or add third party content. It isn't allowed to abuse บÛ
  บ the copyrighted content or introduced techniques for commercial purposes. Whatever บÛ
  บ is derived from this file and its content must be freely available without charge. บÛ
  บ You are free to modify the content of this file if you want to. However, derivates บÛ
  บ of the content of this file or parts of it *still* are subject to the terms of the บÛ
  บ FT4FP license. Recipients neither are allowed to pay anything for the original nor บÛ
  บ for altered or derived replica.                                                    บÛ
  บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
  บ       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        บÛ
  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ                                    L E G E N D                                     บÛ
  บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
  บ <     parameter   set by called function                                           บÛ
  บ >     required    required input                                                   บÛ
  บ x     internal    read only - do not alter!                                        บÛ
  บ X     obsolete    obsolete parameters are ignored by default                       บÛ
  บ [opt] optional    if not used, optional parameters -must- be set to zero           บÛ
  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
#ifndef __ystc__
#define __ystc__
  /*
  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ                           C O R E   S T R U C T U R E S                            บÛ
  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
  ณ Files                       size = 0x30 ณÛ
  ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  typedef struct    _FH{
                        DQ    WINfh;     /* <  00       Windows file handle            */
                        DQ    Fsize;     /* <> 08 [opt] filesize                       */
                        VOID *Mbase;     /*  > 10       address memory block           */
                        DQ    Moffs;     /*  > 18 [opt] mem  offset                    */
                        DQ    Foffs;     /*  > 20 [opt] file offset                    */
                        DQ    Fstat;     /* <  28       file status                    */
                       } FH;             /* struct size 0x30                           */
  typedef FH *PFH;
  /*
  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
  ณ Loader                      size = 0x48 ณÛ
  ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  typedef struct    _LD{
                        VOID *MemEA;     /* <  00       address memory block           */
                        DQ    MemSz;     /* <> 08 [opt] size requested / allocated     */
                        DD    FldNr;     /*  > 10       field number                   */
                        DD    LdCtl;     /*  > 14       LDR_* control flags            */
                        DQ    MemHd;     /* <  18       MemHandle (address in LDT)     */
                        VOID *FileN;     /*  > 20 [opt] address filename               */
                        DQ    Moffs;     /*  > 28 [opt] offset in memory               */
                        DQ    Foffs;     /*  > 30 [opt]           file                 */
                        DQ    AmtBy;     /*  > 38 [opt] amount bytes to copy           */
                        VOID *FileH;     /*  > 40 [opt] FH (LDR_LEAVE_OPEN, only)      */
                       } LD;             /* struct size 0x48                           */
  typedef LD *PLD;
  /*
  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ                        L I B R A R Y   S T R U C T U R E S                         บÛ
  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
  ณ bitmaps                   size = 0x0100 ณÛ
  ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  typedef struct   _STB{
                        DD    BMPw;      /*  > 00 bitmap width                         */
                        DD    BMPh;      /*  > 04        height                        */
                        DQ    BMPea;     /*  > 08        EA mem block (begins at 0x02) */
                        DQ    BMPr;      /*  > 10        ratio w:h                     */
                        DD    BWx;       /*  > 18 window x (left)                      */
                        DD    BWy;       /* <  1C        y (bottom)                    */
                        DD    BWw;       /* <  20        width                         */
                        DD    BWh;       /* <  24        height                        */
                        DQ    BWhwnd;    /*  > 28        HWND                          */
                        DQ    BWhps;     /* <  30        HPS                           */
                        DQ    BWhbmp;    /* <  38        HBITMAP                       */
                        DB    file[192]; /*  > 40 string filename (192 byte)           */
                       } STB;            /* struct size  0x0100                        */
  typedef STB *PSTB;
  /*
  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
  ณ Spinbuttons                 size = 0x40 ณÛ
  ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  typedef struct   _SPN{
                        DQ    Shwnd;     /*  x 00       HWND spin                      */
                        DQ    Min;       /*  > 08       lower limit                    */
                        DQ    Max;       /*  > 10       upper limit                    */
                        DQ    Cur;       /* <> 18       current value or entry         */
                        DD    ResID;     /*  > 20       resource ID spinbutton         */
                        DB    Type;      /*  > 24       spinbutton type                */
                        DB    Flag;      /*  > 25       busy flag                      */
                        DB    Idig;      /*  > 26       integer digits or format       */
                        DB    Fdig;      /*  > 27       pseudo floating point digits   */
                        DQ    Field;     /*  > 28 [opt] MemHandle                      */
                        DD    SubFd;     /*  > 30 [opt] subfield number                */
                        DD    AccCt;     /*  x 34       internal accelerator counter   */
                        DQ    AccVa;     /*  x 38                            current   */
                       } SPN;            /* struct size 0x40                           */
  typedef SPN *PSPN;
  /*
  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
  ณ Commands             ณÛ
  ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define SPN_SET             0x08       /*    04 set new value                        */
  #define SPN_GETCUR          0x07       /*    07 get current value                    */
  #define SPN_GETID           0x06       /*    06 get resource ID from entry           */
  #define SPN_GETSTRUC        0x05       /*    05 get structure address                */
  #define SPN_QUERY           0x04       /*    03 query current value                  */
  #define SPN_END             0x03       /*    08 arrow released                       */
  #define SPN_DN              0x02       /*    02 spin one unit down                   */
  #define SPN_UP              0x01       /*    01 spin one unit up                     */
  #define SPN_INIT            0x00       /*    00 initialize spinbutton (incl. set)    */
  /*
  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
  ณ Spinbutton Types     ณÛ
  ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
  #define SPN_STR_FIELD       0x08       /*    08           field                      */
  #define SPN_DATE            0x07       /*    07 formatted date                       */
  #define SPN_TIME            0x06       /*    06           time                       */
  #define SPN_HEX64           0x05       /*    05           64 bit hex                 */
  #define SPN_HEX32           0x04       /*    04           32 bit hex                 */
  #define SPN_HEX16           0x03       /*    03           16 bit hex                 */
  #define SPN_HEX08           0x02       /*    02            8 bit hex                 */
  #define SPN_DEC64           0x01       /*    01           64 bit decimal             */
  #define SPN_DEC32           0x00       /*    00           32 bit decimal             */
  /*
  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
  */
#endif
