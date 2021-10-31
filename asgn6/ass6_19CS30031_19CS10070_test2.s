	.file	"ass6_19CS30031_19CS10070_test2.c"

#	main
#	i: -4
#	j: -8
#	k: -12
#	t0: -16
#	t1: -20
#	t2: -24
#	t3: -28
#	t4: -32
#	t5: -36
#	t6: -40
#	t7: -44
#	t8: -48

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
	subq    $48, %rsp
	movl   	$0, %eax
.LFE0:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   main, .-main
