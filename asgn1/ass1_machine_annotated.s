	.file	"ass1.c"
# GNU C17 (Ubuntu 10.3.0-1ubuntu1~18.04~1) version 10.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 10.3.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version isl-0.19-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu ass1.c -mtune=generic
# -march=x86-64 -Wall -fverbose-asm -fasynchronous-unwind-tables
# -fstack-protector-strong -Wformat-security
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fallocation-dce -fasynchronous-unwind-tables -fauto-inc-dec -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-symbols -feliminate-unused-debug-types
# -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm -fgnu-unique -fident
# -finline-atomics -fipa-stack-alignment -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -flifetime-dse -fmath-errno
# -fmerge-debug-strings -fpeephole -fplt -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap-separate
# -fsigned-zeros -fsplit-ivs-in-unroller -fssa-backprop
# -fstack-protector-strong -fstdarg-opt -fstrict-volatile-bitfields
# -fsync-libcalls -ftrapping-math -ftree-cselim -ftree-forwprop
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter how many elements you want:"
.LC1:
	.string	"%d"
.LC2:
	.string	"Enter the %d elements:\n"
.LC3:
	.string	"\nEnter the item to search"
.LC4:
	.string	"\n%d found in position: %d\n"
	.align 8
.LC5:
	.string	"\nItem is not present in the list."
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	# ,
	.cfi_def_cfa_register 6
	subq	$432, %rsp	# ,
# ass1.c:8: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	movq	%rax, -8(%rbp)	# tmp107, D.2461
	xorl	%eax, %eax	# tmp107
# ass1.c:11:     printf("Enter how many elements you want:\n");
	leaq	.LC0(%rip), %rdi	# ,
	call	puts@PLT	#
# ass1.c:12:     scanf("%d", &n);
	leaq	-432(%rbp), %rax	# , tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC1(%rip), %rdi	# ,
	movl	$0, %eax	# ,
	call	__isoc99_scanf@PLT	#
# ass1.c:14:     printf("Enter the %d elements:\n", n);
	movl	-432(%rbp), %eax	# n, n.0_1
	movl	%eax, %esi	# n.0_1,
	leaq	.LC2(%rip), %rdi	# ,
	movl	$0, %eax	# ,
	call	printf@PLT	#
# ass1.c:15:     for(i = 0; i < n; i++) scanf("%d", &a[i]);
	movl	$0, -424(%rbp)	# , i
# ass1.c:15:     for(i = 0; i < n; i++) scanf("%d", &a[i]);
	jmp	.L2	#
.L3:
# ass1.c:15:     for(i = 0; i < n; i++) scanf("%d", &a[i]);
	leaq	-416(%rbp), %rdx	# , tmp95
	movl	-424(%rbp), %eax	# i, tmp97
	cltq
	salq	$2, %rax	# , tmp98
	addq	%rdx, %rax	# tmp95, _2
	movq	%rax, %rsi	# _2,
	leaq	.LC1(%rip), %rdi	# ,
	movl	$0, %eax	# ,
	call	__isoc99_scanf@PLT	#
# ass1.c:15:     for(i = 0; i < n; i++) scanf("%d", &a[i]);
	addl	$1, -424(%rbp)	# , i
.L2:
# ass1.c:15:     for(i = 0; i < n; i++) scanf("%d", &a[i]);
	movl	-432(%rbp), %eax	# n, n.1_3
# ass1.c:15:     for(i = 0; i < n; i++) scanf("%d", &a[i]);
	cmpl	%eax, -424(%rbp)	# n.1_3, i
	jl	.L3	# ,
# ass1.c:17:     inst_sort(a,n);
	movl	-432(%rbp), %edx	# n, n.2_4
	leaq	-416(%rbp), %rax	# , tmp99
	movl	%edx, %esi	# n.2_4,
	movq	%rax, %rdi	# tmp99,
	call	inst_sort	#
# ass1.c:19:     printf("\nEnter the item to search\n");
	leaq	.LC3(%rip), %rdi	# ,
	call	puts@PLT	#
# ass1.c:20:     scanf("%d", &item);
	leaq	-428(%rbp), %rax	# , tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC1(%rip), %rdi	# ,
	movl	$0, %eax	# ,
	call	__isoc99_scanf@PLT	#
# ass1.c:21:     loc=bsearch(a,n,item);
	movl	-428(%rbp), %edx	# item, item.3_5
	movl	-432(%rbp), %ecx	# n, n.4_6
	leaq	-416(%rbp), %rax	# , tmp101
	movl	%ecx, %esi	# n.4_6,
	movq	%rax, %rdi	# tmp101,
	call	bsearch	#
	movl	%eax, -420(%rbp)	# tmp102, loc
# ass1.c:23:     if (item == a[loc]) {
	movl	-420(%rbp), %eax	# loc, tmp104
	cltq
	movl	-416(%rbp,%rax,4), %edx	# a[loc_23], _7
# ass1.c:23:     if (item == a[loc]) {
	movl	-428(%rbp), %eax	# item, item.5_8
# ass1.c:23:     if (item == a[loc]) {
	cmpl	%eax, %edx	# item.5_8, _7
	jne	.L4	# ,
# ass1.c:24:         printf("\n%d found in position: %d\n", item, loc + 1);
	movl	-420(%rbp), %eax	# loc, tmp105
	leal	1(%rax), %edx	# , _9
	movl	-428(%rbp), %eax	# item, item.6_10
	movl	%eax, %esi	# item.6_10,
	leaq	.LC4(%rip), %rdi	# ,
	movl	$0, %eax	# ,
	call	printf@PLT	#
	jmp	.L5	#
.L4:
# ass1.c:26:         printf("\nItem is not present in the list.\n");
	leaq	.LC5(%rip), %rdi	# ,
	call	puts@PLT	#
.L5:
# ass1.c:29:     return 0;
	movl	$0, %eax	# , _26
# ass1.c:30: }
	movq	-8(%rbp), %rcx	# D.2461, tmp108
	subq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	je	.L7	# ,
	call	__stack_chk_fail@PLT	#
.L7:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	inst_sort
	.type	inst_sort, @function
inst_sort:
.LFB1:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	# ,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# num, num
	movl	%esi, -28(%rbp)	# n, n
# ass1.c:36:     for(j=1;j<n;j++) {
	movl	$1, -8(%rbp)	# , j
# ass1.c:36:     for(j=1;j<n;j++) {
	jmp	.L9	#
.L13:
# ass1.c:37:         k=num[j];
	movl	-8(%rbp), %eax	# j, tmp101
	cltq
	leaq	0(,%rax,4), %rdx	# , _2
	movq	-24(%rbp), %rax	# num, tmp102
	addq	%rdx, %rax	# _2, _3
# ass1.c:37:         k=num[j];
	movl	(%rax), %eax	# *_3, tmp103
	movl	%eax, -4(%rbp)	# tmp103, k
# ass1.c:38:         for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i];
	movl	-8(%rbp), %eax	# j, tmp107
	subl	$1, %eax	# , tmp106
	movl	%eax, -12(%rbp)	# tmp106, i
# ass1.c:38:         for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i];
	jmp	.L10	#
.L12:
# ass1.c:38:         for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i];
	movl	-12(%rbp), %eax	# i, tmp108
	cltq
	leaq	0(,%rax,4), %rdx	# , _5
	movq	-24(%rbp), %rax	# num, tmp109
	addq	%rdx, %rax	# _5, _6
# ass1.c:38:         for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i];
	movl	-12(%rbp), %edx	# i, tmp110
	movslq	%edx, %rdx	# tmp110, _7
	addq	$1, %rdx	# , _8
	leaq	0(,%rdx,4), %rcx	# , _9
	movq	-24(%rbp), %rdx	# num, tmp111
	addq	%rcx, %rdx	# _9, _10
# ass1.c:38:         for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i];
	movl	(%rax), %eax	# *_6, _11
# ass1.c:38:         for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i];
	movl	%eax, (%rdx)	# _11, *_10
# ass1.c:38:         for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i];
	subl	$1, -12(%rbp)	# , i
.L10:
# ass1.c:38:         for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i];
	cmpl	$0, -12(%rbp)	# , i
	js	.L11	# ,
# ass1.c:38:         for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i];
	movl	-12(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,4), %rdx	# , _13
	movq	-24(%rbp), %rax	# num, tmp113
	addq	%rdx, %rax	# _13, _14
	movl	(%rax), %eax	# *_14, _15
# ass1.c:38:         for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i];
	cmpl	%eax, -4(%rbp)	# _15, k
	jl	.L12	# ,
.L11:
# ass1.c:39:             num[i+1]=k;
	movl	-12(%rbp), %eax	# i, tmp114
	cltq
	addq	$1, %rax	# , _17
	leaq	0(,%rax,4), %rdx	# , _18
	movq	-24(%rbp), %rax	# num, tmp115
	addq	%rax, %rdx	# tmp115, _19
# ass1.c:39:             num[i+1]=k;
	movl	-4(%rbp), %eax	# k, tmp116
	movl	%eax, (%rdx)	# tmp116, *_19
# ass1.c:36:     for(j=1;j<n;j++) {
	addl	$1, -8(%rbp)	# , j
.L9:
# ass1.c:36:     for(j=1;j<n;j++) {
	movl	-8(%rbp), %eax	# j, tmp117
	cmpl	-28(%rbp), %eax	# n, tmp117
	jl	.L13	# ,
# ass1.c:41: }
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	inst_sort, .-inst_sort
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB2:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	# ,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# n, n
	movl	%edx, -32(%rbp)	# item, item
# ass1.c:47:     bottom = 1;
	movl	$1, -8(%rbp)	# , bottom
# ass1.c:48:     top = n;
	movl	-28(%rbp), %eax	# n, tmp97
	movl	%eax, -12(%rbp)	# tmp97, top
.L18:
# ass1.c:50:         mid = (bottom + top) / 2;
	movl	-8(%rbp), %edx	# bottom, tmp98
	movl	-12(%rbp), %eax	# top, tmp99
	addl	%edx, %eax	# tmp98, _1
# ass1.c:50:         mid = (bottom + top) / 2;
	movl	%eax, %edx	# _1, tmp100
	shrl	$31, %edx	# , tmp100
	addl	%edx, %eax	# tmp100, tmp101
	sarl	%eax	# tmp102
	movl	%eax, -4(%rbp)	# tmp102, mid
# ass1.c:51:         if (item < a[mid])
	movl	-4(%rbp), %eax	# mid, tmp103
	cltq
	leaq	0(,%rax,4), %rdx	# , _3
	movq	-24(%rbp), %rax	# a, tmp104
	addq	%rdx, %rax	# _3, _4
	movl	(%rax), %eax	# *_4, _5
# ass1.c:51:         if (item < a[mid])
	cmpl	%eax, -32(%rbp)	# _5, item
	jge	.L15	# ,
# ass1.c:52:             top = mid - 1;
	movl	-4(%rbp), %eax	# mid, tmp108
	subl	$1, %eax	# , tmp107
	movl	%eax, -12(%rbp)	# tmp107, top
	jmp	.L16	#
.L15:
# ass1.c:53:         else if (item > a[mid])
	movl	-4(%rbp), %eax	# mid, tmp109
	cltq
	leaq	0(,%rax,4), %rdx	# , _7
	movq	-24(%rbp), %rax	# a, tmp110
	addq	%rdx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# ass1.c:53:         else if (item > a[mid])
	cmpl	%eax, -32(%rbp)	# _9, item
	jle	.L16	# ,
# ass1.c:54:             bottom = mid + 1;
	movl	-4(%rbp), %eax	# mid, tmp114
	addl	$1, %eax	# , tmp113
	movl	%eax, -8(%rbp)	# tmp113, bottom
.L16:
# ass1.c:55:     } while (item != a[mid] && bottom <= top);
	movl	-4(%rbp), %eax	# mid, tmp115
	cltq
	leaq	0(,%rax,4), %rdx	# , _11
	movq	-24(%rbp), %rax	# a, tmp116
	addq	%rdx, %rax	# _11, _12
	movl	(%rax), %eax	# *_12, _13
# ass1.c:55:     } while (item != a[mid] && bottom <= top);
	cmpl	%eax, -32(%rbp)	# _13, item
	je	.L17	# ,
# ass1.c:55:     } while (item != a[mid] && bottom <= top);
	movl	-8(%rbp), %eax	# bottom, tmp117
	cmpl	-12(%rbp), %eax	# top, tmp117
	jle	.L18	# ,
.L17:
# ass1.c:56:     return mid;
	movl	-4(%rbp), %eax	# mid, _27
# ass1.c:57: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	bsearch, .-bsearch
	.ident	"GCC: (Ubuntu 10.3.0-1ubuntu1~18.04~1) 10.3.0"
	.section	.note.GNU-stack,"",@progbits
