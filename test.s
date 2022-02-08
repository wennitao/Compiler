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
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t0, sp
	li	t1, -20
	add	t1, s0, t1
	sw	t0, 0(t1)
	mv	t0, s1
	li	t1, -16
	add	t1, s0, t1
	sw	t0, 0(t1)
	mv	s5, s11
.main_entry:
	call	__init
	li	t1, 0
	li	t0, -12
	add	t0, s0, t0
	sw	t1, 0(t0)
	call	getInt
	li	t0, 0
	sw	a0, fuckLLVM_t, t0
	li	t0, 0
	li	t1, 0
	sw	t0, fuckLLVM_i, t1
	j	.main_ID1_for_condition
.main_ID1_for_condition:
	lw	t1, fuckLLVM_i
	lw	t0, fuckLLVM_t
	slt	t0, t1, t0
	bnez	t0, .main_ID1_for_suite
	j	.main_ID1_for_out
.main_ID1_for_suite:
	call	getString
	li	t0, 0
	sw	a0, fuckLLVM_s, t0
	lw	a0, fuckLLVM_s
	call	length
	li	t0, 0
	sw	a0, fuckLLVM_l, t0
	lw	t0, fuckLLVM_l
	li	t1, 10
	slt	t0, t1, t0
	bnez	t0, .main_ID10_if_true
	j	.main_ID10_if_false
.main_ID10_if_true:
	lw	a0, fuckLLVM_s
	li	a1, 0
	li	a2, 1
	call	substring
	mv	s1, a0
	lw	t1, fuckLLVM_l
	li	t0, 2
	sub	a0, t1, t0
	call	toString
	mv	a1, a0
	mv	a0, s1
	call	string_add
	mv	s1, a0
	lw	a0, fuckLLVM_s
	lw	t0, fuckLLVM_l
	li	t1, 1
	sub	a1, t0, t1
	lw	a2, fuckLLVM_l
	call	substring
	mv	a1, a0
	mv	a0, s1
	call	string_add
	call	println
	j	.main_ID10_if_out
.main_ID10_if_false:
	lw	a0, fuckLLVM_s
	call	println
	j	.main_ID10_if_out
.main_ID10_if_out:
	j	.main_ID1_for_incr
.main_ID1_for_incr:
	lw	t1, fuckLLVM_i
	li	t0, 1
	add	t0, t1, t0
	li	t1, 0
	sw	t0, fuckLLVM_i, t1
	j	.main_ID1_for_condition
.main_ID1_for_out:
	j	.main_return
.main_return:
	li	t0, -12
	add	t0, s0, t0
	lw	a0, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	sp, t0
	li	t0, -16
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	s1, t0
	mv	s11, s5
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.sbss
	.type	fuckLLVM_t,@object
	.globl	fuckLLVM_t
	.p2align	2
fuckLLVM_t:
	.word	0
	.size	fuckLLVM_t, 8

	.section	.sbss
	.type	fuckLLVM_l,@object
	.globl	fuckLLVM_l
	.p2align	2
fuckLLVM_l:
	.word	0
	.size	fuckLLVM_l, 8

	.section	.sbss
	.type	fuckLLVM_i,@object
	.globl	fuckLLVM_i
	.p2align	2
fuckLLVM_i:
	.word	0
	.size	fuckLLVM_i, 8

	.section	.sbss
	.type	fuckLLVM_s,@object
	.globl	fuckLLVM_s
	.p2align	2
fuckLLVM_s:
	.word	0
	.size	fuckLLVM_s, 8

