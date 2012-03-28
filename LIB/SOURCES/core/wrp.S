          /*
            ==================================================================================
                               F I L E   H A N D L I N G   (C) ST-Open 2012
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
            No function in this file depends on a running Loader. File functions are called by
            LDinit() while initialising the system.  Because error parameters cannot be stored
            in memory areas not initialised (yet), qualified errors are returned in RAX, only.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            All functions return errorcodes defined in <err.h>. You may pass them to ErrMgr().
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Win64 returns 8 registers with altered content. These so called volatile registers
            must be preserved and restored, adding 20 superfluous clock cycles to each call...
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,0x00
     opmo:.long    0x00000003, 0x00000004                           # share   open or create
          .long    0x00000003, 0x00000001                           # share   create only
          .long    0x00000003, 0x00000003                           # share   open if exists
          .long    0x00000003, 0x00000002                           # share   replace if exists
          .long    0x00000000, 0x00000003                           # deny    open if exists
          .long    0x00000003, 0x00000004                           # share   open or create
          .long    0x00000003, 0x00000004                           # share   open or create
          .long    0x00000003, 0x00000004                           # share   open or create
     LC00:.byte    0x00, 0x00
          .ascii   "ATTRIB.EXE -r "
     LC01:.byte    0x2E, 0x2E, 0x2E, 0x2E, 0x2E, 0x2E, 0x2E, 0x2E   # dot
          .byte    0x2E, 0x2E, 0x2E, 0x2E, 0x2E, 0x2E, 0x2E, 0x2E
     LC02:.byte    0x2F, 0x2F, 0x2F, 0x2F, 0x2F, 0x2F, 0x2F, 0x2F   # forward slash
          .byte    0x2F, 0x2F, 0x2F, 0x2F, 0x2F, 0x2F, 0x2F, 0x2F
     LC03:.byte    0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C   # backslash
          .byte    0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C, 0x5C
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .text
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fopen()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Fopen
          .def     _Fopen; .scl 2; .type 32; .endef
   _Fopen:leaq     fopen(%rip),         %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fread()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Fread
          .def     _Fread; .scl 2; .type 32; .endef
   _Fread:leaq     fread(%rip),         %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fwrite()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Fwrite
          .def     _Fwrite; .scl 2; .type 32; .endef
  _Fwrite:leaq     fwrite(%rip),        %rax
          jmp      0f
          .p2align 4,,15
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fsptr()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .globl   _Fsptr
          .def     _Fsptr; .scl 2; .type 32; .endef
   _Fsptr:leaq     fsptr(%rip),         %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fsize()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Fsize
          .def     _Fsize; .scl 2; .type 32; .endef
   _Fsize:leaq     fsize(%rip),         %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fclose()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _Fclose
          .def     _Fclose; .scl 2; .type 32; .endef
  _Fclose:leaq     fclose(%rip),        %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CrDir()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _CrDir
          .def     _CrDir; .scl 2; .type 32; .endef
   _CrDir:leaq     crdir(%rip),         %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            remRO()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _remRO
          .def     _remRO; .scl 2; .type 32; .endef
   _remRO:leaq     remro(%rip),         %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GtFInf()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _GtFInf
          .def     _GtFInf; .scl 2; .type 32; .endef
  _GtFInf:leaq     getinf(%rip),        %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SetPath()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _SetPath
          .def     _SetPath; .scl 2; .type 32; .endef
 _SetPath:leaq     setpath(%rip),       %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ChgDir()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _ChgDir
          .def     _ChgDir; .scl 2; .type 32; .endef
  _ChgDir:leaq     chgdir(%rip),        %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DrvMap()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _DrvMap
          .def     _DrvMap; .scl 2; .type 32; .endef
  _DrvMap:leaq     drvmap(%rip),        %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PgPath()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _PgPath
          .def     _PgPath; .scl 2; .type 32; .endef
  _PgPath:leaq     pgpath(%rip),        %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GetPath()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _GetPath
          .def     _GetPath; .scl 2; .type 32; .endef
 _GetPath:leaq     getpath(%rip),       %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            NameExt()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _NameExt
          .def     _NameExt; .scl 2; .type 32; .endef
 _NameExt:leaq     nameext(%rip),       %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GetName()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _GetName
          .def     _GetName; .scl 2; .type 32; .endef
 _GetName:leaq     getname(%rip),       %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GetExt()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _GetExt
          .def     _GetExt; .scl 2; .type 32; .endef
  _GetExt:leaq     getext(%rip),        %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DirUp()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
          .globl   _DirUp
          .def     _DirUp; .scl 2; .type 32; .endef
   _DirUp:leaq     dirup(%rip),         %rax
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DISTRIBUTOR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
        0:subq     $0xB8,               %rsp
          movl     $0x01,               0x40(%rsp)       # RO flag
          movq     %rbp,                0x48(%rsp)
          movq     %rsi,                0x50(%rsp)
          movq     %rdi,                0x58(%rsp)
          movdqa   %xmm4,               0x60(%rsp)
          movdqa   %xmm5,               0x70(%rsp)
          movq     %rbx,                0x80(%rsp)
          movq     %r11,                0x88(%rsp)
          movq     %r10,                0x90(%rsp)
          movq     %r9,                 0x98(%rsp)
          movq     %r8,                 0xA0(%rsp)
          movq     %rdx,                0xA8(%rsp)
          movq     %rcx,                0xB0(%rsp)
          jmp      *%rax
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fopen    CreateFile(), GetFileSize(), Fsize()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   address FH structure
               RDX   file size (should be zero)
               R08   open mode - 0   open or create
                                 1   create, fail if exists
                                 2   open if exists
                                 3   replace if exists
                                 4   open if exists, deny r/w
                                (5-7 open or create)
               R09   address filename
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   0000 0000 0000 0000   ERR_NO_ERROR
                     0000 0000 0000 002B   ERR_OPEN
                     0000 0000 0000 002C   ERR_READONLY
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fopen() sets EAX to ERR_OPEN if GetFileSize() returns FFFF FFFF!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CALL    CreateFile(R09, 0xC0000000, R08, 0x00, 0x80, 0xA8000080, NULL);
                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX  EA filename
                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               RDX  GENERIC_WRITE                40000000   open for write access
                    GENERIC READ                 80000000            read  access
                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               R08  FILE_SHARE_READ              00000001   allow multi-open for read
                    FILE_SHARE_WRITE             00000002                        write
                    FILE_SHARE_DELETE            00000004   ignored by ST-Open!
                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               R09  NULL (SECURITY_ATTRIBUTES structure)
                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               0x20 CREATE_NEW                   00000001   create, fail if exists
                    CREATE_ALWAYS                00000002   create, overwrite if exists
                    OPEN_EXISTING                00000003   fail if does not exist
                    OPEN_ALWAYS                  00000004   open if exists, create if not
                    TRUNCATE_EXISTING            00000005   open if exist (sets size to zero)
                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               0x28 FILE_ATTRIBUTE_READONLY      00000001   -> remRO()
                    FILE_ATTRIBUTE_HIDDEN        00000002   -> attrib.exe
                    FILE_ATTRIBUTE_SYSTEM        00000004   -> attrib.exe
                    FILE_ATTRIBUTE_DIRECTORY     00000010   -> CrDir()
                    FILE_ATTRIBUTE_ARCHIVE       00000020   -> attrib.exe
                    FILE_ATTRIBUTE_DEVICE        00000040   ?
                    FILE_ATTRIBUTE_NORMAL        00000080   default flag for ST-Open!
                    FILE_ATTRIBUTE_TEMPORARY     00000100   ?
                    FILE_ATTRIBUTE_SPARSE_FILE   00000200   ?
                    F...TTRIBUTE_REPARSE_POINT   00000400   ?
                    FILE_ATTRIBUTE_COMPRESSED    00000800   ?
                    FILE_ATTRIBUTE_OFFLINE       00001000   ?
                    F...TE_NOT_CONTENT_INDEXED   00002000   ?
                    FILE_ATTRIBUTE_ENCRYPTED     00004000   ?
                    FILE_ATTRIBUTE_VALID_FLAGS   00007fb7   ?
                    F...RIBUTE_VALID_SET_FLAGS   000031a7   ?
                    FILE_FLAG_POSIX_SEMANTICS    01000000   off
                    FILE_FLAG_BACKUP_SEMANTICS   02000000   off
                    FILE_FLAG_DELETE_ON_CLOSE    04000000   off
                    FILE_FLAG_SEQUENTIAL_SCAN    08000000   default
                    FILE_FLAG_RANDOM_ACCESS      10000000   off
                    FILE_FLAG_NO_BUFFERING       20000000   off
                    FILE_FLAG_OVERLAPPED         40000000   off
                    FILE_FLAG_WRITE_THROUGH      80000000   default
                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               0x30 FILE_FLAG_POSIX_SEMANTICS    01000000   off
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    fopen:andl     $0x07,               %r8d             # R08 = reduce to proper mode
          leaq     opmo(%rip),          %rax             # RAX = EA LUT
          shll     $0x03,               %r8d             # R08 = offset LUT
          movq     %r9,                 %rdi             # RDI = EA filename
          movq     %rcx,                %rsi             # RSI = EA FH
          addq     %r8,                 %rax             # RAX = EA LUT
          movq     %rdx,                %rbp             # RBP = size
          movl     0x00(%rax),          %r8d             # R08 = share attributes
          movl     0x04(%rax),          %ebx             # RBX = open mode
          movq     %rdi,                %rcx             # RCX = EA filename
          movl     $0xC0000000,         %edx             # RDX = desired access
          xorl     %r9d,                %r9d             # R09 = security attributes
          movq     %rbx,                0x20(%rsp)       # open mode
          movq     $0x88000080,         0x28(%rsp)       # access flags
          movq     $0x00,               0x30(%rsp)       # NULL
          call     *__imp__CreateFileA(%rip)
          movq     %rax,                0x00(%rsi)       # store FH.WinFH
          incl     %eax                                  # errors are -1
          je       0f
          decl     %eax                                  # undo increment
          movq     %rax,                %rbx             # RBX = HFILE
          movq     %rax,                %rcx             # RCX = HFILE
          leaq     0x08(%rsi),          %rdx             # RDX = EA DQ(!!!)
          call     *__imp__GetFileSizeEx(%rip)
          testl    %eax,                %eax             # zero on error
          je       ERR2B
          movq     %rsi,                %rcx             # RCX = EA FH
          movq     %rbp,                %rdx             # RDX = size
          testl    %ebp,                %ebp             # size given?
          jne      fsize
          jmp      ERR00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            read only handling
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        0:call     _GetErr
          cmpl     $0x13,               %eax             # write protected?
          jne      ERR2B
          decl     0x40(%rsp)                            # only one try!
          js       ERR2C
          movq     %rdi,                %rcx             # RCX = EA filename
          call     _remRO
          movq     0x98(%rsp),          %r9              # reload registers...
          movq     0xA0(%rsp),          %r8
          movq     0xA8(%rsp),          %rdx
          movq     0xB0(%rsp),          %rcx
          jmp      fopen
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fread   SetFilePointerEx(), ReadFile()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA FH structure
               RDX   byte to read (zero = FH.Fsize)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   00 ERR_NO_ERROR
                     2D ERR_FILE_READ
                     2F ERR_FILE_SETPTR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fread() reads FH.Fsize byte if the second parameter is zero.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    fread:movq     %rcx,                %rdi             # EDI = FH
          movq     %rdx,                %rbp             # EBP = size
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            reset filepointer
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     0x00(%rcx),          %rcx             # RCX = FH.WinFH
          movl     0x20(%rdi),          %edx             # RDX = FH.Foffs
          xorl     %r8d,                %r8d             # R08 = NULL
          xorq     %r9,                 %r9              # R09 = FILE_BEGIN
          movq     %rcx,                %rsi             # RSI = FH.WinFH
          movq     %rdx,                %rbx             # RBX = FH.Foffs
          call     *__imp__SetFilePointerEx(%rip)
          negq     %rbx                                  # RBX = -FH_Foffs
          testl    %eax,                %eax             # error?
          je       ERR2F
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            read
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     0x08(%rdi),          %rax             # RAX = FH.Fsize
          movq     0x10(%rdi),          %rdx             # RDX = FH.Mbase
          movq     0x18(%rdi),          %r10             # R10 = FH.Moffs
          addq     %rax,                %rbx             # RBX = FH.Fsize - FH.Foffs
          movq     %rbp,                %r8              # R08 = byte to read
          movq     %rsi,                %rcx             # RCX = FH.WinFH
          testq    %rbp,                %rbp             # byte to read = 0?
          cmove    %rbx,                %r8              # R08 = byte to read
          leaq     0x28(%rsp),          %r9              # R09 = EA where 64 bit value is stored...
          movl     $0x00,               0x20(%rsp)       # EA OVERLAPPED = 0
          addq     %r10,                %rdx             # RDX = EA target
          call     *__imp__ReadFile(%rip)
          testl    %eax,                %eax             # error?
          je       ERR2D
          jmp      ERR00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fwrite  SetFilePointerEx(), SetEndOfFile(), WriteFile()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA FH structure
               RDX   byte to write (0 = FH.Fsize)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   00 ERR_NO_ERROR
                     2E ERR_FILE_WRITE
                     2F ERR_FILE_SETPTR
                     30 ERR_FILE_RESIZE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fwrite() writes FH.Fsize byte if the second parameter is zero.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   fwrite:movq     %rcx,                %rdi             # EDI = FH
          movq     %rdx,                %rbp             # EBP = size
          movq     0x00(%rdi),          %rcx             # RCX = FH.WinFH
          movq     0x08(%rdi),          %rdx             # RDX = FH.Fsize
          movq     0x20(%rdi),          %rbx             # RBX = FH.Foffs
          movq     %rcx,                %rsi             # RSI = FH.WinFH
          testq    %rbp,                %rbp             # size passed?
          je       0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            resize
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     %rbp,                %rdx             # RDX = new size
          leaq     0x08(%rdi),          %r8              # R08 = FH.Fsize
          xorl     %r9d,                %r9d             # R09 = FILE_BEGIN
          call     *__imp__SetFilePointerEx(%rip)
          testl    %eax,                %eax             # error?
          je       ERR2F
          movq     %rsi,                %rcx
          call     *__imp__SetEndOfFile(%rip)
          testl    %eax,                %eax             # error?
          je       ERR30
          movq     %rsi,                %rcx             # RCX = FH.WinFH
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            reset filepointer
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
        0:movl     %ebx,                %edx             # RDX = FH.Foffs
          xorl     %r8d,                %r8d             # R08 = NULL
          xorl     %r9d,                %r9d             # R09 = FILE_BEGIN
          call     *__imp__SetFilePointerEx(%rip)
          negq     %rbx                                  # RBX = -FH_Foffs
          testl    %eax,                %eax             # error?
          je       ERR2F
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            write
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          movq     0x08(%rdi),          %rax             # RAX = FH.Fsize
          movq     0x10(%rdi),          %rdx             # RDX = FH.Mbase
          movq     0x18(%rdi),          %r10             # R10 = FH.Moffs
          addq     %rax,                %rbx             # RBX = FH.Fsize - FH.Foffs
          movq     %rbp,                %r8              # R08 = byte to write
          movq     %rsi,                %rcx             # RCX = FH.WinFH
          testq    %rbp,                %rbp             # byte to write = 0?
          cmove    %rbx,                %r8              # R08 = byte to write
          leaq     0x28(%rsp),          %r9              # R09 = EA where 64 bit value is stored...
          movl     $0x00,               0x20(%rsp)       # EA OVERLAPPED = 0
          addq     %r10,                %rdx             # RDX = EA target
          call     *__imp__WriteFile(%rip)
          testl    %eax,                %eax             # error?
          je       ERR2E
          jmp      ERR00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fsptr   DosSetFilePtr()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA FH structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   00 ERR_NO_ERROR
                     2F ERR_FILE_SETPTR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    fsptr:movl     0x20(%rcx),          %edx             # RDX = FH.Foffs
          movq     0x00(%rcx),          %rcx             # RCX = FH.WinFH
          xorl     %r8d,                %r8d             # R08 = NULL
          xorq     %r9,                 %r9              # R09 = FILE_BEGIN
          call     *__imp__SetFilePointerEx(%rip)
          testl    %eax,                %eax             # error?
          je       ERR2F
          jmp      ERR00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fsize   DosSetFileSize()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA FH structure
               RDX   new file size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   00 ERR_NO_ERROR
                     2F ERR_FILE_SETPTR
                     30 ERR_FILE_RESIZE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    fsize:movq     %rcx,                %rdi             # EDI = FH
          movq     %rdx,                %rbp             # EBP = size
          movq     0x00(%rcx),          %rcx             # RCX = FH.WinFH
          movq     0x08(%rdi),          %rdx             # RDX = FH.Fsize
          xorl     %r8d,                %r8d             # R08 = NULL
          xorq     %r9,                 %r9              # R09 = FILE_BEGIN
          movq     %rcx,                %rsi             # RSI = FH.WinFH
          xorl     %r8d,                %r8d             # R08 = NULL
          cmpq     %rdx,                %rbp             # current = new size?
          je       ERR00
          movq     %rbp,                %rdx             # RDX = new size
          call     *__imp__SetFilePointerEx(%rip)
          testl    %eax,                %eax             # error?
          je       ERR2F
          movq     %rsi,                %rcx
          call     *__imp__SetEndOfFile(%rip)
          testl    %eax,                %eax             # error?
          je       ERR30
          jmp      ERR00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Fclose  CloseHandle()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA FH structure
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   00 ERR_NO_ERROR
                     31 ERR_FILE_CLOSE
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   fclose:movq     0x00(%rcx),          %rcx             # RCX = FH.WinFH
          call     *__imp__CloseHandle(%rip)
          testl    %eax,                %eax             # error?
          je       ERR31
          jmp      ERR00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            CrDir   CreateDirectory()
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA directory name
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   00 ERR_NO_ERROR
                     2A ERR_CREATE_DIR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    crdir:xorl     %edx,                %edx             # EDX = NULL
          call     *__imp__CreateDirectoryA(%rip)
          testl    %eax,                %eax             # error?
          je       ERR2A
          movq     %rax,                %rcx
          call     *__imp__CloseHandle(%rip)
          testl    %eax,                %eax             # error?
          je       ERR2A
          jmp      ERR00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            remRO   remove read only attribute
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   address filename
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   00 ERR_NO_ERROR
                     01 ERR_ERROR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Function remRO() starts an external process, calling ATTRIB.EXE. If anything fails
            during that process (including its invocation!), ERR_ERROR is returned.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    remro:subq     $0x0200,             %rsp
          pxor     %xmm0,               %xmm0
          pxor     %xmm1,               %xmm1
          pxor     %xmm2,               %xmm2
          movdqa   LC00(%rip),          %xmm3            # XM0 = ATTRIB.EXE -r
          movq     %rcx,                %rdi                      # RDI = EA filename
          leaq     0x0180(%rsp),        %rax             # RAX = EA STARTUPINFO
          leaq     0x0200(%rsp),        %rbx             # RBX = EA PROCESS_INFORMATION
          leaq     0x0062(%rsp),        %rcx             # RCX = EA cmd line
          leaq     0x0070(%rsp),        %rsi             # RSI = EA append
          movq     %xmm0,               0x0020(%rsp)     # NULL
          movq     $0x30,               0x0028(%rsp)     # flags
          movdqa   %xmm1,               0x0030(%rsp)     # NULL, NULL
          movq     %rax,                0x0040(%rsp)     # EA STARTUPINFO
          movq     %rbx,                0x0048(%rsp)     # EA PROCESS_INFORMATION
          movdqa   %xmm3,               0x0060(%rsp)     # ..ATTRIB.EXEÛ-rÛ
          movdqa   %xmm2,               0x0180(%rsp)     # clear STARTUPINFO
          movdqa   %xmm0,               0x0190(%rsp)
          movdqa   %xmm1,               0x01A0(%rsp)
          movdqa   %xmm2,               0x01B0(%rsp)
          movdqa   %xmm0,               0x01C0(%rsp)
          movdqa   %xmm1,               0x01D0(%rsp)
          movdqa   %xmm2,               0x01E0(%rsp)
          xorl     %edx,                %edx             # RDX = NULL
          xorl     %r8d,                %r8d             # R08 = NULL
          xorl     %r9d,                %r9d             # R09 = NULL
          movl     0x04,                %eax             # EAX = loop_cnt
          movl     0x0100(%rdi),        %ebx             # EBX = last 4 byte
        0:movdqu   0x00(%rdi),          %xmm0            # copy name
          movdqu   0x10(%rdi),          %xmm1
          movdqu   0x20(%rdi),          %xmm2
          movdqu   0x30(%rdi),          %xmm3
          movdqa   %xmm0,               0x00(%rsi)
          movdqa   %xmm1,               0x10(%rsi)
          movdqa   %xmm2,               0x20(%rsi)
          movdqa   %xmm3,               0x30(%rsi)
          addq     $0x40,               %rdi             # next block
          addq     $0x40,               %rsi
          decl     %eax                                  # loop_cnt--
          jne      0b
          movl     %ebx,                0x00(%rsi)       # write last 4 byte
          call     *__imp__CreateProcessA(%rip)
          addq     $0x0200,             %rsp
          testl    %eax,                %eax
          je       ERR01
          jmp      ERR00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GtFInf   get file information
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA filename
               RDX   level
               R08   EA WIN_32_FILE_ATTRIBUTE_DATA
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   00 ERR_NO_ERROR (does not retrieve possible errors!)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            As GET_FILEX_INFO_LEVELS is not defined anywhere (enumerated with not defined ENUM
            members), set parameter 2 to zero.

            WIN_32_FILE_ATTRIBUTE_DATA is misaligned per definitionem. Allocate your buffer at
            memory locations ending with 0x*4 or 0x*C to avoid extra cycles for collecting the
            lower and upper halves of the filetime/size qwords.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   getinf:xorl     %eax,                %eax             # dummy
          call     *__imp__GetFileAttributesExA(%rip)
          jmp      ERR00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            SetPath set path to application's path
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> -     no input required
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   00 ERR_NO_ERROR
                     29 ERR_SET_DIR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Sets current drive and path to the application's drive and path. It is required if
            your application accepts dropped files, because both, drive and path, point to the
            directory where the file was dragged from.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
  setpath:subq     $0x0100,             %rsp
          xorl     %ecx,                %ecx             # RCX = NULL (self)
          movl     $0x0110,             %r8d             # R08 = buffer size
          leaq     0x20(%rsp),          %rdx             # RDX = EA buffer
          leaq     0x20(%rsp),          %rdi             # RDI = EA buffer
          call     *__imp__GetModuleFileNameA(%rip)
          testl    %eax,                %eax             # error?
          je       ERR29
          movq     %rdi,                %rcx             # RCX = EA buffer
          call     _GetPath
          call     *__imp__SetCurrentDirectoryA(%rip)
          addq     $0x0100,             %rsp
          testl    %eax,                %eax
          je       ERR29
          jmp      ERR00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ChgDir   set active directory
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA new active directory
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   00 ERR_NO_ERROR
                     29 ERR_SET_DIR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Sets current drive and path to the drive and path determined by the passed string.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   chgdir:call     *__imp__SetCurrentDirectoryA(%rip)
          testl    %eax,                %eax
          je       ERR29
          jmp      ERR00
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DrvMap   retrieve available drives
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> -     nothing
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   drive bitmap
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Retrieve the drive map of the current machine.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   drvmap:call     *__imp__GetLogicalDrives(%rip)
          jmp      XITC
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            PgPath   query program path
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   buffer size
               RDX   buffer address
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   string size (or required size if the buffer is too small)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Retrieve the path to our program.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   pgpath:call     *__imp__GetCurrentDirectoryA(%rip)
          jmp      XITC
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GetPath separate path from file name
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA source
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   string size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Scans for the last back-/forward slash and sets all following bytes up to the next
            paragraph boundary to zero. GetPath() is destructive - it alters your source!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
  getpath:call     spath
          movb     $0x00,               0x01(%r10)       # clear 00[name]
          leaq     0x01(%r10),          %rdi             # RDI = EA name
          jmp      pad
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            NameExt get filename + extension
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA source
               RDX   EA target (set to EA source if NULL)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   string size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Scans for the last back-/forward slash and moves all bytes following it to the be-
            ginning. The result is padded with zero(es) up to the next paragraph boundary. Set
            RDX = RCX (source = target) for a destructive call.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
  nameext:testq    %rdx,                %rdx             # target given?
          cmove    %rcx,                %rdx             # use source as target
          call     spath
          movq     %rbp,                %r11             # R11 = EA string end
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GetName get filename w/o extension
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA buffer
               RDX   EA target (set to EA source if NULL)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   00 ERR_NO_ERROR
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Scans the buffer for the last back- / forward slash and copies the bytes following
            it to the beginning, then cuts off the last extension. All results are padded with
            zero(es) up to the next paragraph boundary.  Set RDX = RCX (source = target) for a
            destructive call.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
  getname:testq    %rdx,                %rdx             # target given?
          cmove    %rcx,                %rdx             # use source as target
          call     spath
          movq     %r11,                %rbx             # RBX = EA dot (source)
          subq     %r10,                %rbx             # RBX = offset + 1
          addq     %rdx,                %rbx             # RBX = EA dot + 1
          decq     %rbx                                  # RBX = EA dot (target)
          jmp      0f
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            GetExt  get extension
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA buffer
               RDX   EA target (set to EA source if NULL)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   string size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Scans the string for the last period, then copies the last extension to the begin-
            ning of the source string. If the source string doesn't contain periods, the first
            byte is set to zero (empty string). All results are padded with zero(es) up to the
            next paragraph boundary! Set RDX = RCX (source = target) for a destructive call.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
   getext:testq    %rdx,                %rdx             # target given?
          cmove    %rcx,                %rdx             # use source as target
          call     spath
          movq     %r11,                %r10             # R10 = EA dot
          movq     %rbp,                %r11             # R11 = EA end
          cmpq     %rbp,                %r10             # any dot?
          jne      0f
          movdqu   %xmm0,               0x00(%rdx)       # clear 16 byte
          jmp      ERR00
          .p2align 4,,15
        0:xorl     %eax,                %eax             # RAX = 0
          incq     %r10                                  # R10 = EA proper
          movq     %rdx,                %rdi             # RDI = EA target
          subq     %r10,                %r11             # R11 = byte to move
          cmovs    %rax,                %r11
          subq     $0x10,               %rdi             # RDI = EA target-16
          shrq     $0x04,               %r11             # R11 = cnt
        1:movdqu   0x00(%r10),          %xmm1            # copy name+ext to target
          movdqu   %xmm1,               0x00(%rdx)
          addq     $0x10,               %rdi             # update EAs
          addq     $0x10,               %r10
          addq     $0x10,               %rdx
          decq     %r11                                  # cnt--
          jns      1b
          testq    %rbx,                %rbx             # dot to clear?
          je       pad
          movb     $0x00,               0x00(%rbx)
          jmp      pad
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            DirUp   remove last directory in path
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA path
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   string size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Removes the last directory from the passed path, similar to a "cd .." command. All
            results are padded with zero(es) up to the next paragraph boundary.  DirUp() works
            destructive - it alters your source!
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    dirup:call     spath
          movb     $0x00,0x01(%r9)                # clear 00[last path]
          leaq     0x01(%r9),%rdi                 # RDI = last path
          jmp      pad
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            ERROR HANDLING
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    ERR01:movl     $0x01,               %eax             # ERR_ERROR
          jmp      XITC
          .p2align 4,,15
    ERR29:movl     $0x29,               %eax             # ERR_SET_DIR
          jmp      XITC
          .p2align 4,,15
    ERR2A:movl     $0x2A,               %eax             # ERR_CREATE_DIR
          jmp      XITC
          .p2align 4,,15
    ERR2B:movl     $0x2B,               %eax             # ERR_FILE_OPEN
          jmp      XITC
          .p2align 4,,15
    ERR2C:movl     $0x2C,               %eax             # ERR_READONLY
          jmp      XITC
          .p2align 4,,15
    ERR2D:movl     $0x2D,               %eax             # ERR_FILE_READ
          jmp      XITC
          .p2align 4,,15
    ERR2E:movl     $0x2E,               %eax             # ERR_FILE_WRITE
          jmp      XITC
          .p2align 4,,15
    ERR2F:movl     $0x2F,               %eax             # ERR_FILE_SETPTR
          jmp      XITC
          .p2align 4,,15
    ERR30:movl     $0x30,               %eax             # ERR_FILE_RESIZE
          jmp      XITC
          .p2align 4,,15
    ERR31:movl     $0x31,               %eax             # ERR_FILE_CLOSE
          jmp      XITC
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            COMMON EXIT
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    ERR00:xorl     %eax,                %eax             # ERR_NO_ERROR
     XITC:movq     0x48(%rsp),          %rbp
          movq     0x50(%rsp),          %rsi
          movq     0x58(%rsp),          %rdi
          movdqa   0x60(%rsp),          %xmm4
          movdqa   0x70(%rsp),          %xmm5
          movq     0x80(%rsp),          %rbx
          movq     0x88(%rsp),          %r11
          movq     0x90(%rsp),          %r10
          movq     0x98(%rsp),          %r9
          movq     0xA0(%rsp),          %r8
          movq     0xA8(%rsp),          %rdx
          movq     0xB0(%rsp),          %rcx
          addq     $0xB8,               %rsp
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          º                          I N T E R N A L   H E L P E R S
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            spath   scan path
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RCX   EA buffer
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   -
               RBX   -
               RDI   EA last paragraph
               RSI   -
               RBP   EA end
               R08   -
               R09   EA pre-last slash
               R10      last slash
               R11           dot
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            This common subroutine scans the given string for slashes and dots. It returns its
            results in the registers shown above. All registers except RCX (EA source) and RDX
            (EA target) are altered.
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
    spath:movdqa   %xmm6,               0x28(%rsp)
          movdqa   %xmm7,               0x38(%rsp)
          pxor     %xmm0,               %xmm0            # XM0 = 0
          movdqa   LC01(%rip),          %xmm3            # XM3 = dot
          movdqa   LC02(%rip),          %xmm1            # XM1 = f slash
          movdqa   LC03(%rip),          %xmm2            # XM2 = b slash
          movq     %rcx,                %rdi             # RDI = EA input
          xorq     %r9,                 %r9
          xorq     %r10,                %r10
          xorq     %r11,                %r11
        0:movdqu   0x00(%edi),          %xmm4
          movdqu   0x00(%edi),          %xmm5
          movdqu   0x00(%edi),          %xmm6
          movdqu   0x00(%edi),          %xmm7
          pcmpeqb  %xmm0,               %xmm4            # scan for zero
          pcmpeqb  %xmm1,               %xmm5            #          f slash
          pcmpeqb  %xmm2,               %xmm6            #          b slash
          pcmpeqb  %xmm3,               %xmm7            #          dot
          paddb    %xmm6,               %xmm5            # XM5 = all slashes
          pmovmskb %xmm4,               %eax             # RAX = zero
          pmovmskb %xmm5,               %ebx             # RBX = f slash
          pmovmskb %xmm7,               %esi             # RSI = dot
          testl    %ebx,                %ebx             # any slashes?
          je       2f
        1:movq     %r10,                %r9              # R09 = pre-last slash
          bsf      %ebx,                %r10d            # R10 = OF last
          btr      %r10d,               %ebx             # clear bit
          addq     %rdi,                %r10             # R10 = EA last
          testl    %ebx,                %ebx             # one more slash?
          jne      1b
        2:testl    %esi,                %esi
          je       3f
          bsr      %esi,                %r11d            # R11 = OF last
          addq     %rdi,                %r11             # R11 = EA last
        3:addq     $0x10,               %rdi             # RDI = next para
          testl    %eax,                %eax             # zero?
          je       0b
          bsf      %eax,                %ebp             # RBP = offset zero
          subq     $0x10,               %rdi             # RDI = EA last para
          xorl     %ebx,                %ebx             # RBX = 0
          addq     %rdi,                %rbp             # RBP = EA end
          testq    %r9,                 %r9              # no slash found?
          cmove    %rcx,                %r9              # use EA source
          testq    %r10,                %r10             # no slash found?
          cmove    %rcx,                %r10             # use EA source
          testq    %r11,                %r11             # no dot found?
          cmove    %rbp,                %r11             # use EA end
          movdqa   0x28(%rsp),          %xmm6
          movdqa   0x38(%rsp),          %xmm7
          ret
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            pad     pad with zeroes
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            -> RDI   EA where padding starts
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            <- RAX   string size
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Pad string with zeroes (up to the paragraph's end).
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .p2align 4,,15
      pad:movdqu   0x00(%rdi),          %xmm1            # XM1 = last para
          pxor     %xmm0,               %xmm0            # 16 zeroes
          pcmpeqb  %xmm1,               %xmm0            # XM1 = mask
          pmovmskb %xmm0,               %ebx             # RBX = zero
          movq     _BNR(%rip),          %r10             # R10 = BNR
          bsf      %ebx,                %ebx             # RBX = offset zero
          leaq     CVTCUT(%r10),        %r11             # R11 = EA CVTCUT
          leaq     0x00(%rdi, %rbx),    %rax             # RAX = EA string end
          shll     %ebx                                  # RBX * 2
          pand     0x00(%r11, %rbx, 8), %xmm1            # XM0 = mask
          subq     %rcx,                %rax
          movdqu   %xmm1,               0x00(%rdi)
          jmp      XITC
          /*
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          */
          .comm    _BNR,                8, 3
 