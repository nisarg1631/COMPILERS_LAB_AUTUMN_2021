	.file	"ass6_19CS30031_19CS10070_test4.c"

#	Allocation of function variables and temporaries on the stack:

#	main
#	charL1: -1
#	charL2: -2
#	numL1: -6
#	numL2: -10
#	ptrL1: -18
#	ptrL2: -26
#	strL1: -34
#	strL2: -42
#	t10: -46
#	t100: -50
#	t11: -58
#	t12: -62
#	t13: -66
#	t14: -74
#	t15: -78
#	t16: -82
#	t17: -90
#	t18: -94
#	t19: -98
#	t20: -106
#	t21: -110
#	t22: -114
#	t23: -122
#	t24: -130
#	t25: -134
#	t26: -142
#	t27: -146
#	t28: -150
#	t29: -158
#	t3: -166
#	t30: -170
#	t31: -174
#	t32: -182
#	t33: -186
#	t34: -190
#	t35: -198
#	t36: -202
#	t37: -206
#	t38: -214
#	t39: -218
#	t4: -222
#	t40: -230
#	t41: -234
#	t42: -242
#	t43: -246
#	t44: -250
#	t45: -258
#	t46: -262
#	t47: -266
#	t48: -274
#	t49: -278
#	t5: -282
#	t50: -286
#	t51: -294
#	t52: -298
#	t53: -302
#	t54: -310
#	t55: -314
#	t56: -322
#	t57: -326
#	t58: -334
#	t59: -338
#	t6: -339
#	t60: -347
#	t61: -351
#	t62: -359
#	t63: -363
#	t64: -367
#	t65: -375
#	t66: -379
#	t67: -383
#	t68: -391
#	t69: -395
#	t7: -403
#	t70: -407
#	t71: -415
#	t72: -419
#	t73: -423
#	t74: -431
#	t75: -435
#	t76: -443
#	t77: -447
#	t78: -455
#	t79: -459
#	t8: -467
#	t80: -475
#	t81: -479
#	t82: -487
#	t83: -491
#	t84: -495
#	t85: -503
#	t86: -507
#	t87: -511
#	t88: -519
#	t89: -523
#	t9: -531
#	t90: -535
#	t91: -543
#	t92: -547
#	t93: -551
#	t94: -559
#	t95: -563
#	t96: -571
#	t97: -575
#	t98: -583
#	t99: -587
#	printInt
#	n: -4
#	printStr
#	s: -8
#	readInt
#	eP: -8

	.section	.rodata
.LC0:
	.string	"Hello World, I am a global string."
.LC1:
	.string	"\n#### TEST 4 (Global variables, pointers and addresses) ####"
.LC2:
	.string	"Hello World, I am a local string."
.LC3:
	.string	"\nLocal variables: "
.LC4:
	.string	"\nnumL1 = "
.LC5:
	.string	", charL1 (ascii value) = "
.LC6:
	.string	", ptrL1 (adress, truncated to first 32 bits only) = "
.LC7:
	.string	", strL1 = "
.LC8:
	.string	"\nGlobal variables: "
.LC9:
	.string	"\nnumG1 = "
.LC10:
	.string	", charG1 (ascii value) = "
.LC11:
	.string	", ptrG1 (adress, truncated to first 32 bits only) = "
.LC12:
	.string	", strG1 = "
.LC13:
	.string	"\n"
.LC14:
	.string	"\nAssigning locals to globals: "
.LC15:
	.string	"\nnumG2 = "
.LC16:
	.string	", charG2 (ascii value) = "
.LC17:
	.string	", ptrG2 (adress, truncated to first 32 bits only) = "
.LC18:
	.string	", strG2 = "
.LC19:
	.string	"\nSUCCESS: Local variables assigned to global variables."
.LC20:
	.string	"\nFAILURE: Local variables not assigned to global variables."
.LC21:
	.string	"\n"
.LC22:
	.string	"\nAssigning globals to locals: "
.LC23:
	.string	"\nnumL2 = "
.LC24:
	.string	", charL2 (ascii value) = "
.LC25:
	.string	", ptrL2 (adress, truncated to first 32 bits only) = "
.LC26:
	.string	", strL2 = "
.LC27:
	.string	"\nSUCCESS: Global variables assigned to local variables."
.LC28:
	.string	"\nFAILURE: Global variables not assigned to local variables."
.LC29:
	.string	"\n"
.LC30:
	.string	"\nAssigning globals to globals: "
.LC31:
	.string	"\nnumG2 = "
.LC32:
	.string	", charG2 (ascii value) = "
.LC33:
	.string	", ptrG2 (adress, truncated to first 32 bits only) = "
.LC34:
	.string	", strG2 = "
.LC35:
	.string	"\nSUCCESS: Global variables assigned to global variables."
.LC36:
	.string	"\nFAILURE: Global variables not assigned to global variables."
.LC37:
	.string	"\n\n"
	.comm	charG2,1,1
	.comm	numG2,4,4
	.comm	ptrG1,8,8
	.comm	ptrG2,8,8
	.comm	strG2,8,8
	.globl  numG1
	.data   
	.align  4
	.type   numG1, @object
	.size   numG1, 4
numG1:
	.long   20
	.globl  charG1
	.data   
	.type   charG1, @object
	.size   charG1, 1
charG1:
	.byte   98
	.section	.data.rel.local
	.align  8
	.type   strG1, @object
	.size   strG1, 8
strG1:
	.quad   .LC0
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
	subq    $587, %rsp
	movq    $.LC1, -166(%rbp)
	movq    -166(%rbp), %rdi
	call    printStr
	movl    %eax, -222(%rbp)
	movl    $5, -282(%rbp)
	movl    -282(%rbp), %eax
	movl    %eax, -6(%rbp)
	movb    $97, -339(%rbp)
	movb    -339(%rbp), %al
	movb    %al, -1(%rbp)
	leaq    -6(%rbp), %rax
	movq    %rax, -403(%rbp)
	movq    -403(%rbp), %rax
	movq    %rax, -18(%rbp)
	movq    $.LC2, -467(%rbp)
	movq    -467(%rbp), %rax
	movq    %rax, -34(%rbp)
	movq    $.LC3, -531(%rbp)
	movq    -531(%rbp), %rdi
	call    printStr
	movl    %eax, -46(%rbp)
	movq    $.LC4, -58(%rbp)
	movq    -58(%rbp), %rdi
	call    printStr
	movl    %eax, -62(%rbp)
	movl    -6(%rbp), %edi
	call    printInt
	movl    %eax, -66(%rbp)
	movq    $.LC5, -74(%rbp)
	movq    -74(%rbp), %rdi
	call    printStr
	movl    %eax, -78(%rbp)
	movb    -1(%rbp), %dil
	call    printInt
	movl    %eax, -82(%rbp)
	movq    $.LC6, -90(%rbp)
	movq    -90(%rbp), %rdi
	call    printStr
	movl    %eax, -94(%rbp)
	movq    -18(%rbp), %rdi
	call    printInt
	movl    %eax, -98(%rbp)
	movq    $.LC7, -106(%rbp)
	movq    -106(%rbp), %rdi
	call    printStr
	movl    %eax, -110(%rbp)
	movq    -34(%rbp), %rdi
	call    printStr
	movl    %eax, -114(%rbp)
	leaq    numG1, %rax
	movq    %rax, -122(%rbp)
	movq    -122(%rbp), %rax
	movq    %rax, ptrG1
	movq    $.LC8, -130(%rbp)
	movq    -130(%rbp), %rdi
	call    printStr
	movl    %eax, -134(%rbp)
	movq    $.LC9, -142(%rbp)
	movq    -142(%rbp), %rdi
	call    printStr
	movl    %eax, -146(%rbp)
	movl    numG1, %edi
	call    printInt
	movl    %eax, -150(%rbp)
	movq    $.LC10, -158(%rbp)
	movq    -158(%rbp), %rdi
	call    printStr
	movl    %eax, -170(%rbp)
	movb    charG1, %dil
	call    printInt
	movl    %eax, -174(%rbp)
	movq    $.LC11, -182(%rbp)
	movq    -182(%rbp), %rdi
	call    printStr
	movl    %eax, -186(%rbp)
	movq    ptrG1, %rdi
	call    printInt
	movl    %eax, -190(%rbp)
	movq    $.LC12, -198(%rbp)
	movq    -198(%rbp), %rdi
	call    printStr
	movl    %eax, -202(%rbp)
	movq    strG1, %rdi
	call    printStr
	movl    %eax, -206(%rbp)
	movq    $.LC13, -214(%rbp)
	movq    -214(%rbp), %rdi
	call    printStr
	movl    %eax, -218(%rbp)
	movq    $.LC14, -230(%rbp)
	movq    -230(%rbp), %rdi
	call    printStr
	movl    %eax, -234(%rbp)
	movl    -6(%rbp), %eax
	movl    %eax, numG2
	movb    -1(%rbp), %al
	movb    %al, charG2
	movq    -18(%rbp), %rax
	movq    %rax, ptrG2
	movq    -34(%rbp), %rax
	movq    %rax, strG2
	movq    $.LC15, -242(%rbp)
	movq    -242(%rbp), %rdi
	call    printStr
	movl    %eax, -246(%rbp)
	movl    numG2, %edi
	call    printInt
	movl    %eax, -250(%rbp)
	movq    $.LC16, -258(%rbp)
	movq    -258(%rbp), %rdi
	call    printStr
	movl    %eax, -262(%rbp)
	movb    charG2, %dil
	call    printInt
	movl    %eax, -266(%rbp)
	movq    $.LC17, -274(%rbp)
	movq    -274(%rbp), %rdi
	call    printStr
	movl    %eax, -278(%rbp)
	movq    ptrG2, %rdi
	call    printInt
	movl    %eax, -286(%rbp)
	movq    $.LC18, -294(%rbp)
	movq    -294(%rbp), %rdi
	call    printStr
	movl    %eax, -298(%rbp)
	movq    strG2, %rdi
	call    printStr
	movl    %eax, -302(%rbp)
	movl    -6(%rbp), %eax
	cmpl    %eax, numG2
	je      .L1
	jmp     .L2
.L1:
	movb    -1(%rbp), %al
	cmpb    %al, charG2
	je      .L3
	jmp     .L2
.L3:
	movq    -18(%rbp), %rax
	cmpq    %rax, ptrG2
	je      .L4
	jmp     .L2
.L4:
	movq    -34(%rbp), %rax
	cmpq    %rax, strG2
	je      .L5
	jmp     .L2
.L5:
	movq    $.LC19, -310(%rbp)
	movq    -310(%rbp), %rdi
	call    printStr
	movl    %eax, -314(%rbp)
	jmp     .L6
.L2:
	movq    $.LC20, -322(%rbp)
	movq    -322(%rbp), %rdi
	call    printStr
	movl    %eax, -326(%rbp)
.L6:
	movq    $.LC21, -334(%rbp)
	movq    -334(%rbp), %rdi
	call    printStr
	movl    %eax, -338(%rbp)
	movq    $.LC22, -347(%rbp)
	movq    -347(%rbp), %rdi
	call    printStr
	movl    %eax, -351(%rbp)
	movl    numG1, %eax
	movl    %eax, -10(%rbp)
	movb    charG1, %al
	movb    %al, -2(%rbp)
	movq    ptrG1, %rax
	movq    %rax, -26(%rbp)
	movq    strG1, %rax
	movq    %rax, -42(%rbp)
	movq    $.LC23, -359(%rbp)
	movq    -359(%rbp), %rdi
	call    printStr
	movl    %eax, -363(%rbp)
	movl    -10(%rbp), %edi
	call    printInt
	movl    %eax, -367(%rbp)
	movq    $.LC24, -375(%rbp)
	movq    -375(%rbp), %rdi
	call    printStr
	movl    %eax, -379(%rbp)
	movb    -2(%rbp), %dil
	call    printInt
	movl    %eax, -383(%rbp)
	movq    $.LC25, -391(%rbp)
	movq    -391(%rbp), %rdi
	call    printStr
	movl    %eax, -395(%rbp)
	movq    -26(%rbp), %rdi
	call    printInt
	movl    %eax, -407(%rbp)
	movq    $.LC26, -415(%rbp)
	movq    -415(%rbp), %rdi
	call    printStr
	movl    %eax, -419(%rbp)
	movq    -42(%rbp), %rdi
	call    printStr
	movl    %eax, -423(%rbp)
	movl    numG1, %eax
	cmpl    %eax, -10(%rbp)
	je      .L7
	jmp     .L8
.L7:
	movb    charG1, %al
	cmpb    %al, -2(%rbp)
	je      .L9
	jmp     .L8
.L9:
	movq    ptrG1, %rax
	cmpq    %rax, -26(%rbp)
	je      .L10
	jmp     .L8
.L10:
	movq    strG1, %rax
	cmpq    %rax, -42(%rbp)
	je      .L11
	jmp     .L8
.L11:
	movq    $.LC27, -431(%rbp)
	movq    -431(%rbp), %rdi
	call    printStr
	movl    %eax, -435(%rbp)
	jmp     .L12
.L8:
	movq    $.LC28, -443(%rbp)
	movq    -443(%rbp), %rdi
	call    printStr
	movl    %eax, -447(%rbp)
.L12:
	movq    $.LC29, -455(%rbp)
	movq    -455(%rbp), %rdi
	call    printStr
	movl    %eax, -459(%rbp)
	movq    $.LC30, -475(%rbp)
	movq    -475(%rbp), %rdi
	call    printStr
	movl    %eax, -479(%rbp)
	movl    numG1, %eax
	movl    %eax, numG2
	movb    charG1, %al
	movb    %al, charG2
	movq    ptrG1, %rax
	movq    %rax, ptrG2
	movq    strG1, %rax
	movq    %rax, strG2
	movq    $.LC31, -487(%rbp)
	movq    -487(%rbp), %rdi
	call    printStr
	movl    %eax, -491(%rbp)
	movl    numG2, %edi
	call    printInt
	movl    %eax, -495(%rbp)
	movq    $.LC32, -503(%rbp)
	movq    -503(%rbp), %rdi
	call    printStr
	movl    %eax, -507(%rbp)
	movb    charG2, %dil
	call    printInt
	movl    %eax, -511(%rbp)
	movq    $.LC33, -519(%rbp)
	movq    -519(%rbp), %rdi
	call    printStr
	movl    %eax, -523(%rbp)
	movq    ptrG2, %rdi
	call    printInt
	movl    %eax, -535(%rbp)
	movq    $.LC34, -543(%rbp)
	movq    -543(%rbp), %rdi
	call    printStr
	movl    %eax, -547(%rbp)
	movq    strG2, %rdi
	call    printStr
	movl    %eax, -551(%rbp)
	movl    numG1, %eax
	cmpl    %eax, numG2
	je      .L13
	jmp     .L14
.L13:
	movb    charG1, %al
	cmpb    %al, charG2
	je      .L15
	jmp     .L14
.L15:
	movq    ptrG1, %rax
	cmpq    %rax, ptrG2
	je      .L16
	jmp     .L14
.L16:
	movq    strG1, %rax
	cmpq    %rax, strG2
	je      .L17
	jmp     .L14
.L17:
	movq    $.LC35, -559(%rbp)
	movq    -559(%rbp), %rdi
	call    printStr
	movl    %eax, -563(%rbp)
	jmp     .L18
.L14:
	movq    $.LC36, -571(%rbp)
	movq    -571(%rbp), %rdi
	call    printStr
	movl    %eax, -575(%rbp)
.L18:
	movq    $.LC37, -583(%rbp)
	movq    -583(%rbp), %rdi
	call    printStr
	movl    %eax, -587(%rbp)
	movl    $0, -50(%rbp)
	movl    -50(%rbp), %eax
.LFE0:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   main, .-main
