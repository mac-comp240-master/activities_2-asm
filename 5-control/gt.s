	.file	"gt.c"
	.text
	.globl	gt
	.type	gt, @function
gt:
.LFB0:
	.cfi_startproc
	cmpq	%rsi, %rdi
	setg	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	gt, .-gt
	.globl	zero
	.type	zero, @function
zero:
.LFB1:
	.cfi_startproc
	testq	%rdi, %rdi
	sete	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	zero, .-zero
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
