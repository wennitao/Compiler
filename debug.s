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
	li	VirtualReg_11, 1001
	li	VirtualReg_12, 4
	mul	fuckLLVM_0, VirtualReg_11, VirtualReg_12
	li	VirtualReg_13, 4
	add	fuckLLVM_1, fuckLLVM_0, VirtualReg_13
	mv	a0, fuckLLVM_1
	call	malloc
	mv	VirtualReg_14, a0
	li	VirtualReg_15, 1001
	sw	VirtualReg_15, 0(VirtualReg_14)
	li	VirtualReg_18, 1
	li	VirtualReg_19, 4
	mul	VirtualReg_17, VirtualReg_18, VirtualReg_19
	add	VirtualReg_16, VirtualReg_14, VirtualReg_17
	li	VirtualReg_20, 0
	sw	VirtualReg_16, fuckLLVM_b, VirtualReg_20
	li	VirtualReg_21, 170
	li	VirtualReg_22, 4
	mul	fuckLLVM_7, VirtualReg_21, VirtualReg_22
	li	VirtualReg_23, 4
	add	fuckLLVM_8, fuckLLVM_7, VirtualReg_23
	mv	a0, fuckLLVM_8
	call	malloc
	mv	VirtualReg_24, a0
	li	VirtualReg_25, 170
	sw	VirtualReg_25, 0(VirtualReg_24)
	li	VirtualReg_28, 1
	li	VirtualReg_29, 4
	mul	VirtualReg_27, VirtualReg_28, VirtualReg_29
	add	VirtualReg_26, VirtualReg_24, VirtualReg_27
	li	VirtualReg_30, 0
	sw	VirtualReg_26, fuckLLVM_prime, VirtualReg_30
	li	VirtualReg_31, 1001
	li	VirtualReg_32, 4
	mul	fuckLLVM_14, VirtualReg_31, VirtualReg_32
	li	VirtualReg_33, 4
	add	fuckLLVM_15, fuckLLVM_14, VirtualReg_33
	mv	a0, fuckLLVM_15
	call	malloc
	mv	VirtualReg_34, a0
	li	VirtualReg_35, 1001
	sw	VirtualReg_35, 0(VirtualReg_34)
	li	VirtualReg_38, 1
	li	VirtualReg_39, 4
	mul	VirtualReg_37, VirtualReg_38, VirtualReg_39
	add	VirtualReg_36, VirtualReg_34, VirtualReg_37
	li	VirtualReg_40, 0
	sw	VirtualReg_36, fuckLLVM_gps, VirtualReg_40
	li	VirtualReg_41, 1
	li	VirtualReg_42, 4
	mul	fuckLLVM_21, VirtualReg_41, VirtualReg_42
	li	VirtualReg_43, 4
	add	fuckLLVM_22, fuckLLVM_21, VirtualReg_43
	mv	a0, fuckLLVM_22
	call	malloc
	mv	VirtualReg_44, a0
	li	VirtualReg_45, 1
	sw	VirtualReg_45, 0(VirtualReg_44)
	li	VirtualReg_48, 1
	li	VirtualReg_49, 4
	mul	VirtualReg_47, VirtualReg_48, VirtualReg_49
	add	VirtualReg_46, VirtualReg_44, VirtualReg_47
	li	VirtualReg_50, 0
	sw	VirtualReg_46, fuckLLVM_tmp, VirtualReg_50
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

	.globl	origin
	.p2align	2
	.type	origin,@function
origin:
.origin_assemblyInit:
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
	j	.origin_entry
.origin_entry:
	li	VirtualReg_13, -12
	add	VirtualReg_13, s0, VirtualReg_13
	sw	VirtualReg_0, 0(VirtualReg_13)
	li	VirtualReg_15, -12
	add	VirtualReg_15, s0, VirtualReg_15
	lw	VirtualReg_14, 0(VirtualReg_15)
	li	VirtualReg_16, 8
	mul	fuckLLVM_5, VirtualReg_14, VirtualReg_16
	li	VirtualReg_17, 4
	add	fuckLLVM_6, fuckLLVM_5, VirtualReg_17
	mv	a0, fuckLLVM_6
	call	malloc
	mv	VirtualReg_18, a0
	sw	VirtualReg_14, 0(VirtualReg_18)
	li	VirtualReg_21, 1
	li	VirtualReg_22, 4
	mul	VirtualReg_20, VirtualReg_21, VirtualReg_22
	add	VirtualReg_19, VirtualReg_18, VirtualReg_20
	li	VirtualReg_23, 0
	sw	VirtualReg_19, fuckLLVM_result, VirtualReg_23
	li	VirtualReg_24, 0
	li	VirtualReg_25, 0
	sw	VirtualReg_24, fuckLLVM_i, VirtualReg_25
	j	.origin_ID11_for_condition
.origin_ID11_for_condition:
	lw	VirtualReg_26, fuckLLVM_i
	li	VirtualReg_28, -12
	add	VirtualReg_28, s0, VirtualReg_28
	lw	VirtualReg_27, 0(VirtualReg_28)
	slt	fuckLLVM_14, VirtualReg_26, VirtualReg_27
	bnez	fuckLLVM_14, .origin_ID11_for_suite
	j	.origin_ID11_for_out
.origin_ID11_for_suite:
	lw	VirtualReg_29, fuckLLVM_result
	lw	VirtualReg_30, fuckLLVM_i
	li	VirtualReg_33, 8
	mul	VirtualReg_32, VirtualReg_30, VirtualReg_33
	add	VirtualReg_31, VirtualReg_29, VirtualReg_32
	li	VirtualReg_35, -12
	add	VirtualReg_35, s0, VirtualReg_35
	lw	VirtualReg_34, 0(VirtualReg_35)
	li	VirtualReg_36, 4
	mul	fuckLLVM_20, VirtualReg_34, VirtualReg_36
	li	VirtualReg_37, 4
	add	fuckLLVM_21, fuckLLVM_20, VirtualReg_37
	mv	a0, fuckLLVM_21
	call	malloc
	mv	VirtualReg_38, a0
	sw	VirtualReg_34, 0(VirtualReg_38)
	li	VirtualReg_41, 1
	li	VirtualReg_42, 4
	mul	VirtualReg_40, VirtualReg_41, VirtualReg_42
	add	VirtualReg_39, VirtualReg_38, VirtualReg_40
	sw	VirtualReg_39, 0(VirtualReg_31)
	li	VirtualReg_43, 0
	li	VirtualReg_44, 0
	sw	VirtualReg_43, fuckLLVM_j, VirtualReg_44
	j	.origin_ID26_for_condition
.origin_ID26_for_condition:
	lw	VirtualReg_45, fuckLLVM_j
	li	VirtualReg_47, -12
	add	VirtualReg_47, s0, VirtualReg_47
	lw	VirtualReg_46, 0(VirtualReg_47)
	slt	fuckLLVM_29, VirtualReg_45, VirtualReg_46
	bnez	fuckLLVM_29, .origin_ID26_for_suite
	j	.origin_ID26_for_out
.origin_ID26_for_suite:
	lw	VirtualReg_48, fuckLLVM_result
	lw	VirtualReg_49, fuckLLVM_i
	li	VirtualReg_52, 8
	mul	VirtualReg_51, VirtualReg_49, VirtualReg_52
	add	VirtualReg_50, VirtualReg_48, VirtualReg_51
	lw	VirtualReg_53, 0(VirtualReg_50)
	lw	VirtualReg_54, fuckLLVM_j
	li	VirtualReg_57, 4
	mul	VirtualReg_56, VirtualReg_54, VirtualReg_57
	add	VirtualReg_55, VirtualReg_53, VirtualReg_56
	li	VirtualReg_58, 0
	sw	VirtualReg_58, 0(VirtualReg_55)
	j	.origin_ID26_for_incr
.origin_ID26_for_incr:
	lw	VirtualReg_59, fuckLLVM_j
	li	VirtualReg_60, 1
	add	fuckLLVM_37, VirtualReg_59, VirtualReg_60
	li	VirtualReg_61, 0
	sw	fuckLLVM_37, fuckLLVM_j, VirtualReg_61
	j	.origin_ID26_for_condition
.origin_ID26_for_out:
	j	.origin_ID11_for_incr
.origin_ID11_for_incr:
	lw	VirtualReg_62, fuckLLVM_i
	li	VirtualReg_63, 1
	add	fuckLLVM_39, VirtualReg_62, VirtualReg_63
	li	VirtualReg_64, 0
	sw	fuckLLVM_39, fuckLLVM_i, VirtualReg_64
	j	.origin_ID11_for_condition
.origin_ID11_for_out:
	j	.origin_return
.origin_return:
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

	.globl	getPrime
	.p2align	2
	.type	getPrime,@function
getPrime:
.getPrime_assemblyInit:
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
	j	.getPrime_entry
.getPrime_entry:
	li	VirtualReg_13, -12
	add	VirtualReg_13, s0, VirtualReg_13
	sw	VirtualReg_0, 0(VirtualReg_13)
	li	VirtualReg_16, 2
	li	VirtualReg_17, -16
	add	VirtualReg_17, s0, VirtualReg_17
	sw	VirtualReg_16, 0(VirtualReg_17)
	li	VirtualReg_18, 2
	li	VirtualReg_19, -20
	add	VirtualReg_19, s0, VirtualReg_19
	sw	VirtualReg_18, 0(VirtualReg_19)
	j	.getPrime_ID4_for_condition
.getPrime_ID4_for_condition:
	li	VirtualReg_21, -20
	add	VirtualReg_21, s0, VirtualReg_21
	lw	VirtualReg_20, 0(VirtualReg_21)
	li	VirtualReg_23, -12
	add	VirtualReg_23, s0, VirtualReg_23
	lw	VirtualReg_22, 0(VirtualReg_23)
	slt	fuckLLVM_7, VirtualReg_22, VirtualReg_20
	xori	fuckLLVM_7, fuckLLVM_7, 1
	bnez	fuckLLVM_7, .getPrime_ID4_for_suite
	j	.getPrime_ID4_for_out
.getPrime_ID4_for_suite:
	lw	VirtualReg_24, fuckLLVM_b
	li	VirtualReg_26, -20
	add	VirtualReg_26, s0, VirtualReg_26
	lw	VirtualReg_25, 0(VirtualReg_26)
	li	VirtualReg_29, 4
	mul	VirtualReg_28, VirtualReg_25, VirtualReg_29
	add	VirtualReg_27, VirtualReg_24, VirtualReg_28
	lw	VirtualReg_30, 0(VirtualReg_27)
	li	VirtualReg_31, 1
	xor	fuckLLVM_12, VirtualReg_30, VirtualReg_31
	sltiu	fuckLLVM_12, fuckLLVM_12, 1
	bnez	fuckLLVM_12, .getPrime_ID12_if_true
	j	.getPrime_ID12_if_out
.getPrime_ID12_if_true:
	lw	VirtualReg_32, fuckLLVM_tmp
	li	VirtualReg_35, 0
	li	VirtualReg_36, 4
	mul	VirtualReg_34, VirtualReg_35, VirtualReg_36
	add	VirtualReg_33, VirtualReg_32, VirtualReg_34
	lw	VirtualReg_37, fuckLLVM_tmp
	li	VirtualReg_40, 0
	li	VirtualReg_41, 4
	mul	VirtualReg_39, VirtualReg_40, VirtualReg_41
	add	VirtualReg_38, VirtualReg_37, VirtualReg_39
	lw	VirtualReg_42, 0(VirtualReg_38)
	li	VirtualReg_43, 1
	add	fuckLLVM_18, VirtualReg_42, VirtualReg_43
	sw	fuckLLVM_18, 0(VirtualReg_33)
	lw	VirtualReg_44, fuckLLVM_prime
	lw	VirtualReg_45, fuckLLVM_tmp
	li	VirtualReg_48, 0
	li	VirtualReg_49, 4
	mul	VirtualReg_47, VirtualReg_48, VirtualReg_49
	add	VirtualReg_46, VirtualReg_45, VirtualReg_47
	lw	VirtualReg_50, 0(VirtualReg_46)
	li	VirtualReg_53, 4
	mul	VirtualReg_52, VirtualReg_50, VirtualReg_53
	add	VirtualReg_51, VirtualReg_44, VirtualReg_52
	li	VirtualReg_55, -20
	add	VirtualReg_55, s0, VirtualReg_55
	lw	VirtualReg_54, 0(VirtualReg_55)
	sw	VirtualReg_54, 0(VirtualReg_51)
	lw	VirtualReg_56, fuckLLVM_gps
	li	VirtualReg_58, -20
	add	VirtualReg_58, s0, VirtualReg_58
	lw	VirtualReg_57, 0(VirtualReg_58)
	li	VirtualReg_61, 4
	mul	VirtualReg_60, VirtualReg_57, VirtualReg_61
	add	VirtualReg_59, VirtualReg_56, VirtualReg_60
	lw	VirtualReg_62, fuckLLVM_tmp
	li	VirtualReg_65, 0
	li	VirtualReg_66, 4
	mul	VirtualReg_64, VirtualReg_65, VirtualReg_66
	add	VirtualReg_63, VirtualReg_62, VirtualReg_64
	lw	VirtualReg_67, 0(VirtualReg_63)
	sw	VirtualReg_67, 0(VirtualReg_59)
	j	.getPrime_ID12_if_out
.getPrime_ID12_if_out:
	j	.getPrime_ID31_while_condition
.getPrime_ID31_while_condition:
	li	VirtualReg_69, -20
	add	VirtualReg_69, s0, VirtualReg_69
	lw	VirtualReg_68, 0(VirtualReg_69)
	li	VirtualReg_71, -16
	add	VirtualReg_71, s0, VirtualReg_71
	lw	VirtualReg_70, 0(VirtualReg_71)
	mul	fuckLLVM_33, VirtualReg_68, VirtualReg_70
	li	VirtualReg_73, -12
	add	VirtualReg_73, s0, VirtualReg_73
	lw	VirtualReg_72, 0(VirtualReg_73)
	slt	fuckLLVM_35, VirtualReg_72, fuckLLVM_33
	xori	fuckLLVM_35, fuckLLVM_35, 1
	bnez	fuckLLVM_35, .getPrime_ID36_while_suite
	j	.getPrime_ID36_while_out
.getPrime_ID36_while_suite:
	lw	VirtualReg_74, fuckLLVM_b
	li	VirtualReg_76, -20
	add	VirtualReg_76, s0, VirtualReg_76
	lw	VirtualReg_75, 0(VirtualReg_76)
	li	VirtualReg_78, -16
	add	VirtualReg_78, s0, VirtualReg_78
	lw	VirtualReg_77, 0(VirtualReg_78)
	mul	fuckLLVM_39, VirtualReg_75, VirtualReg_77
	li	VirtualReg_81, 4
	mul	VirtualReg_80, fuckLLVM_39, VirtualReg_81
	add	VirtualReg_79, VirtualReg_74, VirtualReg_80
	li	VirtualReg_82, 0
	sw	VirtualReg_82, 0(VirtualReg_79)
	li	VirtualReg_84, -16
	add	VirtualReg_84, s0, VirtualReg_84
	lw	VirtualReg_83, 0(VirtualReg_84)
	li	VirtualReg_85, 1
	add	fuckLLVM_42, VirtualReg_83, VirtualReg_85
	li	VirtualReg_86, -16
	add	VirtualReg_86, s0, VirtualReg_86
	sw	fuckLLVM_42, 0(VirtualReg_86)
	j	.getPrime_ID31_while_condition
.getPrime_ID36_while_out:
	li	VirtualReg_87, 2
	li	VirtualReg_88, -16
	add	VirtualReg_88, s0, VirtualReg_88
	sw	VirtualReg_87, 0(VirtualReg_88)
	j	.getPrime_ID4_for_incr
.getPrime_ID4_for_incr:
	li	VirtualReg_90, -20
	add	VirtualReg_90, s0, VirtualReg_90
	lw	VirtualReg_89, 0(VirtualReg_90)
	li	VirtualReg_91, 1
	add	fuckLLVM_44, VirtualReg_89, VirtualReg_91
	li	VirtualReg_92, -20
	add	VirtualReg_92, s0, VirtualReg_92
	sw	fuckLLVM_44, 0(VirtualReg_92)
	j	.getPrime_ID4_for_condition
.getPrime_ID4_for_out:
	j	.getPrime_return
.getPrime_return:
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

	.globl	getResult
	.p2align	2
	.type	getResult,@function
getResult:
.getResult_assemblyInit:
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
	j	.getResult_entry
.getResult_entry:
	li	VirtualReg_15, -12
	add	VirtualReg_15, s0, VirtualReg_15
	sw	VirtualReg_0, 0(VirtualReg_15)
	li	VirtualReg_17, -16
	add	VirtualReg_17, s0, VirtualReg_17
	sw	VirtualReg_1, 0(VirtualReg_17)
	li	VirtualReg_19, -20
	add	VirtualReg_19, s0, VirtualReg_19
	sw	VirtualReg_2, 0(VirtualReg_19)
	lw	VirtualReg_21, fuckLLVM_result
	li	VirtualReg_23, -16
	add	VirtualReg_23, s0, VirtualReg_23
	lw	VirtualReg_22, 0(VirtualReg_23)
	li	VirtualReg_26, 8
	mul	VirtualReg_25, VirtualReg_22, VirtualReg_26
	add	VirtualReg_24, VirtualReg_21, VirtualReg_25
	lw	VirtualReg_27, 0(VirtualReg_24)
	li	VirtualReg_29, -20
	add	VirtualReg_29, s0, VirtualReg_29
	lw	VirtualReg_28, 0(VirtualReg_29)
	li	VirtualReg_32, 4
	mul	VirtualReg_31, VirtualReg_28, VirtualReg_32
	add	VirtualReg_30, VirtualReg_27, VirtualReg_31
	lw	VirtualReg_33, 0(VirtualReg_30)
	li	VirtualReg_34, 0
	li	VirtualReg_35, 1
	sub	fuckLLVM_14, VirtualReg_34, VirtualReg_35
	xor	fuckLLVM_15, VirtualReg_33, fuckLLVM_14
	sltiu	fuckLLVM_15, fuckLLVM_15, 1
	bnez	fuckLLVM_15, .getResult_ID15_if_true
	j	.getResult_ID15_if_out
.getResult_ID41_if_true:
	lw	VirtualReg_36, fuckLLVM_result
	li	VirtualReg_38, -16
	add	VirtualReg_38, s0, VirtualReg_38
	lw	VirtualReg_37, 0(VirtualReg_38)
	li	VirtualReg_41, 8
	mul	VirtualReg_40, VirtualReg_37, VirtualReg_41
	add	VirtualReg_39, VirtualReg_36, VirtualReg_40
	lw	VirtualReg_42, 0(VirtualReg_39)
	li	VirtualReg_44, -20
	add	VirtualReg_44, s0, VirtualReg_44
	lw	VirtualReg_43, 0(VirtualReg_44)
	li	VirtualReg_47, 4
	mul	VirtualReg_46, VirtualReg_43, VirtualReg_47
	add	VirtualReg_45, VirtualReg_42, VirtualReg_46
	li	VirtualReg_49, -12
	add	VirtualReg_49, s0, VirtualReg_49
	lw	VirtualReg_48, 0(VirtualReg_49)
	li	VirtualReg_51, -20
	add	VirtualReg_51, s0, VirtualReg_51
	lw	VirtualReg_50, 0(VirtualReg_51)
	lw	VirtualReg_52, fuckLLVM_gps
	lw	VirtualReg_53, fuckLLVM_prime
	li	VirtualReg_55, -20
	add	VirtualReg_55, s0, VirtualReg_55
	lw	VirtualReg_54, 0(VirtualReg_55)
	li	VirtualReg_58, 4
	mul	VirtualReg_57, VirtualReg_54, VirtualReg_58
	add	VirtualReg_56, VirtualReg_53, VirtualReg_57
	lw	VirtualReg_59, 0(VirtualReg_56)
	li	VirtualReg_60, 2
	mul	fuckLLVM_55, VirtualReg_59, VirtualReg_60
	lw	VirtualReg_61, fuckLLVM_prime
	li	VirtualReg_63, -16
	add	VirtualReg_63, s0, VirtualReg_63
	lw	VirtualReg_62, 0(VirtualReg_63)
	li	VirtualReg_66, 4
	mul	VirtualReg_65, VirtualReg_62, VirtualReg_66
	add	VirtualReg_64, VirtualReg_61, VirtualReg_65
	lw	VirtualReg_67, 0(VirtualReg_64)
	sub	fuckLLVM_60, fuckLLVM_55, VirtualReg_67
	li	VirtualReg_70, 4
	mul	VirtualReg_69, fuckLLVM_60, VirtualReg_70
	add	VirtualReg_68, VirtualReg_52, VirtualReg_69
	lw	VirtualReg_71, 0(VirtualReg_68)
	mv	a0, VirtualReg_48
	mv	a1, VirtualReg_50
	mv	a2, VirtualReg_71
	call	getResult
	mv	VirtualReg_72, a0
	li	VirtualReg_73, 1
	add	fuckLLVM_64, VirtualReg_72, VirtualReg_73
	sw	fuckLLVM_64, 0(VirtualReg_45)
	j	.getResult_ID41_if_out
.getResult_ID41_if_out:
	j	.getResult_ID27_if_out
.getResult_ID27_if_true:
	lw	VirtualReg_74, fuckLLVM_b
	lw	VirtualReg_75, fuckLLVM_prime
	li	VirtualReg_77, -20
	add	VirtualReg_77, s0, VirtualReg_77
	lw	VirtualReg_76, 0(VirtualReg_77)
	li	VirtualReg_80, 4
	mul	VirtualReg_79, VirtualReg_76, VirtualReg_80
	add	VirtualReg_78, VirtualReg_75, VirtualReg_79
	lw	VirtualReg_81, 0(VirtualReg_78)
	li	VirtualReg_82, 2
	mul	fuckLLVM_33, VirtualReg_81, VirtualReg_82
	lw	VirtualReg_83, fuckLLVM_prime
	li	VirtualReg_85, -16
	add	VirtualReg_85, s0, VirtualReg_85
	lw	VirtualReg_84, 0(VirtualReg_85)
	li	VirtualReg_88, 4
	mul	VirtualReg_87, VirtualReg_84, VirtualReg_88
	add	VirtualReg_86, VirtualReg_83, VirtualReg_87
	lw	VirtualReg_89, 0(VirtualReg_86)
	sub	fuckLLVM_38, fuckLLVM_33, VirtualReg_89
	li	VirtualReg_92, 4
	mul	VirtualReg_91, fuckLLVM_38, VirtualReg_92
	add	VirtualReg_90, VirtualReg_74, VirtualReg_91
	lw	VirtualReg_93, 0(VirtualReg_90)
	li	VirtualReg_94, 0
	xor	fuckLLVM_41, VirtualReg_93, VirtualReg_94
	sltiu	fuckLLVM_41, fuckLLVM_41, 1
	xori	fuckLLVM_41, fuckLLVM_41, 1
	bnez	fuckLLVM_41, .getResult_ID41_if_true
	j	.getResult_ID41_if_out
.getResult_ID27_if_out:
	j	.getResult_ID15_if_out
.getResult_ID15_if_true:
	lw	VirtualReg_95, fuckLLVM_prime
	li	VirtualReg_97, -20
	add	VirtualReg_97, s0, VirtualReg_97
	lw	VirtualReg_96, 0(VirtualReg_97)
	li	VirtualReg_100, 4
	mul	VirtualReg_99, VirtualReg_96, VirtualReg_100
	add	VirtualReg_98, VirtualReg_95, VirtualReg_99
	lw	VirtualReg_101, 0(VirtualReg_98)
	li	VirtualReg_102, 2
	mul	fuckLLVM_20, VirtualReg_101, VirtualReg_102
	lw	VirtualReg_103, fuckLLVM_prime
	li	VirtualReg_105, -16
	add	VirtualReg_105, s0, VirtualReg_105
	lw	VirtualReg_104, 0(VirtualReg_105)
	li	VirtualReg_108, 4
	mul	VirtualReg_107, VirtualReg_104, VirtualReg_108
	add	VirtualReg_106, VirtualReg_103, VirtualReg_107
	lw	VirtualReg_109, 0(VirtualReg_106)
	sub	fuckLLVM_25, fuckLLVM_20, VirtualReg_109
	li	VirtualReg_111, -12
	add	VirtualReg_111, s0, VirtualReg_111
	lw	VirtualReg_110, 0(VirtualReg_111)
	slt	fuckLLVM_27, VirtualReg_110, fuckLLVM_25
	xori	fuckLLVM_27, fuckLLVM_27, 1
	bnez	fuckLLVM_27, .getResult_ID27_if_true
	j	.getResult_ID27_if_out
.getResult_ID15_if_out:
	lw	VirtualReg_112, fuckLLVM_result
	li	VirtualReg_114, -16
	add	VirtualReg_114, s0, VirtualReg_114
	lw	VirtualReg_113, 0(VirtualReg_114)
	li	VirtualReg_117, 8
	mul	VirtualReg_116, VirtualReg_113, VirtualReg_117
	add	VirtualReg_115, VirtualReg_112, VirtualReg_116
	lw	VirtualReg_118, 0(VirtualReg_115)
	li	VirtualReg_120, -20
	add	VirtualReg_120, s0, VirtualReg_120
	lw	VirtualReg_119, 0(VirtualReg_120)
	li	VirtualReg_123, 4
	mul	VirtualReg_122, VirtualReg_119, VirtualReg_123
	add	VirtualReg_121, VirtualReg_118, VirtualReg_122
	lw	VirtualReg_124, 0(VirtualReg_121)
	li	VirtualReg_125, 0
	li	VirtualReg_126, 1
	sub	fuckLLVM_72, VirtualReg_125, VirtualReg_126
	xor	fuckLLVM_73, VirtualReg_124, fuckLLVM_72
	sltiu	fuckLLVM_73, fuckLLVM_73, 1
	bnez	fuckLLVM_73, .getResult_ID73_if_true
	j	.getResult_ID73_if_out
.getResult_ID73_if_true:
	lw	VirtualReg_127, fuckLLVM_result
	li	VirtualReg_129, -16
	add	VirtualReg_129, s0, VirtualReg_129
	lw	VirtualReg_128, 0(VirtualReg_129)
	li	VirtualReg_132, 8
	mul	VirtualReg_131, VirtualReg_128, VirtualReg_132
	add	VirtualReg_130, VirtualReg_127, VirtualReg_131
	lw	VirtualReg_133, 0(VirtualReg_130)
	li	VirtualReg_135, -20
	add	VirtualReg_135, s0, VirtualReg_135
	lw	VirtualReg_134, 0(VirtualReg_135)
	li	VirtualReg_138, 4
	mul	VirtualReg_137, VirtualReg_134, VirtualReg_138
	add	VirtualReg_136, VirtualReg_133, VirtualReg_137
	li	VirtualReg_139, 1
	sw	VirtualReg_139, 0(VirtualReg_136)
	j	.getResult_ID73_if_out
.getResult_ID73_if_out:
	lw	VirtualReg_140, fuckLLVM_result
	li	VirtualReg_142, -16
	add	VirtualReg_142, s0, VirtualReg_142
	lw	VirtualReg_141, 0(VirtualReg_142)
	li	VirtualReg_145, 8
	mul	VirtualReg_144, VirtualReg_141, VirtualReg_145
	add	VirtualReg_143, VirtualReg_140, VirtualReg_144
	lw	VirtualReg_146, 0(VirtualReg_143)
	li	VirtualReg_148, -20
	add	VirtualReg_148, s0, VirtualReg_148
	lw	VirtualReg_147, 0(VirtualReg_148)
	li	VirtualReg_151, 4
	mul	VirtualReg_150, VirtualReg_147, VirtualReg_151
	add	VirtualReg_149, VirtualReg_146, VirtualReg_150
	lw	VirtualReg_152, 0(VirtualReg_149)
	li	VirtualReg_153, -24
	add	VirtualReg_153, s0, VirtualReg_153
	sw	VirtualReg_152, 0(VirtualReg_153)
	j	.getResult_return
.getResult_return:
	li	VirtualReg_155, -24
	add	VirtualReg_155, s0, VirtualReg_155
	lw	VirtualReg_154, 0(VirtualReg_155)
	mv	a0, VirtualReg_154
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

	.globl	printF
	.p2align	2
	.type	printF,@function
printF:
.printF_assemblyInit:
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
	j	.printF_entry
.printF_entry:
	li	VirtualReg_15, -12
	add	VirtualReg_15, s0, VirtualReg_15
	sw	VirtualReg_0, 0(VirtualReg_15)
	li	VirtualReg_17, -16
	add	VirtualReg_17, s0, VirtualReg_17
	sw	VirtualReg_1, 0(VirtualReg_17)
	li	VirtualReg_19, -20
	add	VirtualReg_19, s0, VirtualReg_19
	sw	VirtualReg_2, 0(VirtualReg_19)
	li	VirtualReg_21, -12
	add	VirtualReg_21, s0, VirtualReg_21
	lw	VirtualReg_20, 0(VirtualReg_21)
	mv	a0, VirtualReg_20
	call	toString
	mv	VirtualReg_22, a0
	mv	a0, VirtualReg_22
	call	print
	j	.printF_ID11_while_condition
.printF_ID11_while_condition:
	li	VirtualReg_24, -20
	add	VirtualReg_24, s0, VirtualReg_24
	lw	VirtualReg_23, 0(VirtualReg_24)
	li	VirtualReg_25, 0
	slt	fuckLLVM_12, VirtualReg_25, VirtualReg_23
	bnez	fuckLLVM_12, .printF_ID13_while_suite
	j	.printF_ID13_while_out
.printF_ID13_while_suite:
	la	VirtualReg_26, fuckLLVM_.str.0
	mv	a0, VirtualReg_26
	call	print
	li	VirtualReg_28, -16
	add	VirtualReg_28, s0, VirtualReg_28
	lw	VirtualReg_27, 0(VirtualReg_28)
	mv	a0, VirtualReg_27
	call	toString
	mv	VirtualReg_29, a0
	mv	a0, VirtualReg_29
	call	print
	li	VirtualReg_31, -16
	add	VirtualReg_31, s0, VirtualReg_31
	lw	VirtualReg_30, 0(VirtualReg_31)
	li	VirtualReg_32, 2
	mul	fuckLLVM_20, VirtualReg_30, VirtualReg_32
	li	VirtualReg_34, -12
	add	VirtualReg_34, s0, VirtualReg_34
	lw	VirtualReg_33, 0(VirtualReg_34)
	sub	fuckLLVM_22, fuckLLVM_20, VirtualReg_33
	li	VirtualReg_35, -16
	add	VirtualReg_35, s0, VirtualReg_35
	sw	fuckLLVM_22, 0(VirtualReg_35)
	li	VirtualReg_37, -12
	add	VirtualReg_37, s0, VirtualReg_37
	lw	VirtualReg_36, 0(VirtualReg_37)
	li	VirtualReg_39, -16
	add	VirtualReg_39, s0, VirtualReg_39
	lw	VirtualReg_38, 0(VirtualReg_39)
	add	fuckLLVM_25, VirtualReg_36, VirtualReg_38
	li	VirtualReg_40, 2
	div	fuckLLVM_26, fuckLLVM_25, VirtualReg_40
	li	VirtualReg_41, -12
	add	VirtualReg_41, s0, VirtualReg_41
	sw	fuckLLVM_26, 0(VirtualReg_41)
	li	VirtualReg_43, -20
	add	VirtualReg_43, s0, VirtualReg_43
	lw	VirtualReg_42, 0(VirtualReg_43)
	li	VirtualReg_44, 1
	sub	fuckLLVM_28, VirtualReg_42, VirtualReg_44
	li	VirtualReg_45, -20
	add	VirtualReg_45, s0, VirtualReg_45
	sw	fuckLLVM_28, 0(VirtualReg_45)
	j	.printF_ID11_while_condition
.printF_ID13_while_out:
	la	VirtualReg_46, fuckLLVM_.str.1
	mv	a0, VirtualReg_46
	call	print
	j	.printF_return
.printF_return:
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
	li	VirtualReg_14, 170
	mv	a0, VirtualReg_14
	call	origin
	li	VirtualReg_15, 1000
	li	VirtualReg_16, 0
	sw	VirtualReg_15, fuckLLVM_N, VirtualReg_16
	call	getInt
	mv	VirtualReg_17, a0
	li	VirtualReg_18, 0
	sw	VirtualReg_17, fuckLLVM_M, VirtualReg_18
	li	VirtualReg_19, 0
	li	VirtualReg_20, 0
	sw	VirtualReg_19, fuckLLVM_primeCount, VirtualReg_20
	li	VirtualReg_21, 0
	li	VirtualReg_22, 0
	sw	VirtualReg_21, fuckLLVM_resultCount, VirtualReg_22
	lw	VirtualReg_23, fuckLLVM_tmp
	li	VirtualReg_26, 0
	li	VirtualReg_27, 4
	mul	VirtualReg_25, VirtualReg_26, VirtualReg_27
	add	VirtualReg_24, VirtualReg_23, VirtualReg_25
	li	VirtualReg_28, 0
	sw	VirtualReg_28, 0(VirtualReg_24)
	li	VirtualReg_29, 0
	li	VirtualReg_30, 0
	sw	VirtualReg_29, fuckLLVM_i, VirtualReg_30
	j	.main_ID4_for_condition
.main_ID4_for_condition:
	lw	VirtualReg_31, fuckLLVM_i
	lw	VirtualReg_32, fuckLLVM_N
	li	VirtualReg_33, 1
	add	fuckLLVM_7, VirtualReg_32, VirtualReg_33
	slt	fuckLLVM_8, VirtualReg_31, fuckLLVM_7
	bnez	fuckLLVM_8, .main_ID4_for_suite
	j	.main_ID4_for_out
.main_ID4_for_suite:
	lw	VirtualReg_34, fuckLLVM_b
	lw	VirtualReg_35, fuckLLVM_i
	li	VirtualReg_38, 4
	mul	VirtualReg_37, VirtualReg_35, VirtualReg_38
	add	VirtualReg_36, VirtualReg_34, VirtualReg_37
	li	VirtualReg_39, 1
	sw	VirtualReg_39, 0(VirtualReg_36)
	lw	VirtualReg_40, fuckLLVM_gps
	lw	VirtualReg_41, fuckLLVM_i
	li	VirtualReg_44, 4
	mul	VirtualReg_43, VirtualReg_41, VirtualReg_44
	add	VirtualReg_42, VirtualReg_40, VirtualReg_43
	li	VirtualReg_45, 0
	sw	VirtualReg_45, 0(VirtualReg_42)
	j	.main_ID4_for_incr
.main_ID4_for_incr:
	lw	VirtualReg_46, fuckLLVM_i
	li	VirtualReg_47, 1
	add	fuckLLVM_16, VirtualReg_46, VirtualReg_47
	li	VirtualReg_48, 0
	sw	fuckLLVM_16, fuckLLVM_i, VirtualReg_48
	j	.main_ID4_for_condition
.main_ID4_for_out:
	li	VirtualReg_49, 0
	li	VirtualReg_50, 0
	sw	VirtualReg_49, fuckLLVM_i, VirtualReg_50
	j	.main_ID16_for_condition
.main_ID16_for_condition:
	lw	VirtualReg_51, fuckLLVM_i
	lw	VirtualReg_52, fuckLLVM_M
	li	VirtualReg_53, 1
	add	fuckLLVM_19, VirtualReg_52, VirtualReg_53
	slt	fuckLLVM_20, VirtualReg_51, fuckLLVM_19
	bnez	fuckLLVM_20, .main_ID16_for_suite
	j	.main_ID16_for_out
.main_ID16_for_suite:
	lw	VirtualReg_54, fuckLLVM_prime
	lw	VirtualReg_55, fuckLLVM_i
	li	VirtualReg_58, 4
	mul	VirtualReg_57, VirtualReg_55, VirtualReg_58
	add	VirtualReg_56, VirtualReg_54, VirtualReg_57
	li	VirtualReg_59, 0
	sw	VirtualReg_59, 0(VirtualReg_56)
	j	.main_ID16_for_incr
.main_ID16_for_incr:
	lw	VirtualReg_60, fuckLLVM_i
	li	VirtualReg_61, 1
	add	fuckLLVM_25, VirtualReg_60, VirtualReg_61
	li	VirtualReg_62, 0
	sw	fuckLLVM_25, fuckLLVM_i, VirtualReg_62
	j	.main_ID16_for_condition
.main_ID16_for_out:
	li	VirtualReg_63, 0
	li	VirtualReg_64, 0
	sw	VirtualReg_63, fuckLLVM_i, VirtualReg_64
	j	.main_ID25_for_condition
.main_ID25_for_condition:
	lw	VirtualReg_65, fuckLLVM_i
	lw	VirtualReg_66, fuckLLVM_M
	slt	fuckLLVM_28, VirtualReg_66, VirtualReg_65
	xori	fuckLLVM_28, fuckLLVM_28, 1
	bnez	fuckLLVM_28, .main_ID25_for_suite
	j	.main_ID25_for_out
.main_ID25_for_suite:
	li	VirtualReg_67, 0
	li	VirtualReg_68, 0
	sw	VirtualReg_67, fuckLLVM_j, VirtualReg_68
	j	.main_ID28_for_condition
.main_ID28_for_condition:
	lw	VirtualReg_69, fuckLLVM_j
	lw	VirtualReg_70, fuckLLVM_M
	slt	fuckLLVM_31, VirtualReg_70, VirtualReg_69
	xori	fuckLLVM_31, fuckLLVM_31, 1
	bnez	fuckLLVM_31, .main_ID28_for_suite
	j	.main_ID28_for_out
.main_ID28_for_suite:
	lw	VirtualReg_71, fuckLLVM_result
	lw	VirtualReg_72, fuckLLVM_i
	li	VirtualReg_75, 8
	mul	VirtualReg_74, VirtualReg_72, VirtualReg_75
	add	VirtualReg_73, VirtualReg_71, VirtualReg_74
	lw	VirtualReg_76, 0(VirtualReg_73)
	lw	VirtualReg_77, fuckLLVM_j
	li	VirtualReg_80, 4
	mul	VirtualReg_79, VirtualReg_77, VirtualReg_80
	add	VirtualReg_78, VirtualReg_76, VirtualReg_79
	li	VirtualReg_81, 0
	li	VirtualReg_82, 1
	sub	fuckLLVM_38, VirtualReg_81, VirtualReg_82
	sw	fuckLLVM_38, 0(VirtualReg_78)
	j	.main_ID28_for_incr
.main_ID28_for_incr:
	lw	VirtualReg_83, fuckLLVM_j
	li	VirtualReg_84, 1
	add	fuckLLVM_40, VirtualReg_83, VirtualReg_84
	li	VirtualReg_85, 0
	sw	fuckLLVM_40, fuckLLVM_j, VirtualReg_85
	j	.main_ID28_for_condition
.main_ID28_for_out:
	j	.main_ID25_for_incr
.main_ID25_for_incr:
	lw	VirtualReg_86, fuckLLVM_i
	li	VirtualReg_87, 1
	add	fuckLLVM_42, VirtualReg_86, VirtualReg_87
	li	VirtualReg_88, 0
	sw	fuckLLVM_42, fuckLLVM_i, VirtualReg_88
	j	.main_ID25_for_condition
.main_ID25_for_out:
	lw	VirtualReg_89, fuckLLVM_N
	mv	a0, VirtualReg_89
	call	getPrime
	lw	VirtualReg_90, fuckLLVM_tmp
	li	VirtualReg_93, 0
	li	VirtualReg_94, 4
	mul	VirtualReg_92, VirtualReg_93, VirtualReg_94
	add	VirtualReg_91, VirtualReg_90, VirtualReg_92
	lw	VirtualReg_95, 0(VirtualReg_91)
	li	VirtualReg_96, 0
	sw	VirtualReg_95, fuckLLVM_primeCount, VirtualReg_96
	li	VirtualReg_97, 1
	li	VirtualReg_98, 0
	sw	VirtualReg_97, fuckLLVM_i, VirtualReg_98
	j	.main_ID47_for_condition
.main_ID47_for_condition:
	lw	VirtualReg_99, fuckLLVM_i
	lw	VirtualReg_100, fuckLLVM_primeCount
	slt	fuckLLVM_50, VirtualReg_99, VirtualReg_100
	bnez	fuckLLVM_50, .main_ID47_for_suite
	j	.main_ID47_for_out
.main_ID47_for_suite:
	lw	VirtualReg_101, fuckLLVM_i
	li	VirtualReg_102, 1
	add	fuckLLVM_52, VirtualReg_101, VirtualReg_102
	li	VirtualReg_103, 0
	sw	fuckLLVM_52, fuckLLVM_j, VirtualReg_103
	j	.main_ID52_for_condition
.main_ID52_for_condition:
	lw	VirtualReg_104, fuckLLVM_j
	lw	VirtualReg_105, fuckLLVM_primeCount
	slt	fuckLLVM_55, VirtualReg_105, VirtualReg_104
	xori	fuckLLVM_55, fuckLLVM_55, 1
	bnez	fuckLLVM_55, .main_ID52_for_suite
	j	.main_ID52_for_out
.main_ID52_for_suite:
	lw	VirtualReg_106, fuckLLVM_result
	lw	VirtualReg_107, fuckLLVM_i
	li	VirtualReg_110, 8
	mul	VirtualReg_109, VirtualReg_107, VirtualReg_110
	add	VirtualReg_108, VirtualReg_106, VirtualReg_109
	lw	VirtualReg_111, 0(VirtualReg_108)
	lw	VirtualReg_112, fuckLLVM_j
	li	VirtualReg_115, 4
	mul	VirtualReg_114, VirtualReg_112, VirtualReg_115
	add	VirtualReg_113, VirtualReg_111, VirtualReg_114
	lw	VirtualReg_116, 0(VirtualReg_113)
	li	VirtualReg_117, 0
	li	VirtualReg_118, 1
	sub	fuckLLVM_63, VirtualReg_117, VirtualReg_118
	xor	fuckLLVM_64, VirtualReg_116, fuckLLVM_63
	sltiu	fuckLLVM_64, fuckLLVM_64, 1
	bnez	fuckLLVM_64, .main_ID64_if_true
	j	.main_ID64_if_out
.main_ID82_if_true:
	lw	VirtualReg_119, fuckLLVM_prime
	lw	VirtualReg_120, fuckLLVM_i
	li	VirtualReg_123, 4
	mul	VirtualReg_122, VirtualReg_120, VirtualReg_123
	add	VirtualReg_121, VirtualReg_119, VirtualReg_122
	lw	VirtualReg_124, 0(VirtualReg_121)
	lw	VirtualReg_125, fuckLLVM_prime
	lw	VirtualReg_126, fuckLLVM_j
	li	VirtualReg_129, 4
	mul	VirtualReg_128, VirtualReg_126, VirtualReg_129
	add	VirtualReg_127, VirtualReg_125, VirtualReg_128
	lw	VirtualReg_130, 0(VirtualReg_127)
	lw	VirtualReg_131, fuckLLVM_result
	lw	VirtualReg_132, fuckLLVM_i
	li	VirtualReg_135, 8
	mul	VirtualReg_134, VirtualReg_132, VirtualReg_135
	add	VirtualReg_133, VirtualReg_131, VirtualReg_134
	lw	VirtualReg_136, 0(VirtualReg_133)
	lw	VirtualReg_137, fuckLLVM_j
	li	VirtualReg_140, 4
	mul	VirtualReg_139, VirtualReg_137, VirtualReg_140
	add	VirtualReg_138, VirtualReg_136, VirtualReg_139
	lw	VirtualReg_141, 0(VirtualReg_138)
	mv	a0, VirtualReg_124
	mv	a1, VirtualReg_130
	mv	a2, VirtualReg_141
	call	printF
	lw	VirtualReg_142, fuckLLVM_resultCount
	li	VirtualReg_143, 1
	add	fuckLLVM_100, VirtualReg_142, VirtualReg_143
	li	VirtualReg_144, 0
	sw	fuckLLVM_100, fuckLLVM_resultCount, VirtualReg_144
	j	.main_ID82_if_out
.main_ID82_if_out:
	j	.main_ID64_if_out
.main_ID64_if_true:
	lw	VirtualReg_145, fuckLLVM_result
	lw	VirtualReg_146, fuckLLVM_i
	li	VirtualReg_149, 8
	mul	VirtualReg_148, VirtualReg_146, VirtualReg_149
	add	VirtualReg_147, VirtualReg_145, VirtualReg_148
	lw	VirtualReg_150, 0(VirtualReg_147)
	lw	VirtualReg_151, fuckLLVM_j
	li	VirtualReg_154, 4
	mul	VirtualReg_153, VirtualReg_151, VirtualReg_154
	add	VirtualReg_152, VirtualReg_150, VirtualReg_153
	lw	VirtualReg_155, fuckLLVM_N
	lw	VirtualReg_156, fuckLLVM_i
	lw	VirtualReg_157, fuckLLVM_j
	mv	a0, VirtualReg_155
	mv	a1, VirtualReg_156
	mv	a2, VirtualReg_157
	call	getResult
	mv	VirtualReg_158, a0
	sw	VirtualReg_158, 0(VirtualReg_152)
	lw	VirtualReg_159, fuckLLVM_result
	lw	VirtualReg_160, fuckLLVM_i
	li	VirtualReg_163, 8
	mul	VirtualReg_162, VirtualReg_160, VirtualReg_163
	add	VirtualReg_161, VirtualReg_159, VirtualReg_162
	lw	VirtualReg_164, 0(VirtualReg_161)
	lw	VirtualReg_165, fuckLLVM_j
	li	VirtualReg_168, 4
	mul	VirtualReg_167, VirtualReg_165, VirtualReg_168
	add	VirtualReg_166, VirtualReg_164, VirtualReg_167
	lw	VirtualReg_169, 0(VirtualReg_166)
	li	VirtualReg_170, 1
	slt	fuckLLVM_82, VirtualReg_170, VirtualReg_169
	bnez	fuckLLVM_82, .main_ID82_if_true
	j	.main_ID82_if_out
.main_ID64_if_out:
	j	.main_ID52_for_incr
.main_ID52_for_incr:
	lw	VirtualReg_171, fuckLLVM_j
	li	VirtualReg_172, 1
	add	fuckLLVM_102, VirtualReg_171, VirtualReg_172
	li	VirtualReg_173, 0
	sw	fuckLLVM_102, fuckLLVM_j, VirtualReg_173
	j	.main_ID52_for_condition
.main_ID52_for_out:
	j	.main_ID47_for_incr
.main_ID47_for_incr:
	lw	VirtualReg_174, fuckLLVM_i
	li	VirtualReg_175, 1
	add	fuckLLVM_104, VirtualReg_174, VirtualReg_175
	li	VirtualReg_176, 0
	sw	fuckLLVM_104, fuckLLVM_i, VirtualReg_176
	j	.main_ID47_for_condition
.main_ID47_for_out:
	la	VirtualReg_177, fuckLLVM_.str.2
	mv	a0, VirtualReg_177
	call	print
	lw	VirtualReg_178, fuckLLVM_resultCount
	mv	a0, VirtualReg_178
	call	toString
	mv	VirtualReg_179, a0
	mv	a0, VirtualReg_179
	call	println
	li	VirtualReg_180, 0
	li	VirtualReg_181, -12
	add	VirtualReg_181, s0, VirtualReg_181
	sw	VirtualReg_180, 0(VirtualReg_181)
	j	.main_return
.main_return:
	li	VirtualReg_183, -12
	add	VirtualReg_183, s0, VirtualReg_183
	lw	VirtualReg_182, 0(VirtualReg_183)
	mv	a0, VirtualReg_182
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

	.section	.sbss
	.type	fuckLLVM_N,@object
	.globl	fuckLLVM_N
	.p2align	2
fuckLLVM_N:
	.word	0
	.size	fuckLLVM_N, 8

	.section	.sbss
	.type	fuckLLVM_M,@object
	.globl	fuckLLVM_M
	.p2align	2
fuckLLVM_M:
	.word	0
	.size	fuckLLVM_M, 8

	.section	.sbss
	.type	fuckLLVM_i,@object
	.globl	fuckLLVM_i
	.p2align	2
fuckLLVM_i:
	.word	0
	.size	fuckLLVM_i, 8

	.section	.sbss
	.type	fuckLLVM_j,@object
	.globl	fuckLLVM_j
	.p2align	2
fuckLLVM_j:
	.word	0
	.size	fuckLLVM_j, 8

	.section	.sbss
	.type	fuckLLVM_primeCount,@object
	.globl	fuckLLVM_primeCount
	.p2align	2
fuckLLVM_primeCount:
	.word	0
	.size	fuckLLVM_primeCount, 8

	.section	.sbss
	.type	fuckLLVM_resultCount,@object
	.globl	fuckLLVM_resultCount
	.p2align	2
fuckLLVM_resultCount:
	.word	0
	.size	fuckLLVM_resultCount, 8

	.section	.sbss
	.type	fuckLLVM_b,@object
	.globl	fuckLLVM_b
	.p2align	2
fuckLLVM_b:
	.word	0
	.size	fuckLLVM_b, 8

	.section	.sbss
	.type	fuckLLVM_prime,@object
	.globl	fuckLLVM_prime
	.p2align	2
fuckLLVM_prime:
	.word	0
	.size	fuckLLVM_prime, 8

	.section	.sbss
	.type	fuckLLVM_gps,@object
	.globl	fuckLLVM_gps
	.p2align	2
fuckLLVM_gps:
	.word	0
	.size	fuckLLVM_gps, 8

	.section	.sbss
	.type	fuckLLVM_tmp,@object
	.globl	fuckLLVM_tmp
	.p2align	2
fuckLLVM_tmp:
	.word	0
	.size	fuckLLVM_tmp, 8

	.section	.sbss
	.type	fuckLLVM_result,@object
	.globl	fuckLLVM_result
	.p2align	2
fuckLLVM_result:
	.word	0
	.size	fuckLLVM_result, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"  "
	.size	fuckLLVM_.str.0, 2

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"\n "
	.size	fuckLLVM_.str.1, 3

	.section	.rodata
	.type	fuckLLVM_.str.2,@object
fuckLLVM_.str.2:
	.asciz	"Total:  "
	.size	fuckLLVM_.str.2, 8

