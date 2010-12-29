          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                                 B E N C H M A R K                                  Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К                          *** (C) ST-Open 1979 - 2010 ***                           Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К You may copy and distribute this file as often as you want, but recipients are not Кл
          К allowed to pay anything for any copy of this file or its content. It isn't allowed Кл
          К to abuse its copyrighted content or introduced techniques for commercial purposes. Кл
          К Whatever is derived from this file or its content must be freely available without Кл
          К charge.                                                                            Кл
          К                                                                                    Кл
          К You are free to modify the content of this file if you want to. However, derivates Кл
          К of the content of this file or parts of it *still* are subject to the terms of the Кл
          К FT4FP license. Recipients neither are allowed to pay anything for the original nor Кл
          К for altered or derived replica.                                                    Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        Кл
          ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .include "..\\..\\..\\include\\yasm.h"
          .include "tst.h"
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .section .rdata, "dr"
          .p2align 4, 0x00, 15
     LC00:.ascii   "I:\\BG\\walkthrough\\baldurs.gate.2.2.html"
          .byte    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г tstX    test main loop                                                             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RSI   BNR                                                                        Гл
          Г   RBP   EA_RBF                                                                     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   always zero                                                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .def     tstX; .scl 2; .type 32; .endef
     tstX:subq     $0x78,%rsp
          nop
          nop
          pxor     %xmm0,%xmm0
          movq     %r10,0x20(%rsp)
          movq     %r11,0x28(%rsp)
          movq     %r12,0x30(%rsp)
          movq     %rbp,0x38(%rsp)
          movq     %rsi,0x40(%rsp)
          movq     %rdi,0x48(%rsp)
          movq     %rbx,0x50(%rsp)
          movq     %r9, 0x58(%rsp)
          movq     %r8, 0x60(%rsp)
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г load sources and targets     Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          leaq     LD_S00(%rsi),%rcx                    # RCX = 0280[BNR]
          leaq     LC00(%rip),%rdx                      # RDX = EA name
          movdqa   %xmm0,0x0200(%rsi)                   # clear LD_10
          movq     %xmm0,0x0218(%rsi)
          movq     %rdx, 0x0220(%rsi)                   # EA name
          movq     %xmm0,0x0228(%rsi)
          movdqa   %xmm0,0x0230(%rsi)
          movdqa   %xmm0,0x0280(%rsi)                   # clear LD_11
          movq     %xmm0,0x0298(%rsi)
          movq     %rdx, 0x02A0(%rsi)                   # EA name
          movq     %xmm0,0x02A8(%rsi)
          movdqa   %xmm0,0x02B0(%rsi)
          movdqa   %xmm0,0x0300(%rsi)                   # clear LD_12
          movq     %xmm0,0x0318(%rsi)
          movq     %rdx, 0x0320(%rsi)                   # EA name
          movq     %xmm0,0x0328(%rsi)
          movdqa   %xmm0,0x0330(%rsi)
          movdqa   %xmm0,0x0380(%rsi)                   # clear LD_13
          movq     %xmm0,0x0398(%rsi)
          movq     %rdx, 0x03A0(%rsi)                   # EA name
          movq     %xmm0,0x03A8(%rsi)
          movdqa   %xmm0,0x03B0(%rsi)
          movq     %xmm0,0x0800(%rsi)                   # clear LD_20
          movq     %xmm0,0x0818(%rsi)
          movdqa   %xmm0,0x0820(%rsi)
          movdqa   %xmm0,0x0830(%rsi)
          movq     %xmm0,0x0880(%rsi)                   # clear LD_21
          movq     %xmm0,0x0898(%rsi)
          movdqa   %xmm0,0x08A0(%rsi)
          movdqa   %xmm0,0x08B0(%rsi)
          movq     %xmm0,0x0900(%rsi)                   # clear LD_22
          movq     %xmm0,0x0918(%rsi)
          movdqa   %xmm0,0x0920(%rsi)
          movdqa   %xmm0,0x0930(%rsi)
          movq     %xmm0,0x0980(%rsi)                   # clear LD_23
          movq     %xmm0,0x0998(%rsi)
          movdqa   %xmm0,0x08A0(%rsi)
          movdqa   %xmm0,0x09B0(%rsi)
          call     _LDreq
          addq     $0x80,%rcx                           # RCX = 0280[BNR]
          testl    %eax,%eax
          jne      XIZ
          call     _LDreq
          addq     $0x80,%rcx                           # RCX = 0300[BNR]
          testl    %eax,%eax
          jne      FR0
          call     _LDreq
          addq     $0x80,%rcx                           # RCX = 0380[BNR]
          testl    %eax,%eax
          jne      FR1
          call     _LDreq
          addq     $0x0480,%rcx                         # RCX = 0800[BNR]
          testl    %eax,%eax
          jne      FR2
          call     _LDreq
          addq     $0x80,%rcx                           # RCX = 0880[BNR]
          testl    %eax,%eax
          jne      FR3
          call     _LDreq
          addq     $0x80,%rcx                           # RCX = 0900[BNR]
          testl    %eax,%eax
          jne      FR4
          call     _LDreq
          addq     $0x80,%rcx                           # RCX = 0980[BNR]
          testl    %eax,%eax
          jne      FR5
          call     _LDreq
          testl    %eax,%eax
          jne      FR6
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 00              16 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00000010,%r8
          movl     $0x00000010,%ebx
          movl     $0x00000000,%edi
          call     TL0
          movq     %r10,0x0000(%rbp)                    # store 00-00
          movq     %r11,0x0200(%rbp)
          call     TL1
          movq     %r10,0x0080(%rbp)                    # store 01-00
          movq     %r11,0x0280(%rbp)
          call     TL2
          movq     %r10,0x0100(%rbp)                    # store 02-00
          movq     %r11,0x0300(%rbp)
          call     TL3
          movq     %r10,0x0180(%rbp)                    # store 03-00
          movq     %r11,0x0380(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 01              32 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00000020,%r8
          movl     $0x00000020,%ebx
          movl     $0x00000040,%edi
          call     TL0
          movq     %r10,0x0008(%rbp)                    # store 00-01
          movq     %r11,0x0208(%rbp)
          call     TL1
          movq     %r10,0x0088(%rbp)                    # store 01-01
          movq     %r11,0x0288(%rbp)
          call     TL2
          movq     %r10,0x0108(%rbp)                    # store 02-01
          movq     %r11,0x0308(%rbp)
          call     TL3
          movq     %r10,0x0188(%rbp)                    # store 03-01
          movq     %r11,0x0388(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 02              64 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00000040,%r8
          movl     $0x00000040,%ebx
          movl     $0x00000100,%edi
          call     TL0
          movq     %r10,0x0010(%rbp)                    # store 00-02
          movq     %r11,0x0210(%rbp)
          call     TL1
          movq     %r10,0x0090(%rbp)                    # store 01-02
          movq     %r11,0x0290(%rbp)
          call     TL2
          movq     %r10,0x0110(%rbp)                    # store 02-02
          movq     %r11,0x0310(%rbp)
          call     TL3
          movq     %r10,0x0190(%rbp)                    # store 03-02
          movq     %r11,0x0390(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 03             128 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00000080,%r8
          movl     $0x00000080,%ebx
          movl     $0x00000200,%edi
          call     TL0
          movq     %r10,0x0018(%rbp)                    # store 00-03
          movq     %r11,0x0218(%rbp)
          call     TL1
          movq     %r10,0x0098(%rbp)                    # store 01-03
          movq     %r11,0x0298(%rbp)
          call     TL2
          movq     %r10,0x0118(%rbp)                    # store 02-03
          movq     %r11,0x0318(%rbp)
          call     TL3
          movq     %r10,0x0198(%rbp)                    # store 03-03
          movq     %r11,0x0398(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 04             256 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00000100,%r8
          movl     $0x00000100,%ebx
          movl     $0x00000400,%edi
          call     TL0
          movq     %r10,0x0020(%rbp)                    # store 00-04
          movq     %r11,0x0220(%rbp)
          call     TL1
          movq     %r10,0x00A0(%rbp)                    # store 01-04
          movq     %r11,0x02A0(%rbp)
          call     TL2
          movq     %r10,0x0120(%rbp)                    # store 02-04
          movq     %r11,0x0320(%rbp)
          call     TL3
          movq     %r10,0x01A0(%rbp)                    # store 03-04
          movq     %r11,0x03A0(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 05             512 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00000200,%r8
          movl     $0x00000200,%ebx
          movl     $0x00000800,%edi
          call     TL0
          movq     %r10,0x0028(%rbp)                    # store 00-05
          movq     %r11,0x0228(%rbp)
          call     TL1
          movq     %r10,0x00A8(%rbp)                    # store 01-05
          movq     %r11,0x02A8(%rbp)
          call     TL2
          movq     %r10,0x0128(%rbp)                    # store 02-05
          movq     %r11,0x0328(%rbp)
          call     TL3
          movq     %r10,0x01A8(%rbp)                    # store 03-05
          movq     %r11,0x03A8(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 06           1 024 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00000400,%r8
          movl     $0x00000400,%ebx
          movl     $0x00001000,%edi
          call     TL0
          movq     %r10,0x0030(%rbp)                    # store 00-06
          movq     %r11,0x0230(%rbp)
          call     TL1
          movq     %r10,0x00B0(%rbp)                    # store 01-06
          movq     %r11,0x02B0(%rbp)
          call     TL2
          movq     %r10,0x0130(%rbp)                    # store 02-06
          movq     %r11,0x0330(%rbp)
          call     TL3
          movq     %r10,0x01B0(%rbp)                    # store 03-06
          movq     %r11,0x03B0(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 07           2 048 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00000800,%r8
          movl     $0x00000800,%ebx
          movl     $0x00002000,%edi
          call     TL0
          movq     %r10,0x0038(%rbp)                    # store 00-07
          movq     %r11,0x0238(%rbp)
          call     TL1
          movq     %r10,0x00B8(%rbp)                    # store 01-07
          movq     %r11,0x02B8(%rbp)
          call     TL2
          movq     %r10,0x0138(%rbp)                    # store 02-07
          movq     %r11,0x0338(%rbp)
          call     TL3
          movq     %r10,0x01B8(%rbp)                    # store 03-07
          movq     %r11,0x03B8(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 08           4 096 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00001000,%r8
          movl     $0x00001000,%ebx
          movl     $0x00004000,%edi
          call     TL0
          movq     %r10,0x0040(%rbp)                    # store 00-08
          movq     %r11,0x0240(%rbp)
          call     TL1
          movq     %r10,0x00C0(%rbp)                    # store 01-08
          movq     %r11,0x02C0(%rbp)
          call     TL2
          movq     %r10,0x0140(%rbp)                    # store 02-08
          movq     %r11,0x0340(%rbp)
          call     TL3
          movq     %r10,0x01C0(%rbp)                    # store 03-08
          movq     %r11,0x03C0(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 09           8 192 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00002000,%r8
          movl     $0x00002000,%ebx
          movl     $0x00010000,%edi
          call     TL0
          movq     %r10,0x0048(%rbp)                    # store 00-09
          movq     %r11,0x0248(%rbp)
          call     TL1
          movq     %r10,0x00C8(%rbp)                    # store 01-09
          movq     %r11,0x02C8(%rbp)
          call     TL2
          movq     %r10,0x0148(%rbp)                    # store 02-09
          movq     %r11,0x0348(%rbp)
          call     TL3
          movq     %r10,0x01C8(%rbp)                    # store 03-09
          movq     %r11,0x03C8(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 10          16 384 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00004000,%r8
          movl     $0x00004000,%ebx
          movl     $0x00000000,%edi
          call     TL0
          movq     %r10,0x0050(%rbp)                    # store 00-10
          movq     %r11,0x0250(%rbp)
          call     TL1
          movq     %r10,0x00D0(%rbp)                    # store 01-10
          movq     %r11,0x02D0(%rbp)
          call     TL2
          movq     %r10,0x0150(%rbp)                    # store 02-10
          movq     %r11,0x0350(%rbp)
          call     TL3
          movq     %r10,0x01D0(%rbp)                    # store 03-10
          movq     %r11,0x03D0(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 11          32 768 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00008000,%r8
          movl     $0x00008000,%ebx
          movl     $0x00000000,%edi
          call     TL0
          movq     %r10,0x0058(%rbp)                    # store 00-11
          movq     %r11,0x0258(%rbp)
          call     TL1
          movq     %r10,0x00D8(%rbp)                    # store 01-11
          movq     %r11,0x02D8(%rbp)
          call     TL2
          movq     %r10,0x0158(%rbp)                    # store 02-11
          movq     %r11,0x0358(%rbp)
          call     TL3
          movq     %r10,0x01D8(%rbp)                    # store 03-11
          movq     %r11,0x03D8(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 12          65 536 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00010000,%r8
          movl     $0x00000000,%ebx
          movl     $0x00000000,%edi
          call     TL0
          movq     %r10,0x0060(%rbp)                    # store 00-12
          movq     %r11,0x0260(%rbp)
          call     TL1
          movq     %r10,0x00E0(%rbp)                    # store 01-12
          movq     %r11,0x02E0(%rbp)
          call     TL2
          movq     %r10,0x0160(%rbp)                    # store 02-12
          movq     %r11,0x0360(%rbp)
          call     TL3
          movq     %r10,0x01E0(%rbp)                    # store 03-12
          movq     %r11,0x03E0(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 13         131 072 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00020000,%r8
          movl     $0x00000000,%ebx
          movl     $0x00000000,%edi
          call     TL0
          movq     %r10,0x0068(%rbp)                    # store 00-13
          movq     %r11,0x0268(%rbp)
          call     TL1
          movq     %r10,0x00E8(%rbp)                    # store 01-13
          movq     %r11,0x02E8(%rbp)
          call     TL2
          movq     %r10,0x0168(%rbp)                    # store 02-13
          movq     %r11,0x0368(%rbp)
          call     TL3
          movq     %r10,0x01E8(%rbp)                    # store 03-13
          movq     %r11,0x03E8(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 14         262 144 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00040000,%r8
          movl     $0x00000000,%ebx
          movl     $0x00000000,%edi
          call     TL0
          movq     %r10,0x0070(%rbp)                    # store 00-14
          movq     %r11,0x0270(%rbp)
          call     TL1
          movq     %r10,0x00F0(%rbp)                    # store 01-14
          movq     %r11,0x02F0(%rbp)
          call     TL2
          movq     %r10,0x0170(%rbp)                    # store 02-14
          movq     %r11,0x0370(%rbp)
          call     TL3
          movq     %r10,0x01F0(%rbp)                    # store 03-14
          movq     %r11,0x03F0(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г test 15         524 288 byte Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     $0x00080000,%r8
          movl     $0x00000000,%ebx
          movl     $0x00000000,%edi
          call     TL0
          movq     %r10,0x0078(%rbp)                    # store 00-15
          movq     %r11,0x0278(%rbp)
          call     TL1
          movq     %r10,0x00F8(%rbp)                    # store 01-15
          movq     %r11,0x02F8(%rbp)
          call     TL2
          movq     %r10,0x0178(%rbp)                    # store 02-15
          movq     %r11,0x0378(%rbp)
          call     TL3
          movq     %r10,0x01F8(%rbp)                    # store 03-15
          movq     %r11,0x03F8(%rbp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г free test memory             Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллл
          */
          movq     0x0998(%rsi),%rcx
          call     _LDfre
      FR6:movq     0x0918(%rsi),%rcx
          call     _LDfre
      FR5:movq     0x0898(%rsi),%rcx
          call     _LDfre
      FR4:movq     0x0818(%rsi),%rcx
          call     _LDfre
      FR3:movq     0x0398(%rsi),%rcx
          call     _LDfre
      FR2:movq     0x0318(%rsi),%rcx
          call     _LDfre
      FR1:movq     0x0298(%rsi),%rcx
          call     _LDfre
      FR0:movq     0x0218(%rsi),%rcx             # release buffers
          call     _LDfre
          jmp      XIZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г TLx     test loop xx                                                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RBX   offset run                                                                 Гл
          Г   R08   size                                                                       Гл
          Г   RDI   offset block                                                               Гл
          Г   RSI   BNR                                                                        Гл
          Г   RBP   EA res                                                                     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- R10   best                                                                       Гл
          Г   R11   worst                                                                      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      TL0:subq     $0x08,%rsp
          movq     0x0200(%rsi),%rcx
          movq     0x0800(%rsi),%rdx
          addq     %rdi,%rcx
          addq     %rdi,%rdx
          call     tt0
          movq     %rax,%r10

          addq     %rbx,%rcx
          addq     %rbx,%rdx
          call     tt0
          cmpq     %rax,%r10
          cmova    %rax,%r10

          addq     %rbx,%rcx
          addq     %rbx,%rdx
          call     tt0
          cmpq     %rax,%r10
          cmova    %rax,%r10

          addq     %rbx,%rcx
          addq     %rbx,%rdx
          call     tt0
          cmpq     %rax,%r10
          cmova    %rax,%r10

          call     tt0
          movq     %rax,%r11

          subq     %rbx,%rcx
          subq     %rbx,%rdx
          call     tt0
          cmpq     %rax,%r11
          cmova    %rax,%r11

          subq     %rbx,%rcx
          subq     %rbx,%rdx
          call     tt0
          cmpq     %rax,%r11
          cmova    %rax,%r11

          subq     %rbx,%rcx
          subq     %rbx,%rdx
          call     tt0
          cmpq     %rax,%r11
          cmova    %rax,%r11

          addq     $0x08,%rsp
          ret

          .p2align 4,,15
      TL1:subq     $0x08,%rsp
          movq     0x0280(%rsi),%rcx
          movq     0x0880(%rsi),%rdx
          addq     %rdi,%rcx
          addq     %rdi,%rdx
          call     tt1
          movq     %rax,%r10

          addq     %rbx,%rcx
          addq     %rbx,%rdx
          call     tt1
          cmpq     %rax,%r10
          cmova    %rax,%r10

          addq     %rbx,%rcx
          addq     %rbx,%rdx
          call     tt1
          cmpq     %rax,%r10
          cmova    %rax,%r10

          addq     %rbx,%rcx
          addq     %rbx,%rdx
          call     tt1
          cmpq     %rax,%r10
          cmova    %rax,%r10

          call     tt1
          movq     %rax,%r11

          subq     %rbx,%rcx
          subq     %rbx,%rdx
          call     tt1
          cmpq     %rax,%r11
          cmova    %rax,%r11

          subq     %rbx,%rcx
          subq     %rbx,%rdx
          call     tt1
          cmpq     %rax,%r11
          cmova    %rax,%r11

          subq     %rbx,%rcx
          subq     %rbx,%rdx
          call     tt1
          cmpq     %rax,%r11
          cmova    %rax,%r11

          addq     $0x08,%rsp
          ret

          .p2align 4,,15
      TL2:subq     $0x08,%rsp
          movq     0x0300(%rsi),%rcx
          movq     0x0900(%rsi),%rdx
          addq     %rdi,%rcx
          addq     %rdi,%rdx
          call     tt2
          movq     %rax,%r10

          addq     %rbx,%rcx
          addq     %rbx,%rdx
          call     tt2
          cmpq     %rax,%r10
          cmova    %rax,%r10

          addq     %rbx,%rcx
          addq     %rbx,%rdx
          call     tt2
          cmpq     %rax,%r10
          cmova    %rax,%r10

          addq     %rbx,%rcx
          addq     %rbx,%rdx
          call     tt2
          cmpq     %rax,%r10
          cmova    %rax,%r10

          call     tt2
          movq     %rax,%r11

          subq     %rbx,%rcx
          subq     %rbx,%rdx
          call     tt2
          cmpq     %rax,%r11
          cmova    %rax,%r11

          subq     %rbx,%rcx
          subq     %rbx,%rdx
          call     tt2
          cmpq     %rax,%r11
          cmova    %rax,%r11

          subq     %rbx,%rcx
          subq     %rbx,%rdx
          call     tt2
          cmpq     %rax,%r11
          cmova    %rax,%r11

          addq     $0x08,%rsp
          ret

          .p2align 4,,15
      TL3:subq     $0x08,%rsp
          movq     0x0380(%rsi),%rcx
          movq     0x0980(%rsi),%rdx
          addq     %rdi,%rcx
          addq     %rdi,%rdx
          call     tt3
          movq     %rax,%r10

          addq     %rbx,%rcx
          addq     %rbx,%rdx
          call     tt3
          cmpq     %rax,%r10
          cmova    %rax,%r10

          addq     %rbx,%rcx
          addq     %rbx,%rdx
          call     tt3
          cmpq     %rax,%r10
          cmova    %rax,%r10

          addq     %rbx,%rcx
          addq     %rbx,%rdx
          call     tt3
          cmpq     %rax,%r10
          cmova    %rax,%r10

          call     tt3
          movq     %rax,%r11

          subq     %rbx,%rcx
          subq     %rbx,%rdx
          call     tt3
          cmpq     %rax,%r11
          cmova    %rax,%r11

          subq     %rbx,%rcx
          subq     %rbx,%rdx
          call     tt3
          cmpq     %rax,%r11
          cmova    %rax,%r11

          subq     %rbx,%rcx
          subq     %rbx,%rdx
          call     tt3
          cmpq     %rax,%r11
          cmova    %rax,%r11

          addq     $0x08,%rsp
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г common exit                                                                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
      XIZ:xorq     %rax, %rax
      XIT:movq     0x20(%rsp),%r10
          movq     0x28(%rsp),%r11
          movq     0x30(%rsp),%r12
          movq     0x38(%rsp),%rbp
          movq     0x40(%rsp),%rsi
          movq     0x48(%rsp),%rdi
          movq     0x50(%rsp),%rbx
          movq     0x58(%rsp),%r9
          movq     0x60(%rsp),%r8
          movq     0x68(%rsp),%rdx
          movq     0x70(%rsp),%rcx
          addq     $0x78,%rsp
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BNR, 8, 3
