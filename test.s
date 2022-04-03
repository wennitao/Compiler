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
	j	.main_alloca
.main_alloca:
	j	.main_entry
.main_entry:
	call	__init
	li	a0, 0
	li	ra, 1
	li	t0, 2
	add	ra, ra, t0
	li	t0, 3
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .main_ID9_if_true
	j	.main_ID9_if_false
.main_ID9_if_true:
	li	a0, 4
	j	.main_ID9_if_out
.main_ID9_if_false:
	li	a0, 5
	j	.main_ID9_if_out
.main_ID9_if_out:
	call	printlnInt
	li	a0, 0
	j	.main_return
.main_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

