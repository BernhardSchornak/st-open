          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                   P R O C E S S O R   (C) ST-Open 2012
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
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          .include "stb.h"
          .section .rdata, "dr"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            TABLES FOR SSE ACCESS
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
       x0:.byte      0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20
          .byte      0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                   I D E N T I F Y    P R O C E S S O R
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   -
               RDX   -
               R08   -
               R09   -
               RSI   BNR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- EAX   00000000   ok
                     000000??   error code (see Rxx labels)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align    4,,15
          .globl _pinfo
          .def   _pinfo; .scl 2; .type 32; .endef
   _pinfo:subq        $0xF8,        %rsp
          movq        RUN_00(%rsi), %rax                # RAX = EA block
          movdqa      %xmm4,        0x70(%rsp)
          movdqa      %xmm5,        0x80(%rsp)
          movq        %r10,         0x98(%rsp)
          movq        %r11,         0xA0(%rsp)
          movq        %r12,         0xA8(%rsp)
          movq        %r13,         0xB0(%rsp)
          movq        %rbp,         0xB8(%rsp)
          movq        %rsi,         0xC0(%rsp)
          movq        %rdi,         0xC8(%rsp)
          movq        %rbx,         0xD0(%rsp)
          movq        %r9,          0xD8(%rsp)
          movq        %r8,          0xE0(%rsp)
          movq        %rdx,         0xE8(%rsp)
          movq        %rcx,         0xF0(%rsp)
          movq        %rax,         %rdi                # RDI = EA block
          leaq        VND_S0(%rax), %r10                # R10 = EA processor string
          xorl        %r12d,        %r12d               # R12 = 0
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~
            gather data
            ~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x80000002,  %eax                # FCT = 8000_0002
          cpuid
          movl        %eax,         0x00(%r10)          # store
          movl        %ebx,         0x04(%r10)
          movl        %ecx,         0x08(%r10)
          movl        %edx,         0x0C(%r10)
          movl        $0x80000003,  %eax                # FCT = 8000_0003
          cpuid
          movl        %eax,         0x10(%r10)          # store
          movl        %ebx,         0x14(%r10)
          movl        %ecx,         0x18(%r10)
          movl        %edx,         0x1C(%r10)
          movl        $0x80000004,  %eax                # FCT = 8000_0004
          cpuid
          movl        %eax,         0x20(%r10)          # store
          movl        %ebx,         0x24(%r10)
          movl        %ecx,         0x28(%r10)
          movl        %edx,         0x2C(%r10)
          xorl        %eax,         %eax                # FCT = 0000_0000
          cpuid
          movl        %ecx,         %r13d               # R13 = 'DMAc' or 'letn'
          andl        $0xFF,        %eax                # separate max_function
          movl        %ebx,         VND_00(%rdi)        # store vendor ID
          movl        %edx,         VND_01(%rdi)
          movl        %ecx,         VND_02(%rdi)
          movl        $0x00,        VND_03(%rdi)
          cmpl        $0x04,        %eax                # 0000_0004 supported?
          jb          R01
          movl        $0x01,        %eax                # FCT = 0000_0001
          cpuid
          movl        %eax,         %r8d                # copy
          movl        %eax,         %r9d
          movl        %eax,         %r10d
          movl        %eax,         %r11d
          incl        %r12d                             # R12 = 1
          shrl        $0x08,        %r8d                # R08 = 00?????f
          shrl        $0x14,        %r9d                # R09 = 00000?FF
          shrl        $0x0C,        %r10d               # R10 = 000???M?
          shrl        $0x04,        %r11d               # R11 = ???????m
          shrl        $0x10,        %ebx                # RBX = ??????pp
          andl        $0x0F,        %r8d                # R08 = 0000000f
          andl        $0xFF,        %r9d                # R09 = 000000FF
          andl        $0xF0,        %r10d               # R10 = 000000M0
          andl        $0x0F,        %r11d               # R11 = 0000000m
          andl        $0x0F,        %eax                # RAX = 0000000s
          andl        $0xFF,        %ebx                # RBX = 000000pp
          addl        %r8d,         %r9d                # R09 = 000000Ff
          addl        %r10d,        %r11d               # R11 = 000000Mm
          cmpl        $0x0F,        %r8d                # extended?
          cmove       %r9d,         %r8d                # use extended params
          cmove       %r11d,        %r10d
          shrl        $0x1C,        %ecx                # separate AVX flag
          testl       $0x10000000,  %edx                # multiple cores?
          cmove       %r12,         %r11                # just one core...
          cmove       %r12d,        %ebx
          andl        $0x01,        %ecx                # RCX = AVX_AV
          decq        %r11                              # R11 = thread count
          movl        %r8d,         P_FAMI(%rdi)        # store processor info
          movl        %r10d,        P_MODL(%rdi)
          movl        %eax,         P_STEP(%rdi)
          movl        %ebx,         PCOUNT(%rdi)
          movl        %ecx,         GOTAVX(%rdi)        #       AVX flag
          movl        %r11d,        TCOUNT(%rdi)        #       thread count
          movl        %ebx,         CORE_C(%rsi)        # system numerics
          movl        %ecx,         AVX_AV(%rsi)        # AVX available
          movl        %r11d,        THRD_C(%rsi)        # thread count
          cmpl        $0x444D4163,  %r13d               # 'DMAc'?
          jne         L00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~
            AMD processor
            ~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movl        $0x80000005,  %eax                # FCT = 8000_0005
          cpuid
          movl        %ecx,         %r8d                # copy
          movl        %ecx,         %r9d
          movl        $0x80000006,  %eax                # FCT = 8000_0006
          cpuid
          movl        %ecx,         %r10d               # copy
          movl        %edx,         %r11d
          shrl        $0x18,        %r8d                # R08 = L1 size
          andl        $0xFF,        %r9d                # R09 = L1 cache line size
          shrl        $0x10,        %r10d               # R10 = L2 size
          shrl        $0x12,        %r11d               # R11 = L3 size * 512
          andl        $0xFF,        %ecx                # RCX = L2 cache line size
          andl        $0xFF,        %edx                # RCX = L3 cache line size
          shll        $0x09,        %r11d               # R11 = L3 size
          movl        %r8d,         L1_SKB(%rdi)        # store
          movl        %r9d,         L1_CLS(%rdi)
          movl        %r10d,        L2_SKB(%rdi)
          movl        %ecx,         L2_CLS(%rdi)
          movl        %r11d,        L3_SKB(%rdi)
          movl        %edx,         L3_CLS(%rdi)
          jmp         L01
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~
            do it the LETNi way...
            ~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align    4,,15
      L00:movl        $0x04,        %eax                # FCT = 0000_0004
          xorl        %ecx,         %ecx
          xorl        %r12d,        %r12d
          cpuid
          andl        $0x1F,        %eax                # any cache?
          je          R02
          testl       $0x01,        %eax                # data cache?
          je          1f
        0:movl        %ebx,         %r8d                # copy
          movl        %ebx,         %r9d
          shrl        $0x0C,        %r8d
          shrl        $0x16,        %ebx                # EBX = system coherency line size
          andl        $0x0FFF,      %r9d                # R09 = ways of associativity
          andl        $0x03FF,      %r8d                # R08 = physical line partitions
          incl        %ebx                              # all gathered values are (n-1)...
          incl        %ecx
          incl        %r8d
          incl        %r9d
          imul        %rbx,         %rcx                # tmp = number of sets * system coherency line size
          imul        %r8,          %rcx                # tmp = tmp * physical line partitions
          imul        %r9,          %rcx                # RCX = tmp * ways of associativity
          shrq        $0x0A,        %rcx                # RCX / 1024
          movl        %ecx,         L1_SKB(%rdi)        # store
          movl        %ebx,         L1_CLS(%rdi)
          jmp         2f
          .p2align    4,,15
        1:incl        %r12d                             # R12 = next instance
          movl        $0x04,        %eax                # FCT = 0000_0004
          movl        %r12d,        %ecx                # RCX = next instance
          cpuid
          andl        $0x1F,        %eax                # any cache?
          je          R02
          testl       $0x01,        %eax                # data cache?
          jne         0b
          jmp         1b
          .p2align 4,,15
        2:incl        %r12d                             # R12 = next instance
          movl        $0x04,        %eax                # FCT = 0000_0004
          movl        %r12d,        %ecx                # RCX = next instance
          cpuid
          andl        $0x1F,        %eax                # any cache?
          je          L01
          testl       $0x01,        %eax                # data cache?
          je          2b
          movl        %ebx,         %r8d                # copy
          movl        %ebx,         %r9d
          shrl        $0x0C,        %r8d                # R08 = 00000plp
          shrl        $0x16,        %ebx                # EBX = system coherency line size
          andl        $0x0FFF,      %r9d                # R09 = ways of associativity
          andl        $0x03FF,      %r8d                # R08 = physical line partitions
          incl        %ebx                              # all gathered values are (n-1)...
          incl        %ecx
          incl        %r8d
          incl        %r9d
          imul        %rbx,         %rcx                # tmp = number of sets * system coherency line size
          imul        %r8,          %rcx                # tmp = tmp * physical line partitions
          imul        %r9,          %rcx                # RCX = tmp * ways of associativity
          shrq        $0x0A,        %rcx                # RCX / 1024
          movl        %ecx,         L2_SKB(%rdi)        # store
          movl        %ebx,         L2_CLS(%rdi)
          .p2align    4,,15
        3:incl        %r12d                             # R12 = next instance
          movl        $0x04,        %eax                # FCT = 0000_0004
          movl        %r12d,        %ecx                # RCX = next instance
          cpuid
          andl        $0x1F,        %eax                # any cache?
          je          L01
          testl       $0x01,        %eax                # data cache?
          je          3b
          movl        %ebx,         %r8d                # copy
          movl        %ebx,         %r9d
          shrl        $0x0C,        %r8d                # R08 = 00000plp
          shrl        $0x16,        %ebx                # EBX = system coherency line size
          andl        $0x0FFF,      %r9d                # R09 = ways of associativity
          andl        $0x03FF,      %r8d                # R08 = physical line partitions
          incl        %ebx                              # all gathered values are (n-1)...
          incl        %ecx
          incl        %r8d
          incl        %r9d
          imul        %rbx,         %rcx                # tmp = number of sets * system coherency line size
          imul        %r8,          %rcx                # tmp = tmp * physical line partitions
          imul        %r9,          %rcx                # RCX = tmp * ways of associativity
          shrq        $0x0A,        %rcx                # RCX / 1024
          movl        %ecx,         L3_SKB(%rdi)        # store
          movl        %ebx,         L3_CLS(%rdi)
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            retrieve processor speed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align    4,,15
      L01:rdtscp
          movl        %eax,         %r11d               # R11 = 00000000_D0_start
          movl        %edx,         %r12d               # R12 = 00000000_D1_start
          movl        $0x03E8,      %ecx                # RCX = 1000
          call        _WaitTm
          rdtscp
          addl        $0x50,        %r11d               # R11 + 80 (for RDTSCP)
          shlq        $0x20,        %r12                # R12 = D1_start_00000000
          shlq        $0x20,        %rdx                # RDX = D1_ended_00000000
          addq        %r11,         %r12                # R12 = D1_start_D0_start
          addq        %rax,         %rdx                # RDX = D1_ended_D0_ended
          subq        %r12,         %rdx                # RDX = clocks per second
          movq        %rdx,         P_FREQ(%rdi)        # store field
          movq        %rdx,         PSPEED(%rsi)        #       SystemNumerics
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            post process
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movdqa   VND_S0(%rdi), %xmm3                  # get unpadded
          movdqa   VND_S1(%rdi), %xmm4
          movdqa   VND_S2(%rdi), %xmm5
          pxor     %xmm0,        %xmm0
          pxor     %xmm1,        %xmm1
          pxor     %xmm2,        %xmm2
          movl     P_FAMI(%rdi), %ecx                   # RCX = family
          movl     P_MODL(%rdi), %r8d
          movl     P_STEP(%rdi), %r9d
          pcmpeqb  %xmm3,        %xmm0                  # 00 => FF
          pcmpeqb  %xmm4,        %xmm1
          pcmpeqb  %xmm5,        %xmm2
          pand     x0(%rip),     %xmm0                  # FF => 20
          pand     x0(%rip),     %xmm1
          pand     x0(%rip),     %xmm2
          paddb    %xmm0,        %xmm3                  # 00 => 20
          paddb    %xmm1,        %xmm4
          paddb    %xmm2,        %xmm5
          leaq     P_FAMI(%rdi), %rdx                   # RDX = EA insert
          leaq     0x20(%rsp),   %r10                   # R10 = EA buffer
          movdqa   %xmm3,        VND_S0(%rdi)           # store padded
          movdqa   %xmm4,        VND_S1(%rdi)
          movdqa   %xmm5,        VND_S2(%rdi)
          call     _B2hex
          movl     %r8d,         %ecx                   # RCX = model
          addq     $0x04,        %rdx
          call     _B2hex
          movl     %r9d,         %ecx                   # RCX = stepping
          addq     $0x04,        %rdx
          call     _B2hex
          movl     PCOUNT(%rdi), %r13d
          movq     P_FREQ(%rdi), %r11
          movl     L1_SKB(%rdi), %ebx
          movl     L1_CLS(%rdi), %r9d
          movq     %r10,         %rdx                   # RDX = 20[RSP]
          movl     $0x0A,        %r8d
          movl     %r13d,        %ecx                   # RCX = core count
          call     _D2dec
          decq     %r13
          movq     %r11,         %rcx                   # RCX = frequency
          addq     $0x10,        %rdx                   # RDX = 30[RSP]
          shlq     %r8
          call     _Q2dec
          movl     %ebx,         %ecx                   # RCX = L1 cache size
          addq     $0x20,        %rdx                   # RDX = 50[RSP]
          shrq     %r8
          call     _D2dec
          movl     %r9d,         %ecx                   # RCX = L1 line size
          addq     $0x10,        %rdx                   # RDX = 60[RSP]
          call     _D2dec
          movl     0x2C(%rsp),   %eax                   # get string parts
          movdqu   0x3E(%rsp),   %xmm0
          movq     0x58(%rsp),   %r9
          movl     0x6C(%rsp),   %ebx
          movl     %eax,         PCOUNT(%rdi)           # store as ASCII
          movdqa   %xmm0,        P_FREQ(%rdi)
          movq     %r9,          L1_SKB(%rdi)
          movq     %rbx,         L1_CLS(%rdi)
          movq     %r10,         %rdx
          movl     L2_SKB(%rdi), %ecx                   # RCX = L2 cache size
          movl     L2_CLS(%rdi), %ebx
          movl     L3_SKB(%rdi), %r9d
          movl     L3_CLS(%rdi), %r11d
          call     _D2dec
          movl     %ebx,         %ecx                   # RCX = L2 line size
          addq     $0x10,        %rdx
          call     _D2dec
          movl     %r9d,         %ecx                   # RCX = L3 cache size
          addq     $0x10,        %rdx
          call     _D2dec
          movl     %ebx,         %ecx                   # RCX = L3 line size
          addq     $0x10,        %rdx
          call     _D2dec
          movl     %r13d,        %ecx                   # RCX = thread count
          addq     $0x10,        %rdx
          call     _D2dec
          movq     0x28(%rsp),   %r8                    # get string parts
          movl     0x3C(%rsp),   %eax
          movq     0x48(%rsp),   %r9
          movl     0x5C(%rsp),   %ebx
          movl     0x6C(%rsp),   %edx
          movq     %r8,          L2_SKB(%rdi)
          movq     %rax,         L2_CLS(%rdi)
          movq     %r9,          L3_SKB(%rdi)
          movq     %rbx,         L3_CLS(%rdi)
          movl     $0x3830,      LCOUNT(%rdi)
          movl     %edx,         TCOUNT(%rdi)
          jmp      XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            error handling
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align    4,,15
      R01:movl        $0x01,        %ecx                # ERR_CPUID_FAILED
          jmp         RMG
          .p2align    4,,15
      R02:movl        $0x02,        %ecx                # ERR_NO_CACHE_DATA
          movl        $0x40,        %ebx                # RBX = 64
          call        _ErrMgr
          movl        %ebx,         L1_SKB(%rsi)        # assumed 64 KB L1 cache
          movl        %ebx,         L1_CLS(%rsi)        #         64  B cache line size
          jmp         L01
          .p2align    4,,15
      RMG:call        _ErrMgr
          jmp         XIZ
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIZ:xorq        %rax,         %rax
      XIT:movdqa      0x70(%rsp),   %xmm4
          movdqa      0x80(%rsp),   %xmm5
          movq        0x98(%rsp),   %r10
          movq        0xA0(%rsp),   %r11
          movq        0xA8(%rsp),   %r12
          movq        0xB0(%rsp),   %r13
          movq        0xB8(%rsp),   %rbp
          movq        0xC0(%rsp),   %rsi
          movq        0xC8(%rsp),   %rdi
          movq        0xD0(%rsp),   %rbx
          movq        0xD8(%rsp),   %r9
          movq        0xE0(%rsp),   %r8
          movq        0xE8(%rsp),   %rdx
          movq        0xF0(%rsp),   %rcx
          addq        $0xF8,        %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,         8, 3
