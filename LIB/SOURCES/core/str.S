          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЙНННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННН»
          є                       S T R I N G   M A N I P U L A T I O N S                      єЫ
          єДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДєЫ
          є                          *** (C) ST-Open 1979 - 2010 ***                           єЫ
          ИННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННјЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          ЙНННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННН»
          є       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        єЫ
          єДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДєЫ
          є You may copy and distribute this file as often as you want, but recipients are not єЫ
          є allowed to pay anything for any copy of this file or its content. It isn't allowed єЫ
          є to remove parts of this file or add third party content. It isn't allowed to abuse єЫ
          є the copyrighted content or introduced techniques for commercial purposes. Whatever єЫ
          є is derived from this file and its content must be freely available without charge. єЫ
          є You are free to modify the content of this file if you want to. However, derivates єЫ
          є of the content of this file or parts of it *still* are subject to the terms of the єЫ
          є FT4FP license. Recipients neither are allowed to pay anything for the original nor єЫ
          є for altered or derived replica.                                                    єЫ
          єДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДєЫ
          є       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        єЫ
          ИННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННјЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .text
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і SLen    Get length of given string                                                 іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA string                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   string size w/o trailing zero                                              іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і There is a small penalty for unaligned strings. If possible, align strings to mul- іЫ
          і tiples of 16. This should not be a problem, though...                              іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _SLen
          .def     _SLen; .scl 2; .type 32; .endef
    _SLen:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          xorl     %eax,%eax                  # RAX = size
          movq     %rbx, 0x50(%esp)
          movq     %r9,  0x58(%esp)
          movq     %r8,  0x60(%rsp)
          movq     %rdx, 0x68(%rsp)
          movq     %rcx, 0x70(%rsp)
          pxor     %xmm0,%xmm0                # XM0 = mask
          movq     %rcx, %r8                  # R08 = EA source
          andl     $0x0F,%ecx                 # RCX = byte to skip
          je       0f                         # even para
          movl     $0x10,%r9d                 # R09 = 16 byte
          movdqu   0x00(%r8),%xmm1            # XM0 = unaligned para
          subl     %ecx,%r9d                  # RAX = byte in string
          pcmpeqb  %xmm0,%xmm1                # XM1 = mask
          pmovmskb %xmm1,%ebx
          shlw     %cl,%bx                    # remove skipped
          addq     %r9,%r8                    # R08 = aligned
          shrl     %cl,%ebx                   # restore
          jne      1f
          movq     %r9,%rax                   # RAX = size
          .p2align 4,,15
        0:pcmpeqb  0x00(%r8),%xmm0            # XM0 = aligned para
          pmovmskb %xmm0,%ebx
          addq     $0x10,%r8
          addl     $0x10,%eax
          pxor     %xmm0,%xmm0                # XM0 = mask
          testl    %ebx,%ebx
          je       0b
          .p2align 4,,15
        1:bsf      %ebx,%ebx
          addl     %ebx,%eax
          jmp      XIT5
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і SPad    Pad given string with zeroes up to next paragraph boundary                 іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA string                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   padded size                                                                іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Pads the passed string with zeroes up to the next multiple of 16. The last zero is іЫ
          і written to **** ***F[string].                                                      іЫ
          і                                                                                    іЫ
          і If the input contains an empty string, SPad() -doesn't- pad the string and returns іЫ
          і with RAX = zero.                                                                   іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _SPad
          .def     _SPad; .scl 2; .type 32; .endef
    _SPad:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          nop
          movq     %rbx, 0x50(%esp)
          movq     %r9,  0x58(%esp)
          movq     %r8,  0x60(%rsp)
          movq     %rdx, 0x68(%rsp)
          movq     %rcx, 0x70(%rsp)
          xorl     %ebx, %ebx                 # EBX = 0
          xorl     %r8d, %r8d                 # R08 = 0
          movl     $0x0F,%r9d                 # R09 = full para
          movq     %rcx, %rax                 # RAX = EA string
          pxor     %xmm0,%xmm0                # XM0 = mask
          cmpl     $0x00,0x00(%rcx)           # empty string?
          je       3f
          .p2align 4,,15
        0:movdqu   0x00(%rax),%xmm1           # XM1 = para
          pcmpeqb  %xmm0,%xmm1                # XM1 = result
          pmovmskb %xmm1,%ebx                 # RBX = mask
          testl    %ebx,%ebx                  # zero detected?
          jne      1f
          addq     $0x10,%rax                 # RAX = next para
          jmp      0b
          .p2align 4,,15
        1:bsf      %ebx,%ebx                  # RBX = offset zero
          addq     %rbx,%rax                  # RAX = EA zero
          subl     %ebx,%r9d                  # R09 = cnt
          je       3f
        2:movb     %r8b,0x00(%rax)            # pad
          incq     %rax                       # RAX = next byte
          decl     %r9d                       # cnt--
          jns      2b
        3:subq     %rcx,%rax                  # RAX = padded size
          jmp      XIT5
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і SCmp    Compare two strings                                                        іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA string 1                                                                іЫ
          і   RDX   EA string 2                                                                іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 strings are equal                                                іЫ
          і         0000 0001 string 1 > string 2                                              іЫ
          і         0000 0002 string 1 < string 2                                              іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _SCmp
          .def     _SCmp; .scl 2; .type 32; .endef
    _SCmp:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %rbx,0x50(%esp)
          movq     %r9, 0x58(%esp)
          movq     %r8, 0x60(%esp)
          movq     %rdx,0x68(%esp)
          movq     %rcx,0x70(%esp)
        0:pxor     %xmm2,%xmm2
          pxor     %xmm3,%xmm3
          movdqu   0x00(%rcx),%xmm0             # XM0 = para_0
          movdqu   0x00(%rdx),%xmm1             # XM1 = para_1
          pcmpeqb  %xmm0,%xmm2                  # XM2 = zero_0
          pcmpeqb  %xmm1,%xmm3                  # XM3 = zero_1
          pcmpeqb  %xmm0,%xmm1                  # XM1 = equal
          pmovmskb %xmm1,%rax                   # RAX = cmp_eq
          pmovmskb %xmm2,%r8d                   # R08 = zero_0
          pmovmskb %xmm3,%r9d                   # R09 = zero 1
          testl    %eax,%eax                    # equal?
          jne      1f
          testl    %r8d,%r8d                    # 0 end?
          jne      1f
          testl    %r9d,%r9d                    # 1 end?
          jne      1f
          addq     $0x10,%rcx                   # RCX = next 0
          addq     $0x10,%rdx                   # RDX = next 1
          jmp      0b
        1:pcmpgtb  0x00(%rdx),%xmm0             # XM0 = above
          pmovmskb %xmm0,%ecx                   # RCX = cmp_gt
          bsf      %r8d,%r8d                    # zpos_0
          bsf      %r9d,%r9d                    # zpos_1
          testl    %ecx,%ecx                    # gt?
          jne      3f
          testl    %eax,%eax                    # eq?
          jne      2f
          cmpl     %r9d,%r8d                    # same zpos?
          jb       2f
          ja       3f
          xorl     %eax,%eax                    # equal
          jmp      XIT5
        2:movl     $0x02,%eax                   # 1 < 2
          jmp      XIT5
        3:movl     $0x01,%eax                   # 1 > 2
          jmp      XIT5
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і MCmp    Compare two memory blocks                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA memory block 1                                                          іЫ
          і   RDX   EA memory block 2                                                          іЫ
          і   R08   size (multiple of 16!)                                                     іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 blocks are equal                                                 іЫ
          і         **** **** blocks differ                                                    іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і If size is not a multiple of 16, superflouos byte up to the next paragraph boundry іЫ
          і can lead to an invalid result. Clear trailing data before calling MCmp()!          іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _MCmp
          .def     _MCmp; .scl 2; .type 32; .endef
    _MCmp:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %r9, 0x58(%rsp)
          movq     %r8, 0x60(%rsp)
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
          shrq     $0x04,%r8                    # R08 = paragraphs
          je       XIT4
        0:movdqu   0x00(%rcx),%xmm0             # XM0 = para_0
          pcmpgtb  0x00(%rdx),%xmm0             # XM0 = eq_0
          pmovmskb %xmm0,%eax                   # RAX = cmp_eq
          addq     $0x10,%rcx                   # RCX = next para
          addq     $0x10,%rdx                   # RDX = next para
          testl    %eax,%eax                    # equal?
          jne      XIT4
          decq     %r8                          # paras--
          jns      0b
          jmp      XIT4
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і SCpy    Copy string 1 to string 2          іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> PAR1  address target                     іЫ
          і   PAR2  address source                     іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- EAX   0000 0000   always zero            іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
             ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _SCpy
          .def     _SCpy; .scl 2; .type 32; .endef
    _SCpy:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %rbx,0x50(%rsp)
          movq     %r9, 0x58(%rsp)
          movq     %r8, 0x60(%rsp)
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
        0:movb     0x00(%rcx),%al              # read  src
          movb     0x01(%rcx),%bl
          movb     0x02(%rcx),%r8b
          movb     0x03(%rcx),%r9b
          movb     %al, 0x00(%rdx)              # write tgt
          movb     %bl, 0x01(%rdx)
          movb     %r8b,0x02(%rdx)
          movb     %r9b,0x03(%rdx)
          testb    %al,%al                    # end reached?
          je       1f
          testb    %bl,%bl
          je       1f
          testb    %r8b,%r8b
          je       1f
          testb    %r9b,%r9b
          je       1f
          addq     $0x04,%rcx                 # src + 4
          addq     $0x04,%rdx                 # tgt + 4
          jmp      0b
        1:xorl     %eax,%eax
          jmp      XIT5
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і SAdd    Add string 1 to string 2           іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> PAR1  EA target                          іЫ
          і   PAR2  EA source (string to append)       іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- EAX   0000 0000                          іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
             ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _SAdd
          .def     _SAdd; .scl 2; .type 32; .endef
    _SAdd:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %rbx,0x50(%rsp)
          movq     %r9, 0x58(%rsp)
          movq     %r8, 0x60(%rsp)
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
        0:movq     0x00(%rcx),%rax            # RAX = qword
          movl     $0x08,%ebx                 # RBX = scnt
        1:testq    $0xFF,%rax                 # end?
          je       2f
          incq     %rcx
          decl     %ebx
          jne      1b
          jmp      0b
        2:movb     0x00(%rcx),%al              # read  src
          movb     0x01(%rcx),%bl
          movb     0x02(%rcx),%r8b
          movb     0x03(%rcx),%r9b
          movb     %al, 0x00(%rdx)              # write tgt
          movb     %bl, 0x01(%rdx)
          movb     %r8b,0x02(%rdx)
          movb     %r9b,0x03(%rdx)
          testb    %al,%al                    # end reached?
          je       3f
          testb    %bl,%bl
          je       3f
          testb    %r8b,%r8b
          je       3f
          testb    %r9b,%r9b
          je       3f
          addq     $0x04,%rcx                 # src + 4
          addq     $0x04,%rdx                 # tgt + 4
          jmp      2b
        3:xorl     %eax,%eax
          jmp      XIT5
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і SCut    Cut chars out of string            іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДіЫ
          і-> RCX   EA source                          іЫ
          і   RDX   offset where cut starts (base 0)   іЫ
          і   R08   byte to cut                        іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   always zero                        іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
             ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _SCut
          .def     _SCut; .scl 2; .type 32; .endef
    _SCut:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          nop
          movq     %rdi,0x48(%rsp)
          movq     %rbx,0x50(%rsp)
          movq     %r9, 0x58(%rsp)
          movq     %r8, 0x60(%rsp)
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
          movq     %rcx,%r9                   # R09 = source
          xorl     %edi,%edi                  # RDI = size
          addq     %rdx,%rcx                  # RCX = EA cut point
        0:movq     0x00(%r9),%rax             # RAX = qword
          movl     $0x08,%ebx                 # EBX = scnt
        1:incq     %r9                        # R09 = EA++
          incl     %edi                       # RDI = size++
          testq    $0xFF,%rax                 # end?
          je       2f
          shrq     $0x08,%rax                 # next byte
          decl     %ebx                       # scnt--
          jne      1b
          jmp      0b
        2:movq     %r9, %rbx                  # RBX = EA string end
          subl     %edx,%edi                  # RDI = size - offset
          ja       5f
          subl     %r8d,%edi                  # RDI = byte to move
          jbe      4f
          subq     %rdi,%rbx                  # RBX = cut target
        3:movb     0x00(%r9),%al              # cut off
          movb     %al,0x00(%rbx)
          decq     %r9
          decq     %rbx
          decl     %edi
          jne      3b
          jmp      5f
        4:movb     $0x00,0x00(%rcx)
        5:xorl     %eax,%eax
          jmp      XIT6
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і SInc    Test if source contains pattern    іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA target                          іЫ
          і   RDX   EA pattern                         іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- EAX   FFFF FFFF   does not match         іЫ
          і         **** ****   offset match           іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
             ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _SInc
          .def     _SInc; .scl 2; .type 32; .endef
    _SInc:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %rdi,0x48(%rsp)
          movq     %rbx,0x50(%rsp)
          movq     %r9, 0x58(%rsp)
          movq     %r8, 0x60(%rsp)
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
          xorl     %eax,%eax
          xorl     %ebx,%ebx
          xorl     %r8d,%r8d                  # R08 = offset
        0:movb     0x00(%rdx),%bl             # 1st byte pattern
        1:movb     0x00(%rcx),%al             # scan for match
          incl     %r8d                       # count++
          incq     %rcx                       # source++
          testb    %al,%al                    # string end?
          je       5f
          cmpb     %al,%bl                    # equal?
          jne      1b
          leaq     0x01(%rdx),%r9             # R09 = EA pattern + 1
          movq     %rcx,%rdi                  # RDI = EA current
        2:movb     0x00(%r9), %bl             # next byte pattern
          movb     0x00(%rdi),%al             # next byte source
          incq     %r9
          incq     %rdi
          testb    %bl,%bl                    # pattern end?
          je       4f
          testb    %al,%al                    # string end?
          je       5f
          cmpb     %al,%bl                    # match?
          je       2b
          jmp      0b
        4:movl     %r8d,%eax
        5:decq     %rax
          jmp      XIT6
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і SIns    Insert string 2 into string 1      іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA target                          іЫ
          і   RDX   EA pattern                         іЫ
          і   R08   position for insert (zero based)   іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   always zero                        іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і If PAR3 is beyond the target's end, SIns() іЫ
          і appends the pattern like SAdd().           іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
             ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _SIns
          .def     _SIns; .scl 2; .type 32; .endef
    _SIns:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %rsi,0x40(%rsp)
          movq     %rdi,0x48(%rsp)
          movq     %rbx,0x50(%rsp)
          movq     %r9, 0x58(%rsp)
          movq     %r8, 0x60(%rsp)
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
          addq     %rcx,%r8                   # R08 = EA insertion point
          xorl     %esi,%esi                  # ESI = pattern size
          negq     %r8                        # R08 = EA -(insertion point)
        0:movq     0x00(%rdx),%rax            # get qword
          movl     $0x08,%ebx
        1:testq    $0xFF,%rax                 # pattern end?
          je       2f
          incl     %esi                       # pattern size++
          incq     %rdx                       # pattern++
          shrq     $0x08,%rax                 # next byte
          decl     %ebx                       # cnt--
          je       0b
          jmp      1b
        2:movq     0x00(%rcx),%rax            # get qword
          movl     $0x08,%ebx
        3:incq     %rcx                       # target++
          testq    $0xFF,%rax                 # target end?
          je       4f
          shrq     $0x08,%rax                 # next byte
          decl     %ebx                       # cnt--
          je       2b
          jmp      3b
        4:movl     $0x01,%eax                 # EAX = 1
          leaq     (%rcx, %rsi, 1),%r9        # R09 = EA new end
          addq     %rcx,%r8                   # R08 = byte to move up
          cmovbe   %rax,%r8
        5:movb     0x00(%rcx),%al             # shuffle down
          movb     %al,0x00(%r9)
          decq     %rcx
          decq     %r9
          decq     %r8
          jne      5b
        6:movb     0x00(%rdx),%al             # shuffle down
          movb     %al,0x00(%r9)
          decq     %rdx
          decq     %r9
          decq     %r8
          jne      6b
          jmp      XITZ
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і CRLF    add CR-LF to string end            іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA target                          іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   always zero                        іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
             ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _CRLF
          .def     _CRLF; .scl 2; .type 32; .endef
    _CRLF:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          nop
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
        0:movq     0x00(%rcx),%rax            # RAX = qword
          movl     $0x08,%edx                 # RDX = ror_cnt
        1:testq    $0xFF,%rax                 # string end?
          je       2f
          rorq     $0x08,%rax                 # RAX = next byte
          incq     %rcx                       # RCX = EA last char
          decl     %edx                       # RDX = ror_cnt--
          jne      1b
          jmp      0b
        2:xorl     %eax,%eax
          movb     $0x0D,0x00(%rcx)
          movb     $0x0A,0x01(%rcx)
          movb     $0x00,0x02(%rcx)
          jmp      XIT2
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і EOF     add EOF to string end              іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA target                          іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- EAX   always zero                        іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
             ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _EOF
          .def     _EOF; .scl 2; .type 32; .endef
     _EOF:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          nop
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
        0:movq     0x00(%rcx),%rax            # RAX = qword
          movl     $0x08,%edx                 # RDX = ror_cnt
        1:testq    $0xFF,%rax                 # string end?
          je       2f
          rorq     $0x08,%rax                 # RAX = next byte
          incq     %rcx                       # RCX = EA last char
          decl     %edx                       # RDX = ror_cnt--
          jne      1b
          jmp      0b
        2:xorl     %eax,%eax
          cmpb     $0x1A,0x00(%rcx)           # EOF present?
          je       XIT2
          movw     $0x1A,0x00(%rcx)
          jmp      XIT2
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і StrAt    overwrite target with pattern     іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX    EA target                         іЫ
          і   RDX       pattern                        іЫ
          і   R08    offset (zero based)               іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   always zero                        іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Overwrite target with pattern, starting at іЫ
          і offset. The trailing zero of pattern isn't іЫ
          і copied (target is not truncated).          іЫ
          і                                            іЫ
          і The target buffer *must* have a size of at іЫ
          і least [pattern size + offset]!             іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
             ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _StrAt
          .def     _StrAt; .scl 2; .type 32; .endef
   _StrAt:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %r9, 0x58(%rsp)
          movq     %r8, 0x60(%rsp)
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
          xorl     %eax,%eax
          addq     %r8, %rcx
        0:movb     0x00(%rdx),%al
          movb     0x01(%rdx),%r8b
          movb     0x02(%rdx),%r9b
          testb    %al,%al
          je       XIT4
          movb     %al, 0x00(%rcx)
          testb    %r8b,%r8b
          je       XIT4
          movb     %r8b,0x01(%rcx)
          testb    %r9b,%r9b
          je       XIT4
          movb     %r9b,0x02(%rcx)
          addq     $0x03,%rdx
          addq     $0x03,%rcx
          jmp      0b
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і CntWrd  count words                        іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA source                          іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   words found                        іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Counts words in source. Word is defined as іЫ
          і a bunch of characters separated by blanks. іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _CntWrd
          .def     _CntWrd; .scl 2; .type 32; .endef
  _CntWrd:subq     $0x78,%rsp
          xorl     %eax,%eax                  # EAX = word count
          prefetch 0x00(%rcx)
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
        0:movb     0x00(%rcx),%dl             # scan through string
          incq     %rcx                       # RCX = EA next
          testb    %dl,%dl                    # string end?
          je       XIT2
          cmpb     $0x20,%dl                  # control or blank?
          jbe      0b
          incl     %eax                       # we found a word
        1:movb     0x00(%rcx),%dl             # proceed to end
          incq     %rcx                       # RCX = EA next
          testb    %dl,%dl                    # string end?
          je       XIT2
          cmpb     $0x20,%dl                  # above blank?
          ja       1b
          jmp      0b
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Supp    convert to upper case              іЫ
          і Slow    convert to lower case              іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA source                          іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   always zero                        іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і All ASCII codes are converted properly!    іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
             ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _Supp
          .def     _Supp; .scl 2; .type 32; .endef
    _Supp:movl     $0x1200,%eax
          jmp      0f
          .p2align 4,,15
          .globl   _Slow
          .def     _Slow; .scl 2; .type 32; .endef
    _Slow:movl     $0x1300,%eax
        0:subq     $0x78,%rsp
          addq     _BNR(%rip),%rax
          prefetch 0x00(%rcx)
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
          movq     %rax,%rdx                  # RDX = EA LUT
        1:movzb    0x00(%rcx),%eax            # RAX = char
          testl    %eax,%eax                  # string end?
          je       XIT2
          movzb    0x00(%rdx, %rax, 1),%eax   # convert
          movb     %al,0x00(%rcx)             # store
          incq     %rcx                       # RCX = EA + 1
          jmp      1b
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і SFill   fill string with ASCII character   іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA target                          іЫ
          і   RDX   start        (zero based offset)   іЫ
          і   R08   byte to fill                       іЫ
          і   R09   ASCII                              іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- EAX   always zero                        іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і CAUTION: PAR2 + PAR3 should not exceed the іЫ
          і          size of the target string!        іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
             ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _SFill
          .def     _SFill; .scl 2; .type 32; .endef
   _SFill:subq     $0x78,%rsp
          xorl     %eax,%eax
          prefetch 0x00(%rcx)
          movq     %r9, 0x58(%esp)
          movq     %r8, 0x60(%esp)
          movq     %rdx,0x68(%esp)
          movq     %rcx,0x70(%esp)
        0:movb     %r9b,0x00(%rcx, %rdx, 1)
          incl     %edx
          decl     %r8d
          jne      0b
          jmp      XIT2
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і                   D I R E C T   A C C E S S   ( R E M A I N S )                    іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Mcl     clear memory block                 іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA target                          іЫ
          і   RDX   byte to clear                      іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   always zero                        іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і PAR1 must be a multiple of 64. If you want іЫ
          і to clear less than 64 byte, use SClr(). If іЫ
          і RDX is less than 64, nothing is cleared at іЫ
          і all. Only the low 32 bit of RDX are used!  іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _Mcl
          .def     _Mcl; .scl 2; .type 32; .endef
     _Mcl:subq     $0x78,%rsp
          prefetch 0x00(%rcx)
          xorl     %eax,%eax                  # RAX = 0
          movq     %rdx,0x68(%rsp)
          movq     %rcx,0x70(%rsp)
          pxor     %xmm0,%xmm0
          pxor     %xmm1,%xmm1
          pxor     %xmm2,%xmm2
          pxor     %xmm3,%xmm3
          shrl     $0x06,%edx
          je       XIT2
        0:prefetch 0x40(%rcx)
          movntdq  %xmm0,0x00(%rcx)
          movntdq  %xmm1,0x10(%rcx)
          movntdq  %xmm2,0x20(%rcx)
          movntdq  %xmm3,0x30(%rcx)
          addq     $0x40,%rcx
          decl     %edx
          jne      0b
          jmp      XIT2
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і                               C O M M O N   E X I T                                іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
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
          ЙНННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННН»
          ИННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННјЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .comm    _BNR, 8, 3
