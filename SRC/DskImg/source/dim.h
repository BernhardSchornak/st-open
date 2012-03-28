  /*
    ==================================================================================
                              D s k I m g   (C) ST-Open 2012
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
  #ifndef __dim__
  #define __dim__
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    0200 - 1FFF   USER PERMANENT              (stored on exit)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ PGM_FL, 0x0200                         /* program flags                      */
       .equ FLG_07, 0x0080                    /*                                    */
       .equ FLG_06, 0x0040                    /*                                    */
       .equ FLG_05, 0x0020                    /*                                    */
       .equ FLG_04, 0x0010                    /*                                    */
       .equ FLG_03, 0x0008                    /*                                    */
       .equ FLG_02, 0x0004                    /*                                    */
       .equ FLG_TS, 0x0002                    /*               target selected      */
       .equ FLG_SS, 0x0001                    /*               source selected      */
  .equ DRV_CT, 0x0204                         /* drive count   found devices        */
  .equ DRV_SL, 0x0208                         /* target        number or FFFFFFFF   */
  .equ SRC_SZ, 0x0210                         /* source        size                 */
  .equ TGT_SZ, 0x0218                         /* target        capacity             */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    1500 - 17FF   LD glue
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ GLUE_F, 0x1500                         /* glue          directory            */
  .equ GLUECT, 0x1778                         /*               source file count    */
  .equ GLBFEA, 0x1780                         /*               buff. MemEA          */
  .equ GLBFSZ, 0x1788                         /*                     size           */
  .equ GLBFMH, 0x1798                         /*                     MemHd          */
  .equ GLUEEA, 0x17C0                         /*               files MemEA          */
  .equ GLUEMH, 0x17D8                         /*                     MemHd          */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    1800 - 1A3F   qualified source name
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ SOURCE, 0x1800                         /* source        qualified name       */
  .equ TARGET, 0x1AE0                         /* target        qualified name 1st   */
  .equ TGTDOS, 0x1AE4                         /* target        qualified name 1st   */
  .equ TARG_1, 0x1AF0                         /*                              2nd   */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    1A40 - 1FFF   structures & names
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ DTYPES, 0x1B00                         /* drive types   enumeration (max 19) */
  .equ EA_IMG, 0x1D80                         /* image         EA block             */
  .equ MH_IMG, 0x1D98                         /*               MH                   */
  .equ EA_DRP, 0x1DC0                         /* DRP           EA drive parameters  */
  .equ MH_DRP, 0x1DD8                         /*               MH                   */
  .equ LDRV_N, 0x1E00                         /* logical drive name                 */
  .equ LDRV_I, 0x1E04                         /*               IP                   */
  .equ PDRV_N, 0x1E10                         /* phys. drive   name                 */
  .equ PDRV_I, 0x1E21                         /*               IP                   */
  .equ BACKUP, 0x1E40                         /* backup        name                 */
  .equ BCK_IP, 0x1E4A                         /*               IP                   */
  .equ BCK_NR, 0x1E5C                         /*               number               */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    8000 - 8FFF   USER TEMPORARY              (lost on exit)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ BUFFER, 0x8400                         /* buffer        0x0C00 byte          */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #endif
