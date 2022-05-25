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

	.globl	unsigned_shl
	.p2align	2
	.type	unsigned_shl,@function
unsigned_shl:
.unsigned_shl_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s0
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
	j	.unsigned_shl_entry
.unsigned_shl_entry:
	sll	VirtualReg_14, VirtualReg_0, VirtualReg_1
	j	.unsigned_shl_return
.unsigned_shl_return:
	mv	a0, VirtualReg_14
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

	.globl	unsigned_shr
	.p2align	2
	.type	unsigned_shr,@function
unsigned_shr:
.unsigned_shr_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s0
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
	j	.unsigned_shr_entry
.unsigned_shr_entry:
	li	VirtualReg_14, 0
	slt	VirtualReg_15, VirtualReg_0, VirtualReg_14
	xori	VirtualReg_15, VirtualReg_15, 1
	bnez	VirtualReg_15, .unsigned_shr_ID8_if_true
	j	.unsigned_shr_ID8_if_false
.unsigned_shr_ID8_if_true:
	sra	VirtualReg_16, VirtualReg_0, VirtualReg_1
	mv	VirtualReg_25, VirtualReg_16
	j	.unsigned_shr_return
.unsigned_shr_ID8_if_false:
	li	VirtualReg_17, 31
	sub	VirtualReg_18, VirtualReg_17, VirtualReg_1
	li	VirtualReg_19, 1
	sll	VirtualReg_20, VirtualReg_19, VirtualReg_18
	li	VirtualReg_21, -2147483648
	xor	VirtualReg_22, VirtualReg_0, VirtualReg_21
	sra	VirtualReg_23, VirtualReg_22, VirtualReg_1
	or	VirtualReg_24, VirtualReg_20, VirtualReg_23
	mv	VirtualReg_25, VirtualReg_24
	j	.unsigned_shr_return
.unsigned_shr_return:
	mv	a0, VirtualReg_25
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

	.globl	rng
	.p2align	2
	.type	rng,@function
rng:
.rng_assemblyInit:
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
	j	.rng_entry
.rng_entry:
	j	.rng_call_unsigned_shl_0
.rng_call_unsigned_shl_0_out:
	xor	VirtualReg_14, VirtualReg_0, VirtualReg_13
	j	.rng_call_unsigned_shr_1
.rng_call_unsigned_shr_1_out:
	xor	VirtualReg_16, VirtualReg_14, VirtualReg_15
	j	.rng_call_unsigned_shl_2
.rng_call_unsigned_shl_2_out:
	xor	VirtualReg_18, VirtualReg_16, VirtualReg_17
	li	VirtualReg_19, 1073741823
	and	VirtualReg_20, VirtualReg_18, VirtualReg_19
	j	.rng_return
.rng_call_unsigned_shl_0:
	li	VirtualReg_21, 13
	sll	VirtualReg_13, VirtualReg_0, VirtualReg_21
	j	.rng_call_unsigned_shl_0_unsigned_shl_return
.rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.rng_call_unsigned_shl_0_out
.rng_call_unsigned_shr_1:
	li	VirtualReg_22, 0
	slt	VirtualReg_23, VirtualReg_14, VirtualReg_22
	xori	VirtualReg_23, VirtualReg_23, 1
	bnez	VirtualReg_23, .rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	VirtualReg_24, 17
	sra	VirtualReg_25, VirtualReg_14, VirtualReg_24
	mv	VirtualReg_15, VirtualReg_25
	j	.rng_call_unsigned_shr_1_unsigned_shr_return
.rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	VirtualReg_26, 31
	li	VirtualReg_27, 17
	sub	VirtualReg_28, VirtualReg_26, VirtualReg_27
	li	VirtualReg_29, 1
	sll	VirtualReg_30, VirtualReg_29, VirtualReg_28
	li	VirtualReg_31, -2147483648
	xor	VirtualReg_32, VirtualReg_14, VirtualReg_31
	li	VirtualReg_33, 17
	sra	VirtualReg_34, VirtualReg_32, VirtualReg_33
	or	VirtualReg_35, VirtualReg_30, VirtualReg_34
	mv	VirtualReg_15, VirtualReg_35
	j	.rng_call_unsigned_shr_1_unsigned_shr_return
.rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.rng_call_unsigned_shr_1_out
.rng_call_unsigned_shl_2:
	li	VirtualReg_36, 5
	sll	VirtualReg_17, VirtualReg_16, VirtualReg_36
	j	.rng_call_unsigned_shl_2_unsigned_shl_return
.rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.rng_call_unsigned_shl_2_out
.rng_return:
	mv	a0, VirtualReg_20
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

	.globl	test
	.p2align	2
	.type	test,@function
test:
.test_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, a3
	mv	VirtualReg_4, a4
	mv	VirtualReg_5, a5
	mv	VirtualReg_6, a6
	mv	VirtualReg_7, a7
	lw	VirtualReg_8, 0(s0)
	lw	VirtualReg_9, 4(s0)
	mv	VirtualReg_10, s0
	mv	VirtualReg_11, s1
	mv	VirtualReg_12, s2
	mv	VirtualReg_13, s3
	mv	VirtualReg_14, s4
	mv	VirtualReg_15, s5
	mv	VirtualReg_16, s6
	mv	VirtualReg_17, s7
	mv	VirtualReg_18, s8
	mv	VirtualReg_19, s9
	mv	VirtualReg_20, s10
	mv	VirtualReg_21, s11
	j	.test_entry
.test_entry:
	xor	VirtualReg_22, VirtualReg_0, VirtualReg_1
	sltiu	VirtualReg_22, VirtualReg_22, 1
	bnez	VirtualReg_22, .test_ID23_if_true
	j	.test_ID23_if_false
.test_ID26_OrOr_false:
	xor	VirtualReg_23, VirtualReg_2, VirtualReg_3
	sltiu	VirtualReg_23, VirtualReg_23, 1
	xori	VirtualReg_23, VirtualReg_23, 1
	mv	VirtualReg_24, VirtualReg_23
	j	.test_ID26_OrOr_out
.test_ID26_OrOr_out:
	bnez	VirtualReg_24, .test_ID30_if_true
	j	.test_ID30_if_false
.test_ID30_if_true:
	mv	a0, VirtualReg_1
	mv	a1, VirtualReg_2
	mv	a2, VirtualReg_3
	mv	a3, VirtualReg_4
	mv	a4, VirtualReg_5
	mv	a5, VirtualReg_6
	mv	a6, VirtualReg_7
	mv	a7, VirtualReg_8
	sw	VirtualReg_9, 0(sp)
	sw	VirtualReg_0, 4(sp)
	call	test
	mv	VirtualReg_25, a0
	li	VirtualReg_26, 1
	add	VirtualReg_27, VirtualReg_25, VirtualReg_26
	mv	VirtualReg_38, VirtualReg_27
	j	.test_return
.test_ID30_if_false:
	li	VirtualReg_28, 1
	sub	VirtualReg_29, VirtualReg_5, VirtualReg_28
	li	VirtualReg_30, 2
	sub	VirtualReg_31, VirtualReg_6, VirtualReg_30
	mv	a0, VirtualReg_1
	mv	a1, VirtualReg_2
	mv	a2, VirtualReg_3
	mv	a3, VirtualReg_4
	mv	a4, VirtualReg_29
	mv	a5, VirtualReg_31
	mv	a6, VirtualReg_7
	mv	a7, VirtualReg_8
	sw	VirtualReg_9, 0(sp)
	sw	VirtualReg_0, 4(sp)
	call	test
	mv	VirtualReg_32, a0
	li	VirtualReg_33, 2
	add	VirtualReg_34, VirtualReg_32, VirtualReg_33
	mv	VirtualReg_38, VirtualReg_34
	j	.test_return
.test_ID23_if_true:
	xor	VirtualReg_35, VirtualReg_1, VirtualReg_2
	sltiu	VirtualReg_35, VirtualReg_35, 1
	xori	VirtualReg_35, VirtualReg_35, 1
	bnez	VirtualReg_35, .test_ID23_if_true_mid
	j	.test_ID26_OrOr_false
.test_ID23_if_true_mid:
	li	VirtualReg_39, 1
	mv	VirtualReg_24, VirtualReg_39
	j	.test_ID26_OrOr_out
.test_ID23_if_false:
	add	VirtualReg_36, VirtualReg_0, VirtualReg_1
	add	VirtualReg_37, VirtualReg_36, VirtualReg_0
	mv	VirtualReg_38, VirtualReg_37
	j	.test_return
.test_return:
	mv	a0, VirtualReg_38
	mv	s1, VirtualReg_11
	mv	s2, VirtualReg_12
	mv	s3, VirtualReg_13
	mv	s4, VirtualReg_14
	mv	s5, VirtualReg_15
	mv	s6, VirtualReg_16
	mv	s7, VirtualReg_17
	mv	s8, VirtualReg_18
	mv	s9, VirtualReg_19
	mv	s10, VirtualReg_20
	mv	s11, VirtualReg_21

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
	j	.main_call___init_3
.main_call___init_3_out:
	li	VirtualReg_227, 0
	mv	VirtualReg_12, VirtualReg_227
	li	VirtualReg_228, 19260817
	mv	VirtualReg_13, VirtualReg_228
	j	.main_ID2_for_suite
.main_ID2_for_suite:
	j	.main_call_rng_4
.main_call_rng_4_out:
	j	.main_call_rng_5
.main_call_rng_5_out:
	li	VirtualReg_15, 255
	and	VirtualReg_16, VirtualReg_14, VirtualReg_15
	li	VirtualReg_18, 255
	and	VirtualReg_19, VirtualReg_17, VirtualReg_18
	xor	VirtualReg_20, VirtualReg_16, VirtualReg_19
	sltiu	VirtualReg_20, VirtualReg_20, 1
	xori	VirtualReg_20, VirtualReg_20, 1
	bnez	VirtualReg_20, .main_ID14_if_true
	j	.main_ID2_for_out
.main_ID14_if_true:
	j	.main_call_rng_6
.main_call_rng_6_out:
	j	.main_call_rng_7
.main_call_rng_7_out:
	j	.main_call_rng_8
.main_call_rng_8_out:
	j	.main_call_rng_9
.main_call_rng_9_out:
	j	.main_call_rng_10
.main_call_rng_10_out:
	li	VirtualReg_22, 3
	and	VirtualReg_23, VirtualReg_21, VirtualReg_22
	li	VirtualReg_24, 28
	sra	VirtualReg_25, VirtualReg_21, VirtualReg_24
	li	VirtualReg_27, 1
	and	VirtualReg_28, VirtualReg_26, VirtualReg_27
	li	VirtualReg_29, 29
	sra	VirtualReg_30, VirtualReg_26, VirtualReg_29
	li	VirtualReg_32, 25
	sra	VirtualReg_33, VirtualReg_31, VirtualReg_32
	li	VirtualReg_34, 31
	and	VirtualReg_35, VirtualReg_31, VirtualReg_34
	li	VirtualReg_37, 15
	sra	VirtualReg_38, VirtualReg_36, VirtualReg_37
	li	VirtualReg_39, 32767
	and	VirtualReg_40, VirtualReg_36, VirtualReg_39
	li	VirtualReg_42, 15
	sra	VirtualReg_43, VirtualReg_41, VirtualReg_42
	li	VirtualReg_44, 32767
	and	VirtualReg_45, VirtualReg_41, VirtualReg_44
	j	.main_call_test_11
.main_call_test_11_out:
	xor	VirtualReg_47, VirtualReg_12, VirtualReg_46
	j	.main_ID14_if_out
.main_ID14_if_out:
	mv	VirtualReg_12, VirtualReg_47
	mv	VirtualReg_13, VirtualReg_41
	j	.main_ID2_for_suite
.main_ID2_for_out:
	li	VirtualReg_48, 19
	sub	VirtualReg_49, VirtualReg_12, VirtualReg_48
	j	.main_return
.main_call___init_3:
	j	.main_call___init_3___init_return
.main_call___init_3___init_return:
	j	.main_call___init_3_out
.main_call_rng_4:
	j	.main_call_rng_4_rng_call_unsigned_shl_0
.main_call_rng_4_rng_call_unsigned_shl_0_out:
	xor	VirtualReg_51, VirtualReg_13, VirtualReg_50
	j	.main_call_rng_4_rng_call_unsigned_shr_1
.main_call_rng_4_rng_call_unsigned_shr_1_out:
	xor	VirtualReg_53, VirtualReg_51, VirtualReg_52
	j	.main_call_rng_4_rng_call_unsigned_shl_2
.main_call_rng_4_rng_call_unsigned_shl_2_out:
	xor	VirtualReg_55, VirtualReg_53, VirtualReg_54
	li	VirtualReg_56, 1073741823
	and	VirtualReg_14, VirtualReg_55, VirtualReg_56
	j	.main_call_rng_4_rng_return
.main_call_rng_4_rng_call_unsigned_shl_0:
	li	VirtualReg_57, 13
	sll	VirtualReg_50, VirtualReg_13, VirtualReg_57
	j	.main_call_rng_4_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_4_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_4_rng_call_unsigned_shl_0_out
.main_call_rng_4_rng_call_unsigned_shr_1:
	li	VirtualReg_58, 0
	slt	VirtualReg_59, VirtualReg_51, VirtualReg_58
	xori	VirtualReg_59, VirtualReg_59, 1
	bnez	VirtualReg_59, .main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	VirtualReg_60, 17
	sra	VirtualReg_61, VirtualReg_51, VirtualReg_60
	mv	VirtualReg_52, VirtualReg_61
	j	.main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	VirtualReg_62, 31
	li	VirtualReg_63, 17
	sub	VirtualReg_64, VirtualReg_62, VirtualReg_63
	li	VirtualReg_65, 1
	sll	VirtualReg_66, VirtualReg_65, VirtualReg_64
	li	VirtualReg_67, -2147483648
	xor	VirtualReg_68, VirtualReg_51, VirtualReg_67
	li	VirtualReg_69, 17
	sra	VirtualReg_70, VirtualReg_68, VirtualReg_69
	or	VirtualReg_71, VirtualReg_66, VirtualReg_70
	mv	VirtualReg_52, VirtualReg_71
	j	.main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_4_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_4_rng_call_unsigned_shr_1_out
.main_call_rng_4_rng_call_unsigned_shl_2:
	li	VirtualReg_72, 5
	sll	VirtualReg_54, VirtualReg_53, VirtualReg_72
	j	.main_call_rng_4_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_4_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_4_rng_call_unsigned_shl_2_out
.main_call_rng_4_rng_return:
	j	.main_call_rng_4_out
.main_call_rng_5:
	j	.main_call_rng_5_rng_call_unsigned_shl_0
.main_call_rng_5_rng_call_unsigned_shl_0_out:
	xor	VirtualReg_74, VirtualReg_14, VirtualReg_73
	j	.main_call_rng_5_rng_call_unsigned_shr_1
.main_call_rng_5_rng_call_unsigned_shr_1_out:
	xor	VirtualReg_76, VirtualReg_74, VirtualReg_75
	j	.main_call_rng_5_rng_call_unsigned_shl_2
.main_call_rng_5_rng_call_unsigned_shl_2_out:
	xor	VirtualReg_78, VirtualReg_76, VirtualReg_77
	li	VirtualReg_79, 1073741823
	and	VirtualReg_17, VirtualReg_78, VirtualReg_79
	j	.main_call_rng_5_rng_return
.main_call_rng_5_rng_call_unsigned_shl_0:
	li	VirtualReg_80, 13
	sll	VirtualReg_73, VirtualReg_14, VirtualReg_80
	j	.main_call_rng_5_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_5_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_5_rng_call_unsigned_shl_0_out
.main_call_rng_5_rng_call_unsigned_shr_1:
	li	VirtualReg_81, 0
	slt	VirtualReg_82, VirtualReg_74, VirtualReg_81
	xori	VirtualReg_82, VirtualReg_82, 1
	bnez	VirtualReg_82, .main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	VirtualReg_83, 17
	sra	VirtualReg_84, VirtualReg_74, VirtualReg_83
	mv	VirtualReg_75, VirtualReg_84
	j	.main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	VirtualReg_85, 31
	li	VirtualReg_86, 17
	sub	VirtualReg_87, VirtualReg_85, VirtualReg_86
	li	VirtualReg_88, 1
	sll	VirtualReg_89, VirtualReg_88, VirtualReg_87
	li	VirtualReg_90, -2147483648
	xor	VirtualReg_91, VirtualReg_74, VirtualReg_90
	li	VirtualReg_92, 17
	sra	VirtualReg_93, VirtualReg_91, VirtualReg_92
	or	VirtualReg_94, VirtualReg_89, VirtualReg_93
	mv	VirtualReg_75, VirtualReg_94
	j	.main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_5_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_5_rng_call_unsigned_shr_1_out
.main_call_rng_5_rng_call_unsigned_shl_2:
	li	VirtualReg_95, 5
	sll	VirtualReg_77, VirtualReg_76, VirtualReg_95
	j	.main_call_rng_5_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_5_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_5_rng_call_unsigned_shl_2_out
.main_call_rng_5_rng_return:
	j	.main_call_rng_5_out
.main_call_rng_6:
	j	.main_call_rng_6_rng_call_unsigned_shl_0
.main_call_rng_6_rng_call_unsigned_shl_0_out:
	xor	VirtualReg_97, VirtualReg_17, VirtualReg_96
	j	.main_call_rng_6_rng_call_unsigned_shr_1
.main_call_rng_6_rng_call_unsigned_shr_1_out:
	xor	VirtualReg_99, VirtualReg_97, VirtualReg_98
	j	.main_call_rng_6_rng_call_unsigned_shl_2
.main_call_rng_6_rng_call_unsigned_shl_2_out:
	xor	VirtualReg_101, VirtualReg_99, VirtualReg_100
	li	VirtualReg_102, 1073741823
	and	VirtualReg_21, VirtualReg_101, VirtualReg_102
	j	.main_call_rng_6_rng_return
.main_call_rng_6_rng_call_unsigned_shl_0:
	li	VirtualReg_103, 13
	sll	VirtualReg_96, VirtualReg_17, VirtualReg_103
	j	.main_call_rng_6_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_6_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_6_rng_call_unsigned_shl_0_out
.main_call_rng_6_rng_call_unsigned_shr_1:
	li	VirtualReg_104, 0
	slt	VirtualReg_105, VirtualReg_97, VirtualReg_104
	xori	VirtualReg_105, VirtualReg_105, 1
	bnez	VirtualReg_105, .main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	VirtualReg_106, 17
	sra	VirtualReg_107, VirtualReg_97, VirtualReg_106
	mv	VirtualReg_98, VirtualReg_107
	j	.main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	VirtualReg_108, 31
	li	VirtualReg_109, 17
	sub	VirtualReg_110, VirtualReg_108, VirtualReg_109
	li	VirtualReg_111, 1
	sll	VirtualReg_112, VirtualReg_111, VirtualReg_110
	li	VirtualReg_113, -2147483648
	xor	VirtualReg_114, VirtualReg_97, VirtualReg_113
	li	VirtualReg_115, 17
	sra	VirtualReg_116, VirtualReg_114, VirtualReg_115
	or	VirtualReg_117, VirtualReg_112, VirtualReg_116
	mv	VirtualReg_98, VirtualReg_117
	j	.main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_6_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_6_rng_call_unsigned_shr_1_out
.main_call_rng_6_rng_call_unsigned_shl_2:
	li	VirtualReg_118, 5
	sll	VirtualReg_100, VirtualReg_99, VirtualReg_118
	j	.main_call_rng_6_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_6_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_6_rng_call_unsigned_shl_2_out
.main_call_rng_6_rng_return:
	j	.main_call_rng_6_out
.main_call_rng_7:
	j	.main_call_rng_7_rng_call_unsigned_shl_0
.main_call_rng_7_rng_call_unsigned_shl_0_out:
	xor	VirtualReg_120, VirtualReg_21, VirtualReg_119
	j	.main_call_rng_7_rng_call_unsigned_shr_1
.main_call_rng_7_rng_call_unsigned_shr_1_out:
	xor	VirtualReg_122, VirtualReg_120, VirtualReg_121
	j	.main_call_rng_7_rng_call_unsigned_shl_2
.main_call_rng_7_rng_call_unsigned_shl_2_out:
	xor	VirtualReg_124, VirtualReg_122, VirtualReg_123
	li	VirtualReg_125, 1073741823
	and	VirtualReg_26, VirtualReg_124, VirtualReg_125
	j	.main_call_rng_7_rng_return
.main_call_rng_7_rng_call_unsigned_shl_0:
	li	VirtualReg_126, 13
	sll	VirtualReg_119, VirtualReg_21, VirtualReg_126
	j	.main_call_rng_7_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_7_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_7_rng_call_unsigned_shl_0_out
.main_call_rng_7_rng_call_unsigned_shr_1:
	li	VirtualReg_127, 0
	slt	VirtualReg_128, VirtualReg_120, VirtualReg_127
	xori	VirtualReg_128, VirtualReg_128, 1
	bnez	VirtualReg_128, .main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	VirtualReg_129, 17
	sra	VirtualReg_130, VirtualReg_120, VirtualReg_129
	mv	VirtualReg_121, VirtualReg_130
	j	.main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	VirtualReg_131, 31
	li	VirtualReg_132, 17
	sub	VirtualReg_133, VirtualReg_131, VirtualReg_132
	li	VirtualReg_134, 1
	sll	VirtualReg_135, VirtualReg_134, VirtualReg_133
	li	VirtualReg_136, -2147483648
	xor	VirtualReg_137, VirtualReg_120, VirtualReg_136
	li	VirtualReg_138, 17
	sra	VirtualReg_139, VirtualReg_137, VirtualReg_138
	or	VirtualReg_140, VirtualReg_135, VirtualReg_139
	mv	VirtualReg_121, VirtualReg_140
	j	.main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_7_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_7_rng_call_unsigned_shr_1_out
.main_call_rng_7_rng_call_unsigned_shl_2:
	li	VirtualReg_141, 5
	sll	VirtualReg_123, VirtualReg_122, VirtualReg_141
	j	.main_call_rng_7_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_7_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_7_rng_call_unsigned_shl_2_out
.main_call_rng_7_rng_return:
	j	.main_call_rng_7_out
.main_call_rng_8:
	j	.main_call_rng_8_rng_call_unsigned_shl_0
.main_call_rng_8_rng_call_unsigned_shl_0_out:
	xor	VirtualReg_143, VirtualReg_26, VirtualReg_142
	j	.main_call_rng_8_rng_call_unsigned_shr_1
.main_call_rng_8_rng_call_unsigned_shr_1_out:
	xor	VirtualReg_145, VirtualReg_143, VirtualReg_144
	j	.main_call_rng_8_rng_call_unsigned_shl_2
.main_call_rng_8_rng_call_unsigned_shl_2_out:
	xor	VirtualReg_147, VirtualReg_145, VirtualReg_146
	li	VirtualReg_148, 1073741823
	and	VirtualReg_31, VirtualReg_147, VirtualReg_148
	j	.main_call_rng_8_rng_return
.main_call_rng_8_rng_call_unsigned_shl_0:
	li	VirtualReg_149, 13
	sll	VirtualReg_142, VirtualReg_26, VirtualReg_149
	j	.main_call_rng_8_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_8_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_8_rng_call_unsigned_shl_0_out
.main_call_rng_8_rng_call_unsigned_shr_1:
	li	VirtualReg_150, 0
	slt	VirtualReg_151, VirtualReg_143, VirtualReg_150
	xori	VirtualReg_151, VirtualReg_151, 1
	bnez	VirtualReg_151, .main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	VirtualReg_152, 17
	sra	VirtualReg_153, VirtualReg_143, VirtualReg_152
	mv	VirtualReg_144, VirtualReg_153
	j	.main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	VirtualReg_154, 31
	li	VirtualReg_155, 17
	sub	VirtualReg_156, VirtualReg_154, VirtualReg_155
	li	VirtualReg_157, 1
	sll	VirtualReg_158, VirtualReg_157, VirtualReg_156
	li	VirtualReg_159, -2147483648
	xor	VirtualReg_160, VirtualReg_143, VirtualReg_159
	li	VirtualReg_161, 17
	sra	VirtualReg_162, VirtualReg_160, VirtualReg_161
	or	VirtualReg_163, VirtualReg_158, VirtualReg_162
	mv	VirtualReg_144, VirtualReg_163
	j	.main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_8_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_8_rng_call_unsigned_shr_1_out
.main_call_rng_8_rng_call_unsigned_shl_2:
	li	VirtualReg_164, 5
	sll	VirtualReg_146, VirtualReg_145, VirtualReg_164
	j	.main_call_rng_8_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_8_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_8_rng_call_unsigned_shl_2_out
.main_call_rng_8_rng_return:
	j	.main_call_rng_8_out
.main_call_rng_9:
	j	.main_call_rng_9_rng_call_unsigned_shl_0
.main_call_rng_9_rng_call_unsigned_shl_0_out:
	xor	VirtualReg_166, VirtualReg_31, VirtualReg_165
	j	.main_call_rng_9_rng_call_unsigned_shr_1
.main_call_rng_9_rng_call_unsigned_shr_1_out:
	xor	VirtualReg_168, VirtualReg_166, VirtualReg_167
	j	.main_call_rng_9_rng_call_unsigned_shl_2
.main_call_rng_9_rng_call_unsigned_shl_2_out:
	xor	VirtualReg_170, VirtualReg_168, VirtualReg_169
	li	VirtualReg_171, 1073741823
	and	VirtualReg_36, VirtualReg_170, VirtualReg_171
	j	.main_call_rng_9_rng_return
.main_call_rng_9_rng_call_unsigned_shl_0:
	li	VirtualReg_172, 13
	sll	VirtualReg_165, VirtualReg_31, VirtualReg_172
	j	.main_call_rng_9_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_9_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_9_rng_call_unsigned_shl_0_out
.main_call_rng_9_rng_call_unsigned_shr_1:
	li	VirtualReg_173, 0
	slt	VirtualReg_174, VirtualReg_166, VirtualReg_173
	xori	VirtualReg_174, VirtualReg_174, 1
	bnez	VirtualReg_174, .main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	VirtualReg_175, 17
	sra	VirtualReg_176, VirtualReg_166, VirtualReg_175
	mv	VirtualReg_167, VirtualReg_176
	j	.main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	VirtualReg_177, 31
	li	VirtualReg_178, 17
	sub	VirtualReg_179, VirtualReg_177, VirtualReg_178
	li	VirtualReg_180, 1
	sll	VirtualReg_181, VirtualReg_180, VirtualReg_179
	li	VirtualReg_182, -2147483648
	xor	VirtualReg_183, VirtualReg_166, VirtualReg_182
	li	VirtualReg_184, 17
	sra	VirtualReg_185, VirtualReg_183, VirtualReg_184
	or	VirtualReg_186, VirtualReg_181, VirtualReg_185
	mv	VirtualReg_167, VirtualReg_186
	j	.main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_9_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_9_rng_call_unsigned_shr_1_out
.main_call_rng_9_rng_call_unsigned_shl_2:
	li	VirtualReg_187, 5
	sll	VirtualReg_169, VirtualReg_168, VirtualReg_187
	j	.main_call_rng_9_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_9_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_9_rng_call_unsigned_shl_2_out
.main_call_rng_9_rng_return:
	j	.main_call_rng_9_out
.main_call_rng_10:
	j	.main_call_rng_10_rng_call_unsigned_shl_0
.main_call_rng_10_rng_call_unsigned_shl_0_out:
	xor	VirtualReg_189, VirtualReg_36, VirtualReg_188
	j	.main_call_rng_10_rng_call_unsigned_shr_1
.main_call_rng_10_rng_call_unsigned_shr_1_out:
	xor	VirtualReg_191, VirtualReg_189, VirtualReg_190
	j	.main_call_rng_10_rng_call_unsigned_shl_2
.main_call_rng_10_rng_call_unsigned_shl_2_out:
	xor	VirtualReg_193, VirtualReg_191, VirtualReg_192
	li	VirtualReg_194, 1073741823
	and	VirtualReg_41, VirtualReg_193, VirtualReg_194
	j	.main_call_rng_10_rng_return
.main_call_rng_10_rng_call_unsigned_shl_0:
	li	VirtualReg_195, 13
	sll	VirtualReg_188, VirtualReg_36, VirtualReg_195
	j	.main_call_rng_10_rng_call_unsigned_shl_0_unsigned_shl_return
.main_call_rng_10_rng_call_unsigned_shl_0_unsigned_shl_return:
	j	.main_call_rng_10_rng_call_unsigned_shl_0_out
.main_call_rng_10_rng_call_unsigned_shr_1:
	li	VirtualReg_196, 0
	slt	VirtualReg_197, VirtualReg_189, VirtualReg_196
	xori	VirtualReg_197, VirtualReg_197, 1
	bnez	VirtualReg_197, .main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true
	j	.main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false
.main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_true:
	li	VirtualReg_198, 17
	sra	VirtualReg_199, VirtualReg_189, VirtualReg_198
	mv	VirtualReg_190, VirtualReg_199
	j	.main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_ID8_if_false:
	li	VirtualReg_200, 31
	li	VirtualReg_201, 17
	sub	VirtualReg_202, VirtualReg_200, VirtualReg_201
	li	VirtualReg_203, 1
	sll	VirtualReg_204, VirtualReg_203, VirtualReg_202
	li	VirtualReg_205, -2147483648
	xor	VirtualReg_206, VirtualReg_189, VirtualReg_205
	li	VirtualReg_207, 17
	sra	VirtualReg_208, VirtualReg_206, VirtualReg_207
	or	VirtualReg_209, VirtualReg_204, VirtualReg_208
	mv	VirtualReg_190, VirtualReg_209
	j	.main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_return
.main_call_rng_10_rng_call_unsigned_shr_1_unsigned_shr_return:
	j	.main_call_rng_10_rng_call_unsigned_shr_1_out
.main_call_rng_10_rng_call_unsigned_shl_2:
	li	VirtualReg_210, 5
	sll	VirtualReg_192, VirtualReg_191, VirtualReg_210
	j	.main_call_rng_10_rng_call_unsigned_shl_2_unsigned_shl_return
.main_call_rng_10_rng_call_unsigned_shl_2_unsigned_shl_return:
	j	.main_call_rng_10_rng_call_unsigned_shl_2_out
.main_call_rng_10_rng_return:
	j	.main_call_rng_10_out
.main_call_test_11:
	xor	VirtualReg_211, VirtualReg_23, VirtualReg_25
	sltiu	VirtualReg_211, VirtualReg_211, 1
	bnez	VirtualReg_211, .main_call_test_11_test_ID23_if_true
	j	.main_call_test_11_test_ID23_if_false
.main_call_test_11_test_ID26_OrOr_false:
	xor	VirtualReg_212, VirtualReg_28, VirtualReg_30
	sltiu	VirtualReg_212, VirtualReg_212, 1
	xori	VirtualReg_212, VirtualReg_212, 1
	mv	VirtualReg_213, VirtualReg_212
	j	.main_call_test_11_test_ID26_OrOr_out
.main_call_test_11_test_ID26_OrOr_out:
	bnez	VirtualReg_213, .main_call_test_11_test_ID30_if_true
	j	.main_call_test_11_test_ID30_if_false
.main_call_test_11_test_ID30_if_true:
	mv	a0, VirtualReg_25
	mv	a1, VirtualReg_28
	mv	a2, VirtualReg_30
	mv	a3, VirtualReg_33
	mv	a4, VirtualReg_35
	mv	a5, VirtualReg_38
	mv	a6, VirtualReg_40
	mv	a7, VirtualReg_43
	sw	VirtualReg_45, 0(sp)
	sw	VirtualReg_23, 4(sp)
	call	test
	mv	VirtualReg_214, a0
	li	VirtualReg_215, 1
	add	VirtualReg_216, VirtualReg_214, VirtualReg_215
	mv	VirtualReg_46, VirtualReg_216
	j	.main_call_test_11_test_return
.main_call_test_11_test_ID30_if_false:
	li	VirtualReg_217, 1
	sub	VirtualReg_218, VirtualReg_35, VirtualReg_217
	li	VirtualReg_219, 2
	sub	VirtualReg_220, VirtualReg_38, VirtualReg_219
	mv	a0, VirtualReg_25
	mv	a1, VirtualReg_28
	mv	a2, VirtualReg_30
	mv	a3, VirtualReg_33
	mv	a4, VirtualReg_218
	mv	a5, VirtualReg_220
	mv	a6, VirtualReg_40
	mv	a7, VirtualReg_43
	sw	VirtualReg_45, 0(sp)
	sw	VirtualReg_23, 4(sp)
	call	test
	mv	VirtualReg_221, a0
	li	VirtualReg_222, 2
	add	VirtualReg_223, VirtualReg_221, VirtualReg_222
	mv	VirtualReg_46, VirtualReg_223
	j	.main_call_test_11_test_return
.main_call_test_11_test_ID23_if_true:
	xor	VirtualReg_224, VirtualReg_25, VirtualReg_28
	sltiu	VirtualReg_224, VirtualReg_224, 1
	xori	VirtualReg_224, VirtualReg_224, 1
	bnez	VirtualReg_224, .main_call_test_11_test_ID23_if_true_mid
	j	.main_call_test_11_test_ID26_OrOr_false
.main_call_test_11_test_ID23_if_true_mid:
	li	VirtualReg_229, 1
	mv	VirtualReg_213, VirtualReg_229
	j	.main_call_test_11_test_ID26_OrOr_out
.main_call_test_11_test_ID23_if_false:
	add	VirtualReg_225, VirtualReg_23, VirtualReg_25
	add	VirtualReg_226, VirtualReg_225, VirtualReg_23
	mv	VirtualReg_46, VirtualReg_226
	j	.main_call_test_11_test_return
.main_call_test_11_test_return:
	j	.main_call_test_11_out
.main_return:
	mv	a0, VirtualReg_49
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

