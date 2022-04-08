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
	li	t0, 0
	li	a0, 0
	j	.test_ID2_for_condition
.test_ID2_for_condition:
	li	ra, 200
	slt	ra, t0, ra
	bnez	ra, .test_ID2_for_suite
	j	.test_ID2_for_out
.test_ID2_for_suite:
	li	t1, 0
	j	.test_ID4_AndAnd_true
.test_ID4_AndAnd_true:
	li	t1, 1
	j	.test_ID4_AndAnd_out
.test_ID4_AndAnd_out:
	li	ra, 0
	bnez	t1, .test_ID5_AndAnd_true
	j	.test_ID5_AndAnd_out
.test_ID5_AndAnd_true:
	li	ra, 1
	j	.test_ID5_AndAnd_out
.test_ID5_AndAnd_out:
	bnez	ra, .test_ID6_if_true
	j	.test_ID6_if_false
.test_ID6_if_true:
	li	ra, 1
	add	t0, t0, ra
	li	ra, 1
	add	a0, a0, ra
	j	.test_ID6_if_out
.test_ID6_if_false:
	li	a0, -1
	j	.test_ID6_if_out
.test_ID6_if_out:
	j	.test_ID2_for_incr
.test_ID2_for_incr:
	li	ra, 1
	add	t0, t0, ra
	j	.test_ID2_for_condition
.test_ID2_for_out:
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
	j	.main_entry
.main_entry:
	call	__init
	call	test
	li	ra, 100
	sub	a0, a0, ra
	j	.main_return
.main_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

