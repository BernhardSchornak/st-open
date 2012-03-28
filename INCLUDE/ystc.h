  /*
    ==================================================================================
                      S T R U C T U R E S    (C) ST-Open 1979 - 2012
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
                                       L E G E N D
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    <     parameter   set by called function
    >     required    required input
    x     internal    read only - do not alter!
    X     obsolete    obsolete parameters are ignored by default
    [opt] optional    if not used, optional parameters -must- be set to zero
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
#ifndef __ystc__
#define __ystc__
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                              C O R E    S T R U C T U R E S
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Files                     size = 0x30
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  typedef struct    _FH{
                        DQ    WINfh;     /* <  00       Windows file handle            */
                        DQ    Fsize;     /* <> 08 [opt] filesize                       */
                        VOID *Mbase;     /*  > 10       address memory block           */
                        DQ    Moffs;     /*  > 18 [opt] mem  offset                    */
                        DQ    Foffs;     /*  > 20 [opt] file offset                    */
                        DQ    Fstat;     /* <  28       file status                    */
                       } FH;
  typedef FH *PFH;
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Loader                    size = 0x48
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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
                       } LD;
  typedef LD *PLD;
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                          L O W   L E V E L   S T R U C T U R E S
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    CHS                       size = 0x10
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  typedef struct   _CHS{
                        DQ cylinder
                        DD head
                        DD sector
                       };
  typedef CHS *PCHS;
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                            L I B R A R Y   S T R U C T U R E S
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Spinbuttons               size = 0x40
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  typedef struct   _SPN{
                        DQ    Min;       /*  > 00       lower limit                    */
                        DQ    Max;       /*  > 08       upper limit                    */
                        DQ    Cur;       /* <> 10       current value or entry         */
                        DD    Ehwnd;     /*  > 18       HWND entryfield                */
                        DB    EFid;      /*  > 20       ID   entryfield                */
                        DB    UDid;      /*  > 24            up/down control           */
                        DB    Fmh;       /*  > 28       MemHandle for strings          */
                        DB    Type;      /*  > 30       spinbutton type                */
                        DQ    Flags;     /*  > 34                  flags               */
                        DD    TypeD;     /*  > 38 [opt] type data                      */
                        DD    SubFd;     /*  x 3C [opt] subfield number                */
                       } SPN;
  typedef SPN *PSPN;
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~
    Spinbutton Types
    ~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define SPN_DEC32           0x00       /*    00 formatted 32 bit decimal             */
  #define SPN_DEC64           0x01       /*    01           64 bit decimal             */
  #define SPN_HEX08           0x02       /*    02            8 bit hex                 */
  #define SPN_HEX16           0x03       /*    03           16 bit hex                 */
  #define SPN_HEX32           0x04       /*    04           32 bit hex                 */
  #define SPN_HEX64           0x05       /*    05           64 bit hex                 */
  #define SPN_DATE_ISO        0x06       /*    06           date YYYY-MM-DD            */
  #define SPN_DATE_EU         0x07       /*    07                DD.MM.YYYY            */
  #define SPN_TIME_00         0x08       /*    08           time       SS.hh           */
  #define SPN_TIME_01         0x09       /*    09           time    MM:SS.hh           */
  #define SPN_TIME_02         0x0A       /*    0A           time HH:MM:SS.hh           */
  #define SPN_TIME_03         0x0B       /*    0B           time HH:MM:SS              */
  #define SPN_TIME_04         0x0C       /*    0C           time HH:MM                 */
  #define SPN_STRINGS         0x0D       /*    0D as is...  data field array           */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~
    Spinbutton Commands
    ~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define SPN_INIT            0x00       /*    00 initialize spinbutton (incl. set)    */
  #define SPN_NOTIFY          0x01       /*    01 process WM_NOTIFY  message           */
  #define SPN_EDITED          0x02       /*    02         WM_COMMAND message           */
  #define SPN_SET             0x03       /*    08 set current content                  */
  #define SPN_QUERY           0x04       /*    03 get current content                  */
  #define SPN_GETSTRUC        0x05       /*    05 copy 64 byte block to buffer         */
  #define SPN_SETSTRUC        0x06       /*    06      buffer to 64 byte block         */
  #define SPN_SETTYPE         0x07       /*    07 set type, tflags, tdata              */
  #define SPN_SETLIMITS       0x08       /*    08     min and max                      */
  #define SPN_SETTFLAGS       0x09       /*    09     type flags                       */
  #define SPN_SETMH           0x0A       /*    0A     MemHandle (field, only)          */
  #define SPN_SETSUB          0x0B       /*    0B     subfield  (type data)            */
  #define SPN_STRAIGHT        0x0C       /*    0C     step in -1 or +1 steps           */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Entryfields               size = 0x80
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  typedef struct   _EFD{
                        DQ    EfdHw;     /*  > 00 EFld   HWND (set by STefd)           */
                        DD    EfdId;     /*  > 08        ID                            */
                        DD    Etype;     /*  > 0C Type   (0x00...0x0F)                 */
                        DD    Tflgs;     /*  > 10        flags                         */
                        DD    Tdata;     /*  > 14        data                          */
                        DD    MaxCh;     /* <  18 EFld   maximum chars (strings, only) */
                        DD    Eflgs;     /* <  1C        flags (do not touch!)         */
                        DD    Min;       /* <  20        lower limit (0...5, 7...D)    */
                        DQ    Max;       /*  > 28        upper limit (0...5, 7...D)    */
                        DO    Cur;       /* <  30        current     (0...D)           */
                        DB    Cont[64];  /*  > 40 string content     (64 byte)         */
                       } EFD;            /* struct size  0x80                          */
  typedef EFD *PEFD;
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~
    Entryfield Types
    ~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define EF_DEC32            0x00       /*    00 formatted 32 bit decimal             */
  #define EF_DEC64            0x01       /*    01           64 bit decimal             */
  #define EF_HEX08            0x02       /*    02            8 bit hexadecimal         */
  #define EF_HEX16            0x03       /*    03           16 bit hexadecimal         */
  #define EF_HEX32            0x04       /*    04           32 bit hexadecimal         */
  #define EF_HEX64            0x05       /*    05           64 bit hexadecimal         */
  #define EF_HX128            0x06       /*    06          128 bit hexadecimal         */
  #define EF_DATEI            0x07       /*    07 date YYYY-MM-DD                      */
  #define EF_DATEE            0x08       /*    08      DD.MM.YYYY                      */
  #define EF_TIME0            0x09       /*    09 time       SS.hh                     */
  #define EF_TIME1            0x0A       /*    0A         MM:SS.hh                     */
  #define EF_TIME2            0x0B       /*    0B      HH:MM:SS.hh                     */
  #define EF_TIME3            0x0C       /*    0C      HH:MM:SS                        */
  #define EF_TIME4            0x0D       /*    0D      HH:MM                           */
  #define EF_PLAIN            0x0E       /*    0E strings plain                        */
  #define EF_FIELD            0x0F       /*    0F         datafield                    */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~
    Entryfield Commands
    ~~~~~~~~~~~~~~~~~~~~~~~
  */
  #define EFD_INIT            0x00       /*    00 initialise (retrieves EFld HWND)     */
  #define EFD_SET             0x01       /*    01 set content                          */
  #define EFD_GET             0x02       /*    02 get content                          */
  #define EFD_RDSTRCT         0x03       /*    03 copy 128 byte block to buffer        */
  #define EFD_WRSTRCT         0x04       /*    04      buffer to 128 byte block        */
  #define EFD_RESET           0x05       /*    05 reset (clear) content                */
  #define EFD_MESSAGE         0x06       /*    06 handle WM_COMMAND messages           */
  #define EFD_SETTYPE         0x07       /*    07 set type, tflags, tdata, max chars   */
  #define EFD_SETMH           0x08       /*    08     MemHandle (fields, only)         */
  #define EFD_SETMIN          0x09       /*    09     minimum (lower limit)            */
  #define EFD_SETMAX          0x0A       /*    0A     maximum (upper limit)            */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
#endif
