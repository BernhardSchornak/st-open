          /*
            ==================================================================================
                             D E B U G G I N G   T O O L S   (C) ST-Open 2012                 
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
            These functions return all registers, including EAX, as they were passed.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            To reduce debugging time:

            If you use one of the dump functions in your code - keep care that RSP is properly
            aligned. If you insert dumps in internal subfunctions, RSP probably is not aligned
            any longer, because the call pushes RIP onto the stack, so RSP now ends with an 8,
            not with the assumed zero. All dumps call file functions which save XMM registers.
            Calling them with an unaligned RSP results in a crash, because those functions use
            MOVDQA rather than MOVDQU. Please align RSP before you call any dump functions!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4, 0x00, 15
     LC00:.ascii   "debug"
          .byte    0x00, 0x00, 0x00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          .p2align 4,,15
          .globl   _RegDmp
          .def     _RegDmp; .scl 2; .type 32; .endef
  _RegDmp:pushq    %rax                                  # preserve RAX
          leaq     rdmp(%rip),          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _LDTdmp
          .def     _LDTdmp; .scl 2; .type 32; .endef
  _LDTdmp:pushq    %rax                                  # preserve RAX
          leaq     ldtd(%rip),          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _FldDmp
          .def     _FldDmp; .scl 2; .type 32; .endef
  _FldDmp:pushq    %rax                                  # preserve RAX
          leaq     fldd(%rip),          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _MemDmp
          .def     _MemDmp; .scl 2; .type 32; .endef
  _MemDmp:pushq    %rax                                  # preserve RAX
          leaq     mdmp(%rip),          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _MsgDmp
          .def     _MsgDmp; .scl 2; .type 32; .endef
  _MsgDmp:pushq    %rax                                  # preserve RAX
          leaq     msgd(%rip),          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _StkDmp
          .def     _StkDmp; .scl 2; .type 32; .endef
  _StkDmp:pushq    %rax                                  # preserve RAX
          leaq     sdmp(%rip),          %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _debug
          .def     _debug; .scl 2; .type 32; .endef
   _debug:pushq    %rax                                  # preserve RAX
          leaq     dbg(%rip),           %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DISTRIBUTOR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0xF0,               %rsp
          movdqa   %xmm0,               0x60(%rsp)
          movdqa   %xmm1,               0x70(%rsp)
          movdqa   %xmm2,               0x80(%rsp)
          movdqa   %xmm3,               0x90(%rsp)
          movdqa   %xmm4,               0xA0(%rsp)
          movdqa   %xmm5,               0xB0(%rsp)
          movq     %r11,                0xC0(%rsp)
          movq     %r10,                0xC8(%rsp)
          movq     %r9,                 0xD0(%rsp)
          movq     %r8,                 0xD8(%rsp)
          movq     %rdx,                0xE0(%rsp)
          movq     %rcx,                0xE8(%rsp)
          jmp      *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            debug   show qword in message box
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RAX   qword to display
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   unchanged
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
         .p2align 4,,15
      dbg:movq     0xF0(%rsp),          %rcx             # RCX = RAX at entry
          leaq     0x20(%rsp),          %rdx             # RDX = EA text
          call     _Q2hex
          movq     %rdx,                %rcx             # RCX = EA text
          leaq     LC00(%rip),          %rdx             # RDX = EA title
          xorq     %r8,                 %r8              # R08 = flags
          call     _MBox
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MsgDmp  write window message to "msg.dmp"
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   HWND
               RDX   msg
               R08   WPARAM
               R09   LPARAM
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <-       all registers are returned as passed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Writes the contents of RCX, RDX, R08 and R09 to one 32 byte dump line. Up to 2,048
            messages can be stored. If the incoming messages exceed the buffer size, the first
            messages are overwritten (wrap).

            CAUTION: MsgDmp() uses the same buffer as RegDmp. You SHOULD NOT call both. Other-
                     wise, RegDmp() will overwrite 512 byte while MsgDmp overwrites 32 byte of
                     the output buffer at their current positions.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     msgd:movq     _TST(%rip),          %rax             # RAX = TST
          addq     _MSGDMP(%rip),       %rax             # RAX = EA dump line
          movq     %rcx,                0x00(%rax)       # store message parameters
          movq     %rdx,                0x08(%rax)
          movq     %r8,                 0x10(%rax)
          movq     %r9,                 0x18(%rax)
          addl     $0x20,               %eax             # next dump line
          movq     _TST(%rip),          %r11             # R11 = EA TST
          andl     $0xFFE0,             %eax             # keep valid
          movl     $0x2E67736D,         0x24(%rsp)       # msg.
          movl     $0x00706D64,         0x28(%rsp)       # dmp0
          movl     %eax,                _MSGDMP(%rip)    # store next line
          movl     $0x00010000,         %r10d            # R10 = size (65,536 byte)
          jmp      L01
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            RegDmp  write register dump to "xxxx.reg"
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ->       nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <-       all registers are returned as passed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Write the contents of EAX...R15 and XMM0...XMM15 to the next dump line. Store dump
            as file "reg.dmp" (65,536 byte total, 512 byte per dump => 128 dumps).
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     rdmp:movq     0xF0(%rsp),          %rax             # RAX = RAX at entry
          movq     _TST(%rip),          %r11             # R11 = EA TST
          testq    %r11,                %r11
          je       XIT
          addq     _REGDMP(%rip),       %r11             # RBP + offset
          movq     %rax,                0x00(%r11)       # store registers
          movq     %rbx,                0x08(%r11)
          movq     0xC0(%rsp),          %rax             # RAX = R11 at entry
          leaq     0x0100(%rsp),        %rbx             # RBX = RSP caller
          movq     %rcx,                0x0010(%r11)
          movq     %rdx,                0x0018(%r11)
          movq     %rdi,                0x0020(%r11)
          movq     %rsi,                0x0028(%r11)
          movq     %rbp,                0x0030(%r11)
          movq     %rbx,                0x0038(%r11)
          movq     %r8,                 0x0040(%r11)
          movq     %r9,                 0x0048(%r11)
          movq     %r10,                0x0050(%r11)
          movq     %rax,                0x0058(%r11)
          movq     %r12,                0x0060(%r11)
          movq     %r13,                0x0068(%r11)
          movq     %r14,                0x0070(%r11)
          movq     %r15,                0x0078(%r11)
          movq     0xF8(%rsp),          %rax             # RAX = RIP[caller]
          movdqa   %xmm0,               0x0080(%r11)
          movdqa   %xmm1,               0x0090(%r11)
          movdqa   %xmm2,               0x00A0(%r11)
          movdqa   %xmm3,               0x00B0(%r11)
          movdqa   %xmm4,               0x00C0(%r11)
          movdqa   %xmm5,               0x00D0(%r11)
          movdqa   %xmm6,               0x00E0(%r11)
          movdqa   %xmm7,               0x00F0(%r11)
          movdqa   %xmm8,               0x0100(%r11)
          movdqa   %xmm9,               0x0110(%r11)
          movdqa   %xmm10,              0x0120(%r11)
          movdqa   %xmm11,              0x0130(%r11)
          movdqa   %xmm12,              0x0140(%r11)
          movdqa   %xmm13,              0x0150(%r11)
          movdqa   %xmm14,              0x0160(%r11)
          movdqa   %xmm15,              0x0170(%r11)
          movq     %rax,                0x0180(%r11)     # store RIP[caller]
          movq     0x08(%r11),          %rbx
          addq     $0x0200,             _REGDMP(%rip)    # next dump
          movq     _TST(%rip),          %r11             # R11 = EA TST
          movl     $0x2E676572,         0x24(%rsp)       # reg.
          movl     $0x00706D64,         0x28(%rsp)       # dmp0
          movl     $0x00010000,         %r10d            # R10 = size (65,536 byte)
          andq     $0xFE00,             _REGDMP(%rip)    # wrap at limit
          jmp      L01
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            LDTdmp  copy LDT to file "xxxx.mdp"
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> -     nothing to pass
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <-       all registers are returned as passed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Dumps entire LoaderTable to file "xxxx.mdp".
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     ldtd:movq     _BMM(%rip),          %rcx             # RCX = BMM
          movl     $0x00010000,         %edx             # RDX = size
          jmp      mdmp
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            FldDmp  copy field to file "xxxx.mdp"
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   MemHandle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <-       all registers are returned as passed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Dumps entire memory block allocated for field RCX to file "xxxx.mdp".
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     fldd:movl     0x10(%rcx),          %edx             # RDX = allocated! size
          movq     0x00(%rcx),          %rcx             # RCX = EA field
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            MemDmp  write memory dump to "xxxx.mdp"
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA memory block
               RDX   byte to dump
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <-       all registers are returned as passed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Dumps RDX byte starting at 00[RCX] to file "xxxx.mdp".
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     mdmp:movq     _BNR(%rip),          %rax
          movq     %rcx,                %r11             # RBP = address
          movl     MEMDMP(%rax),        %ecx             # RCX = number
          incl     %ecx                                  # RCX = next
          movq     %rdx,                %r10             # RSI = size (as passed)
          movl     $0x70646D2E,         %r9d             # .mdp
          movl     %ecx,                MEMDMP(%rax)     # RCX = number
          jmp      L00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            StkDmp  write stack dump to "xxxx.sdp"
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ->       nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <-       all registers are returned as passed
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Creates stack dumps with continuous hexadecimal file numbers "xxxx.stk". Each dump
            holds 512 byte, starting at the 00[RSP] of the calling function.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     sdmp:movq     _BNR(%rip),          %rax
          movl     $0x7064732E,         %r9d             # .sdp
          movq     STKDMP(%rax),        %rcx             # RCX = number
          incl     %ecx                                  # RCX = next
          movl     $0x0200,             %r10d            # RSI = size (512 byte)
          leaq     0x0100(%rsp),        %r11             # R11 = stack bottom
          movl     %ecx,                STKDMP(%rax)     # store
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            WRITE FILE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      L00:leaq     0x24(%rsp),          %rdx             # RDX = filename
          call     _W2hex
          movq     %r9,                 0x28(%rsp)       # write extension
      L01:leaq     0x30(%rsp),          %rcx             # RCX = FH
          xorl     %edx,                %edx             # RDX = size
          xorq     %r8,                 %r8              # R08 = open or create
          leaq     0x24(%rsp),          %r9              # R09 = filename
          movq     %r11,                0x40(%rsp)       # fh.Mbase
          movq     %rdx,                0x48(%rsp)       # fh.Foffs
          movq     %r8,                 0x50(%rsp)       # fh.Moffs
          call     _Fopen
          movq     %r10,                %rdx             # size
          call     _Fwrite
          call     _Fclose
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            COMMON EXIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
      XIT:movdqa   0x60(%rsp),          %xmm0
          movdqa   0x70(%rsp),          %xmm1
          movdqa   0x80(%rsp),          %xmm2
          movdqa   0x90(%rsp),          %xmm3
          movdqa   0xA0(%rsp),          %xmm4
          movdqa   0xB0(%rsp),          %xmm5
          movq     0xC0(%rsp),          %r11
          movq     0xC8(%rsp),          %r10
          movq     0xD0(%rsp),          %r9
          movq     0xD8(%rsp),          %r8
          movq     0xE0(%rsp),          %rdx
          movq     0xE8(%rsp),          %rcx
          movq     0xF0(%rsp),          %rax
          addq     $0xF8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,                8, 3
          .comm    _MSGDMP,             8, 3
          .comm    _REGDMP,             8, 3
          .comm    _TST,                8, 3
