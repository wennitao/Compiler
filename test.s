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

	.globl	unsigned_shl
	.p2align	2
	.type	unsigned_shl,@function
unsigned_shl:
.unsigned_shl_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.unsigned_shl_entry
.unsigned_shl_entry:
	sll	a0, a0, a1
	j	.unsigned_shl_return
.unsigned_shl_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	unsigned_shr
	.p2align	2
	.type	unsigned_shr,@function
unsigned_shr:
.unsigned_shr_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.unsigned_shr_entry
.unsigned_shr_entry:
	li	ra, 0
	slt	ra, a0, ra
	xori	ra, ra, 1
	bnez	ra, .unsigned_shr_ID8_if_true
	j	.unsigned_shr_ID8_if_false
.unsigned_shr_ID8_if_true:
	sra	a0, a0, a1
	j	.unsigned_shr_return
.unsigned_shr_ID8_if_false:
	li	ra, 31
	sub	ra, ra, a1
	li	t0, 1
	sll	ra, t0, ra
	li	t0, -2147483648
	xor	t0, a0, t0
	sra	t0, t0, a1
	or	a0, ra, t0
	j	.unsigned_shr_return
.unsigned_shr_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	rng
	.p2align	2
	.type	rng,@function
rng:
.rng_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.rng_entry
.rng_entry:
	j	.rng_call_unsigned_shl_0
.rng_call_unsigned_shl_0_out:
	xor	t0, a0, ra
	j	.rng_call_unsigned_shr_1
.rng_call_unsigned_shr_1_out:
	xor	t0, t0, ra
	j	.rng_call_unsigned_shl_2
.rng_call_unsigned_shl_2_out:
	xor	ra, t0, ra
	li	t0, 1073741823
	and	a0, ra, t0
	j	.rng_return
.rng_call_unsigned_shl_0:
	li	ra, 13
	sll	ra, a0, ra
	j	.rng_call_unsigned_shl_0_unsigned_shl_return
.rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.rng_call_unsigned_shl_0_out
.rng_call_unsigned_shr_1:
	li	ra, 0
	slt	ra, t0, ra
	xori	ra, ra, 1
	bnez	ra, .rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	ra, 17
	sra	ra, t0, ra
	j	.rng_call_unsigned_shr_1_unsigned_shr_return
.rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	ra, 31
	li	t1, 17
	sub	ra, ra, t1
	li	t1, 1
	sll	t1, t1, ra
	li	ra, -2147483648
	xor	ra, t0, ra
	li	t2, 17
	sra	ra, ra, t2
	or	ra, t1, ra
	j	.rng_call_unsigned_shr_1_unsigned_shr_return
.rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.rng_call_unsigned_shr_1_out
.rng_call_unsigned_shl_2:
	li	ra, 5
	sll	ra, t0, ra
	j	.rng_call_unsigned_shl_2_unsigned_shl_return
.rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.rng_call_unsigned_shl_2_out
.rng_return:
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
	mv	t0, a0
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	ra, a6
	mv	a6, a7
	lw	a7, 0(s0)
	lw	t1, 4(s0)
	j	.test_entry
.test_entry:
	xor	t2, t0, a0
	sltiu	t2, t2, 1
	bnez	t2, .test_ID23_if_true
	j	.test_ID23_if_false
.test_ID26_OrOr_false:
	xor	t2, a1, a2
	sltiu	t2, t2, 1
	xori	t2, t2, 1
	j	.test_ID26_OrOr_out
.test_ID26_OrOr_out:
	bnez	t2, .test_ID30_if_true
	j	.test_ID30_if_false
.test_ID30_if_true:
	mv	a4, a5
	mv	a5, ra
	sw	t1, 0(sp)
	sw	t0, 4(sp)
	call	test
	li	ra, 1
	add	a0, a0, ra
	j	.test_return
.test_ID30_if_false:
	li	t2, 1
	sub	a4, a5, t2
	li	t2, 2
	sub	a5, ra, t2
	sw	t1, 0(sp)
	sw	t0, 4(sp)
	call	test
	li	ra, 2
	add	a0, a0, ra
	j	.test_return
.test_ID23_if_true:
	xor	t2, a0, a1
	sltiu	t2, t2, 1
	xori	t2, t2, 1
	bnez	t2, .test_ID23_if_true_mid
	j	.test_ID26_OrOr_false
.test_ID23_if_true_mid:
	li	t2, 1
	j	.test_ID26_OrOr_out
.test_ID23_if_false:
	add	ra, t0, a0
	add	a0, ra, t0
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
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -20
	add	ra, s0, ra
	sw	s5, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s7, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s8, 0(ra)
	j	.main_entry
.main_entry:
	j	.main_call___init_3
.main_call___init_3_out:
	li	ra, 0
	mv	s7, ra
	li	ra, 19260817
	j	.main_ID2_for_suite
.main_ID2_for_suite:
	j	.main_call_rng_4
.main_call_rng_4_out:
	j	.main_call_rng_5
.main_call_rng_5_out:
	li	ra, 255
	and	t0, t2, ra
	li	ra, 255
	and	ra, t1, ra
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .main_ID14_if_true
	j	.main_ID2_for_out
.main_ID14_if_true:
	j	.main_call_rng_6
.main_call_rng_6_out:
	j	.main_call_rng_7
.main_call_rng_7_out:
	j	.main_call_rng_8
.main_call_rng_8_out:
	j	.main_call_rng_9
.main_call_rng_9_out:
	j	.main_call_rng_10
.main_call_rng_10_out:
	li	ra, 3
	and	t1, t0, ra
	li	ra, 28
	sra	a0, t0, ra
	li	ra, 1
	and	a1, t2, ra
	li	ra, 29
	sra	a2, t2, ra
	li	ra, 25
	sra	a3, a4, ra
	li	ra, 31
	and	a4, a4, ra
	li	ra, 15
	sra	a5, a6, ra
	li	ra, 32767
	and	a6, a6, ra
	li	ra, 15
	sra	a7, s5, ra
	li	ra, 32767
	and	t0, s5, ra
	j	.main_call_test_11
.main_call_test_11_out:
	xor	ra, s7, ra
	j	.main_ID14_if_out
.main_ID14_if_out:
	mv	s7, ra
	mv	ra, s5
	j	.main_ID2_for_suite
.main_ID2_for_out:
	li	ra, 19
	sub	a0, s7, ra
	j	.main_return
.main_call___init_3:
	j	.main_call___init_3___init_return
.main_call___init_3___init_return:
	j	.main_call___init_3_out
.main_call_rng_4:
	j	.main_call_rng_4_rng_call_unsigned_shl_0
.main_call_rng_4_rng_call_unsigned_shl_0_out:
	xor	t2, ra, t0
	j	.main_call_rng_4_rng_call_unsigned_shr_1
.main_call_rng_4_rng_call_unsigned_shr_1_out:
	xor	t0, t2, ra
	j	.main_call_rng_4_rng_call_unsigned_shl_2
.main_call_rng_4_rng_call_unsigned_shl_2_out:
	xor	ra, t0, ra
	li	t0, 1073741823
	and	t2, ra, t0
	j	.main_call_rng_4_rng_return
.main_call_rng_4_rng_call_unsigned_shl_0:
	li	t0, 13
	sll	t0, ra, t0
	j	.main_call_rng_4_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_4_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_4_rng_call_unsigned_shl_0_out
.main_call_rng_4_rng_call_unsigned_shr_1:
	li	ra, 0
	slt	ra, t2, ra
	xori	ra, ra, 1
	bnez	ra, .main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	ra, 17
	sra	ra, t2, ra
	j	.main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	t0, 31
	li	ra, 17
	sub	ra, t0, ra
	li	t0, 1
	sll	ra, t0, ra
	li	t0, -2147483648
	xor	t0, t2, t0
	li	t1, 17
	sra	t0, t0, t1
	or	ra, ra, t0
	j	.main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_4_rng_call_unsigned_shr_1_out
.main_call_rng_4_rng_call_unsigned_shl_2:
	li	ra, 5
	sll	ra, t0, ra
	j	.main_call_rng_4_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_4_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_4_rng_call_unsigned_shl_2_out
.main_call_rng_4_rng_return:
	j	.main_call_rng_4_out
.main_call_rng_5:
	j	.main_call_rng_5_rng_call_unsigned_shl_0
.main_call_rng_5_rng_call_unsigned_shl_0_out:
	xor	t0, t2, ra
	j	.main_call_rng_5_rng_call_unsigned_shr_1
.main_call_rng_5_rng_call_unsigned_shr_1_out:
	xor	t0, t0, ra
	j	.main_call_rng_5_rng_call_unsigned_shl_2
.main_call_rng_5_rng_call_unsigned_shl_2_out:
	xor	t0, t0, ra
	li	ra, 1073741823
	and	t1, t0, ra
	j	.main_call_rng_5_rng_return
.main_call_rng_5_rng_call_unsigned_shl_0:
	li	ra, 13
	sll	ra, t2, ra
	j	.main_call_rng_5_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_5_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_5_rng_call_unsigned_shl_0_out
.main_call_rng_5_rng_call_unsigned_shr_1:
	li	ra, 0
	slt	ra, t0, ra
	xori	ra, ra, 1
	bnez	ra, .main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	ra, 17
	sra	ra, t0, ra
	j	.main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	ra, 31
	li	t1, 17
	sub	t1, ra, t1
	li	ra, 1
	sll	t1, ra, t1
	li	ra, -2147483648
	xor	ra, t0, ra
	li	a0, 17
	sra	ra, ra, a0
	or	ra, t1, ra
	j	.main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_5_rng_call_unsigned_shr_1_out
.main_call_rng_5_rng_call_unsigned_shl_2:
	li	ra, 5
	sll	ra, t0, ra
	j	.main_call_rng_5_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_5_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_5_rng_call_unsigned_shl_2_out
.main_call_rng_5_rng_return:
	j	.main_call_rng_5_out
.main_call_rng_6:
	j	.main_call_rng_6_rng_call_unsigned_shl_0
.main_call_rng_6_rng_call_unsigned_shl_0_out:
	xor	t2, t1, ra
	j	.main_call_rng_6_rng_call_unsigned_shr_1
.main_call_rng_6_rng_call_unsigned_shr_1_out:
	xor	t0, t2, ra
	j	.main_call_rng_6_rng_call_unsigned_shl_2
.main_call_rng_6_rng_call_unsigned_shl_2_out:
	xor	t0, t0, ra
	li	ra, 1073741823
	and	t0, t0, ra
	j	.main_call_rng_6_rng_return
.main_call_rng_6_rng_call_unsigned_shl_0:
	li	ra, 13
	sll	ra, t1, ra
	j	.main_call_rng_6_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_6_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_6_rng_call_unsigned_shl_0_out
.main_call_rng_6_rng_call_unsigned_shr_1:
	li	ra, 0
	slt	ra, t2, ra
	xori	ra, ra, 1
	bnez	ra, .main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	ra, 17
	sra	ra, t2, ra
	j	.main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	t0, 31
	li	ra, 17
	sub	ra, t0, ra
	li	t0, 1
	sll	t0, t0, ra
	li	ra, -2147483648
	xor	ra, t2, ra
	li	t1, 17
	sra	ra, ra, t1
	or	ra, t0, ra
	j	.main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_6_rng_call_unsigned_shr_1_out
.main_call_rng_6_rng_call_unsigned_shl_2:
	li	ra, 5
	sll	ra, t0, ra
	j	.main_call_rng_6_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_6_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_6_rng_call_unsigned_shl_2_out
.main_call_rng_6_rng_return:
	j	.main_call_rng_6_out
.main_call_rng_7:
	j	.main_call_rng_7_rng_call_unsigned_shl_0
.main_call_rng_7_rng_call_unsigned_shl_0_out:
	xor	t2, t0, ra
	j	.main_call_rng_7_rng_call_unsigned_shr_1
.main_call_rng_7_rng_call_unsigned_shr_1_out:
	xor	ra, t2, ra
	j	.main_call_rng_7_rng_call_unsigned_shl_2
.main_call_rng_7_rng_call_unsigned_shl_2_out:
	xor	t1, ra, t1
	li	ra, 1073741823
	and	t2, t1, ra
	j	.main_call_rng_7_rng_return
.main_call_rng_7_rng_call_unsigned_shl_0:
	li	ra, 13
	sll	ra, t0, ra
	j	.main_call_rng_7_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_7_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_7_rng_call_unsigned_shl_0_out
.main_call_rng_7_rng_call_unsigned_shr_1:
	li	ra, 0
	slt	ra, t2, ra
	xori	ra, ra, 1
	bnez	ra, .main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	ra, 17
	sra	ra, t2, ra
	j	.main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	ra, 31
	li	t1, 17
	sub	t1, ra, t1
	li	ra, 1
	sll	ra, ra, t1
	li	t1, -2147483648
	xor	a0, t2, t1
	li	t1, 17
	sra	t1, a0, t1
	or	ra, ra, t1
	j	.main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_7_rng_call_unsigned_shr_1_out
.main_call_rng_7_rng_call_unsigned_shl_2:
	li	t1, 5
	sll	t1, ra, t1
	j	.main_call_rng_7_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_7_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_7_rng_call_unsigned_shl_2_out
.main_call_rng_7_rng_return:
	j	.main_call_rng_7_out
.main_call_rng_8:
	j	.main_call_rng_8_rng_call_unsigned_shl_0
.main_call_rng_8_rng_call_unsigned_shl_0_out:
	xor	a1, t2, ra
	j	.main_call_rng_8_rng_call_unsigned_shr_1
.main_call_rng_8_rng_call_unsigned_shr_1_out:
	xor	t1, a1, ra
	j	.main_call_rng_8_rng_call_unsigned_shl_2
.main_call_rng_8_rng_call_unsigned_shl_2_out:
	xor	ra, t1, ra
	li	t1, 1073741823
	and	a4, ra, t1
	j	.main_call_rng_8_rng_return
.main_call_rng_8_rng_call_unsigned_shl_0:
	li	ra, 13
	sll	ra, t2, ra
	j	.main_call_rng_8_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_8_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_8_rng_call_unsigned_shl_0_out
.main_call_rng_8_rng_call_unsigned_shr_1:
	li	ra, 0
	slt	ra, a1, ra
	xori	ra, ra, 1
	bnez	ra, .main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	ra, 17
	sra	ra, a1, ra
	j	.main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	ra, 31
	li	t1, 17
	sub	ra, ra, t1
	li	t1, 1
	sll	t1, t1, ra
	li	ra, -2147483648
	xor	a0, a1, ra
	li	ra, 17
	sra	ra, a0, ra
	or	ra, t1, ra
	j	.main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_8_rng_call_unsigned_shr_1_out
.main_call_rng_8_rng_call_unsigned_shl_2:
	li	ra, 5
	sll	ra, t1, ra
	j	.main_call_rng_8_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_8_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_8_rng_call_unsigned_shl_2_out
.main_call_rng_8_rng_return:
	j	.main_call_rng_8_out
.main_call_rng_9:
	j	.main_call_rng_9_rng_call_unsigned_shl_0
.main_call_rng_9_rng_call_unsigned_shl_0_out:
	xor	a0, a4, ra
	j	.main_call_rng_9_rng_call_unsigned_shr_1
.main_call_rng_9_rng_call_unsigned_shr_1_out:
	xor	t1, a0, ra
	j	.main_call_rng_9_rng_call_unsigned_shl_2
.main_call_rng_9_rng_call_unsigned_shl_2_out:
	xor	ra, t1, ra
	li	t1, 1073741823
	and	a6, ra, t1
	j	.main_call_rng_9_rng_return
.main_call_rng_9_rng_call_unsigned_shl_0:
	li	ra, 13
	sll	ra, a4, ra
	j	.main_call_rng_9_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_9_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_9_rng_call_unsigned_shl_0_out
.main_call_rng_9_rng_call_unsigned_shr_1:
	li	ra, 0
	slt	ra, a0, ra
	xori	ra, ra, 1
	bnez	ra, .main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	ra, 17
	sra	ra, a0, ra
	j	.main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	t1, 31
	li	ra, 17
	sub	ra, t1, ra
	li	t1, 1
	sll	t1, t1, ra
	li	ra, -2147483648
	xor	a1, a0, ra
	li	ra, 17
	sra	ra, a1, ra
	or	ra, t1, ra
	j	.main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_9_rng_call_unsigned_shr_1_out
.main_call_rng_9_rng_call_unsigned_shl_2:
	li	ra, 5
	sll	ra, t1, ra
	j	.main_call_rng_9_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_9_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_9_rng_call_unsigned_shl_2_out
.main_call_rng_9_rng_return:
	j	.main_call_rng_9_out
.main_call_rng_10:
	j	.main_call_rng_10_rng_call_unsigned_shl_0
.main_call_rng_10_rng_call_unsigned_shl_0_out:
	xor	a0, a6, ra
	j	.main_call_rng_10_rng_call_unsigned_shr_1
.main_call_rng_10_rng_call_unsigned_shr_1_out:
	xor	t1, a0, ra
	j	.main_call_rng_10_rng_call_unsigned_shl_2
.main_call_rng_10_rng_call_unsigned_shl_2_out:
	xor	t1, t1, ra
	li	ra, 1073741823
	and	s5, t1, ra
	j	.main_call_rng_10_rng_return
.main_call_rng_10_rng_call_unsigned_shl_0:
	li	ra, 13
	sll	ra, a6, ra
	j	.main_call_rng_10_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_10_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_10_rng_call_unsigned_shl_0_out
.main_call_rng_10_rng_call_unsigned_shr_1:
	li	ra, 0
	slt	ra, a0, ra
	xori	ra, ra, 1
	bnez	ra, .main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	ra, 17
	sra	ra, a0, ra
	j	.main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	t1, 31
	li	ra, 17
	sub	ra, t1, ra
	li	t1, 1
	sll	t1, t1, ra
	li	ra, -2147483648
	xor	ra, a0, ra
	li	a1, 17
	sra	ra, ra, a1
	or	ra, t1, ra
	j	.main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_10_rng_call_unsigned_shr_1_out
.main_call_rng_10_rng_call_unsigned_shl_2:
	li	ra, 5
	sll	ra, t1, ra
	j	.main_call_rng_10_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_10_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_10_rng_call_unsigned_shl_2_out
.main_call_rng_10_rng_return:
	j	.main_call_rng_10_out
.main_call_test_11:
	xor	ra, t1, a0
	sltiu	ra, ra, 1
	bnez	ra, .main_call_test_11_test_ID23_if_true
	j	.main_call_test_11_test_ID23_if_false
.main_call_test_11_test_ID26_OrOr_false:
	xor	ra, a1, a2
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	j	.main_call_test_11_test_ID26_OrOr_out
.main_call_test_11_test_ID26_OrOr_out:
	bnez	ra, .main_call_test_11_test_ID30_if_true
	j	.main_call_test_11_test_ID30_if_false
.main_call_test_11_test_ID30_if_true:
	sw	t0, 0(sp)
	sw	t1, 4(sp)
	call	test
	li	ra, 1
	add	ra, a0, ra
	j	.main_call_test_11_test_return
.main_call_test_11_test_ID30_if_false:
	li	ra, 1
	sub	a4, a4, ra
	li	ra, 2
	sub	a5, a5, ra
	sw	t0, 0(sp)
	sw	t1, 4(sp)
	call	test
	li	ra, 2
	add	ra, a0, ra
	j	.main_call_test_11_test_return
.main_call_test_11_test_ID23_if_true:
	xor	ra, a0, a1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .main_call_test_11_test_ID23_if_true_mid
	j	.main_call_test_11_test_ID26_OrOr_false
.main_call_test_11_test_ID23_if_true_mid:
	li	ra, 1
	j	.main_call_test_11_test_ID26_OrOr_out
.main_call_test_11_test_ID23_if_false:
	add	ra, t1, a0
	add	ra, ra, t1
	j	.main_call_test_11_test_return
.main_call_test_11_test_return:
	j	.main_call_test_11_out
.main_return:
	li	ra, -20
	add	ra, s0, ra
	lw	s5, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s7, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	s8, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

