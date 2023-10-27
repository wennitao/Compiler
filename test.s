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

	.globl	partition
	.p2align	2
	.type	partition,@function
partition:
.partition_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.partition_entry
.partition_entry:
	li	ra, 4
	mul	ra, a2, ra
	add	ra, a0, ra
	lw	t1, 0(ra)
	li	ra, 1
	sub	ra, a1, ra
	j	.partition_ID16_for_condition
.partition_ID16_for_condition:
	slt	t0, a1, a2
	bnez	t0, .partition_ID16_for_suite
	j	.partition_ID16_for_out
.partition_ID16_for_suite:
	li	t0, 4
	mul	t0, a1, t0
	add	t0, a0, t0
	lw	t0, 0(t0)
	slt	t0, t1, t0
	xori	t0, t0, 1
	bnez	t0, .partition_ID25_if_true
	j	.partition_ID16_for_suite_mid
.partition_ID16_for_suite_mid:
	j	.partition_ID25_if_out
.partition_ID25_if_true:
	addi	ra, ra, 1
	li	t0, 4
	mul	t0, ra, t0
	add	t0, a0, t0
	lw	a3, 0(t0)
	li	t0, 4
	mul	t0, ra, t0
	add	t2, a0, t0
	li	t0, 4
	mul	t0, a1, t0
	add	t0, a0, t0
	lw	t0, 0(t0)
	sw	t0, 0(t2)
	li	t0, 4
	mul	t0, a1, t0
	add	t0, a0, t0
	sw	a3, 0(t0)
	j	.partition_ID25_if_out
.partition_ID25_if_out:
	j	.partition_ID16_for_incr
.partition_ID16_for_incr:
	addi	a1, a1, 1
	j	.partition_ID16_for_condition
.partition_ID16_for_out:
	addi	t0, ra, 1
	li	t1, 4
	mul	t0, t0, t1
	add	t0, a0, t0
	lw	t2, 0(t0)
	addi	t0, ra, 1
	li	t1, 4
	mul	t0, t0, t1
	add	t1, a0, t0
	li	t0, 4
	mul	t0, a2, t0
	add	t0, a0, t0
	lw	t0, 0(t0)
	sw	t0, 0(t1)
	li	t0, 4
	mul	t0, a2, t0
	add	t0, a0, t0
	sw	t2, 0(t0)
	addi	a0, ra, 1
	j	.partition_return
.partition_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	quick_sort
	.p2align	2
	.type	quick_sort,@function
quick_sort:
.quick_sort_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -16
	add	ra, s0, ra
	sw	a0, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	a2, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	s1, 0(ra)
	j	.quick_sort_entry
.quick_sort_entry:
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	slt	ra, a1, ra
	xori	ra, ra, 1
	bnez	ra, .quick_sort_return
	j	.quick_sort_ID9_if_out
.quick_sort_ID9_if_out:
	li	ra, -16
	add	ra, s0, ra
	lw	t1, 0(ra)
	li	t0, 4
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	mul	ra, ra, t0
	add	ra, t1, ra
	lw	a2, 0(ra)
	li	ra, 1
	sub	ra, a1, ra
	mv	t0, a1
	j	.quick_sort_call_partition_0_partition_ID16_for_condition
.quick_sort_call_partition_0_partition_ID16_for_condition:
	li	t2, -12
	add	t2, s0, t2
	lw	t2, 0(t2)
	slt	t2, t0, t2
	bnez	t2, .quick_sort_call_partition_0_partition_ID16_for_suite
	j	.quick_sort_call_partition_0_partition_ID16_for_out
.quick_sort_call_partition_0_partition_ID16_for_suite:
	li	t2, 4
	mul	t2, t0, t2
	add	t2, t1, t2
	lw	t2, 0(t2)
	slt	t2, a2, t2
	xori	t2, t2, 1
	bnez	t2, .quick_sort_call_partition_0_partition_ID25_if_true
	j	.quick_sort_call_partition_0_partition_ID16_for_suite_mid
.quick_sort_call_partition_0_partition_ID16_for_suite_mid:
	j	.quick_sort_call_partition_0_partition_ID25_if_out
.quick_sort_call_partition_0_partition_ID25_if_true:
	addi	ra, ra, 1
	li	t2, 4
	mul	t2, ra, t2
	add	t2, t1, t2
	lw	a3, 0(t2)
	li	t2, 4
	mul	t2, ra, t2
	add	a0, t1, t2
	li	t2, 4
	mul	t2, t0, t2
	add	t2, t1, t2
	lw	t2, 0(t2)
	sw	t2, 0(a0)
	li	t2, 4
	mul	t2, t0, t2
	add	t2, t1, t2
	sw	a3, 0(t2)
	j	.quick_sort_call_partition_0_partition_ID25_if_out
.quick_sort_call_partition_0_partition_ID25_if_out:
	j	.quick_sort_call_partition_0_partition_ID16_for_incr
.quick_sort_call_partition_0_partition_ID16_for_incr:
	addi	t0, t0, 1
	j	.quick_sort_call_partition_0_partition_ID16_for_condition
.quick_sort_call_partition_0_partition_ID16_for_out:
	addi	t0, ra, 1
	li	t2, 4
	mul	t0, t0, t2
	add	t0, t1, t0
	lw	a0, 0(t0)
	addi	t2, ra, 1
	li	t0, 4
	mul	t0, t2, t0
	add	t0, t1, t0
	li	t2, 4
	li	a2, -12
	add	a2, s0, a2
	lw	a2, 0(a2)
	mul	t2, a2, t2
	add	t2, t1, t2
	lw	t2, 0(t2)
	sw	t2, 0(t0)
	li	t0, 4
	li	t2, -12
	add	t2, s0, t2
	lw	t2, 0(t2)
	mul	t0, t2, t0
	add	t0, t1, t0
	sw	a0, 0(t0)
	addi	s1, ra, 1
	li	ra, -16
	add	ra, s0, ra
	lw	a0, 0(ra)
	li	ra, 1
	sub	a2, s1, ra
	call	quick_sort
	li	ra, -16
	add	ra, s0, ra
	lw	a0, 0(ra)
	addi	a1, s1, 1
	li	ra, -12
	add	ra, s0, ra
	lw	a2, 0(ra)
	call	quick_sort
	j	.quick_sort_return
.quick_sort_return:
	li	ra, -20
	add	ra, s0, ra
	lw	s1, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	quick_sort_inf
	.p2align	2
	.type	quick_sort_inf,@function
quick_sort_inf:
.quick_sort_inf_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -20
	add	ra, s0, ra
	sw	s6, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	sw	s7, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s9, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s11, 0(ra)
	j	.quick_sort_inf_entry
.quick_sort_inf_entry:
	mv	s6, a0
	li	ra, -1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	lw	t0, 0(ra)
	li	ra, 1
	sub	s7, t0, ra
	j	.quick_sort_inf_call_quick_sort_1
.quick_sort_inf_call_quick_sort_1_out:
	j	.quick_sort_inf_return
.quick_sort_inf_call_quick_sort_1_quick_sort_entry:
	li	ra, 0
	slt	ra, ra, s7
	xori	ra, ra, 1
	bnez	ra, .quick_sort_inf_call_quick_sort_1_quick_sort_return
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_ID9_if_out
.quick_sort_inf_call_quick_sort_1_quick_sort_ID9_if_out:
	li	ra, 4
	mul	ra, s7, ra
	add	ra, s6, ra
	lw	t1, 0(ra)
	li	t0, 0
	li	ra, 1
	sub	ra, t0, ra
	li	t0, 0
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_condition
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_condition:
	slt	t2, t0, s7
	bnez	t2, .quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_out
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite:
	li	t2, 4
	mul	t2, t0, t2
	add	t2, s6, t2
	lw	t2, 0(t2)
	slt	t2, t1, t2
	xori	t2, t2, 1
	bnez	t2, .quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_true
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite_mid
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite_mid:
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_out
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_true:
	addi	ra, ra, 1
	li	t2, 4
	mul	t2, ra, t2
	add	t2, s6, t2
	lw	a0, 0(t2)
	li	t2, 4
	mul	t2, ra, t2
	add	a1, s6, t2
	li	t2, 4
	mul	t2, t0, t2
	add	t2, s6, t2
	lw	t2, 0(t2)
	sw	t2, 0(a1)
	li	t2, 4
	mul	t2, t0, t2
	add	t2, s6, t2
	sw	a0, 0(t2)
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_out
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_out:
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_incr
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_incr:
	addi	t0, t0, 1
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_condition
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_out:
	addi	t0, ra, 1
	li	t1, 4
	mul	t0, t0, t1
	add	t0, s6, t0
	lw	t2, 0(t0)
	addi	t0, ra, 1
	li	t1, 4
	mul	t0, t0, t1
	add	t1, s6, t0
	li	t0, 4
	mul	t0, s7, t0
	add	t0, s6, t0
	lw	t0, 0(t0)
	sw	t0, 0(t1)
	li	t0, 4
	mul	t0, s7, t0
	add	t0, s6, t0
	sw	t2, 0(t0)
	addi	s9, ra, 1
	mv	a0, s6
	li	ra, 1
	sub	a2, s9, ra
	li	a1, 0
	call	quick_sort
	mv	a0, s6
	addi	a1, s9, 1
	mv	a2, s7
	call	quick_sort
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_return
.quick_sort_inf_call_quick_sort_1_quick_sort_return:
	j	.quick_sort_inf_call_quick_sort_1_out
.quick_sort_inf_call_quick_sort_1:
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_entry
.quick_sort_inf_return:
	li	ra, -20
	add	ra, s0, ra
	lw	s6, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	lw	s7, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	s9, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s11, 0(ra)
	li	t0, 32
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
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -24
	add	ra, s0, ra
	sw	s1, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	s2, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s3, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s5, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	sw	s10, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	sw	s11, 0(ra)
	j	.main_entry
.main_entry:
	j	.main_call___init_2
.main_ID13_for_condition:
	slt	ra, s3, s2
	bnez	ra, .main_ID13_for_suite
	j	.main_ID13_for_out
.main_ID13_for_suite:
	li	ra, 4
	mul	ra, s3, ra
	add	s5, s1, ra
	call	getInt
	sw	a0, 0(s5)
	addi	s3, s3, 1
	j	.main_ID13_for_condition
.main_ID13_for_out:
	mv	s3, s1
	mv	ra, s3
	li	t1, -1
	li	t0, 4
	mul	t0, t1, t0
	add	ra, ra, t0
	lw	ra, 0(ra)
	li	t0, 1
	sub	s5, ra, t0
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_entry
.main_ID25_for_condition:
	slt	ra, s3, s2
	bnez	ra, .main_ID25_for_suite
	j	.main_ID25_for_out
.main_ID25_for_suite:
	li	ra, 4
	mul	ra, s3, ra
	add	ra, s1, ra
	lw	a0, 0(ra)
	call	toString
	la	a1, v_.str.0
	call	string_add
	call	print
	addi	s3, s3, 1
	j	.main_ID25_for_condition
.main_ID25_for_out:
	la	a0, v_.str.1
	call	println
	j	.main_return
.main_call___init_2:
	call	getInt
	mv	s2, a0
	li	ra, 4
	mul	ra, s2, ra
	addi	a0, ra, 4
	call	malloc
	sw	s2, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	s1, a0, ra
	li	s3, 0
	j	.main_ID13_for_condition
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_out:
	li	s3, 0
	j	.main_ID25_for_condition
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_entry:
	li	ra, 0
	slt	ra, ra, s5
	xori	ra, ra, 1
	bnez	ra, .main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_return
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_ID9_if_out
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_ID9_if_out:
	li	ra, 4
	mul	ra, s5, ra
	add	ra, s3, ra
	lw	a0, 0(ra)
	li	t0, 0
	li	ra, 1
	sub	ra, t0, ra
	li	t0, 0
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_condition
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_condition:
	slt	t1, t0, s5
	bnez	t1, .main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_out
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite:
	li	t1, 4
	mul	t1, t0, t1
	add	t1, s3, t1
	lw	t1, 0(t1)
	slt	t1, a0, t1
	xori	t1, t1, 1
	bnez	t1, .main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_true
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite_mid
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite_mid:
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_out
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_true:
	addi	ra, ra, 1
	li	t1, 4
	mul	t1, ra, t1
	add	t1, s3, t1
	lw	a1, 0(t1)
	li	t1, 4
	mul	t1, ra, t1
	add	t2, s3, t1
	li	t1, 4
	mul	t1, t0, t1
	add	t1, s3, t1
	lw	t1, 0(t1)
	sw	t1, 0(t2)
	li	t1, 4
	mul	t1, t0, t1
	add	t1, s3, t1
	sw	a1, 0(t1)
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_out
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_out:
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_incr
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_incr:
	addi	t0, t0, 1
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_condition
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_out:
	addi	t0, ra, 1
	li	t1, 4
	mul	t0, t0, t1
	add	t0, s3, t0
	lw	t1, 0(t0)
	addi	t0, ra, 1
	li	t2, 4
	mul	t0, t0, t2
	add	t2, s3, t0
	li	t0, 4
	mul	t0, s5, t0
	add	t0, s3, t0
	lw	t0, 0(t0)
	sw	t0, 0(t2)
	li	t0, 4
	mul	t0, s5, t0
	add	t0, s3, t0
	sw	t1, 0(t0)
	addi	s10, ra, 1
	mv	a0, s3
	li	ra, 1
	sub	a2, s10, ra
	li	a1, 0
	call	quick_sort
	mv	a0, s3
	addi	a1, s10, 1
	mv	a2, s5
	call	quick_sort
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_return
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_return:
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_out
.main_return:
	li	a0, 0
	li	ra, -24
	add	ra, s0, ra
	lw	s1, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	s2, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	s3, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s5, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	lw	s10, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	lw	s11, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.rodata
	.type	v_.str.0,@object
v_.str.0:
	.asciz	"  "
	.size	v_.str.0, 2

	.section	.rodata
	.type	v_.str.1,@object
v_.str.1:
	.asciz	" "
	.size	v_.str.1, 1

