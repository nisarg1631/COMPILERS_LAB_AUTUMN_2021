	.file	"ass6_19CS30031_19CS10070_test6.c"

#	Allocation of function variables and temporaries on the stack:

#	fibNum
#	n: -4
#	t10: -8
#	t11: -12
#	t12: -16
#	t13: -20
#	t14: -24
#	t15: -28
#	t16: -32
#	t17: -36
#	t18: -40
#	t8: -44
#	t9: -48
#	main
#	end: -4
#	ep: -8
#	n: -12
#	start: -16
#	t19: -24
#	t20: -28
#	t21: -36
#	t22: -40
#	t23: -48
#	t24: -52
#	t25: -56
#	t26: -64
#	t27: -68
#	t28: -72
#	t29: -80
#	t30: -84
#	t31: -92
#	t32: -96
#	t33: -100
#	t34: -108
#	t35: -112
#	t36: -116
#	t37: -124
#	t38: -128
#	t39: -132
#	t40: -140
#	t41: -144
#	t42: -148
#	t43: -156
#	t44: -160
#	t45: -164
#	t46: -172
#	t47: -176
#	t49: -184
#	t50: -188
#	t51: -196
#	t52: -200
#	t53: -204
#	t54: -212
#	t55: -216
#	t56: -220
#	t57: -224
#	t58: -232
#	t59: -236
#	t60: -240
#	t61: -248
#	t62: -252
#	t63: -256
#	t64: -264
#	t65: -268
#	t66: -272
#	t67: -276
#	t68: -284
#	t69: -288
#	t70: -292
#	printInt
#	n: -4
#	printNums
#	curr: -4
#	t0: -12
#	t1: -20
#	t2: -24
#	t3: -32
#	t4: -36
#	t5: -40
#	t6: -44
#	till: -8
#	printStr
#	s: -8
#	readInt
#	eP: -8

	.section	.rodata
.LC0:
	.string	"\n"
.LC1:
	.string	" "
.LC2:
	.string	"\n#### TEST 6 (Recursive function calls) ####"
.LC3:
	.string	"\nEnter start: "
.LC4:
	.string	"Invalid start\n"
.LC5:
	.string	"Enter end: "
.LC6:
	.string	"Invalid end\n"
.LC7:
	.string	"Invalid range\n"
.LC8:
	.string	"Numbers from "
.LC9:
	.string	" to "
.LC10:
	.string	" are: "
.LC11:
	.string	"\n\nEnter value of n (<40) to find the nth fibonacci number: "
.LC12:
	.string	"Invalid n\n\n"
.LC13:
	.string	"n should be less than 40\n\n"
.LC14:
	.string	"\nfib("
.LC15:
	.string	") = "
.LC16:
	.string	"\n\n"
	.text
	.globl  printNums
	.type   printNums, @function
printNums:
.LFB0:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $44, %rsp
	movl    %edi, -4(%rbp)
	movl    %esi, -8(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jg      .L3
	jmp     .L4
.L3:
	jmp     .LFE0
	jmp     .L4
.L4:
	movl    -4(%rbp), %edi
	call    printInt
	movl    %eax, -12(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	je      .L5
	jmp     .L6
.L5:
	movq    $.LC0, -20(%rbp)
	movq    -20(%rbp), %rdi
	call    printStr
	movl    %eax, -24(%rbp)
	jmp     .LFE0
.L6:
	movq    $.LC1, -32(%rbp)
	movq    -32(%rbp), %rdi
	call    printStr
	movl    %eax, -36(%rbp)
	movl    $1, -40(%rbp)
	movl    -4(%rbp), %eax
	addl    -40(%rbp), %eax
	movl    %eax, -44(%rbp)
	movl    -8(%rbp), %esi
	movl    -44(%rbp), %edi
	call    printNums
.LFE0:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   printNums, .-printNums
	.text
	.globl  fibNum
	.type   fibNum, @function
fibNum:
.LFB1:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $48, %rsp
	movl    %edi, -4(%rbp)
	movl    $0, -44(%rbp)
	movl    -44(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	je      .L7
	jmp     .L8
.L7:
	movl    $0, -48(%rbp)
	movl    -48(%rbp), %eax
	jmp     .LFE1
	jmp     .LFE1
.L8:
	movl    $1, -8(%rbp)
	movl    -8(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	je      .L9
	jmp     .L10
.L9:
	movl    $1, -12(%rbp)
	movl    -12(%rbp), %eax
	jmp     .LFE1
	jmp     .LFE1
.L10:
	movl    $1, -16(%rbp)
	movl    -4(%rbp), %eax
	subl    -16(%rbp), %eax
	movl    %eax, -20(%rbp)
	movl    -20(%rbp), %edi
	call    fibNum
	movl    %eax, -24(%rbp)
	movl    $2, -28(%rbp)
	movl    -4(%rbp), %eax
	subl    -28(%rbp), %eax
	movl    %eax, -32(%rbp)
	movl    -32(%rbp), %edi
	call    fibNum
	movl    %eax, -36(%rbp)
	movl    -24(%rbp), %eax
	addl    -36(%rbp), %eax
	movl    %eax, -40(%rbp)
	movl    -40(%rbp), %eax
.LFE1:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   fibNum, .-fibNum
	.text
	.globl  main
	.type   main, @function
main:
.LFB2:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $292, %rsp
	movq    $.LC2, -24(%rbp)
	movq    -24(%rbp), %rdi
	call    printStr
	movl    %eax, -28(%rbp)
	movq    $.LC3, -36(%rbp)
	movq    -36(%rbp), %rdi
	call    printStr
	movl    %eax, -40(%rbp)
	leaq    -8(%rbp), %rax
	movq    %rax, -48(%rbp)
	movq    -48(%rbp), %rdi
	call    readInt
	movl    %eax, -52(%rbp)
	movl    -52(%rbp), %eax
	movl    %eax, -16(%rbp)
	movl    $0, -56(%rbp)
	movl    -56(%rbp), %eax
	cmpl    %eax, -8(%rbp)
	jne     .L11
	jmp     .L12
.L11:
	movq    $.LC4, -64(%rbp)
	movq    -64(%rbp), %rdi
	call    printStr
	movl    %eax, -68(%rbp)
	movl    $0, -72(%rbp)
	movl    -72(%rbp), %eax
	jmp     .LFE2
	jmp     .L12
.L12:
	movq    $.LC5, -80(%rbp)
	movq    -80(%rbp), %rdi
	call    printStr
	movl    %eax, -84(%rbp)
	leaq    -8(%rbp), %rax
	movq    %rax, -92(%rbp)
	movq    -92(%rbp), %rdi
	call    readInt
	movl    %eax, -96(%rbp)
	movl    -96(%rbp), %eax
	movl    %eax, -4(%rbp)
	movl    $0, -100(%rbp)
	movl    -100(%rbp), %eax
	cmpl    %eax, -8(%rbp)
	jne     .L13
	jmp     .L14
.L13:
	movq    $.LC6, -108(%rbp)
	movq    -108(%rbp), %rdi
	call    printStr
	movl    %eax, -112(%rbp)
	movl    $0, -116(%rbp)
	movl    -116(%rbp), %eax
	jmp     .LFE2
	jmp     .L14
.L14:
	movl    -4(%rbp), %eax
	cmpl    %eax, -16(%rbp)
	jg      .L15
	jmp     .L16
.L15:
	movq    $.LC7, -124(%rbp)
	movq    -124(%rbp), %rdi
	call    printStr
	movl    %eax, -128(%rbp)
	movl    $0, -132(%rbp)
	movl    -132(%rbp), %eax
	jmp     .LFE2
	jmp     .L16
.L16:
	movq    $.LC8, -140(%rbp)
	movq    -140(%rbp), %rdi
	call    printStr
	movl    %eax, -144(%rbp)
	movl    -16(%rbp), %edi
	call    printInt
	movl    %eax, -148(%rbp)
	movq    $.LC9, -156(%rbp)
	movq    -156(%rbp), %rdi
	call    printStr
	movl    %eax, -160(%rbp)
	movl    -4(%rbp), %edi
	call    printInt
	movl    %eax, -164(%rbp)
	movq    $.LC10, -172(%rbp)
	movq    -172(%rbp), %rdi
	call    printStr
	movl    %eax, -176(%rbp)
	movl    -4(%rbp), %esi
	movl    -16(%rbp), %edi
	call    printNums
	movq    $.LC11, -184(%rbp)
	movq    -184(%rbp), %rdi
	call    printStr
	movl    %eax, -188(%rbp)
	leaq    -8(%rbp), %rax
	movq    %rax, -196(%rbp)
	movq    -196(%rbp), %rdi
	call    readInt
	movl    %eax, -200(%rbp)
	movl    -200(%rbp), %eax
	movl    %eax, -12(%rbp)
	movl    $0, -204(%rbp)
	movl    -204(%rbp), %eax
	cmpl    %eax, -8(%rbp)
	jne     .L17
	jmp     .L18
.L17:
	movq    $.LC12, -212(%rbp)
	movq    -212(%rbp), %rdi
	call    printStr
	movl    %eax, -216(%rbp)
	movl    $0, -220(%rbp)
	movl    -220(%rbp), %eax
	jmp     .LFE2
	jmp     .L19
.L18:
	movl    $40, -224(%rbp)
	movl    -224(%rbp), %eax
	cmpl    %eax, -12(%rbp)
	jge     .L20
	jmp     .L21
.L20:
	movq    $.LC13, -232(%rbp)
	movq    -232(%rbp), %rdi
	call    printStr
	movl    %eax, -236(%rbp)
	movl    $0, -240(%rbp)
	movl    -240(%rbp), %eax
	jmp     .LFE2
	jmp     .L19
.L21:
	movq    $.LC14, -248(%rbp)
	movq    -248(%rbp), %rdi
	call    printStr
	movl    %eax, -252(%rbp)
	movl    -12(%rbp), %edi
	call    printInt
	movl    %eax, -256(%rbp)
	movq    $.LC15, -264(%rbp)
	movq    -264(%rbp), %rdi
	call    printStr
	movl    %eax, -268(%rbp)
	movl    -12(%rbp), %edi
	call    fibNum
	movl    %eax, -272(%rbp)
	movl    -272(%rbp), %edi
	call    printInt
	movl    %eax, -276(%rbp)
	movq    $.LC16, -284(%rbp)
	movq    -284(%rbp), %rdi
	call    printStr
	movl    %eax, -288(%rbp)
.L19:
	movl    $0, -292(%rbp)
	movl    -292(%rbp), %eax
.LFE2:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   main, .-main
