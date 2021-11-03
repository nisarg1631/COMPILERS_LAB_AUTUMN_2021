	.file	"ass6_19CS30031_19CS10070_test5.c"

#	Allocation of function variables and temporaries on the stack:

#	main
#	ep: -4
#	i: -8
#	iters: -12
#	j: -16
#	n: -20
#	pow2: -24
#	t0: -32
#	t1: -36
#	t10: -40
#	t11: -44
#	t12: -48
#	t13: -52
#	t14: -56
#	t15: -60
#	t16: -64
#	t17: -68
#	t18: -72
#	t19: -76
#	t2: -84
#	t20: -88
#	t21: -92
#	t22: -96
#	t23: -100
#	t24: -104
#	t25: -108
#	t26: -112
#	t27: -116
#	t28: -120
#	t29: -124
#	t3: -128
#	t30: -132
#	t31: -136
#	t32: -140
#	t33: -144
#	t34: -148
#	t35: -156
#	t36: -160
#	t37: -168
#	t38: -172
#	t39: -180
#	t4: -188
#	t40: -192
#	t41: -196
#	t42: -204
#	t43: -208
#	t44: -212
#	t45: -216
#	t46: -224
#	t47: -228
#	t48: -232
#	t49: -236
#	t5: -240
#	t50: -248
#	t51: -252
#	t52: -256
#	t53: -264
#	t54: -268
#	t55: -272
#	t56: -280
#	t57: -284
#	t58: -292
#	t59: -296
#	t6: -300
#	t60: -304
#	t61: -312
#	t62: -316
#	t63: -320
#	t64: -328
#	t65: -332
#	t66: -336
#	t67: -344
#	t68: -348
#	t69: -352
#	t7: -356
#	t70: -364
#	t71: -368
#	t72: -372
#	t8: -376
#	t9: -380
#	x1: -384
#	x2: -388
#	y1: -392
#	y2: -396
#	max
#	num1: -4
#	num2: -8
#	printInt
#	n: -4
#	printStr
#	s: -8
#	readInt
#	eP: -8

	.section	.rodata
.LC0:
	.string	"\n#### TEST 5 (Loops) ####\n"
.LC1:
	.string	"\nPattern printing using FOR loop:"
.LC2:
	.string	"\n\n"
.LC3:
	.string	" "
.LC4:
	.string	"\n"
.LC5:
	.string	"\n"
.LC6:
	.string	"\nPowers of 2 using WHILE loop: "
.LC7:
	.string	" "
.LC8:
	.string	"\n\n"
.LC9:
	.string	"\nTesting DO-WHILE loop:"
.LC10:
	.string	"\nEntered do-while loop. Enter number of times you wish to run the loop after this: "
.LC11:
	.string	"\nInvalid input. Exiting...\n\n"
.LC12:
	.string	"\nIteration "
.LC13:
	.string	"\n"
.LC14:
	.string	"\n\n"
	.text
	.globl  max
	.type   max, @function
max:
.LFB0:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $8, %rsp
	movl    %edi, -4(%rbp)
	movl    %esi, -8(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jg      .L2
	jmp     .L3
.L2:
	movl    -4(%rbp), %eax
	jmp     .LFE0
	jmp     .LFE0
.L3:
	movl    -8(%rbp), %eax
.LFE0:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   max, .-max
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
	subq    $396, %rsp
	movq    $.LC0, -32(%rbp)
	movq    -32(%rbp), %rdi
	call    printStr
	movl    %eax, -36(%rbp)
	movq    $.LC1, -84(%rbp)
	movq    -84(%rbp), %rdi
	call    printStr
	movl    %eax, -128(%rbp)
	movq    $.LC2, -188(%rbp)
	movq    -188(%rbp), %rdi
	call    printStr
	movl    %eax, -240(%rbp)
	movl    $9, -300(%rbp)
	movl    -300(%rbp), %eax
	movl    %eax, -20(%rbp)
	movl    $1, -356(%rbp)
	movl    -356(%rbp), %eax
	movl    %eax, -8(%rbp)
.L6:
	movl    $2, -376(%rbp)
	movl    -376(%rbp), %eax
	imull   -20(%rbp), %eax
	movl    %eax, -380(%rbp)
	movl    $1, -40(%rbp)
	movl    -380(%rbp), %eax
	subl    -40(%rbp), %eax
	movl    %eax, -44(%rbp)
	movl    -44(%rbp), %eax
	cmpl    %eax, -8(%rbp)
	jle     .L4
	jmp     .L5
.L11:
	movl    -8(%rbp), %eax
	movl    %eax, -48(%rbp)
	incl    -8(%rbp)
	jmp     .L6
.L4:
	movl    $1, -52(%rbp)
	movl    -20(%rbp), %eax
	addl    -52(%rbp), %eax
	movl    %eax, -56(%rbp)
	movl    -56(%rbp), %eax
	subl    -8(%rbp), %eax
	movl    %eax, -60(%rbp)
	movl    -60(%rbp), %eax
	movl    %eax, -384(%rbp)
	movl    -8(%rbp), %eax
	subl    -20(%rbp), %eax
	movl    %eax, -64(%rbp)
	movl    $1, -68(%rbp)
	movl    -64(%rbp), %eax
	addl    -68(%rbp), %eax
	movl    %eax, -72(%rbp)
	movl    -72(%rbp), %eax
	movl    %eax, -388(%rbp)
	movl    $1, -76(%rbp)
	movl    -76(%rbp), %eax
	movl    %eax, -16(%rbp)
.L9:
	movl    $2, -88(%rbp)
	movl    -88(%rbp), %eax
	imull   -20(%rbp), %eax
	movl    %eax, -92(%rbp)
	movl    $1, -96(%rbp)
	movl    -92(%rbp), %eax
	subl    -96(%rbp), %eax
	movl    %eax, -100(%rbp)
	movl    -100(%rbp), %eax
	cmpl    %eax, -16(%rbp)
	jle     .L7
	jmp     .L8
.L10:
	movl    -16(%rbp), %eax
	movl    %eax, -104(%rbp)
	incl    -16(%rbp)
	jmp     .L9
.L7:
	movl    $1, -108(%rbp)
	movl    -20(%rbp), %eax
	addl    -108(%rbp), %eax
	movl    %eax, -112(%rbp)
	movl    -112(%rbp), %eax
	subl    -16(%rbp), %eax
	movl    %eax, -116(%rbp)
	movl    -116(%rbp), %eax
	movl    %eax, -392(%rbp)
	movl    -16(%rbp), %eax
	subl    -20(%rbp), %eax
	movl    %eax, -120(%rbp)
	movl    $1, -124(%rbp)
	movl    -120(%rbp), %eax
	addl    -124(%rbp), %eax
	movl    %eax, -132(%rbp)
	movl    -132(%rbp), %eax
	movl    %eax, -396(%rbp)
	movl    -388(%rbp), %esi
	movl    -384(%rbp), %edi
	call    max
	movl    %eax, -136(%rbp)
	movl    -396(%rbp), %esi
	movl    -392(%rbp), %edi
	call    max
	movl    %eax, -140(%rbp)
	movl    -140(%rbp), %esi
	movl    -136(%rbp), %edi
	call    max
	movl    %eax, -144(%rbp)
	movl    -144(%rbp), %edi
	call    printInt
	movl    %eax, -148(%rbp)
	movq    $.LC3, -156(%rbp)
	movq    -156(%rbp), %rdi
	call    printStr
	movl    %eax, -160(%rbp)
	jmp     .L10
.L8:
	movq    $.LC4, -168(%rbp)
	movq    -168(%rbp), %rdi
	call    printStr
	movl    %eax, -172(%rbp)
	jmp     .L11
.L5:
	movq    $.LC5, -180(%rbp)
	movq    -180(%rbp), %rdi
	call    printStr
	movl    %eax, -192(%rbp)
	movl    $1, -196(%rbp)
	movl    -196(%rbp), %eax
	movl    %eax, -24(%rbp)
	movq    $.LC6, -204(%rbp)
	movq    -204(%rbp), %rdi
	call    printStr
	movl    %eax, -208(%rbp)
.L14:
	movl    $1024, -212(%rbp)
	movl    -212(%rbp), %eax
	cmpl    %eax, -24(%rbp)
	jle     .L12
	jmp     .L13
.L12:
	movl    -24(%rbp), %edi
	call    printInt
	movl    %eax, -216(%rbp)
	movq    $.LC7, -224(%rbp)
	movq    -224(%rbp), %rdi
	call    printStr
	movl    %eax, -228(%rbp)
	movl    $2, -232(%rbp)
	movl    -24(%rbp), %eax
	imull   -232(%rbp), %eax
	movl    %eax, -236(%rbp)
	movl    -236(%rbp), %eax
	movl    %eax, -24(%rbp)
	jmp     .L14
.L13:
	movq    $.LC8, -248(%rbp)
	movq    -248(%rbp), %rdi
	call    printStr
	movl    %eax, -252(%rbp)
	movl    $0, -256(%rbp)
	movl    -256(%rbp), %eax
	movl    %eax, -8(%rbp)
	movq    $.LC9, -264(%rbp)
	movq    -264(%rbp), %rdi
	call    printStr
	movl    %eax, -268(%rbp)
.L19:
	movl    $0, -272(%rbp)
	movl    -272(%rbp), %eax
	cmpl    %eax, -8(%rbp)
	je      .L15
	jmp     .L16
.L15:
	movq    $.LC10, -280(%rbp)
	movq    -280(%rbp), %rdi
	call    printStr
	movl    %eax, -284(%rbp)
	leaq    -4(%rbp), %rax
	movq    %rax, -292(%rbp)
	movq    -292(%rbp), %rdi
	call    readInt
	movl    %eax, -296(%rbp)
	movl    -296(%rbp), %eax
	movl    %eax, -12(%rbp)
	movl    $0, -304(%rbp)
	movl    -304(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jne     .L17
	jmp     .L18
.L17:
	movq    $.LC11, -312(%rbp)
	movq    -312(%rbp), %rdi
	call    printStr
	movl    %eax, -316(%rbp)
	movl    $0, -320(%rbp)
	movl    -320(%rbp), %eax
	jmp     .LFE1
	jmp     .L18
	jmp     .L18
.L16:
	movq    $.LC12, -328(%rbp)
	movq    -328(%rbp), %rdi
	call    printStr
	movl    %eax, -332(%rbp)
	movl    -8(%rbp), %edi
	call    printInt
	movl    %eax, -336(%rbp)
	movq    $.LC13, -344(%rbp)
	movq    -344(%rbp), %rdi
	call    printStr
	movl    %eax, -348(%rbp)
.L18:
	movl    -8(%rbp), %eax
	movl    %eax, -352(%rbp)
	incl    -8(%rbp)
	movl    -12(%rbp), %eax
	cmpl    %eax, -352(%rbp)
	jl      .L19
	jmp     .L20
.L20:
	movq    $.LC14, -364(%rbp)
	movq    -364(%rbp), %rdi
	call    printStr
	movl    %eax, -368(%rbp)
	movl    $0, -372(%rbp)
	movl    -372(%rbp), %eax
.LFE1:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   main, .-main
