  /*
    ==================================================================================
                  STopen - ERROR DEFINITIONS     (C) ST-Open 1979 - 2012
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

#ifndef __yerr__
#define __yerr__

  #define ERR_INVALID            0xFFFFFFFF    /* common invalid error number       */
  #define ERR_NO_ERROR           0x00000000    /*        no error                   */
  #define ERR_ERROR              0x00000001    /*        general error              */
  #define ERR_SYS_SERIOUS        0x00000002    /* SYSTEM serious error, terminate   */
  #define ERR_SYS_INTRUDE        0x00000003    /*        intruder - terminate now!  */
  #define ERR_SYS_LDR_BUSY       0x00000004    /*        LOADER engaged (retry)     */
  #define ERR_SYS_DBE_BUSY       0x00000005    /*        FDacc  writing (retry)     */
  #define ERR_SYS_TERMINATED     0x00000006    /*        application closing        */
  #define ERR_CPU_BELOW          0x00000007    /*        required instr. missing    */
  #define ERR_PAR_INVALID        0x00000008    /* PARAM  passed parameter invalid   */
  #define ERR_PAR_ABOVE          0x00000009    /*        too large                  */
  #define ERR_PAR_BELOW          0x0000000A    /*        too small                  */
  #define ERR_PAR_ARGUMENT       0x0000000B    /*        unknown argument           */
  #define ERR_PAR_COMMAND        0x0000000C    /*                command            */
  #define ERR_2ND_INSTANCE       0x0000000D    /* CREATE no 2nd instance allowed    */
  #define ERR_UNALIGNED          0x0000000E    /* PARAM  address not aligned        */
  #define ERR_ADDRESS            0x0000000F    /*        address below 1.048 MB     */
  #define ERR_LDR_ERROR          0x00000010    /* LOADER general                    */
  #define ERR_LDR_NO_MEM         0x00000011    /*        insufficient memory        */
  #define ERR_LDR_RESIZE         0x00000012    /*        can't resize memory block  */
  #define ERR_LDR_MH             0x00000013    /*        invalid MemHandle          */
  #define ERR_LDR_MEMEA          0x00000014    /*                MemEA              */
  #define ERR_LDR_FIELD          0x00000015    /*        cannot load field          */
  #define ERR_LDR_FILE           0x00000016    /*                    file           */
  #define ERR_LDR_CORRUPT        0x00000017    /*        field corrupted            */
  #define ERR_LDR_NO_FIELD       0x00000018    /*        not a field                */
  #define ERR_LDR_INSTANCE       0x00000019    /*        instance limit reached     */
  #define ERR_LDR_OUT_OF_MH      0x0000001A    /*        no free MemHandles         */
  #define ERR_LDR_ALLOC          0x0000001B    /*        allocation failed          */
  #define ERR_LDR_FORBIDDEN      0x0000001C    /*        no access to system memory */
  #define ERR_LDR_ZERO           0x0000001D    /*        field number = 0 (invalid) */
  #define ERR_LDR_STR            0x0000001E    /*        load FFFFFFFC (STR) failed */
  #define ERR_LDR_BNR            0x0000001F    /*        load FFFFFFFE (NUM) failed */
  #define ERR_DBE_TYPE           0x00000020    /* FDacc  unknow data type           */
  #define ERR_DBE_MH             0x00000021    /*        invalid MemHandle          */
  #define ERR_DBE_SUBFIELD       0x00000022    /*                subfield number    */
  #define ERR_DBE_ENTRY          0x00000023    /*                entry number       */
  #define ERR_DBE_WRITE          0x00000024    /*        write string failed        */
  #define ERR_DBE_GARBCOL        0x00000025    /*        garbage collection failed  */
  #define ERR_DBE_SECSYS         0x00000026    /*        en-/decryption failed      */
  #define ERR_27                 0x00000027    /*                                   */
  #define ERR_28                 0x00000028    /*                                   */
  #define ERR_SET_DIR            0x00000029    /* DIR    failed switch to directory */
  #define ERR_CREATE_DIR         0x0000002A    /*               create directory    */
  #define ERR_FILE_OPEN          0x0000002B    /* FILES  cannot open                */
  #define ERR_FILE_READONLY      0x0000002C    /*        read only                  */
  #define ERR_FILE_READ          0x0000002D    /*        cannot read                */
  #define ERR_FILE_WRITE         0x0000002E    /*        cannot write               */
  #define ERR_FILE_SPTR          0x0000002F    /*        cannot set file pointer    */
  #define ERR_FILE_RESIZE        0x00000030    /*        cannot set size            */
  #define ERR_FILE_CLOSE         0x00000031    /*        cannot close               */
  #define ERR_TARGET_EXISTS      0x00000032    /*        target exists (ask user!)  */
  #define ERR_TARGET_MISSING     0x00000033    /*               does not exist      */
  #define ERR_FILE_COPY          0x00000034    /*        failed: copy               */
  #define ERR_FILE_MOVE          0x00000035    /*                move               */
  #define ERR_FILE_DELETE        0x00000036    /*                delete             */
  #define ERR_FILE_CREATE        0x00000037    /*                create             */
  #define ERR_API                0x00000038    /* API    returned below error       */
  #define ERR_API_RC             0x00000039    /*        RC not expected            */
  #define ERR_NAME_OBJECT        0x0000003A    /*        (re)name object failed     */
  #define ERR_EXCHANGE           0x0000003B    /*        exchanging objects failed  */
  #define ERR_SS_ERROR           0x0000003C    /* SecSys general error              */
  #define ERR_SS_ACCESS          0x0000003D    /*        general: access denied     */
  #define ERR_SS_READ            0x0000003E    /*        no permission for read     */
  #define ERR_SS_WRITE           0x0000003F    /*                          write    */
  #define ERR_OLH_TOP_FULL       0x00000040    /* OLH    no free topics             */
  #define ERR_OLH_SEL_OOR        0x00000041    /*        selection > 63 byte        */
  #define ERR_42                 0x00000042    /*                                   */
  #define ERR_43                 0x00000043    /*                                   */
  #define ERR_44                 0x00000044    /*                                   */
  #define ERR_45                 0x00000045    /*                                   */
  #define ERR_46                 0x00000046    /*                                   */
  #define ERR_47                 0x00000047    /*                                   */
  #define ERR_48                 0x00000048    /*                                   */
  #define ERR_49                 0x00000049    /*                                   */
  #define ERR_4A                 0x0000004A    /*                                   */
  #define ERR_4B                 0x0000004B    /*                                   */
  #define ERR_4C                 0x0000004C    /*                                   */
  #define ERR_4D                 0x0000004D    /*                                   */
  #define ERR_4E                 0x0000004E    /*                                   */
  #define ERR_4F                 0x0000004F    /*                                   */
  #define ERR_50                 0x00000050    /*                                   */
  #define ERR_51                 0x00000051    /*                                   */
  #define ERR_52                 0x00000052    /*                                   */
  #define ERR_53                 0x00000053    /*                                   */
  #define ERR_54                 0x00000054    /*                                   */
  #define ERR_55                 0x00000055    /*                                   */
  #define ERR_56                 0x00000056    /*                                   */
  #define ERR_57                 0x00000057    /*                                   */
  #define ERR_58                 0x00000058    /*                                   */
  #define ERR_59                 0x00000059    /*                                   */
  #define ERR_5A                 0x0000005A    /*                                   */
  #define ERR_5B                 0x0000005B    /*                                   */
  #define ERR_5C                 0x0000005C    /*                                   */
  #define ERR_5D                 0x0000005D    /*                                   */
  #define ERR_5E                 0x0000005E    /*                                   */
  #define ERR_5F                 0x0000005F    /*                                   */
  #define ERR_60                 0x00000060    /*                                   */
  #define ERR_61                 0x00000061    /*                                   */
  #define ERR_62                 0x00000062    /*                                   */
  #define ERR_63                 0x00000063    /*                                   */
  #define ERR_64                 0x00000064    /*                                   */
  #define ERR_65                 0x00000065    /*                                   */
  #define ERR_66                 0x00000066    /*                                   */
  #define ERR_67                 0x00000067    /*                                   */
  #define ERR_68                 0x00000068    /*                                   */
  #define ERR_69                 0x00000069    /*                                   */
  #define ERR_6A                 0x0000006A    /*                                   */
  #define ERR_6B                 0x0000006B    /*                                   */
  #define ERR_6C                 0x0000006C    /*                                   */
  #define ERR_6D                 0x0000006D    /*                                   */
  #define ERR_6E                 0x0000006E    /*                                   */
  #define ERR_6F                 0x0000006F    /*                                   */
  #define ERR_70                 0x00000070    /*                                   */
  #define ERR_71                 0x00000071    /*                                   */
  #define ERR_72                 0x00000072    /*                                   */
  #define ERR_73                 0x00000073    /*                                   */
  #define ERR_74                 0x00000074    /*                                   */
  #define ERR_75                 0x00000075    /*                                   */
  #define ERR_76                 0x00000076    /*                                   */
  #define ERR_77                 0x00000077    /*                                   */
  #define ERR_78                 0x00000078    /*                                   */
  #define ERR_79                 0x00000079    /*                                   */
  #define ERR_7A                 0x0000007A    /*                                   */
  #define ERR_7B                 0x0000007B    /*                                   */
  #define ERR_7C                 0x0000007C    /*                                   */
  #define ERR_7D                 0x0000007D    /*                                   */
  #define ERR_7E                 0x0000007E    /*                                   */
  /*
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  */
#endif
