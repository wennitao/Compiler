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

	.globl	vector
	.p2align	2
	.type	vector,@function
vector:
.vector_assemblyInit:
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
.vector_entry:
	sw	VirtualReg_0, 0(VirtualReg_12)
	j	.vector_return
.vector_return:
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

	.globl	classvector_init
	.p2align	2
	.type	classvector_init,@function
classvector_init:
.classvector_init_assemblyInit:
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
.classvector_init_alloca:
	j	.classvector_init_entry
.classvector_init_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_16, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	mv	VirtualReg_17, VirtualReg_14
	li	VirtualReg_18, 0
	xor	fuckLLVM_7, VirtualReg_17, VirtualReg_18
	sltiu	fuckLLVM_7, fuckLLVM_7, 1
	bnez	fuckLLVM_7, .classvector_init_ID7_if_true
	j	.classvector_init_ID7_if_out
.classvector_init_ID7_if_true:
	j	.classvector_init_return
.classvector_init_ID7_if_out:
	addi	VirtualReg_19, VirtualReg_16, 0
	mv	VirtualReg_20, VirtualReg_14
	addi	VirtualReg_23, zero, -1
	addi	VirtualReg_24, zero, 4
	mul	VirtualReg_22, VirtualReg_23, VirtualReg_24
	add	VirtualReg_21, VirtualReg_20, VirtualReg_22
	lw	VirtualReg_25, 0(VirtualReg_21)
	addi	VirtualReg_26, zero, 4
	mul	fuckLLVM_14, VirtualReg_25, VirtualReg_26
	addi	VirtualReg_27, zero, 4
	add	fuckLLVM_15, fuckLLVM_14, VirtualReg_27
	mv	a0, fuckLLVM_15
	call	malloc
	mv	VirtualReg_28, a0
	sw	VirtualReg_25, 0(VirtualReg_28)
	addi	VirtualReg_31, zero, 1
	addi	VirtualReg_32, zero, 4
	mul	VirtualReg_30, VirtualReg_31, VirtualReg_32
	add	VirtualReg_29, VirtualReg_28, VirtualReg_30
	sw	VirtualReg_29, 0(VirtualReg_19)
	addi	VirtualReg_33, zero, 0
	mv	VirtualReg_15, VirtualReg_33
	j	.classvector_init_ID21_for_condition
.classvector_init_ID21_for_condition:
	mv	VirtualReg_34, VirtualReg_15
	mv	VirtualReg_35, VirtualReg_14
	addi	VirtualReg_38, zero, -1
	addi	VirtualReg_39, zero, 4
	mul	VirtualReg_37, VirtualReg_38, VirtualReg_39
	add	VirtualReg_36, VirtualReg_35, VirtualReg_37
	lw	VirtualReg_40, 0(VirtualReg_36)
	slt	fuckLLVM_27, VirtualReg_34, VirtualReg_40
	bnez	fuckLLVM_27, .classvector_init_ID21_for_suite
	j	.classvector_init_ID21_for_out
.classvector_init_ID21_for_suite:
	addi	VirtualReg_41, VirtualReg_16, 0
	lw	VirtualReg_42, 0(VirtualReg_41)
	mv	VirtualReg_43, VirtualReg_15
	addi	VirtualReg_46, zero, 4
	mul	VirtualReg_45, VirtualReg_43, VirtualReg_46
	add	VirtualReg_44, VirtualReg_42, VirtualReg_45
	mv	VirtualReg_47, VirtualReg_14
	mv	VirtualReg_48, VirtualReg_15
	addi	VirtualReg_51, zero, 4
	mul	VirtualReg_50, VirtualReg_48, VirtualReg_51
	add	VirtualReg_49, VirtualReg_47, VirtualReg_50
	lw	VirtualReg_52, 0(VirtualReg_49)
	sw	VirtualReg_52, 0(VirtualReg_44)
	j	.classvector_init_ID21_for_incr
.classvector_init_ID21_for_incr:
	mv	VirtualReg_53, VirtualReg_15
	addi	VirtualReg_54, zero, 1
	add	fuckLLVM_37, VirtualReg_53, VirtualReg_54
	mv	VirtualReg_15, fuckLLVM_37
	j	.classvector_init_ID21_for_condition
.classvector_init_ID21_for_out:
	j	.classvector_init_return
.classvector_init_return:
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

	.globl	classvector_getDim
	.p2align	2
	.type	classvector_getDim,@function
classvector_getDim:
.classvector_getDim_assemblyInit:
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
.classvector_getDim_alloca:
	j	.classvector_getDim_entry
.classvector_getDim_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_12
	addi	VirtualReg_15, VirtualReg_14, 0
	lw	VirtualReg_16, 0(VirtualReg_15)
	li	VirtualReg_17, 0
	xor	fuckLLVM_6, VirtualReg_16, VirtualReg_17
	sltiu	fuckLLVM_6, fuckLLVM_6, 1
	bnez	fuckLLVM_6, .classvector_getDim_ID6_if_true
	j	.classvector_getDim_ID6_if_out
.classvector_getDim_ID6_if_true:
	addi	VirtualReg_18, zero, 0
	mv	VirtualReg_13, VirtualReg_18
	j	.classvector_getDim_return
.classvector_getDim_ID6_if_out:
	addi	VirtualReg_19, VirtualReg_14, 0
	lw	VirtualReg_20, 0(VirtualReg_19)
	addi	VirtualReg_23, zero, -1
	addi	VirtualReg_24, zero, 4
	mul	VirtualReg_22, VirtualReg_23, VirtualReg_24
	add	VirtualReg_21, VirtualReg_20, VirtualReg_22
	lw	VirtualReg_25, 0(VirtualReg_21)
	mv	VirtualReg_13, VirtualReg_25
	j	.classvector_getDim_return
.classvector_getDim_return:
	mv	VirtualReg_26, VirtualReg_13
	mv	a0, VirtualReg_26
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

	.globl	classvector_dot
	.p2align	2
	.type	classvector_dot,@function
classvector_dot:
.classvector_dot_assemblyInit:
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
.classvector_dot_alloca:
	j	.classvector_dot_entry
.classvector_dot_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_18, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	addi	VirtualReg_19, zero, 0
	mv	VirtualReg_16, VirtualReg_19
	addi	VirtualReg_20, zero, 0
	mv	VirtualReg_17, VirtualReg_20
	j	.classvector_dot_ID8_while_condition
.classvector_dot_ID8_while_condition:
	mv	VirtualReg_21, VirtualReg_16
	mv	a0, VirtualReg_18
	call	classvector_getDim
	mv	VirtualReg_22, a0
	slt	fuckLLVM_10, VirtualReg_21, VirtualReg_22
	bnez	fuckLLVM_10, .classvector_dot_ID11_while_suite
	j	.classvector_dot_ID11_while_out
.classvector_dot_ID11_while_suite:
	addi	VirtualReg_23, VirtualReg_18, 0
	lw	VirtualReg_24, 0(VirtualReg_23)
	mv	VirtualReg_25, VirtualReg_16
	addi	VirtualReg_28, zero, 4
	mul	VirtualReg_27, VirtualReg_25, VirtualReg_28
	add	VirtualReg_26, VirtualReg_24, VirtualReg_27
	lw	VirtualReg_29, 0(VirtualReg_26)
	mv	VirtualReg_30, VirtualReg_14
	addi	VirtualReg_31, VirtualReg_30, 0
	lw	VirtualReg_32, 0(VirtualReg_31)
	mv	VirtualReg_33, VirtualReg_16
	addi	VirtualReg_36, zero, 4
	mul	VirtualReg_35, VirtualReg_33, VirtualReg_36
	add	VirtualReg_34, VirtualReg_32, VirtualReg_35
	lw	VirtualReg_37, 0(VirtualReg_34)
	mul	fuckLLVM_22, VirtualReg_29, VirtualReg_37
	mv	VirtualReg_17, fuckLLVM_22
	mv	VirtualReg_38, VirtualReg_16
	addi	VirtualReg_39, zero, 1
	add	fuckLLVM_24, VirtualReg_38, VirtualReg_39
	mv	VirtualReg_16, fuckLLVM_24
	j	.classvector_dot_ID8_while_condition
.classvector_dot_ID11_while_out:
	mv	VirtualReg_40, VirtualReg_17
	mv	VirtualReg_15, VirtualReg_40
	j	.classvector_dot_return
.classvector_dot_return:
	mv	VirtualReg_41, VirtualReg_15
	mv	a0, VirtualReg_41
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

	.globl	classvector_scalarInPlaceMultiply
	.p2align	2
	.type	classvector_scalarInPlaceMultiply,@function
classvector_scalarInPlaceMultiply:
.classvector_scalarInPlaceMultiply_assemblyInit:
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
.classvector_scalarInPlaceMultiply_alloca:
	j	.classvector_scalarInPlaceMultiply_entry
.classvector_scalarInPlaceMultiply_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_17, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	addi	VirtualReg_18, VirtualReg_17, 0
	lw	VirtualReg_19, 0(VirtualReg_18)
	li	VirtualReg_20, 0
	xor	fuckLLVM_8, VirtualReg_19, VirtualReg_20
	sltiu	fuckLLVM_8, fuckLLVM_8, 1
	bnez	fuckLLVM_8, .classvector_scalarInPlaceMultiply_ID8_if_true
	j	.classvector_scalarInPlaceMultiply_ID8_if_out
.classvector_scalarInPlaceMultiply_ID8_if_true:
	li	VirtualReg_21, 0
	mv	VirtualReg_15, VirtualReg_21
	j	.classvector_scalarInPlaceMultiply_return
.classvector_scalarInPlaceMultiply_ID8_if_out:
	addi	VirtualReg_22, zero, 0
	mv	VirtualReg_16, VirtualReg_22
	j	.classvector_scalarInPlaceMultiply_ID9_for_condition
.classvector_scalarInPlaceMultiply_ID9_for_condition:
	mv	VirtualReg_23, VirtualReg_16
	mv	a0, VirtualReg_17
	call	classvector_getDim
	mv	VirtualReg_24, a0
	slt	fuckLLVM_12, VirtualReg_23, VirtualReg_24
	bnez	fuckLLVM_12, .classvector_scalarInPlaceMultiply_ID9_for_suite
	j	.classvector_scalarInPlaceMultiply_ID9_for_out
.classvector_scalarInPlaceMultiply_ID9_for_suite:
	addi	VirtualReg_25, VirtualReg_17, 0
	lw	VirtualReg_26, 0(VirtualReg_25)
	mv	VirtualReg_27, VirtualReg_16
	addi	VirtualReg_30, zero, 4
	mul	VirtualReg_29, VirtualReg_27, VirtualReg_30
	add	VirtualReg_28, VirtualReg_26, VirtualReg_29
	mv	VirtualReg_31, VirtualReg_14
	addi	VirtualReg_32, VirtualReg_17, 0
	lw	VirtualReg_33, 0(VirtualReg_32)
	mv	VirtualReg_34, VirtualReg_16
	addi	VirtualReg_37, zero, 4
	mul	VirtualReg_36, VirtualReg_34, VirtualReg_37
	add	VirtualReg_35, VirtualReg_33, VirtualReg_36
	lw	VirtualReg_38, 0(VirtualReg_35)
	mul	fuckLLVM_23, VirtualReg_31, VirtualReg_38
	sw	fuckLLVM_23, 0(VirtualReg_28)
	j	.classvector_scalarInPlaceMultiply_ID9_for_incr
.classvector_scalarInPlaceMultiply_ID9_for_incr:
	mv	VirtualReg_39, VirtualReg_16
	addi	VirtualReg_40, zero, 1
	add	fuckLLVM_25, VirtualReg_39, VirtualReg_40
	mv	VirtualReg_16, fuckLLVM_25
	j	.classvector_scalarInPlaceMultiply_ID9_for_condition
.classvector_scalarInPlaceMultiply_ID9_for_out:
	mv	VirtualReg_15, VirtualReg_17
	j	.classvector_scalarInPlaceMultiply_return
.classvector_scalarInPlaceMultiply_return:
	mv	VirtualReg_41, VirtualReg_15
	mv	a0, VirtualReg_41
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

	.globl	classvector_add
	.p2align	2
	.type	classvector_add,@function
classvector_add:
.classvector_add_assemblyInit:
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
.classvector_add_alloca:
	j	.classvector_add_entry
.classvector_add_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_18, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	mv	a0, VirtualReg_18
	call	classvector_getDim
	mv	VirtualReg_19, a0
	mv	VirtualReg_20, VirtualReg_14
	mv	a0, VirtualReg_20
	call	classvector_getDim
	mv	VirtualReg_21, a0
	xor	fuckLLVM_9, VirtualReg_19, VirtualReg_21
	sltiu	fuckLLVM_9, fuckLLVM_9, 1
	xori	fuckLLVM_9, fuckLLVM_9, 1
	mv	VirtualReg_24, VirtualReg_67
	bnez	fuckLLVM_9, .classvector_add_ID9_OrOr_out
	mv	VirtualReg_24, VirtualReg_67
	j	.classvector_add_ID9_OrOr_false
	addi	VirtualReg_67, zero, 1
.classvector_add_ID9_OrOr_false:
	mv	a0, VirtualReg_18
	call	classvector_getDim
	mv	VirtualReg_22, a0
	addi	VirtualReg_23, zero, 0
	xor	fuckLLVM_11, VirtualReg_22, VirtualReg_23
	sltiu	fuckLLVM_11, fuckLLVM_11, 1
	mv	VirtualReg_24, fuckLLVM_11
	j	.classvector_add_ID9_OrOr_out
.classvector_add_ID9_OrOr_out:
	bnez	VirtualReg_24, .classvector_add_ID12_if_true
	j	.classvector_add_ID12_if_out
.classvector_add_ID12_if_true:
	li	VirtualReg_25, 0
	mv	VirtualReg_15, VirtualReg_25
	j	.classvector_add_return
.classvector_add_ID12_if_out:
	addi	VirtualReg_26, zero, 8
	mv	a0, VirtualReg_26
	call	malloc
	mv	VirtualReg_27, a0
	mv	a0, VirtualReg_27
	call	vector
	mv	VirtualReg_16, VirtualReg_27
	mv	VirtualReg_28, VirtualReg_16
	addi	VirtualReg_29, VirtualReg_28, 0
	mv	a0, VirtualReg_18
	call	classvector_getDim
	mv	VirtualReg_30, a0
	addi	VirtualReg_31, zero, 4
	mul	fuckLLVM_22, VirtualReg_30, VirtualReg_31
	addi	VirtualReg_32, zero, 4
	add	fuckLLVM_23, fuckLLVM_22, VirtualReg_32
	mv	a0, fuckLLVM_23
	call	malloc
	mv	VirtualReg_33, a0
	sw	VirtualReg_30, 0(VirtualReg_33)
	addi	VirtualReg_36, zero, 1
	addi	VirtualReg_37, zero, 4
	mul	VirtualReg_35, VirtualReg_36, VirtualReg_37
	add	VirtualReg_34, VirtualReg_33, VirtualReg_35
	sw	VirtualReg_34, 0(VirtualReg_29)
	addi	VirtualReg_38, zero, 0
	mv	VirtualReg_17, VirtualReg_38
	j	.classvector_add_ID28_for_condition
.classvector_add_ID28_for_condition:
	mv	VirtualReg_39, VirtualReg_17
	mv	a0, VirtualReg_18
	call	classvector_getDim
	mv	VirtualReg_40, a0
	slt	fuckLLVM_31, VirtualReg_39, VirtualReg_40
	bnez	fuckLLVM_31, .classvector_add_ID28_for_suite
	j	.classvector_add_ID28_for_out
.classvector_add_ID28_for_suite:
	mv	VirtualReg_41, VirtualReg_16
	addi	VirtualReg_42, VirtualReg_41, 0
	lw	VirtualReg_43, 0(VirtualReg_42)
	mv	VirtualReg_44, VirtualReg_17
	addi	VirtualReg_47, zero, 4
	mul	VirtualReg_46, VirtualReg_44, VirtualReg_47
	add	VirtualReg_45, VirtualReg_43, VirtualReg_46
	addi	VirtualReg_48, VirtualReg_18, 0
	lw	VirtualReg_49, 0(VirtualReg_48)
	mv	VirtualReg_50, VirtualReg_17
	addi	VirtualReg_53, zero, 4
	mul	VirtualReg_52, VirtualReg_50, VirtualReg_53
	add	VirtualReg_51, VirtualReg_49, VirtualReg_52
	lw	VirtualReg_54, 0(VirtualReg_51)
	mv	VirtualReg_55, VirtualReg_14
	addi	VirtualReg_56, VirtualReg_55, 0
	lw	VirtualReg_57, 0(VirtualReg_56)
	mv	VirtualReg_58, VirtualReg_17
	addi	VirtualReg_61, zero, 4
	mul	VirtualReg_60, VirtualReg_58, VirtualReg_61
	add	VirtualReg_59, VirtualReg_57, VirtualReg_60
	lw	VirtualReg_62, 0(VirtualReg_59)
	add	fuckLLVM_48, VirtualReg_54, VirtualReg_62
	sw	fuckLLVM_48, 0(VirtualReg_45)
	j	.classvector_add_ID28_for_incr
.classvector_add_ID28_for_incr:
	mv	VirtualReg_63, VirtualReg_17
	addi	VirtualReg_64, zero, 1
	add	fuckLLVM_50, VirtualReg_63, VirtualReg_64
	mv	VirtualReg_17, fuckLLVM_50
	j	.classvector_add_ID28_for_condition
.classvector_add_ID28_for_out:
	mv	VirtualReg_65, VirtualReg_16
	mv	VirtualReg_15, VirtualReg_65
	j	.classvector_add_return
.classvector_add_return:
	mv	VirtualReg_66, VirtualReg_15
	mv	a0, VirtualReg_66
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

	.globl	classvector_set
	.p2align	2
	.type	classvector_set,@function
classvector_set:
.classvector_set_assemblyInit:
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
.classvector_set_alloca:
	j	.classvector_set_entry
.classvector_set_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_18, VirtualReg_14
	mv	VirtualReg_15, VirtualReg_1
	mv	VirtualReg_16, VirtualReg_2
	mv	a0, VirtualReg_18
	call	classvector_getDim
	mv	VirtualReg_19, a0
	mv	VirtualReg_20, VirtualReg_15
	slt	fuckLLVM_10, VirtualReg_19, VirtualReg_20
	bnez	fuckLLVM_10, .classvector_set_ID10_if_true
	j	.classvector_set_ID10_if_out
.classvector_set_ID10_if_true:
	addi	VirtualReg_21, zero, 0
	mv	VirtualReg_17, VirtualReg_21
	j	.classvector_set_return
.classvector_set_ID10_if_out:
	addi	VirtualReg_22, VirtualReg_18, 0
	lw	VirtualReg_23, 0(VirtualReg_22)
	mv	VirtualReg_24, VirtualReg_15
	addi	VirtualReg_27, zero, 4
	mul	VirtualReg_26, VirtualReg_24, VirtualReg_27
	add	VirtualReg_25, VirtualReg_23, VirtualReg_26
	mv	VirtualReg_28, VirtualReg_16
	sw	VirtualReg_28, 0(VirtualReg_25)
	addi	VirtualReg_29, zero, 1
	mv	VirtualReg_17, VirtualReg_29
	j	.classvector_set_return
.classvector_set_return:
	mv	VirtualReg_30, VirtualReg_17
	mv	a0, VirtualReg_30
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

	.globl	classvector_tostring
	.p2align	2
	.type	classvector_tostring,@function
classvector_tostring:
.classvector_tostring_assemblyInit:
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
.classvector_tostring_alloca:
	j	.classvector_tostring_entry
.classvector_tostring_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_16, VirtualReg_12
	la	VirtualReg_17, fuckLLVM_.str.0
	mv	VirtualReg_14, VirtualReg_17
	mv	a0, VirtualReg_16
	call	classvector_getDim
	mv	VirtualReg_18, a0
	addi	VirtualReg_19, zero, 0
	slt	fuckLLVM_7, VirtualReg_19, VirtualReg_18
	bnez	fuckLLVM_7, .classvector_tostring_ID7_if_true
	j	.classvector_tostring_ID7_if_out
.classvector_tostring_ID7_if_true:
	mv	VirtualReg_20, VirtualReg_14
	addi	VirtualReg_21, VirtualReg_16, 0
	lw	VirtualReg_22, 0(VirtualReg_21)
	addi	VirtualReg_25, zero, 0
	addi	VirtualReg_26, zero, 4
	mul	VirtualReg_24, VirtualReg_25, VirtualReg_26
	add	VirtualReg_23, VirtualReg_22, VirtualReg_24
	lw	VirtualReg_27, 0(VirtualReg_23)
	mv	a0, VirtualReg_27
	call	toString
	mv	VirtualReg_28, a0
	mv	a0, VirtualReg_20
	mv	a1, VirtualReg_28
	call	string_add
	mv	VirtualReg_29, a0
	mv	VirtualReg_14, VirtualReg_29
	j	.classvector_tostring_ID7_if_out
.classvector_tostring_ID7_if_out:
	addi	VirtualReg_30, zero, 1
	mv	VirtualReg_15, VirtualReg_30
	j	.classvector_tostring_ID18_for_condition
.classvector_tostring_ID18_for_condition:
	mv	VirtualReg_31, VirtualReg_15
	mv	a0, VirtualReg_16
	call	classvector_getDim
	mv	VirtualReg_32, a0
	slt	fuckLLVM_21, VirtualReg_31, VirtualReg_32
	bnez	fuckLLVM_21, .classvector_tostring_ID18_for_suite
	j	.classvector_tostring_ID18_for_out
.classvector_tostring_ID18_for_suite:
	mv	VirtualReg_33, VirtualReg_14
	la	VirtualReg_34, fuckLLVM_.str.1
	mv	a0, VirtualReg_33
	mv	a1, VirtualReg_34
	call	string_add
	mv	VirtualReg_35, a0
	addi	VirtualReg_36, VirtualReg_16, 0
	lw	VirtualReg_37, 0(VirtualReg_36)
	mv	VirtualReg_38, VirtualReg_15
	addi	VirtualReg_41, zero, 4
	mul	VirtualReg_40, VirtualReg_38, VirtualReg_41
	add	VirtualReg_39, VirtualReg_37, VirtualReg_40
	lw	VirtualReg_42, 0(VirtualReg_39)
	mv	a0, VirtualReg_42
	call	toString
	mv	VirtualReg_43, a0
	mv	a0, VirtualReg_35
	mv	a1, VirtualReg_43
	call	string_add
	mv	VirtualReg_44, a0
	mv	VirtualReg_14, VirtualReg_44
	j	.classvector_tostring_ID18_for_incr
.classvector_tostring_ID18_for_incr:
	mv	VirtualReg_45, VirtualReg_15
	addi	VirtualReg_46, zero, 1
	add	fuckLLVM_37, VirtualReg_45, VirtualReg_46
	mv	VirtualReg_15, fuckLLVM_37
	j	.classvector_tostring_ID18_for_condition
.classvector_tostring_ID18_for_out:
	mv	VirtualReg_47, VirtualReg_14
	la	VirtualReg_48, fuckLLVM_.str.2
	mv	a0, VirtualReg_47
	mv	a1, VirtualReg_48
	call	string_add
	mv	VirtualReg_49, a0
	mv	VirtualReg_14, VirtualReg_49
	mv	VirtualReg_50, VirtualReg_14
	mv	VirtualReg_13, VirtualReg_50
	j	.classvector_tostring_return
.classvector_tostring_return:
	mv	VirtualReg_51, VirtualReg_13
	mv	a0, VirtualReg_51
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

	.globl	classvector_copy
	.p2align	2
	.type	classvector_copy,@function
classvector_copy:
.classvector_copy_assemblyInit:
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
.classvector_copy_alloca:
	j	.classvector_copy_entry
.classvector_copy_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_17, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	mv	VirtualReg_18, VirtualReg_14
	li	VirtualReg_19, 0
	xor	fuckLLVM_7, VirtualReg_18, VirtualReg_19
	sltiu	fuckLLVM_7, fuckLLVM_7, 1
	bnez	fuckLLVM_7, .classvector_copy_ID7_if_true
	j	.classvector_copy_ID7_if_out
.classvector_copy_ID7_if_true:
	addi	VirtualReg_20, zero, 0
	mv	VirtualReg_15, VirtualReg_20
	j	.classvector_copy_return
.classvector_copy_ID7_if_out:
	mv	VirtualReg_21, VirtualReg_14
	mv	a0, VirtualReg_21
	call	classvector_getDim
	mv	VirtualReg_22, a0
	addi	VirtualReg_23, zero, 0
	xor	fuckLLVM_10, VirtualReg_22, VirtualReg_23
	sltiu	fuckLLVM_10, fuckLLVM_10, 1
	bnez	fuckLLVM_10, .classvector_copy_ID10_if_true
	j	.classvector_copy_ID10_if_false
.classvector_copy_ID23_for_condition:
	mv	VirtualReg_24, VirtualReg_16
	mv	a0, VirtualReg_17
	call	classvector_getDim
	mv	VirtualReg_25, a0
	slt	fuckLLVM_26, VirtualReg_24, VirtualReg_25
	bnez	fuckLLVM_26, .classvector_copy_ID23_for_suite
	j	.classvector_copy_ID23_for_out
.classvector_copy_ID23_for_suite:
	addi	VirtualReg_26, VirtualReg_17, 0
	lw	VirtualReg_27, 0(VirtualReg_26)
	mv	VirtualReg_28, VirtualReg_16
	addi	VirtualReg_31, zero, 4
	mul	VirtualReg_30, VirtualReg_28, VirtualReg_31
	add	VirtualReg_29, VirtualReg_27, VirtualReg_30
	mv	VirtualReg_32, VirtualReg_14
	addi	VirtualReg_33, VirtualReg_32, 0
	lw	VirtualReg_34, 0(VirtualReg_33)
	mv	VirtualReg_35, VirtualReg_16
	addi	VirtualReg_38, zero, 4
	mul	VirtualReg_37, VirtualReg_35, VirtualReg_38
	add	VirtualReg_36, VirtualReg_34, VirtualReg_37
	lw	VirtualReg_39, 0(VirtualReg_36)
	sw	VirtualReg_39, 0(VirtualReg_29)
	j	.classvector_copy_ID23_for_incr
.classvector_copy_ID23_for_incr:
	mv	VirtualReg_40, VirtualReg_16
	addi	VirtualReg_41, zero, 1
	add	fuckLLVM_38, VirtualReg_40, VirtualReg_41
	mv	VirtualReg_16, fuckLLVM_38
	j	.classvector_copy_ID23_for_condition
.classvector_copy_ID23_for_out:
	j	.classvector_copy_ID10_if_out
.classvector_copy_ID10_if_true:
	addi	VirtualReg_42, VirtualReg_17, 0
	li	VirtualReg_43, 0
	sw	VirtualReg_43, 0(VirtualReg_42)
	j	.classvector_copy_ID10_if_out
.classvector_copy_ID10_if_false:
	addi	VirtualReg_44, VirtualReg_17, 0
	mv	VirtualReg_45, VirtualReg_14
	mv	a0, VirtualReg_45
	call	classvector_getDim
	mv	VirtualReg_46, a0
	addi	VirtualReg_47, zero, 4
	mul	fuckLLVM_16, VirtualReg_46, VirtualReg_47
	addi	VirtualReg_48, zero, 4
	add	fuckLLVM_17, fuckLLVM_16, VirtualReg_48
	mv	a0, fuckLLVM_17
	call	malloc
	mv	VirtualReg_49, a0
	sw	VirtualReg_46, 0(VirtualReg_49)
	addi	VirtualReg_52, zero, 1
	addi	VirtualReg_53, zero, 4
	mul	VirtualReg_51, VirtualReg_52, VirtualReg_53
	add	VirtualReg_50, VirtualReg_49, VirtualReg_51
	sw	VirtualReg_50, 0(VirtualReg_44)
	addi	VirtualReg_54, zero, 0
	mv	VirtualReg_16, VirtualReg_54
	j	.classvector_copy_ID23_for_condition
.classvector_copy_ID10_if_out:
	addi	VirtualReg_55, zero, 1
	mv	VirtualReg_15, VirtualReg_55
	j	.classvector_copy_return
.classvector_copy_return:
	mv	VirtualReg_56, VirtualReg_15
	mv	a0, VirtualReg_56
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
.main_alloca:
	j	.main_entry
.main_entry:
	call	__init
	addi	VirtualReg_16, zero, 0
	mv	VirtualReg_11, VirtualReg_16
	addi	VirtualReg_17, zero, 8
	mv	a0, VirtualReg_17
	call	malloc
	mv	VirtualReg_18, a0
	mv	a0, VirtualReg_18
	call	vector
	mv	VirtualReg_12, VirtualReg_18
	addi	VirtualReg_19, zero, 10
	addi	VirtualReg_20, zero, 4
	mul	fuckLLVM_6, VirtualReg_19, VirtualReg_20
	addi	VirtualReg_21, zero, 4
	add	fuckLLVM_7, fuckLLVM_6, VirtualReg_21
	mv	a0, fuckLLVM_7
	call	malloc
	mv	VirtualReg_22, a0
	addi	VirtualReg_23, zero, 10
	sw	VirtualReg_23, 0(VirtualReg_22)
	addi	VirtualReg_26, zero, 1
	addi	VirtualReg_27, zero, 4
	mul	VirtualReg_25, VirtualReg_26, VirtualReg_27
	add	VirtualReg_24, VirtualReg_22, VirtualReg_25
	mv	VirtualReg_13, VirtualReg_24
	addi	VirtualReg_28, zero, 0
	mv	VirtualReg_14, VirtualReg_28
	j	.main_ID13_for_condition
.main_ID13_for_condition:
	mv	VirtualReg_29, VirtualReg_14
	addi	VirtualReg_30, zero, 10
	slt	fuckLLVM_15, VirtualReg_29, VirtualReg_30
	bnez	fuckLLVM_15, .main_ID13_for_suite
	j	.main_ID13_for_out
.main_ID13_for_suite:
	mv	VirtualReg_31, VirtualReg_13
	mv	VirtualReg_32, VirtualReg_14
	addi	VirtualReg_35, zero, 4
	mul	VirtualReg_34, VirtualReg_32, VirtualReg_35
	add	VirtualReg_33, VirtualReg_31, VirtualReg_34
	mv	VirtualReg_36, VirtualReg_14
	addi	VirtualReg_37, zero, 9
	sub	fuckLLVM_20, VirtualReg_37, VirtualReg_36
	sw	fuckLLVM_20, 0(VirtualReg_33)
	j	.main_ID13_for_incr
.main_ID13_for_incr:
	mv	VirtualReg_38, VirtualReg_14
	addi	VirtualReg_39, zero, 1
	add	fuckLLVM_22, VirtualReg_38, VirtualReg_39
	mv	VirtualReg_14, fuckLLVM_22
	j	.main_ID13_for_condition
.main_ID13_for_out:
	mv	VirtualReg_40, VirtualReg_12
	mv	VirtualReg_41, VirtualReg_13
	mv	a0, VirtualReg_40
	mv	a1, VirtualReg_41
	call	classvector_init
	la	VirtualReg_42, fuckLLVM_.str.3
	mv	a0, VirtualReg_42
	call	print
	mv	VirtualReg_43, VirtualReg_12
	mv	a0, VirtualReg_43
	call	classvector_tostring
	mv	VirtualReg_44, a0
	mv	a0, VirtualReg_44
	call	println
	addi	VirtualReg_45, zero, 8
	mv	a0, VirtualReg_45
	call	malloc
	mv	VirtualReg_46, a0
	mv	a0, VirtualReg_46
	call	vector
	mv	VirtualReg_15, VirtualReg_46
	mv	VirtualReg_47, VirtualReg_15
	mv	VirtualReg_48, VirtualReg_12
	mv	a0, VirtualReg_47
	mv	a1, VirtualReg_48
	call	classvector_copy
	mv	VirtualReg_49, a0
	mv	VirtualReg_50, VirtualReg_15
	mv	a0, VirtualReg_50
	addi	VirtualReg_51, zero, 3
	mv	a1, VirtualReg_51
	addi	VirtualReg_52, zero, 817
	mv	a2, VirtualReg_52
	call	classvector_set
	mv	VirtualReg_53, a0
	bnez	VirtualReg_53, .main_ID43_if_true
	j	.main_ID43_if_out
.main_ID43_if_true:
	la	VirtualReg_54, fuckLLVM_.str.4
	mv	a0, VirtualReg_54
	call	println
	j	.main_ID43_if_out
.main_ID43_if_out:
	la	VirtualReg_55, fuckLLVM_.str.5
	mv	a0, VirtualReg_55
	call	print
	mv	VirtualReg_56, VirtualReg_15
	mv	a0, VirtualReg_56
	call	classvector_tostring
	mv	VirtualReg_57, a0
	mv	a0, VirtualReg_57
	call	println
	la	VirtualReg_58, fuckLLVM_.str.6
	mv	a0, VirtualReg_58
	call	print
	mv	VirtualReg_59, VirtualReg_12
	mv	VirtualReg_60, VirtualReg_15
	mv	a0, VirtualReg_59
	mv	a1, VirtualReg_60
	call	classvector_add
	mv	VirtualReg_61, a0
	mv	a0, VirtualReg_61
	call	classvector_tostring
	mv	VirtualReg_62, a0
	mv	a0, VirtualReg_62
	call	println
	la	VirtualReg_63, fuckLLVM_.str.7
	mv	a0, VirtualReg_63
	call	print
	mv	VirtualReg_64, VirtualReg_12
	mv	VirtualReg_65, VirtualReg_15
	mv	a0, VirtualReg_64
	mv	a1, VirtualReg_65
	call	classvector_dot
	mv	VirtualReg_66, a0
	mv	a0, VirtualReg_66
	call	toString
	mv	VirtualReg_67, a0
	mv	a0, VirtualReg_67
	call	println
	la	VirtualReg_68, fuckLLVM_.str.8
	mv	a0, VirtualReg_68
	call	print
	mv	VirtualReg_69, VirtualReg_15
	addi	VirtualReg_70, zero, 1
	addi	VirtualReg_71, zero, 3
	sll	fuckLLVM_73, VirtualReg_70, VirtualReg_71
	mv	a0, VirtualReg_69
	mv	a1, fuckLLVM_73
	call	classvector_scalarInPlaceMultiply
	mv	VirtualReg_72, a0
	mv	a0, VirtualReg_72
	call	classvector_tostring
	mv	VirtualReg_73, a0
	mv	a0, VirtualReg_73
	call	println
	addi	VirtualReg_74, zero, 0
	mv	VirtualReg_11, VirtualReg_74
	j	.main_return
.main_return:
	mv	VirtualReg_75, VirtualReg_11
	mv	a0, VirtualReg_75
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
	.asciz	"(  "
	.size	fuckLLVM_.str.0, 3

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	",  "
	.size	fuckLLVM_.str.1, 3

	.section	.rodata
	.type	fuckLLVM_.str.2,@object
fuckLLVM_.str.2:
	.asciz	" ) "
	.size	fuckLLVM_.str.2, 3

	.section	.rodata
	.type	fuckLLVM_.str.3,@object
fuckLLVM_.str.3:
	.asciz	"vector x:  "
	.size	fuckLLVM_.str.3, 11

	.section	.rodata
	.type	fuckLLVM_.str.4,@object
fuckLLVM_.str.4:
	.asciz	"excited! "
	.size	fuckLLVM_.str.4, 9

	.section	.rodata
	.type	fuckLLVM_.str.5,@object
fuckLLVM_.str.5:
	.asciz	"vector y:  "
	.size	fuckLLVM_.str.5, 11

	.section	.rodata
	.type	fuckLLVM_.str.6,@object
fuckLLVM_.str.6:
	.asciz	"x + y:  "
	.size	fuckLLVM_.str.6, 8

	.section	.rodata
	.type	fuckLLVM_.str.7,@object
fuckLLVM_.str.7:
	.asciz	"x * y:  "
	.size	fuckLLVM_.str.7, 8

	.section	.rodata
	.type	fuckLLVM_.str.8,@object
fuckLLVM_.str.8:
	.asciz	"(1 << 3) * y:  "
	.size	fuckLLVM_.str.8, 15

