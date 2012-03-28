          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                               B E N C H M A R K    (C) ST-Open 1979 - 2011
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                  THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE
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
                  FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          .include "tst.h"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .section .rdata, "dr"
          .p2align 4, 0x00, 15
     LC00:.quad    0x0123456789ABCDEF, 0xFEDCBA9876543210
          .quad    0x0000000098765432, 0x00000000DEADBEEF
          .quad    0xAFFEDEADDEADAFFE, 0xCAFFEEDEADCAFFEE
          .quad    0xFC111111222222CF, 0x0696969696969696
          .quad    0x1A1A1A1A1A1A1A1A, 0x1234567812345678
          .quad    0x8765432187654321, 0x9999888877776666
          .quad    0x3333222211110000, 0x0000000000000000
          .quad    0x4334211256657887, 0x8778655643341221

          .quad    0x0123456789ABCDEF, 0xFEDCBA9876543210
          .quad    0x1234567898765432, 0xDEADBEEFDEADBEEF
          .quad    0xAFFEDEADDEADAFFE, 0xCAFFEEDEADCAFFEE
          .quad    0xFC111111222222CF, 0x0696969696969696
          .quad    0x1A1A1A1A1A1A1A1A, 0x1234567812345678
          .quad    0x8765432187654321, 0x9999888877776666
          .quad    0x3333222211110000, 0x0000000000000000
          .quad    0x4334211256657887, 0x8778655643341221

     LC01:.ascii   "01 23 45 67 89 AB CD EF FE DC BA 98 76 54 32 10 "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "FE DC BA 98 76 54 32 10 01 23 45 67 89 AB CD EF "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "99 88 77 66 55 44 33 22 11 00 FF EE DD CC BB AA "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "66 55 44 33 22 11 00 FF EE DD CC BB AA 99 88 77 "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "99 88 77 66 55 44 33 22 22 11 00 FF EE DD CC 99 "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "66 55 44 33 22 22 11 FF 00 11 22 33 44 22 33 44 "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "AB CD EF 09 87 65 43 21 FE DC BA 89 67 45 23 10 "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "22 22 11 FF 00 11 22 22 22 11 FF 00 11 22 22 22 "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "FF FF FF FF 00 00 00 00 FF FF FF FF 00 00 00 00 "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "00 00 00 00 FF FF FF FF 00 00 00 00 FF FF FF FF "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "FF FF 00 00 FF FF 00 00 FF FF 00 00 FF FF 00 00 "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF 00 FF "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          .ascii   "00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 "
          .long    0x20200A0D, 0x00, 0x00, 0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            tstX    test main loop
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> -
               -
               -
               -
               RSI   BNR
               RBP   EA_RBF
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .def     tstX; .scl 2; .type 32; .endef
     tstX:subq     $0x78,        %rsp
          movq     %r9,          0x58(%rsp)
          movq     %r8,          0x60(%rsp)
          movq     %rdx,         0x68(%rsp)
          movq     %rcx,         0x70(%rsp)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            prepare
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     %rbp,         %rcx            # RCX = EA_RESULTS
          leaq     0x0400(%rbp), %rdx            # RDI = EA_FCT_OUT
          leaq     LC01(%rip),   %r8             # R08 = EA_NUMBERS
          movq     $0x10,        %r9             # R09 = iterations
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            1st run
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          call     tst0
          addq     $0x0040,      %rcx            # RCX = next results
          addq     $TBUF_S,      %rdx            # RDX =      buffers
          call     tst1
          addq     $0x0040,      %rcx            # RCX = next results
          addq     $TBUF_S,      %rdx            # RDX =      buffers
          call     tst2
          addq     $0x0040,      %rcx            # RCX = next results
          addq     $TBUF_S,      %rdx            # RDX =      buffers
          call     tst3
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            2nd run
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          addq     $0x0040,      %rcx            # RCX = 2nd  results
          addq     $TBUF_S,      %rdx            # RDX =      buffers
          call     tst0
          addq     $0x0040,      %rcx            # RCX = next results
          addq     $TBUF_S,      %rdx            # RDX =      buffers
          call     tst1
          addq     $0x0040,      %rcx            # RCX = next results
          addq     $TBUF_S,      %rdx            # RDX =      buffers
          call     tst2
          addq     $0x0040,      %rcx            # RCX = next results
          addq     $TBUF_S,      %rdx            # RDX =      buffers
          call     tst3
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            store results
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     %rbp,         %rcx            # RCX = EA_RBF
          movl     $TFIL_S,      %edx            # RDX = file size
          call     _MemDmp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     0x58(%rsp),   %r9
          movq     0x60(%rsp),   %r8
          movq     0x68(%rsp),   %rdx
          movq     0x70(%rsp),   %rcx
          xorl     %eax,         %eax
          addq     $0x78,        %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
