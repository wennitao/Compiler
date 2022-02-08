	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	mv	VirtualReg_0, sp
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
	j	.__init_entry
.__init_entry:
	j	.__init_return
.__init_return:
	mv	sp, VirtualReg_0
	mv	s0, VirtualReg_1
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

	.globl	older
	.p2align	2
	.type	older,@function
older:
.older_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, sp
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
	j	.older_entry
.older_entry:
	li	VirtualReg_15, -12
	add	VirtualReg_15, s0, VirtualReg_15
	sw	VirtualReg_0, 0(VirtualReg_15)
	j	.older_return
.older_return:
	mv	sp, VirtualReg_1
	mv	s0, VirtualReg_2
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

	.globl	classolder_solveAge
	.p2align	2
	.type	classolder_solveAge,@function
classolder_solveAge:
.classolder_solveAge_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, sp
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
	j	.classolder_solveAge_entry
.classolder_solveAge_entry:
	li	VirtualReg_15, -12
	add	VirtualReg_15, s0, VirtualReg_15
	sw	VirtualReg_0, 0(VirtualReg_15)
	li	VirtualReg_17, -12
	add	VirtualReg_17, s0, VirtualReg_17
	lw	VirtualReg_16, 0(VirtualReg_17)
	li	VirtualReg_21, 1
	li	VirtualReg_22, -16
	add	VirtualReg_22, s0, VirtualReg_22
	sw	VirtualReg_21, 0(VirtualReg_22)
	j	.classolder_solveAge_ID6_for_condition
.classolder_solveAge_ID6_for_condition:
	li	VirtualReg_24, -16
	add	VirtualReg_24, s0, VirtualReg_24
	lw	VirtualReg_23, 0(VirtualReg_24)
	li	VirtualReg_25, 100
	slt	fuckLLVM_8, VirtualReg_23, VirtualReg_25
	bnez	fuckLLVM_8, .classolder_solveAge_ID6_for_suite
	j	.classolder_solveAge_ID6_for_out
.classolder_solveAge_ID6_for_suite:
	li	VirtualReg_27, -16
	add	VirtualReg_27, s0, VirtualReg_27
	lw	VirtualReg_26, 0(VirtualReg_27)
	li	VirtualReg_28, 1
	add	fuckLLVM_10, VirtualReg_26, VirtualReg_28
	li	VirtualReg_29, -20
	add	VirtualReg_29, s0, VirtualReg_29
	sw	fuckLLVM_10, 0(VirtualReg_29)
	j	.classolder_solveAge_ID10_for_condition
.classolder_solveAge_ID10_for_condition:
	li	VirtualReg_31, -20
	add	VirtualReg_31, s0, VirtualReg_31
	lw	VirtualReg_30, 0(VirtualReg_31)
	li	VirtualReg_32, 100
	slt	fuckLLVM_12, VirtualReg_30, VirtualReg_32
	bnez	fuckLLVM_12, .classolder_solveAge_ID10_for_suite
	j	.classolder_solveAge_ID10_for_out
.classolder_solveAge_ID10_for_suite:
	li	VirtualReg_34, -20
	add	VirtualReg_34, s0, VirtualReg_34
	lw	VirtualReg_33, 0(VirtualReg_34)
	li	VirtualReg_35, 1
	add	fuckLLVM_14, VirtualReg_33, VirtualReg_35
	li	VirtualReg_36, -24
	add	VirtualReg_36, s0, VirtualReg_36
	sw	fuckLLVM_14, 0(VirtualReg_36)
	j	.classolder_solveAge_ID14_for_condition
.classolder_solveAge_ID14_for_condition:
	li	VirtualReg_38, -24
	add	VirtualReg_38, s0, VirtualReg_38
	lw	VirtualReg_37, 0(VirtualReg_38)
	li	VirtualReg_39, 100
	slt	fuckLLVM_16, VirtualReg_37, VirtualReg_39
	bnez	fuckLLVM_16, .classolder_solveAge_ID14_for_suite
	j	.classolder_solveAge_ID14_for_out
.classolder_solveAge_ID14_for_suite:
	li	VirtualReg_41, -16
	add	VirtualReg_41, s0, VirtualReg_41
	lw	VirtualReg_40, 0(VirtualReg_41)
	li	VirtualReg_43, -16
	add	VirtualReg_43, s0, VirtualReg_43
	lw	VirtualReg_42, 0(VirtualReg_43)
	sub	fuckLLVM_19, VirtualReg_40, VirtualReg_42
	li	VirtualReg_45, -16
	add	VirtualReg_45, s0, VirtualReg_45
	lw	VirtualReg_44, 0(VirtualReg_45)
	add	fuckLLVM_21, fuckLLVM_19, VirtualReg_44
	li	VirtualReg_47, -20
	add	VirtualReg_47, s0, VirtualReg_47
	lw	VirtualReg_46, 0(VirtualReg_47)
	add	fuckLLVM_23, fuckLLVM_21, VirtualReg_46
	li	VirtualReg_49, -20
	add	VirtualReg_49, s0, VirtualReg_49
	lw	VirtualReg_48, 0(VirtualReg_49)
	sub	fuckLLVM_25, fuckLLVM_23, VirtualReg_48
	li	VirtualReg_51, -20
	add	VirtualReg_51, s0, VirtualReg_51
	lw	VirtualReg_50, 0(VirtualReg_51)
	add	fuckLLVM_27, fuckLLVM_25, VirtualReg_50
	li	VirtualReg_53, -24
	add	VirtualReg_53, s0, VirtualReg_53
	lw	VirtualReg_52, 0(VirtualReg_53)
	add	fuckLLVM_29, fuckLLVM_27, VirtualReg_52
	li	VirtualReg_55, -24
	add	VirtualReg_55, s0, VirtualReg_55
	lw	VirtualReg_54, 0(VirtualReg_55)
	sub	fuckLLVM_31, fuckLLVM_29, VirtualReg_54
	li	VirtualReg_57, -24
	add	VirtualReg_57, s0, VirtualReg_57
	lw	VirtualReg_56, 0(VirtualReg_57)
	add	fuckLLVM_33, fuckLLVM_31, VirtualReg_56
	li	VirtualReg_59, -16
	add	VirtualReg_59, s0, VirtualReg_59
	lw	VirtualReg_58, 0(VirtualReg_59)
	li	VirtualReg_60, 100
	mul	fuckLLVM_35, VirtualReg_60, VirtualReg_58
	li	VirtualReg_62, -20
	add	VirtualReg_62, s0, VirtualReg_62
	lw	VirtualReg_61, 0(VirtualReg_62)
	li	VirtualReg_63, 10
	mul	fuckLLVM_37, VirtualReg_63, VirtualReg_61
	add	fuckLLVM_38, fuckLLVM_35, fuckLLVM_37
	li	VirtualReg_65, -24
	add	VirtualReg_65, s0, VirtualReg_65
	lw	VirtualReg_64, 0(VirtualReg_65)
	add	fuckLLVM_40, fuckLLVM_38, VirtualReg_64
	mul	fuckLLVM_41, fuckLLVM_33, fuckLLVM_40
	li	VirtualReg_66, 1926
	rem	fuckLLVM_42, fuckLLVM_41, VirtualReg_66
	li	VirtualReg_67, 0
	xor	fuckLLVM_43, fuckLLVM_42, VirtualReg_67
	sltiu	fuckLLVM_43, fuckLLVM_43, 1
	bnez	fuckLLVM_43, .classolder_solveAge_ID43_if_true
	j	.classolder_solveAge_ID43_if_out
.classolder_solveAge_ID43_if_true:
	addi	VirtualReg_68, VirtualReg_16, 0
	li	VirtualReg_70, -16
	add	VirtualReg_70, s0, VirtualReg_70
	lw	VirtualReg_69, 0(VirtualReg_70)
	li	VirtualReg_72, -16
	add	VirtualReg_72, s0, VirtualReg_72
	lw	VirtualReg_71, 0(VirtualReg_72)
	sub	fuckLLVM_47, VirtualReg_69, VirtualReg_71
	li	VirtualReg_74, -16
	add	VirtualReg_74, s0, VirtualReg_74
	lw	VirtualReg_73, 0(VirtualReg_74)
	add	fuckLLVM_49, fuckLLVM_47, VirtualReg_73
	li	VirtualReg_76, -20
	add	VirtualReg_76, s0, VirtualReg_76
	lw	VirtualReg_75, 0(VirtualReg_76)
	add	fuckLLVM_51, fuckLLVM_49, VirtualReg_75
	li	VirtualReg_78, -20
	add	VirtualReg_78, s0, VirtualReg_78
	lw	VirtualReg_77, 0(VirtualReg_78)
	sub	fuckLLVM_53, fuckLLVM_51, VirtualReg_77
	li	VirtualReg_80, -20
	add	VirtualReg_80, s0, VirtualReg_80
	lw	VirtualReg_79, 0(VirtualReg_80)
	add	fuckLLVM_55, fuckLLVM_53, VirtualReg_79
	li	VirtualReg_82, -24
	add	VirtualReg_82, s0, VirtualReg_82
	lw	VirtualReg_81, 0(VirtualReg_82)
	add	fuckLLVM_57, fuckLLVM_55, VirtualReg_81
	li	VirtualReg_84, -24
	add	VirtualReg_84, s0, VirtualReg_84
	lw	VirtualReg_83, 0(VirtualReg_84)
	sub	fuckLLVM_59, fuckLLVM_57, VirtualReg_83
	li	VirtualReg_86, -24
	add	VirtualReg_86, s0, VirtualReg_86
	lw	VirtualReg_85, 0(VirtualReg_86)
	add	fuckLLVM_61, fuckLLVM_59, VirtualReg_85
	li	VirtualReg_88, -16
	add	VirtualReg_88, s0, VirtualReg_88
	lw	VirtualReg_87, 0(VirtualReg_88)
	li	VirtualReg_89, 100
	mul	fuckLLVM_63, VirtualReg_89, VirtualReg_87
	li	VirtualReg_91, -20
	add	VirtualReg_91, s0, VirtualReg_91
	lw	VirtualReg_90, 0(VirtualReg_91)
	li	VirtualReg_92, 10
	mul	fuckLLVM_65, VirtualReg_92, VirtualReg_90
	add	fuckLLVM_66, fuckLLVM_63, fuckLLVM_65
	li	VirtualReg_94, -24
	add	VirtualReg_94, s0, VirtualReg_94
	lw	VirtualReg_93, 0(VirtualReg_94)
	add	fuckLLVM_68, fuckLLVM_66, VirtualReg_93
	mul	fuckLLVM_69, fuckLLVM_61, fuckLLVM_68
	sw	fuckLLVM_69, 0(VirtualReg_68)
	j	.classolder_solveAge_ID43_if_out
.classolder_solveAge_ID43_if_out:
	j	.classolder_solveAge_ID14_for_incr
.classolder_solveAge_ID14_for_incr:
	li	VirtualReg_96, -24
	add	VirtualReg_96, s0, VirtualReg_96
	lw	VirtualReg_95, 0(VirtualReg_96)
	li	VirtualReg_97, 1
	add	fuckLLVM_71, VirtualReg_95, VirtualReg_97
	li	VirtualReg_98, -24
	add	VirtualReg_98, s0, VirtualReg_98
	sw	fuckLLVM_71, 0(VirtualReg_98)
	j	.classolder_solveAge_ID14_for_condition
.classolder_solveAge_ID14_for_out:
	j	.classolder_solveAge_ID10_for_incr
.classolder_solveAge_ID10_for_incr:
	li	VirtualReg_100, -20
	add	VirtualReg_100, s0, VirtualReg_100
	lw	VirtualReg_99, 0(VirtualReg_100)
	li	VirtualReg_101, 1
	add	fuckLLVM_73, VirtualReg_99, VirtualReg_101
	li	VirtualReg_102, -20
	add	VirtualReg_102, s0, VirtualReg_102
	sw	fuckLLVM_73, 0(VirtualReg_102)
	j	.classolder_solveAge_ID10_for_condition
.classolder_solveAge_ID10_for_out:
	j	.classolder_solveAge_ID6_for_incr
.classolder_solveAge_ID6_for_incr:
	li	VirtualReg_104, -16
	add	VirtualReg_104, s0, VirtualReg_104
	lw	VirtualReg_103, 0(VirtualReg_104)
	li	VirtualReg_105, 1
	add	fuckLLVM_75, VirtualReg_103, VirtualReg_105
	li	VirtualReg_106, -16
	add	VirtualReg_106, s0, VirtualReg_106
	sw	fuckLLVM_75, 0(VirtualReg_106)
	j	.classolder_solveAge_ID6_for_condition
.classolder_solveAge_ID6_for_out:
	j	.classolder_solveAge_return
.classolder_solveAge_return:
	mv	sp, VirtualReg_1
	mv	s0, VirtualReg_2
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
	mv	VirtualReg_0, sp
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
	j	.main_entry
.main_entry:
	call	__init
	li	VirtualReg_14, 0
	li	VirtualReg_15, -12
	add	VirtualReg_15, s0, VirtualReg_15
	sw	VirtualReg_14, 0(VirtualReg_15)
	li	VirtualReg_17, 4
	mv	a0, VirtualReg_17
	call	malloc
	mv	VirtualReg_18, a0
	mv	a0, VirtualReg_18
	call	older
	li	VirtualReg_19, -16
	add	VirtualReg_19, s0, VirtualReg_19
	sw	VirtualReg_18, 0(VirtualReg_19)
	li	VirtualReg_21, -16
	add	VirtualReg_21, s0, VirtualReg_21
	lw	VirtualReg_20, 0(VirtualReg_21)
	mv	a0, VirtualReg_20
	call	classolder_solveAge
	li	VirtualReg_23, -16
	add	VirtualReg_23, s0, VirtualReg_23
	lw	VirtualReg_22, 0(VirtualReg_23)
	addi	VirtualReg_24, VirtualReg_22, 0
	lw	VirtualReg_25, 0(VirtualReg_24)
	li	VirtualReg_26, 10000
	slt	fuckLLVM_10, VirtualReg_26, VirtualReg_25
	bnez	fuckLLVM_10, .main_ID10_if_true
	j	.main_ID10_if_out
.main_ID10_if_true:
	la	VirtualReg_27, fuckLLVM_.str.0
	mv	a0, VirtualReg_27
	call	println
	j	.main_ID10_if_out
.main_ID10_if_out:
	li	VirtualReg_28, 0
	li	VirtualReg_29, -12
	add	VirtualReg_29, s0, VirtualReg_29
	sw	VirtualReg_28, 0(VirtualReg_29)
	j	.main_return
.main_return:
	li	VirtualReg_31, -12
	add	VirtualReg_31, s0, VirtualReg_31
	lw	VirtualReg_30, 0(VirtualReg_31)
	mv	a0, VirtualReg_30
	mv	sp, VirtualReg_0
	mv	s0, VirtualReg_1
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

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"eternal! "
	.size	fuckLLVM_.str.0, 9

