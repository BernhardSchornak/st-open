          /*
            ==================================================================================
                            S T R I N G   F U N C T I O N S   (C) ST-Open 2012
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
          .include "..\\..\\..\\include\\yasm.h"
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SLen    Get length of given string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   string size w/o trailing zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            There is a small penalty for unaligned strings. If possible, align strings to mul-
            tiples of 16. This should not be a problem, though...
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SLen
          .def     _SLen; .scl 2; .type 32; .endef
    _SLen:subq     $0x78,               %rsp
          prefetch 0x00(%rcx)
          xorl     %eax,                %eax             # RAX = size
          movq     %rbx,                0x50(%esp)
          movq     %r9,                 0x58(%esp)
          movq     %r8,                 0x60(%rsp)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
          pxor     %xmm0,               %xmm0            # XM0 = mask
          movq     %rcx,                %r8              # R08 = EA source
          andl     $0x0F,               %ecx             # RCX = byte to skip
          je       0f                                    # even para
          movl     $0x10,               %r9d             # R09 = 16 byte
          movdqu   0x00(%r8),           %xmm1            # XM0 = unaligned para
          subl     %ecx,                %r9d             # RAX = byte in string
          pcmpeqb  %xmm0,               %xmm1            # XM1 = mask
          pmovmskb %xmm1,               %ebx
          shlw     %cl,                 %bx              # remove skipped
          addq     %r9,                 %r8              # R08 = aligned
          shrl     %cl,                 %ebx             # restore
          jne      1f
          movq     %r9,                 %rax             # RAX = size
          .p2align 4,,15
        0:pcmpeqb  0x00(%r8),           %xmm0            # XM0 = aligned para
          pmovmskb %xmm0,               %ebx
          addq     $0x10,               %r8
          addl     $0x10,               %eax
          pxor     %xmm0,               %xmm0            # XM0 = mask
          testl    %ebx,                %ebx
          je       0b
          subl     $0x10,               %eax             # RAX - last para
          .p2align 4,,15
        1:bsf      %ebx,                %ebx
          addl     %ebx,                %eax
          jmp      XIT5
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SPad    Pad given string with zeroes up to next paragraph boundary
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   padded size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Pads the passed string with zeroes up to the next multiple of 16. The last zero is
            written to **** ***F[string]. If the first byte is zero, the -entire- paragraph is
            padded with 16 zeroes!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SPad
          .def     _SPad; .scl 2; .type 32; .endef
    _SPad:subq     $0x78,               %rsp
          movdqu   0x00(%rcx),          %xmm1            # XM1 = para
          movq     _BNR(%rip),          %rax             # RAX = BNR
          movq     %r9,                 0x58(%esp)
          movq     %r8,                 0x60(%rsp)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
          pxor     %xmm0,               %xmm0            # XM0 = mask
          leaq     CVTCUT(%rax),        %r9              # R09 = EA CVTCUT
          movl     $0x10,               %eax             # RAX = padded size
          .p2align 4,,15
        0:pcmpeqb  %xmm0,               %xmm1            # XM1 = result
          pmovmskb %xmm1,               %r8d             # RBX = mask
          testq    %r8,                 %r8              # zero detected?
          jne      1f
          addq     $0x10,               %rcx             # R09 = next para
          addl     $0x10,               %eax             # RAX = padded size
          movdqu   0x00(%rcx),          %xmm1            # XM1 = para
          jmp      0b
          .p2align 4,,15
        1:bsf      %r8d,                %r8d             # R08 = offset zero
          movdqu   0x00(%rcx),          %xmm1            # XM1 = para
          shlq     %r8
          pand     0x00(%r9, %r8, 8),   %xmm1
          movdqu   %xmm1,               0x00(%rcx)
          jmp      XIT4
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SCmp    Compare two strings
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA string 1
               RDX   EA string 2
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 strings are equal
                     0000 0001 string 1 > string 2
                     0000 0002 string 1 < string 2
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SCmp
          .def     _SCmp; .scl 2; .type 32; .endef
    _SCmp:subq     $0x78,               %rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %rbx,                0x50(%esp)
          movq     %r9,                 0x58(%esp)
          movq     %r8,                 0x60(%esp)
          movq     %rdx,                0x68(%esp)
          movq     %rcx,                0x70(%esp)
        0:pxor     %xmm2,               %xmm2
          pxor     %xmm3,               %xmm3
          movdqu   0x00(%rcx),          %xmm0            # XM0 = para_0
          movdqu   0x00(%rdx),          %xmm1            # XM1 = para_1
          pcmpeqb  %xmm0,               %xmm2            # XM2 = zero_0
          pcmpeqb  %xmm1,               %xmm3            # XM3 = zero_1
          pcmpeqb  %xmm0,               %xmm1            # XM1 = equal
          pmovmskb %xmm1,               %rax             # RAX = cmp_eq
          pmovmskb %xmm2,               %r8d             # R08 = zero_0
          pmovmskb %xmm3,               %r9d             # R09 = zero 1
          testl    %eax,                %eax             # equal?
          jne      1f
          testl    %r8d,                %r8d             # 0 end?
          jne      1f
          testl    %r9d,                %r9d             # 1 end?
          jne      1f
          addq     $0x10,               %rcx             # RCX = next 0
          addq     $0x10,               %rdx             # RDX = next 1
          jmp      0b
        1:pcmpgtb  0x00(%rdx),          %xmm0            # XM0 = above
          pmovmskb %xmm0,               %ecx             # RCX = cmp_gt
          bsf      %r8d,                %r8d             # zpos_0
          bsf      %r9d,                %r9d             # zpos_1
          testl    %ecx,                %ecx             # gt?
          jne      3f
          testl    %eax,                %eax             # eq?
          jne      2f
          cmpl     %r9d,                %r8d             # same zpos?
          jb       2f
          ja       3f
          xorl     %eax,                %eax             # equal
          jmp      XIT5
        2:movl     $0x02,               %eax             # 1 < 2
          jmp      XIT5
        3:movl     $0x01,               %eax             # 1 > 2
          jmp      XIT5
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MCmp    Compare two memory blocks
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA memory block 1
               RDX   EA memory block 2
               R08   size (multiple of 16!)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 blocks are equal
                     **** **** blocks differ
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            If size is not a multiple of 16, superflouos byte up to the next paragraph boundry
            can lead to an invalid result. Clear trailing data before calling MCmp()!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _MCmp
          .def     _MCmp; .scl 2; .type 32; .endef
    _MCmp:subq     $0x78,               %rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %r9,                 0x58(%rsp)
          movq     %r8,                 0x60(%rsp)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
          shrq     $0x04,               %r8              # R08 = paragraphs
          je       XIT4
        0:movdqu   0x00(%rcx),          %xmm0            # XM0 = para_0
          pcmpgtb  0x00(%rdx),          %xmm0            # XM0 = eq_0
          pmovmskb %xmm0,               %eax             # RAX = cmp_eq
          addq     $0x10,               %rcx             # RCX = next para
          addq     $0x10,               %rdx             # RDX = next para
          testl    %eax,                %eax             # equal?
          jne      XIT4
          decq     %r8                                   # paras--
          jns      0b
          jmp      XIT4
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SCpy    Copy string 1 to string 2
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> PAR1  address target
               PAR2  address source
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   0000 0000   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SCpy
          .def     _SCpy; .scl 2; .type 32; .endef
    _SCpy:subq     $0x78,               %rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %rbx,                0x50(%rsp)
          movq     %r9,                 0x58(%rsp)
          movq     %r8,                 0x60(%rsp)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
        0:movb     0x00(%rcx),          %al              # read  src
          movb     0x01(%rcx),          %bl
          movb     0x02(%rcx),          %r8b
          movb     0x03(%rcx),          %r9b
          movb     %al,                 0x00(%rdx)       # write tgt
          movb     %bl,                 0x01(%rdx)
          movb     %r8b,                0x02(%rdx)
          movb     %r9b,                0x03(%rdx)
          testb    %al,                 %al              # end reached?
          je       1f
          testb    %bl,                 %bl
          je       1f
          testb    %r8b,                %r8b
          je       1f
          testb    %r9b,                %r9b
          je       1f
          addq     $0x04,               %rcx             # src + 4
          addq     $0x04,               %rdx             # tgt + 4
          jmp      0b
        1:xorl     %eax,                %eax
          jmp      XIT5
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SAdd    Add string 1 to string 2
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA target
               RDX   EA source (string to append)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   0000 0000
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SAdd
          .def     _SAdd; .scl 2; .type 32; .endef
    _SAdd:subq     $0x78,               %rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %rbx,                0x50(%rsp)
          movq     %r9,                 0x58(%rsp)
          movq     %r8,                 0x60(%rsp)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
        0:movq     0x00(%rcx),          %rax             # RAX = qword
          movl     $0x08,               %ebx             # RBX = scnt
        1:testq    $0xFF,               %rax             # end?
          je       2f
          shrq     $0x08,               %rax
          incq     %rcx
          decl     %ebx
          jne      1b
          jmp      0b
        2:movb     0x00(%rdx),          %al              # read  src
          movb     0x01(%rdx),          %bl
          movb     0x02(%rdx),          %r8b
          movb     0x03(%rdx),          %r9b
          movb     %al,                 0x00(%rcx)       # write tgt
          movb     %bl,                 0x01(%rcx)
          movb     %r8b,                0x02(%rcx)
          movb     %r9b,                0x03(%rcx)
          testb    %al,                 %al              # end reached?
          je       3f
          testb    %bl,                 %bl
          je       3f
          testb    %r8b,                %r8b
          je       3f
          testb    %r9b,                %r9b
          je       3f
          addq     $0x04,               %rcx             # src + 4
          addq     $0x04,               %rdx             # tgt + 4
          jmp      2b
        3:xorl     %eax,                %eax
          jmp      XIT5
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SCut    Cut chars out of string
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA source
               RDX   offset where cut starts (base 0)
               R08   byte to cut
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SCut
          .def     _SCut; .scl 2; .type 32; .endef
    _SCut:subq     $0x78,               %rsp
          prefetch 0x00(%rcx)
          movq     %rdi,                0x48(%rsp)
          movq     %rbx,                0x50(%rsp)
          movq     %r9,                 0x58(%rsp)
          movq     %r8,                 0x60(%rsp)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
          movq     %rcx,                %r9              # R09 = source
          xorl     %edi,                %edi             # RDI = size
          addq     %rdx,                %rcx             # RCX = EA cut point
        0:movq     0x00(%r9),           %rax             # RAX = qword
          movl     $0x08,               %ebx             # EBX = scnt
        1:incq     %r9                                   # R09 = EA++
          incl     %edi                                  # RDI = size++
          testq    $0xFF,               %rax             # end?
          je       2f
          shrq     $0x08,               %rax             # next byte
          decl     %ebx                                  # scnt--
          jne      1b
          jmp      0b
        2:movq     %r9,                 %rbx             # RBX = EA string end
          subl     %edx,                %edi             # RDI = size - offset
          ja       5f
          subl     %r8d,                %edi             # RDI = byte to move
          jbe      4f
          subq     %rdi,                %rbx             # RBX = cut target
        3:movb     0x00(%r9),           %al              # cut off
          movb     %al,                 0x00(%rbx)
          decq     %r9
          decq     %rbx
          decl     %edi
          jne      3b
          jmp      5f
        4:movb     $0x00,               0x00(%rcx)
        5:xorl     %eax,                %eax
          jmp      XIT6
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SInc    Test if source contains pattern
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA target
               RDX   EA pattern
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   FFFF FFFF   does not match
                     **** ****   offset match
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SInc
          .def     _SInc; .scl 2; .type 32; .endef
    _SInc:subq     $0x78,               %rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %rdi,                0x48(%rsp)
          movq     %rbx,                0x50(%rsp)
          movq     %r9,                 0x58(%rsp)
          movq     %r8,                 0x60(%rsp)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
          xorl     %eax,                %eax
          xorl     %ebx,                %ebx
          xorl     %r8d,                %r8d             # R08 = offset
        0:movb     0x00(%rdx),          %bl              # 1st byte pattern
        1:movb     0x00(%rcx),          %al              # scan for match
          incl     %r8d                                  # count++
          incq     %rcx                                  # source++
          testb    %al,                 %al              # string end?
          je       5f
          cmpb     %al,                 %bl              # equal?
          jne      1b
          leaq     0x01(%rdx),          %r9              # R09 = EA pattern + 1
          movq     %rcx,                %rdi             # RDI = EA current
        2:movb     0x00(%r9),           %bl              # next byte pattern
          movb     0x00(%rdi),          %al              # next byte source
          incq     %r9
          incq     %rdi
          testb    %bl,                 %bl              # pattern end?
          je       4f
          testb    %al,                 %al              # string end?
          je       5f
          cmpb     %al,                 %bl              # match?
          je       2b
          jmp      0b
        4:movl     %r8d,                %eax
        5:decq     %rax
          jmp      XIT6
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SIns    Insert string 2 into string 1
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA target
               RDX   EA pattern
               R08   position for insert (zero based)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            If PAR3 is beyond the target's end, SIns()
            appends the pattern like SAdd().
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SIns
          .def     _SIns; .scl 2; .type 32; .endef
    _SIns:subq     $0x78,               %rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %rsi,                0x40(%rsp)
          movq     %rdi,                0x48(%rsp)
          movq     %rbx,                0x50(%rsp)
          movq     %r9,                 0x58(%rsp)
          movq     %r8,                 0x60(%rsp)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
          addq     %rcx,                %r8              # R08 = EA insertion point
          xorl     %esi,                %esi             # ESI = pattern size
          negq     %r8                                   # R08 = EA -(insertion point)
        0:movq     0x00(%rdx),          %rax             # get qword
          movl     $0x08,               %ebx
        1:testq    $0xFF,               %rax             # pattern end?
          je       2f
          incl     %esi                                  # pattern size++
          incq     %rdx                                  # pattern++
          shrq     $0x08,               %rax             # next byte
          decl     %ebx                                  # cnt--
          je       0b
          jmp      1b
        2:movq     0x00(%rcx),          %rax             # get qword
          movl     $0x08,               %ebx
        3:incq     %rcx                                  # target++
          testq    $0xFF,               %rax             # target end?
          je       4f
          shrq     $0x08,               %rax             # next byte
          decl     %ebx                                  # cnt--
          je       2b
          jmp      3b
        4:movl     $0x01,               %eax             # EAX = 1
          leaq     (%rcx, %rsi, 1),     %r9              # R09 = EA new end
          addq     %rcx,                %r8              # R08 = byte to move up
          cmovbe   %rax,                %r8
        5:movb     0x00(%rcx),          %al              # shuffle down
          movb     %al,                 0x00(%r9)
          decq     %rcx
          decq     %r9
          decq     %r8
          jne      5b
        6:movb     0x00(%rdx),          %al              # shuffle down
          movb     %al,                 0x00(%r9)
          decq     %rdx
          decq     %r9
          decq     %r8
          jne      6b
          jmp      XITZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CRLF    add CR-LF to string end
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA target
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _CRLF
          .def     _CRLF; .scl 2; .type 32; .endef
    _CRLF:subq     $0x78,               %rsp
          prefetch 0x00(%rcx)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
        0:movq     0x00(%rcx),          %rax             # RAX = qword
          movl     $0x08,               %edx             # RDX = ror_cnt
        1:testq    $0xFF,               %rax             # string end?
          je       2f
          rorq     $0x08,               %rax             # RAX = next byte
          incq     %rcx                                  # RCX = EA last char
          decl     %edx                                  # RDX = ror_cnt--
          jne      1b
          jmp      0b
        2:xorl     %eax,                %eax
          movb     $0x0D,               0x00(%rcx)
          movb     $0x0A,               0x01(%rcx)
          movb     $0x00,               0x02(%rcx)
          jmp      XIT2
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            EOF     add EOF to string end
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA target
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _EOF
          .def     _EOF; .scl 2; .type 32; .endef
     _EOF:subq     $0x78,               %rsp
          prefetch 0x00(%rcx)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
        0:movq     0x00(%rcx),          %rax             # RAX = qword
          movl     $0x08,               %edx             # RDX = ror_cnt
        1:testq    $0xFF,               %rax             # string end?
          je       2f
          rorq     $0x08,               %rax             # RAX = next byte
          incq     %rcx                                  # RCX = EA last char
          decl     %edx                                  # RDX = ror_cnt--
          jne      1b
          jmp      0b
        2:xorl     %eax,                %eax
          cmpb     $0x1A,               0x00(%rcx)       # EOF present?
          je       XIT2
          movw     $0x1A,               0x00(%rcx)
          jmp      XIT2
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            StrAt    overwrite target with pattern
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    EA target
               RDX       pattern
               R08    offset (zero based)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Overwrite target with pattern, starting at
            offset. The trailing zero of pattern isn't
            copied (target is not truncated).

            The target buffer *must* have a size of at
            least [pattern size + offset]!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _StrAt
          .def     _StrAt; .scl 2; .type 32; .endef
   _StrAt:subq     $0x78,               %rsp
          prefetch 0x00(%rcx)
          prefetch 0x00(%rdx)
          movq     %r9,                 0x58(%rsp)
          movq     %r8,                 0x60(%rsp)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
          xorl     %eax,                %eax
          addq     %r8,                 %rcx
        0:movb     0x00(%rdx),          %al
          movb     0x01(%rdx),          %r8b
          movb     0x02(%rdx),          %r9b
          testb    %al,                 %al
          je       XIT4
          movb     %al,                 0x00(%rcx)
          testb    %r8b,                %r8b
          je       XIT4
          movb     %r8b,                0x01(%rcx)
          testb    %r9b,                %r9b
          je       XIT4
          movb     %r9b,                0x02(%rcx)
          addq     $0x03,               %rdx
          addq     $0x03,               %rcx
          jmp      0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CntWrd  count words
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA source
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   words found
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Counts words in source. Word is defined as
            a bunch of characters separated by blanks.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _CntWrd
          .def     _CntWrd; .scl 2; .type 32; .endef
  _CntWrd:subq     $0x78,               %rsp
          xorl     %eax,                %eax             # EAX = word count
          prefetch 0x00(%rcx)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
        0:movb     0x00(%rcx),          %dl              # scan through string
          incq     %rcx                                  # RCX = EA next
          testb    %dl,                 %dl              # string end?
          je       XIT2
          cmpb     $0x20,               %dl              # control or blank?
          jbe      0b
          incl     %eax                                  # we found a word
        1:movb     0x00(%rcx),          %dl              # proceed to end
          incq     %rcx                                  # RCX = EA next
          testb    %dl,                 %dl              # string end?
          je       XIT2
          cmpb     $0x20,               %dl              # above blank?
          ja       1b
          jmp      0b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Supp    convert to upper case
            Slow    convert to lower case
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA source
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            All ASCII codes are converted properly!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Supp
          .def     _Supp; .scl 2; .type 32; .endef
    _Supp:movl     $0x2200,             %eax
          jmp      0f
          .p2align 4,,15
          .globl   _Slow
          .def     _Slow; .scl 2; .type 32; .endef
    _Slow:movl     $0x2300,             %eax
        0:subq     $0x78,               %rsp
          addq     _BNR(%rip),          %rax
          prefetch 0x00(%rcx)
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
          movq     %rax,                %rdx             # RDX = EA LUT
        1:movzb    0x00(%rcx),          %eax             # RAX = char
          testl    %eax,                %eax             # string end?
          je       XIT2
          movzb    0x00(%rdx, %rax, 1), %eax             # convert
          movb     %al,                 0x00(%rcx)       # store
          incq     %rcx                                  # RCX = EA + 1
          jmp      1b
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SFill   fill string with ASCII character
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA target
               RDX   start        (zero based offset)
               R08   byte to fill
               R09   ASCII
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CAUTION: PAR2 + PAR3 should not exceed the
                     size of the target string!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SFill
          .def     _SFill; .scl 2; .type 32; .endef
   _SFill:subq     $0x78,               %rsp
          xorl     %eax,                %eax
          prefetch 0x00(%rcx)
          movq     %r9,                 0x58(%esp)
          movq     %r8,                 0x60(%esp)
          movq     %rdx,                0x68(%esp)
          movq     %rcx,                0x70(%esp)
        0:movb     %r9b,                0x00(%rcx, %rdx, 1)
          incl     %edx
          decl     %r8d
          jne      0b
          jmp      XIT2
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                              D I R E C T   A C C E S S   ( R E M A I N S )
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Mcl     clear memory block
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA target
               RDX   byte to clear
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   always zero
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PAR1 must be a multiple of 64. If you want
            to clear less than 64 byte, use SClr(). If
            RDX is less than 64, nothing is cleared at
            all. Only the low 32 bit of RDX are used!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Mcl
          .def     _Mcl; .scl 2; .type 32; .endef
     _Mcl:subq     $0x78,               %rsp
          prefetch 0x00(%rcx)
          xorl     %eax,                %eax             # RAX = 0
          movq     %rdx,                0x68(%rsp)
          movq     %rcx,                0x70(%rsp)
          pxor     %xmm0,               %xmm0
          pxor     %xmm1,               %xmm1
          pxor     %xmm2,               %xmm2
          pxor     %xmm3,               %xmm3
          shrl     $0x06,               %edx
          je       XIT2
        0:movntdq  %xmm0,               0x00(%rcx)
          movntdq  %xmm1,               0x10(%rcx)
          movntdq  %xmm2,               0x20(%rcx)
          movntdq  %xmm3,               0x30(%rcx)
          addq     $0x40,               %rcx
          decl     %edx
          jne      0b
          jmp      XIT2
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                          C O M M O N   E X I T
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     XITZ:xorl     %eax,                %eax
          movq     0x40(%esp),          %rsi
     XIT6:movq     0x48(%esp),          %rdi
     XIT5:movq     0x50(%esp),          %rbx
     XIT4:movq     0x58(%esp),          %r9
     XIT3:movq     0x60(%esp),          %r8
     XIT2:movq     0x68(%esp),          %rdx
          movq     0x70(%esp),          %rcx
          addq     $0x78,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,                8, 3
