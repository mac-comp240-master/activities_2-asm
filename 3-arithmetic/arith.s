	.file	"arith.c"
	.text
	.globl	plus
	.type	plus, @function
plus:
.LFB0:
	.cfi_startproc
	leaq	(%rdi,%rsi), %rax
	ret
	.cfi_endproc
.LFE0:
	.size	plus, .-plus
	.globl	arith
	.type	arith, @function
arith:
.LFB1:
	.cfi_startproc
	leaq	(%rdi,%rsi), %rax
	addq	%rdx, %rax
	leaq	(%rsi,%rsi,2), %rcx
	salq	$4, %rcx
	leaq	4(%rdi,%rcx), %rcx
	imulq	%rcx, %rax
	ret
	.cfi_endproc
.LFE1:
	.size	arith, .-arith
	.globl	m12
	.type	m12, @function
m12:
.LFB2:
	.cfi_startproc
	leaq	(%rdi,%rdi,2), %rax
	salq	$2, %rax
	ret
	.cfi_endproc
.LFE2:
	.size	m12, .-m12
	.globl	scale
	.type	scale, @function
scale:
.LFB3:
	.cfi_startproc
	leaq	4(%rdi,%rsi,8), %rax
	ret
	.cfi_endproc
.LFE3:
	.size	scale, .-scale
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
