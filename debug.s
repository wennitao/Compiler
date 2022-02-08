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
	j	.vector_entry
.vector_entry:
	li	VirtualReg_13, -12
	add	VirtualReg_13, s0, VirtualReg_13
	sw	VirtualReg_0, 0(VirtualReg_13)
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
	j	.classvector_init_entry
.classvector_init_entry:
	li	VirtualReg_14, -12
	add	VirtualReg_14, s0, VirtualReg_14
	sw	VirtualReg_0, 0(VirtualReg_14)
	li	VirtualReg_16, -12
	add	VirtualReg_16, s0, VirtualReg_16
	lw	VirtualReg_15, 0(VirtualReg_16)
	li	VirtualReg_18, -16
	add	VirtualReg_18, s0, VirtualReg_18
	sw	VirtualReg_1, 0(VirtualReg_18)
	li	VirtualReg_20, -16
	add	VirtualReg_20, s0, VirtualReg_20
	lw	VirtualReg_19, 0(VirtualReg_20)
	li	VirtualReg_21, 0
	xor	fuckLLVM_7, VirtualReg_19, VirtualReg_21
	sltiu	fuckLLVM_7, fuckLLVM_7, 1
	bnez	fuckLLVM_7, .classvector_init_ID7_if_true
	j	.classvector_init_ID7_if_out
.classvector_init_ID7_if_true:
	j	.classvector_init_return
.classvector_init_ID7_if_out:
	addi	VirtualReg_22, VirtualReg_15, 0
	li	VirtualReg_24, -16
	add	VirtualReg_24, s0, VirtualReg_24
	lw	VirtualReg_23, 0(VirtualReg_24)
	li	VirtualReg_27, -1
	li	VirtualReg_28, 4
	mul	VirtualReg_26, VirtualReg_27, VirtualReg_28
	add	VirtualReg_25, VirtualReg_23, VirtualReg_26
	lw	VirtualReg_29, 0(VirtualReg_25)
	li	VirtualReg_30, 4
	mul	fuckLLVM_14, VirtualReg_29, VirtualReg_30
	li	VirtualReg_31, 4
	add	fuckLLVM_15, fuckLLVM_14, VirtualReg_31
	mv	a0, fuckLLVM_15
	call	malloc
	mv	VirtualReg_32, a0
	sw	VirtualReg_29, 0(VirtualReg_32)
	li	VirtualReg_35, 1
	li	VirtualReg_36, 4
	mul	VirtualReg_34, VirtualReg_35, VirtualReg_36
	add	VirtualReg_33, VirtualReg_32, VirtualReg_34
	sw	VirtualReg_33, 0(VirtualReg_22)
	li	VirtualReg_38, 0
	li	VirtualReg_39, -20
	add	VirtualReg_39, s0, VirtualReg_39
	sw	VirtualReg_38, 0(VirtualReg_39)
	j	.classvector_init_ID21_for_condition
.classvector_init_ID21_for_condition:
	li	VirtualReg_41, -20
	add	VirtualReg_41, s0, VirtualReg_41
	lw	VirtualReg_40, 0(VirtualReg_41)
	li	VirtualReg_43, -16
	add	VirtualReg_43, s0, VirtualReg_43
	lw	VirtualReg_42, 0(VirtualReg_43)
	li	VirtualReg_46, -1
	li	VirtualReg_47, 4
	mul	VirtualReg_45, VirtualReg_46, VirtualReg_47
	add	VirtualReg_44, VirtualReg_42, VirtualReg_45
	lw	VirtualReg_48, 0(VirtualReg_44)
	slt	fuckLLVM_27, VirtualReg_40, VirtualReg_48
	bnez	fuckLLVM_27, .classvector_init_ID21_for_suite
	j	.classvector_init_ID21_for_out
.classvector_init_ID21_for_suite:
	addi	VirtualReg_49, VirtualReg_15, 0
	lw	VirtualReg_50, 0(VirtualReg_49)
	li	VirtualReg_52, -20
	add	VirtualReg_52, s0, VirtualReg_52
	lw	VirtualReg_51, 0(VirtualReg_52)
	li	VirtualReg_55, 4
	mul	VirtualReg_54, VirtualReg_51, VirtualReg_55
	add	VirtualReg_53, VirtualReg_50, VirtualReg_54
	li	VirtualReg_57, -16
	add	VirtualReg_57, s0, VirtualReg_57
	lw	VirtualReg_56, 0(VirtualReg_57)
	li	VirtualReg_59, -20
	add	VirtualReg_59, s0, VirtualReg_59
	lw	VirtualReg_58, 0(VirtualReg_59)
	li	VirtualReg_62, 4
	mul	VirtualReg_61, VirtualReg_58, VirtualReg_62
	add	VirtualReg_60, VirtualReg_56, VirtualReg_61
	lw	VirtualReg_63, 0(VirtualReg_60)
	sw	VirtualReg_63, 0(VirtualReg_53)
	j	.classvector_init_ID21_for_incr
.classvector_init_ID21_for_incr:
	li	VirtualReg_65, -20
	add	VirtualReg_65, s0, VirtualReg_65
	lw	VirtualReg_64, 0(VirtualReg_65)
	li	VirtualReg_66, 1
	add	fuckLLVM_37, VirtualReg_64, VirtualReg_66
	li	VirtualReg_67, -20
	add	VirtualReg_67, s0, VirtualReg_67
	sw	fuckLLVM_37, 0(VirtualReg_67)
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
	j	.classvector_getDim_entry
.classvector_getDim_entry:
	li	VirtualReg_13, -12
	add	VirtualReg_13, s0, VirtualReg_13
	sw	VirtualReg_0, 0(VirtualReg_13)
	li	VirtualReg_15, -12
	add	VirtualReg_15, s0, VirtualReg_15
	lw	VirtualReg_14, 0(VirtualReg_15)
	addi	VirtualReg_17, VirtualReg_14, 0
	lw	VirtualReg_18, 0(VirtualReg_17)
	li	VirtualReg_19, 0
	xor	fuckLLVM_6, VirtualReg_18, VirtualReg_19
	sltiu	fuckLLVM_6, fuckLLVM_6, 1
	bnez	fuckLLVM_6, .classvector_getDim_ID6_if_true
	j	.classvector_getDim_ID6_if_out
.classvector_getDim_ID6_if_true:
	li	VirtualReg_20, 0
	li	VirtualReg_21, -16
	add	VirtualReg_21, s0, VirtualReg_21
	sw	VirtualReg_20, 0(VirtualReg_21)
	j	.classvector_getDim_return
.classvector_getDim_ID6_if_out:
	addi	VirtualReg_22, VirtualReg_14, 0
	lw	VirtualReg_23, 0(VirtualReg_22)
	li	VirtualReg_26, -1
	li	VirtualReg_27, 4
	mul	VirtualReg_25, VirtualReg_26, VirtualReg_27
	add	VirtualReg_24, VirtualReg_23, VirtualReg_25
	lw	VirtualReg_28, 0(VirtualReg_24)
	li	VirtualReg_29, -16
	add	VirtualReg_29, s0, VirtualReg_29
	sw	VirtualReg_28, 0(VirtualReg_29)
	j	.classvector_getDim_return
.classvector_getDim_return:
	li	VirtualReg_31, -16
	add	VirtualReg_31, s0, VirtualReg_31
	lw	VirtualReg_30, 0(VirtualReg_31)
	mv	a0, VirtualReg_30
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
	j	.classvector_dot_entry
.classvector_dot_entry:
	li	VirtualReg_14, -12
	add	VirtualReg_14, s0, VirtualReg_14
	sw	VirtualReg_0, 0(VirtualReg_14)
	li	VirtualReg_16, -12
	add	VirtualReg_16, s0, VirtualReg_16
	lw	VirtualReg_15, 0(VirtualReg_16)
	li	VirtualReg_18, -16
	add	VirtualReg_18, s0, VirtualReg_18
	sw	VirtualReg_1, 0(VirtualReg_18)
	li	VirtualReg_21, 0
	li	VirtualReg_22, -24
	add	VirtualReg_22, s0, VirtualReg_22
	sw	VirtualReg_21, 0(VirtualReg_22)
	li	VirtualReg_24, 0
	li	VirtualReg_25, -28
	add	VirtualReg_25, s0, VirtualReg_25
	sw	VirtualReg_24, 0(VirtualReg_25)
	j	.classvector_dot_ID8_while_condition
.classvector_dot_ID8_while_condition:
	li	VirtualReg_27, -24
	add	VirtualReg_27, s0, VirtualReg_27
	lw	VirtualReg_26, 0(VirtualReg_27)
	mv	a0, VirtualReg_15
	call	classvector_getDim
	mv	VirtualReg_28, a0
	slt	fuckLLVM_10, VirtualReg_26, VirtualReg_28
	bnez	fuckLLVM_10, .classvector_dot_ID11_while_suite
	j	.classvector_dot_ID11_while_out
.classvector_dot_ID11_while_suite:
	addi	VirtualReg_29, VirtualReg_15, 0
	lw	VirtualReg_30, 0(VirtualReg_29)
	li	VirtualReg_32, -24
	add	VirtualReg_32, s0, VirtualReg_32
	lw	VirtualReg_31, 0(VirtualReg_32)
	li	VirtualReg_35, 4
	mul	VirtualReg_34, VirtualReg_31, VirtualReg_35
	add	VirtualReg_33, VirtualReg_30, VirtualReg_34
	lw	VirtualReg_36, 0(VirtualReg_33)
	li	VirtualReg_38, -16
	add	VirtualReg_38, s0, VirtualReg_38
	lw	VirtualReg_37, 0(VirtualReg_38)
	addi	VirtualReg_39, VirtualReg_37, 0
	lw	VirtualReg_40, 0(VirtualReg_39)
	li	VirtualReg_42, -24
	add	VirtualReg_42, s0, VirtualReg_42
	lw	VirtualReg_41, 0(VirtualReg_42)
	li	VirtualReg_45, 4
	mul	VirtualReg_44, VirtualReg_41, VirtualReg_45
	add	VirtualReg_43, VirtualReg_40, VirtualReg_44
	lw	VirtualReg_46, 0(VirtualReg_43)
	mul	fuckLLVM_22, VirtualReg_36, VirtualReg_46
	li	VirtualReg_47, -28
	add	VirtualReg_47, s0, VirtualReg_47
	sw	fuckLLVM_22, 0(VirtualReg_47)
	li	VirtualReg_49, -24
	add	VirtualReg_49, s0, VirtualReg_49
	lw	VirtualReg_48, 0(VirtualReg_49)
	li	VirtualReg_50, 1
	add	fuckLLVM_24, VirtualReg_48, VirtualReg_50
	li	VirtualReg_51, -24
	add	VirtualReg_51, s0, VirtualReg_51
	sw	fuckLLVM_24, 0(VirtualReg_51)
	j	.classvector_dot_ID8_while_condition
.classvector_dot_ID11_while_out:
	li	VirtualReg_53, -28
	add	VirtualReg_53, s0, VirtualReg_53
	lw	VirtualReg_52, 0(VirtualReg_53)
	li	VirtualReg_54, -20
	add	VirtualReg_54, s0, VirtualReg_54
	sw	VirtualReg_52, 0(VirtualReg_54)
	j	.classvector_dot_return
.classvector_dot_return:
	li	VirtualReg_56, -20
	add	VirtualReg_56, s0, VirtualReg_56
	lw	VirtualReg_55, 0(VirtualReg_56)
	mv	a0, VirtualReg_55
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
	j	.classvector_scalarInPlaceMultiply_entry
.classvector_scalarInPlaceMultiply_entry:
	li	VirtualReg_14, -12
	add	VirtualReg_14, s0, VirtualReg_14
	sw	VirtualReg_0, 0(VirtualReg_14)
	li	VirtualReg_16, -12
	add	VirtualReg_16, s0, VirtualReg_16
	lw	VirtualReg_15, 0(VirtualReg_16)
	li	VirtualReg_18, -16
	add	VirtualReg_18, s0, VirtualReg_18
	sw	VirtualReg_1, 0(VirtualReg_18)
	addi	VirtualReg_20, VirtualReg_15, 0
	lw	VirtualReg_21, 0(VirtualReg_20)
	li	VirtualReg_22, 0
	xor	fuckLLVM_8, VirtualReg_21, VirtualReg_22
	sltiu	fuckLLVM_8, fuckLLVM_8, 1
	bnez	fuckLLVM_8, .classvector_scalarInPlaceMultiply_ID8_if_true
	j	.classvector_scalarInPlaceMultiply_ID8_if_out
.classvector_scalarInPlaceMultiply_ID8_if_true:
	li	VirtualReg_23, 0
	li	VirtualReg_24, -20
	add	VirtualReg_24, s0, VirtualReg_24
	sw	VirtualReg_23, 0(VirtualReg_24)
	j	.classvector_scalarInPlaceMultiply_return
.classvector_scalarInPlaceMultiply_ID8_if_out:
	li	VirtualReg_26, 0
	li	VirtualReg_27, -24
	add	VirtualReg_27, s0, VirtualReg_27
	sw	VirtualReg_26, 0(VirtualReg_27)
	j	.classvector_scalarInPlaceMultiply_ID9_for_condition
.classvector_scalarInPlaceMultiply_ID9_for_condition:
	li	VirtualReg_29, -24
	add	VirtualReg_29, s0, VirtualReg_29
	lw	VirtualReg_28, 0(VirtualReg_29)
	mv	a0, VirtualReg_15
	call	classvector_getDim
	mv	VirtualReg_30, a0
	slt	fuckLLVM_12, VirtualReg_28, VirtualReg_30
	bnez	fuckLLVM_12, .classvector_scalarInPlaceMultiply_ID9_for_suite
	j	.classvector_scalarInPlaceMultiply_ID9_for_out
.classvector_scalarInPlaceMultiply_ID9_for_suite:
	addi	VirtualReg_31, VirtualReg_15, 0
	lw	VirtualReg_32, 0(VirtualReg_31)
	li	VirtualReg_34, -24
	add	VirtualReg_34, s0, VirtualReg_34
	lw	VirtualReg_33, 0(VirtualReg_34)
	li	VirtualReg_37, 4
	mul	VirtualReg_36, VirtualReg_33, VirtualReg_37
	add	VirtualReg_35, VirtualReg_32, VirtualReg_36
	li	VirtualReg_39, -16
	add	VirtualReg_39, s0, VirtualReg_39
	lw	VirtualReg_38, 0(VirtualReg_39)
	addi	VirtualReg_40, VirtualReg_15, 0
	lw	VirtualReg_41, 0(VirtualReg_40)
	li	VirtualReg_43, -24
	add	VirtualReg_43, s0, VirtualReg_43
	lw	VirtualReg_42, 0(VirtualReg_43)
	li	VirtualReg_46, 4
	mul	VirtualReg_45, VirtualReg_42, VirtualReg_46
	add	VirtualReg_44, VirtualReg_41, VirtualReg_45
	lw	VirtualReg_47, 0(VirtualReg_44)
	mul	fuckLLVM_23, VirtualReg_38, VirtualReg_47
	sw	fuckLLVM_23, 0(VirtualReg_35)
	j	.classvector_scalarInPlaceMultiply_ID9_for_incr
.classvector_scalarInPlaceMultiply_ID9_for_incr:
	li	VirtualReg_49, -24
	add	VirtualReg_49, s0, VirtualReg_49
	lw	VirtualReg_48, 0(VirtualReg_49)
	li	VirtualReg_50, 1
	add	fuckLLVM_25, VirtualReg_48, VirtualReg_50
	li	VirtualReg_51, -24
	add	VirtualReg_51, s0, VirtualReg_51
	sw	fuckLLVM_25, 0(VirtualReg_51)
	j	.classvector_scalarInPlaceMultiply_ID9_for_condition
.classvector_scalarInPlaceMultiply_ID9_for_out:
	li	VirtualReg_52, -20
	add	VirtualReg_52, s0, VirtualReg_52
	sw	VirtualReg_15, 0(VirtualReg_52)
	j	.classvector_scalarInPlaceMultiply_return
.classvector_scalarInPlaceMultiply_return:
	li	VirtualReg_54, -20
	add	VirtualReg_54, s0, VirtualReg_54
	lw	VirtualReg_53, 0(VirtualReg_54)
	mv	a0, VirtualReg_53
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
	j	.classvector_add_entry
.classvector_add_entry:
	li	VirtualReg_14, -12
	add	VirtualReg_14, s0, VirtualReg_14
	sw	VirtualReg_0, 0(VirtualReg_14)
	li	VirtualReg_16, -12
	add	VirtualReg_16, s0, VirtualReg_16
	lw	VirtualReg_15, 0(VirtualReg_16)
	li	VirtualReg_18, -16
	add	VirtualReg_18, s0, VirtualReg_18
	sw	VirtualReg_1, 0(VirtualReg_18)
	mv	a0, VirtualReg_15
	call	classvector_getDim
	mv	VirtualReg_20, a0
	li	VirtualReg_22, -16
	add	VirtualReg_22, s0, VirtualReg_22
	lw	VirtualReg_21, 0(VirtualReg_22)
	mv	a0, VirtualReg_21
	call	classvector_getDim
	mv	VirtualReg_23, a0
	xor	fuckLLVM_9, VirtualReg_20, VirtualReg_23
	sltiu	fuckLLVM_9, fuckLLVM_9, 1
	xori	fuckLLVM_9, fuckLLVM_9, 1
	li	VirtualReg_86, 1
	mv	VirtualReg_26, VirtualReg_86
	bnez	fuckLLVM_9, .classvector_add_ID9_OrOr_out
	mv	VirtualReg_26, VirtualReg_86
	j	.classvector_add_ID9_OrOr_false
.classvector_add_ID9_OrOr_false:
	mv	a0, VirtualReg_15
	call	classvector_getDim
	mv	VirtualReg_24, a0
	li	VirtualReg_25, 0
	xor	fuckLLVM_11, VirtualReg_24, VirtualReg_25
	sltiu	fuckLLVM_11, fuckLLVM_11, 1
	mv	VirtualReg_26, fuckLLVM_11
	j	.classvector_add_ID9_OrOr_out
.classvector_add_ID9_OrOr_out:
	bnez	VirtualReg_26, .classvector_add_ID12_if_true
	j	.classvector_add_ID12_if_out
.classvector_add_ID12_if_true:
	li	VirtualReg_27, 0
	li	VirtualReg_28, -20
	add	VirtualReg_28, s0, VirtualReg_28
	sw	VirtualReg_27, 0(VirtualReg_28)
	j	.classvector_add_return
.classvector_add_ID12_if_out:
	li	VirtualReg_30, 8
	mv	a0, VirtualReg_30
	call	malloc
	mv	VirtualReg_31, a0
	mv	a0, VirtualReg_31
	call	vector
	li	VirtualReg_32, -24
	add	VirtualReg_32, s0, VirtualReg_32
	sw	VirtualReg_31, 0(VirtualReg_32)
	li	VirtualReg_35, -24
	add	VirtualReg_35, s0, VirtualReg_35
	lw	VirtualReg_34, 0(VirtualReg_35)
	addi	VirtualReg_36, VirtualReg_34, 0
	mv	a0, VirtualReg_15
	call	classvector_getDim
	mv	VirtualReg_37, a0
	li	VirtualReg_38, 4
	mul	fuckLLVM_22, VirtualReg_37, VirtualReg_38
	li	VirtualReg_39, 4
	add	fuckLLVM_23, fuckLLVM_22, VirtualReg_39
	mv	a0, fuckLLVM_23
	call	malloc
	mv	VirtualReg_40, a0
	sw	VirtualReg_37, 0(VirtualReg_40)
	li	VirtualReg_43, 1
	li	VirtualReg_44, 4
	mul	VirtualReg_42, VirtualReg_43, VirtualReg_44
	add	VirtualReg_41, VirtualReg_40, VirtualReg_42
	sw	VirtualReg_41, 0(VirtualReg_36)
	li	VirtualReg_45, 0
	li	VirtualReg_46, -28
	add	VirtualReg_46, s0, VirtualReg_46
	sw	VirtualReg_45, 0(VirtualReg_46)
	j	.classvector_add_ID28_for_condition
.classvector_add_ID28_for_condition:
	li	VirtualReg_48, -28
	add	VirtualReg_48, s0, VirtualReg_48
	lw	VirtualReg_47, 0(VirtualReg_48)
	mv	a0, VirtualReg_15
	call	classvector_getDim
	mv	VirtualReg_49, a0
	slt	fuckLLVM_31, VirtualReg_47, VirtualReg_49
	bnez	fuckLLVM_31, .classvector_add_ID28_for_suite
	j	.classvector_add_ID28_for_out
.classvector_add_ID28_for_suite:
	li	VirtualReg_51, -24
	add	VirtualReg_51, s0, VirtualReg_51
	lw	VirtualReg_50, 0(VirtualReg_51)
	addi	VirtualReg_52, VirtualReg_50, 0
	lw	VirtualReg_53, 0(VirtualReg_52)
	li	VirtualReg_55, -28
	add	VirtualReg_55, s0, VirtualReg_55
	lw	VirtualReg_54, 0(VirtualReg_55)
	li	VirtualReg_58, 4
	mul	VirtualReg_57, VirtualReg_54, VirtualReg_58
	add	VirtualReg_56, VirtualReg_53, VirtualReg_57
	addi	VirtualReg_59, VirtualReg_15, 0
	lw	VirtualReg_60, 0(VirtualReg_59)
	li	VirtualReg_62, -28
	add	VirtualReg_62, s0, VirtualReg_62
	lw	VirtualReg_61, 0(VirtualReg_62)
	li	VirtualReg_65, 4
	mul	VirtualReg_64, VirtualReg_61, VirtualReg_65
	add	VirtualReg_63, VirtualReg_60, VirtualReg_64
	lw	VirtualReg_66, 0(VirtualReg_63)
	li	VirtualReg_68, -16
	add	VirtualReg_68, s0, VirtualReg_68
	lw	VirtualReg_67, 0(VirtualReg_68)
	addi	VirtualReg_69, VirtualReg_67, 0
	lw	VirtualReg_70, 0(VirtualReg_69)
	li	VirtualReg_72, -28
	add	VirtualReg_72, s0, VirtualReg_72
	lw	VirtualReg_71, 0(VirtualReg_72)
	li	VirtualReg_75, 4
	mul	VirtualReg_74, VirtualReg_71, VirtualReg_75
	add	VirtualReg_73, VirtualReg_70, VirtualReg_74
	lw	VirtualReg_76, 0(VirtualReg_73)
	add	fuckLLVM_48, VirtualReg_66, VirtualReg_76
	sw	fuckLLVM_48, 0(VirtualReg_56)
	j	.classvector_add_ID28_for_incr
.classvector_add_ID28_for_incr:
	li	VirtualReg_78, -28
	add	VirtualReg_78, s0, VirtualReg_78
	lw	VirtualReg_77, 0(VirtualReg_78)
	li	VirtualReg_79, 1
	add	fuckLLVM_50, VirtualReg_77, VirtualReg_79
	li	VirtualReg_80, -28
	add	VirtualReg_80, s0, VirtualReg_80
	sw	fuckLLVM_50, 0(VirtualReg_80)
	j	.classvector_add_ID28_for_condition
.classvector_add_ID28_for_out:
	li	VirtualReg_82, -24
	add	VirtualReg_82, s0, VirtualReg_82
	lw	VirtualReg_81, 0(VirtualReg_82)
	li	VirtualReg_83, -20
	add	VirtualReg_83, s0, VirtualReg_83
	sw	VirtualReg_81, 0(VirtualReg_83)
	j	.classvector_add_return
.classvector_add_return:
	li	VirtualReg_85, -20
	add	VirtualReg_85, s0, VirtualReg_85
	lw	VirtualReg_84, 0(VirtualReg_85)
	mv	a0, VirtualReg_84
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
	j	.classvector_set_entry
.classvector_set_entry:
	li	VirtualReg_15, -12
	add	VirtualReg_15, s0, VirtualReg_15
	sw	VirtualReg_0, 0(VirtualReg_15)
	li	VirtualReg_17, -12
	add	VirtualReg_17, s0, VirtualReg_17
	lw	VirtualReg_16, 0(VirtualReg_17)
	li	VirtualReg_19, -16
	add	VirtualReg_19, s0, VirtualReg_19
	sw	VirtualReg_1, 0(VirtualReg_19)
	li	VirtualReg_21, -20
	add	VirtualReg_21, s0, VirtualReg_21
	sw	VirtualReg_2, 0(VirtualReg_21)
	mv	a0, VirtualReg_16
	call	classvector_getDim
	mv	VirtualReg_23, a0
	li	VirtualReg_25, -16
	add	VirtualReg_25, s0, VirtualReg_25
	lw	VirtualReg_24, 0(VirtualReg_25)
	slt	fuckLLVM_10, VirtualReg_23, VirtualReg_24
	bnez	fuckLLVM_10, .classvector_set_ID10_if_true
	j	.classvector_set_ID10_if_out
.classvector_set_ID10_if_true:
	li	VirtualReg_26, 0
	li	VirtualReg_27, -24
	add	VirtualReg_27, s0, VirtualReg_27
	sb	VirtualReg_26, 0(VirtualReg_27)
	j	.classvector_set_return
.classvector_set_ID10_if_out:
	addi	VirtualReg_28, VirtualReg_16, 0
	lw	VirtualReg_29, 0(VirtualReg_28)
	li	VirtualReg_31, -16
	add	VirtualReg_31, s0, VirtualReg_31
	lw	VirtualReg_30, 0(VirtualReg_31)
	li	VirtualReg_34, 4
	mul	VirtualReg_33, VirtualReg_30, VirtualReg_34
	add	VirtualReg_32, VirtualReg_29, VirtualReg_33
	li	VirtualReg_36, -20
	add	VirtualReg_36, s0, VirtualReg_36
	lw	VirtualReg_35, 0(VirtualReg_36)
	sw	VirtualReg_35, 0(VirtualReg_32)
	li	VirtualReg_37, 1
	li	VirtualReg_38, -24
	add	VirtualReg_38, s0, VirtualReg_38
	sb	VirtualReg_37, 0(VirtualReg_38)
	j	.classvector_set_return
.classvector_set_return:
	li	VirtualReg_40, -24
	add	VirtualReg_40, s0, VirtualReg_40
	lb	VirtualReg_39, 0(VirtualReg_40)
	mv	a0, VirtualReg_39
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
	j	.classvector_tostring_entry
.classvector_tostring_entry:
	li	VirtualReg_13, -12
	add	VirtualReg_13, s0, VirtualReg_13
	sw	VirtualReg_0, 0(VirtualReg_13)
	li	VirtualReg_15, -12
	add	VirtualReg_15, s0, VirtualReg_15
	lw	VirtualReg_14, 0(VirtualReg_15)
	la	VirtualReg_18, fuckLLVM_.str.0
	li	VirtualReg_19, -20
	add	VirtualReg_19, s0, VirtualReg_19
	sw	VirtualReg_18, 0(VirtualReg_19)
	mv	a0, VirtualReg_14
	call	classvector_getDim
	mv	VirtualReg_20, a0
	li	VirtualReg_21, 0
	slt	fuckLLVM_7, VirtualReg_21, VirtualReg_20
	bnez	fuckLLVM_7, .classvector_tostring_ID7_if_true
	j	.classvector_tostring_ID7_if_out
.classvector_tostring_ID7_if_true:
	li	VirtualReg_23, -20
	add	VirtualReg_23, s0, VirtualReg_23
	lw	VirtualReg_22, 0(VirtualReg_23)
	addi	VirtualReg_24, VirtualReg_14, 0
	lw	VirtualReg_25, 0(VirtualReg_24)
	li	VirtualReg_28, 0
	li	VirtualReg_29, 4
	mul	VirtualReg_27, VirtualReg_28, VirtualReg_29
	add	VirtualReg_26, VirtualReg_25, VirtualReg_27
	lw	VirtualReg_30, 0(VirtualReg_26)
	mv	a0, VirtualReg_30
	call	toString
	mv	VirtualReg_31, a0
	mv	a0, VirtualReg_22
	mv	a1, VirtualReg_31
	call	string_add
	mv	VirtualReg_32, a0
	li	VirtualReg_33, -20
	add	VirtualReg_33, s0, VirtualReg_33
	sw	VirtualReg_32, 0(VirtualReg_33)
	j	.classvector_tostring_ID7_if_out
.classvector_tostring_ID7_if_out:
	li	VirtualReg_35, 1
	li	VirtualReg_36, -24
	add	VirtualReg_36, s0, VirtualReg_36
	sw	VirtualReg_35, 0(VirtualReg_36)
	j	.classvector_tostring_ID18_for_condition
.classvector_tostring_ID18_for_condition:
	li	VirtualReg_38, -24
	add	VirtualReg_38, s0, VirtualReg_38
	lw	VirtualReg_37, 0(VirtualReg_38)
	mv	a0, VirtualReg_14
	call	classvector_getDim
	mv	VirtualReg_39, a0
	slt	fuckLLVM_21, VirtualReg_37, VirtualReg_39
	bnez	fuckLLVM_21, .classvector_tostring_ID18_for_suite
	j	.classvector_tostring_ID18_for_out
.classvector_tostring_ID18_for_suite:
	li	VirtualReg_41, -20
	add	VirtualReg_41, s0, VirtualReg_41
	lw	VirtualReg_40, 0(VirtualReg_41)
	la	VirtualReg_42, fuckLLVM_.str.1
	mv	a0, VirtualReg_40
	mv	a1, VirtualReg_42
	call	string_add
	mv	VirtualReg_43, a0
	addi	VirtualReg_44, VirtualReg_14, 0
	lw	VirtualReg_45, 0(VirtualReg_44)
	li	VirtualReg_47, -24
	add	VirtualReg_47, s0, VirtualReg_47
	lw	VirtualReg_46, 0(VirtualReg_47)
	li	VirtualReg_50, 4
	mul	VirtualReg_49, VirtualReg_46, VirtualReg_50
	add	VirtualReg_48, VirtualReg_45, VirtualReg_49
	lw	VirtualReg_51, 0(VirtualReg_48)
	mv	a0, VirtualReg_51
	call	toString
	mv	VirtualReg_52, a0
	mv	a0, VirtualReg_43
	mv	a1, VirtualReg_52
	call	string_add
	mv	VirtualReg_53, a0
	li	VirtualReg_54, -20
	add	VirtualReg_54, s0, VirtualReg_54
	sw	VirtualReg_53, 0(VirtualReg_54)
	j	.classvector_tostring_ID18_for_incr
.classvector_tostring_ID18_for_incr:
	li	VirtualReg_56, -24
	add	VirtualReg_56, s0, VirtualReg_56
	lw	VirtualReg_55, 0(VirtualReg_56)
	li	VirtualReg_57, 1
	add	fuckLLVM_37, VirtualReg_55, VirtualReg_57
	li	VirtualReg_58, -24
	add	VirtualReg_58, s0, VirtualReg_58
	sw	fuckLLVM_37, 0(VirtualReg_58)
	j	.classvector_tostring_ID18_for_condition
.classvector_tostring_ID18_for_out:
	li	VirtualReg_60, -20
	add	VirtualReg_60, s0, VirtualReg_60
	lw	VirtualReg_59, 0(VirtualReg_60)
	la	VirtualReg_61, fuckLLVM_.str.2
	mv	a0, VirtualReg_59
	mv	a1, VirtualReg_61
	call	string_add
	mv	VirtualReg_62, a0
	li	VirtualReg_63, -20
	add	VirtualReg_63, s0, VirtualReg_63
	sw	VirtualReg_62, 0(VirtualReg_63)
	li	VirtualReg_65, -20
	add	VirtualReg_65, s0, VirtualReg_65
	lw	VirtualReg_64, 0(VirtualReg_65)
	li	VirtualReg_66, -16
	add	VirtualReg_66, s0, VirtualReg_66
	sw	VirtualReg_64, 0(VirtualReg_66)
	j	.classvector_tostring_return
.classvector_tostring_return:
	li	VirtualReg_68, -16
	add	VirtualReg_68, s0, VirtualReg_68
	lw	VirtualReg_67, 0(VirtualReg_68)
	mv	a0, VirtualReg_67
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
	j	.classvector_copy_entry
.classvector_copy_entry:
	li	VirtualReg_14, -12
	add	VirtualReg_14, s0, VirtualReg_14
	sw	VirtualReg_0, 0(VirtualReg_14)
	li	VirtualReg_16, -12
	add	VirtualReg_16, s0, VirtualReg_16
	lw	VirtualReg_15, 0(VirtualReg_16)
	li	VirtualReg_18, -16
	add	VirtualReg_18, s0, VirtualReg_18
	sw	VirtualReg_1, 0(VirtualReg_18)
	li	VirtualReg_21, -16
	add	VirtualReg_21, s0, VirtualReg_21
	lw	VirtualReg_20, 0(VirtualReg_21)
	li	VirtualReg_22, 0
	xor	fuckLLVM_7, VirtualReg_20, VirtualReg_22
	sltiu	fuckLLVM_7, fuckLLVM_7, 1
	bnez	fuckLLVM_7, .classvector_copy_ID7_if_true
	j	.classvector_copy_ID7_if_out
.classvector_copy_ID7_if_true:
	li	VirtualReg_23, 0
	li	VirtualReg_24, -20
	add	VirtualReg_24, s0, VirtualReg_24
	sb	VirtualReg_23, 0(VirtualReg_24)
	j	.classvector_copy_return
.classvector_copy_ID7_if_out:
	li	VirtualReg_26, -16
	add	VirtualReg_26, s0, VirtualReg_26
	lw	VirtualReg_25, 0(VirtualReg_26)
	mv	a0, VirtualReg_25
	call	classvector_getDim
	mv	VirtualReg_27, a0
	li	VirtualReg_28, 0
	xor	fuckLLVM_10, VirtualReg_27, VirtualReg_28
	sltiu	fuckLLVM_10, fuckLLVM_10, 1
	bnez	fuckLLVM_10, .classvector_copy_ID10_if_true
	j	.classvector_copy_ID10_if_false
.classvector_copy_ID23_for_condition:
	li	VirtualReg_31, -24
	add	VirtualReg_31, s0, VirtualReg_31
	lw	VirtualReg_29, 0(VirtualReg_31)
	mv	a0, VirtualReg_15
	call	classvector_getDim
	mv	VirtualReg_32, a0
	slt	fuckLLVM_26, VirtualReg_29, VirtualReg_32
	bnez	fuckLLVM_26, .classvector_copy_ID23_for_suite
	j	.classvector_copy_ID23_for_out
.classvector_copy_ID23_for_suite:
	addi	VirtualReg_33, VirtualReg_15, 0
	lw	VirtualReg_34, 0(VirtualReg_33)
	li	VirtualReg_36, -24
	add	VirtualReg_36, s0, VirtualReg_36
	lw	VirtualReg_35, 0(VirtualReg_36)
	li	VirtualReg_39, 4
	mul	VirtualReg_38, VirtualReg_35, VirtualReg_39
	add	VirtualReg_37, VirtualReg_34, VirtualReg_38
	li	VirtualReg_41, -16
	add	VirtualReg_41, s0, VirtualReg_41
	lw	VirtualReg_40, 0(VirtualReg_41)
	addi	VirtualReg_42, VirtualReg_40, 0
	lw	VirtualReg_43, 0(VirtualReg_42)
	li	VirtualReg_45, -24
	add	VirtualReg_45, s0, VirtualReg_45
	lw	VirtualReg_44, 0(VirtualReg_45)
	li	VirtualReg_48, 4
	mul	VirtualReg_47, VirtualReg_44, VirtualReg_48
	add	VirtualReg_46, VirtualReg_43, VirtualReg_47
	lw	VirtualReg_49, 0(VirtualReg_46)
	sw	VirtualReg_49, 0(VirtualReg_37)
	j	.classvector_copy_ID23_for_incr
.classvector_copy_ID23_for_incr:
	li	VirtualReg_51, -24
	add	VirtualReg_51, s0, VirtualReg_51
	lw	VirtualReg_50, 0(VirtualReg_51)
	li	VirtualReg_52, 1
	add	fuckLLVM_38, VirtualReg_50, VirtualReg_52
	li	VirtualReg_53, -24
	add	VirtualReg_53, s0, VirtualReg_53
	sw	fuckLLVM_38, 0(VirtualReg_53)
	j	.classvector_copy_ID23_for_condition
.classvector_copy_ID23_for_out:
	j	.classvector_copy_ID10_if_out
.classvector_copy_ID10_if_true:
	addi	VirtualReg_54, VirtualReg_15, 0
	li	VirtualReg_55, 0
	sw	VirtualReg_55, 0(VirtualReg_54)
	j	.classvector_copy_ID10_if_out
.classvector_copy_ID10_if_false:
	addi	VirtualReg_56, VirtualReg_15, 0
	li	VirtualReg_58, -16
	add	VirtualReg_58, s0, VirtualReg_58
	lw	VirtualReg_57, 0(VirtualReg_58)
	mv	a0, VirtualReg_57
	call	classvector_getDim
	mv	VirtualReg_59, a0
	li	VirtualReg_60, 4
	mul	fuckLLVM_16, VirtualReg_59, VirtualReg_60
	li	VirtualReg_61, 4
	add	fuckLLVM_17, fuckLLVM_16, VirtualReg_61
	mv	a0, fuckLLVM_17
	call	malloc
	mv	VirtualReg_62, a0
	sw	VirtualReg_59, 0(VirtualReg_62)
	li	VirtualReg_65, 1
	li	VirtualReg_66, 4
	mul	VirtualReg_64, VirtualReg_65, VirtualReg_66
	add	VirtualReg_63, VirtualReg_62, VirtualReg_64
	sw	VirtualReg_63, 0(VirtualReg_56)
	li	VirtualReg_67, 0
	li	VirtualReg_68, -24
	add	VirtualReg_68, s0, VirtualReg_68
	sw	VirtualReg_67, 0(VirtualReg_68)
	j	.classvector_copy_ID23_for_condition
.classvector_copy_ID10_if_out:
	li	VirtualReg_69, 1
	li	VirtualReg_70, -20
	add	VirtualReg_70, s0, VirtualReg_70
	sb	VirtualReg_69, 0(VirtualReg_70)
	j	.classvector_copy_return
.classvector_copy_return:
	li	VirtualReg_72, -20
	add	VirtualReg_72, s0, VirtualReg_72
	lb	VirtualReg_71, 0(VirtualReg_72)
	mv	a0, VirtualReg_71
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
	j	.main_entry
.main_entry:
	call	__init
	li	VirtualReg_12, 0
	li	VirtualReg_13, -12
	add	VirtualReg_13, s0, VirtualReg_13
	sw	VirtualReg_12, 0(VirtualReg_13)
	li	VirtualReg_15, 8
	mv	a0, VirtualReg_15
	call	malloc
	mv	VirtualReg_16, a0
	mv	a0, VirtualReg_16
	call	vector
	li	VirtualReg_17, -16
	add	VirtualReg_17, s0, VirtualReg_17
	sw	VirtualReg_16, 0(VirtualReg_17)
	li	VirtualReg_19, 10
	li	VirtualReg_20, 4
	mul	fuckLLVM_6, VirtualReg_19, VirtualReg_20
	li	VirtualReg_21, 4
	add	fuckLLVM_7, fuckLLVM_6, VirtualReg_21
	mv	a0, fuckLLVM_7
	call	malloc
	mv	VirtualReg_22, a0
	li	VirtualReg_23, 10
	sw	VirtualReg_23, 0(VirtualReg_22)
	li	VirtualReg_26, 1
	li	VirtualReg_27, 4
	mul	VirtualReg_25, VirtualReg_26, VirtualReg_27
	add	VirtualReg_24, VirtualReg_22, VirtualReg_25
	li	VirtualReg_28, -20
	add	VirtualReg_28, s0, VirtualReg_28
	sw	VirtualReg_24, 0(VirtualReg_28)
	li	VirtualReg_30, 0
	li	VirtualReg_31, -24
	add	VirtualReg_31, s0, VirtualReg_31
	sw	VirtualReg_30, 0(VirtualReg_31)
	j	.main_ID13_for_condition
.main_ID13_for_condition:
	li	VirtualReg_33, -24
	add	VirtualReg_33, s0, VirtualReg_33
	lw	VirtualReg_32, 0(VirtualReg_33)
	li	VirtualReg_34, 10
	slt	fuckLLVM_15, VirtualReg_32, VirtualReg_34
	bnez	fuckLLVM_15, .main_ID13_for_suite
	j	.main_ID13_for_out
.main_ID13_for_suite:
	li	VirtualReg_36, -20
	add	VirtualReg_36, s0, VirtualReg_36
	lw	VirtualReg_35, 0(VirtualReg_36)
	li	VirtualReg_38, -24
	add	VirtualReg_38, s0, VirtualReg_38
	lw	VirtualReg_37, 0(VirtualReg_38)
	li	VirtualReg_41, 4
	mul	VirtualReg_40, VirtualReg_37, VirtualReg_41
	add	VirtualReg_39, VirtualReg_35, VirtualReg_40
	li	VirtualReg_43, -24
	add	VirtualReg_43, s0, VirtualReg_43
	lw	VirtualReg_42, 0(VirtualReg_43)
	li	VirtualReg_44, 9
	sub	fuckLLVM_20, VirtualReg_44, VirtualReg_42
	sw	fuckLLVM_20, 0(VirtualReg_39)
	j	.main_ID13_for_incr
.main_ID13_for_incr:
	li	VirtualReg_46, -24
	add	VirtualReg_46, s0, VirtualReg_46
	lw	VirtualReg_45, 0(VirtualReg_46)
	li	VirtualReg_47, 1
	add	fuckLLVM_22, VirtualReg_45, VirtualReg_47
	li	VirtualReg_48, -24
	add	VirtualReg_48, s0, VirtualReg_48
	sw	fuckLLVM_22, 0(VirtualReg_48)
	j	.main_ID13_for_condition
.main_ID13_for_out:
	li	VirtualReg_50, -16
	add	VirtualReg_50, s0, VirtualReg_50
	lw	VirtualReg_49, 0(VirtualReg_50)
	li	VirtualReg_52, -20
	add	VirtualReg_52, s0, VirtualReg_52
	lw	VirtualReg_51, 0(VirtualReg_52)
	mv	a0, VirtualReg_49
	mv	a1, VirtualReg_51
	call	classvector_init
	la	VirtualReg_53, fuckLLVM_.str.3
	mv	a0, VirtualReg_53
	call	print
	li	VirtualReg_55, -16
	add	VirtualReg_55, s0, VirtualReg_55
	lw	VirtualReg_54, 0(VirtualReg_55)
	mv	a0, VirtualReg_54
	call	classvector_tostring
	mv	VirtualReg_56, a0
	mv	a0, VirtualReg_56
	call	println
	li	VirtualReg_58, 8
	mv	a0, VirtualReg_58
	call	malloc
	mv	VirtualReg_59, a0
	mv	a0, VirtualReg_59
	call	vector
	li	VirtualReg_60, -28
	add	VirtualReg_60, s0, VirtualReg_60
	sw	VirtualReg_59, 0(VirtualReg_60)
	li	VirtualReg_62, -28
	add	VirtualReg_62, s0, VirtualReg_62
	lw	VirtualReg_61, 0(VirtualReg_62)
	li	VirtualReg_64, -16
	add	VirtualReg_64, s0, VirtualReg_64
	lw	VirtualReg_63, 0(VirtualReg_64)
	mv	a0, VirtualReg_61
	mv	a1, VirtualReg_63
	call	classvector_copy
	mv	VirtualReg_65, a0
	li	VirtualReg_67, -28
	add	VirtualReg_67, s0, VirtualReg_67
	lw	VirtualReg_66, 0(VirtualReg_67)
	mv	a0, VirtualReg_66
	li	VirtualReg_68, 3
	mv	a1, VirtualReg_68
	li	VirtualReg_69, 817
	mv	a2, VirtualReg_69
	call	classvector_set
	mv	VirtualReg_70, a0
	bnez	VirtualReg_70, .main_ID43_if_true
	j	.main_ID43_if_out
.main_ID43_if_true:
	la	VirtualReg_71, fuckLLVM_.str.4
	mv	a0, VirtualReg_71
	call	println
	j	.main_ID43_if_out
.main_ID43_if_out:
	la	VirtualReg_72, fuckLLVM_.str.5
	mv	a0, VirtualReg_72
	call	print
	li	VirtualReg_74, -28
	add	VirtualReg_74, s0, VirtualReg_74
	lw	VirtualReg_73, 0(VirtualReg_74)
	mv	a0, VirtualReg_73
	call	classvector_tostring
	mv	VirtualReg_75, a0
	mv	a0, VirtualReg_75
	call	println
	la	VirtualReg_76, fuckLLVM_.str.6
	mv	a0, VirtualReg_76
	call	print
	li	VirtualReg_78, -16
	add	VirtualReg_78, s0, VirtualReg_78
	lw	VirtualReg_77, 0(VirtualReg_78)
	li	VirtualReg_80, -28
	add	VirtualReg_80, s0, VirtualReg_80
	lw	VirtualReg_79, 0(VirtualReg_80)
	mv	a0, VirtualReg_77
	mv	a1, VirtualReg_79
	call	classvector_add
	mv	VirtualReg_81, a0
	mv	a0, VirtualReg_81
	call	classvector_tostring
	mv	VirtualReg_82, a0
	mv	a0, VirtualReg_82
	call	println
	la	VirtualReg_83, fuckLLVM_.str.7
	mv	a0, VirtualReg_83
	call	print
	li	VirtualReg_85, -16
	add	VirtualReg_85, s0, VirtualReg_85
	lw	VirtualReg_84, 0(VirtualReg_85)
	li	VirtualReg_87, -28
	add	VirtualReg_87, s0, VirtualReg_87
	lw	VirtualReg_86, 0(VirtualReg_87)
	mv	a0, VirtualReg_84
	mv	a1, VirtualReg_86
	call	classvector_dot
	mv	VirtualReg_88, a0
	mv	a0, VirtualReg_88
	call	toString
	mv	VirtualReg_89, a0
	mv	a0, VirtualReg_89
	call	println
	la	VirtualReg_90, fuckLLVM_.str.8
	mv	a0, VirtualReg_90
	call	print
	li	VirtualReg_92, -28
	add	VirtualReg_92, s0, VirtualReg_92
	lw	VirtualReg_91, 0(VirtualReg_92)
	li	VirtualReg_93, 1
	li	VirtualReg_94, 3
	sll	fuckLLVM_73, VirtualReg_93, VirtualReg_94
	mv	a0, VirtualReg_91
	mv	a1, fuckLLVM_73
	call	classvector_scalarInPlaceMultiply
	mv	VirtualReg_95, a0
	mv	a0, VirtualReg_95
	call	classvector_tostring
	mv	VirtualReg_96, a0
	mv	a0, VirtualReg_96
	call	println
	li	VirtualReg_97, 0
	li	VirtualReg_98, -12
	add	VirtualReg_98, s0, VirtualReg_98
	sw	VirtualReg_97, 0(VirtualReg_98)
	j	.main_return
.main_return:
	li	VirtualReg_100, -12
	add	VirtualReg_100, s0, VirtualReg_100
	lw	VirtualReg_99, 0(VirtualReg_100)
	mv	a0, VirtualReg_99
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

