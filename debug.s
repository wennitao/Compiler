	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
.__init_entry:
	j	.__init_return
.__init_return:

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
	li	VirtualReg_4, 100
	li	VirtualReg_5, 8
	mul	fuckLLVM_2, VirtualReg_4, VirtualReg_5
	li	VirtualReg_6, 4
	add	fuckLLVM_3, fuckLLVM_2, VirtualReg_6
	mv	a0, fuckLLVM_3
	call	malloc
	mv	VirtualReg_7, a0
	li	VirtualReg_8, 100
	sw	VirtualReg_8, 0(VirtualReg_7)
	li	VirtualReg_11, 1
	li	VirtualReg_12, 4
	mul	VirtualReg_10, VirtualReg_11, VirtualReg_12
	add	VirtualReg_9, VirtualReg_7, VirtualReg_10
	li	VirtualReg_13, -16
	add	VirtualReg_13, s0, VirtualReg_13
	sw	VirtualReg_9, 0(VirtualReg_13)
	li	VirtualReg_16, 0
	li	VirtualReg_17, -20
	add	VirtualReg_17, s0, VirtualReg_17
	sw	VirtualReg_16, 0(VirtualReg_17)
	j	.main_ID10_for_condition
.main_ID10_for_condition:
	li	VirtualReg_19, -20
	add	VirtualReg_19, s0, VirtualReg_19
	lw	VirtualReg_18, 0(VirtualReg_19)
	li	VirtualReg_20, 100
	slt	fuckLLVM_12, VirtualReg_18, VirtualReg_20
	bnez	fuckLLVM_12, .main_ID10_for_suite
	j	.main_ID10_for_out
.main_ID10_for_suite:
	li	VirtualReg_22, -16
	add	VirtualReg_22, s0, VirtualReg_22
	lw	VirtualReg_21, 0(VirtualReg_22)
	li	VirtualReg_24, -20
	add	VirtualReg_24, s0, VirtualReg_24
	lw	VirtualReg_23, 0(VirtualReg_24)
	li	VirtualReg_27, 8
	mul	VirtualReg_26, VirtualReg_23, VirtualReg_27
	add	VirtualReg_25, VirtualReg_21, VirtualReg_26
	li	VirtualReg_28, 100
	li	VirtualReg_29, 4
	mul	fuckLLVM_16, VirtualReg_28, VirtualReg_29
	li	VirtualReg_30, 4
	add	fuckLLVM_17, fuckLLVM_16, VirtualReg_30
	mv	a0, fuckLLVM_17
	call	malloc
	mv	VirtualReg_31, a0
	li	VirtualReg_32, 100
	sw	VirtualReg_32, 0(VirtualReg_31)
	li	VirtualReg_35, 1
	li	VirtualReg_36, 4
	mul	VirtualReg_34, VirtualReg_35, VirtualReg_36
	add	VirtualReg_33, VirtualReg_31, VirtualReg_34
	sw	VirtualReg_33, 0(VirtualReg_25)
	j	.main_ID10_for_incr
.main_ID10_for_incr:
	li	VirtualReg_38, -20
	add	VirtualReg_38, s0, VirtualReg_38
	lw	VirtualReg_37, 0(VirtualReg_38)
	li	VirtualReg_39, 1
	add	fuckLLVM_24, VirtualReg_37, VirtualReg_39
	li	VirtualReg_40, -20
	add	VirtualReg_40, s0, VirtualReg_40
	sw	fuckLLVM_24, 0(VirtualReg_40)
	j	.main_ID10_for_condition
.main_ID10_for_out:
	li	VirtualReg_42, 0
	li	VirtualReg_43, -28
	add	VirtualReg_43, s0, VirtualReg_43
	sw	VirtualReg_42, 0(VirtualReg_43)
	li	VirtualReg_44, 0
	li	VirtualReg_45, -20
	add	VirtualReg_45, s0, VirtualReg_45
	sw	VirtualReg_44, 0(VirtualReg_45)
	j	.main_ID25_for_condition
.main_ID25_for_condition:
	li	VirtualReg_47, -20
	add	VirtualReg_47, s0, VirtualReg_47
	lw	VirtualReg_46, 0(VirtualReg_47)
	li	VirtualReg_48, 100
	slt	fuckLLVM_27, VirtualReg_46, VirtualReg_48
	bnez	fuckLLVM_27, .main_ID25_for_suite
	j	.main_ID25_for_out
.main_ID25_for_suite:
	li	VirtualReg_49, 0
	li	VirtualReg_50, -24
	add	VirtualReg_50, s0, VirtualReg_50
	sw	VirtualReg_49, 0(VirtualReg_50)
	j	.main_ID27_for_condition
.main_ID27_for_condition:
	li	VirtualReg_52, -24
	add	VirtualReg_52, s0, VirtualReg_52
	lw	VirtualReg_51, 0(VirtualReg_52)
	li	VirtualReg_53, 100
	slt	fuckLLVM_29, VirtualReg_51, VirtualReg_53
	bnez	fuckLLVM_29, .main_ID27_for_suite
	j	.main_ID27_for_out
.main_ID27_for_suite:
	li	VirtualReg_55, -16
	add	VirtualReg_55, s0, VirtualReg_55
	lw	VirtualReg_54, 0(VirtualReg_55)
	li	VirtualReg_57, -20
	add	VirtualReg_57, s0, VirtualReg_57
	lw	VirtualReg_56, 0(VirtualReg_57)
	li	VirtualReg_60, 8
	mul	VirtualReg_59, VirtualReg_56, VirtualReg_60
	add	VirtualReg_58, VirtualReg_54, VirtualReg_59
	lw	VirtualReg_61, 0(VirtualReg_58)
	li	VirtualReg_63, -24
	add	VirtualReg_63, s0, VirtualReg_63
	lw	VirtualReg_62, 0(VirtualReg_63)
	li	VirtualReg_66, 4
	mul	VirtualReg_65, VirtualReg_62, VirtualReg_66
	add	VirtualReg_64, VirtualReg_61, VirtualReg_65
	li	VirtualReg_67, 0
	sw	VirtualReg_67, 0(VirtualReg_64)
	j	.main_ID27_for_incr
.main_ID27_for_incr:
	li	VirtualReg_69, -24
	add	VirtualReg_69, s0, VirtualReg_69
	lw	VirtualReg_68, 0(VirtualReg_69)
	li	VirtualReg_70, 1
	add	fuckLLVM_37, VirtualReg_68, VirtualReg_70
	li	VirtualReg_71, -24
	add	VirtualReg_71, s0, VirtualReg_71
	sw	fuckLLVM_37, 0(VirtualReg_71)
	j	.main_ID27_for_condition
.main_ID27_for_out:
	j	.main_ID25_for_incr
.main_ID25_for_incr:
	li	VirtualReg_73, -20
	add	VirtualReg_73, s0, VirtualReg_73
	lw	VirtualReg_72, 0(VirtualReg_73)
	li	VirtualReg_74, 1
	add	fuckLLVM_39, VirtualReg_72, VirtualReg_74
	li	VirtualReg_75, -20
	add	VirtualReg_75, s0, VirtualReg_75
	sw	fuckLLVM_39, 0(VirtualReg_75)
	j	.main_ID25_for_condition
.main_ID25_for_out:
	li	VirtualReg_78, 0
	li	VirtualReg_79, -20
	add	VirtualReg_79, s0, VirtualReg_79
	sw	VirtualReg_78, 0(VirtualReg_79)
	j	.main_ID41_for_condition
.main_ID41_for_condition:
	li	VirtualReg_81, -20
	add	VirtualReg_81, s0, VirtualReg_81
	lw	VirtualReg_80, 0(VirtualReg_81)
	li	VirtualReg_82, 100
	slt	fuckLLVM_43, VirtualReg_80, VirtualReg_82
	bnez	fuckLLVM_43, .main_ID41_for_suite
	j	.main_ID41_for_out
.main_ID41_for_suite:
	li	VirtualReg_84, -20
	add	VirtualReg_84, s0, VirtualReg_84
	lw	VirtualReg_83, 0(VirtualReg_84)
	li	VirtualReg_85, 20
	slt	fuckLLVM_45, VirtualReg_85, VirtualReg_83
	li	VirtualReg_185, 0
	mv	VirtualReg_89, VirtualReg_185
	bnez	fuckLLVM_45, .main_ID45_AndAnd_true
	mv	VirtualReg_89, VirtualReg_185
	j	.main_ID45_AndAnd_out
.main_ID45_AndAnd_true:
	li	VirtualReg_87, -20
	add	VirtualReg_87, s0, VirtualReg_87
	lw	VirtualReg_86, 0(VirtualReg_87)
	li	VirtualReg_88, 80
	slt	fuckLLVM_47, VirtualReg_86, VirtualReg_88
	mv	VirtualReg_89, fuckLLVM_47
	j	.main_ID45_AndAnd_out
.main_ID45_AndAnd_out:
	bnez	VirtualReg_89, .main_ID48_if_true
	j	.main_ID48_if_out
.main_ID48_for_condition:
	li	VirtualReg_91, -24
	add	VirtualReg_91, s0, VirtualReg_91
	lw	VirtualReg_90, 0(VirtualReg_91)
	li	VirtualReg_92, 100
	slt	fuckLLVM_50, VirtualReg_90, VirtualReg_92
	bnez	fuckLLVM_50, .main_ID48_for_suite
	j	.main_ID48_for_out
.main_ID48_for_suite:
	li	VirtualReg_94, -24
	add	VirtualReg_94, s0, VirtualReg_94
	lw	VirtualReg_93, 0(VirtualReg_94)
	li	VirtualReg_95, 5
	slt	fuckLLVM_52, VirtualReg_95, VirtualReg_93
	li	VirtualReg_186, 1
	mv	VirtualReg_99, VirtualReg_186
	bnez	fuckLLVM_52, .main_ID52_OrOr_out
	mv	VirtualReg_99, VirtualReg_186
	j	.main_ID52_OrOr_false
.main_ID52_OrOr_false:
	li	VirtualReg_97, -20
	add	VirtualReg_97, s0, VirtualReg_97
	lw	VirtualReg_96, 0(VirtualReg_97)
	li	VirtualReg_98, 90
	slt	fuckLLVM_54, VirtualReg_96, VirtualReg_98
	mv	VirtualReg_99, fuckLLVM_54
	j	.main_ID52_OrOr_out
.main_ID52_OrOr_out:
	bnez	VirtualReg_99, .main_ID55_if_true
	j	.main_ID55_if_out
.main_ID55_if_true:
	li	VirtualReg_101, -24
	add	VirtualReg_101, s0, VirtualReg_101
	lw	VirtualReg_100, 0(VirtualReg_101)
	li	VirtualReg_102, 4
	mul	fuckLLVM_57, VirtualReg_100, VirtualReg_102
	li	VirtualReg_103, 100
	div	fuckLLVM_58, fuckLLVM_57, VirtualReg_103
	li	VirtualReg_104, -32
	add	VirtualReg_104, s0, VirtualReg_104
	sw	fuckLLVM_58, 0(VirtualReg_104)
	li	VirtualReg_106, -24
	add	VirtualReg_106, s0, VirtualReg_106
	lw	VirtualReg_105, 0(VirtualReg_106)
	li	VirtualReg_107, 4
	mul	fuckLLVM_60, VirtualReg_105, VirtualReg_107
	li	VirtualReg_108, 100
	rem	fuckLLVM_61, fuckLLVM_60, VirtualReg_108
	li	VirtualReg_109, -36
	add	VirtualReg_109, s0, VirtualReg_109
	sw	fuckLLVM_61, 0(VirtualReg_109)
	li	VirtualReg_111, -16
	add	VirtualReg_111, s0, VirtualReg_111
	lw	VirtualReg_110, 0(VirtualReg_111)
	li	VirtualReg_113, -20
	add	VirtualReg_113, s0, VirtualReg_113
	lw	VirtualReg_112, 0(VirtualReg_113)
	li	VirtualReg_115, -32
	add	VirtualReg_115, s0, VirtualReg_115
	lw	VirtualReg_114, 0(VirtualReg_115)
	add	fuckLLVM_65, VirtualReg_112, VirtualReg_114
	li	VirtualReg_118, 8
	mul	VirtualReg_117, fuckLLVM_65, VirtualReg_118
	add	VirtualReg_116, VirtualReg_110, VirtualReg_117
	lw	VirtualReg_119, 0(VirtualReg_116)
	li	VirtualReg_121, -36
	add	VirtualReg_121, s0, VirtualReg_121
	lw	VirtualReg_120, 0(VirtualReg_121)
	li	VirtualReg_124, 4
	mul	VirtualReg_123, VirtualReg_120, VirtualReg_124
	add	VirtualReg_122, VirtualReg_119, VirtualReg_123
	li	VirtualReg_126, -24
	add	VirtualReg_126, s0, VirtualReg_126
	lw	VirtualReg_125, 0(VirtualReg_126)
	li	VirtualReg_127, 100
	li	VirtualReg_128, 1
	sub	fuckLLVM_71, VirtualReg_127, VirtualReg_128
	li	VirtualReg_129, 1
	add	fuckLLVM_72, fuckLLVM_71, VirtualReg_129
	li	VirtualReg_130, 1
	sub	fuckLLVM_73, fuckLLVM_72, VirtualReg_130
	li	VirtualReg_131, 1
	add	fuckLLVM_74, fuckLLVM_73, VirtualReg_131
	li	VirtualReg_132, 2
	div	fuckLLVM_75, fuckLLVM_74, VirtualReg_132
	add	fuckLLVM_76, VirtualReg_125, fuckLLVM_75
	sw	fuckLLVM_76, 0(VirtualReg_122)
	j	.main_ID55_if_out
.main_ID55_if_out:
	j	.main_ID48_for_incr
.main_ID48_for_incr:
	li	VirtualReg_134, -24
	add	VirtualReg_134, s0, VirtualReg_134
	lw	VirtualReg_133, 0(VirtualReg_134)
	li	VirtualReg_135, 1
	add	fuckLLVM_78, VirtualReg_133, VirtualReg_135
	li	VirtualReg_136, -24
	add	VirtualReg_136, s0, VirtualReg_136
	sw	fuckLLVM_78, 0(VirtualReg_136)
	j	.main_ID48_for_condition
.main_ID48_for_out:
	j	.main_ID48_if_out
.main_ID48_if_true:
	li	VirtualReg_137, 0
	li	VirtualReg_138, -24
	add	VirtualReg_138, s0, VirtualReg_138
	sw	VirtualReg_137, 0(VirtualReg_138)
	j	.main_ID48_for_condition
.main_ID48_if_out:
	j	.main_ID41_for_incr
.main_ID41_for_incr:
	li	VirtualReg_140, -20
	add	VirtualReg_140, s0, VirtualReg_140
	lw	VirtualReg_139, 0(VirtualReg_140)
	li	VirtualReg_141, 1
	add	fuckLLVM_80, VirtualReg_139, VirtualReg_141
	li	VirtualReg_142, -20
	add	VirtualReg_142, s0, VirtualReg_142
	sw	fuckLLVM_80, 0(VirtualReg_142)
	j	.main_ID41_for_condition
.main_ID41_for_out:
	li	VirtualReg_143, 0
	li	VirtualReg_144, -20
	add	VirtualReg_144, s0, VirtualReg_144
	sw	VirtualReg_143, 0(VirtualReg_144)
	j	.main_ID80_for_condition
.main_ID80_for_condition:
	li	VirtualReg_146, -20
	add	VirtualReg_146, s0, VirtualReg_146
	lw	VirtualReg_145, 0(VirtualReg_146)
	li	VirtualReg_147, 100
	slt	fuckLLVM_82, VirtualReg_145, VirtualReg_147
	bnez	fuckLLVM_82, .main_ID80_for_suite
	j	.main_ID80_for_out
.main_ID80_for_suite:
	li	VirtualReg_148, 0
	li	VirtualReg_149, -24
	add	VirtualReg_149, s0, VirtualReg_149
	sw	VirtualReg_148, 0(VirtualReg_149)
	j	.main_ID82_for_condition
.main_ID82_for_condition:
	li	VirtualReg_151, -24
	add	VirtualReg_151, s0, VirtualReg_151
	lw	VirtualReg_150, 0(VirtualReg_151)
	li	VirtualReg_152, 100
	slt	fuckLLVM_84, VirtualReg_150, VirtualReg_152
	bnez	fuckLLVM_84, .main_ID82_for_suite
	j	.main_ID82_for_out
.main_ID82_for_suite:
	li	VirtualReg_154, -28
	add	VirtualReg_154, s0, VirtualReg_154
	lw	VirtualReg_153, 0(VirtualReg_154)
	li	VirtualReg_156, -16
	add	VirtualReg_156, s0, VirtualReg_156
	lw	VirtualReg_155, 0(VirtualReg_156)
	li	VirtualReg_158, -20
	add	VirtualReg_158, s0, VirtualReg_158
	lw	VirtualReg_157, 0(VirtualReg_158)
	li	VirtualReg_161, 8
	mul	VirtualReg_160, VirtualReg_157, VirtualReg_161
	add	VirtualReg_159, VirtualReg_155, VirtualReg_160
	lw	VirtualReg_162, 0(VirtualReg_159)
	li	VirtualReg_164, -24
	add	VirtualReg_164, s0, VirtualReg_164
	lw	VirtualReg_163, 0(VirtualReg_164)
	li	VirtualReg_167, 4
	mul	VirtualReg_166, VirtualReg_163, VirtualReg_167
	add	VirtualReg_165, VirtualReg_162, VirtualReg_166
	lw	VirtualReg_168, 0(VirtualReg_165)
	add	fuckLLVM_93, VirtualReg_153, VirtualReg_168
	li	VirtualReg_169, -28
	add	VirtualReg_169, s0, VirtualReg_169
	sw	fuckLLVM_93, 0(VirtualReg_169)
	j	.main_ID82_for_incr
.main_ID82_for_incr:
	li	VirtualReg_171, -24
	add	VirtualReg_171, s0, VirtualReg_171
	lw	VirtualReg_170, 0(VirtualReg_171)
	li	VirtualReg_172, 1
	add	fuckLLVM_95, VirtualReg_170, VirtualReg_172
	li	VirtualReg_173, -24
	add	VirtualReg_173, s0, VirtualReg_173
	sw	fuckLLVM_95, 0(VirtualReg_173)
	j	.main_ID82_for_condition
.main_ID82_for_out:
	j	.main_ID80_for_incr
.main_ID80_for_incr:
	li	VirtualReg_175, -20
	add	VirtualReg_175, s0, VirtualReg_175
	lw	VirtualReg_174, 0(VirtualReg_175)
	li	VirtualReg_176, 1
	add	fuckLLVM_97, VirtualReg_174, VirtualReg_176
	li	VirtualReg_177, -20
	add	VirtualReg_177, s0, VirtualReg_177
	sw	fuckLLVM_97, 0(VirtualReg_177)
	j	.main_ID80_for_condition
.main_ID80_for_out:
	li	VirtualReg_179, -28
	add	VirtualReg_179, s0, VirtualReg_179
	lw	VirtualReg_178, 0(VirtualReg_179)
	mv	a0, VirtualReg_178
	call	toString
	mv	VirtualReg_180, a0
	mv	a0, VirtualReg_180
	call	println
	li	VirtualReg_181, 0
	li	VirtualReg_182, -12
	add	VirtualReg_182, s0, VirtualReg_182
	sw	VirtualReg_181, 0(VirtualReg_182)
	j	.main_return
	j	.main_return
.main_return:
	li	VirtualReg_184, -12
	add	VirtualReg_184, s0, VirtualReg_184
	lw	VirtualReg_183, 0(VirtualReg_184)
	mv	a0, VirtualReg_183

