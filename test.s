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

	.globl	older
	.p2align	2
	.type	older,@function
older:
.older_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.older_entry
.older_entry:
	li	t0, -12
	add	t0, s0, t0
	sw	a0, 0(t0)
	j	.older_return
.older_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classolder_solveAge
	.p2align	2
	.type	classolder_solveAge,@function
classolder_solveAge:
.classolder_solveAge_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t0, s0
	j	.classolder_solveAge_entry
.classolder_solveAge_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	a0, 1
	li	t1, -16
	add	t1, s0, t1
	sw	a0, 0(t1)
	j	.classolder_solveAge_ID6_for_condition
.classolder_solveAge_ID6_for_condition:
	li	t1, -16
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 100
	slt	t1, t2, t1
	bnez	t1, .classolder_solveAge_ID6_for_suite
	j	.classolder_solveAge_ID6_for_out
.classolder_solveAge_ID6_for_suite:
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, 1
	add	t1, a0, t1
	li	a0, -20
	add	a0, s0, a0
	sw	t1, 0(a0)
	j	.classolder_solveAge_ID10_for_condition
.classolder_solveAge_ID10_for_condition:
	li	t1, -20
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, 100
	slt	t1, a0, t1
	bnez	t1, .classolder_solveAge_ID10_for_suite
	j	.classolder_solveAge_ID10_for_out
.classolder_solveAge_ID10_for_suite:
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, 1
	add	t1, t1, a0
	li	a0, -24
	add	a0, s0, a0
	sw	t1, 0(a0)
	j	.classolder_solveAge_ID14_for_condition
.classolder_solveAge_ID14_for_condition:
	li	t1, -24
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, 100
	slt	t1, a0, t1
	bnez	t1, .classolder_solveAge_ID14_for_suite
	j	.classolder_solveAge_ID14_for_out
.classolder_solveAge_ID14_for_suite:
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	sub	t1, a0, t1
	li	a0, -16
	add	a0, s0, a0
	lw	a0, 0(a0)
	add	a0, t1, a0
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	a0, a0, t1
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	sub	t1, a0, t1
	li	a0, -20
	add	a0, s0, a0
	lw	a0, 0(a0)
	add	a0, t1, a0
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, a0, t1
	li	a0, -24
	add	a0, s0, a0
	lw	a0, 0(a0)
	sub	a0, t1, a0
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	a1, a0, t1
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, 100
	mul	a0, a0, t1
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a2, 10
	mul	t1, a2, t1
	add	t1, a0, t1
	li	a0, -24
	add	a0, s0, a0
	lw	a0, 0(a0)
	add	t1, t1, a0
	mul	a0, a1, t1
	li	t1, 1926
	rem	a0, a0, t1
	li	t1, 0
	xor	t1, a0, t1
	sltiu	t1, t1, 1
	bnez	t1, .classolder_solveAge_ID43_if_true
	j	.classolder_solveAge_ID43_if_out
.classolder_solveAge_ID43_if_true:
	addi	a1, t2, 0
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, -16
	add	a0, s0, a0
	lw	a0, 0(a0)
	sub	a0, t1, a0
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, a0, t1
	li	a0, -20
	add	a0, s0, a0
	lw	a0, 0(a0)
	add	a0, t1, a0
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	sub	a0, a0, t1
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	a0, a0, t1
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	a0, a0, t1
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	sub	t1, a0, t1
	li	a0, -24
	add	a0, s0, a0
	lw	a0, 0(a0)
	add	a3, t1, a0
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, 100
	mul	a0, t1, a0
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a2, 10
	mul	t1, a2, t1
	add	t1, a0, t1
	li	a0, -24
	add	a0, s0, a0
	lw	a0, 0(a0)
	add	t1, t1, a0
	mul	t1, a3, t1
	sw	t1, 0(a1)
	j	.classolder_solveAge_ID43_if_out
.classolder_solveAge_ID43_if_out:
	j	.classolder_solveAge_ID14_for_incr
.classolder_solveAge_ID14_for_incr:
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, 1
	add	t1, t1, a0
	li	a0, -24
	add	a0, s0, a0
	sw	t1, 0(a0)
	j	.classolder_solveAge_ID14_for_condition
.classolder_solveAge_ID14_for_out:
	j	.classolder_solveAge_ID10_for_incr
.classolder_solveAge_ID10_for_incr:
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, 1
	add	t1, t1, a0
	li	a0, -20
	add	a0, s0, a0
	sw	t1, 0(a0)
	j	.classolder_solveAge_ID10_for_condition
.classolder_solveAge_ID10_for_out:
	j	.classolder_solveAge_ID6_for_incr
.classolder_solveAge_ID6_for_incr:
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, 1
	add	t1, a0, t1
	li	a0, -16
	add	a0, s0, a0
	sw	t1, 0(a0)
	j	.classolder_solveAge_ID6_for_condition
.classolder_solveAge_ID6_for_out:
	j	.classolder_solveAge_return
.classolder_solveAge_return:
	mv	s0, t0
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
	mv	t0, s0
	li	t1, -20
	add	t1, s0, t1
	sw	s2, 0(t1)
	j	.main_entry
.main_entry:
	call	__init
	li	t1, 0
	li	t2, -12
	add	t2, s0, t2
	sw	t1, 0(t2)
	li	a0, 4
	call	malloc
	mv	s2, a0
	mv	a0, s2
	call	older
	li	t1, -16
	add	t1, s0, t1
	sw	s2, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	call	classolder_solveAge
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	t1, t1, 0
	lw	t1, 0(t1)
	li	t2, 10000
	slt	t1, t2, t1
	bnez	t1, .main_ID10_if_true
	j	.main_ID10_if_out
.main_ID10_if_true:
	la	a0, fuckLLVM_.str.0
	call	println
	j	.main_ID10_if_out
.main_ID10_if_out:
	li	t1, 0
	li	t2, -12
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.main_return
.main_return:
	li	t1, -12
	add	t1, s0, t1
	lw	a0, 0(t1)
	mv	s0, t0
	li	t1, -20
	add	t1, s0, t1
	lw	s2, 0(t1)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"eternal! "
	.size	fuckLLVM_.str.0, 9

