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
.__init_entry:
	li	s4, 20
	li	s2, 4
	mul	s2, s4, s2
	li	s4, 4
	add	s2, s2, s4
	mv	a0, s2
	call	malloc
	mv	t0, a0
	li	s2, 20
	sw	s2, 0(t0)
	li	s4, 1
	li	s2, 4
	mul	s2, s4, s2
	add	s2, t0, s2
	sw	s2, fuckLLVM_a, s3
	j	.__init_return
.__init_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	jud
	.p2align	2
	.type	jud,@function
jud:
.jud_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t0, a0
.jud_entry:
	li	s2, -12
	add	s2, s0, s2
	sw	t0, 0(s2)
	li	s3, 0
	li	s2, -20
	add	s2, s0, s2
	sw	s3, 0(s2)
	j	.jud_ID4_for_condition
.jud_ID4_for_condition:
	li	s2, -20
	add	s2, s0, s2
	lw	s2, 0(s2)
	lw	s3, fuckLLVM_n
	li	s4, -12
	add	s4, s0, s4
	lw	s4, 0(s4)
	div	s3, s3, s4
	slt	s2, s2, s3
	bnez	s2, .jud_ID4_for_suite
	j	.jud_ID4_for_out
.jud_ID4_for_suite:
	li	s2, 0
	li	s3, -28
	add	s3, s0, s3
	sb	s2, 0(s3)
	li	s2, 0
	li	s3, -24
	add	s3, s0, s3
	sw	s2, 0(s3)
	j	.jud_ID10_for_condition
.jud_ID10_for_condition:
	li	s2, -24
	add	s2, s0, s2
	lw	s3, 0(s2)
	li	s2, -12
	add	s2, s0, s2
	lw	s4, 0(s2)
	li	s2, 1
	sub	s2, s4, s2
	slt	s2, s3, s2
	bnez	s2, .jud_ID10_for_suite
	j	.jud_ID10_for_out
.jud_ID10_for_suite:
	lw	s4, fuckLLVM_a
	li	s2, -20
	add	s2, s0, s2
	lw	s2, 0(s2)
	li	s3, -12
	add	s3, s0, s3
	lw	s3, 0(s3)
	mul	s2, s2, s3
	li	s3, -24
	add	s3, s0, s3
	lw	s3, 0(s3)
	add	s2, s2, s3
	li	s3, 4
	mul	s2, s2, s3
	add	s2, s4, s2
	lw	s4, 0(s2)
	lw	s5, fuckLLVM_a
	li	s2, -20
	add	s2, s0, s2
	lw	s2, 0(s2)
	li	s3, -12
	add	s3, s0, s3
	lw	s3, 0(s3)
	mul	s3, s2, s3
	li	s2, -24
	add	s2, s0, s2
	lw	s2, 0(s2)
	add	s3, s3, s2
	li	s2, 1
	add	s3, s3, s2
	li	s2, 4
	mul	s2, s3, s2
	add	s2, s5, s2
	lw	s2, 0(s2)
	slt	s2, s2, s4
	bnez	s2, .jud_ID32_if_true
	j	.jud_ID32_if_out
.jud_ID32_if_true:
	li	s2, 1
	li	s3, -28
	add	s3, s0, s3
	sb	s2, 0(s3)
	j	.jud_ID32_if_out
.jud_ID32_if_out:
	j	.jud_ID10_for_incr
.jud_ID10_for_incr:
	li	s2, -24
	add	s2, s0, s2
	lw	s2, 0(s2)
	li	s3, 1
	add	s2, s2, s3
	li	s3, -24
	add	s3, s0, s3
	sw	s2, 0(s3)
	j	.jud_ID10_for_condition
.jud_ID10_for_out:
	li	s2, -28
	add	s2, s0, s2
	lb	s3, 0(s2)
	li	s2, 1
	xor	s2, s3, s2
	bnez	s2, .jud_ID37_if_true
	j	.jud_ID37_if_out
.jud_ID37_if_true:
	li	s2, 1
	li	s3, -16
	add	s3, s0, s3
	sw	s2, 0(s3)
	j	.jud_return
	j	.jud_ID37_if_out
.jud_ID37_if_out:
	j	.jud_ID4_for_incr
.jud_ID4_for_incr:
	li	s2, -20
	add	s2, s0, s2
	lw	s2, 0(s2)
	li	s3, 1
	add	s3, s2, s3
	li	s2, -20
	add	s2, s0, s2
	sw	s3, 0(s2)
	j	.jud_ID4_for_condition
.jud_ID4_for_out:
	li	s2, 0
	li	s3, -16
	add	s3, s0, s3
	sw	s2, 0(s3)
	j	.jud_return
	j	.jud_return
.jud_return:
	li	s2, -16
	add	s2, s0, s2
	lw	t0, 0(s2)
	mv	a0, t0
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
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
.main_entry:
	call	__init
	li	s3, 0
	li	s2, -12
	add	s2, s0, s2
	sw	s3, 0(s2)
	call	getInt
	mv	t0, a0
	sw	t0, fuckLLVM_n, s4
	li	s2, 0
	sw	s2, fuckLLVM_i, s4
	j	.main_ID1_for_condition
.main_ID1_for_condition:
	lw	s3, fuckLLVM_i
	lw	s2, fuckLLVM_n
	slt	s2, s3, s2
	bnez	s2, .main_ID1_for_suite
	j	.main_ID1_for_out
.main_ID1_for_suite:
	lw	s3, fuckLLVM_a
	lw	s2, fuckLLVM_i
	li	s5, 4
	mul	s2, s2, s5
	add	s2, s3, s2
	call	getInt
	mv	t0, a0
	sw	t0, 0(s2)
	j	.main_ID1_for_incr
.main_ID1_for_incr:
	lw	s3, fuckLLVM_i
	li	s2, 1
	add	s2, s3, s2
	sw	s2, fuckLLVM_i, s4
	j	.main_ID1_for_condition
.main_ID1_for_out:
	lw	s2, fuckLLVM_n
	sw	s2, fuckLLVM_i, s4
	j	.main_ID11_for_condition
.main_ID11_for_condition:
	lw	s2, fuckLLVM_i
	li	s3, 0
	slt	s2, s3, s2
	bnez	s2, .main_ID11_for_suite
	j	.main_ID11_for_out
.main_ID11_for_suite:
	lw	s2, fuckLLVM_i
	mv	a0, s2
	call	jud
	mv	t0, a0
	li	s2, 0
	slt	s2, s2, t0
	bnez	s2, .main_ID16_if_true
	j	.main_ID16_if_out
.main_ID16_if_true:
	lw	s2, fuckLLVM_i
	mv	a0, s2
	call	toString
	mv	t0, a0
	mv	a0, t0
	call	print
	li	s3, 0
	li	s2, -12
	add	s2, s0, s2
	sw	s3, 0(s2)
	j	.main_return
	j	.main_ID16_if_out
.main_ID16_if_out:
	j	.main_ID11_for_incr
.main_ID11_for_incr:
	lw	s3, fuckLLVM_i
	li	s2, 2
	div	s2, s3, s2
	sw	s2, fuckLLVM_i, s4
	j	.main_ID11_for_condition
.main_ID11_for_out:
	li	s2, 0
	li	s3, -12
	add	s3, s0, s3
	sw	s2, 0(s3)
	j	.main_return
	j	.main_return
.main_return:
	li	s2, -12
	add	s2, s0, s2
	lw	t0, 0(s2)
	mv	a0, t0
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
	.type	fuckLLVM_a,@object
	.globl	fuckLLVM_a
	.p2align	2
fuckLLVM_a:
	.word	0
	.size	fuckLLVM_a, 8

	.section	.sbss
	.type	fuckLLVM_i,@object
	.globl	fuckLLVM_i
	.p2align	2
fuckLLVM_i:
	.word	0
	.size	fuckLLVM_i, 8

