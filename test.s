	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.__init_entry
.__init_entry:
	j	.__init_return
.__init_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.main_entry
.main_entry:
	call	__init
	call	getInt
	li	ra, 0
	sw	a0, fuckLLVM_n, ra
	call	getInt
	li	ra, 0
	sw	a0, fuckLLVM_p, ra
	call	getInt
	li	ra, 0
	sw	a0, fuckLLVM_k, ra
	lw	ra, fuckLLVM_p
	lw	t0, fuckLLVM_k
	sub	t0, ra, t0
	li	ra, 1
	slt	ra, ra, t0
	bnez	ra, .main_ID7_if_true
	j	.main_ID7_if_out
.main_ID7_if_true:
	la	a0, fuckLLVM_.str.0
	call	print
	j	.main_ID7_if_out
.main_ID7_if_out:
	lw	ra, fuckLLVM_p
	lw	t0, fuckLLVM_k
	sub	t0, ra, t0
	li	ra, 0
	sw	t0, fuckLLVM_i, ra
	j	.main_ID12_for_condition
.main_ID12_for_condition:
	lw	t1, fuckLLVM_i
	lw	t0, fuckLLVM_p
	lw	ra, fuckLLVM_k
	add	ra, t0, ra
	slt	ra, ra, t1
	xori	ra, ra, 1
	bnez	ra, .main_ID12_for_suite
	j	.main_ID12_for_out
.main_ID12_for_suite:
	lw	t0, fuckLLVM_i
	li	ra, 1
	slt	ra, t0, ra
	xori	ra, ra, 1
	bnez	ra, .main_ID19_AndAnd_true
	li	ra, 0
	j	.main_ID19_AndAnd_out
.main_ID19_AndAnd_true:
	lw	t0, fuckLLVM_i
	lw	ra, fuckLLVM_n
	slt	ra, ra, t0
	xori	ra, ra, 1
	j	.main_ID19_AndAnd_out
.main_ID19_AndAnd_out:
	bnez	ra, .main_ID23_if_true
	j	.main_ID12_for_incr
.main_ID26_if_true:
	la	a0, fuckLLVM_.str.1
	call	print
	lw	a0, fuckLLVM_i
	call	toString
	call	print
	la	a0, fuckLLVM_.str.2
	call	print
	j	.main_ID12_for_incr
.main_ID26_if_false:
	lw	a0, fuckLLVM_i
	call	printInt
	la	a0, fuckLLVM_.str.3
	call	print
	j	.main_ID12_for_incr
.main_ID23_if_true:
	lw	t0, fuckLLVM_i
	lw	ra, fuckLLVM_p
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .main_ID26_if_true
	j	.main_ID26_if_false
.main_ID12_for_incr:
	lw	ra, fuckLLVM_i
	li	t0, 1
	add	t0, ra, t0
	li	ra, 0
	sw	t0, fuckLLVM_i, ra
	j	.main_ID12_for_condition
.main_ID12_for_out:
	lw	t0, fuckLLVM_p
	lw	ra, fuckLLVM_k
	add	ra, t0, ra
	lw	t0, fuckLLVM_n
	slt	ra, ra, t0
	bnez	ra, .main_ID45_if_true
	j	.main_return
.main_ID45_if_true:
	la	a0, fuckLLVM_.str.4
	call	print
	j	.main_return
.main_return:
	li	a0, 0
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.sbss
	.type	fuckLLVM_n,@object
	.globl	fuckLLVM_n
	.p2align	2
fuckLLVM_n:
	.word	0
	.size	fuckLLVM_n, 8

	.section	.sbss
	.type	fuckLLVM_p,@object
	.globl	fuckLLVM_p
	.p2align	2
fuckLLVM_p:
	.word	0
	.size	fuckLLVM_p, 8

	.section	.sbss
	.type	fuckLLVM_k,@object
	.globl	fuckLLVM_k
	.p2align	2
fuckLLVM_k:
	.word	0
	.size	fuckLLVM_k, 8

	.section	.sbss
	.type	fuckLLVM_i,@object
	.globl	fuckLLVM_i
	.p2align	2
fuckLLVM_i:
	.word	0
	.size	fuckLLVM_i, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"<<  "
	.size	fuckLLVM_.str.0, 4

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"( "
	.size	fuckLLVM_.str.1, 2

	.section	.rodata
	.type	fuckLLVM_.str.2,@object
fuckLLVM_.str.2:
	.asciz	")  "
	.size	fuckLLVM_.str.2, 3

	.section	.rodata
	.type	fuckLLVM_.str.3,@object
fuckLLVM_.str.3:
	.asciz	"  "
	.size	fuckLLVM_.str.3, 2

	.section	.rodata
	.type	fuckLLVM_.str.4,@object
fuckLLVM_.str.4:
	.asciz	">>  "
	.size	fuckLLVM_.str.4, 4

