       /*
       浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
       �                               C O N V E R T   D A T                                裁
       債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
       �                          *** (C) ST-Open 1979 - 2008 ***                           裁
       藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
       浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
       �       THE CONTENT OF THIS FILE IS SUBJECT TO THE TERMS OF THE FT4FP-LICENSE        裁
       債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
       � You may copy and distribute it as often as you want, but recipients aren't allowed 裁
       � to pay *anything* for any copy of this file.                                       裁
       �                                                                                    裁
       � You are free to modify the content of this file if you want to. However, derivates 裁
       � of the content of this file *still* are subject to the terms of the FT4FP license. 裁
       � Recipients neither are allowed to pay *anything* for original work nor for altered 裁
       � or derived replica.                                                                裁
       債陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂�
       �       FREE THOUGHT FOR FREE PEOPLE (FT4FP) - KEEP CASH AWAY FROM KNOWLEDGE!        裁
       藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
       */
       .include "..//..//..//..//include//yasm.h"
       .include "..//..//source//hasm.h"
       .data
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       .p2align 4,0x00
  LC00:.ascii "..\\conv\\"
       .long 0x00000000
       .long 0x00000000
  LC01:.ascii "..\\auxi\\dbe.ico"
       .byte 0
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       .text
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
       � ConvD    convert old dat to new format        額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳館
       �-> -      nothing                              額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳館
       �<- EAX    0000 0000   ok                       額
       �          **** ****   error                    額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳館
       � ConvD() converts all fields found in the cur- 額
       � rently selected source folder to the new data 額
       � field format. The new files are stored in the 額
       � folder CONV. If CONV contains fields from any 額
       � previous conversions, those with same numbers 額
       � are overwritten with the content of the field 額
       � found in the current source folder.           額
       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       .align 2,0x90
.globl _ConvD
_ConvD:subl $0xA0,%esp
       nop
       movl _BNR,%eax                       # EAX = BNR
       movl %edx,0x88(%esp)
       movl %ecx,0x8C(%esp)
       movl %ebx,0x90(%esp)
       movl %edi,0x94(%esp)
       movl %esi,0x98(%esp)
       movl %ebp,0x9C(%esp)
       movl MH_FLD(%eax),%edx               # EDX = FLD_LIST_FIELDS
       leal 0x1C(%esp),%ebp
       pxor %xmm4,%xmm4
       movq LC00,%xmm7                      # XM7 = path
       andl $0xFFFFFFF0,%ebp
       movl 0x00(%edx),%edx                 # EBP = EA field
       movl %eax,%esi                       # ESI = BNR
       leal 0x50(%ebp),%ebx                 # EBX = new_name
       movq %xmm4,0x00(%ebp)                # set LD
       movl $0xFFFFE100,0x08(%ebp)          # field number
       movl $0x33,0x0C(%ebp)                # r, w, mem, static
       movl %ebx,0x14(%ebp)                 # filename
       movq %xmm4,0x18(%ebp)
       movdqa %xmm4,0x20(%ebp)
       movdqa %xmm4,0x30(%ebp)              # clear FH
       movdqa %xmm4,0x40(%ebp)
       addl 0x64(%edx),%edx                 # EBP = EA subfield
       /*
       敖陳陳陳陳陳陳陳陳陳朕
       � loop thru fields   額
       青陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩�
       */
   L00:movl 0x00(%edx),%eax                 # EAX = field number
       testl %eax,%eax                      # something to do?
       je L02
       /*
       敖陳陳陳陳陳陳陳�
       � load old      額
       青陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩
       */
       movl %eax,0x00(%esp)                 # field number
       movl %ebx,0x04(%esp)                 # target name
       call _ldFLD
       movl MH_WRK(%esi),%edi               # EDI = MH old
       call _FnDat
       testl %edi,%edi
       je L01
       /*
       敖陳陳陳陳陳陳陳�
       � allocate new  額
       青陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩
       */
       movl 0x04(%edi),%eax                 # eax = size
       movq %xmm7,0x00(%ebx)                # replace path
       shll $0x02,%eax                      # size * 4
       movl %ebp,0x00(%esp)                 # LD
       movl %eax,0x04(%ebp)                 # new size
       call _LDreq
       movl 0x10(%ebp),%ecx                 # ECX = MH new
       testl %eax,%eax                      # error?
       jne L01
       movl %edi,0x00(%esp)                 # MH old
       movl %ecx,0x04(%esp)                 # MH new
       call _convF
       testl %eax,%eax                      # new field?
       je L01
       /*
       敖陳陳陳陳陳陳陳�
       � store         額
       青陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩
       */
       movl 0x00(%ecx),%eax                 # EAX = field EA
       movl %ebx,0x00(%esp)                 # filename
       movl $0x00,0x04(%esp)                # open or create
       movl $0x00,0x08(%esp)                # entire file
       movd 0x34(%eax),%xmm5                # XM5 = size
       subl $0x20,%ebx                      # EBX = FH
       movl %eax,0x08(%ebx)                 # EA
       movl %ebx,0x0C(%esp)                 # FH
       call _Fopen
       movd %xmm5,0x04(%ebx)                # size
       testl %eax,%eax                      # error?
       jne 0f
       movl %ebx,0x00(%esp)                 # FH
       call _Fwrite
       call _Fclose
     0:addl $0x20,%ebx                      # EBX = filename
       movl %ecx,0x00(%esp)
       call _LDfre
       /*
       敖陳陳陳陳陳陳陳陳陳朕
       � set icon           額
       青陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩�
       */
       movl $LC01,0x00(%esp)                 # DAT icon
       movl %ebx,0x04(%esp)                  # name
       call _SetIcon
       /*
       敖陳陳陳陳陳陳陳陳陳朕
       � -> main loop       額
       青陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩�
       */
   L01:movl %edi,0x00(%esp)
       call _LDfre
       movl $0x00,MH_WRK(%esi)              # clear MH old
       addl $0x04,%edx
       jmp L00
       /*
       敖陳陳陳陳陳陳陳陳陳朕
       � exit               額
       青陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩�
       */
   L02:movl 0x88(%esp),%edx
       movl 0x8C(%esp),%ecx
       movl 0x90(%esp),%ebx
       movl 0x94(%esp),%edi
       movl 0x98(%esp),%esi
       movl 0x9C(%esp),%ebp
       addl $0xA0,%esp
       ret
       /*
       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
       � ConvF    convert field                        額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳館
       �-> PAR1   MemHandle source                     額
       �   PAR2             target                     額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳館
       �<- EAX    0000 0000   ok                       額
       �          **** ****   error                    額
       団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳館
       � ConvF() converts the content of a Vxxx field. 額
       � The output is written to the target field.    額
       青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳掏
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩
       */
       .align 2,0x90
.globl _convF
_convF:subl $0x40,%esp
       nop
       nop
       movl 0x44(%esp),%eax                 # EAX = MH source
       movl %ebp,0x28(%esp)
       movl %esi,0x2C(%esp)
       movl %edi,0x30(%esp)
       movl %ebx,0x34(%esp)
       movl %ecx,0x38(%esp)
       movl %edx,0x3C(%esp)
       movl 0x48(%esp),%edi                 # EDI = MH target
       movl 0x00(%eax),%esi                 # ESI = EA source
       movl 0x00(%edi),%ebp                 # EBP = EA target
       /*
       敖陳陳陳陳陳陳陳陳陳朕
       � clear target block 額
       青陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩�
       */
       movl 0x00(%edi),%ebx                 # EBX = EA target
       movl 0x04(%edi),%eax                 # EAX = size
       pxor %xmm0,%xmm0
       pxor %xmm1,%xmm1
       pxor %xmm2,%xmm2
       pxor %xmm3,%xmm3
       shrl $0x06,%eax                      # EAX = loop_cnt
     0:movntdq %xmm0,0x00(%ebx)
       movntdq %xmm1,0x10(%ebx)
       movntdq %xmm2,0x20(%ebx)
       movntdq %xmm3,0x30(%ebx)
       addl $0x40,%ebx
       decl %eax
       jne 0b
       sfence
       /*
       敖陳陳陳陳陳陳陳陳陳朕
       � copy header        額
       青陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩�
       */
       movdqa 0x00(%esi),%xmm0              # read name + field number
       movdqa 0x10(%esi),%xmm1
       movd 0x2C(%esi),%xmm2
       movzb 0x2A(%esi),%eax                # EAX = types
       movzb 0x2B(%esi),%ebx                # EBX = SecSys
       movd 0x30(%esi),%xmm3                # XM2 = status
       movl 0x38(%esi),%ecx                 # ECX = length
       movl 0x3C(%esi),%edx                 # EDX = entries
       movdqa %xmm0,0x00(%ebp)              # write name + field number
       movdqa %xmm1,0x10(%ebp)
       movd %xmm2,0x2C(%ebp)
       andl $0xFFFFFFF0,%ecx                # align length  (get rid of redundant data)
       andl $0xFFFFFFF0,%edx                #       entries (blocks must fit to 16)
       testl %eax,%eax                      # new field?
       je L30
       movl %eax,0x24(%ebp)                 #       type_count
       movl %ebx,0x28(%ebp)                 #       SecSys_key
       movd %xmm3,0x30(%ebp)                #       status
       movl $0x0100,0x34(%ebp)              #       field end
       movl %ecx,0x38(%ebp)                 #       length
       movl %edx,0x3C(%ebp)                 #       entries
       movzb 0x29(%esi),%eax                # EAX = type
       imull %edx,%ecx                      # entries * length
       movl %ecx,0x20(%ebp)                 #       sub_size
       /*
       敖陳陳陳陳陳陳陳陳陳朕
       � convert types      額
       青陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩�
       */
       cmpl $0x2C,%eax                      # multiple?
       je 0f
       movl %eax,0x40(%ebp)
       jmp 1f
     0:movdqa 0x40(%esi),%xmm0              # read types
       movdqa 0x50(%esi),%xmm1
       movdqa %xmm0,0x40(%ebp)              # write types
       movdqa %xmm1,0x50(%ebp)
     1:movl %ebp,%edi
       movl %ebp,%esi
       addl $0x40,%edi                      # EDI = type table
       addl $0x60,%esi                      # ESI = type offsets
       /*
       敖陳陳陳陳陳陳陳陳陳朕
       � create sub OT      額
       青陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩�
       */
     2:movzb 0x00(%edi),%eax                # EAX = type
       movl %edx,%ebx                       # EBX = entries
       cmpl $0x09,%eax                      # old types?
       jb 3f
       subl $0x2A,%eax                      # make new
     3:cmpl $0x08,%eax                      # $32?
       jne 4f
       decl %eax                            # new $32
     4:movb %al,0x00(%edi)                  # store type
       jmp *L20(, %eax, 4)
       .align 2,0x90
   L20:.long L27                            # zero = end
       .long L26                            # DB
       .long L21                            # DW  (len *  2)
       .long L22                            # DD  (len *  4)
       .long L23                            # DQ  (len *  8)
       .long L24                            # DO  (len * 16)
       .long L25                            # FIX (block)
       .long L22                            # $32 (len *  4)
   L21:shll $0x01,%ebx
       jmp L26
   L22:shll $0x02,%ebx
       jmp L26
   L23:shll $0x03,%ebx
       jmp L26
   L24:shll $0x04,%ebx
       jmp L26
   L25:movl %ecx,%ebx
   L26:movl 0x34(%ebp),%eax                 # EAX = field end
       incl %edi                            # type++
       movl %eax,0x00(%esi)                 # write sub_OT
       addl %ebx,0x34(%ebp)                 # update field end
       addl $0x04,%esi                      # sub_OT++
       jmp 2b
       /*
       敖陳陳陳陳陳陳陳陳陳朕
       � copy content       額
       青陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩�
       */
   L27:movl 0x44(%esp),%esi                 # ESI = MH source
       movl 0x48(%esp),%edi                 # EDI = MH target
       movl 0x24(%ebp),%eax                 # EAX = types
       movl 0x00(%esi),%ebx                 # EBX = EA source
       xorl %edx,%edx                       # EDX = subfield
       movl %eax,0x20(%esp)                 # 20[ESP] = type_cnt
       movzb 0x29(%ebx),%eax                # EAX = type old
       cmpl $0x2C,%eax                      # multiple types?
       cmovne %eax,%ebx                     # EBX = single
       jne 5f
   L28:movzb 0x40(%ebx, %edx, 1),%ebx       # EBX = type
     5:movl $0x00,0x04(%esp)                # entry
       movl %edx,0x08(%esp)                 # subfield
       movl 0x3C(%ebp),%ecx                 # ECX = loop_cnt
       testl %ebx,%ebx
       je 8f
   L29:movl $0x01,%eax                      # FDA_READ
       cmpl $0x03,%ebx                      # numeric?
       jbe 6f
       addl $0x06,%eax                      # FDA_ADDRESS
       testb $0x10,0x31(%ebp)
       jne cenc
     6:movl %esi,0x00(%esp)                 # MH source
       movl %eax,0x0C(%esp)                 # command
       call _FDacc
       movl %edi,0x00(%esp)                 # MH target
       movl $0x02,0x0C(%esp)                # FDA_WRITE
       movl %eax,0x10(%esp)                 # address
       movl %eax,0x14(%esp)                 # numeric
       call _FDac2
     7:incl 0x04(%esp)                      # entry++
       decl %ecx                            # loop_cnt--
       jne L29
     8:incl %edx                            # subfield++
       movl 0x00(%esi),%ebx                 # EBX = EA source
       movl 0x00(%edi),%ebp                 # EBP = EA target
       decl 0x20(%esp)                      # type_cnt--
       jne L28
       movl $0x01,%eax                      # EAX = save
       /*
       敖陳陳陳陳陳陳陳陳陳朕
       � exit               額
       青陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩�
       */
   L30:movl 0x28(%esp),%ebp
       movl 0x2C(%esp),%esi
       movl 0x30(%esp),%edi
       movl 0x34(%esp),%ebx
       movl 0x38(%esp),%ecx
       movl 0x3C(%esp),%edx
       addl $0x40,%esp
       ret
       /*
       敖陳陳陳陳陳陳陳陳陳朕
       � copy encrypted     額
       青陳陳陳陳陳陳陳陳陳潰�
         栩栩栩栩栩栩栩栩栩栩�
       */
  cenc:cmpl $0x08,%ebx
       je 9f
       cmpl $0x31,%ebx
       je 9f
       cmpl $0x32,%ebx
       je 9f
       cmpl $0x07,%ebx
       jne 6b
     9:movl _BBF,%eax                       # we misuse BBF as temp buffer...
       movl %esi,0x00(%esp)                 # MH source
       movl $0x01,0x0C(%esp)                # FDA_READ
       movl %eax,0x10(%esp)                 # address
       call _FDacc
       movl _BBF,%eax
       movl %edi,0x00(%esp)                 # MH target
       movl $0x02,0x0C(%esp)                # FDA_WRITE
       movl %eax,0x10(%esp)                 # address
       call _FDac2
       jmp 7b
       /*
       浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
       藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
         栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
       */
.comm _BNR,4
