  /*
    Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display the file properly!
  ������������������������������������������������������������������������������������ͻ
  �                          S Y S T E M   V A R I A B L E S                           ��
  ������������������������������������������������������������������������������������ĺ�
  �                          *** (C) ST-Open 1979 - 2010 ***                           ��
  ������������������������������������������������������������������������������������ͼ�
    �������������������������������������������������������������������������������������
  ������������������������������������������������������������������������������������ͻ
  �       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        ��
  ������������������������������������������������������������������������������������ĺ�
  � You may copy and distribute this file as often as you want, but recipients are not ��
  � allowed to pay anything for any copy of this file or its content. It isn't allowed ��
  � to remove parts of this file or add third party content. It isn't allowed to abuse ��
  � the copyrighted content or introduced techniques for commercial purposes. Whatever ��
  � is derived from this file and its content must be freely available without charge. ��
  � You are free to modify the content of this file if you want to. However, derivates ��
  � of the content of this file or parts of it *still* are subject to the terms of the ��
  � FT4FP license. Recipients neither are allowed to pay anything for the original nor ��
  � for altered or derived replica.                                                    ��
  ������������������������������������������������������������������������������������ĺ�
  �       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        ��
  ������������������������������������������������������������������������������������ͼ�
    �������������������������������������������������������������������������������������
  */
  #ifndef __ptb__
  #define __ptb__
  /*
  ������������������������������������������������������������������������������������Ŀ
  � 0200 - 0FFF   USER PERMANENT              (stored on exit)                         ��
  ���������������������������������������������������������������������������������������
    �������������������������������������������������������������������������������������
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
  ������������������������������������������������������������������������������������Ŀ
  � 2000 - 2FFF   USER TEMPORARY              (lost on exit)                           ��
  ���������������������������������������������������������������������������������������
    �������������������������������������������������������������������������������������
  */
  .equ HW_EDT, 0x2000                         /* HWND MLE (client area)                */
  .equ MH_OBF, 0x2008                         /* MH   output buffer                    */
  .equ EA_OBF, 0x2010                         /* EA                                    */
  /*
  ������������������������������������������������������������������������������������ͻ
  ������������������������������������������������������������������������������������ͼ�
    �������������������������������������������������������������������������������������
  */
  #endif
