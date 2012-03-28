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
  #ifndef __tst__
  #define __tst__
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    0200 - 0FFF   USER PERMANENT              (stored on exit)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ LD_S00, 0x0200                         /* LD structure source 00             */
  .equ LD_S01, 0x0280                         /*                     01             */
  .equ LD_S22, 0x0300                         /*                     02             */
  .equ LD_S03, 0x0380                         /*                     03             */
  .equ LD_S04, 0x0400                         /*                     04             */
  .equ LD_S05, 0x0480                         /*                     05             */
  .equ LD_S06, 0x0500                         /*                     06             */
  .equ LD_S07, 0x0580                         /*                     07             */
  .equ LD_T00, 0x0800                         /*              target 00             */
  .equ LD_T01, 0x0880                         /*                     01             */
  .equ LD_T22, 0x0900                         /*                     02             */
  .equ LD_T03, 0x0980                         /*                     03             */
  .equ LD_T04, 0x0A00                         /*                     04             */
  .equ LD_T05, 0x0A80                         /*                     05             */
  .equ LD_T06, 0x0B00                         /*                     06             */
  .equ LD_T07, 0x0B80                         /*                     07             */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    8000 - FFFF   USER TEMPORARY              (lost on exit)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ HW_EDT, 0x8000                         /* HWND MLE (client area)             */
  .equ EA_OBF, 0x8008                         /* MH   output buffer                 */
  .equ EA_RBF, 0x8010                         /* MH   result buffer                 */
  .equ MH_RBF, 0x8018                         /* EA                                 */
  .equ EA_TTX, 0x8020                         /* MH   test   text                   */
  .equ MH_TTX, 0x8028                         /* EA                                 */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    CONSTANTS FOR TEST LOOPS
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ TST_IN, 0x0040                         /* size input (array or buffer)       */
  .equ TSTOUT, 0x0040                         /*      output buffer                 */
  .equ TBUF_S, 0x0400                         /*      test buffers                  */
  .equ TFIL_S, 0x3000                         /*      dump file                     */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #endif
