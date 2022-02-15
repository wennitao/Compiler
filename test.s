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
	j	.__init_alloca
.__init_alloca:
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
	j	.test_alloca
.test_alloca:
	j	.test_entry
.test_entry:
	li	a0, 0
	li	a1, 1
	li	a2, 2
	li	ra, 0
	j	.test_ID4_for_condition
.test_ID4_for_condition:
	li	t0, 200
	slt	t0, ra, t0
	bnez	t0, .test_ID4_for_suite
	j	.test_ID4_for_out
.test_ID4_for_suite:
	li	t1, 3
	li	t0, 0
	bnez	t1, .test_ID6_AndAnd_true
	j	.test_ID6_AndAnd_out
.test_ID6_AndAnd_true:
	li	t0, 1
	j	.test_ID6_AndAnd_out
.test_ID6_AndAnd_out:
	li	t1, 0
	bnez	t0, .test_ID7_AndAnd_true
	j	.test_ID7_AndAnd_out
.test_ID7_AndAnd_true:
	li	t1, 5050
	j	.test_ID7_AndAnd_out
.test_ID7_AndAnd_out:
	bnez	t1, .test_ID8_if_true
	j	.test_ID8_if_false
.test_ID70_if_true:
	li	t0, 1
	add	ra, ra, t0
	li	t0, 1
	add	a0, a0, t0
	j	.test_ID70_if_out
.test_ID70_if_out:
	j	.test_ID21_if_out
.test_ID21_if_true:
	mv	t0, t1
	mul	t0, t0, t1
	mul	t0, t0, t1
	mul	t0, t0, t1
	mul	t0, t0, t1
	mul	t0, t0, t1
	mul	t0, t0, t1
	mul	t0, t0, t1
	mul	t0, t0, t1
	mul	a3, t0, t1
	mv	t0, t2
	add	t0, t0, t2
	add	a4, t0, t1
	mv	t0, t2
	add	t0, t2, t0
	add	t0, t0, t1
	mul	a4, a4, t0
	mv	t0, t2
	add	t0, t2, t0
	add	t0, t0, t1
	mul	a4, a4, t0
	mv	t0, t2
	add	t0, t2, t0
	add	t0, t0, t1
	mul	a4, a4, t0
	mv	t0, t2
	add	t0, t0, t2
	add	t0, t0, t1
	mul	t0, a4, t0
	xor	t0, a3, t0
	sltiu	t0, t0, 1
	bnez	t0, .test_ID70_if_true
	j	.test_ID70_if_out
.test_ID21_if_out:
	j	.test_ID8_if_out
.test_ID8_if_true:
	mv	t2, a1
	mv	t1, a2
	add	t0, t2, t1
	add	a3, t2, t1
	xor	t0, a3, t0
	sltiu	t0, t0, 1
	bnez	t0, .test_ID21_if_true
	j	.test_ID21_if_out
.test_ID8_if_false:
	li	a0, -1
	j	.test_ID8_if_out
.test_ID8_if_out:
	j	.test_ID4_for_incr
.test_ID4_for_incr:
	li	t0, 1
	add	ra, ra, t0
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

	.globl	naivedce
	.p2align	2
	.type	naivedce,@function
naivedce:
.naivedce_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.naivedce_alloca
.naivedce_alloca:
	j	.naivedce_entry
.naivedce_entry:
	li	ra, 114514
	li	t0, 0
	bnez	t0, .naivedce_ID1_if_true
	j	.naivedce_ID1_if_out
.naivedce_ID1_if_true:
	li	t0, 234
	mul	t1, ra, t0
	li	t0, 111
	add	t1, t1, t0
	li	t0, 0
	add	t1, t1, t0
	li	t0, 7
	add	t1, t1, t0
	li	t0, 0
	add	t1, t1, t0
	li	t0, 0
	add	t0, t1, t0
	li	t1, 7
	add	t1, t0, t1
	li	t0, 0
	add	t0, t1, t0
	li	t1, 0
	add	t0, t0, t1
	li	t1, 7
	add	t1, t0, t1
	li	t0, 0
	add	t1, t1, t0
	li	t0, 12719578
	xor	t0, t1, t0
	li	t1, 12719578
	xor	t2, t0, t1
	lw	t1, fuckLLVM_N
	li	t0, 508104
	add	t1, t1, t0
	li	t0, 111
	add	t0, t1, t0
	li	t1, 0
	add	t1, t0, t1
	li	t0, 7
	add	t0, t1, t0
	li	t1, 0
	add	t0, t0, t1
	li	t1, 0
	add	t1, t0, t1
	li	t0, 7
	add	t1, t1, t0
	li	t0, 0
	add	a0, t1, t0
	li	t0, 5
	div	t1, ra, t0
	li	t0, 6
	mul	t0, t1, t0
	add	t0, a0, t0
	li	t1, 7
	add	t0, t0, t1
	li	t1, 0
	add	t0, t0, t1
	xor	t0, t2, t0
	li	t1, 12719578
	xor	t0, t0, t1
	li	t1, 12719578
	xor	t1, t0, t1
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t0, t1, t0
	li	t1, 12719578
	xor	t0, t0, t1
	li	t1, 12719578
	xor	t0, t0, t1
	li	t1, 12719578
	xor	t1, t0, t1
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t0, t1, t0
	li	t1, 12719578
	xor	t0, t0, t1
	li	t1, 12719578
	xor	t1, t0, t1
	li	t0, 12
	mul	t0, ra, t0
	li	ra, 12211342
	add	ra, ra, t0
	xor	ra, t1, ra
	li	t0, 11
	add	ra, ra, t0
	li	ra, 0
	li	t0, 234
	mul	t0, ra, t0
	li	t1, 111
	add	t1, t0, t1
	li	t0, 0
	add	t1, t1, t0
	li	t0, 7
	add	t0, t1, t0
	li	t1, 0
	add	t0, t0, t1
	li	t1, 0
	add	t0, t0, t1
	li	t1, 7
	add	t0, t0, t1
	li	t1, 0
	add	t1, t0, t1
	li	t0, 0
	add	t1, t1, t0
	li	t0, 7
	add	t0, t1, t0
	li	t1, 0
	add	t0, t0, t1
	li	t1, 12719578
	xor	t0, t0, t1
	li	t1, 12719578
	xor	t2, t0, t1
	lw	t0, fuckLLVM_N
	li	t1, 508104
	add	t0, t0, t1
	li	t1, 111
	add	t1, t0, t1
	li	t0, 0
	add	t0, t1, t0
	li	t1, 7
	add	t0, t0, t1
	li	t1, 0
	add	t1, t0, t1
	li	t0, 0
	add	t0, t1, t0
	li	t1, 7
	add	t0, t0, t1
	li	t1, 0
	add	t1, t0, t1
	li	t0, 5
	div	a0, ra, t0
	li	t0, 6
	mul	t0, a0, t0
	add	t1, t1, t0
	li	t0, 7
	add	t1, t1, t0
	li	t0, 0
	add	t0, t1, t0
	xor	t0, t2, t0
	li	t1, 12719578
	xor	t1, t0, t1
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t0, t1, t0
	li	t1, 12719578
	xor	t0, t0, t1
	li	t1, 12719578
	xor	t1, t0, t1
	li	t0, 12719578
	xor	t0, t1, t0
	li	t1, 12719578
	xor	t0, t0, t1
	li	t1, 12719578
	xor	t1, t0, t1
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t0, t1, t0
	li	t1, 12719578
	xor	t1, t0, t1
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t0, t1, t0
	li	t1, 12719578
	xor	t0, t0, t1
	li	t1, 12719578
	xor	t1, t0, t1
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12719578
	xor	t1, t1, t0
	li	t0, 12
	mul	ra, ra, t0
	li	t0, 12211342
	add	ra, t0, ra
	xor	ra, t1, ra
	li	t0, 11
	add	ra, ra, t0
	li	ra, 0
	j	.naivedce_ID1_if_out
.naivedce_ID1_if_out:
	mv	t0, ra
	add	t0, t0, ra
	add	t0, t0, ra
	add	ra, t0, ra
	li	ra, 0
	li	t0, 1
	add	t0, ra, t0
	li	ra, 1
	add	ra, t0, ra
	li	t1, 2
	mul	a1, ra, t1
	li	ra, 100000
	sub	t1, a1, ra
	li	a0, 0
	li	t2, 1
	li	ra, 1
	j	.naivedce_ID131_for_condition
.naivedce_ID131_for_condition:
	li	a2, 100
	slt	a2, a2, ra
	xori	a2, a2, 1
	bnez	a2, .naivedce_ID131_for_suite
	j	.naivedce_ID131_for_out
.naivedce_ID131_for_suite:
	add	a0, a0, ra
	j	.naivedce_ID131_for_incr
.naivedce_ID131_for_incr:
	li	a2, 1
	add	ra, ra, a2
	j	.naivedce_ID131_for_condition
.naivedce_ID131_for_out:
	j	.naivedce_ID138_for_condition
.naivedce_ID138_for_condition:
	li	a2, 1
	slt	a2, ra, a2
	xori	a2, a2, 1
	bnez	a2, .naivedce_ID138_for_suite
	j	.naivedce_ID138_for_out
.naivedce_ID138_for_suite:
	add	a0, a0, ra
	j	.naivedce_ID138_for_incr
.naivedce_ID138_for_incr:
	li	a2, 1
	sub	ra, ra, a2
	j	.naivedce_ID138_for_condition
.naivedce_ID138_for_out:
	li	a2, 1
	add	ra, ra, a2
	j	.naivedce_ID147_for_condition
.naivedce_ID147_for_condition:
	li	a2, 10
	slt	a2, a2, ra
	xori	a2, a2, 1
	bnez	a2, .naivedce_ID147_for_suite
	j	.naivedce_ID147_for_out
.naivedce_ID147_for_suite:
	mul	t2, t2, ra
	j	.naivedce_ID147_for_incr
.naivedce_ID147_for_incr:
	li	a2, 1
	add	ra, ra, a2
	j	.naivedce_ID147_for_condition
.naivedce_ID147_for_out:
	xor	ra, t0, a1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .naivedce_ID157_if_true
	j	.naivedce_ID157_if_out
.naivedce_ID788_if_true:
	li	ra, 1
	sub	t1, t1, ra
	j	.naivedce_ID788_if_out
.naivedce_ID788_if_out:
	j	.naivedce_ID785_if_out
.naivedce_ID785_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID788_if_true
	j	.naivedce_ID788_if_out
.naivedce_ID785_if_out:
	j	.naivedce_ID782_if_out
.naivedce_ID782_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID785_if_true
	j	.naivedce_ID785_if_out
.naivedce_ID782_if_out:
	j	.naivedce_ID779_if_out
.naivedce_ID779_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID782_if_true
	j	.naivedce_ID782_if_out
.naivedce_ID779_if_out:
	j	.naivedce_ID776_if_out
.naivedce_ID776_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID779_if_true
	j	.naivedce_ID779_if_out
.naivedce_ID776_if_out:
	j	.naivedce_ID773_if_out
.naivedce_ID773_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID776_if_true
	j	.naivedce_ID776_if_out
.naivedce_ID773_if_out:
	j	.naivedce_ID770_if_out
.naivedce_ID770_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID773_if_true
	j	.naivedce_ID773_if_out
.naivedce_ID770_if_out:
	j	.naivedce_ID767_if_out
.naivedce_ID767_if_true:
	mv	ra, t1
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID770_if_true
	j	.naivedce_ID770_if_out
.naivedce_ID767_if_out:
	j	.naivedce_ID764_if_out
.naivedce_ID764_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID767_if_true
	j	.naivedce_ID767_if_out
.naivedce_ID764_if_out:
	j	.naivedce_ID761_if_out
.naivedce_ID761_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID764_if_true
	j	.naivedce_ID764_if_out
.naivedce_ID761_if_out:
	j	.naivedce_ID758_if_out
.naivedce_ID758_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID761_if_true
	j	.naivedce_ID761_if_out
.naivedce_ID758_if_out:
	j	.naivedce_ID755_if_out
.naivedce_ID755_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID758_if_true
	j	.naivedce_ID758_if_out
.naivedce_ID755_if_out:
	j	.naivedce_ID752_if_out
.naivedce_ID752_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID755_if_true
	j	.naivedce_ID755_if_out
.naivedce_ID752_if_out:
	j	.naivedce_ID749_if_out
.naivedce_ID749_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID752_if_true
	j	.naivedce_ID752_if_out
.naivedce_ID749_if_out:
	j	.naivedce_ID746_if_out
.naivedce_ID746_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID749_if_true
	j	.naivedce_ID749_if_out
.naivedce_ID746_if_out:
	j	.naivedce_ID743_if_out
.naivedce_ID743_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID746_if_true
	j	.naivedce_ID746_if_out
.naivedce_ID743_if_out:
	j	.naivedce_ID740_if_out
.naivedce_ID740_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID743_if_true
	j	.naivedce_ID743_if_out
.naivedce_ID740_if_out:
	j	.naivedce_ID737_if_out
.naivedce_ID737_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID740_if_true
	j	.naivedce_ID740_if_out
.naivedce_ID737_if_out:
	j	.naivedce_ID734_if_out
.naivedce_ID734_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID737_if_true
	j	.naivedce_ID737_if_out
.naivedce_ID734_if_out:
	j	.naivedce_ID731_if_out
.naivedce_ID731_if_true:
	mv	ra, t1
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID734_if_true
	j	.naivedce_ID734_if_out
.naivedce_ID731_if_out:
	j	.naivedce_ID728_if_out
.naivedce_ID728_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID731_if_true
	j	.naivedce_ID731_if_out
.naivedce_ID728_if_out:
	j	.naivedce_ID725_if_out
.naivedce_ID725_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID728_if_true
	j	.naivedce_ID728_if_out
.naivedce_ID725_if_out:
	j	.naivedce_ID722_if_out
.naivedce_ID722_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID725_if_true
	j	.naivedce_ID725_if_out
.naivedce_ID722_if_out:
	j	.naivedce_ID719_if_out
.naivedce_ID719_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID722_if_true
	j	.naivedce_ID722_if_out
.naivedce_ID719_if_out:
	li	ra, 1
	add	t2, t2, ra
	j	.naivedce_ID716_if_out
.naivedce_ID716_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID719_if_true
	j	.naivedce_ID719_if_out
.naivedce_ID716_if_out:
	j	.naivedce_ID714_if_out
.naivedce_ID714_if_true:
	li	ra, 3628800
	xor	ra, t2, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID716_if_true
	j	.naivedce_ID716_if_out
.naivedce_ID714_if_out:
	j	.naivedce_ID711_if_out
.naivedce_ID711_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID714_if_true
	j	.naivedce_ID714_if_out
.naivedce_ID711_if_out:
	j	.naivedce_ID708_if_out
.naivedce_ID708_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID711_if_true
	j	.naivedce_ID711_if_out
.naivedce_ID708_if_out:
	j	.naivedce_ID705_if_out
.naivedce_ID705_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID708_if_true
	j	.naivedce_ID708_if_out
.naivedce_ID705_if_out:
	j	.naivedce_ID702_if_out
.naivedce_ID702_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID705_if_true
	j	.naivedce_ID705_if_out
.naivedce_ID702_if_out:
	j	.naivedce_ID699_if_out
.naivedce_ID699_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID702_if_true
	j	.naivedce_ID702_if_out
.naivedce_ID699_if_out:
	j	.naivedce_ID696_if_out
.naivedce_ID696_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID699_if_true
	j	.naivedce_ID699_if_out
.naivedce_ID696_if_out:
	j	.naivedce_ID693_if_out
.naivedce_ID693_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID696_if_true
	j	.naivedce_ID696_if_out
.naivedce_ID693_if_out:
	j	.naivedce_ID690_if_out
.naivedce_ID690_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID693_if_true
	j	.naivedce_ID693_if_out
.naivedce_ID690_if_out:
	j	.naivedce_ID687_if_out
.naivedce_ID687_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID690_if_true
	j	.naivedce_ID690_if_out
.naivedce_ID687_if_out:
	j	.naivedce_ID684_if_out
.naivedce_ID684_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID687_if_true
	j	.naivedce_ID687_if_out
.naivedce_ID684_if_out:
	j	.naivedce_ID681_if_out
.naivedce_ID681_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID684_if_true
	j	.naivedce_ID684_if_out
.naivedce_ID681_if_out:
	j	.naivedce_ID678_if_out
.naivedce_ID678_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID681_if_true
	j	.naivedce_ID681_if_out
.naivedce_ID678_if_out:
	j	.naivedce_ID676_if_out
.naivedce_ID676_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID678_if_true
	j	.naivedce_ID678_if_out
.naivedce_ID676_if_out:
	j	.naivedce_ID673_if_out
.naivedce_ID673_if_true:
	mv	ra, t1
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID676_if_true
	j	.naivedce_ID676_if_out
.naivedce_ID673_if_out:
	j	.naivedce_ID670_if_out
.naivedce_ID670_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID673_if_true
	j	.naivedce_ID673_if_out
.naivedce_ID670_if_out:
	j	.naivedce_ID667_if_out
.naivedce_ID667_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID670_if_true
	j	.naivedce_ID670_if_out
.naivedce_ID667_if_out:
	j	.naivedce_ID664_if_out
.naivedce_ID664_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID667_if_true
	j	.naivedce_ID667_if_out
.naivedce_ID664_if_out:
	j	.naivedce_ID661_if_out
.naivedce_ID661_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID664_if_true
	j	.naivedce_ID664_if_out
.naivedce_ID661_if_out:
	j	.naivedce_ID658_if_out
.naivedce_ID658_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID661_if_true
	j	.naivedce_ID661_if_out
.naivedce_ID658_if_out:
	j	.naivedce_ID655_if_out
.naivedce_ID655_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID658_if_true
	j	.naivedce_ID658_if_out
.naivedce_ID655_if_out:
	j	.naivedce_ID652_if_out
.naivedce_ID652_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID655_if_true
	j	.naivedce_ID655_if_out
.naivedce_ID652_if_out:
	j	.naivedce_ID649_if_out
.naivedce_ID649_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID652_if_true
	j	.naivedce_ID652_if_out
.naivedce_ID649_if_out:
	j	.naivedce_ID646_if_out
.naivedce_ID646_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID649_if_true
	j	.naivedce_ID649_if_out
.naivedce_ID646_if_out:
	j	.naivedce_ID643_if_out
.naivedce_ID643_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID646_if_true
	j	.naivedce_ID646_if_out
.naivedce_ID643_if_out:
	j	.naivedce_ID640_if_out
.naivedce_ID640_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID643_if_true
	j	.naivedce_ID643_if_out
.naivedce_ID640_if_out:
	j	.naivedce_ID637_if_out
.naivedce_ID637_if_true:
	mv	ra, t1
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID640_if_true
	j	.naivedce_ID640_if_out
.naivedce_ID637_if_out:
	j	.naivedce_ID634_if_out
.naivedce_ID634_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID637_if_true
	j	.naivedce_ID637_if_out
.naivedce_ID634_if_out:
	j	.naivedce_ID631_if_out
.naivedce_ID631_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID634_if_true
	j	.naivedce_ID634_if_out
.naivedce_ID631_if_out:
	j	.naivedce_ID628_if_out
.naivedce_ID628_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID631_if_true
	j	.naivedce_ID631_if_out
.naivedce_ID628_if_out:
	j	.naivedce_ID625_if_out
.naivedce_ID625_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID628_if_true
	j	.naivedce_ID628_if_out
.naivedce_ID625_if_out:
	j	.naivedce_ID622_if_out
.naivedce_ID622_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID625_if_true
	j	.naivedce_ID625_if_out
.naivedce_ID622_if_out:
	j	.naivedce_ID619_if_out
.naivedce_ID619_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID622_if_true
	j	.naivedce_ID622_if_out
.naivedce_ID619_if_out:
	j	.naivedce_ID616_if_out
.naivedce_ID616_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID619_if_true
	j	.naivedce_ID619_if_out
.naivedce_ID616_if_out:
	j	.naivedce_ID613_if_out
.naivedce_ID613_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID616_if_true
	j	.naivedce_ID616_if_out
.naivedce_ID613_if_out:
	j	.naivedce_ID610_if_out
.naivedce_ID610_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID613_if_true
	j	.naivedce_ID613_if_out
.naivedce_ID610_if_out:
	j	.naivedce_ID607_if_out
.naivedce_ID607_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID610_if_true
	j	.naivedce_ID610_if_out
.naivedce_ID607_if_out:
	j	.naivedce_ID604_if_out
.naivedce_ID604_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID607_if_true
	j	.naivedce_ID607_if_out
.naivedce_ID604_if_out:
	j	.naivedce_ID601_if_out
.naivedce_ID601_if_true:
	mv	ra, t1
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID604_if_true
	j	.naivedce_ID604_if_out
.naivedce_ID601_if_out:
	j	.naivedce_ID598_if_out
.naivedce_ID598_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID601_if_true
	j	.naivedce_ID601_if_out
.naivedce_ID598_if_out:
	j	.naivedce_ID595_if_out
.naivedce_ID595_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID598_if_true
	j	.naivedce_ID598_if_out
.naivedce_ID595_if_out:
	j	.naivedce_ID592_if_out
.naivedce_ID592_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID595_if_true
	j	.naivedce_ID595_if_out
.naivedce_ID592_if_out:
	j	.naivedce_ID589_if_out
.naivedce_ID589_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID592_if_true
	j	.naivedce_ID592_if_out
.naivedce_ID589_if_out:
	j	.naivedce_ID586_if_out
.naivedce_ID586_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID589_if_true
	j	.naivedce_ID589_if_out
.naivedce_ID586_if_out:
	j	.naivedce_ID583_if_out
.naivedce_ID583_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID586_if_true
	j	.naivedce_ID586_if_out
.naivedce_ID583_if_out:
	j	.naivedce_ID580_if_out
.naivedce_ID580_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID583_if_true
	j	.naivedce_ID583_if_out
.naivedce_ID580_if_out:
	j	.naivedce_ID577_if_out
.naivedce_ID577_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID580_if_true
	j	.naivedce_ID580_if_out
.naivedce_ID577_if_out:
	j	.naivedce_ID574_if_out
.naivedce_ID574_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID577_if_true
	j	.naivedce_ID577_if_out
.naivedce_ID574_if_out:
	j	.naivedce_ID571_if_out
.naivedce_ID571_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID574_if_true
	j	.naivedce_ID574_if_out
.naivedce_ID571_if_out:
	j	.naivedce_ID568_if_out
.naivedce_ID568_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID571_if_true
	j	.naivedce_ID571_if_out
.naivedce_ID568_if_out:
	j	.naivedce_ID566_if_out
.naivedce_ID566_if_true:
	li	ra, 3628800
	xor	ra, t2, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID568_if_true
	j	.naivedce_ID568_if_out
.naivedce_ID566_if_out:
	j	.naivedce_ID563_if_out
.naivedce_ID563_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID566_if_true
	j	.naivedce_ID566_if_out
.naivedce_ID563_if_out:
	j	.naivedce_ID560_if_out
.naivedce_ID560_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID563_if_true
	j	.naivedce_ID563_if_out
.naivedce_ID560_if_out:
	j	.naivedce_ID557_if_out
.naivedce_ID557_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID560_if_true
	j	.naivedce_ID560_if_out
.naivedce_ID557_if_out:
	j	.naivedce_ID554_if_out
.naivedce_ID554_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID557_if_true
	j	.naivedce_ID557_if_out
.naivedce_ID554_if_out:
	j	.naivedce_ID551_if_out
.naivedce_ID551_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID554_if_true
	j	.naivedce_ID554_if_out
.naivedce_ID551_if_out:
	j	.naivedce_ID548_if_out
.naivedce_ID548_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID551_if_true
	j	.naivedce_ID551_if_out
.naivedce_ID548_if_out:
	j	.naivedce_ID545_if_out
.naivedce_ID545_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID548_if_true
	j	.naivedce_ID548_if_out
.naivedce_ID545_if_out:
	j	.naivedce_ID542_if_out
.naivedce_ID542_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID545_if_true
	j	.naivedce_ID545_if_out
.naivedce_ID542_if_out:
	j	.naivedce_ID539_if_out
.naivedce_ID539_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID542_if_true
	j	.naivedce_ID542_if_out
.naivedce_ID539_if_out:
	j	.naivedce_ID536_if_out
.naivedce_ID536_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID539_if_true
	j	.naivedce_ID539_if_out
.naivedce_ID536_if_out:
	j	.naivedce_ID533_if_out
.naivedce_ID533_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID536_if_true
	j	.naivedce_ID536_if_out
.naivedce_ID533_if_out:
	j	.naivedce_ID530_if_out
.naivedce_ID530_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID533_if_true
	j	.naivedce_ID533_if_out
.naivedce_ID530_if_out:
	j	.naivedce_ID527_if_out
.naivedce_ID527_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID530_if_true
	j	.naivedce_ID530_if_out
.naivedce_ID527_if_out:
	j	.naivedce_ID524_if_out
.naivedce_ID524_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID527_if_true
	j	.naivedce_ID527_if_out
.naivedce_ID524_if_out:
	j	.naivedce_ID521_if_out
.naivedce_ID521_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID524_if_true
	j	.naivedce_ID524_if_out
.naivedce_ID521_if_out:
	j	.naivedce_ID518_if_out
.naivedce_ID518_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID521_if_true
	j	.naivedce_ID521_if_out
.naivedce_ID518_if_out:
	j	.naivedce_ID515_if_out
.naivedce_ID515_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID518_if_true
	j	.naivedce_ID518_if_out
.naivedce_ID515_if_out:
	j	.naivedce_ID512_if_out
.naivedce_ID512_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID515_if_true
	j	.naivedce_ID515_if_out
.naivedce_ID512_if_out:
	j	.naivedce_ID509_if_out
.naivedce_ID509_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID512_if_true
	j	.naivedce_ID512_if_out
.naivedce_ID509_if_out:
	j	.naivedce_ID506_if_out
.naivedce_ID506_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID509_if_true
	j	.naivedce_ID509_if_out
.naivedce_ID506_if_out:
	j	.naivedce_ID503_if_out
.naivedce_ID503_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID506_if_true
	j	.naivedce_ID506_if_out
.naivedce_ID503_if_out:
	j	.naivedce_ID500_if_out
.naivedce_ID500_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID503_if_true
	j	.naivedce_ID503_if_out
.naivedce_ID500_if_out:
	j	.naivedce_ID497_if_out
.naivedce_ID497_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID500_if_true
	j	.naivedce_ID500_if_out
.naivedce_ID497_if_out:
	j	.naivedce_ID494_if_out
.naivedce_ID494_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID497_if_true
	j	.naivedce_ID497_if_out
.naivedce_ID494_if_out:
	j	.naivedce_ID491_if_out
.naivedce_ID491_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID494_if_true
	j	.naivedce_ID494_if_out
.naivedce_ID491_if_out:
	j	.naivedce_ID488_if_out
.naivedce_ID488_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID491_if_true
	j	.naivedce_ID491_if_out
.naivedce_ID488_if_out:
	j	.naivedce_ID485_if_out
.naivedce_ID485_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID488_if_true
	j	.naivedce_ID488_if_out
.naivedce_ID485_if_out:
	j	.naivedce_ID482_if_out
.naivedce_ID482_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID485_if_true
	j	.naivedce_ID485_if_out
.naivedce_ID482_if_out:
	j	.naivedce_ID479_if_out
.naivedce_ID479_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID482_if_true
	j	.naivedce_ID482_if_out
.naivedce_ID479_if_out:
	j	.naivedce_ID476_if_out
.naivedce_ID476_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID479_if_true
	j	.naivedce_ID479_if_out
.naivedce_ID476_if_out:
	j	.naivedce_ID473_if_out
.naivedce_ID473_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID476_if_true
	j	.naivedce_ID476_if_out
.naivedce_ID473_if_out:
	j	.naivedce_ID470_if_out
.naivedce_ID470_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID473_if_true
	j	.naivedce_ID473_if_out
.naivedce_ID470_if_out:
	j	.naivedce_ID467_if_out
.naivedce_ID467_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID470_if_true
	j	.naivedce_ID470_if_out
.naivedce_ID467_if_out:
	j	.naivedce_ID464_if_out
.naivedce_ID464_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID467_if_true
	j	.naivedce_ID467_if_out
.naivedce_ID464_if_out:
	j	.naivedce_ID461_if_out
.naivedce_ID461_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID464_if_true
	j	.naivedce_ID464_if_out
.naivedce_ID461_if_out:
	j	.naivedce_ID458_if_out
.naivedce_ID458_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID461_if_true
	j	.naivedce_ID461_if_out
.naivedce_ID458_if_out:
	j	.naivedce_ID456_if_out
.naivedce_ID456_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID458_if_true
	j	.naivedce_ID458_if_out
.naivedce_ID456_if_out:
	j	.naivedce_ID454_if_out
.naivedce_ID454_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID456_if_true
	j	.naivedce_ID456_if_out
.naivedce_ID454_if_out:
	j	.naivedce_ID452_if_out
.naivedce_ID452_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID454_if_true
	j	.naivedce_ID454_if_out
.naivedce_ID452_if_out:
	j	.naivedce_ID450_if_out
.naivedce_ID450_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID452_if_true
	j	.naivedce_ID452_if_out
.naivedce_ID450_if_out:
	j	.naivedce_ID448_if_out
.naivedce_ID448_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID450_if_true
	j	.naivedce_ID450_if_out
.naivedce_ID448_if_out:
	j	.naivedce_ID446_if_out
.naivedce_ID446_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID448_if_true
	j	.naivedce_ID448_if_out
.naivedce_ID446_if_out:
	j	.naivedce_ID444_if_out
.naivedce_ID444_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID446_if_true
	j	.naivedce_ID446_if_out
.naivedce_ID444_if_out:
	j	.naivedce_ID442_if_out
.naivedce_ID442_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID444_if_true
	j	.naivedce_ID444_if_out
.naivedce_ID442_if_out:
	j	.naivedce_ID440_if_out
.naivedce_ID440_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID442_if_true
	j	.naivedce_ID442_if_out
.naivedce_ID440_if_out:
	j	.naivedce_ID438_if_out
.naivedce_ID438_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID440_if_true
	j	.naivedce_ID440_if_out
.naivedce_ID438_if_out:
	j	.naivedce_ID436_if_out
.naivedce_ID436_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID438_if_true
	j	.naivedce_ID438_if_out
.naivedce_ID436_if_out:
	j	.naivedce_ID434_if_out
.naivedce_ID434_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID436_if_true
	j	.naivedce_ID436_if_out
.naivedce_ID434_if_out:
	j	.naivedce_ID432_if_out
.naivedce_ID432_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID434_if_true
	j	.naivedce_ID434_if_out
.naivedce_ID432_if_out:
	j	.naivedce_ID430_if_out
.naivedce_ID430_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID432_if_true
	j	.naivedce_ID432_if_out
.naivedce_ID430_if_out:
	j	.naivedce_ID428_if_out
.naivedce_ID428_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID430_if_true
	j	.naivedce_ID430_if_out
.naivedce_ID428_if_out:
	j	.naivedce_ID426_if_out
.naivedce_ID426_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID428_if_true
	j	.naivedce_ID428_if_out
.naivedce_ID426_if_out:
	j	.naivedce_ID424_if_out
.naivedce_ID424_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID426_if_true
	j	.naivedce_ID426_if_out
.naivedce_ID424_if_out:
	j	.naivedce_ID422_if_out
.naivedce_ID422_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID424_if_true
	j	.naivedce_ID424_if_out
.naivedce_ID422_if_out:
	j	.naivedce_ID420_if_out
.naivedce_ID420_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID422_if_true
	j	.naivedce_ID422_if_out
.naivedce_ID420_if_out:
	j	.naivedce_ID418_if_out
.naivedce_ID418_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID420_if_true
	j	.naivedce_ID420_if_out
.naivedce_ID418_if_out:
	j	.naivedce_ID416_if_out
.naivedce_ID416_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID418_if_true
	j	.naivedce_ID418_if_out
.naivedce_ID416_if_out:
	j	.naivedce_ID414_if_out
.naivedce_ID414_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID416_if_true
	j	.naivedce_ID416_if_out
.naivedce_ID414_if_out:
	j	.naivedce_ID412_if_out
.naivedce_ID412_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID414_if_true
	j	.naivedce_ID414_if_out
.naivedce_ID412_if_out:
	j	.naivedce_ID410_if_out
.naivedce_ID410_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID412_if_true
	j	.naivedce_ID412_if_out
.naivedce_ID410_if_out:
	j	.naivedce_ID407_if_out
.naivedce_ID407_if_true:
	mv	ra, t1
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID410_if_true
	j	.naivedce_ID410_if_out
.naivedce_ID407_if_out:
	j	.naivedce_ID404_if_out
.naivedce_ID404_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID407_if_true
	j	.naivedce_ID407_if_out
.naivedce_ID404_if_out:
	j	.naivedce_ID401_if_out
.naivedce_ID401_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID404_if_true
	j	.naivedce_ID404_if_out
.naivedce_ID401_if_out:
	j	.naivedce_ID398_if_out
.naivedce_ID398_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID401_if_true
	j	.naivedce_ID401_if_out
.naivedce_ID398_if_out:
	j	.naivedce_ID395_if_out
.naivedce_ID395_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID398_if_true
	j	.naivedce_ID398_if_out
.naivedce_ID395_if_out:
	j	.naivedce_ID392_if_out
.naivedce_ID392_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID395_if_true
	j	.naivedce_ID395_if_out
.naivedce_ID392_if_out:
	j	.naivedce_ID389_if_out
.naivedce_ID389_if_true:
	mv	ra, t1
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID392_if_true
	j	.naivedce_ID392_if_out
.naivedce_ID389_if_out:
	j	.naivedce_ID386_if_out
.naivedce_ID386_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID389_if_true
	j	.naivedce_ID389_if_out
.naivedce_ID386_if_out:
	j	.naivedce_ID383_if_out
.naivedce_ID383_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID386_if_true
	j	.naivedce_ID386_if_out
.naivedce_ID383_if_out:
	j	.naivedce_ID376_if_out
.naivedce_ID376_if_true:
	add	ra, t0, a1
	add	a1, a1, t0
	xor	ra, ra, a1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID383_if_true
	j	.naivedce_ID383_if_out
.naivedce_ID376_if_out:
	j	.naivedce_ID373_if_out
.naivedce_ID373_if_true:
	xor	ra, t0, t1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .naivedce_ID376_if_true
	j	.naivedce_ID376_if_out
.naivedce_ID373_if_out:
	j	.naivedce_ID370_if_out
.naivedce_ID370_if_true:
	xor	ra, t0, a1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .naivedce_ID373_if_true
	j	.naivedce_ID373_if_out
.naivedce_ID370_if_out:
	j	.naivedce_ID367_if_out
.naivedce_ID367_if_true:
	mv	ra, t1
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID370_if_true
	j	.naivedce_ID370_if_out
.naivedce_ID367_if_out:
	j	.naivedce_ID364_if_out
.naivedce_ID364_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID367_if_true
	j	.naivedce_ID367_if_out
.naivedce_ID364_if_out:
	j	.naivedce_ID361_if_out
.naivedce_ID361_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID364_if_true
	j	.naivedce_ID364_if_out
.naivedce_ID361_if_out:
	j	.naivedce_ID358_if_out
.naivedce_ID358_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID361_if_true
	j	.naivedce_ID361_if_out
.naivedce_ID358_if_out:
	j	.naivedce_ID355_if_out
.naivedce_ID355_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID358_if_true
	j	.naivedce_ID358_if_out
.naivedce_ID355_if_out:
	j	.naivedce_ID352_if_out
.naivedce_ID352_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID355_if_true
	j	.naivedce_ID355_if_out
.naivedce_ID352_if_out:
	j	.naivedce_ID349_if_out
.naivedce_ID349_if_true:
	mv	ra, t1
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID352_if_true
	j	.naivedce_ID352_if_out
.naivedce_ID349_if_out:
	j	.naivedce_ID346_if_out
.naivedce_ID346_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID349_if_true
	j	.naivedce_ID349_if_out
.naivedce_ID346_if_out:
	j	.naivedce_ID343_if_out
.naivedce_ID343_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID346_if_true
	j	.naivedce_ID346_if_out
.naivedce_ID343_if_out:
	j	.naivedce_ID336_if_out
.naivedce_ID336_if_true:
	add	ra, t0, a1
	add	a2, a1, t0
	xor	ra, ra, a2
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID343_if_true
	j	.naivedce_ID343_if_out
.naivedce_ID336_if_out:
	j	.naivedce_ID333_if_out
.naivedce_ID333_if_true:
	xor	ra, t0, t1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .naivedce_ID336_if_true
	j	.naivedce_ID336_if_out
.naivedce_ID333_if_out:
	j	.naivedce_ID330_if_out
.naivedce_ID330_if_true:
	xor	ra, t0, a1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .naivedce_ID333_if_true
	j	.naivedce_ID333_if_out
.naivedce_ID330_if_out:
	j	.naivedce_ID328_if_out
.naivedce_ID328_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID330_if_true
	j	.naivedce_ID330_if_out
.naivedce_ID328_if_out:
	j	.naivedce_ID326_if_out
.naivedce_ID326_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID328_if_true
	j	.naivedce_ID328_if_out
.naivedce_ID326_if_out:
	j	.naivedce_ID324_if_out
.naivedce_ID324_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID326_if_true
	j	.naivedce_ID326_if_out
.naivedce_ID324_if_out:
	j	.naivedce_ID322_if_out
.naivedce_ID322_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID324_if_true
	j	.naivedce_ID324_if_out
.naivedce_ID322_if_out:
	j	.naivedce_ID320_if_out
.naivedce_ID320_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID322_if_true
	j	.naivedce_ID322_if_out
.naivedce_ID320_if_out:
	j	.naivedce_ID318_if_out
.naivedce_ID318_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID320_if_true
	j	.naivedce_ID320_if_out
.naivedce_ID318_if_out:
	j	.naivedce_ID316_if_out
.naivedce_ID316_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID318_if_true
	j	.naivedce_ID318_if_out
.naivedce_ID316_if_out:
	j	.naivedce_ID314_if_out
.naivedce_ID314_if_true:
	li	ra, 10100
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID316_if_true
	j	.naivedce_ID316_if_out
.naivedce_ID314_if_out:
	j	.naivedce_ID311_if_out
.naivedce_ID311_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID314_if_true
	j	.naivedce_ID314_if_out
.naivedce_ID311_if_out:
	j	.naivedce_ID308_if_out
.naivedce_ID308_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID311_if_true
	j	.naivedce_ID311_if_out
.naivedce_ID308_if_out:
	j	.naivedce_ID305_if_out
.naivedce_ID305_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID308_if_true
	j	.naivedce_ID308_if_out
.naivedce_ID305_if_out:
	j	.naivedce_ID302_if_out
.naivedce_ID302_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID305_if_true
	j	.naivedce_ID305_if_out
.naivedce_ID302_if_out:
	j	.naivedce_ID299_if_out
.naivedce_ID299_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID302_if_true
	j	.naivedce_ID302_if_out
.naivedce_ID299_if_out:
	j	.naivedce_ID296_if_out
.naivedce_ID296_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID299_if_true
	j	.naivedce_ID299_if_out
.naivedce_ID296_if_out:
	j	.naivedce_ID293_if_out
.naivedce_ID293_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID296_if_true
	j	.naivedce_ID296_if_out
.naivedce_ID293_if_out:
	j	.naivedce_ID290_if_out
.naivedce_ID290_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID293_if_true
	j	.naivedce_ID293_if_out
.naivedce_ID290_if_out:
	j	.naivedce_ID287_if_out
.naivedce_ID287_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID290_if_true
	j	.naivedce_ID290_if_out
.naivedce_ID287_if_out:
	j	.naivedce_ID280_if_out
.naivedce_ID280_if_true:
	add	ra, t0, a1
	add	a2, a1, t0
	xor	ra, ra, a2
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID287_if_true
	j	.naivedce_ID287_if_out
.naivedce_ID280_if_out:
	j	.naivedce_ID277_if_out
.naivedce_ID277_if_true:
	xor	ra, t0, t1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .naivedce_ID280_if_true
	j	.naivedce_ID280_if_out
.naivedce_ID277_if_out:
	j	.naivedce_ID274_if_out
.naivedce_ID274_if_true:
	xor	ra, t0, a1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .naivedce_ID277_if_true
	j	.naivedce_ID277_if_out
.naivedce_ID274_if_out:
	j	.naivedce_ID271_if_out
.naivedce_ID271_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID274_if_true
	j	.naivedce_ID274_if_out
.naivedce_ID271_if_out:
	j	.naivedce_ID268_if_out
.naivedce_ID268_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID271_if_true
	j	.naivedce_ID271_if_out
.naivedce_ID268_if_out:
	j	.naivedce_ID265_if_out
.naivedce_ID265_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID268_if_true
	j	.naivedce_ID268_if_out
.naivedce_ID265_if_out:
	j	.naivedce_ID262_if_out
.naivedce_ID262_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID265_if_true
	j	.naivedce_ID265_if_out
.naivedce_ID262_if_out:
	j	.naivedce_ID259_if_out
.naivedce_ID259_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID262_if_true
	j	.naivedce_ID262_if_out
.naivedce_ID259_if_out:
	j	.naivedce_ID256_if_out
.naivedce_ID256_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID259_if_true
	j	.naivedce_ID259_if_out
.naivedce_ID256_if_out:
	j	.naivedce_ID253_if_out
.naivedce_ID253_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID256_if_true
	j	.naivedce_ID256_if_out
.naivedce_ID253_if_out:
	j	.naivedce_ID250_if_out
.naivedce_ID250_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID253_if_true
	j	.naivedce_ID253_if_out
.naivedce_ID250_if_out:
	j	.naivedce_ID247_if_out
.naivedce_ID247_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID250_if_true
	j	.naivedce_ID250_if_out
.naivedce_ID247_if_out:
	j	.naivedce_ID240_if_out
.naivedce_ID240_if_true:
	add	ra, t0, a1
	add	a2, a1, t0
	xor	ra, ra, a2
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID247_if_true
	j	.naivedce_ID247_if_out
.naivedce_ID240_if_out:
	j	.naivedce_ID237_if_out
.naivedce_ID237_if_true:
	xor	ra, t0, t1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .naivedce_ID240_if_true
	j	.naivedce_ID240_if_out
.naivedce_ID237_if_out:
	j	.naivedce_ID234_if_out
.naivedce_ID234_if_true:
	xor	ra, t0, a1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .naivedce_ID237_if_true
	j	.naivedce_ID237_if_out
.naivedce_ID234_if_out:
	j	.naivedce_ID231_if_out
.naivedce_ID231_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID234_if_true
	j	.naivedce_ID234_if_out
.naivedce_ID231_if_out:
	j	.naivedce_ID228_if_out
.naivedce_ID228_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID231_if_true
	j	.naivedce_ID231_if_out
.naivedce_ID228_if_out:
	j	.naivedce_ID225_if_out
.naivedce_ID225_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID228_if_true
	j	.naivedce_ID228_if_out
.naivedce_ID225_if_out:
	j	.naivedce_ID222_if_out
.naivedce_ID222_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID225_if_true
	j	.naivedce_ID225_if_out
.naivedce_ID222_if_out:
	j	.naivedce_ID219_if_out
.naivedce_ID219_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID222_if_true
	j	.naivedce_ID222_if_out
.naivedce_ID219_if_out:
	j	.naivedce_ID216_if_out
.naivedce_ID216_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID219_if_true
	j	.naivedce_ID219_if_out
.naivedce_ID216_if_out:
	j	.naivedce_ID213_if_out
.naivedce_ID213_if_true:
	mv	ra, t1
	xor	ra, ra, t1
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID216_if_true
	j	.naivedce_ID216_if_out
.naivedce_ID213_if_out:
	j	.naivedce_ID210_if_out
.naivedce_ID210_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID213_if_true
	j	.naivedce_ID213_if_out
.naivedce_ID210_if_out:
	j	.naivedce_ID207_if_out
.naivedce_ID207_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID210_if_true
	j	.naivedce_ID210_if_out
.naivedce_ID207_if_out:
	j	.naivedce_ID200_if_out
.naivedce_ID200_if_true:
	add	a2, t0, a1
	add	ra, a1, t0
	xor	ra, a2, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID207_if_true
	j	.naivedce_ID207_if_out
.naivedce_ID200_if_out:
	j	.naivedce_ID197_if_out
.naivedce_ID197_if_true:
	xor	ra, t0, t1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .naivedce_ID200_if_true
	j	.naivedce_ID200_if_out
.naivedce_ID197_if_out:
	j	.naivedce_ID194_if_out
.naivedce_ID194_if_true:
	xor	ra, t0, a1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .naivedce_ID197_if_true
	j	.naivedce_ID197_if_out
.naivedce_ID194_if_out:
	j	.naivedce_ID191_if_out
.naivedce_ID191_if_true:
	mv	ra, t1
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID194_if_true
	j	.naivedce_ID194_if_out
.naivedce_ID191_if_out:
	j	.naivedce_ID188_if_out
.naivedce_ID188_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID191_if_true
	j	.naivedce_ID191_if_out
.naivedce_ID188_if_out:
	j	.naivedce_ID185_if_out
.naivedce_ID185_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID188_if_true
	j	.naivedce_ID188_if_out
.naivedce_ID185_if_out:
	j	.naivedce_ID182_if_out
.naivedce_ID182_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID185_if_true
	j	.naivedce_ID185_if_out
.naivedce_ID182_if_out:
	j	.naivedce_ID179_if_out
.naivedce_ID179_if_true:
	mv	ra, t0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID182_if_true
	j	.naivedce_ID182_if_out
.naivedce_ID179_if_out:
	j	.naivedce_ID176_if_out
.naivedce_ID176_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID179_if_true
	j	.naivedce_ID179_if_out
.naivedce_ID176_if_out:
	j	.naivedce_ID173_if_out
.naivedce_ID173_if_true:
	mv	ra, t1
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID176_if_true
	j	.naivedce_ID176_if_out
.naivedce_ID173_if_out:
	j	.naivedce_ID170_if_out
.naivedce_ID170_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID173_if_true
	j	.naivedce_ID173_if_out
.naivedce_ID170_if_out:
	j	.naivedce_ID167_if_out
.naivedce_ID167_if_true:
	mv	ra, t0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID170_if_true
	j	.naivedce_ID170_if_out
.naivedce_ID167_if_out:
	j	.naivedce_ID160_if_out
.naivedce_ID160_if_true:
	add	a2, t0, a1
	add	ra, a1, t0
	xor	ra, a2, ra
	sltiu	ra, ra, 1
	bnez	ra, .naivedce_ID167_if_true
	j	.naivedce_ID167_if_out
.naivedce_ID160_if_out:
	j	.naivedce_ID157_if_out
.naivedce_ID157_if_true:
	xor	ra, t0, t1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .naivedce_ID160_if_true
	j	.naivedce_ID160_if_out
.naivedce_ID157_if_out:
	li	a0, 1919
	j	.naivedce_return
.naivedce_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	dceconst
	.p2align	2
	.type	dceconst,@function
dceconst:
.dceconst_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.dceconst_alloca
.dceconst_alloca:
	j	.dceconst_entry
.dceconst_entry:
	li	a0, 114514
	li	t0, 0
	j	.dceconst_ID5_for_condition
.dceconst_ID5_for_condition:
	lw	t1, fuckLLVM_N
	slt	t1, t0, t1
	bnez	t1, .dceconst_ID5_for_suite
	j	.dceconst_ID5_for_out
.dceconst_ID5_for_suite:
	li	t1, 0
	j	.dceconst_ID8_for_condition
.dceconst_ID8_for_condition:
	lw	t2, fuckLLVM_N
	slt	t2, t1, t2
	bnez	t2, .dceconst_ID8_for_suite
	j	.dceconst_ID8_for_out
.dceconst_ID8_for_suite:
	add	t2, t0, t1
	sub	t2, t0, t1
	add	t2, t0, t1
	sub	t2, t2, t0
	mv	a1, t2
	mul	t2, a1, t2
	lw	a1, fuckLLVM_N
	div	t2, t2, a1
	j	.dceconst_ID8_for_incr
.dceconst_ID8_for_incr:
	li	t2, 1
	add	t1, t1, t2
	j	.dceconst_ID8_for_condition
.dceconst_ID8_for_out:
	j	.dceconst_ID5_for_incr
.dceconst_ID5_for_incr:
	li	t1, 1
	add	t0, t0, t1
	j	.dceconst_ID5_for_condition
.dceconst_ID5_for_out:
	li	t0, 0
	j	.dceconst_ID35_for_condition
.dceconst_ID35_for_condition:
	lw	t1, fuckLLVM_N
	slt	t1, t0, t1
	bnez	t1, .dceconst_ID35_for_suite
	j	.dceconst_ID35_for_out
.dceconst_ID35_for_suite:
	li	t1, 234
	mul	t2, ra, t1
	li	t1, 111
	add	t1, t2, t1
	li	t2, 0
	add	t1, t1, t2
	li	t2, 7
	add	t2, t1, t2
	li	t1, 0
	add	t1, t2, t1
	li	t2, 0
	add	t2, t1, t2
	li	t1, 7
	add	t1, t2, t1
	li	t2, 0
	add	t1, t1, t2
	li	t2, 0
	add	t2, t1, t2
	li	t1, 7
	add	t1, t2, t1
	li	t2, 0
	add	t2, t1, t2
	li	t1, 12719578
	xor	t2, t2, t1
	li	t1, 12719578
	xor	a1, t2, t1
	lw	t1, fuckLLVM_N
	li	t2, 508104
	add	t1, t1, t2
	li	t2, 111
	add	t1, t1, t2
	li	t2, 0
	add	t1, t1, t2
	li	t2, 7
	add	t2, t1, t2
	li	t1, 0
	add	t1, t2, t1
	li	t2, 0
	add	t1, t1, t2
	li	t2, 7
	add	t2, t1, t2
	li	t1, 0
	add	t1, t2, t1
	li	t2, 5
	div	t2, ra, t2
	li	a2, 6
	mul	t2, t2, a2
	add	t2, t1, t2
	li	t1, 7
	add	t1, t2, t1
	li	t2, 0
	add	t1, t1, t2
	xor	t1, a1, t1
	li	t2, 12719578
	xor	t1, t1, t2
	li	t2, 12719578
	xor	t1, t1, t2
	li	t2, 12719578
	xor	t1, t1, t2
	li	t2, 12719578
	xor	t1, t1, t2
	li	t2, 12719578
	xor	t2, t1, t2
	li	t1, 12719578
	xor	t1, t2, t1
	li	t2, 12719578
	xor	t2, t1, t2
	li	t1, 12719578
	xor	t1, t2, t1
	li	t2, 12719578
	xor	t1, t1, t2
	li	t2, 12719578
	xor	t1, t1, t2
	li	t2, 12719578
	xor	t2, t1, t2
	li	t1, 12719578
	xor	t1, t2, t1
	li	t2, 12719578
	xor	t1, t1, t2
	li	t2, 12719578
	xor	t2, t1, t2
	li	t1, 12719578
	xor	t2, t2, t1
	li	t1, 12719578
	xor	t1, t2, t1
	li	t2, 12719578
	xor	t1, t1, t2
	li	t2, 12719578
	xor	t2, t1, t2
	li	t1, 12
	mul	ra, ra, t1
	li	t1, 12211342
	add	ra, t1, ra
	xor	ra, t2, ra
	li	t1, 11
	add	ra, ra, t1
	li	ra, 0
	j	.dceconst_ID35_for_incr
.dceconst_ID35_for_incr:
	li	t1, 1
	add	t0, t0, t1
	j	.dceconst_ID35_for_condition
.dceconst_ID35_for_out:
	j	.dceconst_return
.dceconst_return:
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
	sw	s8, 0(ra)
	j	.main_alloca
.main_alloca:
	j	.main_entry
.main_entry:
	call	__init
	li	a0, 0
	call	test
	mv	s8, a0
	call	naivedce
	add	s8, s8, a0
	call	dceconst
	add	t0, s8, a0
	li	ra, 50997
	sub	a0, t0, ra
	j	.main_return
.main_return:
	li	ra, -12
	add	ra, s0, ra
	lw	s8, 0(ra)
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.sbss
	.type	fuckLLVM_N,@object
	.globl	fuckLLVM_N
	.p2align	2
fuckLLVM_N:
	.word	80
	.size	fuckLLVM_N, 8

