  /*
    ==================================================================================
                     D E B U G G I N G   T O O L S   (C) ST-Open 2011
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
  #ifndef __ptb__
  #define __ptb__
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    0200 - 0FFF   USER PERMANENT              (stored on exit)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ SRC_CT, 0x0200                         /* select source  count                  */
  .equ SRC_SL, 0x0204                         /*                selection              */
  .equ R_DUMP, 0x0208                         /* offset         RegDmp                 */
  .equ MD_CNT, 0x020C                         /* memory dumps   count                  */
  .equ MD_SEL, 0x0210                         /*                selection              */
  .equ SD_CNT, 0x0214                         /* stack dumps    count                  */
  .equ SD_SEL, 0x0218                         /*                selection              */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    03C0 - 07FF   CALCULATOR
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ CA_SH1, 0x03D0                         /* calc    shift amount OP1              */
  .equ CA_SH2, 0x03D4                         /*                      OP2              */
  .equ CA_DS1, 0x03D8                         /*         dec   signed OP1              */
  .equ CA_DS2, 0x03DC                         /*                      OP2              */
  .equ CA_OP1, 0x03E0                         /*         content      OP1              */
  .equ CA_OP2, 0x03E8                         /*                      OP2              */
  .equ CA_RDX, 0x03F0                         /*         RDX          after mul or div */
  .equ CA_ST1, 0x0400                         /*         storage      OP1              */
  .equ CA_ST2, 0x0600                         /*                      OP2              */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    2000 - 2FFF   USER TEMPORARY              (lost on exit)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ EA_OBF, 0x2000                         /* output buffer  EA                     */
  .equ MH_OBF, 0x2008                         /*                MH                     */
  .equ EA_SCF, 0x2010                         /* source folders EA                     */
  .equ MH_SCF, 0x2018                         /*                MH                     */
  .equ EA_MDP, 0x2020                         /* memory dumps   EA                     */
  .equ MH_MDP, 0x2028                         /*                MH                     */
  .equ EA_SDP, 0x2030                         /* stack dumps    EA                     */
  .equ MH_SDP, 0x2038                         /*                MH                     */
  .equ HW_EDT, 0x2100                         /* MLE            HWND (client area)     */
  .equ BUFFER, 0x2C00                         /* common buffer  0x0400 byte            */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
  #endif
