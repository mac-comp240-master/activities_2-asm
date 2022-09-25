	.file	"casting.c"
	.text
	.globl	addMult
	.type	addMult, @function
addMult:
.LFB0:
	.cfi_startproc
	addq	%rsi, %rdi
	movslq	%edx, %rax
	imulq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	addMult, .-addMult
	.globl	arith_u
	.type	arith_u, @function
arith_u:
.LFB1:
	.cfi_startproc
	movzbl	%dil, %edi
	salq	$6, %rdi
	movzwl	%si, %esi
	leaq	42(%rdi,%rsi), %rax
	ret
	.cfi_endproc
.LFE1:
	.size	arith_u, .-arith_u
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
