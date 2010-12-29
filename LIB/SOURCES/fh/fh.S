          /*
           Use font 'DOS 850' or 'IBM 850' on non-OS/2 machines to display this file properly!
          ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
          º                             F i l e   H a n d l i n g                              ºÛ
          ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
          º                          *** (C) ST-Open 1979 - 2010 ***                           ºÛ
          ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
          º       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        ºÛ
          ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
          º You may copy and distribute this file as often as you want, but recipients are not ºÛ
          º allowed to pay anything for any copy of this file or its content. It isn't allowed ºÛ
          º to remove parts of this file or add third party content. It isn't allowed to abuse ºÛ
          º the copyrighted content or introduced techniques for commercial purposes. Whatever ºÛ
          º is derived from this file and its content must be freely available without charge. ºÛ
          º You are free to modify the content of this file if you want to. However, derivates ºÛ
          º of the content of this file or parts of it *still* are subject to the terms of the ºÛ
          º FT4FP license. Recipients neither are allowed to pay anything for the original nor ºÛ
          º for altered or derived replica.                                                    ºÛ
          ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄºÛ
          º       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        ºÛ
          ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼Û
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³         THESE FUNCTIONS RECOGNISE BACKSLASHES AS WELL AS FORWARD SLASHES.          ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³  RETURNED ERRORCODES:   00   ERR_NO_ERROR                                          ³Û
          ³                         xx   WIN ERRORS                                            ³Û
          ³                         yy   LDreq()                                               ³Û
          ³                         30   ERR_FILE_RESIZE                                       ³Û
          ³                         31   ERR_FILE_CLOSE                                        ³Û
          ³                         32   ERR_TARGET_EXISTS                                     ³Û
          ³                         33   ERR_TARGET_MISSING                                    ³Û
          ³                         34   ERR_FILE_COPY                                         ³Û
          ³                         35   ERR_FILE_MOVE                                         ³Û
          ³                         36   ERR_FILE_DELETE                                       ³Û
          ³                         37   ERR_FILE_CREATE                                       ³Û
          ³                         38   ERR_API                                               ³Û
          ³                         39   ERR_API_RC                                            ³Û
          ³                         3B   ERR_PATH_INCOMPLETE                                   ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .include "..\\..\\..\\include\\yasm.h"
          .section .rdata, "dr"
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4, 0x00, 15
     LC00:.ascii "tmp.xcg"
          .byte 0x00
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .text
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ Frename  rename file                                                               ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   EA filename (must include path)                                            ³Û
          ³   RDX   EA new name (may  include path)                                            ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- EAX   see top of this file                                                       ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
          .globl   _Frename
          .def     _Frename; .scl 2; .type 32; .endef
 _Frename:movq     $frename,%rax
          jmp      0f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ Fdelete delete file                                                                ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   EA filename                                                                ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- EAX   0000 0000   ERR_NO_ERR                                                     ³Û
          ³         0000 0036   ERR_FILE_DELETE                                                ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
          .globl   _Fdelete
          .def     _Fdelete; .scl 2; .type 32; .endef
 _Fdelete:movq     $fdelete,%rax
          jmp      0f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ Fcopy   copy source to target                                                      ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> PAR1  source                                                                     ³Û
          ³   PAR2  target                                                                     ³Û
          ³   PAR3  flag:   0 = replace target                                                 ³Û
          ³                 1 = ask user for replace                                           ³Û
          ³                 2 = skip if replace                                                ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- EAX   see top of this file                                                       ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
          .globl   _Fcopy
          .def     _Fcopy; .scl 2; .type 32; .endef
   _Fcopy:movq     $fcopy,%rax
          jmp      0f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ Fmove   copy source to target, delete src                                          ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> PAR1  source                                                                     ³Û
          ³   PAR2  target                                                                     ³Û
          ³   PAR3  flag:   0 = replace target                                                 ³Û
          ³                 1 = ask user for replace                                           ³Û
          ³                 2 = skip if replace                                                ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- EAX   see top of this file                                                       ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
          .globl   _Fmove
          .def     _Fmove; .scl 2; .type 32; .endef
   _Fmove:movq     $fmove,%rax
          jmp      0f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ Fcreate create new file                                                            ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> PAR1  address full qualified filename                                            ³Û
          ³   PAR2  filesize                                                                   ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- EAX   see top of this file                                                       ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
          .globl   _Fcreate
          .def     _Fcreate; .scl 2; .type 32; .endef
 _Fcreate:movq     $fcreate,%rax
          jmp      0f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ Fxchange exchange content of two files                                             ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> PAR1  name file 1                                                                ³Û
          ³   PAR2       file 2                                                                ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- EAX   see top of this file                                                       ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
          .globl   _Fxchange
          .def     _Fxchange; .scl 2; .type 32; .endef
_Fxchange:movq     $fxchange,%rax
          jmp      0f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ DsrchD  search directories on n drives                                             ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   pattern                                                                    ³Û
          ³   RDX   MemHandle                                                                  ³Û
          ³   R08   subfield                                                                   ³Û
          ³   R09   drivemap                                                                   ³Û
          ³   [20]  max. directories to find                                                   ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- EAX   directories found (zero = none)                                            ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³ NOTE: [drivemap] is a 32 bit mask (bit 00 is A:\, bit 01 is B:\, etc.). Reset bits ³Û
          ³       stand for "ignore this drive", set bits mean "scan this drive for matches".  ³Û
          ³       The field is cleared and found dirs are stored from zero to the field's end. ³Û
          ³                                                                                    ³Û
          ³       The passed pattern must look like this:                                      ³Û
          ³                                                                                    ³Û
          ³                                ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿                                 ³Û
          ³                                ³ path\more_path\ ³                                 ³Û
          ³                                ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ                                 ³Û
          ³                                                                                    ³Û
          ³       Drive letter, colon + leading backslash are automatically appended according ³Û
          ³       to the given drive map. Drives are scanned in alphabetical order.            ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
          .globl   _DsrchD
          .def     _DsrchD; .scl 2; .type 32; .endef
  _DsrchD:movq     $dmulti,%rax
          jmp      0f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ various directory and file search functions...                                     ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   address pattern        (drive:\path\  or  drive:\path\*.ext)               ³Û
          ³   RDX   MemHandle              (target field)                                      ³Û
          ³   R08   subfield                                                                   ³Û
          ³   R09   start                  (entry number)                                      ³Û
          ³   [20]  files to add           (not for DsrchC or FsrchC)                          ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- RAX   files found (zero = none or error)                                         ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³ DsrchC  count dirs   (nothing stored)                                              ³Û
          ³ FsrchC  count files  (nothing stored)                                              ³Û
          ³                                                                                    ³Û
          ³ Just count directory or file names matching the passed pattern.                    ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³ DsrchN  search dirs  (name only)                                                   ³Û
          ³ FsrchN  search files (name only)                                                   ³Û
          ³                                                                                    ³Û
          ³ Return plain directory or file names.                                              ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³ DsrchP  search dirs  (with path)                                                   ³Û
          ³ FsrchP  search files (with path)                                                   ³Û
          ³                                                                                    ³Û
          ³ Append found names to the given path. Repeated assembly of filenames from parts is ³Û
          ³ quite time consuming. It is much faster to assemble them once, store the full name ³Û
          ³ in a field and access it via FDA_ADDRESS.                                          ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³ NOTES: If start is zero, LDclr() is called before search begins.  If start exceeds ³Û
          ³        MAX_ENTRIES, it's set to zero. If the sum of [PAR4 + PAR5] is out of range, ³Û
          ³        the field is filled up to its end.                                          ³Û
          ³                                                                                    ³Û
          ³        The passed pattern is evaluated back to forth, looking for a back- or fore- ³Û
          ³        ward slash. If none is found, no search is started and the function returns ³Û
          ³        zero.                                                                       ³Û
          ³                                                                                    ³Û
          ³        If the given path does not end with a wildcard after the last back- or for- ³Û
          ³        wardslash, '*.*' is appended automatically. The scan function truncates the ³Û
          ³        last path component if it is not terminated by a back- or forward slash:    ³Û
          ³                                                                                    ³Û
          ³        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ³Û
          ³        ³ X:\path\more_path\last_path  ³   =>   ³ X:\path\more_path\*.*           ³ ³Û
          ³        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ ³Û
          ³        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ³Û
          ³        ³ X:\path\more_path\last_path\ ³   =>   ³ X:\path\more_path\last_path\*.* ³ ³Û
          ³        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ ³Û
          ³                                                                                    ³Û
          ³        If you want to search specific file types, pass a pattern like              ³Û
          ³                                                                                    ³Û
          ³                            ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿                             ³Û
          ³                            ³ X:\path\more_path\*.ext ³                             ³Û
          ³                            ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ                             ³Û
          ³                                                                                    ³Û
          ³        If the scan routine detects a wildcard, it uses the given pattern -without- ³Û
          ³        touching the pattern at all.                                                ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³ CAUTION: Names are truncated to a size of 256 byte (including terminating zero)!   ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
          .globl   _DsrchC
          .def     _DsrchC; .scl 2; .type 32; .endef
  _DsrchC:movq     $dcnt,%rax
          jmp      0f
          .p2align 4,,15
          .globl   _FsrchC
          .def     _FsrchC; .scl 2; .type 32; .endef
  _FsrchC:movq     $fcnt,%rax
          jmp      0f
          .p2align 4,,15
          .globl   _DsrchN
          .def     _DsrchN; .scl 2; .type 32; .endef
  _DsrchN:movq     $dnam,%rax
          jmp      0f
          .p2align 4,,15
          .globl   _FsrchN
          .def     _FsrchN; .scl 2; .type 32; .endef
  _FsrchN:movq     $fnam,%rax
          jmp      0f
          .p2align 4,,15
          .globl   _DsrchP
          .def     _DsrchP; .scl 2; .type 32; .endef
  _DsrchP:movq     $dapp,%rax
          jmp      0f
          .p2align 4,,15
          .globl   _FsrchP
          .def     _FsrchP; .scl 2; .type 32; .endef
  _FsrchP:movq     $fapp,%rax
          jmp      0f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ PPdir   post process directory fields                                              ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   MemHandle                                                                  ³Û
          ³   RDX   entries to process                                                         ³Û
          ³   R08   00   just append backslashes                                               ³Û
          ³         xx   store sizes in subfield 01                                            ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- EAX   dirs processed                                                             ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³ PPdir() appends backslashes to entries retrieved with DsrchP(). If the flag is set ³Û
          ³ to any non-zero value, the retrieved sizes are written to subfield 01 (if it is of ³Û
          ³ type 03 (DD)). Reading the size is much faster than searching for a string's end - ³Û
          ³ at least with direct access to the field's content...                              ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
          .globl   _PPdir
          .def     _PPdir; .scl 2; .type 32; .endef
   _PPdir:movq     $ppdir,%rax
          jmp      0f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ d i s t r i b u t o r                      ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
        0:subq     $0x03F8,%rsp
          nop
          nop
          movdqa   %xmm4,0x0370(%rsp)
          movdqa   %xmm5,0x0380(%rsp)
          movq     %rbp, 0x0390(%rsp)
          movq     %rbx, 0x0398(%rsp)
          movq     %r14, 0x03A0(%rsp)
          movq     %r13, 0x03A8(%rsp)
          movq     %rsi, 0x03B0(%rsp)
          movq     %rdi, 0x03B8(%rsp)
          movq     %r12, 0x03C0(%rsp)
          movq     %r11, 0x03C8(%rsp)
          movq     %r10, 0x03D0(%rsp)
          movq     %r9,  0x03D8(%rsp)
          movq     %r8,  0x03E0(%rsp)
          movq     %rdx, 0x03E8(%rsp)
          movq     %rcx, 0x03F0(%rsp)
          jmp      *%rax
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ Frename  rename file                       ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   EA filename (must include path)    ³Û
          ³   RDX   EA new name (may  include path)    ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- RAX   0000 0000   ERR_NO_ERROR           ³Û
          ³         0000 003B   ERR_PATH_INCOMPLETE    ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
  frename:movq     %rcx,%rsi                       # RSI = EA SRC
          movq     %rcx,%r10                       # R10 = EA SRC
          leaq     0x1D(%rsp),%r11                 # R11 = EA TMP
          xorl     %r8d,%r8d                       # R08 = replace TGT
          cmpb     $0x3A,0x01(%rcx)                # qualified path SRC?
          jne      R3B
          cmpb     $0x3A,0x01(%rdx)                # qualified path TGT?
          je       fmove
        0:addq     $0x03,%r11
          movb     0x00(%rsi),%al                  # copy path
          movb     0x01(%rsi),%bl
          movb     0x02(%rsi),%r9b
          movb     %al, 0x00(%r11)
          movb     %bl, 0x01(%r11)
          movb     %r9b,0x02(%r11)
          testb    %al,%al                         # end?
          je       1f
          incq     %rsi
          cmpb     $0x2F,%al                       # forward slash?
          cmove    %rsi,%r10
          cmpb     $0x5C,%al                       # backslash?
          cmove    %rsi,%r10
          testb    %bl,%bl                         # end?
          je       1f
          incq     %rsi
          cmpb     $0x2F,%bl                       # forward slash?
          cmove    %rsi,%r10
          cmpb     $0x5C,%bl
          cmove    %rsi,%r10
          testb    %r9b,%r9b                       # end?
          je       1f
          incq     %rsi
          cmpb     $0x2F,%r9b                      # forward slash?
          cmove    %rsi, %r10
          cmpb     $0x5C,%r9b                      # backslash?
          cmove    %rsi, %r10
          jmp      0b
          .p2align 4,,15
        1:leaq     0x20(%rsp),%r11
          subq     %rcx,%r10
          addq     %r10,%r11
        2:movb     0x00(%rdx),%al                  # read new name
          movb     0x01(%rdx),%bl
          movb     0x02(%rdx),%r9b
          movb     %al, 0x00(%r11)                 # append
          movb     %bl, 0x01(%r11)
          movb     %r9b,0x02(%r11)
          testb    %al,%al
          je       3f
          testb    %bl,%bl
          je       3f
          testb    %r9b,%r9b
          je       3f
          addq     $0x03,%rdx
          addq     $0x03,%r11
          jmp      2b
          .p2align 4,,15
        3:leaq     0x20(%rsp),%rdx                 # RDX = temp
          jmp      fmove
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ Fdelete delete file                        ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   EA filename                        ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- RAX   0000 0000   ERR_NO_ERR             ³Û
          ³         0000 0036   ERR_FILE_DELETE        ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
  fdelete:call     *__imp__DeleteFileA(%rip)
          testl    %eax,%eax
          je       R36
          jmp      R00
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ Fcopy   copy source to target              ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   source                             ³Û
          ³   RDX   target                             ³Û
          ³   R08   flag:   0 = replace target         ³Û
          ³                 1 = ask user for replace   ³Û
          ³                 2 = skip if replace        ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- RAX   0000 0000   ERR_NO_ERROR           ³Û
          ³         0000 0034   ERR_FILE_COPY          ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
    fcopy:leaq     __imp__CopyFileA(%rip),%rax     # RAX = EA_API
          movl     %r8d, %ebx
          xorl     %r13d,%r13d                     # R08 > reload
          jmp      0f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ Fmove   copy source to target, delete src  ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   source                             ³Û
          ³   RDX   target                             ³Û
          ³   R08   flag:   0 = replace target         ³Û
          ³                 1 = ask user for replace   ³Û
          ³                 2 = skip if replace        ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- RAX   0000 0000   ERR_NO_ERROR           ³Û
          ³         0000 0035   ERR_FILE_MOVE          ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
    fmove:movl     %r8d,%ebx                       # RBX = flags
          leaq     __imp__MoveFileExA(%rip),%rax   # RAX = EA_API
          movl     $0x0A,%r8d                      # copy + write through
          movl     $0x0B,%r13d                     # R08 > reload
          testl    %ebx,%ebx
          jne      0f
          incl     %r8d                            # + overwrite
          jmp      0f
          .p2align 4,,15
        0:movq     %rax,%rbp                       # store EA_API
          movq     _BNR(%rip),%rsi                 # RSI = BNR
          movq     %rcx,%r12                       # R12 = EA SRC
          movq     %rdx,%rdi                       # RDI = EA TGT
          call     *%rax
        1:testl    %eax,%eax                       # error?
          jne      R00
          decl     %ebx                            # flag = 1?
          je       3f
        2:testl    %r13d,%r13d                     # copy?
          je       R34
          jmp      R35
          .p2align 4,,15
        3:xorl     %ebx,%ebx                       # one try, only!
          call     *__imp__GetLastError(%rip)
          movl     $0x34,%ecx                      # RCX = ERR_FILE_COPY
          movl     $0x35,%edx                      # RDX = ERR_FILE_MOVE
          testl    %r13d,%r13d                     # copy?
          cmovne   %edx,%ecx
          movq     %rdi, MSGADR(%rsi)              # ask user
          movq     %rax, MSG_V1(%rsi)              # WIN error
          movl     $0x01,ERR_TY(%rsi)              # system msg
          call     _ErrMgr
          cmpl     $0x02,%eax                      # replace?
          jne      2b
          movq     %rbp, %rax                      # RAX = EA_API
          movl     %r13d,%r8d                      # R08 = flags
          movq     %r12, %rcx                      # RCX = EA SRC
          movq     %rdi, %rdx                      # RDX = EA TGT
          call     *%rax
          jmp      1b
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ Fcreate create new file                    ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   address full qualified filename    ³Û
          ³   RDX   filesize                           ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- RAX   0000 0000   ERR_NO_ERROR           ³Û
          ³         0000 0037   ERR_FILE_CREATE        ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
  fcreate:pxor     %xmm0,%xmm0
          leaq     0x20(%rsp),%rcx                 # ECX = FH
          movl     $0x01,%r8d                      # R08 = fail if exist
          movq     %rcx,%r9                        # R09 = name
          movdqu   %xmm0,0x20(%rsp)                # clear FH
          movdqu   %xmm0,0x30(%rsp)
          movdqu   %xmm0,0x40(%rsp)
          movdqu   %xmm0,0x50(%rsp)
          call     _Fopen
          testl    %eax,%eax
          jne      R37
          movl     %ebx,0x14(%esp)                 # FH.Fsize
          call     _Fsize
          movl     %eax,%ebx                       # RBX = RC size
          call     _Fclose
          testl    %eax,%eax                       # close failed?
          je       R37
          testl    %ebx,%ebx                       # size failed?
          je       R37
          jmp      R00
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ Fxchange exchange content of two files     ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   EA source                          ³Û
          ³   RDX   EA target                          ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- RAX   0000 0000   ERR_NO_ERROR           ³Û
          ³         0000 0008   ERR_PAR_INVALID        ³Û
          ³         0000 0035   ERR_FILE_MOVE          ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
 fxchange:movq     %rdx,%rdi                       # RDI = EA TGT
          leaq     0x20(%rsp),%rsi                 # RSI = EA TMP
          movl     $0x10,%ebx                      # EBX = loop_cnt
          pxor     %xmm0,%xmm0                     # XM0 = 0
        0:movdqu   0x00(%rdi),%xmm1                # read  target
          movdqa   %xmm0,0x00(%rsi)                # write temp
          pcmpeqd  %xmm0,%xmm1                     # scan for zero
          pmovmskb %xmm0,%eax                      # make masks
          testl    %eax,%eax                       # zero detected?
          jne      1f
          addq     $0x10,%rdi                      # RDI = next para
          addq     $0x10,%rsi                      # RSI = next para
          decl     %ebx                            # RBX = loop_cnt--
          jne      0b
          movd     0x00(%rdi),%xmm1
          pcmpeqd  %xmm0,%xmm1                     # scan for zero
          pmovmskb %xmm0,%eax                      # make masks
          testl    %eax,%eax                       # zero detected?
          je       R08
          .p2align 4,,15
        1:bsf      %eax,%eax                       # RAX = position
          addq     %rax,%rsi                       # RSI = EA append
          movl     $0x504D542E,0x00(%rsi)          # append .TMP
          movl     $0x00,0x04(%rsi)                # terminate
          movq     %rdx,%rdi                       # RDI = EA TGT
          leaq     0x20(%rsp),%rsi                 # RSI = EA TMP
          movq     %rcx,%r12                       # R12 = EA SRC
          movq     %rdi,%rcx                       # RCX = EA TGT
          movq     %rsi,%rdx                       # RDX = EA TMP
          movl     0x0B,%r8d                       # copy, write through, overwrite
          call     *__imp__MoveFileExA(%rip)
          testl    %eax,%eax                       # failed?
          je       R35
          movq     %r12,%rcx                       # RCX = EA SRC
          movq     %rdi,%rdx                       # RDX = EA TGT
          movl     0x0B,%r8d                       # copy, write through, overwrite
          call     *__imp__MoveFileExA(%rip)
          testl    %eax,%eax                       # failed?
          je       R35
          movq     %rsi,%rcx                       # RCX = EA TMP
          movq     %r12,%rdx                       # RDX = EA SRC
          movl     0x0B,%r8d                       # copy, write through, overwrite
          call     *__imp__MoveFileExA(%rip)
          testl    %eax,%eax                       # failed?
          je       R35
          jmp      R00
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ DsrchD  search directories on n drives     ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   pattern                            ³Û
          ³   RDX   MemHandle                          ³Û
          ³   R08   subfield                           ³Û
          ³   R09   drivemap                           ³Û
          ³   [20]  max. directories to find           ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- EAX   directories found (zero = none)    ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
   dmulti:movl     $0x5C3A4000,0x2C(%rsp)          # .A:\
          leaq     0x30(%rsp),%rdi                 # RDI = target
          pxor     %xmm1,%xmm1                     # XM1 = 0
        0:movdqu   0x00(%rcx),%xmm0                # copy
          movdqa   %xmm0,0x00(%rdi)
          pcmpeqb  %xmm1,%xmm0                     # detect zero
          pmovmskb %xmm0,%eax                      # make masks
          testl    %eax,%eax                       # zero detected?
          jne      1f
          addq     $0x10,%rcx                      # SRC next para
          addq     $0x10,%rdi                      # TGT next para
          jmp      0b
          .p2align 4,,15
        1:decq     %rdi                            # ESI = last byte
          bsf      %eax,%eax                       # RAX = position
          addq     %rax,%rdi                       # RDI = EA append
          cmpb     $0x2F,0x00(%rdi)                # forward slash?
          je       2f
          cmpb     $0x5C,0x00(%rdi)                # backslash?
          jne      3f
        2:movl     $0x002A2E2A,0x01(%rdi)          # append *.*
        3:movl     %r9d,%edi                       # RDI = drivemask
          movl     0x0420(%rsp),%eax               # RAX = max_cnt
          xorl     %ebx,%ebx                       # RBX = counter
          leaq     0x2D(%rsp),%rcx                 # RCX = EA pattern
          xorl     %r9d,%r9d                       # R09 = entry
          movl     %eax,0x20(%rsp)                 # store max_cnt
        4:incb     0x2D(%rsp)                      # drive++
          shrl     %edi                            # drive -> carry
          jb       5f                              # drive present
          je       6f                              # no more drives
          jmp      4b
          .p2align 4,,15
        5:call     _DsrchP
          addl     %eax,%ebx                       # counter + found
          addl     %eax,%r9d                       # entry   + found
          subl     %eax,0x20(%rsp)                 # max_cnt - found
          jbe      6f
          jmp      4b
          .p2align 4,,15
        6:movl     %ebx,%eax                       # EAX = total matches
          jmp      XIT
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ DsrchC  count    dirs                      ³Û
          ³ FsrchC           files                     ³Û
          ³ DsrchN  retrieve dir  names                ³Û
          ³ FsrchN           file names                ³Û
          ³ DsrchP           dir  names with path      ³Û
          ³ FsrchP           file names with path      ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   address pattern                    ³Û
          ³   RDX   MemHandle                          ³Û
          ³   R08   subfield                           ³Û
          ³   R09   start                              ³Û
          ³   [20]  files to add                       ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³<- RAX   files found (zero = none or error) ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ set function flags                    ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
     dcnt:movl     $0x01,%r13d                     # R13 = DIR  -   -
          jmp      0f
          .p2align 4,,15
     fcnt:xorl     %r13d,%r13d                     # R13 =  -   -   -
          jmp      0f
          .p2align 4,,15
     dnam:movl     $0x03,%r13d                     # R13 = DIR STO  -
          jmp      0f
          .p2align 4,,15
     fnam:movl     $0x02,%r13d                     # R13 =  -  STO  -
          jmp      0f
          .p2align 4,,15
     dapp:movl     $0x07,%r13d                     # R13 = DIR STO APP
          jmp      0f
          .p2align 4,,15
     fapp:movl     $0x06,%r13d                     # R13 =  -  STO APP
          jmp      0f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ function start                        ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
        0:xorl     %ebx, %ebx                      # RBX = 0
          movl     0x001C(%rdx),%r11d              # R11 = max entries
          movl     0x0420(%rsp),%r12d              # R12 = count
          movq     %rcx, %rsi                      # RSI = EA pattern (ori)
          leaq     0x0040(%rsp),%rdi               # RDI = EA pattern (wrk)
          leaq     0x0184(%rsp),%rbp               # RBP = EA WINFINDDATAA
          decl     %ebx                            # RBX = max
          testl    $0x06,%r13d                     # just count?
          cmove    %ebx, %r12d                     # R12 = infinite
          je       1f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ validate parameters                   ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          movl     %r11d,%r10d                     # R10 = max
          xorl     %eax, %eax                      # EAX = 0
          movq     %rdx, %rcx                      # RCX = MemHandle
          subl     %r9d, %r11d                     # R11 = remaining
          cmovs    %eax, %r9d                      # if beyond end 1st = 0
          cmovs    %r10d,%r11d                     #               rem = max
          cmpl     %r12d,%r11d                     # counter > rem?
          cmovs    %r11d,%r12d                     # R12 = remaining
          testl    %r9d, %r9d                      # start = 0?
          jne      1f
          call     _LDclr
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ prepare pattern                       ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
        1:movq     %rdi, %rcx                      # RCX = EA pattern (wrk)
          pxor     %xmm1,%xmm1                     # XM1 = 0
          movq     %rdi,%rbx                       # RBX = EA pattern
        2:movdqu   0x00(%rsi),%xmm0                # copy pattern
          movdqa   %xmm0,0x00(%rdi)
          pcmpeqb  %xmm1,%xmm0                     # detect zero
          pmovmskb %xmm0,%eax                      # make mask
          testl    %eax,%eax                       # zero detected?
          jne      3f
          addq     $0x10,%rsi                      # SRC next para
          addq     $0x10,%rdi                      # TGT next para
          jmp      2b
          .p2align 4,,15
        3:negq     %rbx                            # RBX = -EA
          decq     %rdi                            # RDI = EA last char
          bsf      %eax,%eax                       # RAX = position zero
          addq     %rax,%rdi                       # RDI = EA append
          addq     %rdi,%rbx                       # RBX = cnt
        4:cmpb     $0x2F,0x00(%rdi)                # forward slash?
          je       5f
          cmpb     $0x5C,0x00(%rdi)                # backslash?
          je       5f
          decq     %rdi                            # one back
          decl     %ebx                            # cnt--
          jne      4b
          jmp      XIT
          .p2align 4,,15
        5:incq     %rdi                            # RDI = IP
          cmpb     $0x2A,0x00(%rdi)                # *?
          je       6f
          movl     $0x002A2E2A,0x00(%rdi)          # append *.*
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ set parameters                        ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
        6:leaq     0x01B0(%rsp),%rsi               # RSI = EA name
          movq     %rcx, %rax                      # RAX = EA pattern
          testl    $0x04,%r13d                     # append?
          cmove    %rsi, %rax                      # RAX = EA for FDacc
          movq     %rdx, %r10                      # R10 = MemHandle
          movl     %r9d, %r11d                     # R11 = entry
          xorl     %r14d,%r14d                     # R14 = found
          movq     %rax, 0x0020(%rsp)              # store P_5
          movq     %rdx, 0x0340(%rsp)              # MemHandle
          movq     %r9,  0x0348(%rsp)              # entry
          movq     %r8,  0x0350(%rsp)              # subfield
          movq     %r14, 0x01B0(%rsp)              # clear name
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ retrieve search handle                ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³ RCX   EA pattern (wrk)         reload ³Û
          ³ RDX   MemHandle                reload ³Û
          ³ R08   subfield                 reload ³Û
          ³ R09   FDA_WRITE                set    ³Û
          ³ RBX   FF handle                -> RCX ³Û
          ³ RDI   IP                              ³Û
          ³ RSI   EA name                         ³Û
          ³ RBP   EA WINFINDDATAA          -> RDX ³Û
          ³ R10   ???                 win garbage ³Û
          ³ R11   ???                 win garbage ³Û
          ³ R12   loop counter                    ³Û
          ³ R13   control flags                   ³Û
          ³ R14   found counter                   ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          movq     %rbp, %rdx                      # RDX = EA WINFINDDATAA
          call     *__imp__FindFirstFileA(%rip)
          movq     %rax,%rbx                       # RBX = FF handle
          incl     %eax
          je       XIT
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ find loop                             ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
        0:testl    %eax, %eax                      # error?
          je       6f
          movl     0x0184(%rsp),%r11d              # R11 = file attributes
          xorl     %eax, %eax                      # RAX = 0
          testl    $0x01,%r13d                     # dir?
          je       1f
          testl    $0x10,%r11d                     # is dir?
          je       5f
          jmp      2f
          .p2align 4,,15
        1:testl    $0x10,%r11d                     # is dir?
          jne      5f
          jmp      2f
          .p2align 4,,15
        2:cmpb     $0x00,0x00(%rsi)                # empty string?
          je       5f
          cmpb     $0x2E,0x00(%rsi)                # dot?
          je       5f
          incl     %r14d                           # R14 = found++
          testl    $0x06,%r13d                     # write?
          je       5f
          testl    $0x04,%r13d                     # append?
          je       4f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ append               ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          movl     $0x04,%eax                      # RAX = 4
          movq     %rsi, %r10                      # R10 = EA name
          movq     %rdi, %r11                      # R11 = IP
        3:movdqa   0x00(%r10),%xmm0                # copy 256 byte
          movdqa   0x10(%r10),%xmm1
          movdqa   0x20(%r10),%xmm2
          movdqa   0x30(%r10),%xmm3
          movdqu   %xmm0,0x00(%r11)
          movdqu   %xmm1,0x10(%r11)
          movdqu   %xmm2,0x20(%r11)
          movdqu   %xmm3,0x30(%r11)
          addq     $0x40,%r10                      # R10 = next block
          addq     $0x40,%r11                      # R11 = next block
          decl     %eax                            # cnt--
          je       4f
          jmp      3b
          movb     $0x00,0x3F(%r11)                # force termination!
          .p2align 4,,15
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ write                ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
        4:movq     0x0340(%rsp),%rcx               # RCX = MemHandle
          movl     0x0348(%rsp),%edx               # RDX = entry
          movl     0x0350(%rsp),%r8d               # R08 = subfield
          movl     $0x02,       %r9d               # R09 = FDA_WRITE
          call     _FDacc
          incl     0x0348(%rsp)                    # entry++
          decl     %r12d                           # loop_cnt--
          je       6f
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ next                 ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
        5:movq     %rax,0x01B0(%rsp)               # clear name
          movq     %rbx,%rcx                       # RCX = FF handle
          movq     %rbp,%rdx                       # RDX = EA WINFINDDATAA
          call     *__imp__FindNextFileA(%rip)
          jmp      0b
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ done...                               ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
        6:movq     %rbx, %rcx                      # RCX = FF handle
          call     *__imp__FindClose(%rip)
          movl     %r14d,%eax                      # RAX = found
          jmp      XIT
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ PPdir   post process directory fields      ³Û
          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´Û
          ³-> RCX   MemHandle                          ³Û
          ³   RDX   entries to process                 ³Û
          ³   R08   00   just append backslashes       ³Û
          ³         xx   store sizes in subfield 01    ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
    ppdir:movq     0x00(%rcx),%r10                 # R10 = EA field
          leaq     0x40(%rsp),%rdi                 # RDI = EA string
          movl     %edx, %ebx                      # RBX = counter
          movl     %r8d, %ebp                      # RBP = flag
          movq     %rdi, 0x20(%rsp)                # P_5 = EA string
          xorl     %edx, %edx                      # RDX = 0
          movl     0x64(%r10),%eax                 # RAX = offset sub01
          cmpb     $0x03,0x41(%r10)                # is sub01 DD?
          cmovne   %edx, %ebp                      # clear flag if not
          addq     %rax, %r10                      # R10 = EA sub01
          xorl     %r8d, %r8d                      # R08 = sub00
          movl     $0x01,%r9d                      # R09 = FDA_READ
        0:movq     %rdi, %r11                      # R11 = EA string
          call     _FDacc
          pxor     %xmm0,%xmm0                     # XM0 = 0
          incl     %r9d                            # R09 = FDA_WRITE
        1:movdqa   0x00(%r11),%xmm1                # get para
          pcmpeqb  %xmm0,%xmm1                     # test
          pmovmskb %xmm1,%eax                      # get MSBs
          testl    %eax,%eax                       # zero detected?
          jne      2f
          addq     $0x10,%r11                      # next para
          jmp      1b
          .p2align 4,,15
        2:bsf      %eax,%eax                       # get position
          addq     %rax,%r11                       # proceed to end
          movw     $0x5C,0x00(%r11)                # append backslash
          subq     %rdi,%r11                       # R11 = size
          testl    %ebp,%ebp                       # flag set?
          je       3f
          movl     %r11d,0x00(%r10)                # store size
          addq     $0x04,%r10                      # R10 = next entry
          jmp      3f
          .p2align 4,,15
        3:call     _FDacc
          decl     %r9d                            # R09 = FDA_READ
          incl     %edx                            # EDX = next entry
          decl     %ebx                            # cnt--
          jne      0b
          jmp      XIT
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ ERRORS                                     ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
      R00:xorl     %eax,%eax                       # ERR_NO_ERROR
          jmp      XIT
          .p2align 4,,15
      R08:movl     $0x08,%eax                      # ERR_PAR_INVALID
          jmp      XIT
          .p2align 4,,15
      R32:movl     $0x32,%eax                      # ERR_TARGET_EXISTS
          jmp      XIT
          .p2align 4,,15
      R34:movl     $0x34,%eax                      # ERR_FILE_COPY
          jmp      XIT
          .p2align 4,,15
      R35:movl     $0x35,%eax                      # ERR_FILE_MOVE
          jmp      XIT
          .p2align 4,,15
      R36:movl     $0x36,%eax                      # ERR_FILE_DELETE
          jmp      XIT
          .p2align 4,,15
      R37:movl     $0x37,%eax                      # ERR_FILE_CREATE
          jmp      XIT
          .p2align 4,,15
      R38:movl     $0x38,%eax                      # ERR_API
          jmp      XIT
          .p2align 4,,15
      R3B:movl     $0x3B,%eax                      # ERR_PATH_INCOMPLETE
          jmp      XIT
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ³ common exit                                ³Û
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .p2align 4,,15
      XIT:movdqa   0x0370(%rsp),%xmm4
          movdqa   0x0380(%rsp),%xmm5
          movq     0x0390(%rsp),%rbp
          movq     0x0398(%rsp),%rbx
          movq     0x03A0(%rsp),%r14
          movq     0x03A8(%rsp),%r13
          movq     0x03B0(%rsp),%rsi
          movq     0x03B8(%rsp),%rdi
          movq     0x03C0(%rsp),%r12
          movq     0x03C8(%rsp),%r11
          movq     0x03D0(%rsp),%r10
          movq     0x03D8(%rsp),%r9
          movq     0x03E0(%rsp),%r8
          movq     0x03E8(%rsp),%rdx
          movq     0x03F0(%rsp),%rcx
          addq     $0x03F8,%rsp
          ret
          /*
          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
            ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
          */
          .comm    _BNR, 8, 3
