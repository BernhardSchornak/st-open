          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ЙНННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННН»
          є                             F I L E   H A N D L I N G                              єЫ
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
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і All functions return errorcodes defined in <err.h>. You may pass them to ErrMgr(). іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Win64 returns 8 registers with altered content. These so called volatile registers іЫ
          і must be preserved and restored, adding 20 superfluous clock cycles to each call... іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
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
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .text
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Fopen()                                    іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _Fopen
          .def     _Fopen; .scl 2; .type 32; .endef
   _Fopen:leaq     fopen(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Fread()                                    іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _Fread
          .def     _Fread; .scl 2; .type 32; .endef
   _Fread:leaq     fread(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Fwrite()                                   іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _Fwrite
          .def     _Fwrite; .scl 2; .type 32; .endef
  _Fwrite:leaq     fwrite(%rip),%rax
          jmp      0f
          .p2align 4,,15
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Fsptr()                                    іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .globl   _Fsptr
          .def     _Fsptr; .scl 2; .type 32; .endef
   _Fsptr:leaq     fsptr(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Fsize()                                    іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _Fsize
          .def     _Fsize; .scl 2; .type 32; .endef
   _Fsize:leaq     fsize(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Fclose()                                   іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _Fclose
          .def     _Fclose; .scl 2; .type 32; .endef
  _Fclose:leaq     fclose(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і CrDir()                                    іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _CrDir
          .def     _CrDir; .scl 2; .type 32; .endef
   _CrDir:leaq     crdir(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і remRO()                                    іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _remRO
          .def     _remRO; .scl 2; .type 32; .endef
   _remRO:leaq     remro(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і SetPath()                                  іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _SetPath
          .def     _SetPath; .scl 2; .type 32; .endef
 _SetPath:leaq     setpath(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і GetPath()                                  іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _GetPath
          .def     _GetPath; .scl 2; .type 32; .endef
 _GetPath:leaq     getpath(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і NameExt()                                  іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _NameExt
          .def     _NameExt; .scl 2; .type 32; .endef
 _NameExt:leaq     nameext(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і GetName()                                  іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _GetName
          .def     _GetName; .scl 2; .type 32; .endef
 _GetName:leaq     getname(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і GetExt()                                   іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _GetExt
          .def     _GetExt; .scl 2; .type 32; .endef
  _GetExt:leaq     getext(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і DirUp()                                    іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
          .globl   _DirUp
          .def     _DirUp; .scl 2; .type 32; .endef
   _DirUp:leaq     dirup(%rip),%rax
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і PRESERVE REGISTERS AND JUMP TO FUNCTION                                            іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
        0:subq     $0xB8,%rsp
          nop
          nop
          movl     $0x01,0x40(%rsp)               # RO flag
          movq     %rbp, 0x48(%rsp)
          movq     %rsi, 0x50(%rsp)
          movq     %rdi, 0x58(%rsp)
          movdqa   %xmm4,0x60(%rsp)
          movdqa   %xmm5,0x70(%rsp)
          movq     %rbx, 0x80(%rsp)
          movq     %r11, 0x88(%rsp)
          movq     %r10, 0x90(%rsp)
          movq     %r9,  0x98(%rsp)
          movq     %r8,  0xA0(%rsp)
          movq     %rdx, 0xA8(%rsp)
          movq     %rcx, 0xB0(%rsp)
          jmp      *%rax
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Fopen   CreateFile(), GetFileSize(), Fsize()                                       іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   address FH structure                                                       іЫ
          і   RDX   file size (should be zero)                                                 іЫ
          і   R08   open mode - 0   open or create                                             іЫ
          і                     1   create, fail if exists                                     іЫ
          і                     2   open if exists                                             іЫ
          і                     3   replace if exists                                          іЫ
          і                     4   open if exists, deny r/w                                   іЫ
          і                    (5-7 open or create)                                            іЫ
          і   R09   address filename                                                           іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          і         0000 0000 0000 002B   ERR_OPEN                                             іЫ
          і         0000 0000 0000 002C   ERR_READONLY                                         іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Fopen() sets EAX to ERR_OPEN if GetFileSize() returns FFFF FFFF!                   іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і CALL    CreateFile(R09, 0xC0000000, R08, 0x00, 0x80, 0xA8000080, NULL);            іЫ
          і         ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД  іЫ
          і -> RCX  EA filename                                                                іЫ
          і         ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД  іЫ
          і    RDX  GENERIC_WRITE                40000000   open for write access              іЫ
          і         GENERIC READ                 80000000            read  access              іЫ
          і         ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД  іЫ
          і    R08  FILE_SHARE_READ              00000001   allow multi-open for read          іЫ
          і         FILE_SHARE_WRITE             00000002                        write         іЫ
          і         FILE_SHARE_DELETE            00000004   ignored by ST-Open!                іЫ
          і         ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД  іЫ
          і    R09  NULL (SECURITY_ATTRIBUTES structure)                                       іЫ
          і         ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД  іЫ
          і    0x20 CREATE_NEW                   00000001   create, fail if exists             іЫ
          і         CREATE_ALWAYS                00000002   create, overwrite if exists        іЫ
          і         OPEN_EXISTING                00000003   fail if does not exist             іЫ
          і         OPEN_ALWAYS                  00000004   open if exists, create if not      іЫ
          і         TRUNCATE_EXISTING            00000005   open if exist (sets size to zero)  іЫ
          і         ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД  іЫ
          і    0x28 FILE_ATTRIBUTE_READONLY      00000001   -> remRO()                         іЫ
          і         FILE_ATTRIBUTE_HIDDEN        00000002   -> attrib.exe                      іЫ
          і         FILE_ATTRIBUTE_SYSTEM        00000004   -> attrib.exe                      іЫ
          і         FILE_ATTRIBUTE_DIRECTORY     00000010   -> CrDir()                         іЫ
          і         FILE_ATTRIBUTE_ARCHIVE       00000020   -> attrib.exe                      іЫ
          і         FILE_ATTRIBUTE_DEVICE        00000040   ?                                  іЫ
          і         FILE_ATTRIBUTE_NORMAL        00000080   default flag for ST-Open!          іЫ
          і         FILE_ATTRIBUTE_TEMPORARY     00000100   ?                                  іЫ
          і         FILE_ATTRIBUTE_SPARSE_FILE   00000200   ?                                  іЫ
          і         F...TTRIBUTE_REPARSE_POINT   00000400   ?                                  іЫ
          і         FILE_ATTRIBUTE_COMPRESSED    00000800   ?                                  іЫ
          і         FILE_ATTRIBUTE_OFFLINE       00001000   ?                                  іЫ
          і         F...TE_NOT_CONTENT_INDEXED   00002000   ?                                  іЫ
          і         FILE_ATTRIBUTE_ENCRYPTED     00004000   ?                                  іЫ
          і         FILE_ATTRIBUTE_VALID_FLAGS   00007fb7   ?                                  іЫ
          і         F...RIBUTE_VALID_SET_FLAGS   000031a7   ?                                  іЫ
          і         FILE_FLAG_POSIX_SEMANTICS    01000000   off                                іЫ
          і         FILE_FLAG_BACKUP_SEMANTICS   02000000   off                                іЫ
          і         FILE_FLAG_DELETE_ON_CLOSE    04000000   off                                іЫ
          і         FILE_FLAG_SEQUENTIAL_SCAN    08000000   default                            іЫ
          і         FILE_FLAG_RANDOM_ACCESS      10000000   off                                іЫ
          і         FILE_FLAG_NO_BUFFERING       20000000   off                                іЫ
          і         FILE_FLAG_OVERLAPPED         40000000   off                                іЫ
          і         FILE_FLAG_WRITE_THROUGH      80000000   default                            іЫ
          і         ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД  іЫ
          і    0x30 FILE_FLAG_POSIX_SEMANTICS    01000000   off                                іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
    fopen:andl     $0x07,%r8d                     # R08 = reduce to proper mode
          leaq     opmo(%rip),%rax                # RAX = EA LUT
          shll     $0x03,%r8d                     # R08 = offset LUT
          movq     %r9, %rdi                      # RDI = EA filename
          movq     %rcx,%rsi                      # RSI = EA FH
          addq     %r8, %rax                      # RAX = EA LUT
          movq     %rdx,%rbp                      # RBP = size
          movl     0x00(%rax),%r8d                # R08 = share attributes
          movl     0x04(%rax),%ebx                # RBX = open mode
          movq     %rdi,%rcx                      # RCX = EA filename
          movl     $0xC0000000,%edx               # RDX = desired access
          xorl     %r9d,%r9d                      # R09 = security attributes
          movq     %rbx,0x20(%rsp)                # open mode
          movq     $0x88000080,0x28(%rsp)         # access flags
          movq     $0x00,0x30(%rsp)               # NULL
          call     *__imp__CreateFileA(%rip)
          movq     %rax,0x00(%rsi)                # store FH.WinFH
          incl     %eax                           # errors are -1
          je       0f
          decl     %eax                           # undo increment
          movq     %rax,%rbx                      # RBX = HFILE
          movq     %rax,%rcx                      # RCX = HFILE
          leaq     0x08(%rsi),%rdx                # RDX = EA DQ(!!!)
          call     *__imp__GetFileSizeEx(%rip)
          testl    %eax,%eax                      # zero on error
          je       ERR2B
          movq     %rsi,%rcx                      # RCX = EA FH
          movq     %rbp,%rdx                      # RDX = size
          testl    %ebp,%ebp                      # size given?
          jne      fsize
          jmp      ERR00
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і read only handling             іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
        0:call     *__imp__GetLastError(%rip)
          cmpl     $0x13,%eax                     # write protected?
          jne      ERR2B
          decl     0x40(%rsp)                     # only one try!
          js       ERR2C
          movq     %rdi,%rcx                      # RCX = EA filename
          call     _remRO
          movq     0x98(%rsp),%r9                 # reload registers...
          movq     0xA0(%rsp),%r8
          movq     0xA8(%rsp),%rdx
          movq     0xB0(%rsp),%rcx
          jmp      fopen
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Fread   SetFilePointerEx(), ReadFile()                                             іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA FH structure                                                            іЫ
          і   RDX   byte to read (zero = FH.Fsize)                                             іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          і         0000 0000 0000 002D   ERR_FILE_READ                                        іЫ
          і         0000 0000 0000 002F   ERR_FILE_SETPTR                                      іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Fread() reads FH.Fsize byte if the second parameter is zero.                       іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
    fread:movq     %rcx,%rdi                      # EDI = FH
          movq     %rdx,%rbp                      # EBP = size
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і reset filepointer              іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          movq     0x00(%rcx),%rcx                # RCX = FH.WinFH
          movl     0x20(%rdi),%edx                # RDX = FH.Foffs
          xorl     %r8d,%r8d                      # R08 = NULL
          xorq     %r9, %r9                       # R09 = FILE_BEGIN
          movq     %rcx,%rsi                      # RSI = FH.WinFH
          movq     %rdx,%rbx                      # RBX = FH.Foffs
          call     *__imp__SetFilePointerEx(%rip)
          negq     %rbx                           # RBX = -FH_Foffs
          testl    %eax,%eax                      # error?
          je       ERR2F
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і read                           іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          movq     0x08(%rdi),%rax                # RAX = FH.Fsize
          movq     0x10(%rdi),%rdx                # RDX = FH.Mbase
          movq     0x18(%rdi),%r10                # R10 = FH.Moffs
          addq     %rax,%rbx                      # RBX = FH.Fsize - FH.Foffs
          movq     %rbp,%r8                       # R08 = byte to read
          movq     %rsi,%rcx                      # RCX = FH.WinFH
          testq    %rbp,%rbp                      # byte to read = 0?
          cmove    %rbx,%r8                       # R08 = byte to read
          leaq     0x28(%rsp),%r9                 # R09 = EA where 64 bit value is stored...
          movl     $0x00,0x20(%rsp)               # EA OVERLAPPED = 0
          addq     %r10,%rdx                      # RDX = EA target
          call     *__imp__ReadFile(%rip)
          testl    %eax,%eax                      # error?
          je       ERR2D
          jmp      ERR00
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Fwrite  SetFilePointerEx(), SetEndOfFile(), WriteFile()                            іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA FH structure                                                            іЫ
          і   RDX   byte to write (0 = FH.Fsize)                                               іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          і         0000 0000 0000 002E   ERR_FILE_WRITE                                       іЫ
          і         0000 0000 0000 002F   ERR_FILE_SETPTR                                      іЫ
          і         0000 0000 0000 0030   ERR_FILE_RESIZE                                      іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Fwrite() writes FH.Fsize byte if the second parameter is zero.                     іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
   fwrite:movq     %rcx,%rdi                      # EDI = FH
          movq     %rdx,%rbp                      # EBP = size
          movq     0x00(%rdi),%rcx                # RCX = FH.WinFH
          movq     0x08(%rdi),%rdx                # RDX = FH.Fsize
          movq     0x20(%rdi),%rbx                # RBX = FH.Foffs
          movq     %rcx,%rsi                      # RSI = FH.WinFH
          testq    %rbp,%rbp                      # size passed?
          je       0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і resize                         іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          movq     %rbp,%rdx                      # RDX = new size
          leaq     0x08(%rdi),%r8                 # R08 = FH.Fsize
          xorl     %r9d,%r9d                      # R09 = FILE_BEGIN
          call     *__imp__SetFilePointerEx(%rip)
          testl    %eax,%eax                      # error?
          je       ERR2F
          movq     %rsi,%rcx
          call     *__imp__SetEndOfFile(%rip)
          testl    %eax,%eax                      # error?
          je       ERR30
          movq     %rsi,%rcx                      # RCX = FH.WinFH
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і reset filepointer              іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
        0:movl     %ebx,%edx                      # RDX = FH.Foffs
          xorl     %r8d,%r8d                      # R08 = NULL
          xorl     %r9d,%r9d                      # R09 = FILE_BEGIN
          call     *__imp__SetFilePointerEx(%rip)
          negq     %rbx                           # RBX = -FH_Foffs
          testl    %eax,%eax                      # error?
          je       ERR2F
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і write                          іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          movq     0x08(%rdi),%rax                # RAX = FH.Fsize
          movq     0x10(%rdi),%rdx                # RDX = FH.Mbase
          movq     0x18(%rdi),%r10                # R10 = FH.Moffs
          addq     %rax,%rbx                      # RBX = FH.Fsize - FH.Foffs
          movq     %rbp,%r8                       # R08 = byte to write
          movq     %rsi,%rcx                      # RCX = FH.WinFH
          testq    %rbp,%rbp                      # byte to write = 0?
          cmove    %rbx,%r8                       # R08 = byte to write
          leaq     0x28(%rsp),%r9                 # R09 = EA where 64 bit value is stored...
          movl     $0x00,0x20(%rsp)               # EA OVERLAPPED = 0
          addq     %r10,%rdx                      # RDX = EA target
          call     *__imp__WriteFile(%rip)
          testl    %eax,%eax                     # error?
          je       ERR2D
          jmp      ERR00
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Fsptr   DosSetFilePtr()                                                            іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA FH structure                                                            іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          і         0000 0000 0000 002F   ERR_FILE_SETPTR                                      іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
    fsptr:movl     0x20(%rcx),%edx                # RDX = FH.Foffs
          movq     0x00(%rcx),%rcx                # RCX = FH.WinFH
          xorl     %r8d,%r8d                      # R08 = NULL
          xorq     %r9, %r9                       # R09 = FILE_BEGIN
          call     *__imp__SetFilePointerEx(%rip)
          testl    %eax,%eax                     # error?
          je       ERR2F
          jmp      ERR00
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Fsize   DosSetFileSize()                                                           іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA FH structure                                                            іЫ
          і   RDX   new file size                                                              іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          і         0000 0000 0000 002F   ERR_FILE_SETPTR                                      іЫ
          і         0000 0000 0000 0030   ERR_FILE_RESIZE                                      іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
    fsize:movq     %rcx,%rdi                      # EDI = FH
          movq     %rdx,%rbp                      # EBP = size
          movq     0x00(%rcx),%rcx                # RCX = FH.WinFH
          movq     0x08(%rdi),%rdx                # RDX = FH.Fsize
          xorl     %r8d,%r8d                      # R08 = NULL
          xorq     %r9, %r9                       # R09 = FILE_BEGIN
          movq     %rcx,%rsi                      # RSI = FH.WinFH
          xorl     %r8d,%r8d                      # R08 = NULL
          cmpq     %rdx,%rbp                      # current = new size?
          je       ERR00
          movq     %rbp,%rdx                      # RDX = new size
          call     *__imp__SetFilePointerEx(%rip)
          testl    %eax,%eax                      # error?
          je       ERR2F
          movq     %rsi,%rcx
          call     *__imp__SetEndOfFile(%rip)
          testl    %eax,%eax                      # error?
          je       ERR30
          jmp      ERR00
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і Fclose  CloseHandle()                                                              іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA FH structure                                                            іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          і         0000 0000 0000 0031   ERR_FILE_CLOSE                                       іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
   fclose:movq     0x00(%rcx),%rcx                # RCX = FH.WinFH
          call     *__imp__CloseHandle(%rip)
          testl    %eax,%eax                      # error?
          je       ERR31
          jmp      ERR00
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і CrDir   CreateDirectory()                                                          іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA directory name                                                          іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          і         0000 0000 0000 0031   ERR_FILE_CLOSE                                       іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
    crdir:xorl     %edx,%edx                      # EDX = NULL
          call     *__imp__CreateDirectoryA(%rip)
          testl    %eax,%eax                      # error?
          je       ERR2A
          movq     %rax,%rcx
          call     *__imp__CloseHandle(%rip)
          testl    %eax,%eax                      # error?
          je       ERR31
          jmp      ERR00
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і remRO   remove read only attribute                                                 іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   address filename                                                           іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          і         0000 0000 0000 0001   ERR_ERROR                                            іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Function remRO() starts an external process, calling ATTRIB.EXE. If anything fails іЫ
          і during that process (including its invocation!), ERR_ERROR is returned.            іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
    remro:subq     $0x0200,%rsp
          nop
          pxor     %xmm0,%xmm0
          pxor     %xmm1,%xmm1
          pxor     %xmm2,%xmm2
          movdqa   LC00(%rip),%xmm3               # XM0 = ATTRIB.EXE -r
          movq     %rcx,%rdi                      # RDI = EA filename
          leaq     0x0180(%rsp),%rax              # RAX = EA STARTUPINFO
          leaq     0x0200(%rsp),%rbx              # RBX = EA PROCESS_INFORMATION
          leaq     0x0062(%rsp),%rcx              # RCX = EA cmd line
          leaq     0x0070(%rsp),%rsi              # RSI = EA append
          movq     %xmm0,0x0020(%rsp)             # NULL
          movq     $0x30,0x0028(%rsp)             # flags
          movdqa   %xmm1,0x0030(%rsp)             # NULL, NULL
          movq     %rax, 0x0040(%rsp)             # EA STARTUPINFO
          movq     %rbx, 0x0048(%rsp)             # EA PROCESS_INFORMATION
          movdqa   %xmm3,0x0060(%rsp)             # ..ATTRIB.EXEЫ-rЫ
          movdqa   %xmm2,0x0180(%rsp)             # clear STARTUPINFO
          movdqa   %xmm0,0x0190(%rsp)
          movdqa   %xmm1,0x01A0(%rsp)
          movdqa   %xmm2,0x01B0(%rsp)
          movdqa   %xmm0,0x01C0(%rsp)
          movdqa   %xmm1,0x01D0(%rsp)
          movdqa   %xmm2,0x01E0(%rsp)
          xorl     %edx,%edx                      # RDX = NULL
          xorl     %r8d,%r8d                      # R08 = NULL
          xorl     %r9d,%r9d                      # R09 = NULL
          movl     0x04,%eax                      # EAX = loop_cnt
          movl     0x0100(%rdi),%ebx              # EBX = last 4 byte
        0:movdqu   0x00(%rdi),%xmm0               # copy name
          movdqu   0x10(%rdi),%xmm1
          movdqu   0x20(%rdi),%xmm2
          movdqu   0x30(%rdi),%xmm3
          movdqa   %xmm0,0x00(%rsi)
          movdqa   %xmm1,0x10(%rsi)
          movdqa   %xmm2,0x20(%rsi)
          movdqa   %xmm3,0x30(%rsi)
          addq     $0x40,%rdi                     # next block
          addq     $0x40,%rsi
          decl     %eax                           # loop_cnt--
          jne      0b
          movl     %ebx,0x00(%rsi)                # write last 4 byte
          call     *__imp__CreateProcessA(%rip)
          addq     $0x0200,%rsp
          testl    %eax,%eax
          je       ERR01
          jmp      ERR00
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і SetPath set path to application's path                                             іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> -     no input required                                                          іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          і         0000 0000 0000 0029   ERR_SET_DIR                                          іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Sets current drive and path to the application's drive and path. It is required if іЫ
          і your application accepts dropped files, because both, drive and path, point to the іЫ
          і directory where the file was dragged from.                                         іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
  setpath:subq     $0x0100,%rsp
          xorl     %ecx,%ecx                      # RCX = NULL (self)
          movl     $0x0110,%r8d                   # R08 = buffer size
          leaq     0x20(%rsp),%rdx                # RDX = EA buffer
          leaq     0x20(%rsp),%rdi                # RDI = EA buffer
          call     *__imp__GetModuleFileNameA(%rip)
          testl    %eax,%eax                      # error?
          je       ERR29
          movq     %rdi,%rcx                      # RCX = EA buffer
          call     _GetPath
          call     *__imp__SetCurrentDirectoryA(%rip)
          addq     $0x0100,%rsp
          testl    %eax,%eax
          je       ERR29
          jmp      ERR00
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і GetPath separate path from file name                                               іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA source                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Scans for the last back-/forward slash and sets all following bytes up to the next іЫ
          і paragraph boundary to zero. GetPath() is destructive - it alters your source!      іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
  getpath:call     spath
          movb     $0x00,0x01(%r10)               # clear 00[name]
          leaq     0x01(%r10),%rdi                # RDI = EA name
          jmp      pad
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і NameExt get filename + extension                                                   іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA source                                                                  іЫ
          і   RDX   EA target (set to EA source if NULL)                                       іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Scans for the last back-/forward slash and moves all bytes following it to the be- іЫ
          і ginning. The result is padded with zero(es) up to the next paragraph boundary. Set іЫ
          і RDX = RCX (source = target) for a destructive call.                                іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
  nameext:testq    %rdx,%rdx                      # target given?
          cmove    %rcx,%rdx                      # use source as target
          call     spath
          movq     %rbp,%r11                      # R11 = EA string end
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і GetName get filename w/o extension                                                 іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA buffer                                                                  іЫ
          і   RDX   EA target (set to EA source if NULL)                                       іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Scans the buffer for the last back- / forward slash and copies the bytes following іЫ
          і it to the beginning, then cuts off the last extension. All results are padded with іЫ
          і zero(es) up to the next paragraph boundary.  Set RDX = RCX (source = target) for a іЫ
          і destructive call.                                                                  іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
  getname:testq    %rdx,%rdx                      # target given?
          cmove    %rcx,%rdx                      # use source as target
          call     spath
          movq     %r11,%rbx                      # RBX = EA dot (source)
          subq     %r10,%rbx                      # RBX = offset + 1
          addq     %rdx,%rbx                      # RBX = EA dot + 1
          decq     %rbx                           # RBX = EA dot (target)
          jmp      0f
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і GetExt  get extension                                                              іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA buffer                                                                  іЫ
          і   RDX   EA target (set to EA source if NULL)                                       іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Scans the string for the last period, then copies the last extension to the begin- іЫ
          і ning of the source string. If the source string doesn't contain periods, the first іЫ
          і byte is set to zero (empty string). All results are padded with zero(es) up to the іЫ
          і next paragraph boundary! Set RDX = RCX (source = target) for a destructive call.   іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
   getext:testq    %rdx,%rdx                      # target given?
          cmove    %rcx,%rdx                      # use source as target
          call     spath
          movq     %r11,%r10                      # R10 = EA dot
          movq     %rbp,%r11                      # R11 = EA end
          cmpq     %rbp,%r10                      # any dot?
          jne      0f
          movdqu   %xmm0,0x00(%rdx)               # clear 16 byte
          jmp      ERR00
          .p2align 4,,15
        0:xorl     %eax,%eax                      # RAX = 0
          incq     %r10                           # R10 = EA proper
          movq     %rdx,%rdi                      # RDI = EA target
          subq     %r10,%r11                      # R11 = byte to move
          cmovs    %rax,%r11
          subq     $0x10,%rdi                     # RDI = EA target-16
          shrq     $0x04,%r11                     # R11 = cnt
        1:movdqu   0x00(%r10),%xmm1               # copy name+ext to target
          movdqu   %xmm1,0x00(%rdx)
          addq     $0x10,%rdi                     # update EAs
          addq     $0x10,%r10
          addq     $0x10,%rdx
          decq     %r11                           # cnt--
          jns      1b
          testq    %rbx,%rbx                      # dot to clear?
          je       pad
          movb     $0x00,0x00(%rbx)
          jmp      pad
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і DirUp   remove last directory in path                                              іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA path                                                                    іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Removes the last directory from the passed path, similar to a "cd .." command. All іЫ
          і results are padded with zero(es) up to the next paragraph boundary.  DirUp() works іЫ
          і destructive - it alters your source!                                               іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
    dirup:call     spath
          movb     $0x00,0x01(%r9)                # clear 00[last path]
          leaq     0x01(%r9),%rdi                 # RDI = last path
          jmp      pad
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і COMMON EXIT                                                                        іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
    ERR01:movl     $0x01,%eax                     # ю ERR_ERROR       ю
          jmp      XITC
          .p2align 4,,15
    ERR29:movl     $0x29,%eax                     # ю ERR_SET_DIR     ю
          jmp      XITC
          .p2align 4,,15
    ERR2A:movl     $0x2A,%eax                     # ю ERR_DIR_CREATE  ю
          jmp      XITC
          .p2align 4,,15
    ERR2B:movl     $0x2B,%eax                     # ю ERR_FILE_OPEN   ю
          jmp      XITC
          .p2align 4,,15
    ERR2C:movl     $0x2C,%eax                     # ю ERR_READONLY    ю
          jmp      XITC
          .p2align 4,,15
    ERR2D:movl     $0x2D,%eax                     # ю ERR_FILE_READ   ю
          jmp      XITC
          .p2align 4,,15
    ERR2E:movl     $0x2E,%eax                     # ю ERR_FILE_WRITE  ю
          jmp      XITC
          .p2align 4,,15
    ERR2F:movl     $0x2F,%eax                     # ю ERR_FILE_SETPTR ю
          jmp      XITC
          .p2align 4,,15
    ERR30:movl     $0x30,%eax                     # ю ERR_FILE_RESIZE ю
          jmp      XITC
          .p2align 4,,15
    ERR31:movl     $0x31,%eax                     # ю ERR_FILE_CLOSE  ю
          jmp      XITC
          .p2align 4,,15
    ERR00:xorl     %eax,%eax                      # ю ERR_NO_ERROR    ю
     XITC:movq     0x48(%rsp),%rbp
          movq     0x50(%rsp),%rsi
          movq     0x58(%rsp),%rdi
          movdqa   0x60(%rsp),%xmm4
          movdqa   0x70(%rsp),%xmm5
          movq     0x80(%rsp),%rbx
          movq     0x88(%rsp),%r11
          movq     0x90(%rsp),%r10
          movq     0x98(%rsp),%r9
          movq     0xA0(%rsp),%r8
          movq     0xA8(%rsp),%rdx
          movq     0xB0(%rsp),%rcx
          addq     $0xB8,%rsp
          ret
          /*
          ЙНННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННН»
          є                          I N T E R N A L   H E L P E R S                           єЫ
          ИННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННјЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і spath   scan path                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RCX   EA buffer                                                                  іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   -                                                                          іЫ
          і   RBX   -                                                                          іЫ
          і   RDI   EA last paragraph                                                          іЫ
          і   RSI   -                                                                          іЫ
          і   RBP   EA end                                                                     іЫ
          і   R08   -                                                                          іЫ
          і   R09   EA pre-last slash                                                          іЫ
          і   R10      last slash                                                              іЫ
          і   R11           dot                                                                іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і This common subroutine scans the given string for slashes and dots. It returns its іЫ
          і results in the registers shown above. All registers except RCX (EA source) and RDX іЫ
          і (EA target) are altered.                                                           іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
    spath:movdqa   %xmm6,0x28(%rsp)
          movdqa   %xmm7,0x38(%rsp)
          prefetch 0x00(%rcx)
          pxor     %xmm0,%xmm0                    # XM0 = 0
          movdqa   LC01(%rip),%xmm3               # XM3 = dot
          movdqa   LC02(%rip),%xmm1               # XM1 = f slash
          movdqa   LC03(%rip),%xmm2               # XM2 = b slash
          movq     %rcx,%rdi                      # RDI = EA input
          xorq     %r9, %r9
          xorq     %r10,%r10
          xorq     %r11,%r11
        0:movdqu   0x00(%edi),%xmm4
          movdqu   0x00(%edi),%xmm5
          movdqu   0x00(%edi),%xmm6
          movdqu   0x00(%edi),%xmm7
          pcmpeqb  %xmm0,%xmm4                    # scan for zero
          pcmpeqb  %xmm1,%xmm5                    #          f slash
          pcmpeqb  %xmm2,%xmm6                    #          b slash
          pcmpeqb  %xmm3,%xmm7                    #          dot
          pmovmskb %xmm4,%eax                     # RAX = zero
          pmovmskb %xmm5,%ebx                     # RBX = f slash
          pmovmskb %xmm6,%ebp                     # RBP = b slash
          pmovmskb %xmm7,%esi                     # RSI = dot
          testl    %ebx,%ebx                      # any f slashes?
          je       2f
        1:movq     %r10,%r9                       # R09 = pre-last slash
          bsf      %ebx,%r10d                     # R10 = OF last
          btr      %r10d,%ebx                     # clear bit
          addq     %rdi,%r10                      # R10 = EA last
          testl    %ebx,%ebx
          jne      1b
          jmp      3f
        2:movl     %ebp,%ebx                      # RBX = mask b slash
          testl    %ebp,%ebp                      # any b slashes?
          jne      1b
        3:testl    %esi,%esi
          je       4f
          bsr      %esi,%r11d                     # R11 = OF last
          addq     %rdi,%r11                      # R11 = EA last
        4:addq     $0x10,%rdi                     # RDI = next para
          testl    %eax,%eax                      # zero?
          je       0b
          bsf      %eax,%ebp                      # RBP = offset zero
          subq     $0x10,%rdi                     # RDI = EA last para
          xorl     %ebx,%ebx                      # RBX = 0
          addq     %rdi,%rbp                      # RBP = EA end
          testq    %r9 ,%r9                       # no slash found?
          cmove    %rcx,%r9                       # use EA source
          testq    %r10,%r10                      # no slash found?
          cmove    %rcx,%r10                      # use EA source
          testq    %r11,%r11                      # no dot found?
          cmove    %rbp,%r11                      # use EA end
          movdqa   0x28(%rsp),%xmm6
          movdqa   0x38(%rsp),%xmm7
          ret
          /*
          ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДї
          і pad     pad with zeroes                                                            іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і-> RDI   EA where padding starts                                                    іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і<- RAX   0000 0000 0000 0000   ERR_NO_ERROR                                         іЫ
          ГДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДґЫ
          і Pad string with zeroes (up to the paragraph's end).                                іЫ
          АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
          .p2align 4,,15
      pad:movdqu   0x00(%rdi),%xmm1               # XMM1 = last para
          pxor     %xmm0,%xmm0                    # 16 zeroes
          movl     $0x0F,%ebx                     # RBX = 15
          pcmpeqb  %xmm0,%xmm1                    # XM1 = mask
          pmovmskb %xmm1,%eax                     # RAX = zero
          bsf      %eax, %eax                     # RAX = offset zero
          addq     %rax, %rdi                     # RDI = EA zero
          subq     %rax, %rbx                     # RBX = byte to pad
        0:movb     $0x00,0x00(%rdi)
          incq     %rdi
          decl     %ebx
          jns      0b
          jmp      ERR00
          /*
          ЙНННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННН»
          ИННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННННјЫ
            ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
          */
