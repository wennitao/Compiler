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
	li	a0, 1
	li	ra, 0
	j	.main_ID4_while_condition
.main_ID4_while_condition:
	li	t0, 100
	slt	t0, ra, t0
	bnez	t0, .main_ID6_while_suite
	j	.main_ID6_while_out
.main_ID7_if_true:
	li	t0, 1
	add	t0, ra, t0
	li	ra, 1
	j	.main_ID7_if_out
.main_ID7_if_false:
	li	t0, 2
	add	t0, ra, t0
	j	.main_ID7_if_out
.main_ID7_if_out:
	mv	a0, ra
	mv	ra, t0
	j	.main_ID4_while_condition
.main_ID6_while_suite:
	li	t0, 20
	slt	t0, a0, t0
	bnez	t0, .main_ID7_if_true
	j	.main_ID7_if_false
.main_ID6_while_out:
	call	printlnInt
	j	.main_return
.main_return:
	li	a0, 0
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

