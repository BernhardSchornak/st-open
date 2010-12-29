          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                             D A T E   A N D   T I M E                              Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К                          *** (C) ST-Open 1979 - 2009 ***                           Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К You may copy and distribute this file as often as you want, but recipients are not Кл
          К allowed to pay anything for any copy of this file or its content. It isn't allowed Кл
          К to remove parts of this file or add third party content. It isn't allowed to abuse Кл
          К the copyrighted content or introduced techniques for commercial purposes. Whatever Кл
          К is derived from this file and its content must be freely available without charge. Кл
          К You are free to modify the content of this file if you want to. However, derivates Кл
          К of the content of this file or parts of it *still* are subject to the terms of the Кл
          К FT4FP license. Recipients neither are allowed to pay anything for the original nor Кл
          К for altered or derived replica.                                                    Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К All included functions handle leap years properly!                                 Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4, 0x00, 15
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г days in month              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
    month:.long    0x00000000                   # 00 -
          .long    0x0000001F                   # 01 january
          .long    0x0000001C                   # 02 february
          .long    0x0000001F                   # 03 march
          .long    0x0000001E                   # 04 april
          .long    0x0000001F                   # 05 may
          .long    0x0000001E                   # 06 june
          .long    0x0000001F                   # 07 july
          .long    0x0000001F                   # 08 august
          .long    0x0000001E                   # 09 september
          .long    0x0000001F                   # 0A october
          .long    0x0000001E                   # 0B november
          .long    0x0000001F                   # 0C december
          .long    0x00000000                   # 0D -
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г days from 1st of january   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
    dayto:.long    0x00000000                   # 00 -
          .long    0x00000000                   # 01 january
          .long    0x0000001F                   # 02 february
          .long    0x0000003B                   # 03 march
          .long    0x0000005A                   # 04 april
          .long    0x00000078                   # 05 may
          .long    0x00000097                   # 06 june
          .long    0x000000B5                   # 07 july
          .long    0x000000D4                   # 08 august
          .long    0x000000F3                   # 09 september
          .long    0x00000111                   # 0A october
          .long    0x00000130                   # 0B november
          .long    0x0000014E                   # 0C december
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г jump tables                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллл
          */
      jt0:.long    L00
          .long    L01
          .long    L02
          .long    L03
          .long    L04
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                                     A Q U I R E                                    Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФТФФФФФФФФФФФФФТФФФФФФФФФФФФФТФФФФФФФФФФФФФТФФФФФФФФФФФФФП
          Г DMY  Г       year (signed)       Г    month    Г     day     Гл
          РФФФФФФСФФФФФФФФФФФФФСФФФФФФФФФФФФФСФФФФФФФФФФФФФСФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФТФФФФФФФФФФФФФТФФФФФФФФФФФФФТФФФФФФФФФФФФФТФФФФФФФФФФФФФП
          Г HMSh Г    hours    Г   minutes   Г   seconds   Г  1/100th s  Гл
          РФФФФФФСФФФФФФФФФФФФФСФФФФФФФФФФФФФСФФФФФФФФФФФФФСФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г I hope MS clocks at least are able to count from 0 to 59 and Гл
          Г 23 correctly. If not, I have to add additional bloat setting Гл
          Г time and date to proper values...                            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г DATE AND TIME IN _BNR                                        Гл
          Г                                                              Гл
          Г C_TIME[BNR]    HMSh                              0x1FF0[BNR] Гл
          Г C_DATE[BNR]    DMY                               0x1FF4[BNR] Гл
          Г T_ZONE[BNR]    difference to GMT (minutes)       0x1FF8[BNR] Гл
          Г WK_DAY[BNR]    day in week       (Mo...Su)       0x1FFA[BNR] Гл
          Г                                                              Гл
          Г WINDOZE SYSTEMTIME                                           Гл
          Г                                                              Гл
          Г 00   SW        wYear;                 1234   3412 0C00       Гл
          Г 02   SW        wMonth;                000C   000C 3412       Гл
          Г 04   SW        wDayOfWeek;            0006   0600 1F00       Гл
          Г 06   SW        wDay;                  001F                   Гл
          Г 08   SW        wHour;                                        Гл
          Г 0A   SW        wMinute;                                      Гл
          Г 0C   SW        wSecond;                                      Гл
          Г 0E   SW        wMilliseconds;                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г GetTime  get current time                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г->        -     nothing                     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX    HMSh  current time                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _GetTime
          .def     _GetTime; .scl 2; .type 32; .endef
 _GetTime:movl     $0x01,%eax                   # set marker
          jmp      0f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г GetDate  get current date                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г->        -     nothing                     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX    YMD   current date                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _GetDate
          .def     _GetDate; .scl 2; .type 32; .endef
 _GetDate:xorl     %eax,%eax                    # clear marker
        0:subq     $0xB8,%rsp
          nop
          nop
          movdqa   %xmm4,0x60(%rsp)
          movdqa   %xmm5,0x70(%rsp)
          movq     %rbx, 0x80(%rsp)
          movq     %r11, 0x88(%rsp)
          movq     %r10, 0x90(%rsp)
          movq     %r9,  0x98(%rsp)
          movq     %r8,  0xA0(%rsp)
          movq     %rdx, 0xA8(%rsp)
          movq     %rcx, 0xB0(%rsp)
          leaq     0x20(%rsp),%rcx              # RCX = EA C_TIME
          movl     %eax,%ebx                    # RBX = marker
          call     *__imp__GetLocalTime(%rip)
          movq     0x20(%rsp),%rcx              # RCX = ??DD ???d ??MM YYYY
          movq     0x28(%rsp),%rdx              # RDX = ?ttt ??SS ??MM ??HH
          movq     _BNR(%rip),%r11              # R11 = BNR
          movl     $0xCCCCCCCD,%eax             # RAX = mul_div factor
          movq     %rcx,%r8                     # R08 = ??DD ???d ??MM YYYY
          movq     %rdx,%r9                     # R09 = ?ttt ??SS ??MM ??HH
          shlq     $0x08,%rcx                   # RCX = DD?? ?d?? MMYY YY00
          shrq     $0x30,%rdx                   # RDX = 0000 0000 0000 tttt
          shrq     $0x20,%r8                    # R08 = 0000 0000 ??DD ???d
          shlq     $0x18,%r9                    # R09 = SS?? MM?? HH00 0000
          rolq     $0x08,%rcx                   # RCX = ???d ??MM YY YY00DD
          mull     %edx                         # RDX / 10
          rolq     $0x08,%r9                    # R09 = ??MM ??HH 0000 00SS
          shlq     $0x18,%rcx                   # RCX = MMYY YY00 DD00 0000
          shrl     $0x03,%edx                   # RDX = 0000 0000 0000 00hh
          movl     %r9d,%eax                    # RAX = 0000 0000 0000 00SS
          andl     $0x07,%r8d                   # R08 = weekday
          rolq     $0x08,%rcx                   # RCX = YYYY 00DD 0000 00MM
          rorl     $0x08,%edx                   # RDX = 0000 0000 hh00 0000
          shlq     $0x08,%r9                    # R09 = MM?? HH00 0000 SS00
          movl     %ecx,%r10d                   # R10 = 0000 0000 0000 00MM
          addl     %eax,%edx                    # RDX = 0000 0000 hh00 00SS
          rolq     $0x08,%r9                    # R09 = ??HH 0000 00SS 00MM
          shll     $0x08,%r10d                  # R10 = 0000 0000 0000 MM00
          shrq     $0x20,%rcx                   # RCX = 0000 0000 YYYY 00DD
          movzb    %r9b,%eax                    # RAX = 0000 0000 0000 00MM
          rorl     $0x08,%edx                   # RDX = 0000 0000 SShh 0000
          addl     %r10d,%ecx                   # RCX = 0000 0000 YYYY MMDD
          shrq     $0x18,%r9                    # R09 = 0000 00?? HH00 0000
          shrl     $0x10,%edx                   # RDX = 0000 0000 0000 SShh
          shll     $0x10,%eax                   # RAX = 0000 0000 00MM 0000
          addl     %r9d,%edx                    # RDX = 0000 0000 HH00 SShh
          addl     %edx,%eax                    # RAX = 0000 0000 HHMM SShh
          movl     %eax,C_TIME(%r11)            # store HMSh
          movl     %ecx,C_DATE(%r11)            # store DMY
          movl     %r8d,WK_DAY(%r11)            # store weekday
          testl    %ebx,%ebx                    # marker set?
          cmove    %ecx,%eax                    # RAX = date
          jmp      XIT8
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                  T R A N S L A T E   S T U P I D   T O   S A N E                   Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г w2HMS    translate SYSTEMTIME to HMSh      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX    EA SYSTEMTIME structure           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX    HMSh                              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _w2HMS
          .def     _w2HMS; .scl 2; .type 32; .endef
   _w2HMS:subq     $0xB8,%rsp
          nop
          nop
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movzb    0x08(%rcx),%eax              # RAX = 0000 00HH
          movzb    0x0A(%rcx),%r8d              # R08 = 0000 00MM
          movzb    0x0C(%rcx),%r9d              # R09 = 0000 00SS
          movzwl   0x0E(%rcx),%edx              # RDX = 0000 00hh
          shll     $0x18,%eax                   # RAX = HH00 0000
          shll     $0x10,%r8d                   # R08 = 00MM 0000
          shll     $0x08,%r9d                   # R09 = 0000 SS00
          addl     %eax,%r8d                    # R08 = HHMM 0000
          movl     $0xCCCCCCCD,%eax             # RAX = mul_div factor
          addl     %r8d,%r9d                    # R09 = HHMM SS00
          mull     %edx                         # divide by 10
          movl     %r9d,%eax                    # RAX = HHMM SS00
          shrl     $0x03,%edx                   # RDX = 0000 00hh
          addl     %edx,%eax                    # RAX = HHMM SShh
          jmp      XIT4
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г HMS2w    translate HMSh to SYSTEMTIME      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX    HMSh                              Гл
          Г   RDX    EA SYSTEMTIME structure           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX    milliseconds                      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _HMS2w
          .def     _HMS2w; .scl 2; .type 32; .endef
   _HMS2w:subq     $0xB8,%rsp
          movzb    %cl,%eax                     # RAX = 0000 00hh
          nop
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %ecx,%r9d                    # R09 = HHMM SShh
          movl     %ecx,%r8d                    # R08 = HHMM SShh
          leal     0x00(%eax, %eax, 4),%eax     # hh  * 5
          shrl     $0x18,%r9d                   # R09 = 0000 00HH
          shrl     $0x10,%r8d                   # R08 = 0000 HHMM
          shrl     $0x08,%ecx                   # RCX = 00HH MMSS
          andl     $0xFF,%r9d                   # R09 = 0000 00HH
          andl     $0xFF,%r8d                   # R08 = 0000 00MM
          andl     $0xFF,%ecx                   # RCX = 0000 00SS
          shrl     %eax                         # EAX = milliseconds
          movw     %r9w,0x08(%rdx)              # store HH
          movw     %r8w,0x0A(%rdx)              #       MM
          movw     %cx, 0x0C(%rdx)              #       SS
          movw     %ax, 0x0E(%rdx)              #       milliseconds
          jmp      XIT4
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г w2DMY    translate SYSTEMTIME to DMY       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1   EA SYSTEMTIME structure           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX    HMSh                              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _w2DMY
          .def     _w2DMY; .scl 2; .type 32; .endef
   _w2DMY:subq     $0xB8,%rsp
          nop
          nop
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movzwl   0x00(%rcx),%r8d              # R08 = 0000 YYYY
          movzb    0x02(%rcx),%edx              # EDX = 0000 00MM
          movzb    0x06(%rcx),%eax              # EAX = 0000 00DD
          shll     $0x10,%r8d                   # R08 = YYYY 0000
          shll     $0x08,%edx                   # EDX = 0000 MM00
          addl     %r8d,%eax                    # EAX = YYYY 00DD
          addl     %edx,%eax                    # EAX = YYYY MMDD
          jmp      XIT3
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г DMY2w    translate DMY to SYSTEMTIME       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1   DMY                               Гл
          Г   PAR2   EA SYSTEMTIME structure           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX    EA SYSTEMTIME structure           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _DMY2w
          .def     _DMY2w; .scl 2; .type 32; .endef
   _DMY2w:subq     $0xB8,%rsp
          nop
          nop
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %ecx,%r8d                    # R08 = YYYY MMDD
          movl     %ecx,%eax                    # RAX = YYYY MMDD
          shrl     $0x08,%r8d                   # R08 = 00YY YYMM
          shrl     $0x10,%ecx                   # RCX = 0000 YYYY
          andl     $0xFF,%r8d                   # R08 = 0000 00MM
          andl     $0xFF,%eax                   # RAX = 0000 00DD
          movl     %ecx,0x00(%rdx)              # store YYYY
          movw     %r8w,0x02(%rdx)              #       MM
          movw     %ax, 0x06(%rdx)              #       DD
          jmp      XIT3
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                         D I F F E R E N C E S  &  S U M S                          Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г dDiff    date difference (DMY2 - DMY1)     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX    DMY1  date 1                      Гл
          Г   RDX    DMY2  date 2                      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX    DMY   difference  DD.MM.YYYY      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г dDiff() calculates differences between two Гл
          Г dates. The returned DMY is no valid date - Гл
          Г it represents the amount of days, months & Гл
          Г years between both dates.                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _dDiff
          .def     _dDiff; .scl 2; .type 32; .endef
   _dDiff:subq     $0xB8,%rsp
          nop
          nop
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %ecx,%r8d                    # R08 = DMY1
          movl     %edx,%eax                    # EAX = DMY2
          cmpl     %edx,%ecx                    # DMY1 > DMY2?
          cmovb    %eax,%r8d                    # exchange
          cmovb    %edx,%eax
          movl     %eax,%ecx                    # ECX = YYYYMMDD
          subl     %r8d,%eax                    # DMY1 - DMY2
          shrl     $0x08,%ecx                   # ECX = 00YYYYMM
          leaq     month(%rip),%r8              # R08 = EA LUT
          andl     $0xFF,%ecx                   # ECX = 000000MM
          testl    $0x80,%eax                   # days negative?
          je       0f
          addl     0x00(%r8, %rcx, 4),%eax      # add days in month
          subl     $0x0100,%eax                 # one month less
        0:testl    $0x8000,%eax                 # month negative?
          je       XIT3
          addl     $0xFFFF0C00,%eax             # one year less
          jmp      XIT3
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г dSum     calculate sum (date 1 + date 2)   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1   YMD   date 1                      Гл
          Г   PAR2   YMD   date 2                      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX    YMD   sum                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г dSum() adds DMY2 to DMY1 and validates the Гл
          Г result. Corrections are done automatically Гл
          Г if required, the returned result always is Гл
          Г a valid date.                              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _dSum
          .def     _dSum; .scl 2; .type 32; .endef
    _dSum:subq     $0xB8,%rsp
          nop
          nop
          movq     %r11,0x88(%rsp)
          movq     %r10,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          addl     %edx,%ecx                    # DMY1 + DMY2
          movl     %ecx,%r8d                    # R08 = YYYY MMDD
          movl     %ecx,%r9d                    # R09 = YYYY MMDD
          shrl     $0x08,%ecx                   # RCX = 00YY YYMM
          shrl     $0x10,%r9d                   # R09 = year
          andl     $0xFF,%ecx                   # RCX = month
          andl     $0xFF,%r8d                   # R08 = day
          jmp      ckDMY
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г d2day   calculate days between two DMYs    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   DMY1       date 1                  Гл
          Г   RDX   DMY2       date 2                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   xxxx xxxx  days from DMY1 to DMY2  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г d2day() calculates the days passed between Гл
          Г DMY1 and DMY2. If DMY1 > DMY2, the return- Гл
          Г ed number is negative - those days have to Гл
          Г pass until we reach DMY1.                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _d2day
          .def     _d2day; .scl 2; .type 32; .endef
   _d2day:subq     $0xB8,%rsp
          nop
          nop
          movq     %r11,0x88(%rsp)
          movq     %r10,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %ecx,%r8d                    # R08 = YYYY MMDD 1
          movl     %ecx,%r9d                    # R09 = YYYY MMDD 1
          movl     %edx,%r10d                   # R10 = YYYY MMDD 2
          movl     %edx,%r11d                   # R11 = YYYY MMDD 2
          shrl     $0x08,%r8d                   # R08 = 00YY YYMM 1
          shrl     $0x08,%r10d                  # R10 = 00YY YYMM 2
          andl     $0xFFFF0000,%ecx             # RCX = YYYY 0000 1
          andl     $0xFF,%r8d                   # R08 = 0000 00MM 1
          andl     $0xFF,%r9d                   # R09 = 0000 00DD 1
          andl     $0xFFFF0000,%edx             # RDX = YYYY 0000 2
          andl     $0xFF,%r10d                  # R10 = 0000 00MM 2
          andl     $0xFF,%r11d                  # R11 = 0000 00DD 2
          cmpl     $0x02,%r8d                   # m1  = february?
          jne      0f
          call     _chkLY
          shll     $0x10,%eax                   # RAX * 65,536
          addl     %eax,%ecx                    # add leap (0 or 1)
        0:cmpl     $0x02,%r10d                  # m2  = february?
          jne      1f
          xchg     %ecx,%edx                    # DMY1 <> DMY2
          call     _chkLY
          shll     $0x10,%eax                   # RAX * 65,536
          xchg     %ecx,%edx                    # DMY1 <> DMY2
          addl     %eax,%edx
        1:leaq     dayto(%rip),%rax             # RAX = EA LUT
          sarl     $0x10,%edx                   # RDX = y2
          sarl     $0x10,%ecx                   # RCX = y1
          addl     0x00(%rax, %r8, 4),%r9d      # R09 = days in y1
          addl     0x00(%rax, %r10, 4),%r11d    # R11 = days in y2
          movl     %ecx,%r8d                    # R08 = year1
          movl     %edx,%r10d                   # R11 = year2
          imull    $0x016D,%ecx
          imull    $0x016D,%edx
          xorl     %eax,%eax
          addl     %ecx,%r9d                    # R09 = days DMY1
          addl     %edx,%r11d                   # R11 = days DMY2
          subl     $0x062F,%r8d                 # year1 < 1583?
          cmovs    %eax,%r8d
          subl     $0x062F,%r10d                # year2 < 1583?
          cmovs    %eax,%r10d
          shrl     $0x02,%r8d                   # leap days
          shrl     $0x02,%r10d                  # leap days
          addl     %r8d,%r9d
          addl     %r10d,%r11d
          movl     %r9d,%eax                    # EAX = days 2
          subl     %r11d,%eax                   # EAX - days 1
          jmp      XIT6
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г M2day   add days of months                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   DMY  start                         Гл
          Г   RDX   DD   months to add                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   DD   days                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г M2day() calculates days between the passed Гл
          Г date and [date+months]. M2day() recognises Гл
          Г leap years and handles them properly.      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _M2day
          .def     _M2day; .scl 2; .type 32; .endef
   _M2day:subq     $0xB8,%rsp
          nop
          nop
          movq     %r11,0x88(%rsp)
          movq     %r10,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %ecx,%r11d                   # R11 = YYYY MMDD
          movl     %ecx,%r8d                    # R08 = YYYY MMDD
          leaq     month(%rip),%r9              # R09 = EA LUT
          andl     $0xFF,%r11d                  # R11 = 0000 00DD
          shrl     $0x08,%r8d                   # R08 = 00YY YYMM
          andl     $0xFFFF0000,%ecx             # RCX = YYYY 0000
          movl     %r11d,%r10d                  # R10 = 0000 00DD
          andl     $0xFF,%r8d                   # R08 = 0000 00MM
          negl     %r11d                        # R11 = -day (+ days in month = remaining days)
        0:addl     0x00(%r9, %r8, 4),%r11d      # R11 = days
          cmpl     $0x02,%r8d                   # february?
          jne      1f
          call     _chkLY
          addl     %eax,%r11d                   # add possible leap day
        1:incl     %r8d                         # month++
          cmpl     $0x0C,%r8d                   # month > 12?
          jbe      2f
          movl     $0x01,%r8d                   # month = 01
          addl     $0x00010000,%ecx             # year++
        2:decl     %edx
          jne      0b
          addl     %r10d,%r11d                  # result + day
          movl     %r11d,%eax                   # EAX = result
          jmp      XIT6
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tDiff   calculate time difference          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HMSh  t1                           Гл
          Г   RDX   HMSh  t2                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   HMSh  difference (t2 - t1)         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _tDiff
          .def     _tDiff; .scl 2; .type 32; .endef
   _tDiff:movl     %edx,%eax                    # EAX = t1
          subl     %ecx,%eax                    # EAX = t2 - t1
          je       3f
          testl    $0x80,%eax                   # hh underflow?
          je       0f
          subl     $0x9C,%eax                   # correction hh
        0:testl    $0x8000,%eax                 # SS underflow?
          je       1f
          subl     $0xC400,%eax                 # correction SS
        1:testl    $0x00800000,%eax             # MM underflow?
          je       2f
          subl     $0x00C40000,%eax             # correction MM
        2:testl    $0x80000000,%eax             # HH underflow?
          je       3f
          subl     $0xE8000000,%eax             # correction HH
        3:ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tSum    add two times                      Гл
          Г t2add   R E M O V E D !!!                  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1  HMSh  t1                           Гл
          Г   PAR2  HMSh  t2                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   HMSh  sum (t1 + t2)                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г CAUTION: Hour overflow is passed as is! It Гл
          Г is assumed proper HMSh times are passed in Гл
          Г t1 and t2 (0000 0000...173B 3B63). If not, Гл
          Г the result might be bogus.                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _tSum
          .def     _tSum; .scl 2; .type 32; .endef
    _tSum:movl     %ecx,%eax                    # EAX = t1
          addl     %edx,%eax                    # EAX = t1 + t2
          rorl     $0x08,%eax                   # EAX = hHMS
          cmpl     $0x64000000,%eax
          jb       0f
          subl     $0x64000000,%eax             # correction
          incl     %eax
        0:rorl     $0x08,%eax                   # EAX = ShHM
          cmpl     $0x3C000000,%eax
          jb       1f
          subl     $0x3C000000,%eax             # correction
          incl     %eax
        1:rorl     $0x08,%eax                   # EAX = MShH
          cmpl     $0x3C000000,%eax
          jb       2f
          subl     $0x3C000000,%eax             # correction
          incl     %eax
        2:rorl     $0x08,%eax                   # EAX = HMSh
          ret
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                                 C O N V E R S I O N                                Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г t2sec   HMSh -> seconds                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HMSh time                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   time in seconds                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г CAUTION: 1/100th seconds are ignored!      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _t2sec
          .def     _t2sec; .scl 2; .type 32; .endef
   _t2sec:subq     $0xB8,%rsp
          nop
          nop
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %ecx,%eax                    # RAX = HHMM SShh
          movl     %ecx,%edx                    # RDX = HHMM SShh
          shrl     $0x10,%ecx                   # RCX = 0000 HHMM
          shrl     $0x08,%eax                   # RAX = 00HH MMSS
          shrl     $0x18,%edx                   # RDX = 0000 00HH
          andl     $0xFF,%ecx                   # RCX = 0000 00MM
          andl     $0xFF,%eax                   # RAX = 0000 00SS
          imull    $0x003C,%ecx                 # RCX * 60
          imull    $0x0E10,%edx                 # RDX * 3600
          addl     %ecx,%eax                    # RAX + (minutes * 60)
          addl     %edx,%eax                    # RAX + (hours * 3600)
          jmp      XIT2
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г sec2t   seconds -> HMSh                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   time in seconds                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   HMSh                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г RAX is zero if ECX exceeds 000E 0FFF - 255 Гл
          Г hours, 59 minutes and 59 seconds).         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _sec2t
          .def     _sec2t; .scl 2; .type 32; .endef
   _sec2t:subq     $0xB8,%rsp
          xorl     %eax,%eax                    # EAX = 0
          nop
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          cmpl     $0x000E0FFF,%ecx             # out of range?
          ja       XIT4
          movl     $0x91A2B3C5,%eax             # RAX = factor
          mull     %ecx                         # RCX / 3600
          shrl     $0x0B,%edx
          movl     %edx,%r8d                    # R08 = hours
          movl     %edx,%r9d                    # R09 = hours
          imull    $0x0E10,%r8d                 # R08 * 3600
          shll     $0x08,%r9d                   # R09 = 00H0
          subl     %r8d,%ecx                    # RCX = remainder
          movl     $0x88888889,%eax             # RAX = factor
          mull     %ecx                         # RCX / 60
          shrl     $0x05,%edx
          movl     %edx,%r8d                    # R08 = minutes
          addl     %edx,%r9d                    # R09 = 00HM
          imull    $0x3C,%r8d
          shll     $0x08,%r9d                   # R09 = 0HM0
          subl     %r8d,%ecx                    # RCX = seconds
          movl     %r9d,%eax                    # RAX = 0HM0
          addl     %ecx,%eax                    # RAX = 0HMS
          shll     $0x08,%eax                   # RAX = HMS0
          jmp      XIT4
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г t2hun   HMSh -> 1/100 seconds              Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1  HHMMSShh time                      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   time in 1/100 seconds              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _t2hun
          .def     _t2hun; .scl 2; .type 32; .endef
   _t2hun:subq     $0xB8,%rsp
          nop
          nop
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %ecx,%eax                    # RAX = HHMM SShh
          movl     %ecx,%r8d                    # R08 = HHMM SShh
          movl     %ecx,%edx                    # RDX = HHMM SShh
          shrl     $0x10,%ecx                   # RCX = 0000 HHMM
          shrl     $0x08,%r8d                   # R08 = 00HH MMSS
          shrl     $0x18,%edx                   # RDX = 0000 00HH
          andl     $0xFF,%ecx                   # RCX = 0000 00MM
          andl     $0xFF,%r8d                   # R08 = 0000 00SS
          andl     $0xFF,%ecx                   # RAX = 0000 00hh
          imull    $0x00057E40,%edx             # hours   * 360000
          imull    $0x1770,%ecx                 # minutes *   6000
          imull    $0x64,%r8d                   # seconds *    100
          addl     %edx,%eax
          addl     %ecx,%eax
          addl     %r8d,%eax
          jmp      XIT3
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г hun2t   1/100 seconds -> HMSh              Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1  time in 1/100 seconds              Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   HHMM SShh                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г EAX is zero if PAR1 exceeds 057E 3FFF (255 Гл
          Г hours, 59 minutes and 59 seconds).         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _hun2t
          .def     _hun2t; .scl 2; .type 32; .endef
   _hun2t:subq     $0xB8,%rsp
          xorl     %eax,%eax                    # EAX = 0
          nop
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %ecx,%edx
          cmpl     $0x057E3FFF,%ecx             # out of range?
          ja       XIT4
          shrl     $0x06,%edx
          movl     $0x002E9A77,%eax
          mull     %edx                         # DIV (x / 360000)
          shrl     $0x02,%edx
          movl     %edx,%r8d
          movl     %edx,%r9d
          imull    $0x00057E40,%r8d             # hours * 360000
          roll     $0x08,%r9d                   # ECX = 00H0
          subl     %r8d,%ecx                    # EDI = remainder
          movl     $0x057619F1,%eax
          mull     %ecx                         # DIV (x / 6000)
          shrl     $0x07,%edx
          movl     %edx,%r8d
          addl     %edx,%r9d
          imull    $0x1770,%r8d                 # minutes * 6000
          roll     $0x08,%r9d                   # ECX = 0HM0
          subl     %r8d,%ecx                    # EDI = remainder
          movl     $0x51EB851F,%eax
          mull     %ecx                         # DIV (x / 100)
          shrl     $0x05,%edx
          movl     %edx,%r8d
          addl     %edx,%r9d
          imull    $0x64,%r8d                   # seconds * 100
          roll     $0x08,%r9d                   # ECX = HMS0
          subl     %r8d,%ecx
          movl     %r9d,%eax
          addl     %ecx,%eax
          jmp      XIT4
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                     S T R I N G   I N -   A N D   O U T P U T                      Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г t2out   HHMM SShh -> display string        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HHMM SShh                          Гл
          Г   RDX   adress of destination string       Гл
          Г   R08   00 ->       SS.hh                  Гл
          Г         01 ->    MM:SS.hh                  Гл
          Г         02 -> HH:MM:SS.hh                  Гл
          Г         03 -> HH:MM:SS                     Гл
          Г         04 -> HH:MM                        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   always zero                        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г If HH exceeds 99, it is set to 99 hours!   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _t2out
          .def     _t2out; .scl 2; .type 32; .endef
   _t2out:subq     $0xB8,%rsp
          nop
          nop
          movq     %r11,0x88(%rsp)
          movq     %r10,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %ecx,%eax                    # RAX = HHMM SShh
          movl     %ecx,%r9d                    # R09 = HHMM SShh
          movl     %ecx,%r10d                   # R10 = HHMM SShh
          shll     $0x10,%ecx                   # RCX = 0000 HHMM
          shll     $0x08,%r9d                   # R09 = 00HH MMSS
          andl     $0xFF,%eax                   # RAX = 0000 00hh
          shll     $0x18,%r10d                  # R10 = 0000 00HH
          andl     $0xFF,%ecx                   # RCX = 0000 00MM
          andl     $0xFF,%r9d                   # RAX = 0000 00SS
          movl     $0x63,%r11d                  # R11 = 0000 0063
          /*
          кФФФФФФФФФФФФФФФФФП
          Г correction      Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
        0:cmpl     $0x64,%eax                   # h > 99?
          jb       1f
          subl     $0x64,%eax                   # h - 100
          incl     %r9d                         # S++
          jmp      0b
        1:cmpl     $0x3C,%r9d                   # S > 59?
          jb       2f
          subl     $0x3C,%r9d                   # S - 60
          incl     %ecx                         # M++
          jmp      1b
        2:cmpl     $0x3C,%ecx                   # M > 59?
          jb       3f
          subl     $0x3C,%ecx                   # M - 60
          incl     %r10d                        # M++
          jmp      2b
        3:cmpl     $0x63,%r10d                  # H > 99?
          cmova    %r11d,%r10d                  # H = 99
          shll     $0x08,%eax                   # LETNi-ise...
          shll     $0x08,%r9d
          shll     $0x08,%ecx
          shll     $0x08,%r10d
          /*
          кФФФФФФФФФФФФФФФФФП
          Г unpack          Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
        0:cmpl     $0x0A00,%eax                 # 1/100th
          jb       1f
          subl     $0x09FF,%eax
          jmp      0b
        1:cmpl     $0x0A00,%r9d                 # seconds
          jb       2f
          subl     $0x09FF,%r9d
          jmp      1b
        2:cmpl     $0x0A00,%ecx                 # minutes
          jb       3f
          subl     $0x09FF,%ecx
          jmp      2b
        3:cmpl     $0x0A00,%r10d                # hours
          jb       4f
          subl     $0x09FF,%r10d
          jmp      3b
          /*
          кФФФФФФФФФФФФФФФФФП
          Г make ASCII      Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
        4:addl     $0x3030,%eax                 # EAX = 1/100th
          addl     $0x3030,%r9d                 # EBX = seconds
          addl     $0x3030,%ecx                 # ECX = minutes
          addl     $0x3030,%r10d                # EDX = hours
          /*
          кФФФФФФФФФФФФФФФФФП
          Г create string   Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
          movl     $0x02,%r11d                  # format = HH:MM:SS.hh
          cmpl     $0x04,%r8d                   # format out of range?
          cmova    %r11,%r8
          jmp      *jt0(, %r8, 4)               # jump table 0
          /*
          кФФФФФФФФФФФФФФФФФП
          Г SS.hh           Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
      L00:movw     %r9w,0x00(%rdx)
          movb     $0x2E,0x02(%rdx)
          movw     %ax,0x03(%rdx)
          movb     $0x00,0x05(%rdx)
          jmp      L05
          /*
          кФФФФФФФФФФФФФФФФФП
          Г MM:SS.hh        Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
      L01:movw     %cx,0x00(%rdx)
          movb     $0x3A,0x02(%rdx)
          movw     %r9w,0x03(%rdx)
          movb     $0x2E,0x05(%rdx)
          movw     %ax,0x06(%rdx)
          movb     $0x00,0x08(%rdx)
          jmp      L05
          /*
          кФФФФФФФФФФФФФФФФФП
          Г HH:MM:SS.hh     Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
      L02:movw     %r10w,0x00(%rdx)
          movb     $0x3A,0x02(%rdx)
          movw     %cx,0x03(%rdx)
          movb     $0x3A,0x05(%rdx)
          movw     %r9w,0x06(%rdx)
          movb     $0x2E,0x08(%rdx)
          movw     %ax,0x09(%rdx)
          movb     $0x00,0x0B(%rdx)
          jmp      L05
          /*
          кФФФФФФФФФФФФФФФФФП
          Г HH:MM:SS        Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
      L03:movw     %r10w,0x00(%rdx)
          movb     $0x3A,0x02(%rdx)
          movw     %cx,0x03(%rdx)
          movb     $0x3A,0x05(%rdx)
          movw     %r9w,0x06(%rdx)
          movb     $0x00,0x08(%rdx)
          jmp      L05
          /*
          кФФФФФФФФФФФФФФФФФП
          Г HH:MM           Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
      L04:movw     %r10w,0x00(%rdx)
          movb     $0x3A,0x02(%rdx)
          movw     %cx,0x03(%rdx)
          movb     $0x00,0x05(%rdx)
      L05:xorl     %eax,%eax
          jmp      XIT6
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г s2HMS   input -> HHMM SShh                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   address string                     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   HMSh                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г The input string must contain valid digits Гл
          Г in one of these formats:                   Гл
          Г                                            Гл
          Г 0123456789ABCDEF   . @    : @        end @ Гл
          Г                                            Гл
          Г SS.hh              0x02   none        0x05 Гл
          Г MM:SS.hh           0x05   0x02        0x08 Гл
          Г HH:MM:SS.hh        0x08   0x02 0x05   0x0B Гл
          Г HH:MM:SS           none   0x02 0x05   0x08 Гл
          Г HH:MM              none   0x02        0x05 Гл
          Г                                            Гл
          Г Input not matching any of these formats is Гл
          Г treated as invalid. HMSh is set to zero in Гл
          Г this case!                                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _s2HMS
          .def     _s2HMS; .scl 2; .type 32; .endef
   _s2HMS:subq     $0xB8,%rsp
          prefetch 0x00(%rcx)
          nop
          movq     %rsi,0x70(%rsp)
          movq     %rdi,0x78(%rsp)
          movq     %rbx,0x80(%rsp)
          movq     %r11,0x88(%rsp)
          movq     %r10,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movq     %rcx,%rsi                    # RSI = EA input
          xorl     %edi,%edi                    # RDI = 0
          movzb    0x00(%rcx),%r8d              # R08 = A10
          movzb    0x01(%rsi),%r9d              # R09 = A01
          movzb    0x03(%rsi),%r10d             # R10 = B10
          movzb    0x04(%rsi),%r11d             # R11 = B01
          movzb    0x06(%rsi),%eax              # RAX = C10
          movzb    0x07(%rsi),%ebx              # RBX = C01
          movzb    0x09(%rsi),%ecx              # RCX = D10
          movzb    0x0A(%rsi),%edx              # RDX = D01
          subl     $0x30,%r8d                   # reduce to nibbles
          cmovs    %rdi,%r8d
          subl     $0x30,%r9d
          cmovs    %rdi,%r9d
          subl     $0x30,%r10d
          cmovs    %rdi,%r10d
          subl     $0x30,%r11d
          cmovs    %rdi,%r11d
          subl     $0x30,%eax
          cmovs    %rdi,%eax
          subl     $0x30,%ebx
          cmovs    %rdi,%ebx
          subl     $0x30,%ecx
          cmovs    %rdi,%ecx
          subl     $0x30,%edx
          cmovs    %rdi,%edx
          cmpl     $0x09,%r8d                   # zero invalid
          cmova    %rdi,%r8d
          cmpl     $0x09,%r9d
          cmova    %rdi,%r9d
          cmpl     $0x09,%r10d
          cmova    %rdi,%r10d
          cmpl     $0x09,%r11d
          cmova    %rdi,%r11d
          cmpl     $0x09,%eax
          cmova    %rdi,%eax
          cmpl     $0x09,%ebx
          cmova    %rdi,%ebx
          cmpl     $0x09,%ecx
          cmova    %rdi,%ecx
          cmpl     $0x09,%edx
          cmova    %rdi,%edx
          shll     %r8d                         # R08 * 2
          shll     %r10d                        # R10 * 2
          shll     %eax                         # RAX * 2
          shll     %ecx                         # RCX * 2
          leaq     0x00(%r8,  %r8,  4),%r8      # R08 * 5
          leaq     0x00(%r10, %r10, 4),%r10     # R10 * 5
          leaq     0x00(%rax, %rax, 4),%rax     # RAX * 5
          leaq     0x00(%rcx, %rcx, 4),%rcx     # RCX * 5
          addl     %r9d,%r8d                    # R08 = Axx
          addl     %r11d,%r10d                  # R10 = Bxx
          addl     %ebx,%eax                    # EAX = Cxx
          addl     %edx,%ecx                    # ECX = Dxx
          cmpb     $0x2E,0x02(%r10d)            # SS.hh?
          jne      0f
          movl     %r8d,%eax                    # 1/100th => EAX
          movl     %r10d,%r8d                   # seconds => R08
          xorl     %ecx,%ecx                    # minutes =  0
          xorl     %edx,%edx                    # hours   =  0
          jmp      TAKE
        0:cmpb     $0x3A,0x02(%r10d)            # must be ':'!
          jne      DENY
          cmpb     $0x2E,0x05(%r10d)            # MM:SS.hh?
          jne      1f
          movl     %r8d,%ecx                    # seconds
          xorl     %edx,%edx                    # hours
          movl     %r10d,%r8d                   # minutes
          jmp      TAKE                         # EBX = seconds!
        1:cmpb     $0x3A,0x05(%r10d)            # HH:MM?
          je       2f
          movl     %r8d,%edx                    # hours
          movl     %r10d,%ecx                   # minutes
          xorl     %eax,%eax                    # 1/100th
          xorl     %r8d,%r8d                    # seconds
          jmp      TAKE
        2:movl     %r8d,%edx                    # RDX = hour
          cmpb     $0x2E,0x08(%r10d)            # HH:MM:SS?
          cmove    %edi,%ecx                    # hh = 0
          movl     %eax,%r8d                    # seconds
          movl     %ecx,%eax                    # 1/100th
          movl     %r10d,%ecx                   # minutes
     TAKE:movq     0x70(%rsp),%rsi
          movq     0x78(%rsp),%rdi
          movq     0x80(%rsp),%rbx
          jmp      ckHMS
          .p2align 4,,15
     DENY:movq     0x70(%rsp),%rsi
          movq     0x78(%rsp),%rdi
          xorl     %eax,%eax
          jmp      XIT7
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г d2out   convert DMY to EUROPEAN format     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г d2iso   YYYY MMDD -> display string (ISO)  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   DMY                                Гл
          Г   RDX   adress target                      Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   always zero                        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г To keep date I/O functions small, they are Гл
          Г limited to years 0000...9999. If the given Гл
          Г DMY is outside this range, the date is re- Гл
          Г jected and no conversion is done at all!   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _d2out
          .def     _d2out; .scl 2; .type 32; .endef
   _d2out:movl     $0x01,%eax                   # set flag
          jmp      0f
          .p2align 4,,15
          .globl   _d2iso
          .def     _d2iso; .scl 2; .type 32; .endef
   _d2iso:xorl     %eax,%eax                    # clear flag
        0:subq     $0xB8,%rsp
          prefetch 0x00(%rdx)
          nop
          movq     %r10,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %eax,%r10d                   # R10 = flag
          movl     %ecx,%r8d                    # R08 = YYYY MMDD
          movl     %ecx,%r9d                    # R09 = YYYY MMDD
          xorl     %eax,%eax                    # RAX = 0
          shll     $0x08,%r8d                   # R08 = YYMM DD00
          shll     $0x10,%r9d                   # R09 = 0000 YYYY
          andl     $0xFF00,%ecx                 # RCX = 0000 MM00
          andl     $0xFF00,%r8d                 # R08 = 0000 DD00
          cmpl     $0x270F,%r9d                 # year > 9999?
          ja       XIT5
          /*
          кФФФФФФФФФФФФФФФФФП
          Г unpack          Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
        0:cmpl     $0x03E8,%r9d                 # Y > 1000?
          jb       1f
          subl     $0x03E8,%r9d                 # Y - 1000
          addl     $0x01000000,%eax             # E3++
          jmp      0b
        1:cmpl     $0x64,%r9d                   # Y > 100
          jb       2f
          subl     $0x64,%r9d                   # Y - 100
          addl     $0x00010000,%eax             # E2++
          jmp      1b
        2:cmpl     $0x0A,%r9d                   # Y > 10
          jb       3f
          subl     $0x0A,%r9d                   # Y - 10
          addl     $0x00000100,%eax             # E1++
          jmp      2b
        3:addl     %eax,%r9d                    # R09 = Y
          cmpl     $0x0A00,%ecx                 # month
          jb       4f
          subl     $0x09FF,%ecx
        4:cmpl     $0x0A00,%r8d                 # day
          jb       5f
          subl     $0x09FF,%r8d
          jmp      4b
          /*
          кФФФФФФФФФФФФФФФФФП
          Г make ASCII      Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
        5:bswap    %r9d                         # LETNi-ise Y
          addl     $0x3030,%r8d
          addl     $0x3030,%ecx
          addl     $0x30303030,%r9d
          /*
          кФФФФФФФФФФФФФФФФФП
          Г EUROPEAN        Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
          testl    %r10d,%r10d                  # flag set?
          jne      6f
          movw     %r8w, 0x00(%rdx)
          movb     $0x2E,0x02(%rdx)
          movw     %cx,  0x03(%rdx)
          movb     $0x2E,0x05(%rdx)
          movl     %r9d, 0x06(%rdx)
          movb     $0x00,0x0A(%rdx)
          jmp      XIT5
          /*
          кФФФФФФФФФФФФФФФФФП
          Г ISO             Гл
          РФФФФФФФФФФФФФФФФФйл
            лллллллллллллллллл
          */
        6:movl     %r9d, 0x00(%rdx)
          movb     $0x2D,0x04(%rdx)
          movw     %cx,  0x05(%rdx)
          movb     $0x2D,0x07(%rdx)
          movw     %r8w, 0x08(%rdx)
          movb     $0x00,0x0A(%rdx)
          jmp      XIT5
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г s2DMY   display string -> YYYY MMDD        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   adress of input string             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   DMY                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Recognises ISO - YYYY-MM-DD - and EUROPEAN Гл
          Г - DD.MM.YYYY - date formats. If the passed Гл
          Г string contains an invalid character where Гл
          Г numbers, dots or hyphens are expected, the Гл
          Г evaluation stops and zero is returned! The Гл
          Г output finally is passed to chkDMY() if no Гл
          Г error occured.                             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _s2DMY
          .def     _s2DMY; .scl 2; .type 32; .endef
   _s2DMY:subq     $0xB8,%rsp
          nop
          nop
          movq     %r11,0x88(%rsp)
          movq     %r10,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movq     %rcx,%r10                    # R10 = EA string
          movl     $0x05,%r11d                  # R11 = index month ISO
          movl     $0x08,%r9d                   # R08 =       day   ISO
          cmpb     $0x2E,0x02(%r10)             # European?
          jne      0f
          movl     $0x03,%r11d                  # R11 = index month EUROPEAN
          movl     $0x00,%r9d                   # R08 =       day   EUROPEAN
          jmp      1f
        0:cmpb     $0x2D,0x04(%r10)             # hyphen at proper place?
          jne      INVA
        1:movzb    0x00(%r10, %r9, 1),%eax      # get day
          movzb    0x01(%r10, %r9, 1),%r8d
          movzb    0x00(%r10, %r11, 1),%ecx     # get month
          movzb    0x01(%r10, %r11, 1),%edx
          subl     $0x30,%eax                   # day   E1
          js       INVA
          subl     $0x30,%r8d                   # day   E0
          js       INVA
          subl     $0x30,%ecx                   # month E1
          js       INVA
          subl     $0x30,%edx                   # month E0
          js       INVA
          cmpl     $0x09,%eax                   # > 9?
          ja       INVA
          cmpl     $0x09,%r8d                   # > 9?
          ja       INVA
          cmpl     $0x09,%ecx                   # > 9?
          ja       INVA
          cmpl     $0x09,%edx                   # > 9?
          ja       INVA
          shll     %eax                         # E1 * 10
          shll     %ecx
          leal     0x00(%rax, %rax, 4),%eax
          leal     0x00(%rcx, %rcx, 4),%ecx
          movl     $0x00,%r11d                  # R11 = index year ISO
          movl     $0x06,%r9d                   # R09 =            EUROPEAN
          addl     %eax,%r8d                    # R08 = day   (E0 + E1)
          addl     %ecx,%edx                    # RDX = month (E0 + E1)
          movl     %r8d,0x20(%rsp)              # store day
          movl     %edx,0x24(%rsp)              #       month
          cmpb     $0x2E,0x02(%r10d)            # EUROPEAN?
          cmovne   %r11d,%r9d                   # index = ISO
          movzb    0x00(%r10d, %r9d, 1),%eax    # get year
          movzb    0x01(%r10d, %r9d, 1),%r8d
          movzb    0x02(%r10d, %r9d, 1),%ecx
          movzb    0x03(%r10d, %r9d, 1),%edx
          subl     $0x30,%eax                   # year  E3
          js       INVA
          subl     $0x30,%r8d                   # year  E2
          js       INVA
          subl     $0x30,%ecx                   # year  E1
          js       INVA
          subl     $0x30,%edx                   # year  E0
          js       INVA
          cmpl     $0x09,%eax                   # > 9?
          ja       INVA
          cmpl     $0x09,%r8d                   # > 9?
          ja       INVA
          cmpl     $0x09,%ecx                   # > 9?
          ja       INVA
          cmpl     $0x09,%edx                   # > 9?
          ja       INVA
          shll     %ecx                         # E1 *    2
          imull    $0x03E8,%eax                 # E3 * 1000
          imull    $0x0064,%r8d                 # E2 *  100
          leal     0x00(%ecx, %ecx, 4),%ecx     # E1 *    5
          movl     %edx,%r9d
          addl     %ecx,%r9d
          addl     %r8d,%r9d
          addl     %eax,%r9d                    # R09 = year
          movl     0x20(%rsp),%r8d              # R08 = day
          movl     0x24(%rsp),%ecx              # RCX = month
          jmp      ckDMY
     INVA:xorl     %eax,%eax
          jmp      XIT6
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                              M I S C E L L A N E O U S                             Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г mkDate  check & assemble date              Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   day                                Гл
          Г   RDX   month                              Гл
          Г   R08   year                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   proper DMY                         Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Assemble DMY from D, M and Y. Test result. Гл
          Г Apply corrections if neccessary.           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _mkDate
          .def     _mkDate; .scl 2; .type 32; .endef
  _mkDate:subq     $0xB8,%rsp
          nop
          nop
          movq     %r11,0x88(%rsp)
          movq     %r10,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %r8d,%r9d                    # R09 = year
          movl     %ecx,%r8d                    # R08 = day
          movl     %edx,%ecx                    # RCX = month
          jmp      ckDMY
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г chkDMY  validate and correct DMY           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   DMY to validate                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   DMY with valid content             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Validate and correct passed DMY. If day or Гл
          Г month are zero, they are set to one before Гл
          Г anything else is evaluated!                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _chkDMY
          .def     _chkDMY; .scl 2; .type 32; .endef
  _chkDMY:subq     $0xB8,%rsp
          nop
          nop
          movq     %r11,0x88(%rsp)
          movq     %r10,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %ecx,%r8d                    # R08 = YYYY MMDD
          movl     %ecx,%r9d                    # R09 = YYYY MMDD
          shrl     $0x08,%ecx                   # RCX = 00YY YYMM
          shrl     $0x10,%r9d                   # R09 = 0000 YYYY
          andl     $0xFF,%r8d                   # R08 = 0000 00DD
          andl     $0xFF,%ecx                   # RCX = 0000 00MM
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г-> R08   day             Гл
          Г   RCX   month           Гл
          Г   R09   year            Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФйл
             ллллллллллллллллллллллллл
          */
    ckDMY:movl     $0x01,%r11d                  # R11 = 1 
          leaq     month(%rip),%r10             # R10 = EA LUT
          testl    %ecx,%ecx                    # mon = 0?
          cmove    %r11d,%ecx                   # january
          testl    %r8d,%r8d                    # day = 0?
          cmove    %r11d,%r8d                   # 1st
        0:cmpl     $0x0D,%ecx                   # valid month?
          jb       1f
          subl     $0x0C,%ecx                   # month - 12
          incl     %r9d                         # year++
          jmp      0b
        1:movl     0x00(%r10, %rcx, 4),%r11d    # days in month
          cmpl     $0x02,%ecx                   # february?
          jne      3f
          movl     $0x51EB851F,%eax
          cmpl     $0x0630,%r9d                 # leap years since 1583...
          jl       3f
          testl    $0x03,%r9d                   # multiple of 4?
          jne      3f
          mull     %r9d                         # R09 / 100
          testl    $0xFFFF0000,%eax
          jne      2f
          testl    $0x0F,%eax
          jne      3f
        2:incl     %r11d
        3:cmpl     %r11d,%r8d                   # day above?
          jbe      4f
          incl     %ecx                         # month++
          subl     %r11d,%r8d                   # day - days
          cmpl     $0x0C,%ecx                   # month > 12?
          jbe      1b
          movl     $0x01,%ecx                   # month = 01
          incl     %r9d                         # year++
          jmp      1b
        4:movl     %r8d,%eax
          shll     $0x10,%r9d
          shll     $0x08,%ecx
          addl     %r9d,%eax
          addl     %ecx,%eax
          jmp      XIT6
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г chkHMS  validate and correct HMS           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   HMSh to validate                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   HMSh with proper content           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г If the passed hour exceeds 251, correction Гл
          Г of 1/100th, seconds and minutes might swap Гл
          Г the returned hour to zero (MSB gets lost). Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _chkHMS
          .def     _chkHMS; .scl 2; .type 32; .endef
  _chkHMS:subq     $0xB8,%rsp
          movl     %ecx,%eax                    # RAX = HHMM SShh
          nop
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %eax,%r8d
          movl     %eax,%edx
          shrl     $0x10,%ecx                   # RCX = 0000 HHMM
          shrl     $0x08,%r8d                   # R08 = 00HH MMSS
          shrl     $0x18,%edx                   # RDX = 0000 00HH
          andl     $0xFF,%eax                   # RAX = 0000 00hh
          andl     $0xFF,%r8d                   # R08 = 0000 00SS
          andl     $0xFF,%ecx                   # RCX = 0000 00MM
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г-> RAX   1/100th         Гл
          Г   R08   seconds         Гл
          Г   RCX   minutes         Гл
          Г   RDX   hours           Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФйл
             ллллллллллллллллллллллллл
          */
    ckHMS:cmpl     $0x64,%eax                   # make 1/100th valid
          jb       0f
          incl     %r8d                         # seconds++
          subl     $0x64,%eax                   # 1/100th - 100
          jmp      ckHMS
        0:cmpl     $0x3C,%r8d                   # make seconds valid
          jb       1f
          incl     %ecx                         # minutes++
          subl     $0x3C,%r8d                   # seconds - 60
          jmp      0b
        1:cmpl     $0x3C,%ecx                   # make minutes valid
          jb       2f
          incl     %edx                         # hours++
          subl     $0x3C,%ecx                   # minutes - 60
          jmp      1b
        2:shll     $0x08,%r8d                   # 00:00:SS.00
          shll     $0x10,%ecx                   # 00:MM:00.00
          shll     $0x18,%edx                   # HH:00:00.00
          addl     %r8d,%eax                    # 00:00:SS:hh
          addl     %ecx,%eax                    # 00:MM:SS:hh
          addl     %edx,%eax                    # HH:MM:SS:hh
          jmp      XIT4
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г chkLY   check if this is a leap year       Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1  YYYY MMDD  DMY to check            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   0000 0000  no leap year            Гл
          Г         0000 0001  is leap year            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г EAX is 0000 **** if the year is a multiple Гл
          Г of 100. Because only multiples of four are Гл
          Г evaluated, only centuries pass through the Гл
          Г 1st compare. If the high word is not zero, Гл
          Г it is a leap year.The last compare filters Гл
          Г out multiples of 400. If the last digit in Гл
          Г the low word is not zero, it is not a leap Гл
          Г year.                                      Гл
          Г                                            Гл
          Г Leap years were introduced in 1583. If the Гл
          Г year is below or equal to 1583, the return Гл
          Г code is zero by default.                   Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _chkLY
          .def     _chkLY; .scl 2; .type 32; .endef
   _chkLY:subq     $0xB8,%rsp
          nop
          nop
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          shrl     $0x10,%ecx                   # RCX = 0000 YYYY
          xorl     %eax,%eax                    # no leap year
          cmpl     $0x0630,%edx                 # leap years since 1583...
          jl       XIT2
          testl    $0x03,%edx                   # multiple of 4?
          jne      XIT2
          movl     $0x51EB851F,%eax             # RAX = mul_div factor
          mull     %ecx                         # ECX / 100
          movl     %eax,%edx
          xorl     %eax,%eax                    # no leap year
          testl    $0xFFFF0000,%edx
          jne      0f
          testl    $0x0F,%edx
          jne      XIT2
        0:incl     %eax                         # is leap year
          jmp      XIT2
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г WkDay   calculate weekday of DMY           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1  YYYY MMDD                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   0000 0000   sunday                 Гл
          Г         0000 0001   monday                 Гл
          Г         0000 0002   tuesday                Гл
          Г         0000 0003   wednesday              Гл
          Г         0000 0004   thursday               Гл
          Г         0000 0005   friday                 Гл
          Г         0000 0006   saturday               Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _WkDay
          .def     _WkDay; .scl 2; .type 32; .endef
   _WkDay:subq     $0xB8,%rsp
          nop
          nop
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movq     _BNR(%rip),%r9               # R09 = BNR
          movl     $0x07,%r8d                   # R08 = 7
          call     _GetDate
          movl     %eax,%edx                    # today
          call     _d2day
          xorl     %edx,%edx                    # EDX = 0
          movl     WK_DAY(%r9),%r9d             # R09 = weekday
          testl    %eax,%eax                    # negative?
          jns      0f
          negl     %eax                         # negate days
          divl     %r8d                         # days / 7
          addl     %edx,%r9d                    # DiW + remainder
          cmpl     %r8d,%r9d                    # overflow?
          jb       1f
          subl     %r8d,%r9d                    # DiW - 7
          jmp      1f
        0:divl     %r8d                         # days / 7
          subl     %edx,%r9d                    # DiW - remainder
          jns      1f                            # underflow?
          addl     %r8d,%r9d                    # DiW + 7
        1:movl     %r9d,%eax
          jmp      XIT4
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г Since   get days since DMY                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   YYYY MMDD                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   xxxx xxxx days from DMY until now  Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Since() calculates the days from a DMY un- Гл
          Г til today. If DMY is beyond today, then we Гл
          Г get the days from today until DMY. If YYMD Гл
          Г lies in the future, EAX is negative!       Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _Since
          .def     _Since; .scl 2; .type 32; .endef
   _Since:subq     $0xB8,%rsp
          nop
          nop
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          call     _GetDate                     # aquire date
          movl     %eax,%edx
          call     _d2day                       # get days until
          jmp      XIT2
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г GtAge   get age in years                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   YYYY MMDD                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   age in years (0 - 32768)           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Calculates the age for the given DMY until Гл
          Г today. If DMY is beyond today, then we get Гл
          Г the amount of years from today until DMY.  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _GtAge
          .def     _GtAge; .scl 2; .type 32; .endef
   _GtAge:call     _GetDate
          subl     %ecx,%eax                    # EAX = today - date
          jns      0f
          negl     %eax                         # make positive
        0:shrl     $0x10,%eax
          ret
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                                C O M M O N   E X I T                               Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     XIT8:movq     0x60(%rsp),%xmm4
          movq     0x70(%rsp),%xmm5
     XIT7:movq     0x80(%rsp),%rbx
     XIT6:movq     0x88(%rsp),%r11
     XIT5:movq     0x90(%rsp),%r10
     XIT4:movq     0x98(%rsp),%r9
     XIT3:movq     0xA0(%rsp),%r8
     XIT2:movq     0xA8(%rsp),%rdx
     XIT1:movq     0xB0(%rsp),%rcx
          addq     $0xB8,%rsp
          ret
          /*
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BNR, 8, 3
