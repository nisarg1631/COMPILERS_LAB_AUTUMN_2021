	.file	"ass6_19CS30031_19CS10070_test3.c"

#	Allocation of function variables and temporaries on the stack:

#	main
#	c: -1
#	cPtr: -9
#	n: -13
#	nPtr: -21
#	retChar: -22
#	retCharPtr: -30
#	retInt: -34
#	retIntPtr: -42
#	retStr: -50
#	str: -58
#	t10: -62
#	t11: -70
#	t12: -74
#	t13: -82
#	t14: -86
#	t15: -94
#	t16: -102
#	t17: -106
#	t18: -114
#	t19: -118
#	t2: -126
#	t20: -127
#	t21: -135
#	t22: -143
#	t23: -147
#	t24: -148
#	t25: -156
#	t26: -160
#	t27: -168
#	t28: -172
#	t29: -180
#	t3: -184
#	t30: -188
#	t31: -196
#	t32: -204
#	t33: -208
#	t34: -216
#	t35: -220
#	t36: -228
#	t37: -236
#	t38: -240
#	t39: -248
#	t4: -252
#	t40: -260
#	t41: -264
#	t42: -272
#	t43: -276
#	t44: -284
#	t45: -288
#	t46: -292
#	t47: -300
#	t48: -304
#	t49: -312
#	t5: -320
#	t50: -324
#	t51: -328
#	t52: -336
#	t53: -340
#	t54: -348
#	t55: -352
#	t57: -360
#	t58: -364
#	t59: -368
#	t6: -376
#	t7: -380
#	t8: -384
#	t9: -392
#	printInt
#	n: -4
#	printStr
#	s: -8
#	readInt
#	eP: -8
#	testChar
#	c: -1
#	testCharPtr
#	cPtr: -8
#	testInt
#	num: -4
#	testIntPtr
#	numPtr: -8
#	testVoid
#	t0: -8
#	t1: -12

	.section	.rodata
.LC0:
	.string	"\nHello World, I am a void function. I don't return anything."
.LC1:
	.string	"\n#### TEST 3 (Function calls and returns) ####"
.LC2:
	.string	"\nTesting integer value return: "
.LC3:
	.string	"Passed"
.LC4:
	.string	"Failed"
.LC5:
	.string	"\nTesting integer pointer return: "
.LC6:
	.string	"Passed"
.LC7:
	.string	"Failed"
.LC8:
	.string	"\nTesting character value return: "
.LC9:
	.string	"Passed"
.LC10:
	.string	"Failed"
.LC11:
	.string	"\nTesting character pointer return: "
.LC12:
	.string	"Passed"
.LC13:
	.string	"Failed"
.LC14:
	.string	"Hello World, I am a string."
.LC15:
	.string	"\nTesting string return: "
.LC16:
	.string	"Passed"
.LC17:
	.string	"Failed"
.LC18:
	.string	" [ Passed string: "
.LC19:
	.string	" ], "
.LC20:
	.string	"[ Returned string: "
.LC21:
	.string	" ]"
.LC22:
	.string	"\nTesting void return: "
.LC23:
	.string	"\n\n"
	.text
	.globl  testInt
	.type   testInt, @function
testInt:
.LFB0:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $4, %rsp
	movl    %edi, -4(%rbp)
	movl    -4(%rbp), %eax
.LFE0:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   testInt, .-testInt
	.text
	.globl  testIntPtr
	.type   testIntPtr, @function
testIntPtr:
.LFB1:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $8, %rsp
	movq    %rdi, -8(%rbp)
	movq    -8(%rbp), %rax
.LFE1:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   testIntPtr, .-testIntPtr
	.text
	.globl  testChar
	.type   testChar, @function
testChar:
.LFB2:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $1, %rsp
	movb    %dil, -1(%rbp)
	movb    -1(%rbp), %al
.LFE2:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   testChar, .-testChar
	.text
	.globl  testCharPtr
	.type   testCharPtr, @function
testCharPtr:
.LFB3:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $8, %rsp
	movq    %rdi, -8(%rbp)
	movq    -8(%rbp), %rax
.LFE3:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   testCharPtr, .-testCharPtr
	.text
	.globl  testVoid
	.type   testVoid, @function
testVoid:
.LFB4:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $12, %rsp
	movq    $.LC0, -8(%rbp)
	movq    -8(%rbp), %rdi
	call    printStr
	movl    %eax, -12(%rbp)
.LFE4:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   testVoid, .-testVoid
	.text
	.globl  main
	.type   main, @function
main:
.LFB5:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $392, %rsp
	movq    $.LC1, -126(%rbp)
	movq    -126(%rbp), %rdi
	call    printStr
	movl    %eax, -184(%rbp)
	movl    $10, -252(%rbp)
	movl    -252(%rbp), %eax
	movl    %eax, -13(%rbp)
	leaq    -13(%rbp), %rax
	movq    %rax, -320(%rbp)
	movq    -320(%rbp), %rax
	movq    %rax, -21(%rbp)
	movq    $.LC2, -376(%rbp)
	movq    -376(%rbp), %rdi
	call    printStr
	movl    %eax, -380(%rbp)
	movl    -13(%rbp), %edi
	call    testInt
	movl    %eax, -384(%rbp)
	movl    -384(%rbp), %eax
	movl    %eax, -34(%rbp)
	movl    -13(%rbp), %eax
	cmpl    %eax, -34(%rbp)
	je      .L6
	jmp     .L7
.L6:
	movq    $.LC3, -392(%rbp)
	movq    -392(%rbp), %rdi
	call    printStr
	movl    %eax, -62(%rbp)
	jmp     .L8
.L7:
	movq    $.LC4, -70(%rbp)
	movq    -70(%rbp), %rdi
	call    printStr
	movl    %eax, -74(%rbp)
.L8:
	movq    $.LC5, -82(%rbp)
	movq    -82(%rbp), %rdi
	call    printStr
	movl    %eax, -86(%rbp)
	movq    -21(%rbp), %rdi
	call    testIntPtr
	movq    %rax, -94(%rbp)
	movq    -94(%rbp), %rax
	movq    %rax, -42(%rbp)
	movq    -21(%rbp), %rax
	cmpq    %rax, -42(%rbp)
	je      .L9
	jmp     .L10
.L9:
	movq    $.LC6, -102(%rbp)
	movq    -102(%rbp), %rdi
	call    printStr
	movl    %eax, -106(%rbp)
	jmp     .L11
.L10:
	movq    $.LC7, -114(%rbp)
	movq    -114(%rbp), %rdi
	call    printStr
	movl    %eax, -118(%rbp)
.L11:
	movb    $109, -127(%rbp)
	movb    -127(%rbp), %al
	movb    %al, -1(%rbp)
	leaq    -1(%rbp), %rax
	movq    %rax, -135(%rbp)
	movq    -135(%rbp), %rax
	movq    %rax, -9(%rbp)
	movq    $.LC8, -143(%rbp)
	movq    -143(%rbp), %rdi
	call    printStr
	movl    %eax, -147(%rbp)
	movb    -1(%rbp), %dil
	call    testChar
	movb    %al, -148(%rbp)
	movb    -148(%rbp), %al
	movb    %al, -22(%rbp)
	movb    -1(%rbp), %al
	cmpb    %al, -22(%rbp)
	je      .L12
	jmp     .L13
.L12:
	movq    $.LC9, -156(%rbp)
	movq    -156(%rbp), %rdi
	call    printStr
	movl    %eax, -160(%rbp)
	jmp     .L14
.L13:
	movq    $.LC10, -168(%rbp)
	movq    -168(%rbp), %rdi
	call    printStr
	movl    %eax, -172(%rbp)
.L14:
	movq    $.LC11, -180(%rbp)
	movq    -180(%rbp), %rdi
	call    printStr
	movl    %eax, -188(%rbp)
	movq    -9(%rbp), %rdi
	call    testCharPtr
	movq    %rax, -196(%rbp)
	movq    -196(%rbp), %rax
	movq    %rax, -30(%rbp)
	movq    -9(%rbp), %rax
	cmpq    %rax, -30(%rbp)
	je      .L15
	jmp     .L16
.L15:
	movq    $.LC12, -204(%rbp)
	movq    -204(%rbp), %rdi
	call    printStr
	movl    %eax, -208(%rbp)
	jmp     .L17
.L16:
	movq    $.LC13, -216(%rbp)
	movq    -216(%rbp), %rdi
	call    printStr
	movl    %eax, -220(%rbp)
.L17:
	movq    $.LC14, -228(%rbp)
	movq    -228(%rbp), %rax
	movq    %rax, -58(%rbp)
	movq    $.LC15, -236(%rbp)
	movq    -236(%rbp), %rdi
	call    printStr
	movl    %eax, -240(%rbp)
	movq    -58(%rbp), %rdi
	call    testCharPtr
	movq    %rax, -248(%rbp)
	movq    -248(%rbp), %rax
	movq    %rax, -50(%rbp)
	movq    -58(%rbp), %rax
	cmpq    %rax, -50(%rbp)
	je      .L18
	jmp     .L19
.L18:
	movq    $.LC16, -260(%rbp)
	movq    -260(%rbp), %rdi
	call    printStr
	movl    %eax, -264(%rbp)
	jmp     .L20
.L19:
	movq    $.LC17, -272(%rbp)
	movq    -272(%rbp), %rdi
	call    printStr
	movl    %eax, -276(%rbp)
.L20:
	movq    $.LC18, -284(%rbp)
	movq    -284(%rbp), %rdi
	call    printStr
	movl    %eax, -288(%rbp)
	movq    -58(%rbp), %rdi
	call    printStr
	movl    %eax, -292(%rbp)
	movq    $.LC19, -300(%rbp)
	movq    -300(%rbp), %rdi
	call    printStr
	movl    %eax, -304(%rbp)
	movq    $.LC20, -312(%rbp)
	movq    -312(%rbp), %rdi
	call    printStr
	movl    %eax, -324(%rbp)
	movq    -50(%rbp), %rdi
	call    printStr
	movl    %eax, -328(%rbp)
	movq    $.LC21, -336(%rbp)
	movq    -336(%rbp), %rdi
	call    printStr
	movl    %eax, -340(%rbp)
	movq    $.LC22, -348(%rbp)
	movq    -348(%rbp), %rdi
	call    printStr
	movl    %eax, -352(%rbp)
	call    testVoid
	movq    $.LC23, -360(%rbp)
	movq    -360(%rbp), %rdi
	call    printStr
	movl    %eax, -364(%rbp)
	movl    $0, -368(%rbp)
	movl    -368(%rbp), %eax
.LFE5:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   main, .-main
