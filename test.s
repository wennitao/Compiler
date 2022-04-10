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

	.globl	bubble_sort
	.p2align	2
	.type	bubble_sort,@function
bubble_sort:
.bubble_sort_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.bubble_sort_entry
.bubble_sort_entry:
	li	t0, -1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, a0, ra
	lw	a1, 0(ra)
	li	t1, 0
	li	ra, 0
	li	t0, 0
	j	.bubble_sort_ID9_for_condition
.bubble_sort_ID9_for_condition:
	li	t1, 1
	sub	t1, a1, t1
	slt	t1, t0, t1
	bnez	t1, .bubble_sort_ID9_for_suite
	j	.bubble_sort_ID9_for_out
.bubble_sort_ID9_for_suite:
	li	t1, 0
	j	.bubble_sort_ID13_for_condition
.bubble_sort_ID13_for_condition:
	sub	a2, a1, t0
	li	t2, 1
	sub	t2, a2, t2
	slt	t2, t1, t2
	bnez	t2, .bubble_sort_ID13_for_suite
	j	.bubble_sort_ID13_for_out
.bubble_sort_ID13_for_suite:
	li	t2, 4
	mul	t2, t1, t2
	add	t2, a0, t2
	lw	t2, 0(t2)
	li	a2, 1
	add	a3, t1, a2
	li	a2, 4
	mul	a2, a3, a2
	add	a2, a0, a2
	lw	a2, 0(a2)
	slt	t2, t2, a2
	bnez	t2, .bubble_sort_ID29_if_true
	j	.bubble_sort_ID29_if_out
.bubble_sort_ID29_if_true:
	j	.bubble_sort_ID13_for_incr
.bubble_sort_ID29_if_out:
	li	ra, 4
	mul	ra, t1, ra
	add	ra, a0, ra
	lw	ra, 0(ra)
	li	t2, 4
	mul	t2, t1, t2
	add	a2, a0, t2
	li	t2, 1
	add	t2, t1, t2
	li	a3, 4
	mul	t2, t2, a3
	add	t2, a0, t2
	lw	t2, 0(t2)
	sw	t2, 0(a2)
	li	t2, 1
	add	t2, t1, t2
	li	a2, 4
	mul	t2, t2, a2
	add	t2, a0, t2
	sw	ra, 0(t2)
	j	.bubble_sort_ID13_for_incr
.bubble_sort_ID13_for_incr:
	li	t2, 1
	add	t1, t1, t2
	j	.bubble_sort_ID13_for_condition
.bubble_sort_ID13_for_out:
	j	.bubble_sort_ID9_for_incr
.bubble_sort_ID9_for_incr:
	li	t2, 1
	add	t0, t0, t2
	j	.bubble_sort_ID9_for_condition
.bubble_sort_ID9_for_out:
	j	.bubble_sort_return
.bubble_sort_return:
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
	li	ra, -24
	add	ra, s0, ra
	sw	s1, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s4, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	sw	s6, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s9, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	s11, 0(ra)
	j	.main_entry
.main_entry:
	call	__init
	call	getInt
	mv	s6, a0
	li	ra, 4
	mul	t0, s6, ra
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	sw	s6, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	s4, a0, ra
	li	s9, 0
	j	.main_ID13_for_condition
.main_ID13_for_condition:
	slt	ra, s9, s6
	bnez	ra, .main_ID13_for_suite
	j	.main_ID13_for_out
.main_ID13_for_suite:
	li	ra, 4
	mul	ra, s9, ra
	add	s1, s4, ra
	call	getInt
	sw	a0, 0(s1)
	j	.main_ID13_for_incr
.main_ID13_for_incr:
	li	ra, 1
	add	s9, s9, ra
	j	.main_ID13_for_condition
.main_ID13_for_out:
	mv	a0, s4
	call	bubble_sort
	li	s1, 0
	j	.main_ID25_for_condition
.main_ID25_for_condition:
	slt	ra, s1, s6
	bnez	ra, .main_ID25_for_suite
	j	.main_ID25_for_out
.main_ID25_for_suite:
	li	ra, 4
	mul	ra, s1, ra
	add	ra, s4, ra
	lw	a0, 0(ra)
	call	toString
	la	a1, fuckLLVM_.str.0
	call	string_add
	call	print
	j	.main_ID25_for_incr
.main_ID25_for_incr:
	li	ra, 1
	add	s1, s1, ra
	j	.main_ID25_for_condition
.main_ID25_for_out:
	la	a0, fuckLLVM_.str.1
	call	println
	j	.main_return
.main_return:
	li	a0, 0
	li	ra, -24
	add	ra, s0, ra
	lw	s1, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	s4, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	lw	s6, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s9, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	s11, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"  "
	.size	fuckLLVM_.str.0, 2

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	" "
	.size	fuckLLVM_.str.1, 1

