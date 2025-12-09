	.file	"matManip.c"
	.text
	.section	.rodata
.LC0:
	.string	"    ["
.LC1:
	.string	"A = |"
.LC2:
	.string	"%d "
.LC3:
	.string	"%d]"
.LC4:
	.string	"%d|"
.LC5:
	.string	"B = |"
.LC6:
	.string	"        ["
.LC7:
	.string	"A*B+A = |"
.LC8:
	.string	" %d "
.LC9:
	.string	" %d]"
.LC10:
	.string	" %d|"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	$1, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$3, -56(%rbp)
	movl	$4, -52(%rbp)
	movl	$5, -48(%rbp)
	movl	$6, -44(%rbp)
	movl	$7, -40(%rbp)
	movl	$8, -36(%rbp)
	movl	$9, -32(%rbp)
	movl	$1, -112(%rbp)
	movl	$2, -108(%rbp)
	movl	$0, -104(%rbp)
	movl	$3, -100(%rbp)
	movl	$4, -96(%rbp)
	movl	$5, -92(%rbp)
	movl	$0, -88(%rbp)
	movl	$6, -84(%rbp)
	movl	$7, -80(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matmult
	leaq	-64(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matadd
	movl	$0, -4(%rbp)
	jmp	.L2
.L17:
	cmpl	$1, -4(%rbp)
	je	.L3
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	jmp	.L4
.L3:
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
.L4:
	movl	$0, -8(%rbp)
	jmp	.L5
.L9:
	cmpl	$2, -8(%rbp)
	je	.L6
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-64(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L7
.L6:
	cmpl	$1, -4(%rbp)
	je	.L8
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-64(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	jmp	.L7
.L8:
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-64(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L7:
	addl	$1, -8(%rbp)
.L5:
	cmpl	$2, -8(%rbp)
	jle	.L9
	movl	$9, %edi
	call	putchar
	cmpl	$1, -4(%rbp)
	je	.L10
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	jmp	.L11
.L10:
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L11:
	movl	$0, -12(%rbp)
	jmp	.L12
.L16:
	cmpl	$2, -12(%rbp)
	je	.L13
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-112(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L14
.L13:
	cmpl	$1, -4(%rbp)
	je	.L15
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-112(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	jmp	.L14
.L15:
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-112(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L14:
	addl	$1, -12(%rbp)
.L12:
	cmpl	$2, -12(%rbp)
	jle	.L16
	movl	$10, %edi
	call	putchar
	addl	$1, -4(%rbp)
.L2:
	cmpl	$2, -4(%rbp)
	jle	.L17
	movl	$0, -16(%rbp)
	jmp	.L18
.L29:
	cmpl	$1, -16(%rbp)
	je	.L19
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	jmp	.L20
.L19:
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
.L20:
	movl	$0, -20(%rbp)
	jmp	.L21
.L28:
	cmpl	$2, -20(%rbp)
	je	.L22
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-160(%rbp,%rax,4), %eax
	cmpl	$9, %eax
	jg	.L23
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-160(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	jmp	.L24
.L23:
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-160(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L24
.L22:
	cmpl	$1, -16(%rbp)
	je	.L25
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-160(%rbp,%rax,4), %eax
	cmpl	$9, %eax
	jg	.L26
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-160(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	jmp	.L24
.L26:
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-160(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	jmp	.L24
.L25:
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-160(%rbp,%rax,4), %eax
	cmpl	$9, %eax
	jg	.L27
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-160(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	jmp	.L24
.L27:
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-160(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L24:
	addl	$1, -20(%rbp)
.L21:
	cmpl	$2, -20(%rbp)
	jle	.L28
	movl	$10, %edi
	call	putchar
	addl	$1, -16(%rbp)
.L18:
	cmpl	$2, -16(%rbp)
	jle	.L29
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	matmult
	.type	matmult, @function
matmult:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L32
.L35:
	movl	$0, -8(%rbp)
	jmp	.L33
.L34:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %esi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	imull	%ecx, %esi
	movl	%esi, %edx
	movl	-8(%rbp), %eax
	cltq
	movl	%edx, (%rdi,%rax,4)
	addl	$1, -8(%rbp)
.L33:
	cmpl	$2, -8(%rbp)
	jle	.L34
	addl	$1, -4(%rbp)
.L32:
	cmpl	$2, -4(%rbp)
	jle	.L35
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	matmult, .-matmult
	.globl	matadd
	.type	matadd, @function
matadd:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L37
.L40:
	movl	$0, -8(%rbp)
	jmp	.L38
.L39:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %esi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	addl	%esi, %ecx
	movl	-8(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	addl	$1, -8(%rbp)
.L38:
	cmpl	$2, -8(%rbp)
	jle	.L39
	addl	$1, -4(%rbp)
.L37:
	cmpl	$2, -4(%rbp)
	jle	.L40
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	matadd, .-matadd
	.ident	"GCC: (GNU) 14.2.1 20240801 (Red Hat 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
