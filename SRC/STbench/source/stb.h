  /*
    ==================================================================================
                       S T b e n c h ( m a r k )   (C) ST-Open 2012
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
  #ifndef __stbench__
  #define __stbench__
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    0200 - 0FFF   USER PERMANENT              (stored on exit)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ RES_NR, 0x0200                         /* number  current result block         */
  .equ CORE_C, 0x0204                         /*         cores                        */
  .equ PSPEED, 0x0208                         /* freq    probed frequency             */
  .equ AVX_AV, 0x020C                         /* flag    AVX available                */
  .equ SEL_01, 0x0240                         /* comp    number testee 1              */
  .equ SEL_02, 0x0244                         /*                       2              */
  .equ DO_GPR, 0x0280                         /* settgs  do GPR tests (always done)   */
  .equ DO_XMM, 0x0284                         /*            SSE       (always done)   */
  .equ DO_YMM, 0x0288                         /*            AVX       (if present)    */
  .equ DO_MTT, 0x028C                         /*            multicore (if PCOUNT > 2) */
  .equ TMP_GP, 0x0290                         /* temp    copy of DO_GPR               */
  .equ TMP_XM, 0x0294                         /*                 DO_SSE               */
  .equ TMP_YM, 0x0298                         /*                 DO_AVX               */
  .equ TMP_MT, 0x029C                         /*                 DO_MTT               */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    8000 - FFFF   USER TEMPORARY              (lost on exit)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ EA_RES, 0x8000                         /* EA      results field                */
  .equ RUN_00, 0x8008                         /*                 current block        */
  .equ EA_SRC, 0x8010                         /*         source  (9 MB RAM)           */
  .equ EA_TGT, 0x8018                         /*         target  (9 MB RAM)           */
  .equ CMP_01, 0x8020                         /*         compare block 1              */
  .equ CMP_02, 0x8028                         /*                       2              */
  .equ EA_MLE, 0x8030                         /*         MLE buffer                   */
  .equ MH_RES, 0x8040                         /* MH      results field                */
  .equ HW_EDT, 0x8080                         /* HWND    MLE                          */
  .equ THRD_C, 0x8088                         /* amount  threads                      */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    8300 - 87FF   THREAD DATA
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ T0_HND, 0x8300                         /* thread  handles (16 * THANDLE)       */
  .equ T0_TID, 0x8380                         /*         IDs     (16 * TID)           */
  .equ T0_CNT, 0x8400                         /*         counter (1 cache line, each) */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    0000 - 13FF   RESULT BLOCK DEFINITIONS    (stored in field 00000001)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ BEST_C, 0x0C00                         /* results best clocks                  */
  .equ BEST_B, 0x0D80                         /*              byte per clock          */
  .equ AV_INT, 0x0F00                         /* average GPR                          */
  .equ AV_SSE, 0x0F04                         /*         SSE                          */
  .equ AV_AVX, 0x0F08                         /*         AVX                          */
  .equ AV_TOT, 0x0F0C                         /*         total                        */
  .equ MC_RES, 0x0F10                         /* multi-c best    (sum)                */
  .equ MC_AVG, 0x0F14                         /*         average (sum)                */
  .equ MULT_A, 0x1000                         /*         best    (per core)           */
  .equ MULT_B, 0x1080                         /*         average (per core)           */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    1200 - 12A7   DISPLAY STRINGS
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ VND_S0, 0x1200                         /* DO      processor string 0           */
  .equ VND_S1, 0x1210                         /* DO      (padded with     1           */
  .equ VND_S2, 0x1220                         /* DO       blanks)         2           */
  .equ TERM_0, 0x1230                         /* DO      trailing zeroes              */
  .equ VND_00, 0x1240                         /* DD      vendor    string 0           */
  .equ VND_01, 0x1244                         /* DD                       1           */
  .equ VND_02, 0x1248                         /* DD                       2           */
  .equ VND_03, 0x124C                         /* DD      trailing zeroes              */
  .equ P_FAMI, 0x1250                         /* DD      processor family             */
  .equ P_MODL, 0x1254                         /* DD                model              */
  .equ P_STEP, 0x1258                         /* DD                stepping           */
  .equ PCOUNT, 0x125C                         /* DD                core count         */
  .equ P_FREQ, 0x1260                         /* DO                frequency          */
  .equ L1_SKB, 0x1270                         /* DQ      L1 size in KB                */
  .equ L1_CLS, 0x1278                         /* DD         cache line size           */
  .equ L2_SKB, 0x1280                         /* DQ      L2 size in KB                */
  .equ L2_CLS, 0x1288                         /* DD         cache line size           */
  .equ L3_SKB, 0x1290                         /* DQ      L3 size in KB                */
  .equ L3_CLS, 0x1298                         /* DD         cache line size           */
  .equ LCOUNT, 0x12A0                         /* DD      runs                         */
  .equ TCOUNT, 0x12A4                         /* DD      thread count                 */
  .equ GOTAVX, 0x12A8                         /*         AVX available                */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #endif
