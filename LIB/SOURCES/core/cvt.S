          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЙНННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННН»
          є                                C O N V E R S I O N                                 єЫ
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
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і                              L O O K U P   T A B L E                               іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
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
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .text
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і                               H E X A D E C I M A L                                іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і B2hex  byte => hexadecimal string                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   byte to convert (only the lowest byte is converted!)                       іЫ
          і   RDX   EA target                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 xxxx   converted byte                                                 іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _B2hex
          .def     _B2hex; .scl 2; .type 32; .endef
   _B2hex:subq     $0xB8,%rsp
          leaq     tHEX(%rip),%rax              # EAX = EA LUT
          nop
          movq     %rcx,0xB0(%rsp)
          andl     $0xFF,%ecx
          movzwl   0x00(%rax, %rcx, 2),%eax
          movl     %eax,0x00(%rdx)              # store
          jmp      XIT1
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і W2hex   word => hexadecimal string                                                 іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   word to convert (only the lowest word is converted!)                       іЫ
          і   RDX   EA target                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000                                                                  іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _W2hex
          .def     _W2hex; .scl 2; .type 32; .endef
   _W2hex:subq     $0xB8,%rsp
          leaq     tHEX(%rip),%rax              # EAX = EA LUT
          nop
          movq     %r8,0xA0(%esp)
          movq     %rdx,0xA8(%esp)
          movq     %rcx,0xB0(%esp)
          movq     %rcx,%r8
          shrq     $0x08,%rcx
          andq     $0xFF,%rcx                   # RCX = 000000hh
          andq     $0xFF,%r8                    # R08 = 000000ll
          movzwl   0x00(%rax, %rcx, 2),%ecx     # RCX = 0000HHhh
          movzwl   0x00(%rax, %r8, 2),%r8d      # R08 = 0000LLll
          xorl     %eax,%eax
          movl     %ecx,0x00(%rdx)              #       hhHH0000
          movl     %r8d,0x02(%rdx)              # store llLL0000
          jmp      XIT3
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і D2hex   dword => formatted hex string   xxxx xxxx                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   dword to convert (only the low dword is converted!)                        іЫ
          і   RDX   EA target                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000                                                                  іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _D2hex
          .def     _D2hex; .scl 2; .type 32; .endef
   _D2hex:subq     $0xB8,%rsp
          leaq     tHEX(%rip),%rax              # EAX = EA LUT
          nop
          movq     %rbx,0x90(%esp)
          movq     %r9, 0x98(%esp)
          movq     %r8, 0xA0(%esp)
          movq     %rdx,0xA8(%esp)
          movq     %rcx,0xB0(%esp)
          movl     %ecx,%r8d
          movl     %ecx,%r9d
          movl     %ecx,%ebx
          shrl     $0x18,%r8d
          shrl     $0x10,%r9d
          shrl     $0x08,%ebx
          andq     $0xFF,%r8                    # R08 = 00000044
          andq     $0xFF,%r9                    # R09 = 00000033
          andq     $0xFF,%rbx                   # RBX = 00000022
          andq     $0xFF,%rcx                   # RCX = 00000011
          movw     0x00(%rax, %r8, 2),%r8w      # convert
          movw     0x00(%rax, %r9, 2),%r9w
          movw     0x00(%rax, %rbx, 2),%bx
          movw     0x00(%rax, %rcx, 2),%cx
          xorq     %rax,%rax
          movw     %r8w,0x00(%rdx)              # store result
          movw     %r9w,0x02(%rdx)
          movb     $0x20,0x04(%rdx)
          movw     %bx,0x05(%rdx)
          movw     %cx,0x07(%rdx)
          movb     %al,0x09(%rdx)               # trailing zero
          jmp      XIT5
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і d2str   dword => unformatted hex string   xxxxxxxx                                 іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   dword to convert (only the low dword is converted!)                        іЫ
          і   RDX   EA target                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000                                                                  іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _d2str
          .def     _d2str; .scl 2; .type 32; .endef
   _d2str:subq     $0xB8,%rsp
          leaq     tHEX(%rip),%rax              # EAX = EA LUT
          nop
          movq     %rbx,0x90(%esp)
          movq     %r9,0x98(%esp)
          movq     %r8,0xA0(%esp)
          movq     %rdx,0xA8(%esp)
          movq     %rcx,0xB0(%esp)
          movl     %ecx,%r8d
          movl     %ecx,%r9d
          movl     %ecx,%ebx
          shrl     $0x18,%r8d
          shrl     $0x10,%r9d
          shrl     $0x08,%ebx
          andq     $0xFF,%r8                    # R08 = 00000044
          andq     $0xFF,%r9                    # R09 = 00000033
          andq     $0xFF,%rbx                   # RBX = 00000022
          andq     $0xFF,%rcx                   # RCX = 00000011
          movw     0x00(%rax, %r8, 2),%r8w      # convert
          movw     0x00(%rax, %r9, 2),%r9w
          movw     0x00(%rax, %rbx, 2),%bx
          movw     0x00(%rax, %rcx, 2),%cx
          xorq     %rax,%rax
          movw     %r8w,0x00(%rdx)              # store result
          movw     %r9w,0x02(%rdx)
          movw     %bx,0x04(%rdx)
          movw     %cx,0x06(%rdx)
          movb     %al,0x08(%rdx)               # trailing zero
          jmp      XIT5
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Q2hex   Convert qword to ASCII-string                                              іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   qword to convert                                                           іЫ
          і   RDX   EA target                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000                                                                  іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _Q2hex
          .def     _Q2hex; .scl 2; .type 32; .endef
   _Q2hex:subq     $0xB8,%rsp
          leaq     tHEX(%rip),%rax              # EAX = EA LUT
          nop
          movq     %r10,0x70(%rsp)
          movq     %rbp,0x78(%rsp)
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movq     %rcx,%r10                    # copy
          movq     %rcx,%r9
          movq     %rcx,%r8
          movq     %rcx,%rbp
          movq     %rcx,%rsi
          movq     %rcx,%rdi
          movq     %rcx,%rbx
          shrq     $0x38,%r10                   # R10 = 56-63
          shrq     $0x30,%r9
          shrq     $0x28,%r8
          shrq     $0x20,%rbp
          shrq     $0x18,%rsi
          shrq     $0x10,%rdi
          shrq     $0x08,%rbx
          andq     $0xFF,%r9                    # R09 = 48-55
          andq     $0xFF,%r8                    # R08 = 40-47
          andq     $0xFF,%rbp                   # RBP = 32-39
          andq     $0xFF,%rsi                   # RSI = 24-31
          andq     $0xFF,%rdi                   # RDI = 16-23
          andq     $0xFF,%rbx                   # RBX = 08-15
          andq     $0xFF,%rcx                   # RCX = 00-07
          movw     0x00(%rax, %r10, 2),%r10w
          movw     0x00(%rax, %r9,  2),%r9w
          movw     0x00(%rax, %r8,  2),%r8w
          movw     0x00(%rax, %rbp, 2),%bp
          movw     0x00(%rax, %rsi, 2),%si
          movw     0x00(%rax, %rdi, 2),%di
          movw     0x00(%rax, %rbx, 2),%bx
          movw     0x00(%rax, %rcx, 2),%cx
          xorq     %rax,%rax
          movw     %r10w,0x00(%edx)
          movw     %r9w,0x02(%edx)
          movb     $0x20,0x04(%edx)
          movw     %r8w,0x05(%edx)
          movw     %bp,0x07(%edx)
          movb     $0x20,0x09(%edx)
          movw     %si,0x0A(%edx)
          movw     %di,0x0C(%edx)
          movb     $0x20,0x0E(%edx)
          movw     %bx,0x0F(%edx)
          movw     %cx,0x11(%edx)
          movb     %al,0x13(%edx)
          jmp      XIT9
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і O2hex   Convert oword to ASCII-string                                              іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA source (location where the oword is stored)                             іЫ
          і   RDX   EA target                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000                                                                  іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _O2hex
          .def     _O2hex; .scl 2; .type 32; .endef
   _O2hex:subq     $0xB8,%rsp
          leaq     tHEX(%rip),%rax              # EAX = EA LUT
          nop
          movq     %r11,0x68(%rsp)
          movq     %r10,0x70(%rsp)
          movq     %rbp,0x78(%rsp)
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9,0x98(%rsp)
          movq     %r8,0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movzb    0x00(%rcx),%r8               # R08 = 7F...78
          movzb    0x01(%rcx),%r9               # R09 = 77...70
          movzb    0x02(%rcx),%rbx              # RBX = 6F...68
          movzb    0x03(%rcx),%rdi              # RDI = 67...60
          movzb    0x04(%rcx),%rsi              # RSI = 5F...58
          movzb    0x05(%rcx),%rbp              # RBP = 57...50
          movzb    0x06(%rcx),%r10              # R10 = 4F...48
          movzb    0x07(%rcx),%r11              # R11 = 47...40
          movw     0x00(%rax, %r8,  2),%r8w     # convert
          movw     0x00(%rax, %r9,  2),%r9w
          movw     0x00(%rax, %rbx, 2),%bx
          movw     0x00(%rax, %rdi, 2),%di
          movw     0x00(%rax, %rsi, 2),%si
          movw     0x00(%rax, %rbp, 2),%bp
          movw     0x00(%rax, %r10, 2),%r10w
          movw     0x00(%rax, %r11, 2),%r11w
          movw     %r8w, 0x00(%edx)
          movw     %r9w, 0x02(%edx)
          movb     $0x20,0x04(%edx)
          movw     %bx,  0x05(%edx)
          movw     %di,  0x07(%edx)
          movb     $0x20,0x09(%edx)
          movw     %si,  0x0A(%edx)
          movw     %bp,  0x0C(%edx)
          movb     $0x20,0x0E(%edx)
          movw     %r10w,0x0F(%edx)
          movw     %r11w,0x11(%edx)
          movb     $0x20,0x13(%edx)
          movzb    0x08(%rcx),%r8               # R08 = 3F...38
          movzb    0x09(%rcx),%r9               # R09 = 37...30
          movzb    0x0A(%rcx),%rbx              # RBX = 2F...28
          movzb    0x0B(%rcx),%rdi              # RDI = 27...20
          movzb    0x0C(%rcx),%rsi              # RSI = 1F...18
          movzb    0x0D(%rcx),%rbp              # RBP = 17...10
          movzb    0x0E(%rcx),%r10              # R10 = 0F...08
          movzb    0x0F(%rcx),%r11              # R11 = 07...00
          movw     0x00(%rax, %r8, 2),%r8w      # convert
          movw     0x00(%rax, %r9, 2),%r9w
          movw     0x00(%rax, %rbx, 2),%bx
          movw     0x00(%rax, %rdi, 2),%di
          movw     0x00(%rax, %rsi, 2),%si
          movw     0x00(%rax, %rbp, 2),%bp
          movw     0x00(%rax, %r10, 2),%r10w
          movw     0x00(%rax, %r11, 2),%r11w
          xorq     %rax,%rax
          movw     %r8w, 0x14(%edx)
          movw     %r9w, 0x16(%edx)
          movb     $0x20,0x18(%edx)
          movw     %bx,  0x19(%edx)
          movw     %di,  0x1B(%edx)
          movb     $0x20,0x1D(%edx)
          movw     %si,  0x1E(%edx)
          movw     %bp,  0x20(%edx)
          movb     $0x20,0x22(%edx)
          movw     %r10w,0x23(%edx)
          movw     %r11w,0x25(%edx)
          movb     %al,  0x27(%edx)
          jmp      XITA
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і hex2D   hexadecimal ASCII string -> DWORD                                          іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA source                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   dword (8 digits)                                                           іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Signs and surplus digits are ignored. Conversion automatically stops after the 8th іЫ
          і valid digit was processed. Surplus digits are ignored, missing digits set to zero. іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _hex2D
          .def     _hex2D; .scl 2; .type 32; .endef
   _hex2D:movl     $0x08,%eax                   # 8 digits
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і hex2Q   hexadecimal ASCII string -> QWORD                                          іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA source                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   qword (16 digits)                                                          іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Signs and surplus digits are ignored. Conversion automatically stops when the 16th іЫ
          і valid digit was processed. Surplus digits are ignored, missing digits set to zero. іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _hex2Q
          .def     _hex2Q; .scl 2; .type 32; .endef
   _hex2Q:movl     $0x10,%eax                   # 16 digits
        0:subq     $0xB8,%rsp
          prefetch 0x00(%rcx)
          nop
          movq     %r12,0x60(%rsp)
          movq     %r11,0x68(%rsp)
          movq     %r10,0x70(%rsp)
          movq     %rbp,0x78(%rsp)
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     %eax,%r9d                    # R09 = digit counter
          leaq     hCNV(%rip),%r8               # R08 = EA LUT
          xorl     %eax,%eax                    # RAX = result
        1:movzb    0x00(%rcx),%ebx              # get 4 chars
          movzb    0x01(%rcx),%edx
          movzb    0x02(%rcx),%edi
          movzb    0x03(%rcx),%esi
          movzb    0x00(%r8, %rbx, 1),%ebp      # convert
          movzb    0x00(%r8, %rdx, 1),%r10d
          movzb    0x00(%r8, %rdi, 1),%r11d
          movzb    0x00(%r8, %rsi, 1),%r12d
          addq     $0x04,%rcx                   # next 4 chars
          testl    %ebx, %ebx                   # end?
          je       XITB
          cmpl     $0x0F,%ebp                   # digit?
          ja       2f
          shlq     $0x04,%rax                   # next digit
          addq     %rbp, %rax                   # add digit
          decl     %r9d                         # digit_cnt--
          je       XITB
        2:testl    %edx,%edx                    # end?
          je       XITB
          cmpl     $0x0F,%r10d                  # digit?
          ja       3f
          shlq     $0x04,%rax                   # next digit
          addq     %r10,%rax                    # add digit
          decl     %r9d                         # digit_cnt--
          je       XITB
        3:testl    %edi,%edi                    # end?
          je       XITB
          cmpl     $0x0F,%r11d                  # digit?
          ja       4f
          shlq     $0x04,%rax                   # next digit
          addq     %r11,%rax                    # add digit
          decl     %r9d                         # digit_cnt--
          je       XITB
        4:testl    %esi,%esi                    # end?
          je       XITB
          cmpl     $0x0F,%r12d                  # digit?
          ja       1b
          shlq     $0x04,%rax                   # next digit
          addq     %r12,%rax                    # add digit
          decl     %r9d                         # digit_cnt--
          je       XITB
          jmp      1b
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і                                   D E C I M A L                                    іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і D2dec   Convert dword to decimal string                                            іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   DWORD to convert                                                           іЫ
          і   RDX   EA target                                                                  іЫ
          і   R08   --sd                                                                       іЫ
          і           іАДДДДДД digits    (0x01...0x0A)                                         іЫ
          і           АДДДДДДД 00 unsigned                                                     іЫ
          і                    xx signed                                                       іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- EAX   always zero                                                                іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і MINIMUM BUFFER SIZE: 10 digits + 3 format + 2 sign + zero = 16 byte                іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _D2dec
          .def     _D2dec; .scl 2; .type 32; .endef
   _D2dec:subq     $0xB8,%rsp
          prefetch 0x00(%rdx)
          movl     $0x2020202F,%eax             # RAX = digit  9
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     $0x202F2F2F,%ebx             # RBX = digits 8-6
          movl     $0x202F2F2F,%edi             # RDI = digits 5-3
          movl     $0x00302F2F,%esi             # RSI = digits 2-0
          testl    $0xFF00,%r8d                 # unsigned?
          je       0f
          testl    %ecx,%ecx
          jns      0f
          negl     %ecx                         # RCX = 2's complement
          addl     $0x000D0000,%eax             # set sign
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДї
          і convert              іЫ
          АДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
        0:incl     %eax                         # digit 9++
          subl     $0x3B9ACA00,%ecx             # RCX - 10e09
          jae      0b
          addl     $0x3B9ACA00,%ecx             # RCX + 10e09 (one sub too much!)
          rorl     $0x10,%eax                   # sign first
        1:incl     %ebx                         # digit 8++
          subl     $0x05F5E100,%ecx             # RCX - 10e08
          jae      1b
          rorl     $0x08,%ebx                   # digit 7
          addl     $0x05F5E100,%ecx             # RCX + 10e08 (one sub too much!)
        2:incl     %ebx                         # digit 7++
          subl     $0x00989680,%ecx             # RCX - 10e07
          jae      2b
          rorl     $0x08,%ebx                   # digit 6
          addl     $0x00989680,%ecx             # RCX + 10e07 (one sub too much!)
        3:incl     %ebx                         # digit 6++
          subl     $0x000F4240,%ecx             # RCX - 10e06
          jae      3b
          rorl     $0x10,%ebx                   # end with blank
          addl     $0x000F4240,%ecx             # RCX + 10e06 (one sub too much!)
        4:incl     %edi                         # digit 5++
          subl     $0x000186A0,%ecx             # RCX - 10e05
          jae      4b
          rorl     $0x08,%edi                   # digit 4
          addl     $0x000186A0,%ecx             # RCX + 10e05 (one sub too much!)
        5:incl     %edi                         # digit 4++
          subl     $0x2710,%ecx                 # RCX - 10e04
          jae      5b
          rorl     $0x08,%edi                   # digit 3
          addl     $0x2710,%ecx                 # RCX + 10e04 (one sub too much!)
        6:incl     %edi                         # digit 3++
          subl     $0x03E8,%ecx                 # RCX - 10e03
          jae      6b
          rorl     $0x10,%edi                   # end with blank
          addl     $0x03E8,%ecx                 # RCX + 10e03 (one sub too much!)
        7:incl     %esi                         # digit 2++
          subl     $0x64,%ecx                   # RCX - 10e02
          jae      7b
          rorl     $0x08,%esi                   # digit 1
          addl     $0x64,%ecx                   # RCX + 10e02 (one sub too much!)
        8:incl     %esi                         # digit 1++
          subl     $0x0A,%ecx                   # RCX - 10e01
          jae      8b
          rorl     $0x08,%esi                   # digit 0
          addl     $0x0A,%ecx                   # RCX + 10e01 (one sub too much!)
          addl     %ecx,%esi                    # digit 0
          rorl     $0x10,%esi                   # trailing zero
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДї
          і blank leading zeroes іЫ
          АДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          testl    $0x000F0000,%eax
          jne      9f
          subl     $0x00100000,%eax
          testl    $0x0F,%ebx
          jne      9f
          subl     $0x10,%ebx
          testl    $0x0F00,%ebx
          jne      9f
          subl     $0x1000,%ebx
          testl    $0x000F0000,%ebx
          jne      9f
          subl     $0x00100000,%ebx
          testl    $0x0F,%edi
          jne      9f
          subl     $0x10,%edi
          testl    $0x0F00,%edi
          jne      9f
          subl     $0x1000,%edi
          testl    $0x000F0000,%edi
          jne      9f
          subl     $0x00100000,%edi
          testl    $0x0F,%esi
          jne      9f
          subl     $0x10,%esi
          testl    $0x0F00,%esi
          jne      9f
          subl     $0x1000,%esi
        9:movl     %eax,0x00(%rdx)
          movl     %ebx,0x04(%rdx)
          movl     %edi,0x08(%rdx)
          movl     %esi,0x0C(%rdx)
          jmp      XIT7
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Q2dec   Convert qword to decimal string                                            іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   QWORD to convert                                                           іЫ
          і   RDX   EA target                                                                  іЫ
          і   R08   --sd                                                                       іЫ
          і           іАДДДДДД digits    (0x01...0x14)                                         іЫ
          і           АДДДДДДД 00 unsigned                                                     іЫ
          і                    xx signed                                                       іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- EAX   always zero                                                                іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і MINIMUM BUFFER SIZE: 20 digits + 6 format + 1 sign + zero = 28 byte                іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _Q2dec
          .def     _Q2dec; .scl 2; .type 32; .endef
   _Q2dec:subq     $0xB8,%rsp
          prefetch 0x00(%rdx)
          movl     $0x20202F30,%eax             # RAX = digit  19-18
          movq     %r12,0x60(%rsp)
          movq     %r11,0x68(%rsp)
          movq     %r10,0x70(%rsp)
          movq     %rbp,0x78(%rsp)
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movl     $0x20202F30,%eax             # RAX = digit  19-18
          movl     $0x202F2F2F,%ebx             # RBX = digits 17-15
          movl     $0x202F2F2F,%edi             # RDI = digits 14-12
          movl     $0x202F2F2F,%esi             # RSI = digits 11-09
          movl     $0x202F2F2F,%r10d            # R10 = digits 08-06
          movl     $0x202F2F2F,%r11d            # R11 = digits 05-03
          movl     $0x00302F2F,%r12d            # R12 = digits 02-00
          movq     $0x8AC7230489E80000,%rbp     # RBP = 10e19
          movq     $0x0DE0B6B3A7640000,%r9      # R09 = 10e18
          testq    %rcx,%rcx
          jns      1f
          testl    $0xFF00,%r8d                 # unsigned?
          je       0f
          addl     $0x0D000000,%eax             # set sign
          negq     %rcx                         # RCX = 2's complement
          jmp      1f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДї
          і convert              іЫ
          АДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
        0:cmpq     %rbp,%rcx
          js       1f
          incl     %eax                         # digit 19++
          subq     %rbp,%rcx                    # RCX - 10e19
        1:rorl     $0x08,%eax                   # digit 18
        2:incl     %eax                         # digit 18++
          subq     %r9,%rcx                     # RCX - 10e18
          jae      2b
          addq     %r9,%rcx                     # RCX + 10e18 (one sub too much!)
          rorl     $0x10,%eax                   # sign first
          movq     $0x016345785D8A0000,%rbp     # RBP = 10e17
          movq     $0x002386F26FC10000,%r8      # R08 = 10e16
          movq     $0x00038D7EA4C68000,%r9      # R09 = 10e15
        3:incl     %ebx                         # digit 17++
          subq     %rbp,%rcx                    # RCX - 10e17
          jae      3b
          rorl     $0x08,%ebx                   # digit 16
          addq     %rbp,%rcx                    # RCX + 10e17 (one sub too much!)
        4:incl     %ebx                         # digit 16++
          subq     %r8,%rcx                     # RCX - 10e16
          jae      4b
          rorl     $0x08,%ebx                   # digit 15
          addq     %r8,%rcx                     # RCX + 10e16 (one sub too much!)
        5:incl     %ebx                         # digit 15++
          subq     %r9,%rcx                     # RCX - 10e15
          jae      5b
          rorl     $0x10,%ebx                   # end with blank
          addq     %r9,%rcx                     # RCX + 10e15 (one sub too much!)
          movq     $0x00005AF3107A4000,%rbp     # RBP = 10e14
          movq     $0x000009184E72A000,%r8      # R08 = 10e13
          movq     $0x000000E8D4A51000,%r9      # R09 = 10e12
        6:incl     %edi                         # digit 14++
          subq     %rbp,%rcx                    # RCX - 10e14
          jae      6b
          rorl     $0x08,%edi                   # digit 13
          addq     %rbp,%rcx                    # RCX + 10e14 (one sub too much!)
        7:incl     %edi                         # digit 13++
          subq     %r8,%rcx                     # RCX - 10e13
          jae      7b
          rorl     $0x08,%edi                   # digit 12
          addq     %r8,%rcx                     # RCX + 10e13 (one sub too much!)
        8:incl     %edi                         # digit 12++
          subq     %r9,%rcx                     # RCX - 10e12
          jae      8b
          rorl     $0x10,%edi                   # end with blank
          addq     %r9,%rcx                     # RCX + 10e12 (one sub too much!)
          movq     $0x000000174876E800,%rbp     # RBP = 10e11
          movq     $0x00000002540BE400,%r8      # R08 = 10e10
        9:incl     %esi                         # digit 11++
          subq     %rbp,%rcx                    # RCX - 10e11
          jae      9b
          rorl     $0x08,%esi                   # digit 10
          addq     %rbp,%rcx                    # RCX + 10e11 (one sub too much!)
        0:incl     %esi                         # digit 10++
          subq     %r8,%rcx                     # RCX - 10e10
          jae      0b
          rorl     $0x08,%esi                   # digit 09
          addq     %r8,%rcx                     # RCX + 10e10 (one sub too much!)
        1:incl     %esi                         # digit 09++
          subq     $0x3B9ACA00,%rcx             # RCX - 10e09 (RCX is DD now!)
          jae      1b
          rorl     $0x10,%esi                   # end with blank
          addq     $0x3B9ACA00,%rcx             # RCX + 10e09 (one sub too much!)
        2:incl     %r10d                        # digit 08++
          subl     $0x05F5E100,%ecx             # RCX - 10e08
          jae      2b
          rorl     $0x08,%r10d                  # digit 07
          addl     $0x05F5E100,%ecx             # RCX + 10e08 (one sub too much!)
        3:incl     %r10d                        # digit 07++
          subl     $0x00989680,%ecx             # RCX - 10e07
          jae      3b
          rorl     $0x08,%r10d                  # digit 06
          addl     $0x00989680,%ecx             # RCX + 10e07 (one sub too much!)
        4:incl     %r10d                        # digit 06++
          subl     $0x000F4240,%ecx             # RCX - 10e06
          jae      4b
          rorl     $0x10,%r10d                  # end with blank
          addl     $0x000F4240,%ecx             # RCX + 10e06 (one sub too much!)
        5:incl     %r11d                        # digit 05++
          subl     $0x000186A0,%ecx             # RCX - 10e05
          jae      5b
          rorl     $0x08,%r11d                  # digit 04
          addl     $0x000186A0,%ecx             # RCX + 10e05 (one sub too much!)
        6:incl     %r11d                        # digit 04++
          subl     $0x2710,%ecx                 # RCX - 10e04
          jae      6b
          rorl     $0x08,%r11d                  # digit 03
          addl     $0x2710,%ecx                 # RCX + 10e04 (one sub too much!)
        7:incl     %r11d                        # digit 03++
          subl     $0x03E8,%ecx                 # RCX - 10e03
          jae      7b
          rorl     $0x10,%r11d                  # end with blank
          addl     $0x03E8,%ecx                 # RCX + 10e03 (one sub too much!)
        8:incl     %r12d                        # digit 02++
          subl     $0x64,%ecx                   # RCX - 10e02
          jae      8b
          rorl     $0x08,%r12d                  # digit 01
          addl     $0x64,%ecx                   # RCX + 10e02 (one sub too much!)
        9:incl     %r12d                        # digit 01++
          subl     $0x0A,%ecx                   # RCX - 10e01
          jae      9b
          rorl     $0x08,%r12d                  # digit 00
          addl     $0x0A,%ecx                   # RCX + 10e01 (one sub too much!)
          addl     %ecx,%r12d                   # digit 00
          rorl     $0x10,%r12d                  # trailing zero
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДї
          і blank leading zeroes іЫ
          АДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          testl    $0x0F00,%eax
          jne      0f
          subl     $0x1000,%eax
          testl    $0x000F0000,%eax
          jne      0f
          subl     $0x00100000,%eax
          testl    $0x0F,%ebx
          jne      0f
          subl     $0x10,%ebx
          testl    $0x0F00,%ebx
          jne      0f
          subl     $0x1000,%ebx
          testl    $0x000F0000,%ebx
          jne      0f
          subl     $0x00100000,%ebx
          testl    $0x0F,%edi
          jne      0f
          subl     $0x10,%edi
          testl    $0x0F00,%edi
          jne      0f
          subl     $0x1000,%edi
          testl    $0x000F0000,%edi
          jne      0f
          subl     $0x00100000,%edi
          testl    $0x0F,%esi
          jne      0f
          subl     $0x10,%esi
          testl    $0x0F00,%esi
          jne      0f
          subl     $0x1000,%esi
          testl    $0x000F0000,%esi
          jne      0f
          subl     $0x00100000,%esi
          testl    $0x0F,%r10d
          jne      0f
          subl     $0x10,%r10d
          testl    $0x0F00,%r10d
          jne      0f
          subl     $0x1000,%r10d
          testl    $0x000F0000,%r10d
          jne      0f
          subl     $0x00100000,%r10d
          testl    $0x0F,%r11d
          jne      0f
          subl     $0x10,%r11d
          testl    $0x0F00,%r11d
          jne      0f
          subl     $0x1000,%r11d
          testl    $0x000F0000,%r11d
          jne      0f
          subl     $0x00100000,%r11d
          testl    $0x0F,%r12d
          jne      0f
          subl     $0x10,%r12d
          testl    $0x0F00,%r12d
          jne      0f
          subl     $0x1000,%r12d
        0:
/*
          movl     0xA0(%rsp),%r8d
          leaq     0x1C(%rdx),%rbp
          leaq     0x02(%rdx),%r9
          movl     $0x1A,     %ecx
          movl     $0x19,     %r9d
          addl     $0x06,     %r8d
*/
          movl     %eax, 0x00(%rdx)
          movl     %ebx, 0x04(%rdx)
          movl     %edi, 0x08(%rdx)
          movl     %esi, 0x0C(%rdx)
          movl     %r10d,0x10(%rdx)
          movl     %r11d,0x14(%rdx)
          movq     %r12, 0x18(%rdx)
/*
          testl    $0xFF00,   %r8d
          cmovne   %r9d,      %ecx
          andl     $0xFF,     %r8d
          cmove    %ecx,      %r8d
          cmpl     %ecx,      %r8d
          cmova    %ecx,      %r8d
          je       XITB
          movl     %r8,       %ecx
          subq     %r8,       %rbp
        1:subl     $0x03,     %ecx
          jbe      2f
          decl     %rbp
          jmp      1b
        2:movb     0x00(%rbp),%cl
          movb     %cl,0x00(%r9)
          decl     %r8d
          jne      2b
*/
          jmp      XITB
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і dec2D   decimal ASCII string -> DWORD                                              іЫ
          і dec2Q   decimal ASCII string -> QWORD                                              іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA source                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   qword (signed if leading "-")                                              іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і dec2*() scans for the string end and works backwards. The last 10 or 20 digits are іЫ
          і taken as parts of a 64 bit number. Surplus digits are ignored, one leading sign is іЫ
          і recognised. If a sign was detected, the dword is negated before returning it.      іЫ
          і                                                                                    іЫ
          і CAUTION: Only unsigned numbers can have 20 digits, while signed numbers always are іЫ
          і          19 or less digits wide. Putting a sign in front of a 20 digit number will іЫ
          і          emit an erroneouos, twice negated result.                                 іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _dec2D
          .def     _dec2D; .scl 2; .type 32; .endef
          .globl   _dec2Q
          .def     _dec2Q; .scl 2; .type 32; .endef
   _dec2D:movl     $0x0A,%eax
          jmp      0f
          .p2align 4,,15
   _dec2Q:movl     $0x14,%eax
        0:subq     $0xB8,%rsp
          prefetch 0x00(%rcx)
          nop
          movq     %r10,0x70(%rsp)
          movq     %rbp,0x78(%rsp)
          movq     %rsi,0x80(%rsp)
          movq     %rdi,0x88(%rsp)
          movq     %rbx,0x90(%rsp)
          movq     %r9, 0x98(%rsp)
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          movq     %rcx,%rdi                    # RDI = EA string
          xorl     %ebx,%ebx                    # RBX = result
          xorq     %r10,%r10                    # R10 = sign
          negq     %rcx                         # RCX = -(EA string)
          movl     $0xFF,%r9d
        0:movq     0x00(%rdi),%r8               # search string end
          movl     $0x08,%edx
        1:testq    %r9,%r8                      # test LSB
          je       2f
          incq     %rdi                         # EA++
          shrq     $0x08,%r8                    # next byte
          decl     %edx
          jne      1b
          jmp      0b
        2:addq     %rdi,%rcx                    # RCX = string size
          movl     $0x01,%ebp                   # EBP = pow10
          movl     %eax,%r8d                    # R08 = digit_cnt
          decq     %rdi                         # RDI = last digit
        3:decl     %ecx                         # size--
          js       5f
          movzb    0x00(%rdi),%eax              # get byte
          decq     %rdi
          cmpl     $0x2B,%eax                   # sign?
          jne      4f
          incq     %r10                         # set sign flag
          jmp      3b
        4:subl     $0x30,%eax                   # convert
          js       3b
          cmpl     $0x09,%eax
          ja       3b
          mulq     %rbp                         # digit * pow10
          leaq     0x00(%rbp, %rbp, 4),%rbp     # EBP * 5
          addq     %rax,%rbx                    # result + n*pow10
          shlq     %rbp                         # EBP = next pow10
          decq     %r8                          # digit_cnt--
          jne      3b
        5:movq     %rbx,%rax                    # EAX = result
          testq    %r10,%r10                    # sign detected?
          je       XIT9
          negq     %rax                         # negate
          jmp      XIT9
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і                            M I S C E L L A N E O U O S                             іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і prime   test if input is a prime number                                            іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   QWORD to check                                                             іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   no prime                                             іЫ
          і         0000 0000 0000 0001   is prime                                             іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _prime
          .def     _prime; .scl 2; .type 32; .endef
   _prime:subq     0xB8,%rsp
          movq     %rcx,%rax                    # RAX = number
          nop
          movq     %r8, 0xA0(%rsp)
          movq     %rdx,0xA8(%rsp)
          movq     %rcx,0xB0(%rsp)
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДї
          і filter 1, 2 and 3      іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          cmpq     $0x01,%rax
          jbe      NoPrm                        # 1, no
          cmpq     $0x04,%rax
          jb       IsPrm                        # first prime numbers
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДї
          і prepare                іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          movq     %rax,%r8                     # RBX = number (test)
          movq     %rax,%rcx                    # RCX = number (storage)
          xorq     %rdx,%rdx
          shrq     %r8                          # start with half
          ja       NoPrm                        # is even
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДї
          і check, if prime        іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
        0:divq     %r8
          testq    %rdx,%rdx                    # remainder = 0?
          je       NoPrm
          subq     $0x02,%r8                    # skip even numbers
          movq     %rcx,%rax                    # restore number
          xorq     %rdx,%rdx
          cmpq     $0x03,%r8
          jae      0b                           # one more try...
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДї
          і set return value       іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
    IsPrm:movl     $0x01,%eax
          jmp      XIT3
    NoPrm:xorl     %eax,%eax
          jmp      XIT3
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і                               C O M M O N   E X I T                                іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
     XITB:movq     0x60(%rsp),%r12
     XITA:movq     0x68(%rsp),%r11
     XIT9:movq     0x70(%rsp),%r10
          movq     0x78(%rsp),%rbp
     XIT7:movq     0x80(%rsp),%rsi
          movq     0x88(%rsp),%rdi
     XIT5:movq     0x90(%rsp),%rbx
     XIT4:movq     0x98(%rsp),%r9
     XIT3:movq     0xA0(%rsp),%r8
          movq     0xA8(%rsp),%rdx
     XIT1:movq     0xB0(%rsp),%rcx
          addq     $0xB8,%rsp
          ret
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .comm    _BNR, 8, 3
