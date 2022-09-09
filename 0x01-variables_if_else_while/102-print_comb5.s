	.file	"102-print_comb5.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$48, -16(%rbp)
	jmp	.L2
.L14:
	movl	$48, -12(%rbp)
	jmp	.L3
.L13:
	movl	$48, -8(%rbp)
	jmp	.L4
.L12:
	movl	$48, -4(%rbp)
	jmp	.L5
.L11:
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jle	.L6
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.L7
.L6:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L8
.L7:
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
	movl	$32, %edi
	call	putchar@PLT
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	cmpl	$227, %eax
	jne	.L9
	cmpl	$57, -16(%rbp)
	je	.L10
.L9:
	movl	$44, %edi
	call	putchar@PLT
	movl	$32, %edi
	call	putchar@PLT
.L8:
	addl	$1, -4(%rbp)
.L5:
	cmpl	$57, -4(%rbp)
	jle	.L11
.L10:
	addl	$1, -8(%rbp)
.L4:
	cmpl	$57, -8(%rbp)
	jle	.L12
	addl	$1, -12(%rbp)
.L3:
	cmpl	$57, -12(%rbp)
	jle	.L13
	addl	$1, -16(%rbp)
.L2:
	cmpl	$57, -16(%rbp)
	jle	.L14
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
