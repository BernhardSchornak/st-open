        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        �                           M I X E R   F U N C T I O N S                            裁
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
        .text
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � mix16   mix n sources to one target        額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �-> PAR1  address array with source EAs      額
        �   PAR2  target EA (data chunk)             額
        �   PAR3  samples to mix (multiple of 4!)    額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �<- EAX   0000 0000                          額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        � CAUTION: The target's size -must- be twice 額
        �          as large as the required size. Do 額
        �          not pass the address of eight bit 額
        �          data chunks!                      額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
.globl _mix16
 _mix16:subl $0x3C,%esp
        nop
        nop
        movl %ebp,0x24(%esp)
        movl %edi,0x28(%esp)
        movl %esi,0x2C(%esp)
        movl %ebx,0x30(%esp)
        movl %ecx,0x34(%esp)
        movl %edx,0x38(%esp)
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳�
        � 1st input file        額
        青陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩
        */
        movl 0x40(%esp),%eax                # EAX = array
        movl 0x44(%esp),%edi                # EDI = target
        movl 0x48(%esp),%ebp                # EBP = count
        movl 0x00(%eax),%esi                # EDI = source
        shrl $0x02,%ebp                     # EBP = count/4
        je L99
        movl %ebp,0x04(%esp)                # cur_cnt
        movl %ebp,0x08(%esp)                # count
      0:movswl 0x00(%esi),%eax              # get 16 bit samples from
        movswl 0x02(%esi),%ebx              # first file
        movswl 0x04(%esi),%ecx
        movswl 0x06(%esi),%edx
        movl %eax,0x00(%edi)                # store as sign extended
        movl %ebx,0x04(%edi)                # 32 bit samples
        movl %ecx,0x08(%edi)
        movl %edx,0x0C(%edi)
        addl $0x08,%esi
        addl $0x10,%edi
        decl %ebp
        jne 0b
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳�
        � mix with others       額
        青陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩
        */

        /*
        敖陳陳陳陳陳陳陳陳陳陳陳�
        � final pass            額
        青陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩
        */

        jmp L99
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕
        � norm    normalise                          額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �-> PAR1  08   address source filename       額
        団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳調�
        �<- EAX   0000 0000                          額
        青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
.globl _norm
  _norm:subl $0x3C,%esp
        nop
        nop
        movl %ebp,0x24(%esp)
        movl %edi,0x28(%esp)
        movl %esi,0x2C(%esp)
        movl %ebx,0x30(%esp)
        movl %ecx,0x34(%esp)
        movl %edx,0x38(%esp)

        movl 0x1C(%esp),%edx            # EDX = address filename
        xorl %eax,%eax
        movl $20,%ecx
        movl %esp,%edi
        movl %esp,%ebp                  # EBP = address LD
        leal 0x28(%esp),%esi            # ESI = address FH
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳�
        � clear stack           額
        青陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩
        */
        rep
        stosl
        
        /*
        敖陳陳陳陳陳陳陳陳陳陳陳�
        � clean up & exit       額
        青陳陳陳陳陳陳陳陳陳陳陳掏
          栩栩栩栩栩栩栩栩栩栩栩栩
        */
    L99:xorl %eax,%eax
        movl 0x24(%esp),%ebp
        movl 0x28(%esp),%edi
        movl 0x2C(%esp),%esi
        movl 0x30(%esp),%ebx
        movl 0x34(%esp),%ecx
        movl 0x38(%esp),%edx
        addl $0x3C,%esp
        ret
        /*
        浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
        藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕�
          栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩栩�
        */
