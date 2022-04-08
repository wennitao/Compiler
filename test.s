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

	.globl	test
	.p2align	2
	.type	test,@function
test:
.test_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.test_entry
.test_entry:
	lw	a1, fuckLLVM_n
	li	ra, 0
	li	t0, 0
	j	.test_ID4_for_condition
.test_ID4_for_condition:
	slt	t2, ra, a1
	bnez	t2, .test_ID4_for_suite
	j	.test_ID4_for_out
.test_ID4_for_suite:
	li	t2, 0
	xor	t2, t1, t2
	sltiu	t2, t2, 1
	xori	t2, t2, 1
	bnez	t2, .test_ID453_if_true
	j	.test_ID453_if_out
.test_ID453_if_true:
	mv	t0, t1
	j	.test_ID453_if_out
.test_ID453_if_out:
	j	.test_ID4_for_incr
.test_ID4_for_incr:
	li	t2, 1
	add	ra, ra, t2
	j	.test_ID4_for_condition
.test_ID4_for_out:
	j	.test_return
.test_return:
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
	li	ra, -12
	add	ra, s0, ra
	sw	s3, 0(ra)
	j	.main_entry
.main_entry:
	call	__init
	call	test
	mv	s3, a0
	mv	a0, s3
	call	printlnInt
	call	test
	add	t0, s3, a0
	li	ra, 300
	sub	a0, t0, ra
	call	printlnInt
	j	.main_return
.main_return:
	li	a0, 0
	li	ra, -12
	add	ra, s0, ra
	lw	s3, 0(ra)
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

