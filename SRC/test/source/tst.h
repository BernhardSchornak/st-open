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
  #ifndef __tst__
  #define __tst__
  /*
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  � 0200 - 0FFF   USER PERMANENT              (stored on exit)                         額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  */
  .equ LD_S00, 0x0200                         /* LD structure source 00                */
  .equ LD_S01, 0x0280                         /*                     01                */
  .equ LD_S22, 0x0300                         /*                     02                */
  .equ LD_S03, 0x0380                         /*                     03                */
  .equ LD_S04, 0x0400                         /*                     04                */
  .equ LD_S05, 0x0480                         /*                     05                */
  .equ LD_S06, 0x0500                         /*                     06                */
  .equ LD_S07, 0x0580                         /*                     07                */
  .equ LD_T00, 0x0800                         /*              target 00                */
  .equ LD_T01, 0x0880                         /*                     01                */
  .equ LD_T22, 0x0900                         /*                     02                */
  .equ LD_T03, 0x0980                         /*                     03                */
  .equ LD_T04, 0x0A00                         /*                     04                */
  .equ LD_T05, 0x0A80                         /*                     05                */
  .equ LD_T06, 0x0B00                         /*                     06                */
  .equ LD_T07, 0x0B80                         /*                     07                */
  /*
  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
  � 2000 - 2FFF   USER TEMPORARY              (lost on exit)                           額
  青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  */
  .equ HW_EDT, 0x2000                         /* HWND MLE (client area)                */
  .equ EA_OBF, 0x2008                         /* MH   output buffer                    */
  .equ EA_RBF, 0x2010                         /* MH   result buffer                    */
  .equ MH_RBF, 0x2018                         /* EA                                    */
  .equ EA_TTX, 0x2020                         /* MH   test   text                      */
  .equ MH_TTX, 0x2028                         /* EA                                    */
  /*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
    栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
  */
  #endif
