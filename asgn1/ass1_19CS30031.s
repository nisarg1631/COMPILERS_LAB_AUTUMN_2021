	.file	"ass1.c"	# source file name
	.text	# start of text segment (executable code)
	.section	.rodata		# read-only data section
	.align 8	# align with 8-byte boundary
.LC0:	# Label of f-string 1st printf
	.string	"Enter how many elements you want:" 
.LC1:	# Label of f-string 1st, 2nd and 3rd scanfs
	.string	"%d"
.LC2:	# Label of f-string 2nd printf
	.string	"Enter the %d elements:\n"
.LC3:	# Label of f-string 3rd printf
	.string	"\nEnter the item to search"
.LC4:	# Label of f-string 4th printf
	.string	"\n%d found in position: %d\n"
	.align 8	# align with 8-byte boundary
.LC5:	# Label of f-string 5th printf
	.string	"\nItem is not present in the list."

	.text # code starts
	.globl	main	# main is a global name
	.type	main, @function	# main is a function
main:	# start of main function
.LFB0:
	.cfi_startproc	# call frame information
	pushq	%rbp	# save old base pointer
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	# rsp->rbp set new stack base pointer
	.cfi_def_cfa_register 6
	subq	$432, %rsp	# 432->rsp space for allocating arrays and variables
	movq	%fs:40, %rax	# segment addressing
	movq	%rax, -8(%rbp) 	# rax->rbp-8
	xorl	%eax, %eax	# clear eax

	# printf("Enter how many elements you want:\n");
	leaq	.LC0(%rip), %rdi	# .LC0 + rip -> rdi, store 1st parameter of printf
	call	puts@PLT	# calls puts for printf

	# scanf("%d", &n);
	leaq	-432(%rbp), %rax # rbp - 432 -> rax, &n -> rax
	movq	%rax, %rsi	# rax -> rsi, store &n, 2nd parameter of scanf
	leaq	.LC1(%rip), %rdi # .LC1 + rip -> rdi, store format string "%d", 1st parameter of scanf
	movl	$0, %eax	# 0->eax, clear eax
	call	__isoc99_scanf@PLT # call scanf

	# printf("Enter the %d elements:\n", n);
	movl	-432(%rbp), %eax # rbp - 432 -> eax, n -> eax
	movl	%eax, %esi	# eax -> esi, store n, 2nd parameter of printf
	leaq	.LC2(%rip), %rdi # .LC2 + rip -> rdi, store 1st parameter of printf
	movl	$0, %eax	# 0->eax, clear eax
	call	printf@PLT	# calls printf

	# for(i = 0; i < n; i++) scanf("%d", &a[i]);
	movl	$0, -424(%rbp) # 0->rbp-424, assign 0 to i
	jmp	.L2	# go to the for loop conditional check

.L3:	# for(i = 0; i < n; i++) scanf("%d", &a[i]); [loop body]
	leaq	-416(%rbp), %rdx # rbp-16 -> rdx, a -> rdx
	movl	-424(%rbp), %eax # rbp-424 -> eax, i
	cltq	# eax -> rax, 32 bits to 64 bits
	salq	$2, %rax # shift arithmetic 2 bit left, 4*i
	addq	%rdx, %rax	# rdx+rax -> rax, a + 4*i = &a[i] -> rax
	movq	%rax, %rsi # rax -> rsi, store &a[i], 2nd parameter of scanf
	leaq	.LC1(%rip), %rdi # .LC1 + rip -> rdi, store format string "%d", 1st parameter of scanf
	movl	$0, %eax	# 0->eax, clear eax
	call	__isoc99_scanf@PLT	# call scanf
	addl	$1, -424(%rbp) # (rbp-424)+1 -> rbp-424, that is add 1 to i, i++
	
.L2:	# for(i = 0; i < n; i++) scanf("%d", &a[i]); [condition check]
	movl	-432(%rbp), %eax # rbp - 432 -> eax, n -> eax
	cmpl	%eax, -424(%rbp)	# logical comparison of i with n
	jl	.L3	# jump if less to loop body (i<n)

	# inst_sort(a,n);
	movl	-432(%rbp), %edx # rbp-432 -> edx, n -> edx
	leaq	-416(%rbp), %rax	# rbp-416 -> rax, a -> rax
	movl	%edx, %esi # edx->esi, store n, 2nd parameter of inst_sort
	movq	%rax, %rdi	# rax->rdi, store a, 1st parameter of inst_sort
	call	inst_sort # call inst_sort function

	# printf("\nEnter the item to search\n");
	leaq	.LC3(%rip), %rdi	# .LC3 + rip -> rdi, store 1st parameter of printf
	call	puts@PLT	# calls puts for printf

	# scanf("%d", &item);
	leaq	-428(%rbp), %rax	# rbp-428 -> rax, &item -> rax
	movq	%rax, %rsi	# rax->rsi, store &item, 2nd parameter of scanf
	leaq	.LC1(%rip), %rdi	 # .LC1 + rip -> rdi, store format string "%d", 1st parameter of scanf
	movl	$0, %eax	# 0->eax, clear eax
	call	__isoc99_scanf@PLT	# call scanf

	# loc=bsearch(a,n,item);
	movl	-428(%rbp), %edx # rbp-428 -> edx, store item, 3rd parameter of bsearch
	movl	-432(%rbp), %ecx	# rbp-432 -> ecx, n -> ecx
	leaq	-416(%rbp), %rax	# rbp-16 -> rax, a -> rax
	movl	%ecx, %esi	# ecx->esi, store n, 2nd parameter of bsearch
	movq	%rax, %rdi	# rax->rdi, store a, 1st parameter of bsearch
	call	bsearch	# call bsearch function
	movl	%eax, -420(%rbp) # eax -> rbp-420, assign return value of bsearch to loc

	# if (item == a[loc]) [condition check]
	movl	-420(%rbp), %eax # rbp-420 -> eax, loc -> eax
	cltq	# eax -> rax, 32 bits to 64 bits
	movl	-416(%rbp,%rax,4), %edx	# (rbp-416) + 4*rax -> edx, a + 4*loc = a[loc] -> edx
	movl	-428(%rbp), %eax # rbp-428 -> eax, item -> eax
	cmpl	%eax, %edx # logical comparison of item and a[loc]
	jne	.L4	# jump if not equal

	# if (item == a[loc]) {...} else {...} [if block]
	# printf("\n%d found in position: %d\n", item, loc + 1);
	movl	-420(%rbp), %eax	# rbp-420 -> eax, loc -> eax
	leal	1(%rax), %edx	# rax+1 -> edx, store loc+1, 3rd parameter of printf
	movl	-428(%rbp), %eax	# rbp-428 -> eax, item -> eax
	movl	%eax, %esi	# eax -> esi, store item, 2nd parameter of printf
	leaq	.LC4(%rip), %rdi	# .LC4 + rip -> rdi, store 1st parameter of printf
	movl	$0, %eax # 0 -> eax, clear eax
	call	printf@PLT	# calls printf
	jmp	.L5	# jump to L5

.L4:	# if (item == a[loc]) {...} else {...} [else block]
	leaq	.LC5(%rip), %rdi	# .LC5 + rip -> rdi, store 1st parameter of printf
	call	puts@PLT	# calls puts for printf

.L5:
	movl	$0, %eax	# 0->eax, return value from main, 0
	movq	-8(%rbp), %rcx # rbp-8 -> rcx
	subq	%fs:40, %rcx
	je	.L7
	call	__stack_chk_fail@PLT

.L7:
	leave
	.cfi_def_cfa 7, 8
	ret # return from main
	.cfi_endproc

.LFE0:
	.size	main, .-main
	.globl	inst_sort	# inst_sort is a global name
	.type	inst_sort, @function # inst_sort is a function
inst_sort: # start of inst_sort function
.LFB1:
	.cfi_startproc	# call frame information
	pushq	%rbp	# save old base pointer
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	# rsp->rbp set new stack base pointer
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp) # rdi -> rbp-24, 1st argument, num -> rbp-24
	movl	%esi, -28(%rbp)	# esi -> rbp-28, 2nd argument, n -> rbp-28

	# for(j=1;j<n;j++)
	movl	$1, -8(%rbp) # 1 -> rbp-8, assign 1 to j (j=1)
	jmp	.L9 # go to the for loop conditional check

.L13:	# for(j=1;j<n;j++) [loop body]

	# k=num[j];
	movl	-8(%rbp), %eax	# rbp-8 -> eax, j -> eax
	cltq	# eax -> rax, 32 bits to 64 bits
	leaq	0(,%rax,4), %rdx # 0 + 4*rax -> rdx, 4*j -> rdx
	movq	-24(%rbp), %rax	# rbp-24 -> rax, num -> rax
	addq	%rdx, %rax	# rdx+rax -> rax, 4*j + num = num[j] -> rax
	movl	(%rax), %eax	# rax -> eax, num[j] -> eax
	movl	%eax, -4(%rbp)	# eax -> rbp-4, assign num[j] to k (k=num[j])

	# for(i=j-1;i>=0 && k<num[i];i--)
	movl	-8(%rbp), %eax # rbp-8 -> eax, j -> eax
	subl	$1, %eax	# eax-1 -> eax, j-1 -> eax
	movl	%eax, -12(%rbp)	# eax -> rbp-12, assign j-1 to i (i=j-1)
	jmp	.L10 # jump to for loop condition check

.L12:	# for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i]; [loop body]
	movl	-12(%rbp), %eax # rbp-12 -> eax, i -> eax
	cltq	# eax -> rax, 32 bits to 64 bits
	leaq	0(,%rax,4), %rdx	# 0 + 4*rax -> rdx, 4*i -> rdx
	movq	-24(%rbp), %rax	# rbp-24 -> rax, num -> rax
	addq	%rdx, %rax	# rdx+rax -> rax, 4*i + num = num[i] -> rax
	movl	-12(%rbp), %edx	# rbp-12 -> edx, i -> edx
	movslq	%edx, %rdx # edx -> rdx, 32 bits to 64 bits
	addq	$1, %rdx	# 1+rdx -> rdx, i+1 -> rdx
	leaq	0(,%rdx,4), %rcx	# 0 + 4*rdx -> rcx, 4*(i+1) -> rcx
	movq	-24(%rbp), %rdx	# rbp-24 -> rdx, num -> rdx
	addq	%rcx, %rdx	# rcx+rdx -> rdx, 4*(i+1) + num = num[i+1] -> rdx
	movl	(%rax), %eax # rax -> eax, num[i] -> eax
	movl	%eax, (%rdx) # eax -> rdx, assign num[i] to num[i+1] (num[i+1]=num[i])
	subl	$1, -12(%rbp) # (rbp-12)-1 -> rbp-12, i-1 -> i (i--)

.L10:	# for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i]; [condition check]

	# i>=0
	cmpl	$0, -12(%rbp)	# logical comparison between 0 and i
	js	.L11	# jump outside loop if signed, i.e. if i is negative (i>=0 condition evaluates to false)

	# k<num[i]
	movl	-12(%rbp), %eax # rbp-12 -> eax, i -> eax
	cltq	# eax -> rax, 32 bits to 64 bits
	leaq	0(,%rax,4), %rdx	# 0 + 4*rax -> rdx, 4*i -> rdx
	movq	-24(%rbp), %rax	# rbp-24 -> rax, num -> rax
	addq	%rdx, %rax	# rdx+rax -> rax, 4*i + num = num[i] -> rax
	movl	(%rax), %eax	# rax->eax, num[i] -> eax
	cmpl	%eax, -4(%rbp) # logical comparison between k and num[i]
	jl	.L12	# if less jump to loop body (k<num[i])

.L11:	# num[i+1]=k;
	movl	-12(%rbp), %eax # rbp-12 -> eax, i -> eax
	cltq	# eax -> rax, 32 bits to 64 bits
	addq	$1, %rax	# 1+rax -> rax, i+1 -> rax
	leaq	0(,%rax,4), %rdx	# 0 + 4*rax -> rdx, 4*(i+1) -> rdx
	movq	-24(%rbp), %rax # rbp-24 -> rax, num -> rax
	addq	%rax, %rdx	# rax+rdx -> rdx, num + 4*(i+1) = num[i+1] -> rdx
	movl	-4(%rbp), %eax # rbp-4 -> eax, k -> eax
	movl	%eax, (%rdx)	# eax -> rdx, assign k to num[i+1] (num[i+1]=k)
	addl	$1, -8(%rbp) # (rbp-8)+1 -> rbp-8, j+1 -> j (j++)

.L9:	# for(j=1;j<n;j++) [condition check]
	movl	-8(%rbp), %eax # rbp-8 -> eax, j
	cmpl	-28(%rbp), %eax # logical comparison between j and n
	jl	.L13 # if less go to loop body

	nop
	nop
	popq	%rbp # pop the base pointer
	.cfi_def_cfa 7, 8
	ret	# return from inst_sort
	.cfi_endproc

.LFE1:
	.size	inst_sort, .-inst_sort
	.globl	bsearch	# bsearch is a global name
	.type	bsearch, @function # bsearch is a function
bsearch:	# start of bsearch function
.LFB2:
	.cfi_startproc	# call frame information
	pushq	%rbp	# save old base pointer
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	# rsp->rbp set new stack base pointer
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp) # rdi -> rbp-24, 1st argument, a -> rbp-24
	movl	%esi, -28(%rbp)	# esi -> rbp-28, 2nd argument, n -> rbp-28
	movl	%edx, -32(%rbp) # edx -> rbp-32, 3rd argument, item -> rbp-32

	# bottom = 1;
	movl	$1, -8(%rbp) # 1 -> rbp-8, assign 1 to bottom

	# top = n;
	movl	-28(%rbp), %eax # rbp-28 -> eax, n -> eax
	movl	%eax, -12(%rbp)	# eax -> rbp-12, assign n to top

.L18:	# do while loop start

	# mid = (bottom + top) / 2;
	movl	-8(%rbp), %edx  # rbp-8 -> edx, bottom -> edx
	movl	-12(%rbp), %eax	# rbp-12 -> eax, top -> eax
	addl	%edx, %eax # edx+eax -> eax, bottom+top -> eax

	# the next 3 statements are responsible for adding 1 to eax if it is negative
	movl	%eax, %edx # eax->edx, bottom+top -> edx
	shrl	$31, %edx	# shift value in edx right by 31 bits,
						# this effectively stores the signed bit of the
						# value (bottom+top) in edx, if
						# (bottom+top) is +ve then it stores 0
						# and if it is -ve it stores 1
	addl	%edx, %eax	# edx+eax -> eax

	# division of eax by 2
	sarl	%eax		# shift eax to the right by 1 bit
						# and also preserves the signed bit

	movl	%eax, -4(%rbp) # eax -> rbp-4, (bottom + top)/2 -> mid

	# if (item < a[mid])
	movl	-4(%rbp), %eax	# rbp-4 -> eax, mid -> eax
	cltq	# eax -> rax, 32 bits to 64 bits
	leaq	0(,%rax,4), %rdx	# 0 + 4*rax -> rdx, 4*mid -> rdx
	movq	-24(%rbp), %rax # rbp-24 -> rax, a -> rax
	addq	%rdx, %rax	# rdx+rax -> rax, 4*mid + a -> rax, a[mid] -> rax
	movl	(%rax), %eax	# rax -> eax, a[mid] -> eax
	cmpl	%eax, -32(%rbp) # logical comapirson of item and a[mid]
	jge	.L15 # jump to next else if, if item >= a[mid]

	# if condition is met, top = mid - 1;
	movl	-4(%rbp), %eax # rbp-4 -> eax, mid -> eax
	subl	$1, %eax	# eax-1 -> eax, mid-1 -> eax
	movl	%eax, -12(%rbp)	# eax -> rbp-12, assign mid-1 to top
	jmp	.L16	# jump to do while loop condition check

.L15:

	# else if (item > a[mid])
	movl	-4(%rbp), %eax	# rbp-4 -> eax, mid -> eax
	cltq	# eax -> rax, 32 bits to 64 bits
	leaq	0(,%rax,4), %rdx	# 0 + 4*rax -> rdx, 4*mid -> rdx
	movq	-24(%rbp), %rax # rbp-24 -> rax, a -> rax
	addq	%rdx, %rax	# rdx+rax -> rax, 4*mid + a -> rax, a[mid] -> rax
	movl	(%rax), %eax	# rax -> eax, a[mid] -> eax
	cmpl	%eax, -32(%rbp) # logical comapirson of item and a[mid]
	jle	.L16	# jump to do while loop condition check if item <= a[mid]

	# else if condition is met, bottom = mid + 1;
	movl	-4(%rbp), %eax # rbp-4 -> eax, mid -> eax
	addl	$1, %eax # eax+1 -> eax, mid+1 -> eax
	movl	%eax, -8(%rbp) # eax -> rbp-8, assign mid+1 to bottom

.L16:	# do while loop condition check

	# item != a[mid]
	movl	-4(%rbp), %eax	# rbp-4 -> eax, mid -> eax
	cltq	# eax -> rax, 32 bits to 64 bits
	leaq	0(,%rax,4), %rdx	# 0 + 4*rax -> rdx, 4*mid -> rdx
	movq	-24(%rbp), %rax # rbp-24 -> rax, a -> rax
	addq	%rdx, %rax	# rdx+rax -> rax, 4*mid + a -> rax, a[mid] -> rax
	movl	(%rax), %eax	# rax -> eax, a[mid] -> eax
	cmpl	%eax, -32(%rbp) # logical comapirson of item and a[mid]
	je	.L17 # jump outside do while loop if item == a[mid]

	# bottom <= top
	movl	-8(%rbp), %eax # rbp-8 -> eax, bottom -> eax
	cmpl	-12(%rbp), %eax	# logical comparison between bottom and top
	jle	.L18 # jump to start of do while loop if bottom <= top
				# note that it has already been established that item != a[mid]

.L17:	# return mid;
	movl	-4(%rbp), %eax # rbp-4 -> eax, mid -> eax (store return value to eax)
	popq	%rbp	# pop the base pointer
	.cfi_def_cfa 7, 8
	ret # return from bsearch
	.cfi_endproc
	
.LFE2:
	.size	bsearch, .-bsearch
	.ident	"GCC: (Ubuntu 10.3.0-1ubuntu1~18.04~1) 10.3.0"
	.section	.note.GNU-stack,"",@progbits
