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

	.globl	Slice_int
	.p2align	2
	.type	Slice_int,@function
Slice_int:
.Slice_int_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.Slice_int_entry
.Slice_int_entry:
	j	.Slice_int_return
.Slice_int_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classSlice_int_init
	.p2align	2
	.type	classSlice_int_init,@function
classSlice_int_init:
.classSlice_int_init_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classSlice_int_init_entry
.classSlice_int_init_entry:
	addi	t0, a0, 0
	sw	a1, 0(t0)
	addi	t0, a0, 8
	li	t1, 0
	sw	t1, 0(t0)
	addi	t2, a0, 12
	li	t0, -1
	li	t1, 4
	mul	t0, t0, t1
	add	t0, a1, t0
	lw	t0, 0(t0)
	sw	t0, 0(t2)
	j	.classSlice_int_init_return
.classSlice_int_init_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classSlice_int_size
	.p2align	2
	.type	classSlice_int_size,@function
classSlice_int_size:
.classSlice_int_size_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classSlice_int_size_entry
.classSlice_int_size_entry:
	addi	t0, a0, 12
	lw	t0, 0(t0)
	addi	t1, a0, 8
	lw	t1, 0(t1)
	sub	a0, t0, t1
	j	.classSlice_int_size_return
.classSlice_int_size_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classSlice_int_get
	.p2align	2
	.type	classSlice_int_get,@function
classSlice_int_get:
.classSlice_int_get_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classSlice_int_get_entry
.classSlice_int_get_entry:
	addi	t0, a0, 0
	lw	t1, 0(t0)
	addi	t0, a0, 8
	lw	t0, 0(t0)
	add	t0, t0, a1
	li	t2, 4
	mul	t0, t0, t2
	add	t0, t1, t0
	lw	a0, 0(t0)
	j	.classSlice_int_get_return
.classSlice_int_get_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classSlice_int_set
	.p2align	2
	.type	classSlice_int_set,@function
classSlice_int_set:
.classSlice_int_set_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classSlice_int_set_entry
.classSlice_int_set_entry:
	addi	t0, a0, 0
	lw	t2, 0(t0)
	addi	t0, a0, 8
	lw	t0, 0(t0)
	add	t1, t0, a1
	li	t0, 4
	mul	t0, t1, t0
	add	t0, t2, t0
	sw	a2, 0(t0)
	j	.classSlice_int_set_return
.classSlice_int_set_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classSlice_int_slice
	.p2align	2
	.type	classSlice_int_slice,@function
classSlice_int_slice:
.classSlice_int_slice_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -28
	add	t0, s0, t0
	sw	s2, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s3, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	sw	s8, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	sw	s9, 0(t0)
	j	.classSlice_int_slice_entry
.classSlice_int_slice_entry:
	mv	s3, a0
	mv	s8, a1
	mv	s6, a2
	li	a0, 16
	call	malloc
	mv	s2, a0
	mv	a0, s2
	call	Slice_int
	addi	t0, s2, 0
	addi	t1, s3, 0
	lw	t1, 0(t1)
	sw	t1, 0(t0)
	addi	t1, s2, 8
	addi	t0, s3, 8
	lw	t0, 0(t0)
	add	t0, t0, s8
	sw	t0, 0(t1)
	addi	t1, s2, 12
	addi	t0, s3, 8
	lw	t0, 0(t0)
	add	t0, t0, s6
	sw	t0, 0(t1)
	addi	t0, s2, 8
	lw	t2, 0(t0)
	addi	t0, s3, 0
	lw	t1, 0(t0)
	li	t0, -1
	li	a0, 4
	mul	t0, t0, a0
	add	t0, t1, t0
	lw	t0, 0(t0)
	slt	t1, t0, t2
	li	t0, 1
	bnez	t1, .classSlice_int_slice_ID37_OrOr_out
	j	.classSlice_int_slice_ID37_OrOr_false
.classSlice_int_slice_ID37_OrOr_false:
	addi	t0, s2, 12
	lw	t1, 0(t0)
	addi	t0, s3, 0
	lw	a0, 0(t0)
	li	t0, -1
	li	t2, 4
	mul	t0, t0, t2
	add	t0, a0, t0
	lw	t0, 0(t0)
	slt	t0, t0, t1
	j	.classSlice_int_slice_ID37_OrOr_out
.classSlice_int_slice_ID37_OrOr_out:
	bnez	t0, .classSlice_int_slice_ID47_if_true
	j	.classSlice_int_slice_ID47_if_out
.classSlice_int_slice_ID47_if_true:
	la	a0, fuckLLVM_.str.0
	call	println
	j	.classSlice_int_slice_ID47_if_out
.classSlice_int_slice_ID47_if_out:
	mv	a0, s2
	j	.classSlice_int_slice_return
.classSlice_int_slice_return:
	li	t0, -28
	add	t0, s0, t0
	lw	s2, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s3, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	s8, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	lw	s9, 0(t0)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classSlice_int_tail
	.p2align	2
	.type	classSlice_int_tail,@function
classSlice_int_tail:
.classSlice_int_tail_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -12
	add	t0, s0, t0
	sw	s2, 0(t0)
	j	.classSlice_int_tail_entry
.classSlice_int_tail_entry:
	mv	s2, a0
	mv	a0, s2
	call	classSlice_int_size
	mv	a2, a0
	mv	a0, s2
	li	a1, 1
	call	classSlice_int_slice
	j	.classSlice_int_tail_return
.classSlice_int_tail_return:
	li	t0, -12
	add	t0, s0, t0
	lw	s2, 0(t0)
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classSlice_int_copy
	.p2align	2
	.type	classSlice_int_copy,@function
classSlice_int_copy:
.classSlice_int_copy_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -16
	add	t0, s0, t0
	sw	s1, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	sw	s8, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	sw	s9, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	sw	s11, 0(t0)
	j	.classSlice_int_copy_entry
.classSlice_int_copy_entry:
	mv	s8, a0
	mv	s1, a1
	mv	a0, s8
	call	classSlice_int_size
	mv	s6, a0
	mv	a0, s1
	call	classSlice_int_size
	slt	t0, s6, a0
	bnez	t0, .classSlice_int_copy_ID9_if_true
	j	.classSlice_int_copy_ID9_if_out
.classSlice_int_copy_ID9_if_true:
	la	a0, fuckLLVM_.str.1
	call	println
	j	.classSlice_int_copy_ID9_if_out
.classSlice_int_copy_ID9_if_out:
	li	s6, 0
	j	.classSlice_int_copy_ID12_for_condition
.classSlice_int_copy_ID12_for_condition:
	mv	a0, s1
	call	classSlice_int_size
	slt	t0, s6, a0
	bnez	t0, .classSlice_int_copy_ID12_for_suite
	j	.classSlice_int_copy_ID12_for_out
.classSlice_int_copy_ID12_for_suite:
	addi	t0, s8, 0
	lw	t1, 0(t0)
	addi	t0, s8, 8
	lw	t0, 0(t0)
	add	t0, t0, s6
	li	t2, 4
	mul	t0, t0, t2
	add	s9, t1, t0
	mv	a0, s1
	mv	a1, s6
	call	classSlice_int_get
	sw	a0, 0(s9)
	j	.classSlice_int_copy_ID12_for_incr
.classSlice_int_copy_ID12_for_incr:
	li	t0, 1
	add	s6, s6, t0
	j	.classSlice_int_copy_ID12_for_condition
.classSlice_int_copy_ID12_for_out:
	j	.classSlice_int_copy_return
.classSlice_int_copy_return:
	li	t0, -16
	add	t0, s0, t0
	lw	s1, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	lw	s8, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	s9, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	lw	s11, 0(t0)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classSlice_int_cloneArray
	.p2align	2
	.type	classSlice_int_cloneArray,@function
classSlice_int_cloneArray:
.classSlice_int_cloneArray_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -12
	add	t0, s0, t0
	sw	s3, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	sw	s4, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	sw	s7, 0(t0)
	j	.classSlice_int_cloneArray_entry
.classSlice_int_cloneArray_entry:
	mv	s6, a0
	mv	a0, s6
	call	classSlice_int_size
	mv	s3, a0
	li	t0, 4
	mul	t0, s3, t0
	li	t1, 4
	add	a0, t0, t1
	call	malloc
	sw	s3, 0(a0)
	li	t0, 1
	li	t1, 4
	mul	t0, t0, t1
	add	s3, a0, t0
	li	s4, 0
	j	.classSlice_int_cloneArray_ID14_for_condition
.classSlice_int_cloneArray_ID14_for_condition:
	mv	a0, s6
	call	classSlice_int_size
	slt	t0, s4, a0
	bnez	t0, .classSlice_int_cloneArray_ID14_for_suite
	j	.classSlice_int_cloneArray_ID14_for_out
.classSlice_int_cloneArray_ID14_for_suite:
	li	t0, 4
	mul	t0, s4, t0
	add	t1, s3, t0
	addi	t0, s6, 0
	lw	t0, 0(t0)
	addi	t2, s6, 8
	lw	t2, 0(t2)
	add	a0, t2, s4
	li	t2, 4
	mul	t2, a0, t2
	add	t0, t0, t2
	lw	t0, 0(t0)
	sw	t0, 0(t1)
	j	.classSlice_int_cloneArray_ID14_for_incr
.classSlice_int_cloneArray_ID14_for_incr:
	li	t0, 1
	add	s4, s4, t0
	j	.classSlice_int_cloneArray_ID14_for_condition
.classSlice_int_cloneArray_ID14_for_out:
	mv	a0, s3
	j	.classSlice_int_cloneArray_return
.classSlice_int_cloneArray_return:
	li	t0, -12
	add	t0, s0, t0
	lw	s3, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	s4, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	s7, 0(t0)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	makeSlice_int
	.p2align	2
	.type	makeSlice_int,@function
makeSlice_int:
.makeSlice_int_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -20
	add	t0, s0, t0
	sw	s3, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s10, 0(t0)
	j	.makeSlice_int_entry
.makeSlice_int_entry:
	li	t0, -16
	add	t0, s0, t0
	sw	a0, 0(t0)
	li	a0, 16
	call	malloc
	mv	s3, a0
	mv	a0, s3
	call	Slice_int
	mv	a0, s3
	li	t0, -16
	add	t0, s0, t0
	lw	a1, 0(t0)
	call	classSlice_int_init
	mv	a0, s3
	j	.makeSlice_int_return
.makeSlice_int_return:
	li	t0, -20
	add	t0, s0, t0
	lw	s3, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s10, 0(t0)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	merge
	.p2align	2
	.type	merge,@function
merge:
.merge_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -16
	add	t0, s0, t0
	sw	s1, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s2, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	sw	s3, 0(t0)
	li	t0, -32
	add	t0, s0, t0
	sw	s4, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	sw	s11, 0(t0)
	j	.merge_entry
.merge_entry:
	mv	s1, a0
	mv	s2, a1
	mv	a0, s1
	call	classSlice_int_size
	li	t0, 0
	xor	t0, a0, t0
	sltiu	t0, t0, 1
	bnez	t0, .merge_ID7_if_true
	j	.merge_ID7_if_out
.merge_ID7_if_true:
	mv	a0, s2
	call	classSlice_int_cloneArray
	j	.merge_return
.merge_ID7_if_out:
	mv	a0, s2
	call	classSlice_int_size
	li	t0, 0
	xor	t0, a0, t0
	sltiu	t0, t0, 1
	bnez	t0, .merge_ID13_if_true
	j	.merge_ID13_if_out
.merge_ID13_if_true:
	mv	a0, s1
	call	classSlice_int_cloneArray
	j	.merge_return
.merge_ID13_if_out:
	mv	a0, s1
	call	classSlice_int_size
	mv	s3, a0
	mv	a0, s2
	call	classSlice_int_size
	add	s3, s3, a0
	li	t0, 4
	mul	t0, s3, t0
	li	t1, 4
	add	a0, t0, t1
	call	malloc
	sw	s3, 0(a0)
	li	t0, 1
	li	t1, 4
	mul	t0, t0, t1
	add	s4, a0, t0
	mv	a0, s4
	call	makeSlice_int
	call	classSlice_int_tail
	mv	s3, a0
	mv	a0, s1
	li	a1, 0
	call	classSlice_int_get
	mv	s6, a0
	mv	a0, s2
	li	a1, 0
	call	classSlice_int_get
	slt	t0, s6, a0
	bnez	t0, .merge_ID41_if_true
	j	.merge_ID41_if_false
.merge_ID41_if_true:
	li	t1, 0
	li	t0, 4
	mul	t0, t1, t0
	add	s6, s4, t0
	mv	a0, s1
	li	a1, 0
	call	classSlice_int_get
	sw	a0, 0(s6)
	mv	a0, s1
	call	classSlice_int_tail
	mv	a1, s2
	call	merge
	call	makeSlice_int
	mv	a1, a0
	mv	a0, s3
	call	classSlice_int_copy
	j	.merge_ID41_if_out
.merge_ID41_if_false:
	li	t1, 0
	li	t0, 4
	mul	t0, t1, t0
	add	s6, s4, t0
	mv	a0, s2
	li	a1, 0
	call	classSlice_int_get
	sw	a0, 0(s6)
	mv	a0, s2
	call	classSlice_int_tail
	mv	a1, a0
	mv	a0, s1
	call	merge
	call	makeSlice_int
	mv	a1, a0
	mv	a0, s3
	call	classSlice_int_copy
	j	.merge_ID41_if_out
.merge_ID41_if_out:
	mv	a0, s4
	j	.merge_return
.merge_return:
	li	t0, -16
	add	t0, s0, t0
	lw	s1, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s2, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	lw	s3, 0(t0)
	li	t0, -32
	add	t0, s0, t0
	lw	s4, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	lw	s11, 0(t0)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	mergeSort
	.p2align	2
	.type	mergeSort,@function
mergeSort:
.mergeSort_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -12
	add	t0, s0, t0
	sw	s3, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	sw	s5, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	sw	s11, 0(t0)
	j	.mergeSort_entry
.mergeSort_entry:
	mv	s5, a0
	mv	a0, s5
	call	classSlice_int_size
	li	t0, 1
	xor	t0, a0, t0
	sltiu	t0, t0, 1
	bnez	t0, .mergeSort_ID5_if_true
	j	.mergeSort_ID5_if_out
.mergeSort_ID5_if_true:
	j	.mergeSort_return
.mergeSort_ID5_if_out:
	mv	a0, s5
	call	classSlice_int_size
	mv	s6, a0
	mv	t0, s6
	li	t1, 2
	div	t0, t0, t1
	mv	s3, t0
	mv	a0, s5
	mv	a2, s3
	li	a1, 0
	call	classSlice_int_slice
	call	mergeSort
	mv	a0, s5
	mv	a1, s3
	mv	a2, s6
	call	classSlice_int_slice
	call	mergeSort
	mv	a0, s5
	mv	a2, s3
	li	a1, 0
	call	classSlice_int_slice
	mv	s11, a0
	mv	a0, s5
	mv	a1, s3
	mv	a2, s6
	call	classSlice_int_slice
	mv	a1, a0
	mv	a0, s11
	call	merge
	call	makeSlice_int
	mv	a1, a0
	mv	a0, s5
	call	classSlice_int_copy
	j	.mergeSort_return
.mergeSort_return:
	li	t0, -12
	add	t0, s0, t0
	lw	s3, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	lw	s5, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	s11, 0(t0)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	mergeSortInf
	.p2align	2
	.type	mergeSortInf,@function
mergeSortInf:
.mergeSortInf_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.mergeSortInf_entry
.mergeSortInf_entry:
	call	makeSlice_int
	call	mergeSort
	j	.mergeSortInf_return
.mergeSortInf_return:
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
	li	t0, -24
	add	t0, s0, t0
	sw	s3, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	sw	s4, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	sw	s10, 0(t0)
	j	.main_entry
.main_entry:
	call	__init
	li	a0, 0
	call	getInt
	mv	s3, a0
	li	t0, 4
	mul	t0, s3, t0
	li	t1, 4
	add	a0, t0, t1
	call	malloc
	sw	s3, 0(a0)
	li	t0, 1
	li	t1, 4
	mul	t0, t0, t1
	add	s4, a0, t0
	li	s6, 0
	j	.main_ID13_for_condition
.main_ID13_for_condition:
	slt	t0, s6, s3
	bnez	t0, .main_ID13_for_suite
	j	.main_ID13_for_out
.main_ID13_for_suite:
	li	t0, 4
	mul	t0, s6, t0
	add	t0, s4, t0
	li	t1, -16
	add	t1, s0, t1
	sw	t0, 0(t1)
	call	getInt
	li	t0, -16
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	a0, 0(t0)
	j	.main_ID13_for_incr
.main_ID13_for_incr:
	li	t0, 1
	add	s6, s6, t0
	j	.main_ID13_for_condition
.main_ID13_for_out:
	mv	a0, s4
	call	mergeSortInf
	li	s6, 0
	j	.main_ID25_for_condition
.main_ID25_for_condition:
	slt	t0, s6, s3
	bnez	t0, .main_ID25_for_suite
	j	.main_ID25_for_out
.main_ID25_for_suite:
	li	t0, 4
	mul	t0, s6, t0
	add	t0, s4, t0
	lw	a0, 0(t0)
	call	toString
	la	a1, fuckLLVM_.str.2
	call	string_add
	call	print
	j	.main_ID25_for_incr
.main_ID25_for_incr:
	li	t0, 1
	add	s6, s6, t0
	j	.main_ID25_for_condition
.main_ID25_for_out:
	la	a0, fuckLLVM_.str.3
	call	println
	li	a0, 0
	j	.main_return
.main_return:
	li	t0, -24
	add	t0, s0, t0
	lw	s3, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	lw	s4, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	s10, 0(t0)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"Warning: Slice_int::slice: out of range "
	.size	fuckLLVM_.str.0, 40

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"Warning: Slice_int::copy: size() < arr.size() "
	.size	fuckLLVM_.str.1, 46

	.section	.rodata
	.type	fuckLLVM_.str.2,@object
fuckLLVM_.str.2:
	.asciz	"  "
	.size	fuckLLVM_.str.2, 2

	.section	.rodata
	.type	fuckLLVM_.str.3,@object
fuckLLVM_.str.3:
	.asciz	" "
	.size	fuckLLVM_.str.3, 1

