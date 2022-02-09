	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	mv	VirtualReg_0, s1
	mv	VirtualReg_1, s2
	mv	VirtualReg_2, s3
	mv	VirtualReg_3, s4
	mv	VirtualReg_4, s5
	mv	VirtualReg_5, s6
	mv	VirtualReg_6, s7
	mv	VirtualReg_7, s8
	mv	VirtualReg_8, s9
	mv	VirtualReg_9, s10
	mv	VirtualReg_10, s11
	j	.__init_entry
.__init_entry:
	j	.__init_return
.__init_return:
	mv	s1, VirtualReg_0
	mv	s2, VirtualReg_1
	mv	s3, VirtualReg_2
	mv	s4, VirtualReg_3
	mv	s5, VirtualReg_4
	mv	s6, VirtualReg_5
	mv	s7, VirtualReg_6
	mv	s8, VirtualReg_7
	mv	s9, VirtualReg_8
	mv	s10, VirtualReg_9
	mv	s11, VirtualReg_10

	.globl	Slice_int
	.p2align	2
	.type	Slice_int,@function
Slice_int:
.Slice_int_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, s1
	mv	VirtualReg_2, s2
	mv	VirtualReg_3, s3
	mv	VirtualReg_4, s4
	mv	VirtualReg_5, s5
	mv	VirtualReg_6, s6
	mv	VirtualReg_7, s7
	mv	VirtualReg_8, s8
	mv	VirtualReg_9, s9
	mv	VirtualReg_10, s10
	mv	VirtualReg_11, s11
	j	.Slice_int_entry
.Slice_int_entry:
	mv	VirtualReg_12, VirtualReg_0
	j	.Slice_int_return
.Slice_int_return:
	mv	s1, VirtualReg_1
	mv	s2, VirtualReg_2
	mv	s3, VirtualReg_3
	mv	s4, VirtualReg_4
	mv	s5, VirtualReg_5
	mv	s6, VirtualReg_6
	mv	s7, VirtualReg_7
	mv	s8, VirtualReg_8
	mv	s9, VirtualReg_9
	mv	s10, VirtualReg_10
	mv	s11, VirtualReg_11

	.globl	classSlice_int_init
	.p2align	2
	.type	classSlice_int_init,@function
classSlice_int_init:
.classSlice_int_init_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s1
	mv	VirtualReg_3, s2
	mv	VirtualReg_4, s3
	mv	VirtualReg_5, s4
	mv	VirtualReg_6, s5
	mv	VirtualReg_7, s6
	mv	VirtualReg_8, s7
	mv	VirtualReg_9, s8
	mv	VirtualReg_10, s9
	mv	VirtualReg_11, s10
	mv	VirtualReg_12, s11
	j	.classSlice_int_init_entry
.classSlice_int_init_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_13
	mv	VirtualReg_15, VirtualReg_1
	addi	VirtualReg_16, VirtualReg_14, 0
	mv	VirtualReg_17, VirtualReg_15
	sw	VirtualReg_17, 0(VirtualReg_16)
	addi	VirtualReg_18, VirtualReg_14, 8
	li	VirtualReg_19, 0
	sw	VirtualReg_19, 0(VirtualReg_18)
	addi	VirtualReg_20, VirtualReg_14, 12
	mv	VirtualReg_21, VirtualReg_15
	li	VirtualReg_24, -1
	li	VirtualReg_25, 4
	mul	VirtualReg_23, VirtualReg_24, VirtualReg_25
	add	VirtualReg_22, VirtualReg_21, VirtualReg_23
	lw	VirtualReg_26, 0(VirtualReg_22)
	sw	VirtualReg_26, 0(VirtualReg_20)
	j	.classSlice_int_init_return
.classSlice_int_init_return:
	mv	s1, VirtualReg_2
	mv	s2, VirtualReg_3
	mv	s3, VirtualReg_4
	mv	s4, VirtualReg_5
	mv	s5, VirtualReg_6
	mv	s6, VirtualReg_7
	mv	s7, VirtualReg_8
	mv	s8, VirtualReg_9
	mv	s9, VirtualReg_10
	mv	s10, VirtualReg_11
	mv	s11, VirtualReg_12

	.globl	classSlice_int_size
	.p2align	2
	.type	classSlice_int_size,@function
classSlice_int_size:
.classSlice_int_size_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, s1
	mv	VirtualReg_2, s2
	mv	VirtualReg_3, s3
	mv	VirtualReg_4, s4
	mv	VirtualReg_5, s5
	mv	VirtualReg_6, s6
	mv	VirtualReg_7, s7
	mv	VirtualReg_8, s8
	mv	VirtualReg_9, s9
	mv	VirtualReg_10, s10
	mv	VirtualReg_11, s11
	j	.classSlice_int_size_entry
.classSlice_int_size_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_13, VirtualReg_12
	addi	VirtualReg_15, VirtualReg_13, 12
	lw	VirtualReg_16, 0(VirtualReg_15)
	addi	VirtualReg_17, VirtualReg_13, 8
	lw	VirtualReg_18, 0(VirtualReg_17)
	sub	fuckLLVM_8, VirtualReg_16, VirtualReg_18
	mv	VirtualReg_14, fuckLLVM_8
	j	.classSlice_int_size_return
.classSlice_int_size_return:
	mv	VirtualReg_19, VirtualReg_14
	mv	a0, VirtualReg_19
	mv	s1, VirtualReg_1
	mv	s2, VirtualReg_2
	mv	s3, VirtualReg_3
	mv	s4, VirtualReg_4
	mv	s5, VirtualReg_5
	mv	s6, VirtualReg_6
	mv	s7, VirtualReg_7
	mv	s8, VirtualReg_8
	mv	s9, VirtualReg_9
	mv	s10, VirtualReg_10
	mv	s11, VirtualReg_11

	.globl	classSlice_int_get
	.p2align	2
	.type	classSlice_int_get,@function
classSlice_int_get:
.classSlice_int_get_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s1
	mv	VirtualReg_3, s2
	mv	VirtualReg_4, s3
	mv	VirtualReg_5, s4
	mv	VirtualReg_6, s5
	mv	VirtualReg_7, s6
	mv	VirtualReg_8, s7
	mv	VirtualReg_9, s8
	mv	VirtualReg_10, s9
	mv	VirtualReg_11, s10
	mv	VirtualReg_12, s11
	j	.classSlice_int_get_entry
.classSlice_int_get_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_13
	mv	VirtualReg_15, VirtualReg_1
	addi	VirtualReg_17, VirtualReg_14, 0
	lw	VirtualReg_18, 0(VirtualReg_17)
	addi	VirtualReg_19, VirtualReg_14, 8
	lw	VirtualReg_20, 0(VirtualReg_19)
	mv	VirtualReg_21, VirtualReg_15
	add	fuckLLVM_11, VirtualReg_20, VirtualReg_21
	li	VirtualReg_24, 4
	mul	VirtualReg_23, fuckLLVM_11, VirtualReg_24
	add	VirtualReg_22, VirtualReg_18, VirtualReg_23
	lw	VirtualReg_25, 0(VirtualReg_22)
	mv	VirtualReg_16, VirtualReg_25
	j	.classSlice_int_get_return
.classSlice_int_get_return:
	mv	VirtualReg_26, VirtualReg_16
	mv	a0, VirtualReg_26
	mv	s1, VirtualReg_2
	mv	s2, VirtualReg_3
	mv	s3, VirtualReg_4
	mv	s4, VirtualReg_5
	mv	s5, VirtualReg_6
	mv	s6, VirtualReg_7
	mv	s7, VirtualReg_8
	mv	s8, VirtualReg_9
	mv	s9, VirtualReg_10
	mv	s10, VirtualReg_11
	mv	s11, VirtualReg_12

	.globl	classSlice_int_set
	.p2align	2
	.type	classSlice_int_set,@function
classSlice_int_set:
.classSlice_int_set_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, s1
	mv	VirtualReg_4, s2
	mv	VirtualReg_5, s3
	mv	VirtualReg_6, s4
	mv	VirtualReg_7, s5
	mv	VirtualReg_8, s6
	mv	VirtualReg_9, s7
	mv	VirtualReg_10, s8
	mv	VirtualReg_11, s9
	mv	VirtualReg_12, s10
	mv	VirtualReg_13, s11
	j	.classSlice_int_set_entry
.classSlice_int_set_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_14
	mv	VirtualReg_16, VirtualReg_1
	mv	VirtualReg_17, VirtualReg_2
	addi	VirtualReg_18, VirtualReg_15, 0
	lw	VirtualReg_19, 0(VirtualReg_18)
	addi	VirtualReg_20, VirtualReg_15, 8
	lw	VirtualReg_21, 0(VirtualReg_20)
	mv	VirtualReg_22, VirtualReg_16
	add	fuckLLVM_13, VirtualReg_21, VirtualReg_22
	li	VirtualReg_25, 4
	mul	VirtualReg_24, fuckLLVM_13, VirtualReg_25
	add	VirtualReg_23, VirtualReg_19, VirtualReg_24
	mv	VirtualReg_26, VirtualReg_17
	sw	VirtualReg_26, 0(VirtualReg_23)
	j	.classSlice_int_set_return
.classSlice_int_set_return:
	mv	s1, VirtualReg_3
	mv	s2, VirtualReg_4
	mv	s3, VirtualReg_5
	mv	s4, VirtualReg_6
	mv	s5, VirtualReg_7
	mv	s6, VirtualReg_8
	mv	s7, VirtualReg_9
	mv	s8, VirtualReg_10
	mv	s9, VirtualReg_11
	mv	s10, VirtualReg_12
	mv	s11, VirtualReg_13

	.globl	classSlice_int_slice
	.p2align	2
	.type	classSlice_int_slice,@function
classSlice_int_slice:
.classSlice_int_slice_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, s1
	mv	VirtualReg_4, s2
	mv	VirtualReg_5, s3
	mv	VirtualReg_6, s4
	mv	VirtualReg_7, s5
	mv	VirtualReg_8, s6
	mv	VirtualReg_9, s7
	mv	VirtualReg_10, s8
	mv	VirtualReg_11, s9
	mv	VirtualReg_12, s10
	mv	VirtualReg_13, s11
	j	.classSlice_int_slice_entry
.classSlice_int_slice_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_14
	mv	VirtualReg_16, VirtualReg_1
	mv	VirtualReg_17, VirtualReg_2
	li	VirtualReg_20, 16
	mv	a0, VirtualReg_20
	call	malloc
	mv	VirtualReg_21, a0
	mv	a0, VirtualReg_21
	call	Slice_int
	mv	VirtualReg_19, VirtualReg_21
	mv	VirtualReg_22, VirtualReg_19
	addi	VirtualReg_23, VirtualReg_22, 0
	addi	VirtualReg_24, VirtualReg_15, 0
	lw	VirtualReg_25, 0(VirtualReg_24)
	sw	VirtualReg_25, 0(VirtualReg_23)
	mv	VirtualReg_26, VirtualReg_19
	addi	VirtualReg_27, VirtualReg_26, 8
	addi	VirtualReg_28, VirtualReg_15, 8
	lw	VirtualReg_29, 0(VirtualReg_28)
	mv	VirtualReg_30, VirtualReg_16
	add	fuckLLVM_22, VirtualReg_29, VirtualReg_30
	sw	fuckLLVM_22, 0(VirtualReg_27)
	mv	VirtualReg_31, VirtualReg_19
	addi	VirtualReg_32, VirtualReg_31, 12
	addi	VirtualReg_33, VirtualReg_15, 8
	lw	VirtualReg_34, 0(VirtualReg_33)
	mv	VirtualReg_35, VirtualReg_17
	add	fuckLLVM_28, VirtualReg_34, VirtualReg_35
	sw	fuckLLVM_28, 0(VirtualReg_32)
	mv	VirtualReg_36, VirtualReg_19
	addi	VirtualReg_37, VirtualReg_36, 8
	lw	VirtualReg_38, 0(VirtualReg_37)
	addi	VirtualReg_39, VirtualReg_15, 0
	lw	VirtualReg_40, 0(VirtualReg_39)
	li	VirtualReg_43, -1
	li	VirtualReg_44, 4
	mul	VirtualReg_42, VirtualReg_43, VirtualReg_44
	add	VirtualReg_41, VirtualReg_40, VirtualReg_42
	lw	VirtualReg_45, 0(VirtualReg_41)
	slt	fuckLLVM_37, VirtualReg_45, VirtualReg_38
	li	VirtualReg_60, 1
	mv	VirtualReg_56, VirtualReg_60
	bnez	fuckLLVM_37, .classSlice_int_slice_ID37_OrOr_out
	mv	VirtualReg_56, VirtualReg_60
	j	.classSlice_int_slice_ID37_OrOr_false
.classSlice_int_slice_ID37_OrOr_false:
	mv	VirtualReg_46, VirtualReg_19
	addi	VirtualReg_47, VirtualReg_46, 12
	lw	VirtualReg_48, 0(VirtualReg_47)
	addi	VirtualReg_49, VirtualReg_15, 0
	lw	VirtualReg_50, 0(VirtualReg_49)
	li	VirtualReg_53, -1
	li	VirtualReg_54, 4
	mul	VirtualReg_52, VirtualReg_53, VirtualReg_54
	add	VirtualReg_51, VirtualReg_50, VirtualReg_52
	lw	VirtualReg_55, 0(VirtualReg_51)
	slt	fuckLLVM_46, VirtualReg_55, VirtualReg_48
	mv	VirtualReg_56, fuckLLVM_46
	j	.classSlice_int_slice_ID37_OrOr_out
.classSlice_int_slice_ID37_OrOr_out:
	bnez	VirtualReg_56, .classSlice_int_slice_ID47_if_true
	j	.classSlice_int_slice_ID47_if_out
.classSlice_int_slice_ID47_if_true:
	la	VirtualReg_57, fuckLLVM_.str.0
	mv	a0, VirtualReg_57
	call	println
	j	.classSlice_int_slice_ID47_if_out
.classSlice_int_slice_ID47_if_out:
	mv	VirtualReg_58, VirtualReg_19
	mv	VirtualReg_18, VirtualReg_58
	j	.classSlice_int_slice_return
.classSlice_int_slice_return:
	mv	VirtualReg_59, VirtualReg_18
	mv	a0, VirtualReg_59
	mv	s1, VirtualReg_3
	mv	s2, VirtualReg_4
	mv	s3, VirtualReg_5
	mv	s4, VirtualReg_6
	mv	s5, VirtualReg_7
	mv	s6, VirtualReg_8
	mv	s7, VirtualReg_9
	mv	s8, VirtualReg_10
	mv	s9, VirtualReg_11
	mv	s10, VirtualReg_12
	mv	s11, VirtualReg_13

	.globl	classSlice_int_tail
	.p2align	2
	.type	classSlice_int_tail,@function
classSlice_int_tail:
.classSlice_int_tail_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, s1
	mv	VirtualReg_2, s2
	mv	VirtualReg_3, s3
	mv	VirtualReg_4, s4
	mv	VirtualReg_5, s5
	mv	VirtualReg_6, s6
	mv	VirtualReg_7, s7
	mv	VirtualReg_8, s8
	mv	VirtualReg_9, s9
	mv	VirtualReg_10, s10
	mv	VirtualReg_11, s11
	j	.classSlice_int_tail_entry
.classSlice_int_tail_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_13, VirtualReg_12
	mv	a0, VirtualReg_13
	call	classSlice_int_size
	mv	VirtualReg_15, a0
	mv	a0, VirtualReg_13
	li	VirtualReg_16, 1
	mv	a1, VirtualReg_16
	mv	a2, VirtualReg_15
	call	classSlice_int_slice
	mv	VirtualReg_17, a0
	mv	VirtualReg_14, VirtualReg_17
	j	.classSlice_int_tail_return
.classSlice_int_tail_return:
	mv	VirtualReg_18, VirtualReg_14
	mv	a0, VirtualReg_18
	mv	s1, VirtualReg_1
	mv	s2, VirtualReg_2
	mv	s3, VirtualReg_3
	mv	s4, VirtualReg_4
	mv	s5, VirtualReg_5
	mv	s6, VirtualReg_6
	mv	s7, VirtualReg_7
	mv	s8, VirtualReg_8
	mv	s9, VirtualReg_9
	mv	s10, VirtualReg_10
	mv	s11, VirtualReg_11

	.globl	classSlice_int_copy
	.p2align	2
	.type	classSlice_int_copy,@function
classSlice_int_copy:
.classSlice_int_copy_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s1
	mv	VirtualReg_3, s2
	mv	VirtualReg_4, s3
	mv	VirtualReg_5, s4
	mv	VirtualReg_6, s5
	mv	VirtualReg_7, s6
	mv	VirtualReg_8, s7
	mv	VirtualReg_9, s8
	mv	VirtualReg_10, s9
	mv	VirtualReg_11, s10
	mv	VirtualReg_12, s11
	j	.classSlice_int_copy_entry
.classSlice_int_copy_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_13
	mv	VirtualReg_15, VirtualReg_1
	mv	a0, VirtualReg_14
	call	classSlice_int_size
	mv	VirtualReg_16, a0
	mv	VirtualReg_17, VirtualReg_15
	mv	a0, VirtualReg_17
	call	classSlice_int_size
	mv	VirtualReg_18, a0
	slt	fuckLLVM_9, VirtualReg_16, VirtualReg_18
	bnez	fuckLLVM_9, .classSlice_int_copy_ID9_if_true
	j	.classSlice_int_copy_ID9_if_out
.classSlice_int_copy_ID9_if_true:
	la	VirtualReg_19, fuckLLVM_.str.1
	mv	a0, VirtualReg_19
	call	println
	j	.classSlice_int_copy_ID9_if_out
.classSlice_int_copy_ID9_if_out:
	li	VirtualReg_21, 0
	mv	VirtualReg_20, VirtualReg_21
	j	.classSlice_int_copy_ID12_for_condition
.classSlice_int_copy_ID12_for_condition:
	mv	VirtualReg_22, VirtualReg_20
	mv	VirtualReg_23, VirtualReg_15
	mv	a0, VirtualReg_23
	call	classSlice_int_size
	mv	VirtualReg_24, a0
	slt	fuckLLVM_16, VirtualReg_22, VirtualReg_24
	bnez	fuckLLVM_16, .classSlice_int_copy_ID12_for_suite
	j	.classSlice_int_copy_ID12_for_out
.classSlice_int_copy_ID12_for_suite:
	addi	VirtualReg_25, VirtualReg_14, 0
	lw	VirtualReg_26, 0(VirtualReg_25)
	addi	VirtualReg_27, VirtualReg_14, 8
	lw	VirtualReg_28, 0(VirtualReg_27)
	mv	VirtualReg_29, VirtualReg_20
	add	fuckLLVM_22, VirtualReg_28, VirtualReg_29
	li	VirtualReg_32, 4
	mul	VirtualReg_31, fuckLLVM_22, VirtualReg_32
	add	VirtualReg_30, VirtualReg_26, VirtualReg_31
	mv	VirtualReg_33, VirtualReg_15
	mv	VirtualReg_34, VirtualReg_20
	mv	a0, VirtualReg_33
	mv	a1, VirtualReg_34
	call	classSlice_int_get
	mv	VirtualReg_35, a0
	sw	VirtualReg_35, 0(VirtualReg_30)
	j	.classSlice_int_copy_ID12_for_incr
.classSlice_int_copy_ID12_for_incr:
	mv	VirtualReg_36, VirtualReg_20
	li	VirtualReg_37, 1
	add	fuckLLVM_28, VirtualReg_36, VirtualReg_37
	mv	VirtualReg_20, fuckLLVM_28
	j	.classSlice_int_copy_ID12_for_condition
.classSlice_int_copy_ID12_for_out:
	j	.classSlice_int_copy_return
.classSlice_int_copy_return:
	mv	s1, VirtualReg_2
	mv	s2, VirtualReg_3
	mv	s3, VirtualReg_4
	mv	s4, VirtualReg_5
	mv	s5, VirtualReg_6
	mv	s6, VirtualReg_7
	mv	s7, VirtualReg_8
	mv	s8, VirtualReg_9
	mv	s9, VirtualReg_10
	mv	s10, VirtualReg_11
	mv	s11, VirtualReg_12

	.globl	classSlice_int_cloneArray
	.p2align	2
	.type	classSlice_int_cloneArray,@function
classSlice_int_cloneArray:
.classSlice_int_cloneArray_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, s1
	mv	VirtualReg_2, s2
	mv	VirtualReg_3, s3
	mv	VirtualReg_4, s4
	mv	VirtualReg_5, s5
	mv	VirtualReg_6, s6
	mv	VirtualReg_7, s7
	mv	VirtualReg_8, s8
	mv	VirtualReg_9, s9
	mv	VirtualReg_10, s10
	mv	VirtualReg_11, s11
	j	.classSlice_int_cloneArray_entry
.classSlice_int_cloneArray_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_13, VirtualReg_12
	mv	a0, VirtualReg_13
	call	classSlice_int_size
	mv	VirtualReg_16, a0
	li	VirtualReg_17, 4
	mul	fuckLLVM_7, VirtualReg_16, VirtualReg_17
	li	VirtualReg_18, 4
	add	fuckLLVM_8, fuckLLVM_7, VirtualReg_18
	mv	a0, fuckLLVM_8
	call	malloc
	mv	VirtualReg_19, a0
	sw	VirtualReg_16, 0(VirtualReg_19)
	li	VirtualReg_22, 1
	li	VirtualReg_23, 4
	mul	VirtualReg_21, VirtualReg_22, VirtualReg_23
	add	VirtualReg_20, VirtualReg_19, VirtualReg_21
	mv	VirtualReg_15, VirtualReg_20
	li	VirtualReg_25, 0
	mv	VirtualReg_24, VirtualReg_25
	j	.classSlice_int_cloneArray_ID14_for_condition
.classSlice_int_cloneArray_ID14_for_condition:
	mv	VirtualReg_26, VirtualReg_24
	mv	a0, VirtualReg_13
	call	classSlice_int_size
	mv	VirtualReg_27, a0
	slt	fuckLLVM_17, VirtualReg_26, VirtualReg_27
	bnez	fuckLLVM_17, .classSlice_int_cloneArray_ID14_for_suite
	j	.classSlice_int_cloneArray_ID14_for_out
.classSlice_int_cloneArray_ID14_for_suite:
	mv	VirtualReg_28, VirtualReg_15
	mv	VirtualReg_29, VirtualReg_24
	li	VirtualReg_32, 4
	mul	VirtualReg_31, VirtualReg_29, VirtualReg_32
	add	VirtualReg_30, VirtualReg_28, VirtualReg_31
	addi	VirtualReg_33, VirtualReg_13, 0
	lw	VirtualReg_34, 0(VirtualReg_33)
	addi	VirtualReg_35, VirtualReg_13, 8
	lw	VirtualReg_36, 0(VirtualReg_35)
	mv	VirtualReg_37, VirtualReg_24
	add	fuckLLVM_26, VirtualReg_36, VirtualReg_37
	li	VirtualReg_40, 4
	mul	VirtualReg_39, fuckLLVM_26, VirtualReg_40
	add	VirtualReg_38, VirtualReg_34, VirtualReg_39
	lw	VirtualReg_41, 0(VirtualReg_38)
	sw	VirtualReg_41, 0(VirtualReg_30)
	j	.classSlice_int_cloneArray_ID14_for_incr
.classSlice_int_cloneArray_ID14_for_incr:
	mv	VirtualReg_42, VirtualReg_24
	li	VirtualReg_43, 1
	add	fuckLLVM_30, VirtualReg_42, VirtualReg_43
	mv	VirtualReg_24, fuckLLVM_30
	j	.classSlice_int_cloneArray_ID14_for_condition
.classSlice_int_cloneArray_ID14_for_out:
	mv	VirtualReg_44, VirtualReg_15
	mv	VirtualReg_14, VirtualReg_44
	j	.classSlice_int_cloneArray_return
.classSlice_int_cloneArray_return:
	mv	VirtualReg_45, VirtualReg_14
	mv	a0, VirtualReg_45
	mv	s1, VirtualReg_1
	mv	s2, VirtualReg_2
	mv	s3, VirtualReg_3
	mv	s4, VirtualReg_4
	mv	s5, VirtualReg_5
	mv	s6, VirtualReg_6
	mv	s7, VirtualReg_7
	mv	s8, VirtualReg_8
	mv	s9, VirtualReg_9
	mv	s10, VirtualReg_10
	mv	s11, VirtualReg_11

	.globl	makeSlice_int
	.p2align	2
	.type	makeSlice_int,@function
makeSlice_int:
.makeSlice_int_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, s1
	mv	VirtualReg_2, s2
	mv	VirtualReg_3, s3
	mv	VirtualReg_4, s4
	mv	VirtualReg_5, s5
	mv	VirtualReg_6, s6
	mv	VirtualReg_7, s7
	mv	VirtualReg_8, s8
	mv	VirtualReg_9, s9
	mv	VirtualReg_10, s10
	mv	VirtualReg_11, s11
	j	.makeSlice_int_entry
.makeSlice_int_entry:
	mv	VirtualReg_12, VirtualReg_0
	li	VirtualReg_15, 16
	mv	a0, VirtualReg_15
	call	malloc
	mv	VirtualReg_16, a0
	mv	a0, VirtualReg_16
	call	Slice_int
	mv	VirtualReg_14, VirtualReg_16
	mv	VirtualReg_17, VirtualReg_14
	mv	VirtualReg_18, VirtualReg_12
	mv	a0, VirtualReg_17
	mv	a1, VirtualReg_18
	call	classSlice_int_init
	mv	VirtualReg_19, VirtualReg_14
	mv	VirtualReg_13, VirtualReg_19
	j	.makeSlice_int_return
.makeSlice_int_return:
	mv	VirtualReg_20, VirtualReg_13
	mv	a0, VirtualReg_20
	mv	s1, VirtualReg_1
	mv	s2, VirtualReg_2
	mv	s3, VirtualReg_3
	mv	s4, VirtualReg_4
	mv	s5, VirtualReg_5
	mv	s6, VirtualReg_6
	mv	s7, VirtualReg_7
	mv	s8, VirtualReg_8
	mv	s9, VirtualReg_9
	mv	s10, VirtualReg_10
	mv	s11, VirtualReg_11

	.globl	merge
	.p2align	2
	.type	merge,@function
merge:
.merge_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s1
	mv	VirtualReg_3, s2
	mv	VirtualReg_4, s3
	mv	VirtualReg_5, s4
	mv	VirtualReg_6, s5
	mv	VirtualReg_7, s6
	mv	VirtualReg_8, s7
	mv	VirtualReg_9, s8
	mv	VirtualReg_10, s9
	mv	VirtualReg_11, s10
	mv	VirtualReg_12, s11
	j	.merge_entry
.merge_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_1
	mv	VirtualReg_16, VirtualReg_13
	mv	a0, VirtualReg_16
	call	classSlice_int_size
	mv	VirtualReg_17, a0
	li	VirtualReg_18, 0
	xor	fuckLLVM_7, VirtualReg_17, VirtualReg_18
	sltiu	fuckLLVM_7, fuckLLVM_7, 1
	bnez	fuckLLVM_7, .merge_ID7_if_true
	j	.merge_ID7_if_out
.merge_ID7_if_true:
	mv	VirtualReg_19, VirtualReg_14
	mv	a0, VirtualReg_19
	call	classSlice_int_cloneArray
	mv	VirtualReg_20, a0
	mv	VirtualReg_15, VirtualReg_20
	j	.merge_return
.merge_ID7_if_out:
	mv	VirtualReg_21, VirtualReg_14
	mv	a0, VirtualReg_21
	call	classSlice_int_size
	mv	VirtualReg_22, a0
	li	VirtualReg_23, 0
	xor	fuckLLVM_13, VirtualReg_22, VirtualReg_23
	sltiu	fuckLLVM_13, fuckLLVM_13, 1
	bnez	fuckLLVM_13, .merge_ID13_if_true
	j	.merge_ID13_if_out
.merge_ID13_if_true:
	mv	VirtualReg_24, VirtualReg_13
	mv	a0, VirtualReg_24
	call	classSlice_int_cloneArray
	mv	VirtualReg_25, a0
	mv	VirtualReg_15, VirtualReg_25
	j	.merge_return
.merge_ID13_if_out:
	mv	VirtualReg_27, VirtualReg_13
	mv	a0, VirtualReg_27
	call	classSlice_int_size
	mv	VirtualReg_28, a0
	mv	VirtualReg_29, VirtualReg_14
	mv	a0, VirtualReg_29
	call	classSlice_int_size
	mv	VirtualReg_30, a0
	add	fuckLLVM_22, VirtualReg_28, VirtualReg_30
	li	VirtualReg_31, 4
	mul	fuckLLVM_24, fuckLLVM_22, VirtualReg_31
	li	VirtualReg_32, 4
	add	fuckLLVM_25, fuckLLVM_24, VirtualReg_32
	mv	a0, fuckLLVM_25
	call	malloc
	mv	VirtualReg_33, a0
	sw	fuckLLVM_22, 0(VirtualReg_33)
	li	VirtualReg_36, 1
	li	VirtualReg_37, 4
	mul	VirtualReg_35, VirtualReg_36, VirtualReg_37
	add	VirtualReg_34, VirtualReg_33, VirtualReg_35
	mv	VirtualReg_26, VirtualReg_34
	mv	VirtualReg_39, VirtualReg_26
	mv	a0, VirtualReg_39
	call	makeSlice_int
	mv	VirtualReg_40, a0
	mv	a0, VirtualReg_40
	call	classSlice_int_tail
	mv	VirtualReg_41, a0
	mv	VirtualReg_38, VirtualReg_41
	mv	VirtualReg_42, VirtualReg_13
	mv	a0, VirtualReg_42
	li	VirtualReg_43, 0
	mv	a1, VirtualReg_43
	call	classSlice_int_get
	mv	VirtualReg_44, a0
	mv	VirtualReg_45, VirtualReg_14
	mv	a0, VirtualReg_45
	li	VirtualReg_46, 0
	mv	a1, VirtualReg_46
	call	classSlice_int_get
	mv	VirtualReg_47, a0
	slt	fuckLLVM_41, VirtualReg_44, VirtualReg_47
	bnez	fuckLLVM_41, .merge_ID41_if_true
	j	.merge_ID41_if_false
.merge_ID41_if_true:
	mv	VirtualReg_48, VirtualReg_26
	li	VirtualReg_51, 0
	li	VirtualReg_52, 4
	mul	VirtualReg_50, VirtualReg_51, VirtualReg_52
	add	VirtualReg_49, VirtualReg_48, VirtualReg_50
	mv	VirtualReg_53, VirtualReg_13
	mv	a0, VirtualReg_53
	li	VirtualReg_54, 0
	mv	a1, VirtualReg_54
	call	classSlice_int_get
	mv	VirtualReg_55, a0
	sw	VirtualReg_55, 0(VirtualReg_49)
	mv	VirtualReg_56, VirtualReg_38
	mv	VirtualReg_57, VirtualReg_13
	mv	a0, VirtualReg_57
	call	classSlice_int_tail
	mv	VirtualReg_58, a0
	mv	VirtualReg_59, VirtualReg_14
	mv	a0, VirtualReg_58
	mv	a1, VirtualReg_59
	call	merge
	mv	VirtualReg_60, a0
	mv	a0, VirtualReg_60
	call	makeSlice_int
	mv	VirtualReg_61, a0
	mv	a0, VirtualReg_56
	mv	a1, VirtualReg_61
	call	classSlice_int_copy
	j	.merge_ID41_if_out
.merge_ID41_if_false:
	mv	VirtualReg_62, VirtualReg_26
	li	VirtualReg_65, 0
	li	VirtualReg_66, 4
	mul	VirtualReg_64, VirtualReg_65, VirtualReg_66
	add	VirtualReg_63, VirtualReg_62, VirtualReg_64
	mv	VirtualReg_67, VirtualReg_14
	mv	a0, VirtualReg_67
	li	VirtualReg_68, 0
	mv	a1, VirtualReg_68
	call	classSlice_int_get
	mv	VirtualReg_69, a0
	sw	VirtualReg_69, 0(VirtualReg_63)
	mv	VirtualReg_70, VirtualReg_38
	mv	VirtualReg_71, VirtualReg_13
	mv	VirtualReg_72, VirtualReg_14
	mv	a0, VirtualReg_72
	call	classSlice_int_tail
	mv	VirtualReg_73, a0
	mv	a0, VirtualReg_71
	mv	a1, VirtualReg_73
	call	merge
	mv	VirtualReg_74, a0
	mv	a0, VirtualReg_74
	call	makeSlice_int
	mv	VirtualReg_75, a0
	mv	a0, VirtualReg_70
	mv	a1, VirtualReg_75
	call	classSlice_int_copy
	j	.merge_ID41_if_out
.merge_ID41_if_out:
	mv	VirtualReg_76, VirtualReg_26
	mv	VirtualReg_15, VirtualReg_76
	j	.merge_return
.merge_return:
	mv	VirtualReg_77, VirtualReg_15
	mv	a0, VirtualReg_77
	mv	s1, VirtualReg_2
	mv	s2, VirtualReg_3
	mv	s3, VirtualReg_4
	mv	s4, VirtualReg_5
	mv	s5, VirtualReg_6
	mv	s6, VirtualReg_7
	mv	s7, VirtualReg_8
	mv	s8, VirtualReg_9
	mv	s9, VirtualReg_10
	mv	s10, VirtualReg_11
	mv	s11, VirtualReg_12

	.globl	mergeSort
	.p2align	2
	.type	mergeSort,@function
mergeSort:
.mergeSort_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, s1
	mv	VirtualReg_2, s2
	mv	VirtualReg_3, s3
	mv	VirtualReg_4, s4
	mv	VirtualReg_5, s5
	mv	VirtualReg_6, s6
	mv	VirtualReg_7, s7
	mv	VirtualReg_8, s8
	mv	VirtualReg_9, s9
	mv	VirtualReg_10, s10
	mv	VirtualReg_11, s11
	j	.mergeSort_entry
.mergeSort_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_13, VirtualReg_12
	mv	a0, VirtualReg_13
	call	classSlice_int_size
	mv	VirtualReg_14, a0
	li	VirtualReg_15, 1
	xor	fuckLLVM_5, VirtualReg_14, VirtualReg_15
	sltiu	fuckLLVM_5, fuckLLVM_5, 1
	bnez	fuckLLVM_5, .mergeSort_ID5_if_true
	j	.mergeSort_ID5_if_out
.mergeSort_ID5_if_true:
	j	.mergeSort_return
.mergeSort_ID5_if_out:
	mv	VirtualReg_17, VirtualReg_12
	mv	a0, VirtualReg_17
	call	classSlice_int_size
	mv	VirtualReg_18, a0
	mv	VirtualReg_16, VirtualReg_18
	mv	VirtualReg_20, VirtualReg_16
	li	VirtualReg_21, 2
	div	fuckLLVM_11, VirtualReg_20, VirtualReg_21
	mv	VirtualReg_19, fuckLLVM_11
	mv	VirtualReg_22, VirtualReg_12
	mv	VirtualReg_23, VirtualReg_19
	mv	a0, VirtualReg_22
	li	VirtualReg_24, 0
	mv	a1, VirtualReg_24
	mv	a2, VirtualReg_23
	call	classSlice_int_slice
	mv	VirtualReg_25, a0
	mv	a0, VirtualReg_25
	call	mergeSort
	mv	VirtualReg_26, VirtualReg_12
	mv	VirtualReg_27, VirtualReg_19
	mv	VirtualReg_28, VirtualReg_16
	mv	a0, VirtualReg_26
	mv	a1, VirtualReg_27
	mv	a2, VirtualReg_28
	call	classSlice_int_slice
	mv	VirtualReg_29, a0
	mv	a0, VirtualReg_29
	call	mergeSort
	mv	VirtualReg_30, VirtualReg_12
	mv	VirtualReg_31, VirtualReg_12
	mv	VirtualReg_32, VirtualReg_19
	mv	a0, VirtualReg_31
	li	VirtualReg_33, 0
	mv	a1, VirtualReg_33
	mv	a2, VirtualReg_32
	call	classSlice_int_slice
	mv	VirtualReg_34, a0
	mv	VirtualReg_35, VirtualReg_12
	mv	VirtualReg_36, VirtualReg_19
	mv	VirtualReg_37, VirtualReg_16
	mv	a0, VirtualReg_35
	mv	a1, VirtualReg_36
	mv	a2, VirtualReg_37
	call	classSlice_int_slice
	mv	VirtualReg_38, a0
	mv	a0, VirtualReg_34
	mv	a1, VirtualReg_38
	call	merge
	mv	VirtualReg_39, a0
	mv	a0, VirtualReg_39
	call	makeSlice_int
	mv	VirtualReg_40, a0
	mv	a0, VirtualReg_30
	mv	a1, VirtualReg_40
	call	classSlice_int_copy
	j	.mergeSort_return
.mergeSort_return:
	mv	s1, VirtualReg_1
	mv	s2, VirtualReg_2
	mv	s3, VirtualReg_3
	mv	s4, VirtualReg_4
	mv	s5, VirtualReg_5
	mv	s6, VirtualReg_6
	mv	s7, VirtualReg_7
	mv	s8, VirtualReg_8
	mv	s9, VirtualReg_9
	mv	s10, VirtualReg_10
	mv	s11, VirtualReg_11

	.globl	mergeSortInf
	.p2align	2
	.type	mergeSortInf,@function
mergeSortInf:
.mergeSortInf_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, s1
	mv	VirtualReg_2, s2
	mv	VirtualReg_3, s3
	mv	VirtualReg_4, s4
	mv	VirtualReg_5, s5
	mv	VirtualReg_6, s6
	mv	VirtualReg_7, s7
	mv	VirtualReg_8, s8
	mv	VirtualReg_9, s9
	mv	VirtualReg_10, s10
	mv	VirtualReg_11, s11
	j	.mergeSortInf_entry
.mergeSortInf_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_13, VirtualReg_12
	mv	a0, VirtualReg_13
	call	makeSlice_int
	mv	VirtualReg_14, a0
	mv	a0, VirtualReg_14
	call	mergeSort
	j	.mergeSortInf_return
.mergeSortInf_return:
	mv	s1, VirtualReg_1
	mv	s2, VirtualReg_2
	mv	s3, VirtualReg_3
	mv	s4, VirtualReg_4
	mv	s5, VirtualReg_5
	mv	s6, VirtualReg_6
	mv	s7, VirtualReg_7
	mv	s8, VirtualReg_8
	mv	s9, VirtualReg_9
	mv	s10, VirtualReg_10
	mv	s11, VirtualReg_11

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
	mv	VirtualReg_0, s1
	mv	VirtualReg_1, s2
	mv	VirtualReg_2, s3
	mv	VirtualReg_3, s4
	mv	VirtualReg_4, s5
	mv	VirtualReg_5, s6
	mv	VirtualReg_6, s7
	mv	VirtualReg_7, s8
	mv	VirtualReg_8, s9
	mv	VirtualReg_9, s10
	mv	VirtualReg_10, s11
	j	.main_entry
.main_entry:
	call	__init
	li	VirtualReg_12, 0
	mv	VirtualReg_11, VirtualReg_12
	call	getInt
	mv	VirtualReg_14, a0
	mv	VirtualReg_13, VirtualReg_14
	mv	VirtualReg_16, VirtualReg_13
	li	VirtualReg_17, 4
	mul	fuckLLVM_6, VirtualReg_16, VirtualReg_17
	li	VirtualReg_18, 4
	add	fuckLLVM_7, fuckLLVM_6, VirtualReg_18
	mv	a0, fuckLLVM_7
	call	malloc
	mv	VirtualReg_19, a0
	sw	VirtualReg_16, 0(VirtualReg_19)
	li	VirtualReg_22, 1
	li	VirtualReg_23, 4
	mul	VirtualReg_21, VirtualReg_22, VirtualReg_23
	add	VirtualReg_20, VirtualReg_19, VirtualReg_21
	mv	VirtualReg_15, VirtualReg_20
	li	VirtualReg_25, 0
	mv	VirtualReg_24, VirtualReg_25
	j	.main_ID13_for_condition
.main_ID13_for_condition:
	mv	VirtualReg_26, VirtualReg_24
	mv	VirtualReg_27, VirtualReg_13
	slt	fuckLLVM_16, VirtualReg_26, VirtualReg_27
	bnez	fuckLLVM_16, .main_ID13_for_suite
	j	.main_ID13_for_out
.main_ID13_for_suite:
	mv	VirtualReg_28, VirtualReg_15
	mv	VirtualReg_29, VirtualReg_24
	li	VirtualReg_32, 4
	mul	VirtualReg_31, VirtualReg_29, VirtualReg_32
	add	VirtualReg_30, VirtualReg_28, VirtualReg_31
	call	getInt
	mv	VirtualReg_33, a0
	sw	VirtualReg_33, 0(VirtualReg_30)
	j	.main_ID13_for_incr
.main_ID13_for_incr:
	mv	VirtualReg_34, VirtualReg_24
	li	VirtualReg_35, 1
	add	fuckLLVM_22, VirtualReg_34, VirtualReg_35
	mv	VirtualReg_24, fuckLLVM_22
	j	.main_ID13_for_condition
.main_ID13_for_out:
	mv	VirtualReg_36, VirtualReg_15
	mv	a0, VirtualReg_36
	call	mergeSortInf
	li	VirtualReg_37, 0
	mv	VirtualReg_24, VirtualReg_37
	j	.main_ID25_for_condition
.main_ID25_for_condition:
	mv	VirtualReg_38, VirtualReg_24
	mv	VirtualReg_39, VirtualReg_13
	slt	fuckLLVM_28, VirtualReg_38, VirtualReg_39
	bnez	fuckLLVM_28, .main_ID25_for_suite
	j	.main_ID25_for_out
.main_ID25_for_suite:
	mv	VirtualReg_40, VirtualReg_15
	mv	VirtualReg_41, VirtualReg_24
	li	VirtualReg_44, 4
	mul	VirtualReg_43, VirtualReg_41, VirtualReg_44
	add	VirtualReg_42, VirtualReg_40, VirtualReg_43
	lw	VirtualReg_45, 0(VirtualReg_42)
	mv	a0, VirtualReg_45
	call	toString
	mv	VirtualReg_46, a0
	la	VirtualReg_47, fuckLLVM_.str.2
	mv	a0, VirtualReg_46
	mv	a1, VirtualReg_47
	call	string_add
	mv	VirtualReg_48, a0
	mv	a0, VirtualReg_48
	call	print
	j	.main_ID25_for_incr
.main_ID25_for_incr:
	mv	VirtualReg_49, VirtualReg_24
	li	VirtualReg_50, 1
	add	fuckLLVM_40, VirtualReg_49, VirtualReg_50
	mv	VirtualReg_24, fuckLLVM_40
	j	.main_ID25_for_condition
.main_ID25_for_out:
	la	VirtualReg_51, fuckLLVM_.str.3
	mv	a0, VirtualReg_51
	call	println
	li	VirtualReg_52, 0
	mv	VirtualReg_11, VirtualReg_52
	j	.main_return
.main_return:
	mv	VirtualReg_53, VirtualReg_11
	mv	a0, VirtualReg_53
	mv	s1, VirtualReg_0
	mv	s2, VirtualReg_1
	mv	s3, VirtualReg_2
	mv	s4, VirtualReg_3
	mv	s5, VirtualReg_4
	mv	s6, VirtualReg_5
	mv	s7, VirtualReg_6
	mv	s8, VirtualReg_7
	mv	s9, VirtualReg_8
	mv	s10, VirtualReg_9
	mv	s11, VirtualReg_10

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

