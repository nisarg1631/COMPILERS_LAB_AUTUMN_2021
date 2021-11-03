	.file	"ass6_19CS30031_19CS10070_test1.c"

#	Allocation of function variables and temporaries on the stack:

#	main
#	n1: -4
#	n10: -8
#	n11: -12
#	n12: -16
#	n13: -20
#	n2: -24
#	n3: -28
#	n4: -32
#	n5: -36
#	n6: -40
#	n7: -44
#	n8: -48
#	n9: -52
#	t10: -60
#	t100: -68
#	t101: -72
#	t102: -76
#	t103: -84
#	t104: -88
#	t105: -92
#	t107: -100
#	t108: -104
#	t109: -108
#	t11: -112
#	t110: -120
#	t111: -124
#	t112: -128
#	t12: -132
#	t13: -140
#	t14: -144
#	t15: -148
#	t16: -156
#	t17: -160
#	t18: -164
#	t19: -172
#	t20: -176
#	t21: -180
#	t22: -184
#	t23: -188
#	t24: -192
#	t25: -196
#	t26: -200
#	t27: -208
#	t28: -212
#	t29: -216
#	t3: -224
#	t30: -232
#	t31: -236
#	t32: -240
#	t33: -248
#	t34: -252
#	t35: -256
#	t36: -264
#	t37: -268
#	t38: -272
#	t39: -280
#	t4: -284
#	t40: -288
#	t41: -292
#	t42: -296
#	t43: -300
#	t44: -304
#	t45: -308
#	t46: -312
#	t47: -316
#	t48: -320
#	t49: -324
#	t5: -328
#	t50: -332
#	t51: -336
#	t52: -340
#	t53: -344
#	t54: -348
#	t55: -352
#	t56: -356
#	t57: -360
#	t58: -364
#	t59: -368
#	t6: -372
#	t60: -376
#	t61: -380
#	t62: -384
#	t63: -388
#	t64: -396
#	t65: -400
#	t66: -404
#	t67: -412
#	t68: -416
#	t69: -420
#	t7: -424
#	t70: -432
#	t71: -436
#	t72: -440
#	t73: -448
#	t74: -452
#	t75: -456
#	t76: -464
#	t77: -468
#	t78: -472
#	t79: -476
#	t8: -480
#	t80: -488
#	t81: -492
#	t82: -496
#	t83: -500
#	t84: -508
#	t85: -512
#	t87: -520
#	t88: -524
#	t89: -528
#	t9: -532
#	t90: -540
#	t91: -544
#	t92: -548
#	t94: -556
#	t95: -560
#	t96: -564
#	t97: -572
#	t98: -576
#	printInt
#	n: -4
#	printStr
#	s: -8
#	readInt
#	eP: -8
#	testIncDec
#	n: -4
#	t0: -12
#	t1: -16
#	t2: -20

	.section	.rodata
.LC0:
	.string	"Value passed to function = "
.LC1:
	.string	"\n#### TEST 1 (Arithmetic operators) ####"
.LC2:
	.string	"\nn1 = "
.LC3:
	.string	"\nn2 = "
.LC4:
	.string	"\nn3 = "
.LC5:
	.string	"\nn4 = "
.LC6:
	.string	"\nn1 + n2 = "
.LC7:
	.string	"\nn1 - n2 = "
.LC8:
	.string	"\nn1 * n2 = "
.LC9:
	.string	"\nn1 / n2 = "
.LC10:
	.string	"\nn1 % n2 = "
.LC11:
	.string	"\n-n1 + n2 - n3 + n4 + 10 = "
.LC12:
	.string	"\nn1 * n2 / n3 + n4 - 10 = "
.LC13:
	.string	"\nn1 + n2 * n3 / n4 - 0 = "
.LC14:
	.string	"\n(n1 + n2) * (n3 / n4) - 15 = "
.LC15:
	.string	"\n-n3 = "
.LC16:
	.string	"\n-n4 = "
.LC17:
	.string	"\nTest pre increment: "
.LC18:
	.string	", Value after call = "
.LC19:
	.string	"\nTest post increment: "
.LC20:
	.string	", Value after call = "
.LC21:
	.string	"\nTest pre decrement: "
.LC22:
	.string	", Value after call = "
.LC23:
	.string	"\nTest post decrement: "
.LC24:
	.string	", Value after call = "
.LC25:
	.string	"\n\n"
	.text
	.globl  testIncDec
	.type   testIncDec, @function
testIncDec:
.LFB0:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $20, %rsp
	movl    %edi, -4(%rbp)
	movq    $.LC0, -12(%rbp)
	movq    -12(%rbp), %rdi
	call    printStr
	movl    %eax, -16(%rbp)
	movl    -4(%rbp), %edi
	call    printInt
	movl    %eax, -20(%rbp)
.LFE0:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   testIncDec, .-testIncDec
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
	subq    $576, %rsp
	movq    $.LC1, -224(%rbp)
	movq    -224(%rbp), %rdi
	call    printStr
	movl    %eax, -284(%rbp)
	movl    $30, -328(%rbp)
	movl    -328(%rbp), %eax
	movl    %eax, -4(%rbp)
	movl    $16, -372(%rbp)
	movl    -372(%rbp), %eax
	movl    %eax, -24(%rbp)
	movl    $7, -424(%rbp)
	movl    -424(%rbp), %eax
	movl    %eax, -28(%rbp)
	movl    $22, -480(%rbp)
	movl    -480(%rbp), %eax
	negl    %eax
	movl    %eax, -532(%rbp)
	movl    -532(%rbp), %eax
	movl    %eax, -32(%rbp)
	movq    $.LC2, -60(%rbp)
	movq    -60(%rbp), %rdi
	call    printStr
	movl    %eax, -112(%rbp)
	movl    -4(%rbp), %edi
	call    printInt
	movl    %eax, -132(%rbp)
	movq    $.LC3, -140(%rbp)
	movq    -140(%rbp), %rdi
	call    printStr
	movl    %eax, -144(%rbp)
	movl    -24(%rbp), %edi
	call    printInt
	movl    %eax, -148(%rbp)
	movq    $.LC4, -156(%rbp)
	movq    -156(%rbp), %rdi
	call    printStr
	movl    %eax, -160(%rbp)
	movl    -28(%rbp), %edi
	call    printInt
	movl    %eax, -164(%rbp)
	movq    $.LC5, -172(%rbp)
	movq    -172(%rbp), %rdi
	call    printStr
	movl    %eax, -176(%rbp)
	movl    -32(%rbp), %edi
	call    printInt
	movl    %eax, -180(%rbp)
	movl    -4(%rbp), %eax
	addl    -24(%rbp), %eax
	movl    %eax, -184(%rbp)
	movl    -184(%rbp), %eax
	movl    %eax, -36(%rbp)
	movl    -4(%rbp), %eax
	subl    -24(%rbp), %eax
	movl    %eax, -188(%rbp)
	movl    -188(%rbp), %eax
	movl    %eax, -40(%rbp)
	movl    -4(%rbp), %eax
	imull   -24(%rbp), %eax
	movl    %eax, -192(%rbp)
	movl    -192(%rbp), %eax
	movl    %eax, -44(%rbp)
	movl    -4(%rbp), %eax
	cdq     
	idivl   -24(%rbp)
	movl    %eax, -196(%rbp)
	movl    -196(%rbp), %eax
	movl    %eax, -48(%rbp)
	movl    -4(%rbp), %eax
	cdq     
	idivl   -24(%rbp)
	movl    %edx, -200(%rbp)
	movl    -200(%rbp), %eax
	movl    %eax, -52(%rbp)
	movq    $.LC6, -208(%rbp)
	movq    -208(%rbp), %rdi
	call    printStr
	movl    %eax, -212(%rbp)
	movl    -36(%rbp), %edi
	call    printInt
	movl    %eax, -216(%rbp)
	movq    $.LC7, -232(%rbp)
	movq    -232(%rbp), %rdi
	call    printStr
	movl    %eax, -236(%rbp)
	movl    -40(%rbp), %edi
	call    printInt
	movl    %eax, -240(%rbp)
	movq    $.LC8, -248(%rbp)
	movq    -248(%rbp), %rdi
	call    printStr
	movl    %eax, -252(%rbp)
	movl    -44(%rbp), %edi
	call    printInt
	movl    %eax, -256(%rbp)
	movq    $.LC9, -264(%rbp)
	movq    -264(%rbp), %rdi
	call    printStr
	movl    %eax, -268(%rbp)
	movl    -48(%rbp), %edi
	call    printInt
	movl    %eax, -272(%rbp)
	movq    $.LC10, -280(%rbp)
	movq    -280(%rbp), %rdi
	call    printStr
	movl    %eax, -288(%rbp)
	movl    -52(%rbp), %edi
	call    printInt
	movl    %eax, -292(%rbp)
	movl    -4(%rbp), %eax
	negl    %eax
	movl    %eax, -296(%rbp)
	movl    -296(%rbp), %eax
	addl    -24(%rbp), %eax
	movl    %eax, -300(%rbp)
	movl    -300(%rbp), %eax
	subl    -28(%rbp), %eax
	movl    %eax, -304(%rbp)
	movl    -304(%rbp), %eax
	addl    -32(%rbp), %eax
	movl    %eax, -308(%rbp)
	movl    $10, -312(%rbp)
	movl    -308(%rbp), %eax
	addl    -312(%rbp), %eax
	movl    %eax, -316(%rbp)
	movl    -316(%rbp), %eax
	movl    %eax, -8(%rbp)
	movl    -4(%rbp), %eax
	imull   -24(%rbp), %eax
	movl    %eax, -320(%rbp)
	movl    -320(%rbp), %eax
	cdq     
	idivl   -28(%rbp)
	movl    %eax, -324(%rbp)
	movl    -324(%rbp), %eax
	addl    -32(%rbp), %eax
	movl    %eax, -332(%rbp)
	movl    $10, -336(%rbp)
	movl    -332(%rbp), %eax
	subl    -336(%rbp), %eax
	movl    %eax, -340(%rbp)
	movl    -340(%rbp), %eax
	movl    %eax, -12(%rbp)
	movl    -24(%rbp), %eax
	imull   -28(%rbp), %eax
	movl    %eax, -344(%rbp)
	movl    -344(%rbp), %eax
	cdq     
	idivl   -32(%rbp)
	movl    %eax, -348(%rbp)
	movl    -4(%rbp), %eax
	addl    -348(%rbp), %eax
	movl    %eax, -352(%rbp)
	movl    $0, -356(%rbp)
	movl    -352(%rbp), %eax
	subl    -356(%rbp), %eax
	movl    %eax, -360(%rbp)
	movl    -360(%rbp), %eax
	movl    %eax, -16(%rbp)
	movl    -4(%rbp), %eax
	addl    -24(%rbp), %eax
	movl    %eax, -364(%rbp)
	movl    -28(%rbp), %eax
	negl    %eax
	movl    %eax, -368(%rbp)
	movl    -368(%rbp), %eax
	cdq     
	idivl   -32(%rbp)
	movl    %eax, -376(%rbp)
	movl    -364(%rbp), %eax
	imull   -376(%rbp), %eax
	movl    %eax, -380(%rbp)
	movl    $15, -384(%rbp)
	movl    -380(%rbp), %eax
	subl    -384(%rbp), %eax
	movl    %eax, -388(%rbp)
	movl    -388(%rbp), %eax
	movl    %eax, -20(%rbp)
	movq    $.LC11, -396(%rbp)
	movq    -396(%rbp), %rdi
	call    printStr
	movl    %eax, -400(%rbp)
	movl    -8(%rbp), %edi
	call    printInt
	movl    %eax, -404(%rbp)
	movq    $.LC12, -412(%rbp)
	movq    -412(%rbp), %rdi
	call    printStr
	movl    %eax, -416(%rbp)
	movl    -12(%rbp), %edi
	call    printInt
	movl    %eax, -420(%rbp)
	movq    $.LC13, -432(%rbp)
	movq    -432(%rbp), %rdi
	call    printStr
	movl    %eax, -436(%rbp)
	movl    -16(%rbp), %edi
	call    printInt
	movl    %eax, -440(%rbp)
	movq    $.LC14, -448(%rbp)
	movq    -448(%rbp), %rdi
	call    printStr
	movl    %eax, -452(%rbp)
	movl    -20(%rbp), %edi
	call    printInt
	movl    %eax, -456(%rbp)
	movq    $.LC15, -464(%rbp)
	movq    -464(%rbp), %rdi
	call    printStr
	movl    %eax, -468(%rbp)
	movl    -28(%rbp), %eax
	negl    %eax
	movl    %eax, -472(%rbp)
	movl    -472(%rbp), %edi
	call    printInt
	movl    %eax, -476(%rbp)
	movq    $.LC16, -488(%rbp)
	movq    -488(%rbp), %rdi
	call    printStr
	movl    %eax, -492(%rbp)
	movl    -32(%rbp), %eax
	negl    %eax
	movl    %eax, -496(%rbp)
	movl    -496(%rbp), %edi
	call    printInt
	movl    %eax, -500(%rbp)
	movq    $.LC17, -508(%rbp)
	movq    -508(%rbp), %rdi
	call    printStr
	movl    %eax, -512(%rbp)
	incl    -4(%rbp)
	movl    -4(%rbp), %edi
	call    testIncDec
	movq    $.LC18, -520(%rbp)
	movq    -520(%rbp), %rdi
	call    printStr
	movl    %eax, -524(%rbp)
	movl    -4(%rbp), %edi
	call    printInt
	movl    %eax, -528(%rbp)
	movq    $.LC19, -540(%rbp)
	movq    -540(%rbp), %rdi
	call    printStr
	movl    %eax, -544(%rbp)
	movl    -4(%rbp), %eax
	movl    %eax, -548(%rbp)
	incl    -4(%rbp)
	movl    -548(%rbp), %edi
	call    testIncDec
	movq    $.LC20, -556(%rbp)
	movq    -556(%rbp), %rdi
	call    printStr
	movl    %eax, -560(%rbp)
	movl    -4(%rbp), %edi
	call    printInt
	movl    %eax, -564(%rbp)
	movq    $.LC21, -572(%rbp)
	movq    -572(%rbp), %rdi
	call    printStr
	movl    %eax, -576(%rbp)
	decl    -4(%rbp)
	movl    -4(%rbp), %edi
	call    testIncDec
	movq    $.LC22, -68(%rbp)
	movq    -68(%rbp), %rdi
	call    printStr
	movl    %eax, -72(%rbp)
	movl    -4(%rbp), %edi
	call    printInt
	movl    %eax, -76(%rbp)
	movq    $.LC23, -84(%rbp)
	movq    -84(%rbp), %rdi
	call    printStr
	movl    %eax, -88(%rbp)
	movl    -4(%rbp), %eax
	movl    %eax, -92(%rbp)
	decl    -4(%rbp)
	movl    -92(%rbp), %edi
	call    testIncDec
	movq    $.LC24, -100(%rbp)
	movq    -100(%rbp), %rdi
	call    printStr
	movl    %eax, -104(%rbp)
	movl    -4(%rbp), %edi
	call    printInt
	movl    %eax, -108(%rbp)
	movq    $.LC25, -120(%rbp)
	movq    -120(%rbp), %rdi
	call    printStr
	movl    %eax, -124(%rbp)
	movl    $0, -128(%rbp)
	movl    -128(%rbp), %eax
.LFE1:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   main, .-main
