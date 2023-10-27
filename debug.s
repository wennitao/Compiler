	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	mv	VirtualReg_0, s0
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
	j	.__init_entry
.__init_entry:
	j	.__init_return
.__init_return:
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

	.globl	partition
	.p2align	2
	.type	partition,@function
partition:
.partition_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, s0
	mv	VirtualReg_4, s1
	mv	VirtualReg_5, s2
	mv	VirtualReg_6, s3
	mv	VirtualReg_7, s4
	mv	VirtualReg_8, s5
	mv	VirtualReg_9, s6
	mv	VirtualReg_10, s7
	mv	VirtualReg_11, s8
	mv	VirtualReg_12, s9
	mv	VirtualReg_13, s10
	mv	VirtualReg_14, s11
	j	.partition_entry
.partition_entry:
	li	VirtualReg_17, 4
	mul	VirtualReg_16, VirtualReg_2, VirtualReg_17
	add	VirtualReg_15, VirtualReg_0, VirtualReg_16
	lw	VirtualReg_18, 0(VirtualReg_15)
	li	VirtualReg_20, 1
	sub	VirtualReg_19, VirtualReg_1, VirtualReg_20
	mv	VirtualReg_21, VirtualReg_19
	mv	VirtualReg_22, VirtualReg_1
	j	.partition_ID16_for_condition
.partition_ID16_for_condition:
	slt	VirtualReg_23, VirtualReg_22, VirtualReg_2
	bnez	VirtualReg_23, .partition_ID16_for_suite
	j	.partition_ID16_for_out
.partition_ID16_for_suite:
	li	VirtualReg_26, 4
	mul	VirtualReg_25, VirtualReg_22, VirtualReg_26
	add	VirtualReg_24, VirtualReg_0, VirtualReg_25
	lw	VirtualReg_27, 0(VirtualReg_24)
	slt	VirtualReg_28, VirtualReg_18, VirtualReg_27
	xori	VirtualReg_28, VirtualReg_28, 1
	bnez	VirtualReg_28, .partition_ID25_if_true
	j	.partition_ID16_for_suite_mid
.partition_ID16_for_suite_mid:
	mv	VirtualReg_44, VirtualReg_21
	j	.partition_ID25_if_out
.partition_ID25_if_true:
	addi	VirtualReg_29, VirtualReg_21, 1
	li	VirtualReg_32, 4
	mul	VirtualReg_31, VirtualReg_29, VirtualReg_32
	add	VirtualReg_30, VirtualReg_0, VirtualReg_31
	lw	VirtualReg_33, 0(VirtualReg_30)
	li	VirtualReg_36, 4
	mul	VirtualReg_35, VirtualReg_29, VirtualReg_36
	add	VirtualReg_34, VirtualReg_0, VirtualReg_35
	li	VirtualReg_39, 4
	mul	VirtualReg_38, VirtualReg_22, VirtualReg_39
	add	VirtualReg_37, VirtualReg_0, VirtualReg_38
	lw	VirtualReg_40, 0(VirtualReg_37)
	sw	VirtualReg_40, 0(VirtualReg_34)
	li	VirtualReg_43, 4
	mul	VirtualReg_42, VirtualReg_22, VirtualReg_43
	add	VirtualReg_41, VirtualReg_0, VirtualReg_42
	sw	VirtualReg_33, 0(VirtualReg_41)
	mv	VirtualReg_44, VirtualReg_29
	j	.partition_ID25_if_out
.partition_ID25_if_out:
	j	.partition_ID16_for_incr
.partition_ID16_for_incr:
	addi	VirtualReg_45, VirtualReg_22, 1
	mv	VirtualReg_21, VirtualReg_44
	mv	VirtualReg_22, VirtualReg_45
	j	.partition_ID16_for_condition
.partition_ID16_for_out:
	addi	VirtualReg_46, VirtualReg_21, 1
	li	VirtualReg_49, 4
	mul	VirtualReg_48, VirtualReg_46, VirtualReg_49
	add	VirtualReg_47, VirtualReg_0, VirtualReg_48
	lw	VirtualReg_50, 0(VirtualReg_47)
	addi	VirtualReg_51, VirtualReg_21, 1
	li	VirtualReg_54, 4
	mul	VirtualReg_53, VirtualReg_51, VirtualReg_54
	add	VirtualReg_52, VirtualReg_0, VirtualReg_53
	li	VirtualReg_57, 4
	mul	VirtualReg_56, VirtualReg_2, VirtualReg_57
	add	VirtualReg_55, VirtualReg_0, VirtualReg_56
	lw	VirtualReg_58, 0(VirtualReg_55)
	sw	VirtualReg_58, 0(VirtualReg_52)
	li	VirtualReg_61, 4
	mul	VirtualReg_60, VirtualReg_2, VirtualReg_61
	add	VirtualReg_59, VirtualReg_0, VirtualReg_60
	sw	VirtualReg_50, 0(VirtualReg_59)
	addi	VirtualReg_62, VirtualReg_21, 1
	j	.partition_return
.partition_return:
	mv	a0, VirtualReg_62
	mv	s1, VirtualReg_4
	mv	s2, VirtualReg_5
	mv	s3, VirtualReg_6
	mv	s4, VirtualReg_7
	mv	s5, VirtualReg_8
	mv	s6, VirtualReg_9
	mv	s7, VirtualReg_10
	mv	s8, VirtualReg_11
	mv	s9, VirtualReg_12
	mv	s10, VirtualReg_13
	mv	s11, VirtualReg_14

	.globl	quick_sort
	.p2align	2
	.type	quick_sort,@function
quick_sort:
.quick_sort_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, s0
	mv	VirtualReg_4, s1
	mv	VirtualReg_5, s2
	mv	VirtualReg_6, s3
	mv	VirtualReg_7, s4
	mv	VirtualReg_8, s5
	mv	VirtualReg_9, s6
	mv	VirtualReg_10, s7
	mv	VirtualReg_11, s8
	mv	VirtualReg_12, s9
	mv	VirtualReg_13, s10
	mv	VirtualReg_14, s11
	j	.quick_sort_entry
.quick_sort_entry:
	slt	VirtualReg_15, VirtualReg_1, VirtualReg_2
	xori	VirtualReg_15, VirtualReg_15, 1
	bnez	VirtualReg_15, .quick_sort_return
	j	.quick_sort_ID9_if_out
.quick_sort_ID9_if_out:
	mv	VirtualReg_16, VirtualReg_0
	li	VirtualReg_19, 4
	mul	VirtualReg_18, VirtualReg_2, VirtualReg_19
	add	VirtualReg_17, VirtualReg_16, VirtualReg_18
	lw	VirtualReg_20, 0(VirtualReg_17)
	li	VirtualReg_22, 1
	sub	VirtualReg_21, VirtualReg_1, VirtualReg_22
	mv	VirtualReg_23, VirtualReg_21
	mv	VirtualReg_24, VirtualReg_1
	j	.quick_sort_call_partition_0_partition_ID16_for_condition
.quick_sort_call_partition_0_partition_ID16_for_condition:
	slt	VirtualReg_25, VirtualReg_24, VirtualReg_2
	bnez	VirtualReg_25, .quick_sort_call_partition_0_partition_ID16_for_suite
	j	.quick_sort_call_partition_0_partition_ID16_for_out
.quick_sort_call_partition_0_partition_ID16_for_suite:
	li	VirtualReg_28, 4
	mul	VirtualReg_27, VirtualReg_24, VirtualReg_28
	add	VirtualReg_26, VirtualReg_16, VirtualReg_27
	lw	VirtualReg_29, 0(VirtualReg_26)
	slt	VirtualReg_30, VirtualReg_20, VirtualReg_29
	xori	VirtualReg_30, VirtualReg_30, 1
	bnez	VirtualReg_30, .quick_sort_call_partition_0_partition_ID25_if_true
	j	.quick_sort_call_partition_0_partition_ID16_for_suite_mid
.quick_sort_call_partition_0_partition_ID16_for_suite_mid:
	mv	VirtualReg_46, VirtualReg_23
	j	.quick_sort_call_partition_0_partition_ID25_if_out
.quick_sort_call_partition_0_partition_ID25_if_true:
	addi	VirtualReg_31, VirtualReg_23, 1
	li	VirtualReg_34, 4
	mul	VirtualReg_33, VirtualReg_31, VirtualReg_34
	add	VirtualReg_32, VirtualReg_16, VirtualReg_33
	lw	VirtualReg_35, 0(VirtualReg_32)
	li	VirtualReg_38, 4
	mul	VirtualReg_37, VirtualReg_31, VirtualReg_38
	add	VirtualReg_36, VirtualReg_16, VirtualReg_37
	li	VirtualReg_41, 4
	mul	VirtualReg_40, VirtualReg_24, VirtualReg_41
	add	VirtualReg_39, VirtualReg_16, VirtualReg_40
	lw	VirtualReg_42, 0(VirtualReg_39)
	sw	VirtualReg_42, 0(VirtualReg_36)
	li	VirtualReg_45, 4
	mul	VirtualReg_44, VirtualReg_24, VirtualReg_45
	add	VirtualReg_43, VirtualReg_16, VirtualReg_44
	sw	VirtualReg_35, 0(VirtualReg_43)
	mv	VirtualReg_46, VirtualReg_31
	j	.quick_sort_call_partition_0_partition_ID25_if_out
.quick_sort_call_partition_0_partition_ID25_if_out:
	j	.quick_sort_call_partition_0_partition_ID16_for_incr
.quick_sort_call_partition_0_partition_ID16_for_incr:
	addi	VirtualReg_47, VirtualReg_24, 1
	mv	VirtualReg_23, VirtualReg_46
	mv	VirtualReg_24, VirtualReg_47
	j	.quick_sort_call_partition_0_partition_ID16_for_condition
.quick_sort_call_partition_0_partition_ID16_for_out:
	addi	VirtualReg_48, VirtualReg_23, 1
	li	VirtualReg_51, 4
	mul	VirtualReg_50, VirtualReg_48, VirtualReg_51
	add	VirtualReg_49, VirtualReg_16, VirtualReg_50
	lw	VirtualReg_52, 0(VirtualReg_49)
	addi	VirtualReg_53, VirtualReg_23, 1
	li	VirtualReg_56, 4
	mul	VirtualReg_55, VirtualReg_53, VirtualReg_56
	add	VirtualReg_54, VirtualReg_16, VirtualReg_55
	li	VirtualReg_59, 4
	mul	VirtualReg_58, VirtualReg_2, VirtualReg_59
	add	VirtualReg_57, VirtualReg_16, VirtualReg_58
	lw	VirtualReg_60, 0(VirtualReg_57)
	sw	VirtualReg_60, 0(VirtualReg_54)
	li	VirtualReg_63, 4
	mul	VirtualReg_62, VirtualReg_2, VirtualReg_63
	add	VirtualReg_61, VirtualReg_16, VirtualReg_62
	sw	VirtualReg_52, 0(VirtualReg_61)
	addi	VirtualReg_64, VirtualReg_23, 1
	mv	VirtualReg_65, VirtualReg_0
	li	VirtualReg_67, 1
	sub	VirtualReg_66, VirtualReg_64, VirtualReg_67
	mv	a0, VirtualReg_65
	mv	a1, VirtualReg_1
	mv	a2, VirtualReg_66
	call	quick_sort
	mv	VirtualReg_68, VirtualReg_0
	addi	VirtualReg_69, VirtualReg_64, 1
	mv	a0, VirtualReg_68
	mv	a1, VirtualReg_69
	mv	a2, VirtualReg_2
	call	quick_sort
	j	.quick_sort_return
.quick_sort_return:
	mv	s1, VirtualReg_4
	mv	s2, VirtualReg_5
	mv	s3, VirtualReg_6
	mv	s4, VirtualReg_7
	mv	s5, VirtualReg_8
	mv	s6, VirtualReg_9
	mv	s7, VirtualReg_10
	mv	s8, VirtualReg_11
	mv	s9, VirtualReg_12
	mv	s10, VirtualReg_13
	mv	s11, VirtualReg_14

	.globl	quick_sort_inf
	.p2align	2
	.type	quick_sort_inf,@function
quick_sort_inf:
.quick_sort_inf_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, s0
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
	j	.quick_sort_inf_entry
.quick_sort_inf_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_0
	li	VirtualReg_17, -1
	li	VirtualReg_18, 4
	mul	VirtualReg_16, VirtualReg_17, VirtualReg_18
	add	VirtualReg_15, VirtualReg_14, VirtualReg_16
	lw	VirtualReg_19, 0(VirtualReg_15)
	li	VirtualReg_21, 1
	sub	VirtualReg_20, VirtualReg_19, VirtualReg_21
	j	.quick_sort_inf_call_quick_sort_1
.quick_sort_inf_call_quick_sort_1_out:
	j	.quick_sort_inf_return
.quick_sort_inf_call_quick_sort_1_quick_sort_entry:
	li	VirtualReg_23, 0
	slt	VirtualReg_22, VirtualReg_23, VirtualReg_20
	xori	VirtualReg_22, VirtualReg_22, 1
	bnez	VirtualReg_22, .quick_sort_inf_call_quick_sort_1_quick_sort_return
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_ID9_if_out
.quick_sort_inf_call_quick_sort_1_quick_sort_ID9_if_out:
	mv	VirtualReg_24, VirtualReg_13
	li	VirtualReg_27, 4
	mul	VirtualReg_26, VirtualReg_20, VirtualReg_27
	add	VirtualReg_25, VirtualReg_24, VirtualReg_26
	lw	VirtualReg_28, 0(VirtualReg_25)
	li	VirtualReg_30, 0
	li	VirtualReg_31, 1
	sub	VirtualReg_29, VirtualReg_30, VirtualReg_31
	mv	VirtualReg_32, VirtualReg_29
	li	VirtualReg_80, 0
	mv	VirtualReg_33, VirtualReg_80
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_condition
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_condition:
	slt	VirtualReg_34, VirtualReg_33, VirtualReg_20
	bnez	VirtualReg_34, .quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_out
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite:
	li	VirtualReg_37, 4
	mul	VirtualReg_36, VirtualReg_33, VirtualReg_37
	add	VirtualReg_35, VirtualReg_24, VirtualReg_36
	lw	VirtualReg_38, 0(VirtualReg_35)
	slt	VirtualReg_39, VirtualReg_28, VirtualReg_38
	xori	VirtualReg_39, VirtualReg_39, 1
	bnez	VirtualReg_39, .quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_true
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite_mid
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite_mid:
	mv	VirtualReg_55, VirtualReg_32
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_out
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_true:
	addi	VirtualReg_40, VirtualReg_32, 1
	li	VirtualReg_43, 4
	mul	VirtualReg_42, VirtualReg_40, VirtualReg_43
	add	VirtualReg_41, VirtualReg_24, VirtualReg_42
	lw	VirtualReg_44, 0(VirtualReg_41)
	li	VirtualReg_47, 4
	mul	VirtualReg_46, VirtualReg_40, VirtualReg_47
	add	VirtualReg_45, VirtualReg_24, VirtualReg_46
	li	VirtualReg_50, 4
	mul	VirtualReg_49, VirtualReg_33, VirtualReg_50
	add	VirtualReg_48, VirtualReg_24, VirtualReg_49
	lw	VirtualReg_51, 0(VirtualReg_48)
	sw	VirtualReg_51, 0(VirtualReg_45)
	li	VirtualReg_54, 4
	mul	VirtualReg_53, VirtualReg_33, VirtualReg_54
	add	VirtualReg_52, VirtualReg_24, VirtualReg_53
	sw	VirtualReg_44, 0(VirtualReg_52)
	mv	VirtualReg_55, VirtualReg_40
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_out
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_out:
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_incr
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_incr:
	addi	VirtualReg_56, VirtualReg_33, 1
	mv	VirtualReg_32, VirtualReg_55
	mv	VirtualReg_33, VirtualReg_56
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_condition
.quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_out:
	addi	VirtualReg_57, VirtualReg_32, 1
	li	VirtualReg_60, 4
	mul	VirtualReg_59, VirtualReg_57, VirtualReg_60
	add	VirtualReg_58, VirtualReg_24, VirtualReg_59
	lw	VirtualReg_61, 0(VirtualReg_58)
	addi	VirtualReg_62, VirtualReg_32, 1
	li	VirtualReg_65, 4
	mul	VirtualReg_64, VirtualReg_62, VirtualReg_65
	add	VirtualReg_63, VirtualReg_24, VirtualReg_64
	li	VirtualReg_68, 4
	mul	VirtualReg_67, VirtualReg_20, VirtualReg_68
	add	VirtualReg_66, VirtualReg_24, VirtualReg_67
	lw	VirtualReg_69, 0(VirtualReg_66)
	sw	VirtualReg_69, 0(VirtualReg_63)
	li	VirtualReg_72, 4
	mul	VirtualReg_71, VirtualReg_20, VirtualReg_72
	add	VirtualReg_70, VirtualReg_24, VirtualReg_71
	sw	VirtualReg_61, 0(VirtualReg_70)
	addi	VirtualReg_73, VirtualReg_32, 1
	mv	VirtualReg_74, VirtualReg_13
	li	VirtualReg_76, 1
	sub	VirtualReg_75, VirtualReg_73, VirtualReg_76
	mv	a0, VirtualReg_74
	li	VirtualReg_77, 0
	mv	a1, VirtualReg_77
	mv	a2, VirtualReg_75
	call	quick_sort
	mv	VirtualReg_78, VirtualReg_13
	addi	VirtualReg_79, VirtualReg_73, 1
	mv	a0, VirtualReg_78
	mv	a1, VirtualReg_79
	mv	a2, VirtualReg_20
	call	quick_sort
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_return
.quick_sort_inf_call_quick_sort_1_quick_sort_return:
	j	.quick_sort_inf_call_quick_sort_1_out
.quick_sort_inf_call_quick_sort_1:
	j	.quick_sort_inf_call_quick_sort_1_quick_sort_entry
.quick_sort_inf_return:
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
	mv	VirtualReg_0, s0
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
	j	.main_entry
.main_entry:
	j	.main_call___init_2
.main_ID13_for_condition:
	slt	VirtualReg_13, VirtualReg_12, VirtualReg_14
	bnez	VirtualReg_13, .main_ID13_for_suite
	j	.main_ID13_for_out
.main_ID13_for_suite:
	li	VirtualReg_18, 4
	mul	VirtualReg_17, VirtualReg_12, VirtualReg_18
	add	VirtualReg_16, VirtualReg_15, VirtualReg_17
	call	getInt
	mv	VirtualReg_19, a0
	sw	VirtualReg_19, 0(VirtualReg_16)
	addi	VirtualReg_20, VirtualReg_12, 1
	mv	VirtualReg_12, VirtualReg_20
	j	.main_ID13_for_condition
.main_ID13_for_out:
	mv	VirtualReg_21, VirtualReg_15
	mv	VirtualReg_22, VirtualReg_21
	mv	VirtualReg_23, VirtualReg_21
	li	VirtualReg_26, -1
	li	VirtualReg_27, 4
	mul	VirtualReg_25, VirtualReg_26, VirtualReg_27
	add	VirtualReg_24, VirtualReg_23, VirtualReg_25
	lw	VirtualReg_28, 0(VirtualReg_24)
	li	VirtualReg_30, 1
	sub	VirtualReg_29, VirtualReg_28, VirtualReg_30
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_entry
.main_ID25_for_condition:
	slt	VirtualReg_32, VirtualReg_31, VirtualReg_14
	bnez	VirtualReg_32, .main_ID25_for_suite
	j	.main_ID25_for_out
.main_ID25_for_suite:
	li	VirtualReg_35, 4
	mul	VirtualReg_34, VirtualReg_31, VirtualReg_35
	add	VirtualReg_33, VirtualReg_15, VirtualReg_34
	lw	VirtualReg_36, 0(VirtualReg_33)
	mv	a0, VirtualReg_36
	call	toString
	mv	VirtualReg_37, a0
	mv	VirtualReg_38, VirtualReg_37
	la	VirtualReg_39, v_.str.0
	mv	VirtualReg_40, VirtualReg_39
	mv	a0, VirtualReg_38
	mv	a1, VirtualReg_40
	call	string_add
	mv	VirtualReg_41, a0
	mv	VirtualReg_42, VirtualReg_41
	mv	a0, VirtualReg_42
	call	print
	addi	VirtualReg_43, VirtualReg_31, 1
	mv	VirtualReg_31, VirtualReg_43
	j	.main_ID25_for_condition
.main_ID25_for_out:
	la	VirtualReg_44, v_.str.1
	mv	VirtualReg_45, VirtualReg_44
	mv	a0, VirtualReg_45
	call	println
	j	.main_return
.main_call___init_2:
	call	getInt
	mv	VirtualReg_14, a0
	mv	VirtualReg_46, VirtualReg_14
	li	VirtualReg_48, 4
	mul	VirtualReg_47, VirtualReg_46, VirtualReg_48
	addi	VirtualReg_49, VirtualReg_47, 4
	mv	a0, VirtualReg_49
	call	malloc
	mv	VirtualReg_50, a0
	mv	VirtualReg_51, VirtualReg_50
	sw	VirtualReg_14, 0(VirtualReg_51)
	li	VirtualReg_54, 1
	li	VirtualReg_55, 4
	mul	VirtualReg_53, VirtualReg_54, VirtualReg_55
	add	VirtualReg_52, VirtualReg_51, VirtualReg_53
	mv	VirtualReg_56, VirtualReg_52
	mv	VirtualReg_15, VirtualReg_56
	li	VirtualReg_116, 0
	mv	VirtualReg_12, VirtualReg_116
	j	.main_ID13_for_condition
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_out:
	li	VirtualReg_117, 0
	mv	VirtualReg_31, VirtualReg_117
	j	.main_ID25_for_condition
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_entry:
	li	VirtualReg_58, 0
	slt	VirtualReg_57, VirtualReg_58, VirtualReg_29
	xori	VirtualReg_57, VirtualReg_57, 1
	bnez	VirtualReg_57, .main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_return
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_ID9_if_out
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_ID9_if_out:
	mv	VirtualReg_59, VirtualReg_22
	li	VirtualReg_62, 4
	mul	VirtualReg_61, VirtualReg_29, VirtualReg_62
	add	VirtualReg_60, VirtualReg_59, VirtualReg_61
	lw	VirtualReg_63, 0(VirtualReg_60)
	li	VirtualReg_65, 0
	li	VirtualReg_66, 1
	sub	VirtualReg_64, VirtualReg_65, VirtualReg_66
	mv	VirtualReg_67, VirtualReg_64
	li	VirtualReg_118, 0
	mv	VirtualReg_68, VirtualReg_118
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_condition
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_condition:
	slt	VirtualReg_69, VirtualReg_68, VirtualReg_29
	bnez	VirtualReg_69, .main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_out
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite:
	li	VirtualReg_72, 4
	mul	VirtualReg_71, VirtualReg_68, VirtualReg_72
	add	VirtualReg_70, VirtualReg_59, VirtualReg_71
	lw	VirtualReg_73, 0(VirtualReg_70)
	slt	VirtualReg_74, VirtualReg_63, VirtualReg_73
	xori	VirtualReg_74, VirtualReg_74, 1
	bnez	VirtualReg_74, .main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_true
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite_mid
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_suite_mid:
	mv	VirtualReg_90, VirtualReg_67
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_out
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_true:
	addi	VirtualReg_75, VirtualReg_67, 1
	li	VirtualReg_78, 4
	mul	VirtualReg_77, VirtualReg_75, VirtualReg_78
	add	VirtualReg_76, VirtualReg_59, VirtualReg_77
	lw	VirtualReg_79, 0(VirtualReg_76)
	li	VirtualReg_82, 4
	mul	VirtualReg_81, VirtualReg_75, VirtualReg_82
	add	VirtualReg_80, VirtualReg_59, VirtualReg_81
	li	VirtualReg_85, 4
	mul	VirtualReg_84, VirtualReg_68, VirtualReg_85
	add	VirtualReg_83, VirtualReg_59, VirtualReg_84
	lw	VirtualReg_86, 0(VirtualReg_83)
	sw	VirtualReg_86, 0(VirtualReg_80)
	li	VirtualReg_89, 4
	mul	VirtualReg_88, VirtualReg_68, VirtualReg_89
	add	VirtualReg_87, VirtualReg_59, VirtualReg_88
	sw	VirtualReg_79, 0(VirtualReg_87)
	mv	VirtualReg_90, VirtualReg_75
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_out
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID25_if_out:
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_incr
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_incr:
	addi	VirtualReg_91, VirtualReg_68, 1
	mv	VirtualReg_67, VirtualReg_90
	mv	VirtualReg_68, VirtualReg_91
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_condition
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_call_partition_0_partition_ID16_for_out:
	addi	VirtualReg_92, VirtualReg_67, 1
	li	VirtualReg_95, 4
	mul	VirtualReg_94, VirtualReg_92, VirtualReg_95
	add	VirtualReg_93, VirtualReg_59, VirtualReg_94
	lw	VirtualReg_96, 0(VirtualReg_93)
	addi	VirtualReg_97, VirtualReg_67, 1
	li	VirtualReg_100, 4
	mul	VirtualReg_99, VirtualReg_97, VirtualReg_100
	add	VirtualReg_98, VirtualReg_59, VirtualReg_99
	li	VirtualReg_103, 4
	mul	VirtualReg_102, VirtualReg_29, VirtualReg_103
	add	VirtualReg_101, VirtualReg_59, VirtualReg_102
	lw	VirtualReg_104, 0(VirtualReg_101)
	sw	VirtualReg_104, 0(VirtualReg_98)
	li	VirtualReg_107, 4
	mul	VirtualReg_106, VirtualReg_29, VirtualReg_107
	add	VirtualReg_105, VirtualReg_59, VirtualReg_106
	sw	VirtualReg_96, 0(VirtualReg_105)
	addi	VirtualReg_108, VirtualReg_67, 1
	mv	VirtualReg_109, VirtualReg_22
	li	VirtualReg_111, 1
	sub	VirtualReg_110, VirtualReg_108, VirtualReg_111
	mv	a0, VirtualReg_109
	li	VirtualReg_112, 0
	mv	a1, VirtualReg_112
	mv	a2, VirtualReg_110
	call	quick_sort
	mv	VirtualReg_113, VirtualReg_22
	addi	VirtualReg_114, VirtualReg_108, 1
	mv	a0, VirtualReg_113
	mv	a1, VirtualReg_114
	mv	a2, VirtualReg_29
	call	quick_sort
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_return
.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_quick_sort_return:
	j	.main_call_quick_sort_inf_3_quick_sort_inf_call_quick_sort_1_out
.main_return:
	li	VirtualReg_115, 0
	mv	a0, VirtualReg_115
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

	.section	.rodata
	.type	v_.str.0,@object
v_.str.0:
	.asciz	"  "
	.size	v_.str.0, 2

	.section	.rodata
	.type	v_.str.1,@object
v_.str.1:
	.asciz	" "
	.size	v_.str.1, 1

