          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                    W R A P P E R S   (C) ST-Open 2012
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

    LogicalDevice =      CreateFile(
                                    LogicalDriveID,
                                    GENERIC_READ|GENERIC_WRITE,
                                    FILE_SHARE_READ | FILE_SHARE_WRITE,
                                    NULL,
                                    OPEN_EXISTING,
                                    0,
                                    NULL
                                   );   
    i             = DeviceIoControl(
                                    LogicalDevice,
                                    FSCTL_LOCK_VOLUME,
                                    NULL,
                                    0,
                                    NULL,
                                    0,
                                    &ol,
                                    NULL
                                   );
    i             = DeviceIoControl(
                                    LogicalDevice,
                                    FSCTL_DISMOUNT_VOLUME,
                                    NULL,
                                    0,
                                    NULL,
                                    0,
                                    &ol,
                                    NULL
                                   );

            After locking the drive you have to dismount it and get rid of the DOS device. To
            dismount the drive use DeviceIoControl with FSCTL_DISMOUNT_VOLUME. To get rid of
            the DOS device (i.e. the drive letter) call DefineDosDevice with
            DDD_RAW_TARGET_PATH | DDD_REMOVE_DEFINITION | DDD_EXACT_MATCH_ON_REMOVE.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Ioctl
          .def     _Ioctl; .scl 2; .type 32; .endef
   _Ioctl:movq        $devio,        %rax
          jmp         0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Open
          .def     _Open; .scl 2; .type 32; .endef
    _Open:movq     $open,            %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Close
          .def     _Close; .scl 2; .type 32; .endef
   _Close:movq     $close,           %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Read
          .def     _Read; .scl 2; .type 32; .endef
    _Read:movq     $read,            %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Write
          .def     _Write; .scl 2; .type 32; .endef
   _Write:movq     $write,           %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Dlock
          .def     _Dlock; .scl 2; .type 32; .endef
   _Dlock:movq     $dlock,           %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            distributor
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0xB8,            %rsp
          movdqa   %xmm4,            0x60(%rsp)
          movdqa   %xmm5,            0x70(%rsp)
          movq     %rcx,             0x88(%rsp)
          movq     %rdx,             0x90(%rsp)
          movq     %r8,              0x98(%rsp)
          movq     %r9,              0xA0(%rsp)
          movq     %r10,             0xA8(%rsp)
          movq     %r11,             0xB0(%rsp)
          movq     _BNR(%rip),       %r10               # R10 = BNR
          jmp      *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Ioctl     DeviceIoControl()               00
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    file handle
               RDX    control code
               R08    input  buffer EA
               R09                  size
               P_5    output buffer EA
               P_6                  size
               P_7    EA DD receiving output size
               P_8    EA OVERLAPPED structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   ???
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    devio:movdqa   0xE0(%rsp),       %xmm0              # XM0 = P_5 + P_6
          movdqa   0xF0(%rsp),       %xmm1              # XM1 = P_7 + P_8
          movdqa   %xmm0,            0x20(%rsp)         # set   P_5 + P_6
          movdqa   %xmm1,            0x30(%rsp)         # set   P_7 + P_8
          call     *__imp__DeviceIoControl(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Open      CreateFile()                    01
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    file name
               RDX    generic_* flags
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   handle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     open:movq     $0x03,            %r8                # r, w
          xorq     %r9,              %r9                # no security
          movq     $0x03,            0x20(%rsp)         # open if exists
          movq     $0x00,            0x28(%rsp)         # no attributes
          movq     $0x00,            0x30(%rsp)         # no template
          call     *__imp__CreateFileA(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Close     CloseHandle()                   02
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    handle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   ok
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    close:xorl     %eax,             %eax               # prevent jmp->call
          call     *__imp__CloseHandle(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Read      ReadFile()                      03
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    handle
               RDX    buffer EA
               R08           size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   byte read
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
     read:xorq     %r10,             %r10               # R10 = EA OVERLAPPED
          leaq     0x28(%rsp),       %r9                # R09 = EA dummy
          movq     %r10,             0x20(%rsp)         # dummy OVERLAPPED
          call     *__imp__ReadFile(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Write     WriteFile()                     04
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    handle
               RDX    buffer EA
               R08           size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000 0000 0000 0000   error
                      xxxx xxxx xxxx xxxx   byte written
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    write:xorq     %r10,             %r10               # R10 = EA OVERLAPPED
          leaq     0x28(%rsp),       %r9                # R09 = EA dummy
          movq     %r10,             0x20(%rsp)         # dummy OVERLAPPED
          call     *__imp__WriteFile(%rip)
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Dlock     lock & unmount drive            05
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX    handle
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX    0000   okay
                      0009   cannot lock
                      000A          unmount
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    dlock:pxor     %xmm0,            %xmm0              # XM0 = [NULL][0]
          leaq     0x40(%rsp),       %r10               # R10 = EA unused dummy
          movq     $0x09,            %r11               # R11 = DIM_LOCK_FAILED
          movl     $0x00090018,      %edx               # RDX = lock
          xorq     %r8,              %r8                # R08 = NULL
          xorq     %r9,              %r9                # R08 = 0
          movdqa   %xmm0,            0x20(%rsp)         # P_5 = NULL, P_6 = 0
          movq     %r10,             0x30(%rsp)         # P_7 = EA unused dummy
          movq     %xmm0,            0x38(%rsp)         # P_8 = NULL
          call     _Ioctl
          testl    %eax,             %eax
          cmove    %r11d,            %eax               # RAX = DIM_LOCK_FAILED
          je       XIT
          movq     _OBF(%rip),       %r10                # RDX = buffer
          movl     $0x00090020,      %edx               # RDX = lock
          incq     %r11                                 # R11 = DIM_UNMOUNT
          call     _Ioctl
          testl    %eax,             %eax               #       error?
          cmove    %r11d,            %eax               # y =>  DIM_UNMOUNT
          cmovne   %r8d,             %eax               # n =>  ERR_NO_ERROR
          jmp      XIT
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            common exit
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      XIT:movdqa   0x60(%rsp),       %xmm4
          movdqa   0x70(%rsp),       %xmm5
          movq     0x88(%rsp),       %rcx
          movq     0x90(%rsp),       %rdx
          movq     0x98(%rsp),       %r8
          movq     0xA0(%rsp),       %r9
          movq     0xA8(%rsp),       %r10
          movq     0xB0(%rsp),       %r11
          addq     $0xB8,            %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,             8, 3
