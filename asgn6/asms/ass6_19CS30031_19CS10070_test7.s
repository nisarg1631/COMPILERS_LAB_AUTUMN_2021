	.file	"ass6_19CS30031_19CS10070_test7.c"

#	Allocation of function variables and temporaries on the stack:

#	main
#	n1: -4
#	n2: -8
#	t0: -16
#	t1: -20
#	t10: -24
#	t11: -32
#	t12: -36
#	t13: -44
#	t14: -48
#	t15: -56
#	t16: -60
#	t17: -64
#	t18: -68
#	t19: -72
#	t2: -76
#	t20: -84
#	t21: -88
#	t22: -96
#	t23: -100
#	t24: -108
#	t25: -112
#	t26: -116
#	t27: -120
#	t28: -128
#	t29: -132
#	t3: -136
#	t30: -144
#	t31: -148
#	t32: -156
#	t33: -160
#	t34: -168
#	t35: -172
#	t36: -180
#	t37: -184
#	t38: -192
#	t39: -196
#	t4: -204
#	t40: -208
#	t41: -212
#	t42: -220
#	t43: -224
#	t44: -232
#	t45: -236
#	t46: -244
#	t47: -248
#	t48: -252
#	t49: -260
#	t5: -264
#	t50: -268
#	t51: -276
#	t52: -280
#	t53: -288
#	t54: -292
#	t55: -296
#	t56: -304
#	t57: -308
#	t58: -316
#	t59: -320
#	t6: -328
#	t60: -336
#	t61: -340
#	t62: -348
#	t63: -352
#	t64: -360
#	t65: -364
#	t66: -372
#	t67: -376
#	t68: -380
#	t69: -388
#	t7: -392
#	t70: -396
#	t71: -404
#	t72: -408
#	t73: -416
#	t74: -420
#	t75: -428
#	t76: -432
#	t77: -436
#	t8: -444
#	t9: -448
#	printInt
#	n: -4
#	printStr
#	s: -8
#	readInt
#	eP: -8

	.section	.rodata
.LC0:
	.string	"\n#### TEST 7 (Conditional operators) ####\n"
.LC1:
	.string	"\nTesting == operator: "
.LC2:
	.string	"Passed"
.LC3:
	.string	"Failed"
.LC4:
	.string	"\nTesting != operator: "
.LC5:
	.string	"Passed"
.LC6:
	.string	"Failed"
.LC7:
	.string	"\nTesting < operator (strictly less): "
.LC8:
	.string	"Passed"
.LC9:
	.string	"Failed"
.LC10:
	.string	"\nTesting < operator (equality): "
.LC11:
	.string	"Failed"
.LC12:
	.string	"Passed"
.LC13:
	.string	"\nTesting <= operator (equality): "
.LC14:
	.string	"Passed"
.LC15:
	.string	"Failed"
.LC16:
	.string	"\nTesting <= operator (strictly less): "
.LC17:
	.string	"Passed"
.LC18:
	.string	"Failed"
.LC19:
	.string	"\nTesting > operator (strictly greater): "
.LC20:
	.string	"Passed"
.LC21:
	.string	"Failed"
.LC22:
	.string	"\nTesting > operator (equality): "
.LC23:
	.string	"Failed"
.LC24:
	.string	"Passed"
.LC25:
	.string	"\nTesting >= operator (equality): "
.LC26:
	.string	"Passed"
.LC27:
	.string	"Failed"
.LC28:
	.string	"\nTesting >= operator (strictly greater): "
.LC29:
	.string	"Passed"
.LC30:
	.string	"Failed"
.LC31:
	.string	"\n\n"
	.text
	.globl  main
	.type   main, @function
main:
.LFB0:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $448, %rsp
	movq    $.LC0, -16(%rbp)
	movq    -16(%rbp), %rdi
	call    printStr
	movl    %eax, -20(%rbp)
	movl    $5, -76(%rbp)
	movl    -76(%rbp), %eax
	movl    %eax, -4(%rbp)
	movl    $5, -136(%rbp)
	movl    -136(%rbp), %eax
	movl    %eax, -8(%rbp)
	movq    $.LC1, -204(%rbp)
	movq    -204(%rbp), %rdi
	call    printStr
	movl    %eax, -264(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	je      .L1
	jmp     .L2
.L1:
	movq    $.LC2, -328(%rbp)
	movq    -328(%rbp), %rdi
	call    printStr
	movl    %eax, -392(%rbp)
	jmp     .L3
.L2:
	movq    $.LC3, -444(%rbp)
	movq    -444(%rbp), %rdi
	call    printStr
	movl    %eax, -448(%rbp)
.L3:
	movl    $6, -24(%rbp)
	movl    -24(%rbp), %eax
	movl    %eax, -8(%rbp)
	movq    $.LC4, -32(%rbp)
	movq    -32(%rbp), %rdi
	call    printStr
	movl    %eax, -36(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jne     .L4
	jmp     .L5
.L4:
	movq    $.LC5, -44(%rbp)
	movq    -44(%rbp), %rdi
	call    printStr
	movl    %eax, -48(%rbp)
	jmp     .L6
.L5:
	movq    $.LC6, -56(%rbp)
	movq    -56(%rbp), %rdi
	call    printStr
	movl    %eax, -60(%rbp)
.L6:
	movl    $1, -64(%rbp)
	movl    -64(%rbp), %eax
	negl    %eax
	movl    %eax, -68(%rbp)
	movl    -68(%rbp), %eax
	movl    %eax, -4(%rbp)
	movl    $3, -72(%rbp)
	movl    -72(%rbp), %eax
	movl    %eax, -8(%rbp)
	movq    $.LC7, -84(%rbp)
	movq    -84(%rbp), %rdi
	call    printStr
	movl    %eax, -88(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jl      .L7
	jmp     .L8
.L7:
	movq    $.LC8, -96(%rbp)
	movq    -96(%rbp), %rdi
	call    printStr
	movl    %eax, -100(%rbp)
	jmp     .L9
.L8:
	movq    $.LC9, -108(%rbp)
	movq    -108(%rbp), %rdi
	call    printStr
	movl    %eax, -112(%rbp)
.L9:
	movl    $1, -116(%rbp)
	movl    -116(%rbp), %eax
	negl    %eax
	movl    %eax, -120(%rbp)
	movl    -120(%rbp), %eax
	movl    %eax, -8(%rbp)
	movq    $.LC10, -128(%rbp)
	movq    -128(%rbp), %rdi
	call    printStr
	movl    %eax, -132(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jl      .L10
	jmp     .L11
.L10:
	movq    $.LC11, -144(%rbp)
	movq    -144(%rbp), %rdi
	call    printStr
	movl    %eax, -148(%rbp)
	jmp     .L12
.L11:
	movq    $.LC12, -156(%rbp)
	movq    -156(%rbp), %rdi
	call    printStr
	movl    %eax, -160(%rbp)
.L12:
	movq    $.LC13, -168(%rbp)
	movq    -168(%rbp), %rdi
	call    printStr
	movl    %eax, -172(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jle     .L13
	jmp     .L14
.L13:
	movq    $.LC14, -180(%rbp)
	movq    -180(%rbp), %rdi
	call    printStr
	movl    %eax, -184(%rbp)
	jmp     .L15
.L14:
	movq    $.LC15, -192(%rbp)
	movq    -192(%rbp), %rdi
	call    printStr
	movl    %eax, -196(%rbp)
.L15:
	movl    $2, -208(%rbp)
	movl    -208(%rbp), %eax
	negl    %eax
	movl    %eax, -212(%rbp)
	movl    -212(%rbp), %eax
	movl    %eax, -4(%rbp)
	movq    $.LC16, -220(%rbp)
	movq    -220(%rbp), %rdi
	call    printStr
	movl    %eax, -224(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jle     .L16
	jmp     .L17
.L16:
	movq    $.LC17, -232(%rbp)
	movq    -232(%rbp), %rdi
	call    printStr
	movl    %eax, -236(%rbp)
	jmp     .L18
.L17:
	movq    $.LC18, -244(%rbp)
	movq    -244(%rbp), %rdi
	call    printStr
	movl    %eax, -248(%rbp)
.L18:
	movl    $7, -252(%rbp)
	movl    -252(%rbp), %eax
	movl    %eax, -4(%rbp)
	movq    $.LC19, -260(%rbp)
	movq    -260(%rbp), %rdi
	call    printStr
	movl    %eax, -268(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jg      .L19
	jmp     .L20
.L19:
	movq    $.LC20, -276(%rbp)
	movq    -276(%rbp), %rdi
	call    printStr
	movl    %eax, -280(%rbp)
	jmp     .L21
.L20:
	movq    $.LC21, -288(%rbp)
	movq    -288(%rbp), %rdi
	call    printStr
	movl    %eax, -292(%rbp)
.L21:
	movl    $7, -296(%rbp)
	movl    -296(%rbp), %eax
	movl    %eax, -8(%rbp)
	movq    $.LC22, -304(%rbp)
	movq    -304(%rbp), %rdi
	call    printStr
	movl    %eax, -308(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jg      .L22
	jmp     .L23
.L22:
	movq    $.LC23, -316(%rbp)
	movq    -316(%rbp), %rdi
	call    printStr
	movl    %eax, -320(%rbp)
	jmp     .L24
.L23:
	movq    $.LC24, -336(%rbp)
	movq    -336(%rbp), %rdi
	call    printStr
	movl    %eax, -340(%rbp)
.L24:
	movq    $.LC25, -348(%rbp)
	movq    -348(%rbp), %rdi
	call    printStr
	movl    %eax, -352(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jge     .L25
	jmp     .L26
.L25:
	movq    $.LC26, -360(%rbp)
	movq    -360(%rbp), %rdi
	call    printStr
	movl    %eax, -364(%rbp)
	jmp     .L27
.L26:
	movq    $.LC27, -372(%rbp)
	movq    -372(%rbp), %rdi
	call    printStr
	movl    %eax, -376(%rbp)
.L27:
	movl    $8, -380(%rbp)
	movl    -380(%rbp), %eax
	movl    %eax, -4(%rbp)
	movq    $.LC28, -388(%rbp)
	movq    -388(%rbp), %rdi
	call    printStr
	movl    %eax, -396(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jge     .L28
	jmp     .L29
.L28:
	movq    $.LC29, -404(%rbp)
	movq    -404(%rbp), %rdi
	call    printStr
	movl    %eax, -408(%rbp)
	jmp     .L30
.L29:
	movq    $.LC30, -416(%rbp)
	movq    -416(%rbp), %rdi
	call    printStr
	movl    %eax, -420(%rbp)
.L30:
	movq    $.LC31, -428(%rbp)
	movq    -428(%rbp), %rdi
	call    printStr
	movl    %eax, -432(%rbp)
	movl    $0, -436(%rbp)
	movl    -436(%rbp), %eax
.LFE0:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   main, .-main
