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
.Slice_int_entry:
	sw	a0, 0(t0)
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
.classSlice_int_init_alloca:
	j	.classSlice_int_init_entry
.classSlice_int_init_entry:
	addi	t0, a0, 0
	sw	a1, 0(t0)
	addi	t0, a0, 8
	sw	zero, 0(t0)
	addi	t2, a0, 12
	addi	t1, zero, -1
	addi	t0, zero, 4
	mul	t0, t1, t0
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
.classSlice_int_size_alloca:
	j	.classSlice_int_size_entry
.classSlice_int_size_entry:
	addi	t0, a0, 12
	lw	t1, 0(t0)
	addi	t0, a0, 8
	lw	t0, 0(t0)
	sub	a0, t1, t0
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
.classSlice_int_get_alloca:
	j	.classSlice_int_get_entry
.classSlice_int_get_entry:
	addi	t0, a0, 0
	lw	t1, 0(t0)
	addi	t0, a0, 8
	lw	t0, 0(t0)
	add	t2, t0, a1
	addi	t0, zero, 4
	mul	t0, t2, t0
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
.classSlice_int_set_alloca:
	j	.classSlice_int_set_entry
.classSlice_int_set_entry:
	addi	t0, a0, 0
	lw	t2, 0(t0)
	addi	t0, a0, 8
	lw	t0, 0(t0)
	add	t1, t0, a1
	addi	t0, zero, 4
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
	sw	s3, -28(s0)
	sw	s4, -12(s0)
	sw	s7, -16(s0)
	sw	s9, -20(s0)
.classSlice_int_slice_alloca:
	j	.classSlice_int_slice_entry
.classSlice_int_slice_entry:
	mv	s7, a0
	sw	a1, -24(s0)
	mv	s4, a2
	addi	a0, zero, 16
	call	malloc
	mv	s3, a0
	mv	a0, s3
	call	Slice_int
	mv	t0, s3
	addi	t1, t0, 0
	addi	t0, s7, 0
	lw	t0, 0(t0)
	sw	t0, 0(t1)
	mv	t0, s3
	addi	t1, t0, 8
	addi	t0, s7, 8
	lw	t2, 0(t0)
	lw	t0, -24(s0)
	add	t0, t2, t0
	sw	t0, 0(t1)
	mv	t0, s3
	addi	t2, t0, 12
	addi	t0, s7, 8
	lw	t1, 0(t0)
	mv	t0, s4
	add	t0, t1, t0
	sw	t0, 0(t2)
	mv	t0, s3
	addi	t0, t0, 8
	lw	t2, 0(t0)
	addi	t0, s7, 0
	lw	a0, 0(t0)
	addi	t1, zero, -1
	addi	t0, zero, 4
	mul	t0, t1, t0
	add	t0, a0, t0
	lw	t0, 0(t0)
	slt	t1, t0, t2
	li	t0, 1
	bnez	t1, .classSlice_int_slice_ID37_OrOr_out
	j	.classSlice_int_slice_ID37_OrOr_false
.classSlice_int_slice_ID37_OrOr_false:
	mv	t0, s3
	addi	t0, t0, 12
	lw	t1, 0(t0)
	addi	t0, s7, 0
	lw	t0, 0(t0)
	addi	a0, zero, -1
	addi	t2, zero, 4
	mul	t2, a0, t2
	add	t0, t0, t2
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
	mv	a0, s3
	j	.classSlice_int_slice_return
.classSlice_int_slice_return:
	lw	s3, -28(s0)
	lw	s4, -12(s0)
	lw	s7, -16(s0)
	lw	s9, -20(s0)
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
	sw	s1, -12(s0)
.classSlice_int_tail_alloca:
	j	.classSlice_int_tail_entry
.classSlice_int_tail_entry:
	mv	s1, a0
	mv	a0, s1
	call	classSlice_int_size
	mv	a2, a0
	mv	a0, s1
	addi	a1, zero, 1
	call	classSlice_int_slice
	j	.classSlice_int_tail_return
.classSlice_int_tail_return:
	lw	s1, -12(s0)
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
	sw	s1, -12(s0)
	sw	s2, -20(s0)
	sw	s7, -16(s0)
	sw	s10, -24(s0)
.classSlice_int_copy_alloca:
	j	.classSlice_int_copy_entry
.classSlice_int_copy_entry:
	mv	s2, a0
	mv	s7, a1
	mv	a0, s2
	call	classSlice_int_size
	mv	s1, a0
	mv	a0, s7
	call	classSlice_int_size
	slt	t0, s1, a0
	bnez	t0, .classSlice_int_copy_ID9_if_true
	j	.classSlice_int_copy_ID9_if_out
.classSlice_int_copy_ID9_if_true:
	la	a0, fuckLLVM_.str.1
	call	println
	j	.classSlice_int_copy_ID9_if_out
.classSlice_int_copy_ID9_if_out:
	mv	s1, zero
	j	.classSlice_int_copy_ID12_for_condition
.classSlice_int_copy_ID12_for_condition:
	mv	a0, s7
	call	classSlice_int_size
	slt	t0, s1, a0
	bnez	t0, .classSlice_int_copy_ID12_for_suite
	j	.classSlice_int_copy_ID12_for_out
.classSlice_int_copy_ID12_for_suite:
	addi	t0, s2, 0
	lw	t2, 0(t0)
	addi	t0, s2, 8
	lw	t1, 0(t0)
	mv	t0, s1
	add	t0, t1, t0
	addi	t1, zero, 4
	mul	t0, t0, t1
	add	s10, t2, t0
	mv	a0, s7
	mv	a1, s1
	call	classSlice_int_get
	sw	a0, 0(s10)
	j	.classSlice_int_copy_ID12_for_incr
.classSlice_int_copy_ID12_for_incr:
	mv	t0, s1
	addi	t1, zero, 1
	add	t0, t0, t1
	mv	s1, t0
	j	.classSlice_int_copy_ID12_for_condition
.classSlice_int_copy_ID12_for_out:
	j	.classSlice_int_copy_return
.classSlice_int_copy_return:
	lw	s1, -12(s0)
	lw	s2, -20(s0)
	lw	s7, -16(s0)
	lw	s10, -24(s0)
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
	sw	s1, -16(s0)
	sw	s5, -12(s0)
	sw	s6, -20(s0)
.classSlice_int_cloneArray_alloca:
	j	.classSlice_int_cloneArray_entry
.classSlice_int_cloneArray_entry:
	mv	s5, a0
	mv	a0, s5
	call	classSlice_int_size
	mv	s1, a0
	addi	t0, zero, 4
	mul	t1, s1, t0
	addi	t0, zero, 4
	add	a0, t1, t0
	call	malloc
	sw	s1, 0(a0)
	addi	t1, zero, 1
	addi	t0, zero, 4
	mul	t0, t1, t0
	add	t0, a0, t0
	mv	s6, t0
	mv	s1, zero
	j	.classSlice_int_cloneArray_ID14_for_condition
.classSlice_int_cloneArray_ID14_for_condition:
	mv	a0, s5
	call	classSlice_int_size
	slt	t0, s1, a0
	bnez	t0, .classSlice_int_cloneArray_ID14_for_suite
	j	.classSlice_int_cloneArray_ID14_for_out
.classSlice_int_cloneArray_ID14_for_suite:
	mv	t1, s6
	mv	t0, s1
	addi	t2, zero, 4
	mul	t0, t0, t2
	add	a0, t1, t0
	addi	t0, s5, 0
	lw	t1, 0(t0)
	addi	t0, s5, 8
	lw	t2, 0(t0)
	mv	t0, s1
	add	t2, t2, t0
	addi	t0, zero, 4
	mul	t0, t2, t0
	add	t0, t1, t0
	lw	t0, 0(t0)
	sw	t0, 0(a0)
	j	.classSlice_int_cloneArray_ID14_for_incr
.classSlice_int_cloneArray_ID14_for_incr:
	mv	t0, s1
	addi	t1, zero, 1
	add	t0, t0, t1
	mv	s1, t0
	j	.classSlice_int_cloneArray_ID14_for_condition
.classSlice_int_cloneArray_ID14_for_out:
	mv	a0, s6
	j	.classSlice_int_cloneArray_return
.classSlice_int_cloneArray_return:
	lw	s1, -16(s0)
	lw	s5, -12(s0)
	lw	s6, -20(s0)
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
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	sw	s6, -12(s0)
	sw	s8, -16(s0)
.makeSlice_int_alloca:
	j	.makeSlice_int_entry
.makeSlice_int_entry:
	mv	s6, a0
	addi	a0, zero, 16
	call	malloc
	mv	s8, a0
	mv	a0, s8
	call	Slice_int
	mv	a0, s8
	mv	a1, s6
	call	classSlice_int_init
	mv	a0, s8
	j	.makeSlice_int_return
.makeSlice_int_return:
	lw	s6, -12(s0)
	lw	s8, -16(s0)
	li	t0, 16
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
	sw	s2, -12(s0)
	sw	s4, -20(s0)
	sw	s5, -16(s0)
	sw	s6, -24(s0)
	sw	s7, -28(s0)
.merge_alloca:
	j	.merge_entry
.merge_entry:
	mv	s5, a0
	mv	s6, a1
	mv	a0, s5
	call	classSlice_int_size
	xor	t0, a0, zero
	sltiu	t0, t0, 1
	bnez	t0, .merge_ID7_if_true
	j	.merge_ID7_if_out
.merge_ID7_if_true:
	mv	a0, s6
	call	classSlice_int_cloneArray
	j	.merge_return
.merge_ID7_if_out:
	mv	a0, s6
	call	classSlice_int_size
	xor	t0, a0, zero
	sltiu	t0, t0, 1
	bnez	t0, .merge_ID13_if_true
	j	.merge_ID13_if_out
.merge_ID13_if_true:
	mv	a0, s5
	call	classSlice_int_cloneArray
	j	.merge_return
.merge_ID13_if_out:
	mv	a0, s5
	call	classSlice_int_size
	mv	s2, a0
	mv	a0, s6
	call	classSlice_int_size
	add	s2, s2, a0
	addi	t0, zero, 4
	mul	t1, s2, t0
	addi	t0, zero, 4
	add	a0, t1, t0
	call	malloc
	sw	s2, 0(a0)
	addi	t0, zero, 1
	addi	t1, zero, 4
	mul	t0, t0, t1
	add	t0, a0, t0
	mv	s2, t0
	mv	a0, s2
	call	makeSlice_int
	call	classSlice_int_tail
	mv	s7, a0
	mv	a0, s5
	mv	a1, zero
	call	classSlice_int_get
	mv	s4, a0
	mv	a0, s6
	mv	a1, zero
	call	classSlice_int_get
	slt	t0, s4, a0
	bnez	t0, .merge_ID41_if_true
	j	.merge_ID41_if_false
.merge_ID41_if_true:
	mv	t0, s2
	addi	t1, zero, 4
	mul	t1, zero, t1
	add	s4, t0, t1
	mv	a0, s5
	mv	a1, zero
	call	classSlice_int_get
	sw	a0, 0(s4)
	mv	s4, s7
	mv	a0, s5
	call	classSlice_int_tail
	mv	a1, s6
	call	merge
	call	makeSlice_int
	mv	a1, a0
	mv	a0, s4
	call	classSlice_int_copy
	j	.merge_ID41_if_out
.merge_ID41_if_false:
	mv	t0, s2
	addi	t1, zero, 4
	mul	t1, zero, t1
	add	s4, t0, t1
	mv	a0, s6
	mv	a1, zero
	call	classSlice_int_get
	sw	a0, 0(s4)
	mv	s4, s7
	mv	a0, s6
	call	classSlice_int_tail
	mv	a1, a0
	mv	a0, s5
	call	merge
	call	makeSlice_int
	mv	a1, a0
	mv	a0, s4
	call	classSlice_int_copy
	j	.merge_ID41_if_out
.merge_ID41_if_out:
	mv	a0, s2
	j	.merge_return
.merge_return:
	lw	s2, -12(s0)
	lw	s4, -20(s0)
	lw	s5, -16(s0)
	lw	s6, -24(s0)
	lw	s7, -28(s0)
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
	sw	s5, -20(s0)
	sw	s6, -24(s0)
	sw	s8, -12(s0)
	sw	s9, -16(s0)
.mergeSort_alloca:
	j	.mergeSort_entry
.mergeSort_entry:
	mv	s6, a0
	mv	a0, s6
	call	classSlice_int_size
	addi	t0, zero, 1
	xor	t0, a0, t0
	sltiu	t0, t0, 1
	bnez	t0, .mergeSort_ID5_if_true
	j	.mergeSort_ID5_if_out
.mergeSort_ID5_if_true:
	j	.mergeSort_return
.mergeSort_ID5_if_out:
	mv	a0, s6
	call	classSlice_int_size
	mv	s5, a0
	mv	t0, s5
	addi	t1, zero, 2
	div	t0, t0, t1
	mv	s8, t0
	mv	a0, s6
	mv	a2, s8
	mv	a1, zero
	call	classSlice_int_slice
	call	mergeSort
	mv	a0, s6
	mv	a1, s8
	mv	a2, s5
	call	classSlice_int_slice
	call	mergeSort
	mv	a0, s6
	mv	a2, s8
	mv	a1, zero
	call	classSlice_int_slice
	mv	s9, a0
	mv	a0, s6
	mv	a1, s8
	mv	a2, s5
	call	classSlice_int_slice
	mv	a1, a0
	mv	a0, s9
	call	merge
	call	makeSlice_int
	mv	a1, a0
	mv	a0, s6
	call	classSlice_int_copy
	j	.mergeSort_return
.mergeSort_return:
	lw	s5, -20(s0)
	lw	s6, -24(s0)
	lw	s8, -12(s0)
	lw	s9, -16(s0)
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
.mergeSortInf_alloca:
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
	sw	s2, -16(s0)
	sw	s6, -24(s0)
	sw	s8, -20(s0)
	sw	s10, -12(s0)
.main_alloca:
	j	.main_entry
.main_entry:
	call	__init
	call	getInt
	mv	s2, a0
	addi	t0, zero, 4
	mul	t1, s2, t0
	addi	t0, zero, 4
	add	a0, t1, t0
	call	malloc
	sw	s2, 0(a0)
	addi	t0, zero, 1
	addi	t1, zero, 4
	mul	t0, t0, t1
	add	t0, a0, t0
	mv	s6, t0
	mv	s8, zero
	j	.main_ID13_for_condition
.main_ID13_for_condition:
	mv	t0, s8
	mv	t1, s2
	slt	t0, t0, t1
	bnez	t0, .main_ID13_for_suite
	j	.main_ID13_for_out
.main_ID13_for_suite:
	mv	t1, s6
	mv	t0, s8
	addi	t2, zero, 4
	mul	t0, t0, t2
	add	s10, t1, t0
	call	getInt
	sw	a0, 0(s10)
	j	.main_ID13_for_incr
.main_ID13_for_incr:
	mv	t0, s8
	addi	t1, zero, 1
	add	t0, t0, t1
	mv	s8, t0
	j	.main_ID13_for_condition
.main_ID13_for_out:
	mv	a0, s6
	call	mergeSortInf
	mv	s8, zero
	j	.main_ID25_for_condition
.main_ID25_for_condition:
	mv	t0, s8
	mv	t1, s2
	slt	t0, t0, t1
	bnez	t0, .main_ID25_for_suite
	j	.main_ID25_for_out
.main_ID25_for_suite:
	mv	t0, s6
	mv	t1, s8
	addi	t2, zero, 4
	mul	t1, t1, t2
	add	t0, t0, t1
	lw	a0, 0(t0)
	call	toString
	la	a1, fuckLLVM_.str.2
	call	string_add
	call	print
	j	.main_ID25_for_incr
.main_ID25_for_incr:
	mv	t0, s8
	addi	t1, zero, 1
	add	t0, t0, t1
	mv	s8, t0
	j	.main_ID25_for_condition
.main_ID25_for_out:
	la	a0, fuckLLVM_.str.3
	call	println
	j	.main_return
.main_return:
	mv	a0, zero
	lw	s2, -16(s0)
	lw	s6, -24(s0)
	lw	s8, -20(s0)
	lw	s10, -12(s0)
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

