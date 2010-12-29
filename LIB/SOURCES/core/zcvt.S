          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
          К                                C O N V E R S I O N                                 Кл
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
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г NOTE: All functions are optimised for maximum speed. Maximum speed is the opposite Гл
          Г       of minimum size. You either can have the one or the other, but never both of Гл
          Г       them. Nowadays, size does not really matter (as it did ten years ago), while Гл
          Г       speed is the most important issue in recent applications, especially in most Гл
          Г       used basic functions like format conversion.                                 Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                             L O O K U P   T A B L E S                              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г lookup table: byte -> two ASCII characters Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
             лллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4, 0x00
     tHEX:.word 0x3030, 0x3130, 0x3230, 0x3330, 0x3430, 0x3530, 0x3630, 0x3730, 0x3830, 0x3930, 0x4130, 0x4230, 0x4330, 0x4430, 0x4530, 0x4630
          .word 0x3031, 0x3131, 0x3231, 0x3331, 0x3431, 0x3531, 0x3631, 0x3731, 0x3831, 0x3931, 0x4131, 0x4231, 0x4331, 0x4431, 0x4531, 0x4631
          .word 0x3032, 0x3132, 0x3232, 0x3332, 0x3432, 0x3532, 0x3632, 0x3732, 0x3832, 0x3932, 0x4132, 0x4232, 0x4332, 0x4432, 0x4532, 0x4632
          .word 0x3033, 0x3133, 0x3233, 0x3333, 0x3433, 0x3533, 0x3633, 0x3733, 0x3833, 0x3933, 0x4133, 0x4233, 0x4333, 0x4433, 0x4533, 0x4633
          .word 0x3034, 0x3134, 0x3234, 0x3334, 0x3434, 0x3534, 0x3634, 0x3734, 0x3834, 0x3934, 0x4134, 0x4234, 0x4334, 0x4434, 0x4534, 0x4634
          .word 0x3035, 0x3135, 0x3235, 0x3335, 0x3435, 0x3535, 0x3635, 0x3735, 0x3835, 0x3935, 0x4135, 0x4235, 0x4335, 0x4435, 0x4535, 0x4635
          .word 0x3036, 0x3136, 0x3236, 0x3336, 0x3436, 0x3536, 0x3636, 0x3736, 0x3836, 0x3936, 0x4136, 0x4236, 0x4336, 0x4436, 0x4536, 0x4636
          .word 0x3037, 0x3137, 0x3237, 0x3337, 0x3437, 0x3537, 0x3637, 0x3737, 0x3837, 0x3937, 0x4137, 0x4237, 0x4337, 0x4437, 0x4537, 0x4637
          .word 0x3038, 0x3138, 0x3238, 0x3338, 0x3438, 0x3538, 0x3638, 0x3738, 0x3838, 0x3938, 0x4138, 0x4238, 0x4338, 0x4438, 0x4538, 0x4638
          .word 0x3039, 0x3139, 0x3239, 0x3339, 0x3439, 0x3539, 0x3639, 0x3739, 0x3839, 0x3939, 0x4139, 0x4239, 0x4339, 0x4439, 0x4539, 0x4639
          .word 0x3041, 0x3141, 0x3241, 0x3341, 0x3441, 0x3541, 0x3641, 0x3741, 0x3841, 0x3941, 0x4141, 0x4241, 0x4341, 0x4441, 0x4541, 0x4641
          .word 0x3042, 0x3142, 0x3242, 0x3342, 0x3442, 0x3542, 0x3642, 0x3742, 0x3842, 0x3942, 0x4142, 0x4242, 0x4342, 0x4442, 0x4542, 0x4642
          .word 0x3043, 0x3143, 0x3243, 0x3343, 0x3443, 0x3543, 0x3643, 0x3743, 0x3843, 0x3943, 0x4143, 0x4243, 0x4343, 0x4443, 0x4543, 0x4643
          .word 0x3044, 0x3144, 0x3244, 0x3344, 0x3444, 0x3544, 0x3644, 0x3744, 0x3844, 0x3944, 0x4144, 0x4244, 0x4344, 0x4444, 0x4544, 0x4644
          .word 0x3045, 0x3145, 0x3245, 0x3345, 0x3445, 0x3545, 0x3645, 0x3745, 0x3845, 0x3945, 0x4145, 0x4245, 0x4345, 0x4445, 0x4545, 0x4645
          .word 0x3046, 0x3146, 0x3246, 0x3346, 0x3446, 0x3546, 0x3646, 0x3746, 0x3846, 0x3946, 0x4146, 0x4246, 0x4346, 0x4446, 0x4546, 0x4646

     dCNV:.byte 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF

     hCNV:.byte 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .text
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                                   D E C I M A L                                    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г dec2f   reformat string with pseudo FP                                             Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> PAR1  address string                                                             Гл
          Г   PAR2  0000 0000   format string                                                  Гл
          Г         0000 00xx   pseudo-FP digits                                               Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   0000 0000   always zero                                                    Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl _dec2f
          .def _dec2f; .scl 2; .type 32; .endef
   _dec2f:subl $0x3C,%esp
          nop
          movl 0x40(%esp),%eax              # EAX = address source
          movl %ebp,0x24(%esp)
          movl %esi,0x28(%esp)
          movl %edi,0x2C(%esp)
          movl %ebx,0x30(%esp)
          movl %ecx,0x34(%esp)
          movl %edx,0x38(%esp)
          movl 0x44(%esp),%edx              # EDX = fp digits
    d2for:movdqa Dfor,%xmm0
          movdqa dfor,%xmm1
          movl %eax,%edi                    # EDI = source
          movl %eax,%ebp                    # EBP = source
          leal 0x1E(%esp),%esi              # ESI = target
          xorl %ecx,%ecx                    # ECX = cnt
          movdqu %xmm0,0x00(%esp)           # store patterns
          movdqu %xmm1,0x10(%esp)
          /*
          кФФФФФФФФФФФФФФФФФФФФФФП
          Г search string end    Гл
          РФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллл
          */
        0:cmpb $0x00,0x00(%ebp)             # trailing zero?
          je 1f
          incl %ebp                         # source++
          incl %ecx                         # cnt++
          jmp 0b
          /*
          кФФФФФФФФФФФФФФФФФФФФФФП
          Г FP processing        Гл
          РФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллл
          */
        1:decl %ebp                         # EBP = last digit
          testl %edx,%edx                   # FP digits?
          je 5f
        2:movb 0x00(%ebp),%al               # get char
          decl %ebp                         # source--
          movb %al,0x00(%esi)               # store char
          decl %esi                         # target--
          decl %ecx                         # cnt--
          je 4f
          decl %edx                         # FP--
          jne 2b
        3:movb $0x2E,0x00(%esi)             # set decimal point
          decl %esi
          jmp 5f
        4:subl %edx,%esi                    # move FP down
          movb $0x2E,0x00(%esi)             # set decimal point
          decl %esi
          jmp 8f
          /*
          кФФФФФФФФФФФФФФФФФФФФФФП
          Г integer formatting   Гл
          РФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллл
          */
        5:cmpl $0x03,%ecx                   # cnt > 2?
          jb 6f
          subl $0x02,%ebp                   # source - 2
          subl $0x03,%esi                   # target - 3
          subl $0x03,%ecx                   # cnt    - 3
          movb 0x00(%ebp),%al               # read group
          movb 0x01(%ebp),%bl
          movb 0x02(%ebp),%dl
          movb $0x20,0x00(%esi)             # write separator
          movb %al,0x01(%esi)               #       group
          movb %bl,0x02(%esi)
          movb %dl,0x03(%esi)
          decl %ebp                         # next source
          decl %esi                         #      target
          jmp 5b
        6:cmpl $0x01,%ecx                   # digits left?
          jae 7f
          addl $0x02,%esi                   # ESI = MSD
          jmp 8f
        7:movb 0x00(%ebp),%al               # read digit
          decl %ebp                         # source--
          movb %al,0x00(%esi)               # write digit
          decl %esi                         # target--
          decl %ecx                         # cnt--
          jne 7b
          incl %esi                         # ESI = MSD
          /*
          кФФФФФФФФФФФФФФФФФФФФФФП
          Г copy temp to buffer  Гл
          РФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллл
          */
        8:movl %edi,%ebp                    # EBP = target
        9:movb 0x00(%esi),%al               # read 4 digits
          movb 0x01(%esi),%bl
          movb 0x02(%esi),%cl
          movb 0x03(%esi),%dl
          movb %al,0x00(%edi)               # store 1st
          testb %al,%al                     # end?
          je 0f
          movb %bl,0x01(%edi)               # store 2nd
          testb %bl,%bl                     # end?
          je 0f
          movb %cl,0x02(%edi)               # store 3rd
          testb %cl,%cl                     # end?
          je 0f
          movb %dl,0x03(%edi)               # store 4th
          testb %dl,%dl                     # end?
          je 0f
          addl $0x04,%esi                   # source + 4
          addl $0x04,%edi                   # target + 4
          jmp 9b
          /*
          кФФФФФФФФФФФФФФФФФФФФФФП
          Г blank leading zeroes Гл
          РФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллл
          */
        0:cmpb $0x30,0x00(%ebp)             # leading zero?
          ja XITZ
          cmpb $0x00,0x01(%ebp)             # next = end?
          je XITZ
          cmpb $0x2E,0x01(%ebp)             # next = DP?
          je XITZ
          movb $0x20,0x00(%ebp)             # blank zero
          incl %ebp
          jmp 0b
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                             M I S C E L L A N E O U S                              Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г asc2s   Convert hex bytes to ASCII-string                                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   address source                                                             Гл
          Г   RDX   address target                                                             Гл
          Г   R08   number of bytes                                                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- EAX   always zero                                                                Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Replaces characters below ASCII 0x20 with a dot (ASCII 0x2E).                      Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl _asc2s
          .def _asc2s; .scl 2; .type 32; .endef
   _asc2s:subq $0xB8,%rsp
          movq _BNR,%rax                    # RAX = BNR
          nop
          movq %rsi,0x80(%rsp)
          movq %rdi,0x88(%rsp)
          movq %rbx,0x90(%rsp)
          movq %r9,0x98(%rsp)
          movq %r8,0xA0(%rsp)
          movq %rdx,0xA8(%rsp)
          movq %rcx,0xB0(%rsp)
          addl $0x03,%r8d
          leaq CV_DMP(%rax),%r9             # R09 = conversion table 6
          shrl $0x02,%r8d                   # R08 = cnt / 4
          je 1f
        0:movzb 0x00(%rcx),%eax             # get 4 byte
          movzb 0x01(%rcx),%ebx
          movzb 0x02(%rcx),%edi
          movzb 0x03(%rcx),%esi
          movzb 0x00(%r9, %rax, 1),%eax     # convert
          movzb 0x00(%r9, %rbx, 1),%ebx
          movzb 0x00(%r9, %rdi, 1),%edi
          movzb 0x00(%r9, %rsi, 1),%esi
          movb %al,0x00(%rdx)               # store
          movb %bl,0x01(%rdx)
          movb %sil,0x02(%rdx)
          movb %dil,0x03(%rdx)
          addq $0x04,%rcx                   # source + 4
          addq $0x04,%rdx                   # target + 4
          decl %r8d                         # count--
          jne 0b
        1:movb $0x00,0x00(%rdx)             # trailing zero
          xorl %eax,%eax
          jmp XIT7
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г h2str   Convert hex bytes to ASCII-string                                          Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   address source                                                             Гл
          Г   RDX           target                                                             Гл
          Г   R08   byte to convert                                                            Гл
          Г   R09   00 no formatting                                                           Гл
          Г         01 byte   XX XX XX XX X...                                                 Гл
          Г         02 word   XXXX XXXX XXX...                                                 Гл
          Г         03 dword  XXXXXXXX XXXX...                                                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   0000 0000 0000 0000                                                        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Group R08 byte with blanks after each R09th byte. R09 is anded with three prior to Гл
          Г processing the input string. If If R08 isn't a multiple of the R09th power of two, Гл
          Г surplus byte are converted to the garbage found behind the (expected) end.         Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl _h2str
          .def _h2str; .scl 2; .type 32; .endef
   _h2str:subq $0xB8,%rsp
          nop
          nop
          movq %rsi,0x80(%rsp)
          movq %rdi,0x88(%rsp)
          movq %rbx,0x90(%rsp)
          movq %r9,0x98(%rsp)
          movq %r8,0xA0(%rsp)
          movq %rdx,0xA8(%rsp)
          movq %rcx,0xB0(%rsp)


          movl 0x40(%esp),%esi              # ESI = target
          movl 0x44(%esp),%edi              # EDI = source
          movl 0x48(%esp),%ebx              # EBX = loop counter
          movl 0x4C(%esp),%ecx              # ECX = format
          xorl %edx,%edx                    # EDX = 0
          andl $0x03,%ecx                   # mask out invalid
          testl %ebx,%ebx                   # something to do?
          je 4f
          testl %ecx,%ecx                   # formatting?
          jne 0f
          decl %edx                         # EDX = 0xFFFFFFFF
          jmp 1f
        0:decl %ecx                         # ECX - 1
          incl %edx                         # EDX = 1
          shll %cl,%edx                     # * power of 2
        1:movl $tHEX,%ecx                   # ECX = address LUT
          movl %edx,%ebp                    # EBP = format
        2:movzb 0x00(%esi),%eax             # get byte
          movw 0x00(%ecx, %eax, 2),%ax
          movw %ax,0x00(%edi)               # store
          incl %esi                         # source++
          addl $0x02,%edi                   # target+2
          decl %edx                         # format--
          jne 3f
          movb $0x20,0x00(%edi)             # formatting blank
          movl %ebp,%edx                    # restore format
          incl %edi                         # target++
        3:decl %ebx                         # count--
          jne 2b
        4:movb $0x00,0x00(%edi)             # trailing zero
          jmp XITZ
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г s2num   convert string <-> numeric                                                 Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г-> RCX   adress source                                                              Гл
          Г   RDX   adress destination                                                         Гл
          Г   R08   byte to convert                                                            Гл
          Г   R09   base (10 or 16)                                                            Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г<- RAX   0000 0000 0000 0000                                                        Гл
          УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФДл
          Г Converts ASCII to hexa/decimal nibbles or vice versa. Everything outside the valid Гл
          Г range is ignored.                                                                  Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
          .globl _s2num
          .def _s2num; .scl 2; .type 32; .endef
   _s2num:subq $0xB8,%rsp
          movq _BNR,%rax                    # RAX = BNR
          nop
          movq %rbx,0x90(%rsp)
          movq %r9,0x98(%rsp)
          movq %r8,0xA0(%rsp)
          movq %rdx,0xA8(%rsp)
          movq %rcx,0xB0(%rsp)
          movq %rax,%rbx                    # RBX = BNR
          andq $0x10,%r9                    # reduce to 16 or zero
          addq CV_DEC,%rax                  # RAX = EA CV_HEX
          addq CV_HEX,%rbx                  # RBX = EA CV_DEC
          negq _LDR_AVAIL
          je XIT5
          testl %r9d,%r9d                   # hex?
          cmove %rax,%rbx
          xorl %ebp,%ebp                    # RBP = result buffer
          movl $0x04,%r9d                   # R09 = result count
        0:movzb 0x00(%rcx),%eax             # get byte
          decl %r8d                         # count--
          js 1f
          movsbl 0x00(%ebx, %eax, 1),%eax   # convert
          incq %rcx                         # source++
          testl %eax,%eax                   # valid?
          js 0b
          addl %eax,%ebp                    # add to result
          rorl $0x08,%ebp                   # one byte up
          decl %r9d                         # result count--
          jne 0b
          movl %ebp,0x00(%rdx)              # store result
          movl $0x04,%r9d                   # result count = 4
          xorl %ebp,%ebp                    # clear for next op
          addq $0x04,%rdx                   # target + 4
          jmp 0b
        1:movl %ebp,0x00(%rdx)              # store last result
          movb $0x00,0x04(%rdx)             # add trailing zero
          jmp XIT5
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          Г                               C O M M O N   E X I T                                Гл
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
          .p2align 4,,15
     XITE:movq 0x48(%rsp),%r15              # 1
     XITD:movq 0x50(%rsp),%r14
     XITC:movq 0x58(%rsp),%r13
     XITB:movq 0x60(%rsp),%r12              # hex2D, hex2Q,
     XITA:movq 0x68(%rsp),%r11
     XIT9:movq 0x70(%rsp),%r10              # Q2hex,
     XIT8:movq 0x78(%rsp),%rbp
     XIT7:movq 0x80(%rsp),%rsi              # asc2s,
     XIT6:movq 0x88(%rsp),%rdi
     XIT5:movq 0x90(%rsp),%rbx              # D2hex, d2str, s2num,
     XIT4:movq 0x98(%rsp),%r9
     XIT3:movq 0xA0(%rsp),%r8               # W2hex, prime, 
     XIT2:movq 0xA8(%rsp),%rdx
     XIT1:movq 0xB0(%rsp),%rcx              # B2hex,
          addq $0xB8,%rsp
     XITr:ret
          /*
          кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
          РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФйл
            ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
          */
.comm _BNR,4
