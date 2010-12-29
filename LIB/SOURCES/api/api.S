        /*
        ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
        บ                         A P I   d i r e c t   a c c e s s                          บÛ
        บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
        บ                          *** (C) ST-Open 1979 - 2009 ***                           บÛ
        ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
        บ       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        บÛ
        บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
        บ You may copy and distribute this file as often as you want, but recipients are not บÛ
        บ allowed to pay anything for any copy of this file or its content. It isn't allowed บÛ
        บ to remove parts of this file or add third party content. It isn't allowed to abuse บÛ
        บ the copyrighted content or introduced techniques for commercial purposes. Whatever บÛ
        บ is derived from this file and its content must be freely available without charge. บÛ
        บ You are free to modify the content of this file if you want to. However, derivates บÛ
        บ of the content of this file or parts of it *still* are subject to the terms of the บÛ
        บ FT4FP license. Recipients neither are allowed to pay anything for the original nor บÛ
        บ for altered or derived replica.                                                    บÛ
        บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบÛ
        บ       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        บÛ
        ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        .data
        .align 2,0x00
   LC00:.ascii "mciPlayFile"
        .byte 0
        .text
        /*
        ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
        บ                      D o s   M o d u l e   S A N D B O X E S                       บÛ
        ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
        ณ LoadDLL    DosLoadModule                   ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ-> PAR1  DLL path and name                  ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ<- EAX   0000 0000   error                  ณÛ
        ณ         xxxx xxxx   module handle HMODULE  ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ Tries to load the specified DLL. Returns a ณÛ
        ณ zero on error, otherwise the module handle ณÛ
        ณ of the loaded DLL is returned.             ณÛ
        ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        .align 2,0x90
.globl _LoadDLL
_LoadDLL:
        subl $0x0120,%esp
        nop
        nop
        movl %edx,0x0118(%esp)        # destroyed by API
        movl %ecx,0x011C(%esp)        # destroyed by API
        movl $0x00,0x0114(%esp)       # HMODULE = 0
        leal 0x0010(%esp),%edx        # EDX = dummy EA
        leal 0x0114(%esp),%ecx        # ECX = PHMODULE
        movl 0x0124(%esp),%eax        # EAX = path+name
        movl %edx,0x00(%esp)          # dummy EA
        movl $0x0100,0x04(%esp)       # dummy size
        movl %eax,0x08(%esp)          # DLL name
        movl %ecx,0x0C(%esp)          # PHMODULE
        call _DosLoadModule
        movl 0x0114(%esp),%eax        # EAX = HMODULE
        movl 0x0118(%esp),%edx        # restored by ST-Open
        movl 0x011C(%esp),%ecx        # restored by ST-Open
        addl $0x0120,%esp
        ret
        /*
        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
        ณ FreeDLL    DosFreeModule                   ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ-> PAR1 08 HMODULE (DD)                     ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ<- EAX   0000 0000   ok                     ณÛ
        ณ         xxxx xxxx   error returned by API  ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ Tries to free the specified DLL. The error ณÛ
        ณ reported by the API is returned.           ณÛ
        ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        .align 2,0x90
.globl _FreeDLL
_FreeDLL:
        subl $0x0C,%esp
        nop
        nop
        movl 0x10(%esp),%eax          # EAX = HMODULE
        movl %ecx,0x04(%esp)          # destroyed by API
        movl %edx,0x08(%esp)          # destroyed by API
        movl %eax,0x00(%esp)          # HMODULE
        call _DosFreeModule
        movl 0x04(%esp),%edx          # restored by ST-Open
        movl 0x08(%esp),%ecx          # restored by ST-Open
        addl $0x0C,%esp
        ret
        /*
        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
        ณ getPFN  get PFN of API function            ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ-> PAR1  HMODULE                            ณÛ
        ณ   PAR2  ORDINAL NUMBER                     ณÛ
        ณ   PAR3  PROCESS NAME    (only if PAR2 = 0) ณÛ
        ณ   PAR4  ADDRESS for PFN                    ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ<- EAX   error from DosQueryProcAddr()      ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ Get entrypoint of requested API function.  ณÛ
        ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        .align 2,0x90
.globl _GETpfn
_GETpfn:subl $0x1C,%esp
        nop
        nop
        movl %edx,0x10(%esp)          # destroyed by API
        movl %ecx,0x14(%esp)          # destroyed by API
        movl %ebx,0x18(%esp)
        movl 0x20(%esp),%eax          # EAX = HMODULE
        movl 0x24(%esp),%ebx          # EBX = ordinal
        movl 0x28(%esp),%ecx          # ECX = name
        movl 0x2C(%esp),%edx          # EDX = PPFN
        movl %eax,0x00(%esp)          # HMODULE
        movl %ebx,0x04(%esp)          # ordinal
        movl %ecx,0x08(%esp)          # name
        movl %edx,0x0C(%esp)          # PPFN
        call _DosQueryProcAddr
        movl 0x10(%esp),%edx          # restored by ST-Open
        movl 0x14(%esp),%ecx          # restored by ST-Open
        movl 0x18(%esp),%ebx
        addl $0x1C,%esp
        ret
        */
        /*
        ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
        บ                                   M C I   A P I                                    บÛ
        ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
        ณ PlayFile   mciPlayFile                     ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ-> PAR1   HMODULE MCIAPI                    ณÛ
        ณ   PAR2   HWND    owner                     ณÛ
        ณ   PAR3   DB *    filename                  ณÛ
        ณ   PAR4   DD      flags                     ณÛ
        ณ   PAR5   DB *    title                     ณÛ
        ณ   PAR6   HWND    viewport                  ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ<- EAX    0000 0000   ok                    ณÛ
        ณ          xxxx xxxx   API error returns     ณÛ
        รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÛ
        ณ Executes mciPlayFile                       ณÛ
        ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
        .align 2,0x90
.globl _PlayFile
_PlayFile:
        subl $0x30,%esp
        nop
        nop
        movl %edx,0x18(%esp)          # destroyed by API
        movl %ecx,0x1C(%esp)          # destroyed by API
        movl %ebx,0x20(%esp)
        movl %edi,0x24(%esp)
        movl %esi,0x28(%esp)
        movl %ebp,0x2C(%esp)
        leal 0x14(%esp),%ebx          # EBX = PPFN
        movl $0x0A,%ecx               # ECX = ordinal
        movl $LC00,%edx               # EDX = module name
        movl 0x34(%esp),%ebp          # EBP = HMODULE
        movl 0x38(%esp),%esi          # ESI = HWND owner
        movl 0x48(%esp),%edi          # EDI = HWND viewport
        movl %ebp,0x00(%esp)          # HMODULE
        movl %ecx,0x04(%esp)          # ordinal
        movl %edx,0x08(%esp)          # name
        movl %ebx,0x0C(%esp)          # PPFN
        call _DosQueryProcAddr
        testl %eax,%eax
        jne 0f
        movl 0x14(%esp),%ebp          # EBP = PFN
        movl 0x3C(%esp),%ebx          # EBX = filename
        movl 0x40(%esp),%ecx          # ECX = flags
        movl 0x44(%esp),%edx          # EDX = title
        movl %esi,0x00(%esp)          # HWND owner
        movl %ebx,0x04(%esp)          # filename
        movl %ecx,0x08(%esp)          # flags
        movl %edx,0x0C(%esp)          # title
        movl %edi,0x10(%esp)          # HWND viewport
        call *%ebp
      0:movl 0x18(%esp),%edx          # restored by ST-Open
        movl 0x1C(%esp),%ecx          # restored by ST-Open
        movl 0x20(%esp),%ebx
        movl 0x24(%esp),%edi
        movl 0x28(%esp),%esi
        movl 0x2C(%esp),%ebp
        addl $0x30,%esp
        ret
        /*
        ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
        ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผÛ
          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
        */
