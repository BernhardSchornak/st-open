	.file	"bmp.c"
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 4
.globl _BMPdisp
_BMPdisp:
	pushl %ebp
	movl %esp,%ebp
	subl $68,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpl $32,12(%ebp)
	je L25
	ja L50
	cmpl $6,12(%ebp)
	je L6
	ja L51
	cmpl $1,12(%ebp)
	je L3
	jmp L48
	.align 4,0x90
L51:
	cmpl $7,12(%ebp)
	je L11
	jmp L48
	.align 4,0x90
L50:
	cmpl $79,12(%ebp)
	je L6
	ja L52
	cmpl $35,12(%ebp)
	je L6
	jmp L48
	.align 4,0x90
L52:
	cmpl $1043,12(%ebp)
	je L14
	cmpl $1046,12(%ebp)
	je L16
	jmp L48
	.align 4,0x90
L3:
	pushl $1
	movl 8(%ebp),%edx
	pushl %edx
	call _WinSh
	jmp L2
	.align 4,0x90
L6:
	movl _BNR,%eax
	addl $8240,%eax
	pushl %eax
	call _GET
	movl %eax,%edi
	movl 8(%ebp),%edx
	pushl %edx
	pushl $0
	pushl $8
	pushl $6
	pushl $0
	pushl %edi
	call _FDacc
	movl %eax,%esi
	addl $28,%esp
	cmpl $-1,%esi
	je L48
	pushl $0
	pushl $0
	pushl $1
	pushl $14
	pushl %esi
	pushl %edi
	call _FDacc
	movl %eax,%ebx
	pushl $0
	pushl $0
	pushl $1
	pushl $8
	pushl %esi
	pushl %edi
	call _FDacc
	movl %eax,-52(%ebp)
	addl $48,%esp
	pushl $0
	pushl $0
	pushl $1
	pushl $10
	pushl %esi
	pushl %edi
	call _FDacc
	movl %eax,-56(%ebp)
	pushl $0
	movl -52(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	pushl %edx
	call _WinBeginPaint
	movl %eax,-60(%ebp)
	addl $36,%esp
	testl %ebx,%ebx
	je L8
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	pushl $0
	pushl $0
	pushl $1
	pushl $2
	pushl %esi
	pushl %edi
	call _FDacc
	movl %eax,-24(%ebp)
	pushl $0
	pushl $0
	pushl $1
	pushl $3
	pushl %esi
	pushl %edi
	call _FDacc
	movl %eax,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	addl $48,%esp
	pushl $0
	pushl $0
	pushl $1
	pushl $2
	pushl %esi
	pushl %edi
	call _FDacc
	movl %eax,-8(%ebp)
	pushl $0
	pushl $0
	pushl $1
	pushl $3
	pushl %esi
	pushl %edi
	call _FDacc
	movl %eax,-4(%ebp)
	addl $48,%esp
	pushl $2
	pushl $204
	leal -32(%ebp),%eax
	pushl %eax
	pushl $4
	movl -56(%ebp),%edx
	pushl %edx
	movl -52(%ebp),%edx
	pushl %edx
	call _GpiBitBlt
	movl -52(%ebp),%edx
	jmp L54
	.align 4,0x90
L8:
	pushl $0
	pushl $0
	pushl $1
	pushl $21
	pushl %esi
	pushl %edi
	call _FDacc
	movl %eax,%esi
	leal -48(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	call _WinQueryWindowRect
	addl $32,%esp
	pushl %esi
	pushl %ebx
	movl -60(%ebp),%edx
	pushl %edx
	call _WinFillRect
	movl -60(%ebp),%edx
L54:
	pushl %edx
	call _WinEndPaint
	jmp L2
	.align 4,0x90
L11:
	movl 8(%ebp),%edx
	pushl %edx
	pushl $0
	pushl $8
	pushl $6
	pushl $0
	movl _BNR,%eax
	addl $8240,%eax
	pushl %eax
	call _GET
	addl $4,%esp
	pushl %eax
	call _FDacc
	addl $24,%esp
	cmpl $-1,%eax
	je L2
	cmpl $63,%eax
	jne L2
	pushl $0
	pushl $4516
	pushl $32
	movl _BNR,%eax
	addl $9356,%eax
	pushl %eax
	call _GET
	addl $4,%esp
	pushl %eax
	call _PostM
	jmp L2
	.align 4,0x90
L14:
	movl _BNR,%eax
	addl $9272,%eax
	pushl %eax
	call _GET
	addl $4,%esp
	cmpl $1,%eax
	jne L2
	movl 16(%ebp),%eax
	shrl $16,%eax
	andl $65535,%eax
	pushl %eax
	movw 16(%ebp),%ax
	andl $65535,%eax
	pushl %eax
	call _GAMmark
	jmp L2
	.align 4,0x90
L16:
	movl 8(%ebp),%edx
	pushl %edx
	pushl $0
	pushl $8
	pushl $6
	pushl $0
	movl _BNR,%eax
	addl $8240,%eax
	pushl %eax
	call _GET
	addl $4,%esp
	pushl %eax
	call _FDacc
	movl %eax,%edi
	movw 16(%ebp),%ax
	andl $65535,%eax
	movl %eax,-64(%ebp)
	movl 16(%ebp),%eax
	shrl $16,%eax
	andl $65535,%eax
	movl %eax,-68(%ebp)
	addl $24,%esp
	cmpl $63,%edi
	ja L21
	movl _BNR,%eax
	addl $9272,%eax
	pushl %eax
	call _GET
	addl $4,%esp
	testl %eax,%eax
	jne L19
	movl $4544,%esi
	movl $4545,%ebx
	jmp L17
	.align 4,0x90
L19:
	movl $4560,%esi
	movl $4561,%ebx
	jmp L17
	.align 4,0x90
L21:
	movl 20(%ebp),%edx
	pushl %edx
	movl 16(%ebp),%edx
	pushl %edx
	pushl $1046
	jmp L55
	.align 4,0x90
L17:
	pushl %edi
	movl _BNR,%eax
	addl $9264,%eax
	pushl %eax
	call _PUT
	pushl %esi
	pushl $0
	movl 8(%ebp),%edx
	pushl %edx
	call _WinLoadMenu
	movl %eax,%esi
	pushl $70
	pushl %ebx
	movl -68(%ebp),%edx
	pushl %edx
	movl -64(%ebp),%edx
	pushl %edx
	pushl %esi
	movl 8(%ebp),%edx
	pushl %edx
	pushl %edx
	call _WinPopupMenu
	addl $48,%esp
	cmpl $4545,%ebx
	jne L2
	pushl $18
	movl _BNR,%eax
	addl $1024,%eax
	pushl %eax
	call _FlgT
	addl $8,%esp
	testl %eax,%eax
	je L2
	pushl $536879104
	pushl $70086
	pushl $402
	pushl %esi
	call _SendM
	jmp L2
	.align 4,0x90
L25:
	movl _BNR,%eax
	addl $9264,%eax
	pushl %eax
	call _GET
	movl %eax,%ebx
	movl _BNR,%eax
	addl $8240,%eax
	pushl %eax
	call _GET
	movl %eax,%esi
	movl _BNR,%eax
	addl $9268,%eax
	pushl %eax
	call _GET
	pushl $0
	pushl $0
	pushl $1
	pushl $6
	pushl %ebx
	pushl %esi
	call _FDacc
	addl $36,%esp
	movw 16(%ebp),%ax
	andl $65535,%eax
	addl $-4545,%eax
	cmpl $23,%eax
	ja L46
	jmp *L47(,%eax,4)
	.align 4,0x90
L47:
	.long L28
	.long L31
	.long L33
	.long L35
	.long L39
	.long L40
	.long L46
	.long L46
	.long L46
	.long L46
	.long L46
	.long L46
	.long L46
	.long L46
	.long L46
	.long L46
	.long L28
	.long L31
	.long L33
	.long L35
	.long L39
	.long L43
	.long L44
	.long L45
	.align 4,0x90
L28:
	pushl $0
	pushl $0
	pushl $1
	pushl $10
	pushl %ebx
	pushl %esi
	call _FDacc
	addl $24,%esp
	testl %eax,%eax
	je L2
	pushl $0
	pushl $0
	pushl $2
	pushl $25
	pushl %ebx
	pushl %esi
	call _FDacc
	call _dopen
	pushl $5096
	pushl $_ImageSel
	movl _BNR,%eax
	addl $4,%eax
	pushl %eax
	call _GET
	addl $4,%esp
	pushl %eax
	call _DBox
	addl $36,%esp
	call _dclose
	pushl $0
	pushl $0
	pushl $7
	pushl $0
	pushl $16
	movl _BMM,%eax
	addl $64,%eax
	pushl %eax
	call _FDvpt
	pushl $0
	pushl %eax
	pushl $2
	pushl $11
	pushl %ebx
	pushl %esi
	call _FDacc
	addl $48,%esp
	jmp L42
	.align 4,0x90
L31:
	pushl $0
L56:
	pushl $0
	pushl $2
	pushl $25
	pushl %ebx
	pushl %esi
	call _FDacc
	jmp L42
	.align 4,0x90
L33:
	pushl $2
	jmp L56
	.align 4,0x90
L35:
	cmpl $63,%ebx
	jne L36
	pushl $0
	movl _BNR,%eax
	addl $1092,%eax
	pushl %eax
	call _PUT
	pushl $63
	call _PSkill
	pushl $1
	pushl $0
	movl _BNR,%eax
	addl $4,%eax
	pushl %eax
	call _GET
	addl $4,%esp
	pushl %eax
	call _WinInvalidateRect
	jmp L2
	.align 4,0x90
L36:
	pushl $1
	jmp L56
	.align 4,0x90
L39:
	pushl $0
	pushl $0
	pushl $1
	pushl $21
	pushl %ebx
	pushl %esi
	call _FDacc
	pushl %eax
	movl _BNR,%eax
	addl $1100,%eax
	pushl %eax
	call _PUT
	addl $32,%esp
	call _dopen
	pushl $5056
	pushl $_ColSelect
	movl _BNR,%eax
	addl $4,%eax
	pushl %eax
	call _GET
	addl $4,%esp
	pushl %eax
	call _DBox
	call _dclose
	movl _BNR,%eax
	addl $1100,%eax
	pushl %eax
	call _GET
	pushl %eax
	pushl $0
	pushl $2
	pushl $21
	pushl %ebx
	pushl %esi
	call _FDacc
	addl $40,%esp
	jmp L42
	.align 4,0x90
L40:
	pushl $18
	movl _BNR,%eax
	addl $1024,%eax
	pushl %eax
	call _FlgT
	addl $8,%esp
	testl %eax,%eax
	je L41
	pushl $18
	movl _BNR,%eax
	addl $1024,%eax
	pushl %eax
	call _FlgR
	pushl $1
	jmp L57
	.align 4,0x90
L41:
	pushl $18
	movl _BNR,%eax
	addl $1024,%eax
	pushl %eax
	call _FlgS
	pushl $0
L57:
	pushl $4550
	movl 8(%ebp),%edx
	pushl %edx
	call _MnuCk
	addl $20,%esp
L42:
	pushl %ebx
	call _GRPback
	jmp L2
	.align 4,0x90
L43:
	pushl $0
	pushl $0
	pushl $1
	pushl $20
	pushl %ebx
	pushl %esi
	call _FDacc
	pushl %eax
	movl _BNR,%eax
	addl $1100,%eax
	pushl %eax
	call _PUT
	addl $32,%esp
	pushl $5056
	pushl $_ColSelect
	movl _BNR,%eax
	addl $4,%eax
	pushl %eax
	call _GET
	addl $4,%esp
	pushl %eax
	call _DBox
	movl _BNR,%eax
	addl $1100,%eax
	pushl %eax
	call _GET
	pushl %eax
	pushl $0
	pushl $2
	pushl $20
	jmp L58
	.align 4,0x90
L44:
	pushl $0
	pushl $0
	pushl $1
	pushl $22
	pushl %ebx
	pushl %esi
	call _FDacc
	pushl %eax
	movl _BNR,%eax
	addl $1100,%eax
	pushl %eax
	call _PUT
	addl $32,%esp
	pushl $5056
	pushl $_ColSelect
	movl _BNR,%eax
	addl $4,%eax
	pushl %eax
	call _GET
	addl $4,%esp
	pushl %eax
	call _DBox
	movl _BNR,%eax
	addl $1100,%eax
	pushl %eax
	call _GET
	pushl %eax
	pushl $0
	pushl $2
	pushl $22
	jmp L58
	.align 4,0x90
L45:
	pushl $0
	pushl $0
	pushl $1
	pushl $23
	pushl %ebx
	pushl %esi
	call _FDacc
	pushl %eax
	movl _BNR,%eax
	addl $1100,%eax
	pushl %eax
	call _PUT
	addl $32,%esp
	pushl $5056
	pushl $_ColSelect
	movl _BNR,%eax
	addl $4,%eax
	pushl %eax
	call _GET
	addl $4,%esp
	pushl %eax
	call _DBox
	movl _BNR,%eax
	addl $1100,%eax
	pushl %eax
	call _GET
	pushl %eax
	pushl $0
	pushl $2
	pushl $23
L58:
	pushl %ebx
	pushl %esi
	call _FDacc
	addl $40,%esp
	call _GAMplot
	jmp L2
	.align 4,0x90
L46:
L48:
	movl 20(%ebp),%edx
	pushl %edx
	movl 16(%ebp),%edx
	pushl %edx
	movl 12(%ebp),%edx
	pushl %edx
L55:
	movl 8(%ebp),%edx
	pushl %edx
	call _WinDefWindowProc
	jmp L53
	.align 4,0x90
L2:
	xorl %eax,%eax
L53:
	leal -80(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret

.comm _hab,4
.comm _LDR_AVAIL,4
.comm _BMM,4
.comm _BNR,4
.comm _BST,4
.comm _BBF,4
.comm _MHSTR,4
.comm _DEBUG,4
.comm _TST,4
.comm _DUMPLINE,4
.comm _DUMPCNT,4
.comm _MSGLD,4
.comm _PGM_MODE,4
.comm _SEC,4
.comm _XXX,4
.comm _FLD_XXX,4
.comm _FLD_SEC,4
