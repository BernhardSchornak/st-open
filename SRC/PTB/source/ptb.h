  /*
    Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display the file properly!
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  �                          S Y S T E M   V A R I A B L E S                           裁
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
  */
  #ifndef __ptb__
  #define __ptb__
  /*
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  � 0200 - 0FFF   USER PERMANENT              (stored on exit)                         額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  */
  .equ M_DUMP, 0x0200                         /* current number MemDmp                 */
  .equ R_DUMP, 0x0204                         /*                RegDmp                 */
  .equ S_DUMP, 0x0208                         /*                StkDmp                 */
  .equ CA_SH1, 0x020C                         /* calc    shift amount OP1              */
  .equ CA_SH2, 0x0210                         /*                      OP2              */
  .equ CA_DS1, 0x0214                         /*         dec   signed OP1              */
  .equ CA_DS2, 0x0218                         /*                      OP2              */
  .equ CA_OP1, 0x0220                         /*         content      OP1              */
  .equ CA_OP2, 0x0228                         /*                      OP2              */
  .equ CA_RDX, 0x0230                         /*         RDX          after mul or div */
  .equ CA_ST1, 0x0400                         /*         storage      OP1              */
  .equ CA_ST2, 0x0600                         /*                      OP2              */
  /*
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  � 2000 - 2FFF   USER TEMPORARY              (lost on exit)                           額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  */
  .equ HW_EDT, 0x2000                         /* HWND MLE (client area)                */
  .equ MH_OBF, 0x2008                         /* MH   output buffer                    */
  .equ EA_OBF, 0x2010                         /* EA                                    */
  /*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  */
  #endif
