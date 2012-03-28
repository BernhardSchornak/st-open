  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                D a t T o o l s   D E F I N I T I O N S    (C)  ST-Open 2012
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
           THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     You may copy and distribute this file as often as you want, but recipients are not
     allowed to pay anything for any copy of this file or its content. It isn't allowed
     to abuse its copyrighted content or introduced techniques for commercial purposes.
     Whatever is derived from this file or its content must be freely available without
     charge.

     You are free to modify the content of this file if you want to. However, derivates
     of the content of this file or parts of it *still* are subject to the terms of the
     FT4FP license. Recipients neither are allowed to pay anything for the original nor
     for altered or derived replica.
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
           FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
#ifndef __hasm__
#define __hasm__
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                       S T A T I C
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    field viewer
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ VW_ENT, 0x0200       /* field viewer    current entry                           */
  .equ VW_SUB, 0x0204       /*                         subfield                        */
  .equ VW_LEN, 0x0208       /*                         length                          */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    standard fields
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ SF_DLG, 0x0210       /* std fields      menus + dialogs                         */
  .equ SF_MSG, 0x0214       /*                 messages                                */
  .equ SF_OLH, 0x0218       /*                 OLH                                     */
  .equ SF_TOP, 0x021C       /*                 topics                                  */
  .equ SF_SPN, 0x0220       /*                 spinbuttons                             */
  .equ SF_EFD, 0x0224       /*                 entryfields                             */
  .equ SF_STR, 0x0228       /*                 system strings                          */
  .equ SF_NUM, 0x022C       /*                        numerics                         */
  .equ SF_FLG, 0x0230       /* create flags
                               =======================================
                               0x00000080       n/a
                               0x00000040       n/a
                               0x00000020       FFFFFF02 (entryfields)
                               0x00000010       FFFFFF01 (spinbuttons)
                               0x00000008       top.dat
                               0x00000004       olh.dat
                               0x00000002       nsm.dat
                               0x00000001       FFFFFF12 (menu + dlgs)
                               =======================================
                            */
  .equ IP_BUF, 0x0234       /* IP               buffer                                 */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    spinbutton editor
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ SPNCUR, 0x0240       /* current spinbutton number                               */
  .equ SPINEA, 0x0244       /*         EA spinbutton block                             */
  .equ SPNBUF, 0x0248       /* EA SPN_BF                                               */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    entryfield editor
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ EFLDEA, 0x0250       /*         EA entryfield block                             */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    program flags
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ PGM_FL, 0x0400       /* program flags   byte 0                                  */
  .equ PGM_F1, 0x0401       /*                 byte 1                                  */
  .equ PGM_F2, 0x0402       /*                 byte 2                                  */
  .equ PGM_F3, 0x0403       /*                 byte 3
                              =========================================================
                               0x80000000      0                     1             
                               0x40000000      0                     1           
                               0x20000000      0                     1              
                               0x10000000      0                     1 
                               0x08000000      0                     1 
                               0x04000000      0                     1 
                               0x02000000      0                     1 
                               0x01000000      0 spin default        1 display update
                               --------------------------------------------------------
                               0x00800000      0                     1 
                               0x00400000      0                     1 
                               0x00200000      0                     1 
                               0x00100000      0                     1 
                               0x00080000      0                     1 
                               0x00040000      0                     1 
                               0x00020000      0                     1 
                               0x00010000      0                     1 
                               --------------------------------------------------------
                               0x00008000      0 missing             1 got number
                               0x00004000      0 missing             1     name
                               0x00002000      0 missing             1     amount
                               0x00001000      0 missing             1     size
                               0x00000800      0 missing             1     type(s)
                               0x00000400      0                     1 
                               0x00000200      0 incomplete          1 created
                               0x00000100      0 do nothing          1 start viewer
                               --------------------------------------------------------
                               0x00000080      0 manage hex          1 dec
                               0x00000040      0 create hex          1 dec
                               0x00000020      0        hex          1 dec
                               0x00000010      0        hex          1 dec
                               0x00000008      0 no external         1 extern present
                               0x00000004      0 no selection        1 field  selected
                               0x00000002      0 no selection        1 source selected
                               0x00000001      0 regular             1 DatTools self
                              =========================================================*/
  .equ DRVMSK, 0x0408       /* drive mask      selected source drives                  */
  .equ EVENTC, 0x0410       /* event count     ...TESTING...                           */
  .equ DSP_UP, 0x0418       /* display flg     updating, disable controls              */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    miscellaneous
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ SL_FLD, 0x0420       /* selected        field    (field number)                 */
  .equ SL_SUB, 0x0424       /*                 subfield                                */
  .equ SL_ENT, 0x0428       /*                 entry                                   */
  .equ CT_SRC, 0x042C       /* count           source folders                          */
  .equ CT_FLD, 0x0430       /*                 fields in current source folder         */
  .equ SELFLD, 0x0434       /* selected        field    (entry number = LBox index)    */
  .equ SELSUB, 0x0438       /*                 subfield                                */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    translation tools
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ MNU_ET, 0x0480       /* selected        menus + dialogs   entry number          */
  .equ HTR_L1, 0x04A0       /*                 OLH               language 1            */
  .equ HTR_L2, 0x04A4       /*                                            2            */
  .equ HTR_ET, 0x04A8       /*                                   help number           */
  .equ TTR_L1, 0x04C0       /*                 TOPICS            language 1            */
  .equ TTR_L2, 0x04C4       /*                                            2            */
  .equ TTR_ET, 0x04C8       /*                                   topic number          */
  .equ MSG_L1, 0x04E0       /*                 SystemMessages    language 1     (sub)  */
  .equ MSG_L2, 0x04E4       /*                                            2     (sub)  */
  .equ MSG_ET, 0x04E8       /*                                   message number (* 4)  */
  .equ SPN_LS, 0x04EC       /*                 SpinButtons       last selection        */
  .equ EFD_LS, 0x04F0       /*                 EntryFields       last selection        */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    expand area
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ XP_LDS, 0x0880       /* expand EA field         --- LD structure ---            */
  .equ XP_FHS, 0x08C0       /*        WINfh            --- FH structure ---            */
  .equ XP_MEM, 0x0900       /* expand temporary storage (header = 256 byte)            */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    filenames
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ FN_TGT, 0x0C00       /*                  target (with full path)                */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    control params
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ IP_WRK, 0x0E00       /* source insertion point for FnDat()                      */
  .equ IP_TGT, 0x0E08       /* target insertion point for FnDat()                      */
  .equ P_FAC0, 0x0E10       /* parameters       sub 00 FDacc()                       ? */
  .equ P_FOP0, 0x0E20       /*                         Fopen()                       ? */
  .equ P_FAC1, 0x0E30       /*                  sub 01 FDacc()                       ? */
  .equ P_FOP1, 0x0E40       /*                         Fopen()                       ? */
  .equ TMP_FH, 0x0E50       /* FH               FH structure for new fields            */
  .equ SEL_NR, 0x0E70       /* field select     field number                         ? */
  .equ SEL_FH, 0x0E80       /*                  FH                                   ? */
  .equ SEL_HD, 0x0EA0       /*                  field header (64 byte)               ? */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    field creation
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ F_ZERO, 0x0F00       /* new header       leading zeroes (32 byte)               */
  .equ F_BLKS, 0x0F20       /*                  block size                             */
  .equ F_TCNT, 0x0F24       /*                  type count                             */
  .equ F_SECS, 0x0F2A       /*                  SecSys control                         */
  .equ F_FNUM, 0x0F2C       /*                  field number                           */
  .equ F_STAT, 0x0F30       /*                        status                           */
  .equ F_SIZE, 0x0F34       /*                        size                             */
  .equ F_MAXL, 0x0F38       /*                  maximum entry length                   */
  .equ F_ENTR, 0x0F3C       /*                  entries                                */
  .equ F_TTYP, 0x0F40       /*                  type table                             */
  .equ F_TOFF, 0x0F60       /*                  offset table                           */
  .equ F_NAME, 0x0FE0       /*                  field name                             */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    LD/FH structures
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ EA_FLD, 0x1E80       /* names&numbers    EA                                     */
  .equ MH_FLD, 0x1E98       /*                  MH                                     */
  .equ EA_SRC, 0x1EC0       /* source folders   EA                                     */
  .equ MH_SRC, 0x1ED8       /*                  MH                                     */
  .equ EA_WRK, 0x1F00       /* source field     EA                                     */
  .equ SZ_WRK, 0x1F08       /*                  size                                   */
  .equ NR_WRK, 0x1F10       /*                  number                                 */
  .equ FL_WRK, 0x1F14       /*                  flags                                  */
  .equ MH_WRK, 0x1F18       /*                  MH                                     */
  .equ FH_WRK, 0x1F40       /*                  FH structure                           */
  .equ TR_WRK, 0x1F70       /*                  true field number                      */
  .equ EA_TGT, 0x1F80       /* target field     EA                                     */
  .equ SZ_TGT, 0x1F88       /*                  size                                   */
  .equ NR_TGT, 0x1F90       /*                  number                                 */
  .equ FL_TGT, 0x1F94       /*                  flags                                  */
  .equ MH_TGT, 0x1F98       /*                  MH                                     */
  .equ FH_TGT, 0x1FC0       /*                  FH structure                           */
  .equ TR_TGT, 0x1FF0       /*                  true field number                      */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                      R U N T I M E
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    MemHandles + EAs
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ EAVIEW, 0x8010       /* field viewer work area  EA                              */
  .equ SZVIEW, 0x8018       /*                         size                            */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    Win Handles
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ PHMENU, 0x8100       /* HMENU for main menu                                     */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    miscellaneous
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ MSG_SY, 0x8200       /* messages                             0 = user   1 = sys */
  .equ MNU_SY, 0x8204       /* menu+dialog texts                    0 = user   1 = sys */
  .equ TMPMAP, 0x8208       /* temporary drivemap                                      */
  .equ CP_SRC, 0x820C       /* copy source field                                       */
  .equ CP_TGT, 0x8210       /*      target field                                       */
  .equ MV_BEG, 0x8214       /* move from entry                                         */
  .equ MV_END, 0x8218       /*      to   entry                                         */
  .equ MV_CNT, 0x821C       /*      entries to move                                    */
  .equ NOSAVE, 0x8220       /* do not save (forget changes)                            */
  .equ CREFSZ, 0x8224       /* create file -> size                                     */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~
    buffers
    ~~~~~~~~~~~~~~~~~~~~~~~~
  */
  .equ VIEW_E, 0x8400       /* viewer numeric data                                     */
  .equ VIEW_Z, 0x843C       /*        empty string                                     */
  .equ SPN_BF, 0x8480       /* buffer for QEf() and SEf()                              */
  .equ BUFFER, 0x8800       /* buffer standard dialogs                                 */
  .equ EDI_BF, 0xA000       /*        for editors                                      */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
#endif
