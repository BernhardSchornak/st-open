        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �                         A P I   d i r e c t   a c c e s s                          裁
        債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
        �                          *** (C) ST-Open 1979 - 2009 ***                           裁
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        裁
        債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
        � You may copy and distribute this file as often as you want, but recipients are not 裁
        � allowed to pay anything for any copy of this file or its content. It isn't allowed 裁
        � to remove parts of this file or add third party content. It isn't allowed to abuse 裁
        � the copyrighted content or introduced techniques for commercial purposes. Whatever 裁
        � is derived from this file and its content must be freely available without charge. 裁
        � You are free to modify the content of this file if you want to. However, derivates 裁
        � of the content of this file or parts of it *still* are subject to the terms of the 裁
        � FT4FP license. Recipients neither are allowed to pay anything for the original nor 裁
        � for altered or derived replica.                                                    裁
        債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
        �       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        裁
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
        .data
        .align 2,0x00
   LC00:.ascii "mciPlayFile"
        .byte 0
        .text
        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �                      D o s   M o d u l e   S A N D B O X E S                       裁
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � LoadDLL    DosLoadModule                   額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �-> PAR1  DLL path and name                  額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �<- EAX   0000 0000   error                  額
        �         xxxx xxxx   module handle HMODULE  額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        � Tries to load the specified DLL. Returns a 額
        � zero on error, otherwise the module handle 額
        � of the loaded DLL is returned.             額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � FreeDLL    DosFreeModule                   額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �-> PAR1 08 HMODULE (DD)                     額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �<- EAX   0000 0000   ok                     額
        �         xxxx xxxx   error returned by API  額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        � Tries to free the specified DLL. The error 額
        � reported by the API is returned.           額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � getPFN  get PFN of API function            額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �-> PAR1  HMODULE                            額
        �   PAR2  ORDINAL NUMBER                     額
        �   PAR3  PROCESS NAME    (only if PAR2 = 0) 額
        �   PAR4  ADDRESS for PFN                    額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �<- EAX   error from DosQueryProcAddr()      額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        � Get entrypoint of requested API function.  額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �                                   M C I   A P I                                    裁
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � PlayFile   mciPlayFile                     額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �-> PAR1   HMODULE MCIAPI                    額
        �   PAR2   HWND    owner                     額
        �   PAR3   DB *    filename                  額
        �   PAR4   DD      flags                     額
        �   PAR5   DB *    title                     額
        �   PAR6   HWND    viewport                  額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �<- EAX    0000 0000   ok                    額
        �          xxxx xxxx   API error returns     額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        � Executes mciPlayFile                       額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
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
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
