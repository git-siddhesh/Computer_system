	.file	"matrix_mul_int_x86.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d\t"
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, -304(%rbp)
	movl	$3, -152(%rbp)
	movl	-152(%rbp), %r10d
	movl	-152(%rbp), %r11d
	movslq	%r10d, %rax
	subq	$1, %rax
	movq	%rax, -128(%rbp)
	movslq	%r10d, %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movslq	%r10d, %rax
	salq	$2, %rax
	movq	%rax, -296(%rbp)
	movslq	%r11d, %rax
	subq	$1, %rax
	movq	%rax, -120(%rbp)
	movslq	%r10d, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movslq	%r11d, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	movq	%r9, %rdx
	imulq	%rsi, %rdx
	movq	%rdi, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%rsi
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%r10d, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movslq	%r11d, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	%r15, %rdx
	imulq	%r12, %rdx
	movq	%r13, %rax
	imulq	%r14, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r14, %rax
	mulq	%r12
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%r10d, %rdx
	movslq	%r11d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rdx
	movq	%rdx, %rax
	andq	$-4096, %rax
	movq	%rsp, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
.L2:
	cmpq	%rax, %rsp
	je	.L3
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2
.L3:
	movq	%rdx, %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	movq	%rdx, %rax
	andl	$4095, %eax
	testq	%rax, %rax
	je	.L4
	movq	%rdx, %rax
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L4:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -112(%rbp)
	movl	-152(%rbp), %esi
	movl	-152(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -104(%rbp)
	movslq	%esi, %rax
	movq	%rax, -320(%rbp)
	movq	$0, -312(%rbp)
	movslq	%esi, %rax
	leaq	0(,%rax,4), %r9
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	movslq	%esi, %rax
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movslq	%edi, %rax
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	-176(%rbp), %r10
	movq	-168(%rbp), %r11
	movq	%r11, %rdx
	movq	-192(%rbp), %r14
	movq	-184(%rbp), %r15
	imulq	%r14, %rdx
	movq	%r15, %rax
	imulq	%r10, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r10, %rax
	mulq	%r14
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rax
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movslq	%edi, %rax
	movq	%rax, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	-208(%rbp), %r11
	movq	-200(%rbp), %r12
	movq	%r12, %rdx
	movq	-224(%rbp), %r14
	movq	-216(%rbp), %r15
	imulq	%r14, %rdx
	movq	%r15, %rax
	imulq	%r11, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r11, %rax
	mulq	%r14
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rdx
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rdx
	movq	%rdx, %rax
	andq	$-4096, %rax
	movq	%rsp, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
.L5:
	cmpq	%rax, %rsp
	je	.L6
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L5
.L6:
	movq	%rdx, %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	movq	%rdx, %rax
	andl	$4095, %eax
	testq	%rax, %rax
	je	.L7
	movq	%rdx, %rax
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L7:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -88(%rbp)
	movl	-152(%rbp), %esi
	movl	-152(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -80(%rbp)
	movslq	%esi, %rax
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	movslq	%esi, %rax
	leaq	0(,%rax,4), %rbx
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movslq	%esi, %rax
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	movslq	%edi, %rax
	movq	%rax, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	-240(%rbp), %r10
	movq	-232(%rbp), %r11
	movq	%r11, %rdx
	movq	-256(%rbp), %r14
	movq	-248(%rbp), %r15
	imulq	%r14, %rdx
	movq	%r15, %rax
	imulq	%r10, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r10, %rax
	mulq	%r14
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rax
	movq	%rax, -272(%rbp)
	movq	$0, -264(%rbp)
	movslq	%edi, %rax
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	-272(%rbp), %r10
	movq	-264(%rbp), %r11
	movq	%r11, %rdx
	movq	-288(%rbp), %r14
	movq	-280(%rbp), %r15
	imulq	%r14, %rdx
	movq	%r15, %rax
	imulq	%r10, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r10, %rax
	mulq	%r14
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rdx
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rdx
.L8:
	cmpq	%rdx, %rsp
	je	.L9
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L8
.L9:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L10
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L10:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -64(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$0, -140(%rbp)
	jmp	.L11
.L14:
	movl	$0, -144(%rbp)
	jmp	.L12
.L13:
	movq	-296(%rbp), %rdi
	shrq	$2, %rdi
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-112(%rbp), %rax
	movl	-144(%rbp), %edx
	movslq	%edx, %rsi
	movl	-140(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rdi, %rdx
	addq	%rsi, %rdx
	movl	%ecx, (%rax,%rdx,4)
	addl	$1, -144(%rbp)
.L12:
	movl	-144(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L13
	addl	$1, -140(%rbp)
.L11:
	movl	-140(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jl	.L14
	movl	$0, -140(%rbp)
	jmp	.L15
.L18:
	movl	$0, -144(%rbp)
	jmp	.L16
.L17:
	movl	-140(%rbp), %eax
	leal	10(%rax), %edx
	movl	-144(%rbp), %eax
	subl	$10, %eax
	movq	%r9, %rdi
	shrq	$2, %rdi
	imull	%eax, %edx
	movq	-88(%rbp), %rax
	movl	-144(%rbp), %ecx
	movslq	%ecx, %rsi
	movl	-140(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rdi, %rcx
	addq	%rsi, %rcx
	movl	%edx, (%rax,%rcx,4)
	addl	$1, -144(%rbp)
.L16:
	movl	-144(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L17
	addl	$1, -140(%rbp)
.L15:
	movl	-140(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jl	.L18
	movl	$0, -140(%rbp)
	jmp	.L19
.L24:
	movl	$0, -144(%rbp)
	jmp	.L20
.L23:
	movq	%rbx, %rsi
	shrq	$2, %rsi
	movq	-64(%rbp), %rax
	movl	-144(%rbp), %edx
	movslq	%edx, %rcx
	movl	-140(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movl	$0, (%rax,%rdx,4)
	movl	$0, -148(%rbp)
	jmp	.L21
.L22:
	movq	%rbx, %rsi
	shrq	$2, %rsi
	movq	-64(%rbp), %rax
	movl	-144(%rbp), %edx
	movslq	%edx, %rcx
	movl	-140(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-296(%rbp), %rdi
	shrq	$2, %rdi
	movq	-112(%rbp), %rax
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rsi
	movl	-140(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rdi, %rcx
	addq	%rsi, %rcx
	movl	(%rax,%rcx,4), %ecx
	movq	%r9, %r8
	shrq	$2, %r8
	movq	-88(%rbp), %rax
	movl	-144(%rbp), %esi
	movslq	%esi, %rdi
	movl	-148(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%r8, %rsi
	addq	%rdi, %rsi
	movl	(%rax,%rsi,4), %eax
	imull	%ecx, %eax
	movq	%rbx, %rdi
	shrq	$2, %rdi
	leal	(%rdx,%rax), %ecx
	movq	-64(%rbp), %rax
	movl	-144(%rbp), %edx
	movslq	%edx, %rsi
	movl	-140(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rdi, %rdx
	addq	%rsi, %rdx
	movl	%ecx, (%rax,%rdx,4)
	addl	$1, -148(%rbp)
.L21:
	movl	-148(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L22
	addl	$1, -144(%rbp)
.L20:
	movl	-144(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L23
	addl	$1, -140(%rbp)
.L19:
	movl	-140(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jl	.L24
	movl	$0, -140(%rbp)
	jmp	.L25
.L28:
	movl	$0, -144(%rbp)
	jmp	.L26
.L27:
	movq	%rbx, %rsi
	shrq	$2, %rsi
	movq	-64(%rbp), %rax
	movl	-144(%rbp), %edx
	movslq	%edx, %rcx
	movl	-140(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -144(%rbp)
.L26:
	movl	-144(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L27
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -140(%rbp)
.L25:
	movl	-140(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jl	.L28
	movl	$0, %eax
	movq	-304(%rbp), %rsp
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
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
