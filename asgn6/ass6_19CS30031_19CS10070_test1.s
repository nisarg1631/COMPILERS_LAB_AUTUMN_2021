	.file	"ass6_19CS30031_19CS10070_test1.c"

#	fib
#	a: -8
#	b: -12
#	c: -13
#	d: -17
#	n: -21
#	t0: -25
#	t1: -29
#	t3: -33
#	t4: -37
#	main
#	a: -4
#	b: -8
#	c: -12
#	d: -16
#	fgh: -17
#	i: -21
#	str2: -29
#	t10: -33
#	t12: -37
#	t14: -41
#	t6: -49
#	t7: -57
#	t8: -61
#	t9: -65
#	prinInt
#	i: -4
#	prinStr
#	str: -8

	.section	.rodata
.LC0:
	.string	"heylo2"
	.text
	.globl  fib
	.type   fib, @function
fib:
.LFB0:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $37, %rsp
	movb    %dil, -13(%rbp)
	movl    %esi, -17(%rbp)
	movl    %edx, -12(%rbp)
	movq    %rcx, -8(%rbp)
.LFE0:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   fib, .-fib
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
	subq    $65, %rsp
.LFE1:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   main, .-main
