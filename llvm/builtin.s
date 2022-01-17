	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 12, 1
	.globl	_print                          ## -- Begin function print
	.p2align	4, 0x90
_print:                                 ## @print
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_println                        ## -- Begin function println
	.p2align	4, 0x90
_println:                               ## @println
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printInt                       ## -- Begin function printInt
	.p2align	4, 0x90
_printInt:                              ## @printInt
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %esi
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printlnInt                     ## -- Begin function printlnInt
	.p2align	4, 0x90
_printlnInt:                            ## @printlnInt
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %esi
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getString                      ## -- Begin function getString
	.p2align	4, 0x90
_getString:                             ## @getString
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1024, %edi                     ## imm = 0x400
	callq	_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_scanf
	movq	-8(%rbp), %rcx
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
	movq	%rcx, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getInt                         ## -- Begin function getInt
	.p2align	4, 0x90
_getInt:                                ## @getInt
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.2(%rip), %rdi
	leaq	-4(%rbp), %rsi
	movb	$0, %al
	callq	_scanf
	movl	-4(%rbp), %ecx
	movl	%eax, -8(%rbp)                  ## 4-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_toString                       ## -- Begin function toString
	.p2align	4, 0x90
_toString:                              ## @toString
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	$15, %edi
	callq	_malloc
	xorl	%esi, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %r8d
	movq	$-1, %rdx
	leaq	L_.str.2(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movq	-16(%rbp), %rcx
	movl	%eax, -20(%rbp)                 ## 4-byte Spill
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_length                         ## -- Begin function length
	.p2align	4, 0x90
_length:                                ## @length
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	LBB7_4
## %bb.2:                               ##   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
## %bb.3:                               ##   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	LBB7_1
LBB7_4:
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_substring                      ## -- Begin function substring
	.p2align	4, 0x90
_substring:                             ## @substring
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -28(%rbp)
LBB8_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	LBB8_4
## %bb.2:                               ##   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %esi
	subl	-12(%rbp), %esi
	movslq	%esi, %rcx
	movb	%dl, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB8_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB8_1
LBB8_4:
	movq	-24(%rbp), %rax
	movl	-16(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	movb	$0, (%rax,%rdx)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_parseInt                       ## -- Begin function parseInt
	.p2align	4, 0x90
_parseInt:                              ## @parseInt
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movb	$0, -13(%rbp)
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB9_2
## %bb.1:
	movb	$1, -13(%rbp)
LBB9_2:
	jmp	LBB9_3
LBB9_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	LBB9_6
## %bb.4:                               ##   in Loop: Header=BB9_3 Depth=1
	imull	$10, -12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx), %edx
	subl	$48, %edx
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
## %bb.5:                               ##   in Loop: Header=BB9_3 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	LBB9_3
LBB9_6:
	testb	$1, -13(%rbp)
	je	LBB9_8
## %bb.7:
	xorl	%eax, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)                 ## 4-byte Spill
	jmp	LBB9_9
LBB9_8:
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)                 ## 4-byte Spill
LBB9_9:
	movl	-20(%rbp), %eax                 ## 4-byte Reload
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_ord                            ## -- Begin function ord
	.p2align	4, 0x90
_ord:                                   ## @ord
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_string_add                     ## -- Begin function string_add
	.p2align	4, 0x90
_string_add:                            ## @string_add
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	callq	_strlen
	movq	-32(%rbp), %rcx                 ## 8-byte Reload
	addq	%rax, %rcx
	addq	$1, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	$-1, %rdx
	callq	___strcat_chk
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	$-1, %rdx
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	callq	___strcat_chk
	movq	-24(%rbp), %rcx
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_string_equal                   ## -- Begin function string_equal
	.p2align	4, 0x90
_string_equal:                          ## @string_equal
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_string_notEqual                ## -- Begin function string_notEqual
	.p2align	4, 0x90
_string_notEqual:                       ## @string_notEqual
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_string_less                    ## -- Begin function string_less
	.p2align	4, 0x90
_string_less:                           ## @string_less
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_string_lessEqual               ## -- Begin function string_lessEqual
	.p2align	4, 0x90
_string_lessEqual:                      ## @string_lessEqual
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_string_greater                 ## -- Begin function string_greater
	.p2align	4, 0x90
_string_greater:                        ## @string_greater
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_string_greaterEqual            ## -- Begin function string_greaterEqual
	.p2align	4, 0x90
_string_greaterEqual:                   ## @string_greaterEqual
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s"

L_.str.1:                               ## @.str.1
	.asciz	"%s\n"

L_.str.2:                               ## @.str.2
	.asciz	"%d"

L_.str.3:                               ## @.str.3
	.asciz	"%d\n"

.subsections_via_symbols
