  /*
  ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
  К                                     H E A D E R                                    Кл
  КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
  К                          *** (C) ST-Open 1979 - 2008 ***                           Кл
  ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
  К       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        Кл
  КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
  К You may copy and distribute it as often as you want, but recipients aren't allowed Кл
  К to pay *anything* for any copy of this file.                                       Кл
  К                                                                                    Кл
  К You are free to modify the content of this file if you want to. However, derivates Кл
  К of the content of this file *still* are subject to the terms of the FT4FP license. Кл
  К Recipients neither are allowed to pay *anything* for original work nor for altered Кл
  К or derived replica.                                                                Кл
  КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
  К       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        Кл
  ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  */
#ifndef __hasm__
#define __hasm__
  /*
  кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
  Г                                    S T A T I C                                     Гл
  РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  кФФФФФФФФФФФФФФФФФФФП
  Г field viewer      Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ VW_ENT, 0x0200       /* field viewer    current entry                           */
  .equ VW_SUB, 0x0204       /*                         subfield                        */
  .equ VW_LEN, 0x0208       /*                         length                          */
  /*
  кФФФФФФФФФФФФФФФФФФФП
  Г standard fields   Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ STDDLG, 0x0210       /* std fields      menus + dialogs                         */
  .equ STDMSG, 0x0214       /*                 messages                                */
  .equ STDOLH, 0x0218       /*                 OLH                                     */
  .equ STDTOP, 0x021C       /*                 topics                                  */
  .equ STDSPN, 0x0220       /*                 spinbuttons                             */
  .equ STDBMP, 0x0224       /*                 bitmaps                                 */
  .equ STDNBK, 0x0228       /*                 notebook pages                          */
  .equ STDNFD, 0x022C       /*                          field number                   */
  .equ STDFLG, 0x023C       /*                 flags
                              =========================================================
                               0x00000100      create FFFFFF00 (notebook)
                               0x00000080             FFFFFF10 (bitmaps)
                               0x00000040             FFFFFF01 (spinbuttons)
                               0x00000020             top.dat
                               0x00000010             olh.dat
                               0x00000008      copy   err.dat
                               0x00000004      create msg.dat
                               0x00000002      copy   FFFFFF13 (sys dlg)
                               0x00000001      create FFFFFF12 (usr dlg)
                              =========================================================
  кФФФФФФФФФФФФФФФФФФФП
  Г spinbutton editor Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ SPNCUR, 0x0240       /* current spinbutton number                               */
  .equ SPINEA, 0x0244       /*         EA spinbutton block                             */
  .equ SPNBUF, 0x0248       /* EA SPN_BF                                               */
  /*
  кФФФФФФФФФФФФФФФФФФФП
  Г program flags     Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
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
                               0x01000000      0                     1 
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
                               0x00008000      0                     1 
                               0x00004000      0                     1 
                               0x00002000      0                     1 
                               0x00001000      0                     1 
                               0x00000800      0                     1 
                               0x00000400      0                     1 
                               0x00000200      0                     1 
                               0x00000100      0                     1 
                               --------------------------------------------------------
                               0x00000080      0 viewer hex          1 dec
                               0x00000040      0                     1 
                               0x00000020      0                     1 
                               0x00000010      0                     1 
                               0x00000008      0 no external         1 extern present
                               0x00000004      0 no selection        1 field  selected
                               0x00000002      0 no selection        1 source selected
                               0x00000001      0 regular             1 DatTools self
                              =========================================================*/
  .equ DRVMSK, 0x0408       /* drive mask      selected source drives                  */
  .equ EVENTC, 0x0410       /* event count     ...TESTING...                           */
  /*
  кФФФФФФФФФФФФФФФФФФФП
  Г miscellaneous     Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ SL_FLD, 0x0420       /* selected        field    (field number)                 */
  .equ SL_SUB, 0x0424       /*                 subfield                                */
  .equ SL_ENT, 0x0428       /*                 entry                                   */
  .equ CT_FLD, 0x042C       /* count           source folders                          */
  .equ CT_SRC, 0x0430       /*                 fields in current source folder         */
  .equ SELFLD, 0x0434       /* selected        field    (entry number = LBox index)    */
  .equ SELSUB, 0x0438       /*                 subfield                                */
  .equ FREE00, 0x043C       /* -               dummy (free for use)                    */
  /*
  кФФФФФФФФФФФФФФФФФФФП
  Г translation tools Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ MNU_ET, 0x0480       /* selected        menus + dialogs   entry number          */
  .equ HTR_L1, 0x04A0       /*                 OLH               language 1            */
  .equ HTR_L2, 0x04A4       /*                                            2            */
  .equ HTR_ET, 0x04A8       /*                                   help number           */
  .equ TTR_L1, 0x04C0       /*                 TOPICS            language 1            */
  .equ TTR_L2, 0x04C4       /*                                            2            */
  .equ TTR_ET, 0x04C8       /*                                   topic number          */
  .equ MSG_L1, 0x04E0       /*                 SystemMessages    language 1            */
  .equ MSG_L2, 0x04E4       /*                                            2            */
  .equ MSG_ET, 0x04E8       /*                                   message number        */
  /*
  кФФФФФФФФФФФФФФФФФФФП
  Г loaded fields     Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ EA_WRK, 0x0A00       /* source EA field         --- LD structure ---            */
  .equ NR_WRK, 0x0A10       /*        field number                                     */
  .equ MH_WRK, 0x0A18       /*        MH field                                         */
  .equ FH_WRK, 0x0A48       /*        WINfh            --- FH structure ---            */
  .equ EA_TGT, 0x0A80       /* target EA field         --- LD structure ---            */
  .equ NR_TGT, 0x0A90       /*        field number                                     */
  .equ MH_TGT, 0x0A98       /*        MH field                                         */
  .equ FH_TGT, 0x0AC8       /*        WINfh            --- FH structure ---            */
  /*
  кФФФФФФФФФФФФФФФФФФФП
  Г expand area       Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ XP_LDS, 0x0B00       /* expand EA field         --- LD structure ---            */
  .equ XP_FHS, 0x0B48       /*        WINfh            --- FH structure ---            */
  .equ XP_MEM, 0x0B80       /*        temporary storage                                */
  /*
  кФФФФФФФФФФФФФФФФФФФП
  Г filenames         Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ FN_SRC, 0x0C00       /* filename        source (with full path)                 */
  .equ FN_TGT, 0x0D00       /*                 target (with full path)                 */
  /*
  кФФФФФФФФФФФФФФФФФФФП
  Г ???               Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ IP_WRK, 0x0E00       /* source insertion point for FnDat()                      */
  .equ IP_TGT, 0x0E08       /* target insertion point for FnDat()                      */
  .equ P_FAC0, 0x0E10       /* parameters      sub 00 FDacc()                        ? */
  .equ P_FOP0, 0x0E20       /*                        Fopen()                        ? */
  .equ P_FAC1, 0x0E30       /*                 sub 01 FDacc()                        ? */
  .equ P_FOP1, 0x0E40       /*                        Fopen()                        ? */
  .equ TMP_FH, 0x0E50       /* FH              FH structure for new fields             */
  .equ SEL_NR, 0x0E70       /* field select    field number                          ? */
  .equ SEL_FH, 0x0E80       /*                 FH                                    ? */
  .equ SEL_HD, 0x0EA0       /*                 field header (64 byte)                ? */
  /*
  кФФФФФФФФФФФФФФФФФФФП
  Г field creation    Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ SZ_DYN, 0x0EFC       /* new header      dynamic size                            */
  .equ F_ZERO, 0x0F00       /*                 leading zero DD                         */
  .equ F_NAME, 0x0F04       /*                 field name                              */
  .equ F_BLKS, 0x0F20       /*                 block size                              */
  .equ F_TCNT, 0x0F24       /*                 type count                              */
  .equ F_SECS, 0x0F2A       /*                 SecSys control                          */
  .equ F_FNUM, 0x0F2C       /*                 field number                            */
  .equ F_STAT, 0x0F30       /*                       status                            */
  .equ F_SIZE, 0x0F34       /*                       size                              */
  .equ F_MAXL, 0x0F38       /*                 maximum entry length                    */
  .equ F_ENTR, 0x0F3C       /*                 entries                                 */
  .equ F_TTYP, 0x0F40       /*                 type table                              */
  .equ F_TOFF, 0x0F60       /*                 offset table                            */
  /*
  кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
  Г                                   R U N T I M E                                    Гл
  РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  кФФФФФФФФФФФФФФФФФФФП
  Г MemHandles + EAs  Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ MH_FLD, 0x2000       /* field numbers and names MH                              */
  .equ MH_SRC, 0x2008       /* source directories MH                                   */
  .equ EAVIEW, 0x2010       /* field viewer work area EA                               */
  .equ SZVIEW, 0x2018       /*                        size                             */
  /*
  кФФФФФФФФФФФФФФФФФФФП
  Г Win Handles       Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ PHMENU, 0x2100       /* HMENU for main menu                                     */
  /*
  кФФФФФФФФФФФФФФФФФФФП
  Г miscellaneous     Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ MSG_SY, 0x2200       /* messages                             0 = user   1 = sys */
  .equ MNU_SY, 0x2204       /* menu+dialog texts                    0 = user   1 = sys */
  .equ TMPMAP, 0x2208       /* temporary drivemap                                      */
  .equ CP_SRC, 0x220C       /* copy source field                                       */
  .equ CP_TGT, 0x2210       /*      target field                                       */
  .equ MV_BEG, 0x2214       /* move from entry                                         */
  .equ MV_END, 0x2218       /*      to   entry                                         */
  .equ MV_CNT, 0x221C       /*      entries to move                                    */
  .equ NOSAVE, 0x2220       /* do not save (forget changes)                            */
  /*
  кФФФФФФФФФФФФФФФФФФФП
  Г buffers           Гл
  РФФФФФФФФФФФФФФФФФФФйл
    лллллллллллллллллллл
  */
  .equ VIEW_E, 0x2EC0       /* viewer numeric data                                     */
  .equ VIEW_Z, 0x2EFC       /*        empty string                                     */
  .equ SPN_BF, 0x2F00       /* buffer for QEf() and SEf()                              */
  /*
  ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
  ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
    ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
  */
#endif
