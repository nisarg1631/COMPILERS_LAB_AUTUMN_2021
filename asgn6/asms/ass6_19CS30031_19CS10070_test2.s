	.file	"ass6_19CS30031_19CS10070_test2.c"

#	Allocation of function variables and temporaries on the stack:

#	fillFib
#	fib: -8
#	i: -16
#	n: -12
#	t0: -20
#	t1: -24
#	t10: -28
#	t11: -32
#	t12: -36
#	t13: -40
#	t14: -44
#	t15: -48
#	t16: -52
#	t17: -56
#	t2: -60
#	t3: -64
#	t4: -68
#	t5: -72
#	t6: -76
#	t7: -80
#	t8: -84
#	t9: -88
#	main
#	fib: -60
#	i: -64
#	t18: -72
#	t19: -76
#	t20: -80
#	t21: -84
#	t23: -92
#	t24: -96
#	t25: -100
#	t26: -104
#	t27: -108
#	t28: -112
#	t29: -116
#	t30: -120
#	t31: -128
#	t32: -132
#	t33: -136
#	t34: -140
#	t35: -144
#	t36: -145
#	t37: -149
#	t38: -153
#	t39: -154
#	t40: -158
#	t41: -162
#	t42: -163
#	t43: -167
#	t44: -171
#	t45: -172
#	t46: -176
#	t47: -180
#	t48: -181
#	t49: -189
#	t50: -193
#	t51: -197
#	t52: -201
#	t53: -205
#	t54: -209
#	t55: -210
#	t56: -214
#	t57: -222
#	t58: -226
#	t59: -234
#	t60: -238
#	t61: -242
#	vowels: -247
#	printInt
#	n: -4
#	printStr
#	s: -8
#	readInt
#	eP: -8

	.section	.rodata
.LC0:
	.string	"\n#### TEST 2 (1-D Arrays) ####"
.LC1:
	.string	"\nFibonacci Series: "
.LC2:
	.string	" "
.LC3:
	.string	"\nAscii values of vowels: "
.LC4:
	.string	" "
.LC5:
	.string	"\n\n"
	.text
	.globl  fillFib
	.type   fillFib, @function
fillFib:
.LFB0:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $88, %rsp
	movq    %rdi, -8(%rbp)
	movl    %esi, -12(%rbp)
	movl    $0, -20(%rbp)
	movl    -20(%rbp), %eax
	movl    %eax, -16(%rbp)
.L3:
	movl    -12(%rbp), %eax
	cmpl    %eax, -16(%rbp)
	jl      .L2
	jmp     .LFE0
.L6:
	movl    -16(%rbp), %eax
	movl    %eax, -24(%rbp)
	incl    -16(%rbp)
	jmp     .L3
.L2:
	movl    $0, -60(%rbp)
	movl    -60(%rbp), %eax
	cmpl    %eax, -16(%rbp)
	je      .L4
	jmp     .L5
.L4:
	movl    -16(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -64(%rbp)
	movl    $0, -68(%rbp)
	movl    -64(%rbp), %eax
	cltq    
	addq    -8(%rbp), %rax
	movl    -68(%rbp), %ebx
	movl    %ebx, (%rax)
	jmp     .L6
.L5:
	movl    $1, -72(%rbp)
	movl    -72(%rbp), %eax
	cmpl    %eax, -16(%rbp)
	je      .L7
	jmp     .L8
.L7:
	movl    -16(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -76(%rbp)
	movl    $1, -80(%rbp)
	movl    -76(%rbp), %eax
	cltq    
	addq    -8(%rbp), %rax
	movl    -80(%rbp), %ebx
	movl    %ebx, (%rax)
	jmp     .L6
.L8:
	movl    -16(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -84(%rbp)
	movl    $1, -88(%rbp)
	movl    -16(%rbp), %eax
	subl    -88(%rbp), %eax
	movl    %eax, -28(%rbp)
	movl    -28(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -32(%rbp)
	movl    -32(%rbp), %eax
	cltq    
	addq    -8(%rbp), %rax
	movl    (%rax), %eax
	movl    %eax, -36(%rbp)
	movl    $2, -40(%rbp)
	movl    -16(%rbp), %eax
	subl    -40(%rbp), %eax
	movl    %eax, -44(%rbp)
	movl    -44(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -48(%rbp)
	movl    -48(%rbp), %eax
	cltq    
	addq    -8(%rbp), %rax
	movl    (%rax), %eax
	movl    %eax, -52(%rbp)
	movl    -36(%rbp), %eax
	addl    -52(%rbp), %eax
	movl    %eax, -56(%rbp)
	movl    -84(%rbp), %eax
	cltq    
	addq    -8(%rbp), %rax
	movl    -56(%rbp), %ebx
	movl    %ebx, (%rax)
	jmp     .L6
.LFE0:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   fillFib, .-fillFib
	.text
	.globl  main
	.type   main, @function
main:
.LFB1:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $247, %rsp
	movq    $.LC0, -72(%rbp)
	movq    -72(%rbp), %rdi
	call    printStr
	movl    %eax, -76(%rbp)
	movl    $15, -80(%rbp)
	movl    $15, -84(%rbp)
	movl    -84(%rbp), %esi
	leaq    -60(%rbp), %rdi
	call    fillFib
	movq    $.LC1, -92(%rbp)
	movq    -92(%rbp), %rdi
	call    printStr
	movl    %eax, -96(%rbp)
	movl    $0, -100(%rbp)
	movl    -100(%rbp), %eax
	movl    %eax, -64(%rbp)
.L11:
	movl    $15, -104(%rbp)
	movl    -104(%rbp), %eax
	cmpl    %eax, -64(%rbp)
	jl      .L9
	jmp     .L10
.L12:
	movl    -64(%rbp), %eax
	movl    %eax, -108(%rbp)
	incl    -64(%rbp)
	jmp     .L11
.L9:
	movl    -64(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -112(%rbp)
	movl    -112(%rbp), %eax
	cltq    
	movl    -60(%rbp, %rax, 1), %eax
	movl    %eax, -116(%rbp)
	movl    -116(%rbp), %edi
	call    printInt
	movl    %eax, -120(%rbp)
	movq    $.LC2, -128(%rbp)
	movq    -128(%rbp), %rdi
	call    printStr
	movl    %eax, -132(%rbp)
	jmp     .L12
.L10:
	movl    $5, -136(%rbp)
	movl    $0, -140(%rbp)
	movl    -140(%rbp), %eax
	imull   $1, %eax
	movl    %eax, -144(%rbp)
	movb    $97, -145(%rbp)
	movl    -144(%rbp), %eax
	cltq    
	movl    -145(%rbp), %ebx
	movl    %ebx, -247(%rbp, %rax, 1)
	movl    $1, -149(%rbp)
	movl    -149(%rbp), %eax
	imull   $1, %eax
	movl    %eax, -153(%rbp)
	movb    $101, -154(%rbp)
	movl    -153(%rbp), %eax
	cltq    
	movl    -154(%rbp), %ebx
	movl    %ebx, -247(%rbp, %rax, 1)
	movl    $2, -158(%rbp)
	movl    -158(%rbp), %eax
	imull   $1, %eax
	movl    %eax, -162(%rbp)
	movb    $105, -163(%rbp)
	movl    -162(%rbp), %eax
	cltq    
	movl    -163(%rbp), %ebx
	movl    %ebx, -247(%rbp, %rax, 1)
	movl    $3, -167(%rbp)
	movl    -167(%rbp), %eax
	imull   $1, %eax
	movl    %eax, -171(%rbp)
	movb    $111, -172(%rbp)
	movl    -171(%rbp), %eax
	cltq    
	movl    -172(%rbp), %ebx
	movl    %ebx, -247(%rbp, %rax, 1)
	movl    $4, -176(%rbp)
	movl    -176(%rbp), %eax
	imull   $1, %eax
	movl    %eax, -180(%rbp)
	movb    $117, -181(%rbp)
	movl    -180(%rbp), %eax
	cltq    
	movl    -181(%rbp), %ebx
	movl    %ebx, -247(%rbp, %rax, 1)
	movq    $.LC3, -189(%rbp)
	movq    -189(%rbp), %rdi
	call    printStr
	movl    %eax, -193(%rbp)
	movl    $0, -197(%rbp)
	movl    -197(%rbp), %eax
	movl    %eax, -64(%rbp)
.L15:
	movl    $5, -201(%rbp)
	movl    -201(%rbp), %eax
	cmpl    %eax, -64(%rbp)
	jl      .L13
	jmp     .L14
.L16:
	movl    -64(%rbp), %eax
	movl    %eax, -205(%rbp)
	incl    -64(%rbp)
	jmp     .L15
.L13:
	movl    -64(%rbp), %eax
	imull   $1, %eax
	movl    %eax, -209(%rbp)
	movl    -209(%rbp), %eax
	cltq    
	movl    -247(%rbp, %rax, 1), %eax
	movl    %eax, -210(%rbp)
	movb    -210(%rbp), %dil
	call    printInt
	movl    %eax, -214(%rbp)
	movq    $.LC4, -222(%rbp)
	movq    -222(%rbp), %rdi
	call    printStr
	movl    %eax, -226(%rbp)
	jmp     .L16
.L14:
	movq    $.LC5, -234(%rbp)
	movq    -234(%rbp), %rdi
	call    printStr
	movl    %eax, -238(%rbp)
	movl    $0, -242(%rbp)
	movl    -242(%rbp), %eax
.LFE1:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   main, .-main
