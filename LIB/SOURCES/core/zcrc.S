          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                          P A R K E D   F U N C T I O N S                           Кл
          КФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФКл
          К                          *** (C) ST-Open 1979 - 2010 ***                           Кл
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
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г CRCtab  create CRC table                   Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   EA table                           Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   always zero                        Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl   _CRCtab
          .def     _CRCtab; .scl 2; .type 32; .endef
  _CRCtab:subq     $0x78, %rsp
          nop
          nop
          movq     %r9, 0x58(%rsp)
          movq     %r8, 0x60(%rsp)
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
          movl     $0xFF,%r9d
          .p2align 4,,10
        0:movl     %r9d, %eax
          movl     $0x07,%edx
          .p2align 4,,10
        1:movl     %eax, %r8d
          andl     $0x01,%eax
          shrl     %r8d
          negl     %eax
          andl     $0xEDB88320,%eax
          xorl     %r8d,%eax
          decl     %edx
          jns      1b
          movl     %eax,0x00(%rcx, %r9, 4)
          decl     %r9d
          jns      0b
          xorl     %eax,%eax
          jmp      XIT4
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г CRC32   calculate CRC32 of given block     Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   EA block                           Гл
          Г   RDX   byte to process                    Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   CRC32                              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl _CRC32
          .def   _CRC32; .scl 2; .type 32; .endef
   _CRC32:subq     $0x78, %rsp
          movq     _BNR(%rip),%rax                      # RAX = BNR
          nop
          movq     %rbx,0x50(%rsp)
          movq     %r9, 0x58(%rsp)
          movq     %r8, 0x60(%rsp)
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
          movq     CRC32T(%rax),%r9                     # R09 = EA CRC table
          movzbl   0x00(%rcx),%ebx                      # RBX = current byte
          movl     $0xFFFFFFFF,%eax                     # EAX = FFFF FFFF
          decl     %edx                                 # zero?
          js       1f
          .p2align 4,,10
        0:movl     %eax,%r8d                            # R08 = tempCRC
          incq     %rcx                                 # RCX = EA next byte
          xorl     %ebx,%eax                            # RAX = tempCRC XOR byte
          movzbl   0x00(%rcx),%ebx                      # RBX = next byte
          movzbl   %al, %eax                            # RAX = low byte tempCRC
          shrl     $0x08,%r8d                           # R08 = tempCRC / 256
          movl     (%r9, %rax, 4),%eax                  # RAX = VAL lookup
          xorl     %r8d,%eax                            # RAX = VAL XOR (tempCRC / 256)
          decl     %edx                                 # count--
          jns      0b
        1:notl     %eax                                 # RAX = NOT tempCRC
          jmp      XIT5
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г common exit                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     XITZ:xorl     %eax,%eax
          movq     0x40(%esp),%rsi
     XIT6:movq     0x48(%esp),%rdi
     XIT5:movq     0x50(%esp),%rbx
     XIT4:movq     0x58(%esp),%r9
     XIT3:movq     0x60(%esp),%r8
     XIT2:movq     0x68(%esp),%rdx
          movq     0x70(%esp),%rcx
          addq     $0x78,%rsp
          ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .comm    _BNR,    8, 3
