	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
.__init_entry:
	j	.__init_return
.__init_return:

	.globl	Edge
	.p2align	2
	.type	Edge,@function
Edge:
.Edge_assemblyInit:
	mv	VirtualReg_0, a0
.Edge:
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_0, 0(VirtualReg_2)
	j	.Edge_return
.Edge_return:

	.globl	qsort
	.p2align	2
	.type	qsort,@function
qsort:
.qsort_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
.qsort_entry:
	li	VirtualReg_4, -12
	add	VirtualReg_4, s0, VirtualReg_4
	sw	VirtualReg_0, 0(VirtualReg_4)
	li	VirtualReg_6, -16
	add	VirtualReg_6, s0, VirtualReg_6
	sw	VirtualReg_1, 0(VirtualReg_6)
	li	VirtualReg_8, -20
	add	VirtualReg_8, s0, VirtualReg_8
	sw	VirtualReg_2, 0(VirtualReg_8)
	li	VirtualReg_10, -16
	add	VirtualReg_10, s0, VirtualReg_10
	lw	VirtualReg_9, 0(VirtualReg_10)
	li	VirtualReg_12, -20
	add	VirtualReg_12, s0, VirtualReg_12
	lw	VirtualReg_11, 0(VirtualReg_12)
	slt	fuckLLVM_9, VirtualReg_9, VirtualReg_11
	bnez	fuckLLVM_9, .qsort_ID9_if_true
	j	.qsort_ID9_if_out
.qsort_ID20_while_condition:
	li	VirtualReg_15, -24
	add	VirtualReg_15, s0, VirtualReg_15
	lw	VirtualReg_13, 0(VirtualReg_15)
	li	VirtualReg_18, -28
	add	VirtualReg_18, s0, VirtualReg_18
	lw	VirtualReg_16, 0(VirtualReg_18)
	slt	fuckLLVM_22, VirtualReg_13, VirtualReg_16
	bnez	fuckLLVM_22, .qsort_ID23_while_suite
	j	.qsort_ID23_while_out
.qsort_ID25_AndAnd_true:
	li	VirtualReg_20, -12
	add	VirtualReg_20, s0, VirtualReg_20
	lw	VirtualReg_19, 0(VirtualReg_20)
	li	VirtualReg_22, -28
	add	VirtualReg_22, s0, VirtualReg_22
	lw	VirtualReg_21, 0(VirtualReg_22)
	li	VirtualReg_25, 12
	mul	VirtualReg_24, VirtualReg_21, VirtualReg_25
	add	VirtualReg_23, VirtualReg_19, VirtualReg_24
	lw	VirtualReg_26, 0(VirtualReg_23)
	addi	VirtualReg_27, VirtualReg_26, 8
	lw	VirtualReg_28, 0(VirtualReg_27)
	li	VirtualReg_31, -32
	add	VirtualReg_31, s0, VirtualReg_31
	lw	VirtualReg_29, 0(VirtualReg_31)
	addi	VirtualReg_32, VirtualReg_29, 8
	lw	VirtualReg_33, 0(VirtualReg_32)
	slt	fuckLLVM_35, VirtualReg_28, VirtualReg_33
	xori	fuckLLVM_35, fuckLLVM_35, 1
	mv	VirtualReg_34, fuckLLVM_35
	j	.qsort_ID25_AndAnd_out
.qsort_ID25_AndAnd_out:
	bnez	VirtualReg_34, .qsort_ID37_while_suite
	j	.qsort_ID37_while_out
.qsort_ID23_while_condition:
	li	VirtualReg_36, -24
	add	VirtualReg_36, s0, VirtualReg_36
	lw	VirtualReg_35, 0(VirtualReg_36)
	li	VirtualReg_38, -28
	add	VirtualReg_38, s0, VirtualReg_38
	lw	VirtualReg_37, 0(VirtualReg_38)
	slt	fuckLLVM_25, VirtualReg_35, VirtualReg_37
	li	VirtualReg_150, 0
	mv	VirtualReg_34, VirtualReg_150
	bnez	fuckLLVM_25, .qsort_ID25_AndAnd_true
	mv	VirtualReg_34, VirtualReg_150
	j	.qsort_ID25_AndAnd_out
.qsort_ID37_while_suite:
	li	VirtualReg_40, -28
	add	VirtualReg_40, s0, VirtualReg_40
	lw	VirtualReg_39, 0(VirtualReg_40)
	li	VirtualReg_41, 1
	sub	fuckLLVM_38, VirtualReg_39, VirtualReg_41
	li	VirtualReg_42, -28
	add	VirtualReg_42, s0, VirtualReg_42
	sw	fuckLLVM_38, 0(VirtualReg_42)
	j	.qsort_ID23_while_condition
.qsort_ID37_while_out:
	li	VirtualReg_44, -24
	add	VirtualReg_44, s0, VirtualReg_44
	lw	VirtualReg_43, 0(VirtualReg_44)
	li	VirtualReg_46, -28
	add	VirtualReg_46, s0, VirtualReg_46
	lw	VirtualReg_45, 0(VirtualReg_46)
	slt	fuckLLVM_41, VirtualReg_43, VirtualReg_45
	bnez	fuckLLVM_41, .qsort_ID41_if_true
	j	.qsort_ID41_if_out
.qsort_ID41_if_true:
	li	VirtualReg_48, -12
	add	VirtualReg_48, s0, VirtualReg_48
	lw	VirtualReg_47, 0(VirtualReg_48)
	li	VirtualReg_50, -24
	add	VirtualReg_50, s0, VirtualReg_50
	lw	VirtualReg_49, 0(VirtualReg_50)
	li	VirtualReg_53, 12
	mul	VirtualReg_52, VirtualReg_49, VirtualReg_53
	add	VirtualReg_51, VirtualReg_47, VirtualReg_52
	li	VirtualReg_55, -12
	add	VirtualReg_55, s0, VirtualReg_55
	lw	VirtualReg_54, 0(VirtualReg_55)
	li	VirtualReg_57, -28
	add	VirtualReg_57, s0, VirtualReg_57
	lw	VirtualReg_56, 0(VirtualReg_57)
	li	VirtualReg_60, 12
	mul	VirtualReg_59, VirtualReg_56, VirtualReg_60
	add	VirtualReg_58, VirtualReg_54, VirtualReg_59
	lw	VirtualReg_61, 0(VirtualReg_58)
	sw	VirtualReg_61, 0(VirtualReg_51)
	li	VirtualReg_63, -24
	add	VirtualReg_63, s0, VirtualReg_63
	lw	VirtualReg_62, 0(VirtualReg_63)
	li	VirtualReg_64, 1
	add	fuckLLVM_50, VirtualReg_62, VirtualReg_64
	li	VirtualReg_65, -24
	add	VirtualReg_65, s0, VirtualReg_65
	sw	fuckLLVM_50, 0(VirtualReg_65)
	j	.qsort_ID41_if_out
.qsort_ID41_if_out:
	j	.qsort_ID51_while_condition
.qsort_ID53_AndAnd_true:
	li	VirtualReg_67, -12
	add	VirtualReg_67, s0, VirtualReg_67
	lw	VirtualReg_66, 0(VirtualReg_67)
	li	VirtualReg_69, -24
	add	VirtualReg_69, s0, VirtualReg_69
	lw	VirtualReg_68, 0(VirtualReg_69)
	li	VirtualReg_72, 12
	mul	VirtualReg_71, VirtualReg_68, VirtualReg_72
	add	VirtualReg_70, VirtualReg_66, VirtualReg_71
	lw	VirtualReg_73, 0(VirtualReg_70)
	addi	VirtualReg_74, VirtualReg_73, 8
	lw	VirtualReg_75, 0(VirtualReg_74)
	li	VirtualReg_77, -32
	add	VirtualReg_77, s0, VirtualReg_77
	lw	VirtualReg_76, 0(VirtualReg_77)
	addi	VirtualReg_78, VirtualReg_76, 8
	lw	VirtualReg_79, 0(VirtualReg_78)
	slt	fuckLLVM_63, VirtualReg_75, VirtualReg_79
	mv	VirtualReg_80, fuckLLVM_63
	j	.qsort_ID53_AndAnd_out
.qsort_ID53_AndAnd_out:
	bnez	VirtualReg_80, .qsort_ID65_while_suite
	j	.qsort_ID65_while_out
.qsort_ID51_while_condition:
	li	VirtualReg_82, -24
	add	VirtualReg_82, s0, VirtualReg_82
	lw	VirtualReg_81, 0(VirtualReg_82)
	li	VirtualReg_84, -28
	add	VirtualReg_84, s0, VirtualReg_84
	lw	VirtualReg_83, 0(VirtualReg_84)
	slt	fuckLLVM_53, VirtualReg_81, VirtualReg_83
	li	VirtualReg_151, 0
	mv	VirtualReg_80, VirtualReg_151
	bnez	fuckLLVM_53, .qsort_ID53_AndAnd_true
	mv	VirtualReg_80, VirtualReg_151
	j	.qsort_ID53_AndAnd_out
.qsort_ID65_while_suite:
	li	VirtualReg_86, -24
	add	VirtualReg_86, s0, VirtualReg_86
	lw	VirtualReg_85, 0(VirtualReg_86)
	li	VirtualReg_87, 1
	add	fuckLLVM_66, VirtualReg_85, VirtualReg_87
	li	VirtualReg_88, -24
	add	VirtualReg_88, s0, VirtualReg_88
	sw	fuckLLVM_66, 0(VirtualReg_88)
	j	.qsort_ID51_while_condition
.qsort_ID65_while_out:
	li	VirtualReg_90, -24
	add	VirtualReg_90, s0, VirtualReg_90
	lw	VirtualReg_89, 0(VirtualReg_90)
	li	VirtualReg_92, -28
	add	VirtualReg_92, s0, VirtualReg_92
	lw	VirtualReg_91, 0(VirtualReg_92)
	slt	fuckLLVM_69, VirtualReg_89, VirtualReg_91
	bnez	fuckLLVM_69, .qsort_ID69_if_true
	j	.qsort_ID69_if_out
.qsort_ID69_if_true:
	li	VirtualReg_94, -12
	add	VirtualReg_94, s0, VirtualReg_94
	lw	VirtualReg_93, 0(VirtualReg_94)
	li	VirtualReg_96, -28
	add	VirtualReg_96, s0, VirtualReg_96
	lw	VirtualReg_95, 0(VirtualReg_96)
	li	VirtualReg_99, 12
	mul	VirtualReg_98, VirtualReg_95, VirtualReg_99
	add	VirtualReg_97, VirtualReg_93, VirtualReg_98
	li	VirtualReg_101, -12
	add	VirtualReg_101, s0, VirtualReg_101
	lw	VirtualReg_100, 0(VirtualReg_101)
	li	VirtualReg_103, -24
	add	VirtualReg_103, s0, VirtualReg_103
	lw	VirtualReg_102, 0(VirtualReg_103)
	li	VirtualReg_106, 12
	mul	VirtualReg_105, VirtualReg_102, VirtualReg_106
	add	VirtualReg_104, VirtualReg_100, VirtualReg_105
	lw	VirtualReg_107, 0(VirtualReg_104)
	sw	VirtualReg_107, 0(VirtualReg_97)
	li	VirtualReg_109, -28
	add	VirtualReg_109, s0, VirtualReg_109
	lw	VirtualReg_108, 0(VirtualReg_109)
	li	VirtualReg_110, 1
	sub	fuckLLVM_78, VirtualReg_108, VirtualReg_110
	li	VirtualReg_111, -28
	add	VirtualReg_111, s0, VirtualReg_111
	sw	fuckLLVM_78, 0(VirtualReg_111)
	j	.qsort_ID69_if_out
.qsort_ID69_if_out:
	j	.qsort_ID20_while_condition
.qsort_ID23_while_suite:
	j	.qsort_ID23_while_condition
.qsort_ID23_while_out:
	li	VirtualReg_113, -12
	add	VirtualReg_113, s0, VirtualReg_113
	lw	VirtualReg_112, 0(VirtualReg_113)
	li	VirtualReg_115, -24
	add	VirtualReg_115, s0, VirtualReg_115
	lw	VirtualReg_114, 0(VirtualReg_115)
	li	VirtualReg_118, 12
	mul	VirtualReg_117, VirtualReg_114, VirtualReg_118
	add	VirtualReg_116, VirtualReg_112, VirtualReg_117
	li	VirtualReg_120, -32
	add	VirtualReg_120, s0, VirtualReg_120
	lw	VirtualReg_119, 0(VirtualReg_120)
	sw	VirtualReg_119, 0(VirtualReg_116)
	li	VirtualReg_122, -12
	add	VirtualReg_122, s0, VirtualReg_122
	lw	VirtualReg_121, 0(VirtualReg_122)
	li	VirtualReg_124, -16
	add	VirtualReg_124, s0, VirtualReg_124
	lw	VirtualReg_123, 0(VirtualReg_124)
	li	VirtualReg_126, -24
	add	VirtualReg_126, s0, VirtualReg_126
	lw	VirtualReg_125, 0(VirtualReg_126)
	li	VirtualReg_127, 1
	sub	fuckLLVM_88, VirtualReg_125, VirtualReg_127
	mv	a0, VirtualReg_121
	mv	a1, VirtualReg_123
	mv	a2, fuckLLVM_88
	call	qsort
	li	VirtualReg_129, -12
	add	VirtualReg_129, s0, VirtualReg_129
	lw	VirtualReg_128, 0(VirtualReg_129)
	li	VirtualReg_131, -24
	add	VirtualReg_131, s0, VirtualReg_131
	lw	VirtualReg_130, 0(VirtualReg_131)
	li	VirtualReg_132, 1
	add	fuckLLVM_93, VirtualReg_130, VirtualReg_132
	li	VirtualReg_134, -20
	add	VirtualReg_134, s0, VirtualReg_134
	lw	VirtualReg_133, 0(VirtualReg_134)
	mv	a0, VirtualReg_128
	mv	a1, fuckLLVM_93
	mv	a2, VirtualReg_133
	call	qsort
	j	.qsort_ID9_if_out
.qsort_ID9_if_true:
	li	VirtualReg_136, -16
	add	VirtualReg_136, s0, VirtualReg_136
	lw	VirtualReg_135, 0(VirtualReg_136)
	li	VirtualReg_137, -24
	add	VirtualReg_137, s0, VirtualReg_137
	sw	VirtualReg_135, 0(VirtualReg_137)
	li	VirtualReg_139, -20
	add	VirtualReg_139, s0, VirtualReg_139
	lw	VirtualReg_138, 0(VirtualReg_139)
	li	VirtualReg_140, -28
	add	VirtualReg_140, s0, VirtualReg_140
	sw	VirtualReg_138, 0(VirtualReg_140)
	li	VirtualReg_142, -12
	add	VirtualReg_142, s0, VirtualReg_142
	lw	VirtualReg_141, 0(VirtualReg_142)
	li	VirtualReg_144, -16
	add	VirtualReg_144, s0, VirtualReg_144
	lw	VirtualReg_143, 0(VirtualReg_144)
	li	VirtualReg_147, 12
	mul	VirtualReg_146, VirtualReg_143, VirtualReg_147
	add	VirtualReg_145, VirtualReg_141, VirtualReg_146
	lw	VirtualReg_148, 0(VirtualReg_145)
	li	VirtualReg_149, -32
	add	VirtualReg_149, s0, VirtualReg_149
	sw	VirtualReg_148, 0(VirtualReg_149)
	j	.qsort_ID20_while_condition
.qsort_ID9_if_out:
	j	.qsort_return
.qsort_return:

	.globl	init
	.p2align	2
	.type	init,@function
init:
.init_assemblyInit:
.init_entry:
	lw	VirtualReg_0, fuckLLVM_n
	li	VirtualReg_1, 1
	add	fuckLLVM_2, VirtualReg_0, VirtualReg_1
	li	VirtualReg_2, 4
	mul	fuckLLVM_4, fuckLLVM_2, VirtualReg_2
	li	VirtualReg_3, 4
	add	fuckLLVM_5, fuckLLVM_4, VirtualReg_3
	mv	a0, fuckLLVM_5
	call	malloc
	mv	VirtualReg_4, a0
	sw	fuckLLVM_2, 0(VirtualReg_4)
	li	VirtualReg_7, 1
	li	VirtualReg_8, 4
	mul	VirtualReg_6, VirtualReg_7, VirtualReg_8
	add	VirtualReg_5, VirtualReg_4, VirtualReg_6
	sw	VirtualReg_5, fuckLLVM_fa, VirtualReg_9
	lw	VirtualReg_10, fuckLLVM_n
	li	VirtualReg_11, 1
	add	fuckLLVM_12, VirtualReg_10, VirtualReg_11
	li	VirtualReg_12, 4
	mul	fuckLLVM_14, fuckLLVM_12, VirtualReg_12
	li	VirtualReg_13, 4
	add	fuckLLVM_15, fuckLLVM_14, VirtualReg_13
	mv	a0, fuckLLVM_15
	call	malloc
	mv	VirtualReg_14, a0
	sw	fuckLLVM_12, 0(VirtualReg_14)
	li	VirtualReg_17, 1
	li	VirtualReg_18, 4
	mul	VirtualReg_16, VirtualReg_17, VirtualReg_18
	add	VirtualReg_15, VirtualReg_14, VirtualReg_16
	sw	VirtualReg_15, fuckLLVM_rk, VirtualReg_19
	li	VirtualReg_21, 1
	li	VirtualReg_22, -12
	add	VirtualReg_22, s0, VirtualReg_22
	sw	VirtualReg_21, 0(VirtualReg_22)
	j	.init_ID21_for_condition
.init_ID21_for_condition:
	li	VirtualReg_24, -12
	add	VirtualReg_24, s0, VirtualReg_24
	lw	VirtualReg_23, 0(VirtualReg_24)
	lw	VirtualReg_25, fuckLLVM_n
	slt	fuckLLVM_24, VirtualReg_25, VirtualReg_23
	xori	fuckLLVM_24, fuckLLVM_24, 1
	bnez	fuckLLVM_24, .init_ID21_for_suite
	j	.init_ID21_for_out
.init_ID21_for_suite:
	lw	VirtualReg_26, fuckLLVM_fa
	li	VirtualReg_28, -12
	add	VirtualReg_28, s0, VirtualReg_28
	lw	VirtualReg_27, 0(VirtualReg_28)
	li	VirtualReg_31, 4
	mul	VirtualReg_30, VirtualReg_27, VirtualReg_31
	add	VirtualReg_29, VirtualReg_26, VirtualReg_30
	li	VirtualReg_33, -12
	add	VirtualReg_33, s0, VirtualReg_33
	lw	VirtualReg_32, 0(VirtualReg_33)
	sw	VirtualReg_32, 0(VirtualReg_29)
	lw	VirtualReg_34, fuckLLVM_rk
	li	VirtualReg_36, -12
	add	VirtualReg_36, s0, VirtualReg_36
	lw	VirtualReg_35, 0(VirtualReg_36)
	li	VirtualReg_39, 4
	mul	VirtualReg_38, VirtualReg_35, VirtualReg_39
	add	VirtualReg_37, VirtualReg_34, VirtualReg_38
	li	VirtualReg_40, 1
	sw	VirtualReg_40, 0(VirtualReg_37)
	j	.init_ID21_for_incr
.init_ID21_for_incr:
	li	VirtualReg_42, -12
	add	VirtualReg_42, s0, VirtualReg_42
	lw	VirtualReg_41, 0(VirtualReg_42)
	li	VirtualReg_43, 1
	add	fuckLLVM_33, VirtualReg_41, VirtualReg_43
	li	VirtualReg_44, -12
	add	VirtualReg_44, s0, VirtualReg_44
	sw	fuckLLVM_33, 0(VirtualReg_44)
	j	.init_ID21_for_condition
.init_ID21_for_out:
	j	.init_return
.init_return:

	.globl	find
	.p2align	2
	.type	find,@function
find:
.find_assemblyInit:
	mv	VirtualReg_0, a0
.find_entry:
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_0, 0(VirtualReg_2)
	li	VirtualReg_5, -12
	add	VirtualReg_5, s0, VirtualReg_5
	lw	VirtualReg_4, 0(VirtualReg_5)
	lw	VirtualReg_6, fuckLLVM_fa
	li	VirtualReg_8, -12
	add	VirtualReg_8, s0, VirtualReg_8
	lw	VirtualReg_7, 0(VirtualReg_8)
	li	VirtualReg_11, 4
	mul	VirtualReg_10, VirtualReg_7, VirtualReg_11
	add	VirtualReg_9, VirtualReg_6, VirtualReg_10
	lw	VirtualReg_12, 0(VirtualReg_9)
	xor	fuckLLVM_8, VirtualReg_4, VirtualReg_12
	sltiu	fuckLLVM_8, fuckLLVM_8, 1
	bnez	fuckLLVM_8, .find_ID8_if_true
	j	.find_ID8_if_out
.find_ID8_if_true:
	li	VirtualReg_14, -12
	add	VirtualReg_14, s0, VirtualReg_14
	lw	VirtualReg_13, 0(VirtualReg_14)
	li	VirtualReg_15, -16
	add	VirtualReg_15, s0, VirtualReg_15
	sw	VirtualReg_13, 0(VirtualReg_15)
	j	.find_return
	j	.find_ID8_if_out
.find_ID8_if_out:
	lw	VirtualReg_16, fuckLLVM_fa
	li	VirtualReg_18, -12
	add	VirtualReg_18, s0, VirtualReg_18
	lw	VirtualReg_17, 0(VirtualReg_18)
	li	VirtualReg_21, 4
	mul	VirtualReg_20, VirtualReg_17, VirtualReg_21
	add	VirtualReg_19, VirtualReg_16, VirtualReg_20
	lw	VirtualReg_22, 0(VirtualReg_19)
	mv	a0, VirtualReg_22
	call	find
	mv	VirtualReg_23, a0
	li	VirtualReg_24, -12
	add	VirtualReg_24, s0, VirtualReg_24
	sw	VirtualReg_23, 0(VirtualReg_24)
	lw	VirtualReg_25, fuckLLVM_fa
	li	VirtualReg_27, -12
	add	VirtualReg_27, s0, VirtualReg_27
	lw	VirtualReg_26, 0(VirtualReg_27)
	li	VirtualReg_30, 4
	mul	VirtualReg_29, VirtualReg_26, VirtualReg_30
	add	VirtualReg_28, VirtualReg_25, VirtualReg_29
	lw	VirtualReg_31, 0(VirtualReg_28)
	li	VirtualReg_32, -16
	add	VirtualReg_32, s0, VirtualReg_32
	sw	VirtualReg_31, 0(VirtualReg_32)
	j	.find_return
	j	.find_return
.find_return:
	li	VirtualReg_34, -16
	add	VirtualReg_34, s0, VirtualReg_34
	lw	VirtualReg_33, 0(VirtualReg_34)
	mv	a0, VirtualReg_33

	.globl	union
	.p2align	2
	.type	union,@function
union:
.union_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
.union_entry:
	li	VirtualReg_3, -12
	add	VirtualReg_3, s0, VirtualReg_3
	sw	VirtualReg_0, 0(VirtualReg_3)
	li	VirtualReg_5, -16
	add	VirtualReg_5, s0, VirtualReg_5
	sw	VirtualReg_1, 0(VirtualReg_5)
	li	VirtualReg_8, -12
	add	VirtualReg_8, s0, VirtualReg_8
	lw	VirtualReg_7, 0(VirtualReg_8)
	mv	a0, VirtualReg_7
	call	find
	mv	VirtualReg_9, a0
	li	VirtualReg_10, -12
	add	VirtualReg_10, s0, VirtualReg_10
	sw	VirtualReg_9, 0(VirtualReg_10)
	li	VirtualReg_12, -16
	add	VirtualReg_12, s0, VirtualReg_12
	lw	VirtualReg_11, 0(VirtualReg_12)
	mv	a0, VirtualReg_11
	call	find
	mv	VirtualReg_13, a0
	li	VirtualReg_14, -16
	add	VirtualReg_14, s0, VirtualReg_14
	sw	VirtualReg_13, 0(VirtualReg_14)
	li	VirtualReg_16, -12
	add	VirtualReg_16, s0, VirtualReg_16
	lw	VirtualReg_15, 0(VirtualReg_16)
	li	VirtualReg_18, -16
	add	VirtualReg_18, s0, VirtualReg_18
	lw	VirtualReg_17, 0(VirtualReg_18)
	xor	fuckLLVM_11, VirtualReg_15, VirtualReg_17
	sltiu	fuckLLVM_11, fuckLLVM_11, 1
	bnez	fuckLLVM_11, .union_ID11_if_true
	j	.union_ID11_if_out
.union_ID11_if_true:
	li	VirtualReg_19, 0
	li	VirtualReg_20, -20
	add	VirtualReg_20, s0, VirtualReg_20
	sb	VirtualReg_19, 0(VirtualReg_20)
	j	.union_return
	j	.union_ID11_if_out
.union_ID11_if_out:
	lw	VirtualReg_21, fuckLLVM_rk
	li	VirtualReg_23, -12
	add	VirtualReg_23, s0, VirtualReg_23
	lw	VirtualReg_22, 0(VirtualReg_23)
	li	VirtualReg_26, 4
	mul	VirtualReg_25, VirtualReg_22, VirtualReg_26
	add	VirtualReg_24, VirtualReg_21, VirtualReg_25
	lw	VirtualReg_27, 0(VirtualReg_24)
	lw	VirtualReg_28, fuckLLVM_rk
	li	VirtualReg_30, -16
	add	VirtualReg_30, s0, VirtualReg_30
	lw	VirtualReg_29, 0(VirtualReg_30)
	li	VirtualReg_33, 4
	mul	VirtualReg_32, VirtualReg_29, VirtualReg_33
	add	VirtualReg_31, VirtualReg_28, VirtualReg_32
	lw	VirtualReg_34, 0(VirtualReg_31)
	slt	fuckLLVM_20, VirtualReg_34, VirtualReg_27
	bnez	fuckLLVM_20, .union_ID20_if_true
	j	.union_ID20_if_false
.union_ID20_if_true:
	lw	VirtualReg_35, fuckLLVM_fa
	li	VirtualReg_37, -16
	add	VirtualReg_37, s0, VirtualReg_37
	lw	VirtualReg_36, 0(VirtualReg_37)
	li	VirtualReg_40, 4
	mul	VirtualReg_39, VirtualReg_36, VirtualReg_40
	add	VirtualReg_38, VirtualReg_35, VirtualReg_39
	li	VirtualReg_42, -12
	add	VirtualReg_42, s0, VirtualReg_42
	lw	VirtualReg_41, 0(VirtualReg_42)
	sw	VirtualReg_41, 0(VirtualReg_38)
	lw	VirtualReg_43, fuckLLVM_rk
	li	VirtualReg_45, -12
	add	VirtualReg_45, s0, VirtualReg_45
	lw	VirtualReg_44, 0(VirtualReg_45)
	li	VirtualReg_48, 4
	mul	VirtualReg_47, VirtualReg_44, VirtualReg_48
	add	VirtualReg_46, VirtualReg_43, VirtualReg_47
	lw	VirtualReg_49, fuckLLVM_rk
	li	VirtualReg_51, -12
	add	VirtualReg_51, s0, VirtualReg_51
	lw	VirtualReg_50, 0(VirtualReg_51)
	li	VirtualReg_54, 4
	mul	VirtualReg_53, VirtualReg_50, VirtualReg_54
	add	VirtualReg_52, VirtualReg_49, VirtualReg_53
	lw	VirtualReg_55, 0(VirtualReg_52)
	lw	VirtualReg_56, fuckLLVM_rk
	li	VirtualReg_58, -16
	add	VirtualReg_58, s0, VirtualReg_58
	lw	VirtualReg_57, 0(VirtualReg_58)
	li	VirtualReg_61, 4
	mul	VirtualReg_60, VirtualReg_57, VirtualReg_61
	add	VirtualReg_59, VirtualReg_56, VirtualReg_60
	lw	VirtualReg_62, 0(VirtualReg_59)
	add	fuckLLVM_36, VirtualReg_55, VirtualReg_62
	sw	fuckLLVM_36, 0(VirtualReg_46)
	j	.union_ID20_if_out
.union_ID20_if_false:
	lw	VirtualReg_63, fuckLLVM_fa
	li	VirtualReg_65, -12
	add	VirtualReg_65, s0, VirtualReg_65
	lw	VirtualReg_64, 0(VirtualReg_65)
	li	VirtualReg_68, 4
	mul	VirtualReg_67, VirtualReg_64, VirtualReg_68
	add	VirtualReg_66, VirtualReg_63, VirtualReg_67
	li	VirtualReg_70, -16
	add	VirtualReg_70, s0, VirtualReg_70
	lw	VirtualReg_69, 0(VirtualReg_70)
	sw	VirtualReg_69, 0(VirtualReg_66)
	lw	VirtualReg_71, fuckLLVM_rk
	li	VirtualReg_73, -16
	add	VirtualReg_73, s0, VirtualReg_73
	lw	VirtualReg_72, 0(VirtualReg_73)
	li	VirtualReg_76, 4
	mul	VirtualReg_75, VirtualReg_72, VirtualReg_76
	add	VirtualReg_74, VirtualReg_71, VirtualReg_75
	lw	VirtualReg_77, fuckLLVM_rk
	li	VirtualReg_79, -16
	add	VirtualReg_79, s0, VirtualReg_79
	lw	VirtualReg_78, 0(VirtualReg_79)
	li	VirtualReg_82, 4
	mul	VirtualReg_81, VirtualReg_78, VirtualReg_82
	add	VirtualReg_80, VirtualReg_77, VirtualReg_81
	lw	VirtualReg_83, 0(VirtualReg_80)
	lw	VirtualReg_84, fuckLLVM_rk
	li	VirtualReg_86, -12
	add	VirtualReg_86, s0, VirtualReg_86
	lw	VirtualReg_85, 0(VirtualReg_86)
	li	VirtualReg_89, 4
	mul	VirtualReg_88, VirtualReg_85, VirtualReg_89
	add	VirtualReg_87, VirtualReg_84, VirtualReg_88
	lw	VirtualReg_90, 0(VirtualReg_87)
	add	fuckLLVM_52, VirtualReg_83, VirtualReg_90
	sw	fuckLLVM_52, 0(VirtualReg_74)
	j	.union_ID20_if_out
.union_ID20_if_out:
	li	VirtualReg_91, 1
	li	VirtualReg_92, -20
	add	VirtualReg_92, s0, VirtualReg_92
	sb	VirtualReg_91, 0(VirtualReg_92)
	j	.union_return
	j	.union_return
.union_return:
	li	VirtualReg_94, -20
	add	VirtualReg_94, s0, VirtualReg_94
	lb	VirtualReg_93, 0(VirtualReg_94)
	mv	a0, VirtualReg_93

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
.main_entry:
	call	__init
	li	VirtualReg_1, 0
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_1, 0(VirtualReg_2)
	call	getInt
	mv	VirtualReg_3, a0
	sw	VirtualReg_3, fuckLLVM_n, VirtualReg_4
	call	getInt
	mv	VirtualReg_5, a0
	sw	VirtualReg_5, fuckLLVM_m, VirtualReg_6
	lw	VirtualReg_7, fuckLLVM_m
	li	VirtualReg_8, 12
	mul	fuckLLVM_5, VirtualReg_7, VirtualReg_8
	li	VirtualReg_9, 4
	add	fuckLLVM_6, fuckLLVM_5, VirtualReg_9
	mv	a0, fuckLLVM_6
	call	malloc
	mv	VirtualReg_10, a0
	sw	VirtualReg_7, 0(VirtualReg_10)
	li	VirtualReg_13, 1
	li	VirtualReg_14, 4
	mul	VirtualReg_12, VirtualReg_13, VirtualReg_14
	add	VirtualReg_11, VirtualReg_10, VirtualReg_12
	sw	VirtualReg_11, fuckLLVM_e, VirtualReg_15
	li	VirtualReg_17, 0
	li	VirtualReg_18, -16
	add	VirtualReg_18, s0, VirtualReg_18
	sw	VirtualReg_17, 0(VirtualReg_18)
	j	.main_ID12_for_condition
.main_ID12_for_condition:
	li	VirtualReg_20, -16
	add	VirtualReg_20, s0, VirtualReg_20
	lw	VirtualReg_19, 0(VirtualReg_20)
	lw	VirtualReg_21, fuckLLVM_m
	slt	fuckLLVM_15, VirtualReg_19, VirtualReg_21
	bnez	fuckLLVM_15, .main_ID12_for_suite
	j	.main_ID12_for_out
.main_ID12_for_suite:
	li	VirtualReg_23, 12
	mv	a0, VirtualReg_23
	call	malloc
	mv	VirtualReg_24, a0
	mv	a0, VirtualReg_24
	call	Edge
	li	VirtualReg_25, -20
	add	VirtualReg_25, s0, VirtualReg_25
	sw	VirtualReg_24, 0(VirtualReg_25)
	li	VirtualReg_27, -20
	add	VirtualReg_27, s0, VirtualReg_27
	lw	VirtualReg_26, 0(VirtualReg_27)
	addi	VirtualReg_28, VirtualReg_26, 0
	call	getInt
	mv	VirtualReg_29, a0
	sw	VirtualReg_29, 0(VirtualReg_28)
	li	VirtualReg_31, -20
	add	VirtualReg_31, s0, VirtualReg_31
	lw	VirtualReg_30, 0(VirtualReg_31)
	addi	VirtualReg_32, VirtualReg_30, 4
	call	getInt
	mv	VirtualReg_33, a0
	sw	VirtualReg_33, 0(VirtualReg_32)
	li	VirtualReg_35, -20
	add	VirtualReg_35, s0, VirtualReg_35
	lw	VirtualReg_34, 0(VirtualReg_35)
	addi	VirtualReg_36, VirtualReg_34, 8
	call	getInt
	mv	VirtualReg_37, a0
	sw	VirtualReg_37, 0(VirtualReg_36)
	lw	VirtualReg_38, fuckLLVM_e
	li	VirtualReg_40, -16
	add	VirtualReg_40, s0, VirtualReg_40
	lw	VirtualReg_39, 0(VirtualReg_40)
	li	VirtualReg_43, 12
	mul	VirtualReg_42, VirtualReg_39, VirtualReg_43
	add	VirtualReg_41, VirtualReg_38, VirtualReg_42
	li	VirtualReg_45, -20
	add	VirtualReg_45, s0, VirtualReg_45
	lw	VirtualReg_44, 0(VirtualReg_45)
	sw	VirtualReg_44, 0(VirtualReg_41)
	j	.main_ID12_for_incr
.main_ID12_for_incr:
	li	VirtualReg_47, -16
	add	VirtualReg_47, s0, VirtualReg_47
	lw	VirtualReg_46, 0(VirtualReg_47)
	li	VirtualReg_48, 1
	add	fuckLLVM_35, VirtualReg_46, VirtualReg_48
	li	VirtualReg_49, -16
	add	VirtualReg_49, s0, VirtualReg_49
	sw	fuckLLVM_35, 0(VirtualReg_49)
	j	.main_ID12_for_condition
.main_ID12_for_out:
	lw	VirtualReg_50, fuckLLVM_e
	lw	VirtualReg_51, fuckLLVM_m
	li	VirtualReg_52, 1
	sub	fuckLLVM_39, VirtualReg_51, VirtualReg_52
	mv	a0, VirtualReg_50
	li	VirtualReg_53, 0
	mv	a1, VirtualReg_53
	mv	a2, fuckLLVM_39
	call	qsort
	call	init
	li	VirtualReg_54, 0
	li	VirtualReg_55, -16
	add	VirtualReg_55, s0, VirtualReg_55
	sw	VirtualReg_54, 0(VirtualReg_55)
	li	VirtualReg_57, 0
	li	VirtualReg_58, -24
	add	VirtualReg_58, s0, VirtualReg_58
	sw	VirtualReg_57, 0(VirtualReg_58)
	j	.main_ID43_while_condition
.main_ID43_while_condition:
	li	VirtualReg_60, -16
	add	VirtualReg_60, s0, VirtualReg_60
	lw	VirtualReg_59, 0(VirtualReg_60)
	lw	VirtualReg_61, fuckLLVM_n
	li	VirtualReg_62, 1
	sub	fuckLLVM_45, VirtualReg_61, VirtualReg_62
	slt	fuckLLVM_46, VirtualReg_59, fuckLLVM_45
	bnez	fuckLLVM_46, .main_ID47_while_suite
	j	.main_ID47_while_out
.main_ID49_if_true:
	li	VirtualReg_63, 0
	li	VirtualReg_64, 1
	sub	fuckLLVM_50, VirtualReg_63, VirtualReg_64
	mv	a0, fuckLLVM_50
	call	printInt
	li	VirtualReg_65, 0
	li	VirtualReg_66, -12
	add	VirtualReg_66, s0, VirtualReg_66
	sw	VirtualReg_65, 0(VirtualReg_66)
	j	.main_return
	j	.main_ID49_if_out
.main_ID49_if_out:
	lw	VirtualReg_68, fuckLLVM_e
	li	VirtualReg_70, -24
	add	VirtualReg_70, s0, VirtualReg_70
	lw	VirtualReg_69, 0(VirtualReg_70)
	li	VirtualReg_73, 12
	mul	VirtualReg_72, VirtualReg_69, VirtualReg_73
	add	VirtualReg_71, VirtualReg_68, VirtualReg_72
	lw	VirtualReg_74, 0(VirtualReg_71)
	li	VirtualReg_75, -28
	add	VirtualReg_75, s0, VirtualReg_75
	sw	VirtualReg_74, 0(VirtualReg_75)
	li	VirtualReg_77, -24
	add	VirtualReg_77, s0, VirtualReg_77
	lw	VirtualReg_76, 0(VirtualReg_77)
	li	VirtualReg_78, 1
	add	fuckLLVM_59, VirtualReg_76, VirtualReg_78
	li	VirtualReg_79, -24
	add	VirtualReg_79, s0, VirtualReg_79
	sw	fuckLLVM_59, 0(VirtualReg_79)
	li	VirtualReg_81, -28
	add	VirtualReg_81, s0, VirtualReg_81
	lw	VirtualReg_80, 0(VirtualReg_81)
	addi	VirtualReg_82, VirtualReg_80, 0
	lw	VirtualReg_83, 0(VirtualReg_82)
	li	VirtualReg_85, -28
	add	VirtualReg_85, s0, VirtualReg_85
	lw	VirtualReg_84, 0(VirtualReg_85)
	addi	VirtualReg_86, VirtualReg_84, 4
	lw	VirtualReg_87, 0(VirtualReg_86)
	mv	a0, VirtualReg_83
	mv	a1, VirtualReg_87
	call	union
	mv	VirtualReg_88, a0
	bnez	VirtualReg_88, .main_ID67_if_true
	j	.main_ID67_if_out
.main_ID67_if_true:
	li	VirtualReg_90, -16
	add	VirtualReg_90, s0, VirtualReg_90
	lw	VirtualReg_89, 0(VirtualReg_90)
	li	VirtualReg_91, 1
	add	fuckLLVM_69, VirtualReg_89, VirtualReg_91
	li	VirtualReg_92, -16
	add	VirtualReg_92, s0, VirtualReg_92
	sw	fuckLLVM_69, 0(VirtualReg_92)
	lw	VirtualReg_93, fuckLLVM_ans
	li	VirtualReg_95, -28
	add	VirtualReg_95, s0, VirtualReg_95
	lw	VirtualReg_94, 0(VirtualReg_95)
	addi	VirtualReg_96, VirtualReg_94, 8
	lw	VirtualReg_97, 0(VirtualReg_96)
	add	fuckLLVM_74, VirtualReg_93, VirtualReg_97
	sw	fuckLLVM_74, fuckLLVM_ans, VirtualReg_98
	j	.main_ID67_if_out
.main_ID67_if_out:
	j	.main_ID43_while_condition
.main_ID47_while_suite:
	li	VirtualReg_100, -24
	add	VirtualReg_100, s0, VirtualReg_100
	lw	VirtualReg_99, 0(VirtualReg_100)
	lw	VirtualReg_101, fuckLLVM_m
	slt	fuckLLVM_49, VirtualReg_99, VirtualReg_101
	xori	fuckLLVM_49, fuckLLVM_49, 1
	bnez	fuckLLVM_49, .main_ID49_if_true
	j	.main_ID49_if_out
.main_ID47_while_out:
	lw	VirtualReg_102, fuckLLVM_rk
	li	VirtualReg_103, 1
	mv	a0, VirtualReg_103
	call	find
	mv	VirtualReg_104, a0
	li	VirtualReg_107, 4
	mul	VirtualReg_106, VirtualReg_104, VirtualReg_107
	add	VirtualReg_105, VirtualReg_102, VirtualReg_106
	lw	VirtualReg_108, 0(VirtualReg_105)
	lw	VirtualReg_109, fuckLLVM_n
	xor	fuckLLVM_80, VirtualReg_108, VirtualReg_109
	sltiu	fuckLLVM_80, fuckLLVM_80, 1
	bnez	fuckLLVM_80, .main_ID80_if_true
	j	.main_ID80_if_false
.main_ID80_if_true:
	lw	VirtualReg_110, fuckLLVM_ans
	mv	a0, VirtualReg_110
	call	printInt
	j	.main_ID80_if_out
.main_ID80_if_false:
	li	VirtualReg_111, 0
	li	VirtualReg_112, 1
	sub	fuckLLVM_83, VirtualReg_111, VirtualReg_112
	mv	a0, fuckLLVM_83
	call	printInt
	j	.main_ID80_if_out
.main_ID80_if_out:
	li	VirtualReg_113, 0
	li	VirtualReg_114, -12
	add	VirtualReg_114, s0, VirtualReg_114
	sw	VirtualReg_113, 0(VirtualReg_114)
	j	.main_return
	j	.main_return
.main_return:
	li	VirtualReg_116, -12
	add	VirtualReg_116, s0, VirtualReg_116
	lw	VirtualReg_115, 0(VirtualReg_116)
	mv	a0, VirtualReg_115

	.section	.sbss
	.type	fuckLLVM_n,@object
	.globl	fuckLLVM_n
	.p2align	2
fuckLLVM_n:
	.word	0
	.size	fuckLLVM_n, 8

	.section	.sbss
	.type	fuckLLVM_m,@object
	.globl	fuckLLVM_m
	.p2align	2
fuckLLVM_m:
	.word	0
	.size	fuckLLVM_m, 8

	.section	.sbss
	.type	fuckLLVM_ans,@object
	.globl	fuckLLVM_ans
	.p2align	2
fuckLLVM_ans:
	.word	0
	.size	fuckLLVM_ans, 8

	.section	.sbss
	.type	fuckLLVM_fa,@object
	.globl	fuckLLVM_fa
	.p2align	2
fuckLLVM_fa:
	.word	0
	.size	fuckLLVM_fa, 8

	.section	.sbss
	.type	fuckLLVM_rk,@object
	.globl	fuckLLVM_rk
	.p2align	2
fuckLLVM_rk:
	.word	0
	.size	fuckLLVM_rk, 8

	.section	.sbss
	.type	fuckLLVM_e,@object
	.globl	fuckLLVM_e
	.p2align	2
fuckLLVM_e:
	.word	0
	.size	fuckLLVM_e, 8

