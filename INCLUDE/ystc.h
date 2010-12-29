  /*
    Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display the file properly!
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  �                                S T R U C T U R E S                                 裁
  債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
  �                          *** (C) ST-Open 1979 - 2010 ***                           裁
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
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  �                                    L E G E N D                                     裁
  債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
  � <     parameter   set by called function                                           裁
  � >     required    required input                                                   裁
  � x     internal    read only - do not alter!                                        裁
  � X     obsolete    obsolete parameters are ignored by default                       裁
  � [opt] optional    if not used, optional parameters -must- be set to zero           裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  */
#ifndef __ystc__
#define __ystc__
  /*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  �                           C O R E   S T R U C T U R E S                            裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
  � Files                       size = 0x30 額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
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
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
  � Loader                      size = 0x48 額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
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
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  �                        L I B R A R Y   S T R U C T U R E S                         裁
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
  � bitmaps                   size = 0x0100 額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
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
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
  � Spinbuttons                 size = 0x40 額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
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
  敖陳陳陳陳陳陳陳陳陳陳朕
  � Commands             額
  青陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩�
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
  敖陳陳陳陳陳陳陳陳陳陳朕
  � Spinbutton Types     額
  青陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩�
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
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  */
#endif
