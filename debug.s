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

	.globl	gcd
	.p2align	2
	.type	gcd,@function
gcd:
.gcd_assemblyInit:
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
	lw	VirtualReg_10, 8(s0)
	lw	VirtualReg_11, 12(s0)
	lw	VirtualReg_12, 16(s0)
	lw	VirtualReg_13, 20(s0)
	lw	VirtualReg_14, 24(s0)
	lw	VirtualReg_15, 28(s0)
	lw	VirtualReg_16, 32(s0)
	lw	VirtualReg_17, 36(s0)
	lw	VirtualReg_18, 40(s0)
	lw	VirtualReg_19, 44(s0)
	lw	VirtualReg_20, 48(s0)
	lw	VirtualReg_21, 52(s0)
	lw	VirtualReg_22, 56(s0)
	lw	VirtualReg_23, 60(s0)
	lw	VirtualReg_24, 64(s0)
	lw	VirtualReg_25, 68(s0)
	lw	VirtualReg_26, 72(s0)
	lw	VirtualReg_27, 76(s0)
	lw	VirtualReg_28, 80(s0)
	lw	VirtualReg_29, 84(s0)
	lw	VirtualReg_30, 88(s0)
	lw	VirtualReg_31, 92(s0)
	mv	VirtualReg_32, sp
	mv	VirtualReg_33, s0
	mv	VirtualReg_34, s1
	mv	VirtualReg_35, s2
	mv	VirtualReg_36, s3
	mv	VirtualReg_37, s4
	mv	VirtualReg_38, s5
	mv	VirtualReg_39, s6
	mv	VirtualReg_40, s7
	mv	VirtualReg_41, s8
	mv	VirtualReg_42, s9
	mv	VirtualReg_43, s10
	mv	VirtualReg_44, s11
.gcd_entry:
	li	VirtualReg_46, -12
	add	VirtualReg_46, s0, VirtualReg_46
	sw	VirtualReg_0, 0(VirtualReg_46)
	li	VirtualReg_48, -16
	add	VirtualReg_48, s0, VirtualReg_48
	sw	VirtualReg_1, 0(VirtualReg_48)
	li	VirtualReg_50, -20
	add	VirtualReg_50, s0, VirtualReg_50
	sw	VirtualReg_2, 0(VirtualReg_50)
	li	VirtualReg_52, -24
	add	VirtualReg_52, s0, VirtualReg_52
	sw	VirtualReg_3, 0(VirtualReg_52)
	li	VirtualReg_54, -28
	add	VirtualReg_54, s0, VirtualReg_54
	sw	VirtualReg_4, 0(VirtualReg_54)
	li	VirtualReg_56, -32
	add	VirtualReg_56, s0, VirtualReg_56
	sw	VirtualReg_5, 0(VirtualReg_56)
	li	VirtualReg_58, -36
	add	VirtualReg_58, s0, VirtualReg_58
	sw	VirtualReg_6, 0(VirtualReg_58)
	li	VirtualReg_60, -40
	add	VirtualReg_60, s0, VirtualReg_60
	sw	VirtualReg_7, 0(VirtualReg_60)
	li	VirtualReg_62, -44
	add	VirtualReg_62, s0, VirtualReg_62
	sw	VirtualReg_8, 0(VirtualReg_62)
	li	VirtualReg_64, -48
	add	VirtualReg_64, s0, VirtualReg_64
	sw	VirtualReg_9, 0(VirtualReg_64)
	li	VirtualReg_66, -52
	add	VirtualReg_66, s0, VirtualReg_66
	sw	VirtualReg_10, 0(VirtualReg_66)
	li	VirtualReg_68, -56
	add	VirtualReg_68, s0, VirtualReg_68
	sw	VirtualReg_11, 0(VirtualReg_68)
	li	VirtualReg_70, -60
	add	VirtualReg_70, s0, VirtualReg_70
	sw	VirtualReg_12, 0(VirtualReg_70)
	li	VirtualReg_72, -64
	add	VirtualReg_72, s0, VirtualReg_72
	sw	VirtualReg_13, 0(VirtualReg_72)
	li	VirtualReg_74, -68
	add	VirtualReg_74, s0, VirtualReg_74
	sw	VirtualReg_14, 0(VirtualReg_74)
	li	VirtualReg_76, -72
	add	VirtualReg_76, s0, VirtualReg_76
	sw	VirtualReg_15, 0(VirtualReg_76)
	li	VirtualReg_78, -76
	add	VirtualReg_78, s0, VirtualReg_78
	sw	VirtualReg_16, 0(VirtualReg_78)
	li	VirtualReg_80, -80
	add	VirtualReg_80, s0, VirtualReg_80
	sw	VirtualReg_17, 0(VirtualReg_80)
	li	VirtualReg_82, -84
	add	VirtualReg_82, s0, VirtualReg_82
	sw	VirtualReg_18, 0(VirtualReg_82)
	li	VirtualReg_84, -88
	add	VirtualReg_84, s0, VirtualReg_84
	sw	VirtualReg_19, 0(VirtualReg_84)
	li	VirtualReg_86, -92
	add	VirtualReg_86, s0, VirtualReg_86
	sw	VirtualReg_20, 0(VirtualReg_86)
	li	VirtualReg_88, -96
	add	VirtualReg_88, s0, VirtualReg_88
	sw	VirtualReg_21, 0(VirtualReg_88)
	li	VirtualReg_90, -100
	add	VirtualReg_90, s0, VirtualReg_90
	sw	VirtualReg_22, 0(VirtualReg_90)
	li	VirtualReg_92, -104
	add	VirtualReg_92, s0, VirtualReg_92
	sw	VirtualReg_23, 0(VirtualReg_92)
	li	VirtualReg_94, -108
	add	VirtualReg_94, s0, VirtualReg_94
	sw	VirtualReg_24, 0(VirtualReg_94)
	li	VirtualReg_96, -112
	add	VirtualReg_96, s0, VirtualReg_96
	sw	VirtualReg_25, 0(VirtualReg_96)
	li	VirtualReg_98, -116
	add	VirtualReg_98, s0, VirtualReg_98
	sw	VirtualReg_26, 0(VirtualReg_98)
	li	VirtualReg_100, -120
	add	VirtualReg_100, s0, VirtualReg_100
	sw	VirtualReg_27, 0(VirtualReg_100)
	li	VirtualReg_102, -124
	add	VirtualReg_102, s0, VirtualReg_102
	sw	VirtualReg_28, 0(VirtualReg_102)
	li	VirtualReg_104, -128
	add	VirtualReg_104, s0, VirtualReg_104
	sw	VirtualReg_29, 0(VirtualReg_104)
	li	VirtualReg_106, -132
	add	VirtualReg_106, s0, VirtualReg_106
	sw	VirtualReg_30, 0(VirtualReg_106)
	li	VirtualReg_108, -136
	add	VirtualReg_108, s0, VirtualReg_108
	sw	VirtualReg_31, 0(VirtualReg_108)
	li	VirtualReg_112, 0
	li	VirtualReg_113, -144
	add	VirtualReg_113, s0, VirtualReg_113
	sw	VirtualReg_112, 0(VirtualReg_113)
	j	.gcd_ID66_for_condition
.gcd_ID66_for_condition:
	li	VirtualReg_115, -144
	add	VirtualReg_115, s0, VirtualReg_115
	lw	VirtualReg_114, 0(VirtualReg_115)
	li	VirtualReg_116, 10
	slt	fuckLLVM_68, VirtualReg_116, VirtualReg_114
	xori	fuckLLVM_68, fuckLLVM_68, 1
	bnez	fuckLLVM_68, .gcd_ID66_for_suite
	j	.gcd_ID66_for_out
.gcd_ID66_for_suite:
	li	VirtualReg_118, -20
	add	VirtualReg_118, s0, VirtualReg_118
	lw	VirtualReg_117, 0(VirtualReg_118)
	li	VirtualReg_120, -24
	add	VirtualReg_120, s0, VirtualReg_120
	lw	VirtualReg_119, 0(VirtualReg_120)
	add	fuckLLVM_71, VirtualReg_117, VirtualReg_119
	li	VirtualReg_122, -28
	add	VirtualReg_122, s0, VirtualReg_122
	lw	VirtualReg_121, 0(VirtualReg_122)
	add	fuckLLVM_73, fuckLLVM_71, VirtualReg_121
	li	VirtualReg_124, -32
	add	VirtualReg_124, s0, VirtualReg_124
	lw	VirtualReg_123, 0(VirtualReg_124)
	add	fuckLLVM_75, fuckLLVM_73, VirtualReg_123
	li	VirtualReg_126, -36
	add	VirtualReg_126, s0, VirtualReg_126
	lw	VirtualReg_125, 0(VirtualReg_126)
	add	fuckLLVM_77, fuckLLVM_75, VirtualReg_125
	li	VirtualReg_128, -40
	add	VirtualReg_128, s0, VirtualReg_128
	lw	VirtualReg_127, 0(VirtualReg_128)
	add	fuckLLVM_79, fuckLLVM_77, VirtualReg_127
	li	VirtualReg_130, -44
	add	VirtualReg_130, s0, VirtualReg_130
	lw	VirtualReg_129, 0(VirtualReg_130)
	add	fuckLLVM_81, fuckLLVM_79, VirtualReg_129
	li	VirtualReg_132, -48
	add	VirtualReg_132, s0, VirtualReg_132
	lw	VirtualReg_131, 0(VirtualReg_132)
	add	fuckLLVM_83, fuckLLVM_81, VirtualReg_131
	li	VirtualReg_134, -52
	add	VirtualReg_134, s0, VirtualReg_134
	lw	VirtualReg_133, 0(VirtualReg_134)
	add	fuckLLVM_85, fuckLLVM_83, VirtualReg_133
	li	VirtualReg_136, -56
	add	VirtualReg_136, s0, VirtualReg_136
	lw	VirtualReg_135, 0(VirtualReg_136)
	add	fuckLLVM_87, fuckLLVM_85, VirtualReg_135
	li	VirtualReg_138, -60
	add	VirtualReg_138, s0, VirtualReg_138
	lw	VirtualReg_137, 0(VirtualReg_138)
	add	fuckLLVM_89, fuckLLVM_87, VirtualReg_137
	li	VirtualReg_140, -64
	add	VirtualReg_140, s0, VirtualReg_140
	lw	VirtualReg_139, 0(VirtualReg_140)
	add	fuckLLVM_91, fuckLLVM_89, VirtualReg_139
	li	VirtualReg_142, -68
	add	VirtualReg_142, s0, VirtualReg_142
	lw	VirtualReg_141, 0(VirtualReg_142)
	add	fuckLLVM_93, fuckLLVM_91, VirtualReg_141
	li	VirtualReg_144, -72
	add	VirtualReg_144, s0, VirtualReg_144
	lw	VirtualReg_143, 0(VirtualReg_144)
	add	fuckLLVM_95, fuckLLVM_93, VirtualReg_143
	li	VirtualReg_146, -76
	add	VirtualReg_146, s0, VirtualReg_146
	lw	VirtualReg_145, 0(VirtualReg_146)
	add	fuckLLVM_97, fuckLLVM_95, VirtualReg_145
	li	VirtualReg_148, -80
	add	VirtualReg_148, s0, VirtualReg_148
	lw	VirtualReg_147, 0(VirtualReg_148)
	add	fuckLLVM_99, fuckLLVM_97, VirtualReg_147
	li	VirtualReg_150, -84
	add	VirtualReg_150, s0, VirtualReg_150
	lw	VirtualReg_149, 0(VirtualReg_150)
	add	fuckLLVM_101, fuckLLVM_99, VirtualReg_149
	li	VirtualReg_152, -88
	add	VirtualReg_152, s0, VirtualReg_152
	lw	VirtualReg_151, 0(VirtualReg_152)
	add	fuckLLVM_103, fuckLLVM_101, VirtualReg_151
	li	VirtualReg_154, -92
	add	VirtualReg_154, s0, VirtualReg_154
	lw	VirtualReg_153, 0(VirtualReg_154)
	add	fuckLLVM_105, fuckLLVM_103, VirtualReg_153
	li	VirtualReg_156, -96
	add	VirtualReg_156, s0, VirtualReg_156
	lw	VirtualReg_155, 0(VirtualReg_156)
	add	fuckLLVM_107, fuckLLVM_105, VirtualReg_155
	li	VirtualReg_158, -100
	add	VirtualReg_158, s0, VirtualReg_158
	lw	VirtualReg_157, 0(VirtualReg_158)
	add	fuckLLVM_109, fuckLLVM_107, VirtualReg_157
	li	VirtualReg_160, -104
	add	VirtualReg_160, s0, VirtualReg_160
	lw	VirtualReg_159, 0(VirtualReg_160)
	add	fuckLLVM_111, fuckLLVM_109, VirtualReg_159
	li	VirtualReg_162, -108
	add	VirtualReg_162, s0, VirtualReg_162
	lw	VirtualReg_161, 0(VirtualReg_162)
	add	fuckLLVM_113, fuckLLVM_111, VirtualReg_161
	li	VirtualReg_164, -112
	add	VirtualReg_164, s0, VirtualReg_164
	lw	VirtualReg_163, 0(VirtualReg_164)
	add	fuckLLVM_115, fuckLLVM_113, VirtualReg_163
	li	VirtualReg_166, -116
	add	VirtualReg_166, s0, VirtualReg_166
	lw	VirtualReg_165, 0(VirtualReg_166)
	add	fuckLLVM_117, fuckLLVM_115, VirtualReg_165
	li	VirtualReg_168, -120
	add	VirtualReg_168, s0, VirtualReg_168
	lw	VirtualReg_167, 0(VirtualReg_168)
	add	fuckLLVM_119, fuckLLVM_117, VirtualReg_167
	li	VirtualReg_170, -124
	add	VirtualReg_170, s0, VirtualReg_170
	lw	VirtualReg_169, 0(VirtualReg_170)
	add	fuckLLVM_121, fuckLLVM_119, VirtualReg_169
	li	VirtualReg_172, -128
	add	VirtualReg_172, s0, VirtualReg_172
	lw	VirtualReg_171, 0(VirtualReg_172)
	add	fuckLLVM_123, fuckLLVM_121, VirtualReg_171
	li	VirtualReg_174, -132
	add	VirtualReg_174, s0, VirtualReg_174
	lw	VirtualReg_173, 0(VirtualReg_174)
	add	fuckLLVM_125, fuckLLVM_123, VirtualReg_173
	li	VirtualReg_176, -136
	add	VirtualReg_176, s0, VirtualReg_176
	lw	VirtualReg_175, 0(VirtualReg_176)
	add	fuckLLVM_127, fuckLLVM_125, VirtualReg_175
	li	VirtualReg_177, 100
	rem	fuckLLVM_128, fuckLLVM_127, VirtualReg_177
	li	VirtualReg_178, -148
	add	VirtualReg_178, s0, VirtualReg_178
	sw	fuckLLVM_128, 0(VirtualReg_178)
	j	.gcd_ID66_for_incr
.gcd_ID66_for_incr:
	li	VirtualReg_180, -144
	add	VirtualReg_180, s0, VirtualReg_180
	lw	VirtualReg_179, 0(VirtualReg_180)
	li	VirtualReg_181, 1
	add	fuckLLVM_130, VirtualReg_179, VirtualReg_181
	li	VirtualReg_182, -144
	add	VirtualReg_182, s0, VirtualReg_182
	sw	fuckLLVM_130, 0(VirtualReg_182)
	j	.gcd_ID66_for_condition
.gcd_ID66_for_out:
	li	VirtualReg_184, -12
	add	VirtualReg_184, s0, VirtualReg_184
	lw	VirtualReg_183, 0(VirtualReg_184)
	li	VirtualReg_186, -16
	add	VirtualReg_186, s0, VirtualReg_186
	lw	VirtualReg_185, 0(VirtualReg_186)
	rem	fuckLLVM_133, VirtualReg_183, VirtualReg_185
	li	VirtualReg_187, 0
	xor	fuckLLVM_134, fuckLLVM_133, VirtualReg_187
	sltiu	fuckLLVM_134, fuckLLVM_134, 1
	bnez	fuckLLVM_134, .gcd_ID134_if_true
	j	.gcd_ID134_if_false
.gcd_ID134_if_true:
	li	VirtualReg_189, -16
	add	VirtualReg_189, s0, VirtualReg_189
	lw	VirtualReg_188, 0(VirtualReg_189)
	li	VirtualReg_190, -140
	add	VirtualReg_190, s0, VirtualReg_190
	sw	VirtualReg_188, 0(VirtualReg_190)
	j	.gcd_return
	j	.gcd_ID134_if_out
.gcd_ID134_if_false:
	li	VirtualReg_192, -16
	add	VirtualReg_192, s0, VirtualReg_192
	lw	VirtualReg_191, 0(VirtualReg_192)
	li	VirtualReg_194, -12
	add	VirtualReg_194, s0, VirtualReg_194
	lw	VirtualReg_193, 0(VirtualReg_194)
	li	VirtualReg_196, -16
	add	VirtualReg_196, s0, VirtualReg_196
	lw	VirtualReg_195, 0(VirtualReg_196)
	rem	fuckLLVM_139, VirtualReg_193, VirtualReg_195
	li	VirtualReg_198, -148
	add	VirtualReg_198, s0, VirtualReg_198
	lw	VirtualReg_197, 0(VirtualReg_198)
	li	VirtualReg_199, 10
	mv	a0, VirtualReg_199
	li	VirtualReg_200, 68
	mv	a1, VirtualReg_200
	li	VirtualReg_201, 0
	mv	a2, VirtualReg_201
	li	VirtualReg_202, 2
	mv	a3, VirtualReg_202
	li	VirtualReg_203, 4
	mv	a4, VirtualReg_203
	li	VirtualReg_204, 6
	mv	a5, VirtualReg_204
	li	VirtualReg_205, 8
	mv	a6, VirtualReg_205
	li	VirtualReg_206, 10
	mv	a7, VirtualReg_206
	li	VirtualReg_207, 12
	sw	VirtualReg_207, 0(sp)
	li	VirtualReg_208, 14
	sw	VirtualReg_208, 4(sp)
	li	VirtualReg_209, 16
	sw	VirtualReg_209, 8(sp)
	li	VirtualReg_210, 18
	sw	VirtualReg_210, 12(sp)
	li	VirtualReg_211, 20
	sw	VirtualReg_211, 16(sp)
	li	VirtualReg_212, 22
	sw	VirtualReg_212, 20(sp)
	li	VirtualReg_213, 24
	sw	VirtualReg_213, 24(sp)
	li	VirtualReg_214, 26
	sw	VirtualReg_214, 28(sp)
	li	VirtualReg_215, 28
	sw	VirtualReg_215, 32(sp)
	li	VirtualReg_216, 30
	sw	VirtualReg_216, 36(sp)
	li	VirtualReg_217, 32
	sw	VirtualReg_217, 40(sp)
	li	VirtualReg_218, 34
	sw	VirtualReg_218, 44(sp)
	li	VirtualReg_219, 36
	sw	VirtualReg_219, 48(sp)
	li	VirtualReg_220, 38
	sw	VirtualReg_220, 52(sp)
	li	VirtualReg_221, 40
	sw	VirtualReg_221, 56(sp)
	li	VirtualReg_222, 42
	sw	VirtualReg_222, 60(sp)
	li	VirtualReg_223, 44
	sw	VirtualReg_223, 64(sp)
	li	VirtualReg_224, 46
	sw	VirtualReg_224, 68(sp)
	li	VirtualReg_225, 48
	sw	VirtualReg_225, 72(sp)
	li	VirtualReg_226, 50
	sw	VirtualReg_226, 76(sp)
	li	VirtualReg_227, 52
	sw	VirtualReg_227, 80(sp)
	li	VirtualReg_228, 54
	sw	VirtualReg_228, 84(sp)
	li	VirtualReg_229, 56
	sw	VirtualReg_229, 88(sp)
	li	VirtualReg_230, 58
	sw	VirtualReg_230, 92(sp)
	call	gcd
	mv	VirtualReg_231, a0
	li	VirtualReg_233, -28
	add	VirtualReg_233, s0, VirtualReg_233
	lw	VirtualReg_232, 0(VirtualReg_233)
	li	VirtualReg_235, -32
	add	VirtualReg_235, s0, VirtualReg_235
	lw	VirtualReg_234, 0(VirtualReg_235)
	li	VirtualReg_237, -36
	add	VirtualReg_237, s0, VirtualReg_237
	lw	VirtualReg_236, 0(VirtualReg_237)
	li	VirtualReg_239, -40
	add	VirtualReg_239, s0, VirtualReg_239
	lw	VirtualReg_238, 0(VirtualReg_239)
	li	VirtualReg_241, -44
	add	VirtualReg_241, s0, VirtualReg_241
	lw	VirtualReg_240, 0(VirtualReg_241)
	li	VirtualReg_243, -48
	add	VirtualReg_243, s0, VirtualReg_243
	lw	VirtualReg_242, 0(VirtualReg_243)
	li	VirtualReg_245, -52
	add	VirtualReg_245, s0, VirtualReg_245
	lw	VirtualReg_244, 0(VirtualReg_245)
	li	VirtualReg_247, -56
	add	VirtualReg_247, s0, VirtualReg_247
	lw	VirtualReg_246, 0(VirtualReg_247)
	li	VirtualReg_249, -60
	add	VirtualReg_249, s0, VirtualReg_249
	lw	VirtualReg_248, 0(VirtualReg_249)
	li	VirtualReg_251, -64
	add	VirtualReg_251, s0, VirtualReg_251
	lw	VirtualReg_250, 0(VirtualReg_251)
	li	VirtualReg_253, -68
	add	VirtualReg_253, s0, VirtualReg_253
	lw	VirtualReg_252, 0(VirtualReg_253)
	li	VirtualReg_255, -72
	add	VirtualReg_255, s0, VirtualReg_255
	lw	VirtualReg_254, 0(VirtualReg_255)
	li	VirtualReg_257, -76
	add	VirtualReg_257, s0, VirtualReg_257
	lw	VirtualReg_256, 0(VirtualReg_257)
	li	VirtualReg_259, -80
	add	VirtualReg_259, s0, VirtualReg_259
	lw	VirtualReg_258, 0(VirtualReg_259)
	li	VirtualReg_261, -84
	add	VirtualReg_261, s0, VirtualReg_261
	lw	VirtualReg_260, 0(VirtualReg_261)
	li	VirtualReg_263, -88
	add	VirtualReg_263, s0, VirtualReg_263
	lw	VirtualReg_262, 0(VirtualReg_263)
	li	VirtualReg_265, -92
	add	VirtualReg_265, s0, VirtualReg_265
	lw	VirtualReg_264, 0(VirtualReg_265)
	li	VirtualReg_267, -96
	add	VirtualReg_267, s0, VirtualReg_267
	lw	VirtualReg_266, 0(VirtualReg_267)
	li	VirtualReg_269, -100
	add	VirtualReg_269, s0, VirtualReg_269
	lw	VirtualReg_268, 0(VirtualReg_269)
	li	VirtualReg_271, -104
	add	VirtualReg_271, s0, VirtualReg_271
	lw	VirtualReg_270, 0(VirtualReg_271)
	li	VirtualReg_273, -108
	add	VirtualReg_273, s0, VirtualReg_273
	lw	VirtualReg_272, 0(VirtualReg_273)
	li	VirtualReg_275, -112
	add	VirtualReg_275, s0, VirtualReg_275
	lw	VirtualReg_274, 0(VirtualReg_275)
	li	VirtualReg_277, -116
	add	VirtualReg_277, s0, VirtualReg_277
	lw	VirtualReg_276, 0(VirtualReg_277)
	li	VirtualReg_279, -120
	add	VirtualReg_279, s0, VirtualReg_279
	lw	VirtualReg_278, 0(VirtualReg_279)
	li	VirtualReg_281, -124
	add	VirtualReg_281, s0, VirtualReg_281
	lw	VirtualReg_280, 0(VirtualReg_281)
	li	VirtualReg_283, -128
	add	VirtualReg_283, s0, VirtualReg_283
	lw	VirtualReg_282, 0(VirtualReg_283)
	li	VirtualReg_285, -132
	add	VirtualReg_285, s0, VirtualReg_285
	lw	VirtualReg_284, 0(VirtualReg_285)
	li	VirtualReg_287, -136
	add	VirtualReg_287, s0, VirtualReg_287
	lw	VirtualReg_286, 0(VirtualReg_287)
	mv	a0, VirtualReg_191
	mv	a1, fuckLLVM_139
	mv	a2, VirtualReg_197
	mv	a3, VirtualReg_231
	mv	a4, VirtualReg_232
	mv	a5, VirtualReg_234
	mv	a6, VirtualReg_236
	mv	a7, VirtualReg_238
	sw	VirtualReg_240, 0(sp)
	sw	VirtualReg_242, 4(sp)
	sw	VirtualReg_244, 8(sp)
	sw	VirtualReg_246, 12(sp)
	sw	VirtualReg_248, 16(sp)
	sw	VirtualReg_250, 20(sp)
	sw	VirtualReg_252, 24(sp)
	sw	VirtualReg_254, 28(sp)
	sw	VirtualReg_256, 32(sp)
	sw	VirtualReg_258, 36(sp)
	sw	VirtualReg_260, 40(sp)
	sw	VirtualReg_262, 44(sp)
	sw	VirtualReg_264, 48(sp)
	sw	VirtualReg_266, 52(sp)
	sw	VirtualReg_268, 56(sp)
	sw	VirtualReg_270, 60(sp)
	sw	VirtualReg_272, 64(sp)
	sw	VirtualReg_274, 68(sp)
	sw	VirtualReg_276, 72(sp)
	sw	VirtualReg_278, 76(sp)
	sw	VirtualReg_280, 80(sp)
	sw	VirtualReg_282, 84(sp)
	sw	VirtualReg_284, 88(sp)
	sw	VirtualReg_286, 92(sp)
	call	gcd1
	mv	VirtualReg_288, a0
	li	VirtualReg_289, -140
	add	VirtualReg_289, s0, VirtualReg_289
	sw	VirtualReg_288, 0(VirtualReg_289)
	j	.gcd_return
	j	.gcd_ID134_if_out
.gcd_ID134_if_out:
	j	.gcd_return
.gcd_return:
	li	VirtualReg_291, -140
	add	VirtualReg_291, s0, VirtualReg_291
	lw	VirtualReg_290, 0(VirtualReg_291)
	mv	a0, VirtualReg_290
	mv	sp, VirtualReg_32
	mv	s0, VirtualReg_33
	mv	s1, VirtualReg_34
	mv	s2, VirtualReg_35
	mv	s3, VirtualReg_36
	mv	s4, VirtualReg_37
	mv	s5, VirtualReg_38
	mv	s6, VirtualReg_39
	mv	s7, VirtualReg_40
	mv	s8, VirtualReg_41
	mv	s9, VirtualReg_42
	mv	s10, VirtualReg_43
	mv	s11, VirtualReg_44

	.globl	gcd1
	.p2align	2
	.type	gcd1,@function
gcd1:
.gcd1_assemblyInit:
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
	lw	VirtualReg_10, 8(s0)
	lw	VirtualReg_11, 12(s0)
	lw	VirtualReg_12, 16(s0)
	lw	VirtualReg_13, 20(s0)
	lw	VirtualReg_14, 24(s0)
	lw	VirtualReg_15, 28(s0)
	lw	VirtualReg_16, 32(s0)
	lw	VirtualReg_17, 36(s0)
	lw	VirtualReg_18, 40(s0)
	lw	VirtualReg_19, 44(s0)
	lw	VirtualReg_20, 48(s0)
	lw	VirtualReg_21, 52(s0)
	lw	VirtualReg_22, 56(s0)
	lw	VirtualReg_23, 60(s0)
	lw	VirtualReg_24, 64(s0)
	lw	VirtualReg_25, 68(s0)
	lw	VirtualReg_26, 72(s0)
	lw	VirtualReg_27, 76(s0)
	lw	VirtualReg_28, 80(s0)
	lw	VirtualReg_29, 84(s0)
	lw	VirtualReg_30, 88(s0)
	lw	VirtualReg_31, 92(s0)
	mv	VirtualReg_32, sp
	mv	VirtualReg_33, s0
	mv	VirtualReg_34, s1
	mv	VirtualReg_35, s2
	mv	VirtualReg_36, s3
	mv	VirtualReg_37, s4
	mv	VirtualReg_38, s5
	mv	VirtualReg_39, s6
	mv	VirtualReg_40, s7
	mv	VirtualReg_41, s8
	mv	VirtualReg_42, s9
	mv	VirtualReg_43, s10
	mv	VirtualReg_44, s11
.gcd1_entry:
	li	VirtualReg_46, -12
	add	VirtualReg_46, s0, VirtualReg_46
	sw	VirtualReg_0, 0(VirtualReg_46)
	li	VirtualReg_48, -16
	add	VirtualReg_48, s0, VirtualReg_48
	sw	VirtualReg_1, 0(VirtualReg_48)
	li	VirtualReg_50, -20
	add	VirtualReg_50, s0, VirtualReg_50
	sw	VirtualReg_2, 0(VirtualReg_50)
	li	VirtualReg_52, -24
	add	VirtualReg_52, s0, VirtualReg_52
	sw	VirtualReg_3, 0(VirtualReg_52)
	li	VirtualReg_54, -28
	add	VirtualReg_54, s0, VirtualReg_54
	sw	VirtualReg_4, 0(VirtualReg_54)
	li	VirtualReg_56, -32
	add	VirtualReg_56, s0, VirtualReg_56
	sw	VirtualReg_5, 0(VirtualReg_56)
	li	VirtualReg_58, -36
	add	VirtualReg_58, s0, VirtualReg_58
	sw	VirtualReg_6, 0(VirtualReg_58)
	li	VirtualReg_60, -40
	add	VirtualReg_60, s0, VirtualReg_60
	sw	VirtualReg_7, 0(VirtualReg_60)
	li	VirtualReg_62, -44
	add	VirtualReg_62, s0, VirtualReg_62
	sw	VirtualReg_8, 0(VirtualReg_62)
	li	VirtualReg_64, -48
	add	VirtualReg_64, s0, VirtualReg_64
	sw	VirtualReg_9, 0(VirtualReg_64)
	li	VirtualReg_66, -52
	add	VirtualReg_66, s0, VirtualReg_66
	sw	VirtualReg_10, 0(VirtualReg_66)
	li	VirtualReg_68, -56
	add	VirtualReg_68, s0, VirtualReg_68
	sw	VirtualReg_11, 0(VirtualReg_68)
	li	VirtualReg_70, -60
	add	VirtualReg_70, s0, VirtualReg_70
	sw	VirtualReg_12, 0(VirtualReg_70)
	li	VirtualReg_72, -64
	add	VirtualReg_72, s0, VirtualReg_72
	sw	VirtualReg_13, 0(VirtualReg_72)
	li	VirtualReg_74, -68
	add	VirtualReg_74, s0, VirtualReg_74
	sw	VirtualReg_14, 0(VirtualReg_74)
	li	VirtualReg_76, -72
	add	VirtualReg_76, s0, VirtualReg_76
	sw	VirtualReg_15, 0(VirtualReg_76)
	li	VirtualReg_78, -76
	add	VirtualReg_78, s0, VirtualReg_78
	sw	VirtualReg_16, 0(VirtualReg_78)
	li	VirtualReg_80, -80
	add	VirtualReg_80, s0, VirtualReg_80
	sw	VirtualReg_17, 0(VirtualReg_80)
	li	VirtualReg_82, -84
	add	VirtualReg_82, s0, VirtualReg_82
	sw	VirtualReg_18, 0(VirtualReg_82)
	li	VirtualReg_84, -88
	add	VirtualReg_84, s0, VirtualReg_84
	sw	VirtualReg_19, 0(VirtualReg_84)
	li	VirtualReg_86, -92
	add	VirtualReg_86, s0, VirtualReg_86
	sw	VirtualReg_20, 0(VirtualReg_86)
	li	VirtualReg_88, -96
	add	VirtualReg_88, s0, VirtualReg_88
	sw	VirtualReg_21, 0(VirtualReg_88)
	li	VirtualReg_90, -100
	add	VirtualReg_90, s0, VirtualReg_90
	sw	VirtualReg_22, 0(VirtualReg_90)
	li	VirtualReg_92, -104
	add	VirtualReg_92, s0, VirtualReg_92
	sw	VirtualReg_23, 0(VirtualReg_92)
	li	VirtualReg_94, -108
	add	VirtualReg_94, s0, VirtualReg_94
	sw	VirtualReg_24, 0(VirtualReg_94)
	li	VirtualReg_96, -112
	add	VirtualReg_96, s0, VirtualReg_96
	sw	VirtualReg_25, 0(VirtualReg_96)
	li	VirtualReg_98, -116
	add	VirtualReg_98, s0, VirtualReg_98
	sw	VirtualReg_26, 0(VirtualReg_98)
	li	VirtualReg_100, -120
	add	VirtualReg_100, s0, VirtualReg_100
	sw	VirtualReg_27, 0(VirtualReg_100)
	li	VirtualReg_102, -124
	add	VirtualReg_102, s0, VirtualReg_102
	sw	VirtualReg_28, 0(VirtualReg_102)
	li	VirtualReg_104, -128
	add	VirtualReg_104, s0, VirtualReg_104
	sw	VirtualReg_29, 0(VirtualReg_104)
	li	VirtualReg_106, -132
	add	VirtualReg_106, s0, VirtualReg_106
	sw	VirtualReg_30, 0(VirtualReg_106)
	li	VirtualReg_108, -136
	add	VirtualReg_108, s0, VirtualReg_108
	sw	VirtualReg_31, 0(VirtualReg_108)
	li	VirtualReg_112, -20
	add	VirtualReg_112, s0, VirtualReg_112
	lw	VirtualReg_111, 0(VirtualReg_112)
	li	VirtualReg_114, -24
	add	VirtualReg_114, s0, VirtualReg_114
	lw	VirtualReg_113, 0(VirtualReg_114)
	add	fuckLLVM_68, VirtualReg_111, VirtualReg_113
	li	VirtualReg_116, -28
	add	VirtualReg_116, s0, VirtualReg_116
	lw	VirtualReg_115, 0(VirtualReg_116)
	add	fuckLLVM_70, fuckLLVM_68, VirtualReg_115
	li	VirtualReg_118, -32
	add	VirtualReg_118, s0, VirtualReg_118
	lw	VirtualReg_117, 0(VirtualReg_118)
	add	fuckLLVM_72, fuckLLVM_70, VirtualReg_117
	li	VirtualReg_120, -36
	add	VirtualReg_120, s0, VirtualReg_120
	lw	VirtualReg_119, 0(VirtualReg_120)
	add	fuckLLVM_74, fuckLLVM_72, VirtualReg_119
	li	VirtualReg_122, -40
	add	VirtualReg_122, s0, VirtualReg_122
	lw	VirtualReg_121, 0(VirtualReg_122)
	add	fuckLLVM_76, fuckLLVM_74, VirtualReg_121
	li	VirtualReg_124, -44
	add	VirtualReg_124, s0, VirtualReg_124
	lw	VirtualReg_123, 0(VirtualReg_124)
	add	fuckLLVM_78, fuckLLVM_76, VirtualReg_123
	li	VirtualReg_126, -48
	add	VirtualReg_126, s0, VirtualReg_126
	lw	VirtualReg_125, 0(VirtualReg_126)
	add	fuckLLVM_80, fuckLLVM_78, VirtualReg_125
	li	VirtualReg_128, -52
	add	VirtualReg_128, s0, VirtualReg_128
	lw	VirtualReg_127, 0(VirtualReg_128)
	add	fuckLLVM_82, fuckLLVM_80, VirtualReg_127
	li	VirtualReg_130, -56
	add	VirtualReg_130, s0, VirtualReg_130
	lw	VirtualReg_129, 0(VirtualReg_130)
	add	fuckLLVM_84, fuckLLVM_82, VirtualReg_129
	li	VirtualReg_132, -60
	add	VirtualReg_132, s0, VirtualReg_132
	lw	VirtualReg_131, 0(VirtualReg_132)
	add	fuckLLVM_86, fuckLLVM_84, VirtualReg_131
	li	VirtualReg_134, -64
	add	VirtualReg_134, s0, VirtualReg_134
	lw	VirtualReg_133, 0(VirtualReg_134)
	add	fuckLLVM_88, fuckLLVM_86, VirtualReg_133
	li	VirtualReg_136, -68
	add	VirtualReg_136, s0, VirtualReg_136
	lw	VirtualReg_135, 0(VirtualReg_136)
	add	fuckLLVM_90, fuckLLVM_88, VirtualReg_135
	li	VirtualReg_138, -72
	add	VirtualReg_138, s0, VirtualReg_138
	lw	VirtualReg_137, 0(VirtualReg_138)
	add	fuckLLVM_92, fuckLLVM_90, VirtualReg_137
	li	VirtualReg_140, -76
	add	VirtualReg_140, s0, VirtualReg_140
	lw	VirtualReg_139, 0(VirtualReg_140)
	add	fuckLLVM_94, fuckLLVM_92, VirtualReg_139
	li	VirtualReg_142, -80
	add	VirtualReg_142, s0, VirtualReg_142
	lw	VirtualReg_141, 0(VirtualReg_142)
	add	fuckLLVM_96, fuckLLVM_94, VirtualReg_141
	li	VirtualReg_144, -84
	add	VirtualReg_144, s0, VirtualReg_144
	lw	VirtualReg_143, 0(VirtualReg_144)
	add	fuckLLVM_98, fuckLLVM_96, VirtualReg_143
	li	VirtualReg_146, -88
	add	VirtualReg_146, s0, VirtualReg_146
	lw	VirtualReg_145, 0(VirtualReg_146)
	add	fuckLLVM_100, fuckLLVM_98, VirtualReg_145
	li	VirtualReg_148, -92
	add	VirtualReg_148, s0, VirtualReg_148
	lw	VirtualReg_147, 0(VirtualReg_148)
	add	fuckLLVM_102, fuckLLVM_100, VirtualReg_147
	li	VirtualReg_150, -96
	add	VirtualReg_150, s0, VirtualReg_150
	lw	VirtualReg_149, 0(VirtualReg_150)
	add	fuckLLVM_104, fuckLLVM_102, VirtualReg_149
	li	VirtualReg_152, -100
	add	VirtualReg_152, s0, VirtualReg_152
	lw	VirtualReg_151, 0(VirtualReg_152)
	add	fuckLLVM_106, fuckLLVM_104, VirtualReg_151
	li	VirtualReg_154, -104
	add	VirtualReg_154, s0, VirtualReg_154
	lw	VirtualReg_153, 0(VirtualReg_154)
	add	fuckLLVM_108, fuckLLVM_106, VirtualReg_153
	li	VirtualReg_156, -108
	add	VirtualReg_156, s0, VirtualReg_156
	lw	VirtualReg_155, 0(VirtualReg_156)
	add	fuckLLVM_110, fuckLLVM_108, VirtualReg_155
	li	VirtualReg_158, -112
	add	VirtualReg_158, s0, VirtualReg_158
	lw	VirtualReg_157, 0(VirtualReg_158)
	add	fuckLLVM_112, fuckLLVM_110, VirtualReg_157
	li	VirtualReg_160, -116
	add	VirtualReg_160, s0, VirtualReg_160
	lw	VirtualReg_159, 0(VirtualReg_160)
	add	fuckLLVM_114, fuckLLVM_112, VirtualReg_159
	li	VirtualReg_162, -120
	add	VirtualReg_162, s0, VirtualReg_162
	lw	VirtualReg_161, 0(VirtualReg_162)
	add	fuckLLVM_116, fuckLLVM_114, VirtualReg_161
	li	VirtualReg_164, -124
	add	VirtualReg_164, s0, VirtualReg_164
	lw	VirtualReg_163, 0(VirtualReg_164)
	add	fuckLLVM_118, fuckLLVM_116, VirtualReg_163
	li	VirtualReg_166, -128
	add	VirtualReg_166, s0, VirtualReg_166
	lw	VirtualReg_165, 0(VirtualReg_166)
	add	fuckLLVM_120, fuckLLVM_118, VirtualReg_165
	li	VirtualReg_168, -132
	add	VirtualReg_168, s0, VirtualReg_168
	lw	VirtualReg_167, 0(VirtualReg_168)
	add	fuckLLVM_122, fuckLLVM_120, VirtualReg_167
	li	VirtualReg_170, -136
	add	VirtualReg_170, s0, VirtualReg_170
	lw	VirtualReg_169, 0(VirtualReg_170)
	add	fuckLLVM_124, fuckLLVM_122, VirtualReg_169
	li	VirtualReg_171, 100
	rem	fuckLLVM_125, fuckLLVM_124, VirtualReg_171
	li	VirtualReg_172, -144
	add	VirtualReg_172, s0, VirtualReg_172
	sw	fuckLLVM_125, 0(VirtualReg_172)
	li	VirtualReg_174, -12
	add	VirtualReg_174, s0, VirtualReg_174
	lw	VirtualReg_173, 0(VirtualReg_174)
	li	VirtualReg_176, -16
	add	VirtualReg_176, s0, VirtualReg_176
	lw	VirtualReg_175, 0(VirtualReg_176)
	rem	fuckLLVM_128, VirtualReg_173, VirtualReg_175
	li	VirtualReg_177, 0
	xor	fuckLLVM_129, fuckLLVM_128, VirtualReg_177
	sltiu	fuckLLVM_129, fuckLLVM_129, 1
	bnez	fuckLLVM_129, .gcd1_ID129_if_true
	j	.gcd1_ID129_if_false
.gcd1_ID129_if_true:
	li	VirtualReg_179, -16
	add	VirtualReg_179, s0, VirtualReg_179
	lw	VirtualReg_178, 0(VirtualReg_179)
	li	VirtualReg_180, -140
	add	VirtualReg_180, s0, VirtualReg_180
	sw	VirtualReg_178, 0(VirtualReg_180)
	j	.gcd1_return
	j	.gcd1_ID129_if_out
.gcd1_ID129_if_false:
	li	VirtualReg_182, -16
	add	VirtualReg_182, s0, VirtualReg_182
	lw	VirtualReg_181, 0(VirtualReg_182)
	li	VirtualReg_184, -12
	add	VirtualReg_184, s0, VirtualReg_184
	lw	VirtualReg_183, 0(VirtualReg_184)
	li	VirtualReg_186, -16
	add	VirtualReg_186, s0, VirtualReg_186
	lw	VirtualReg_185, 0(VirtualReg_186)
	rem	fuckLLVM_134, VirtualReg_183, VirtualReg_185
	li	VirtualReg_188, -144
	add	VirtualReg_188, s0, VirtualReg_188
	lw	VirtualReg_187, 0(VirtualReg_188)
	li	VirtualReg_190, -24
	add	VirtualReg_190, s0, VirtualReg_190
	lw	VirtualReg_189, 0(VirtualReg_190)
	li	VirtualReg_192, -28
	add	VirtualReg_192, s0, VirtualReg_192
	lw	VirtualReg_191, 0(VirtualReg_192)
	li	VirtualReg_194, -32
	add	VirtualReg_194, s0, VirtualReg_194
	lw	VirtualReg_193, 0(VirtualReg_194)
	li	VirtualReg_196, -36
	add	VirtualReg_196, s0, VirtualReg_196
	lw	VirtualReg_195, 0(VirtualReg_196)
	li	VirtualReg_198, -40
	add	VirtualReg_198, s0, VirtualReg_198
	lw	VirtualReg_197, 0(VirtualReg_198)
	li	VirtualReg_200, -44
	add	VirtualReg_200, s0, VirtualReg_200
	lw	VirtualReg_199, 0(VirtualReg_200)
	li	VirtualReg_202, -48
	add	VirtualReg_202, s0, VirtualReg_202
	lw	VirtualReg_201, 0(VirtualReg_202)
	li	VirtualReg_204, -52
	add	VirtualReg_204, s0, VirtualReg_204
	lw	VirtualReg_203, 0(VirtualReg_204)
	li	VirtualReg_206, -56
	add	VirtualReg_206, s0, VirtualReg_206
	lw	VirtualReg_205, 0(VirtualReg_206)
	li	VirtualReg_208, -60
	add	VirtualReg_208, s0, VirtualReg_208
	lw	VirtualReg_207, 0(VirtualReg_208)
	li	VirtualReg_210, -64
	add	VirtualReg_210, s0, VirtualReg_210
	lw	VirtualReg_209, 0(VirtualReg_210)
	li	VirtualReg_212, -68
	add	VirtualReg_212, s0, VirtualReg_212
	lw	VirtualReg_211, 0(VirtualReg_212)
	li	VirtualReg_214, -72
	add	VirtualReg_214, s0, VirtualReg_214
	lw	VirtualReg_213, 0(VirtualReg_214)
	li	VirtualReg_216, -76
	add	VirtualReg_216, s0, VirtualReg_216
	lw	VirtualReg_215, 0(VirtualReg_216)
	li	VirtualReg_218, -80
	add	VirtualReg_218, s0, VirtualReg_218
	lw	VirtualReg_217, 0(VirtualReg_218)
	li	VirtualReg_220, -84
	add	VirtualReg_220, s0, VirtualReg_220
	lw	VirtualReg_219, 0(VirtualReg_220)
	li	VirtualReg_222, -88
	add	VirtualReg_222, s0, VirtualReg_222
	lw	VirtualReg_221, 0(VirtualReg_222)
	li	VirtualReg_224, -92
	add	VirtualReg_224, s0, VirtualReg_224
	lw	VirtualReg_223, 0(VirtualReg_224)
	li	VirtualReg_226, -96
	add	VirtualReg_226, s0, VirtualReg_226
	lw	VirtualReg_225, 0(VirtualReg_226)
	li	VirtualReg_228, -100
	add	VirtualReg_228, s0, VirtualReg_228
	lw	VirtualReg_227, 0(VirtualReg_228)
	li	VirtualReg_230, -104
	add	VirtualReg_230, s0, VirtualReg_230
	lw	VirtualReg_229, 0(VirtualReg_230)
	li	VirtualReg_232, -108
	add	VirtualReg_232, s0, VirtualReg_232
	lw	VirtualReg_231, 0(VirtualReg_232)
	li	VirtualReg_234, -112
	add	VirtualReg_234, s0, VirtualReg_234
	lw	VirtualReg_233, 0(VirtualReg_234)
	li	VirtualReg_236, -116
	add	VirtualReg_236, s0, VirtualReg_236
	lw	VirtualReg_235, 0(VirtualReg_236)
	li	VirtualReg_238, -120
	add	VirtualReg_238, s0, VirtualReg_238
	lw	VirtualReg_237, 0(VirtualReg_238)
	li	VirtualReg_240, -124
	add	VirtualReg_240, s0, VirtualReg_240
	lw	VirtualReg_239, 0(VirtualReg_240)
	li	VirtualReg_242, -128
	add	VirtualReg_242, s0, VirtualReg_242
	lw	VirtualReg_241, 0(VirtualReg_242)
	li	VirtualReg_244, -132
	add	VirtualReg_244, s0, VirtualReg_244
	lw	VirtualReg_243, 0(VirtualReg_244)
	li	VirtualReg_246, -136
	add	VirtualReg_246, s0, VirtualReg_246
	lw	VirtualReg_245, 0(VirtualReg_246)
	mv	a0, VirtualReg_181
	mv	a1, fuckLLVM_134
	mv	a2, VirtualReg_187
	mv	a3, VirtualReg_189
	mv	a4, VirtualReg_191
	mv	a5, VirtualReg_193
	mv	a6, VirtualReg_195
	mv	a7, VirtualReg_197
	sw	VirtualReg_199, 0(sp)
	sw	VirtualReg_201, 4(sp)
	sw	VirtualReg_203, 8(sp)
	sw	VirtualReg_205, 12(sp)
	sw	VirtualReg_207, 16(sp)
	sw	VirtualReg_209, 20(sp)
	sw	VirtualReg_211, 24(sp)
	sw	VirtualReg_213, 28(sp)
	sw	VirtualReg_215, 32(sp)
	sw	VirtualReg_217, 36(sp)
	sw	VirtualReg_219, 40(sp)
	sw	VirtualReg_221, 44(sp)
	sw	VirtualReg_223, 48(sp)
	sw	VirtualReg_225, 52(sp)
	sw	VirtualReg_227, 56(sp)
	sw	VirtualReg_229, 60(sp)
	sw	VirtualReg_231, 64(sp)
	sw	VirtualReg_233, 68(sp)
	sw	VirtualReg_235, 72(sp)
	sw	VirtualReg_237, 76(sp)
	sw	VirtualReg_239, 80(sp)
	sw	VirtualReg_241, 84(sp)
	sw	VirtualReg_243, 88(sp)
	sw	VirtualReg_245, 92(sp)
	call	gcd2
	mv	VirtualReg_247, a0
	li	VirtualReg_248, -140
	add	VirtualReg_248, s0, VirtualReg_248
	sw	VirtualReg_247, 0(VirtualReg_248)
	j	.gcd1_return
	j	.gcd1_ID129_if_out
.gcd1_ID129_if_out:
	j	.gcd1_return
.gcd1_return:
	li	VirtualReg_250, -140
	add	VirtualReg_250, s0, VirtualReg_250
	lw	VirtualReg_249, 0(VirtualReg_250)
	mv	a0, VirtualReg_249
	mv	sp, VirtualReg_32
	mv	s0, VirtualReg_33
	mv	s1, VirtualReg_34
	mv	s2, VirtualReg_35
	mv	s3, VirtualReg_36
	mv	s4, VirtualReg_37
	mv	s5, VirtualReg_38
	mv	s6, VirtualReg_39
	mv	s7, VirtualReg_40
	mv	s8, VirtualReg_41
	mv	s9, VirtualReg_42
	mv	s10, VirtualReg_43
	mv	s11, VirtualReg_44

	.globl	gcd2
	.p2align	2
	.type	gcd2,@function
gcd2:
.gcd2_assemblyInit:
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
	lw	VirtualReg_10, 8(s0)
	lw	VirtualReg_11, 12(s0)
	lw	VirtualReg_12, 16(s0)
	lw	VirtualReg_13, 20(s0)
	lw	VirtualReg_14, 24(s0)
	lw	VirtualReg_15, 28(s0)
	lw	VirtualReg_16, 32(s0)
	lw	VirtualReg_17, 36(s0)
	lw	VirtualReg_18, 40(s0)
	lw	VirtualReg_19, 44(s0)
	lw	VirtualReg_20, 48(s0)
	lw	VirtualReg_21, 52(s0)
	lw	VirtualReg_22, 56(s0)
	lw	VirtualReg_23, 60(s0)
	lw	VirtualReg_24, 64(s0)
	lw	VirtualReg_25, 68(s0)
	lw	VirtualReg_26, 72(s0)
	lw	VirtualReg_27, 76(s0)
	lw	VirtualReg_28, 80(s0)
	lw	VirtualReg_29, 84(s0)
	lw	VirtualReg_30, 88(s0)
	lw	VirtualReg_31, 92(s0)
	mv	VirtualReg_32, sp
	mv	VirtualReg_33, s0
	mv	VirtualReg_34, s1
	mv	VirtualReg_35, s2
	mv	VirtualReg_36, s3
	mv	VirtualReg_37, s4
	mv	VirtualReg_38, s5
	mv	VirtualReg_39, s6
	mv	VirtualReg_40, s7
	mv	VirtualReg_41, s8
	mv	VirtualReg_42, s9
	mv	VirtualReg_43, s10
	mv	VirtualReg_44, s11
.gcd2_entry:
	li	VirtualReg_46, -12
	add	VirtualReg_46, s0, VirtualReg_46
	sw	VirtualReg_0, 0(VirtualReg_46)
	li	VirtualReg_48, -16
	add	VirtualReg_48, s0, VirtualReg_48
	sw	VirtualReg_1, 0(VirtualReg_48)
	li	VirtualReg_50, -20
	add	VirtualReg_50, s0, VirtualReg_50
	sw	VirtualReg_2, 0(VirtualReg_50)
	li	VirtualReg_52, -24
	add	VirtualReg_52, s0, VirtualReg_52
	sw	VirtualReg_3, 0(VirtualReg_52)
	li	VirtualReg_54, -28
	add	VirtualReg_54, s0, VirtualReg_54
	sw	VirtualReg_4, 0(VirtualReg_54)
	li	VirtualReg_56, -32
	add	VirtualReg_56, s0, VirtualReg_56
	sw	VirtualReg_5, 0(VirtualReg_56)
	li	VirtualReg_58, -36
	add	VirtualReg_58, s0, VirtualReg_58
	sw	VirtualReg_6, 0(VirtualReg_58)
	li	VirtualReg_60, -40
	add	VirtualReg_60, s0, VirtualReg_60
	sw	VirtualReg_7, 0(VirtualReg_60)
	li	VirtualReg_62, -44
	add	VirtualReg_62, s0, VirtualReg_62
	sw	VirtualReg_8, 0(VirtualReg_62)
	li	VirtualReg_64, -48
	add	VirtualReg_64, s0, VirtualReg_64
	sw	VirtualReg_9, 0(VirtualReg_64)
	li	VirtualReg_66, -52
	add	VirtualReg_66, s0, VirtualReg_66
	sw	VirtualReg_10, 0(VirtualReg_66)
	li	VirtualReg_68, -56
	add	VirtualReg_68, s0, VirtualReg_68
	sw	VirtualReg_11, 0(VirtualReg_68)
	li	VirtualReg_70, -60
	add	VirtualReg_70, s0, VirtualReg_70
	sw	VirtualReg_12, 0(VirtualReg_70)
	li	VirtualReg_72, -64
	add	VirtualReg_72, s0, VirtualReg_72
	sw	VirtualReg_13, 0(VirtualReg_72)
	li	VirtualReg_74, -68
	add	VirtualReg_74, s0, VirtualReg_74
	sw	VirtualReg_14, 0(VirtualReg_74)
	li	VirtualReg_76, -72
	add	VirtualReg_76, s0, VirtualReg_76
	sw	VirtualReg_15, 0(VirtualReg_76)
	li	VirtualReg_78, -76
	add	VirtualReg_78, s0, VirtualReg_78
	sw	VirtualReg_16, 0(VirtualReg_78)
	li	VirtualReg_80, -80
	add	VirtualReg_80, s0, VirtualReg_80
	sw	VirtualReg_17, 0(VirtualReg_80)
	li	VirtualReg_82, -84
	add	VirtualReg_82, s0, VirtualReg_82
	sw	VirtualReg_18, 0(VirtualReg_82)
	li	VirtualReg_84, -88
	add	VirtualReg_84, s0, VirtualReg_84
	sw	VirtualReg_19, 0(VirtualReg_84)
	li	VirtualReg_86, -92
	add	VirtualReg_86, s0, VirtualReg_86
	sw	VirtualReg_20, 0(VirtualReg_86)
	li	VirtualReg_88, -96
	add	VirtualReg_88, s0, VirtualReg_88
	sw	VirtualReg_21, 0(VirtualReg_88)
	li	VirtualReg_90, -100
	add	VirtualReg_90, s0, VirtualReg_90
	sw	VirtualReg_22, 0(VirtualReg_90)
	li	VirtualReg_92, -104
	add	VirtualReg_92, s0, VirtualReg_92
	sw	VirtualReg_23, 0(VirtualReg_92)
	li	VirtualReg_94, -108
	add	VirtualReg_94, s0, VirtualReg_94
	sw	VirtualReg_24, 0(VirtualReg_94)
	li	VirtualReg_96, -112
	add	VirtualReg_96, s0, VirtualReg_96
	sw	VirtualReg_25, 0(VirtualReg_96)
	li	VirtualReg_98, -116
	add	VirtualReg_98, s0, VirtualReg_98
	sw	VirtualReg_26, 0(VirtualReg_98)
	li	VirtualReg_100, -120
	add	VirtualReg_100, s0, VirtualReg_100
	sw	VirtualReg_27, 0(VirtualReg_100)
	li	VirtualReg_102, -124
	add	VirtualReg_102, s0, VirtualReg_102
	sw	VirtualReg_28, 0(VirtualReg_102)
	li	VirtualReg_104, -128
	add	VirtualReg_104, s0, VirtualReg_104
	sw	VirtualReg_29, 0(VirtualReg_104)
	li	VirtualReg_106, -132
	add	VirtualReg_106, s0, VirtualReg_106
	sw	VirtualReg_30, 0(VirtualReg_106)
	li	VirtualReg_108, -136
	add	VirtualReg_108, s0, VirtualReg_108
	sw	VirtualReg_31, 0(VirtualReg_108)
	li	VirtualReg_112, -20
	add	VirtualReg_112, s0, VirtualReg_112
	lw	VirtualReg_111, 0(VirtualReg_112)
	li	VirtualReg_114, -24
	add	VirtualReg_114, s0, VirtualReg_114
	lw	VirtualReg_113, 0(VirtualReg_114)
	add	fuckLLVM_68, VirtualReg_111, VirtualReg_113
	li	VirtualReg_116, -28
	add	VirtualReg_116, s0, VirtualReg_116
	lw	VirtualReg_115, 0(VirtualReg_116)
	add	fuckLLVM_70, fuckLLVM_68, VirtualReg_115
	li	VirtualReg_118, -32
	add	VirtualReg_118, s0, VirtualReg_118
	lw	VirtualReg_117, 0(VirtualReg_118)
	add	fuckLLVM_72, fuckLLVM_70, VirtualReg_117
	li	VirtualReg_120, -36
	add	VirtualReg_120, s0, VirtualReg_120
	lw	VirtualReg_119, 0(VirtualReg_120)
	add	fuckLLVM_74, fuckLLVM_72, VirtualReg_119
	li	VirtualReg_122, -40
	add	VirtualReg_122, s0, VirtualReg_122
	lw	VirtualReg_121, 0(VirtualReg_122)
	add	fuckLLVM_76, fuckLLVM_74, VirtualReg_121
	li	VirtualReg_124, -44
	add	VirtualReg_124, s0, VirtualReg_124
	lw	VirtualReg_123, 0(VirtualReg_124)
	add	fuckLLVM_78, fuckLLVM_76, VirtualReg_123
	li	VirtualReg_126, -48
	add	VirtualReg_126, s0, VirtualReg_126
	lw	VirtualReg_125, 0(VirtualReg_126)
	add	fuckLLVM_80, fuckLLVM_78, VirtualReg_125
	li	VirtualReg_128, -52
	add	VirtualReg_128, s0, VirtualReg_128
	lw	VirtualReg_127, 0(VirtualReg_128)
	add	fuckLLVM_82, fuckLLVM_80, VirtualReg_127
	li	VirtualReg_130, -56
	add	VirtualReg_130, s0, VirtualReg_130
	lw	VirtualReg_129, 0(VirtualReg_130)
	add	fuckLLVM_84, fuckLLVM_82, VirtualReg_129
	li	VirtualReg_132, -60
	add	VirtualReg_132, s0, VirtualReg_132
	lw	VirtualReg_131, 0(VirtualReg_132)
	add	fuckLLVM_86, fuckLLVM_84, VirtualReg_131
	li	VirtualReg_134, -64
	add	VirtualReg_134, s0, VirtualReg_134
	lw	VirtualReg_133, 0(VirtualReg_134)
	add	fuckLLVM_88, fuckLLVM_86, VirtualReg_133
	li	VirtualReg_136, -68
	add	VirtualReg_136, s0, VirtualReg_136
	lw	VirtualReg_135, 0(VirtualReg_136)
	add	fuckLLVM_90, fuckLLVM_88, VirtualReg_135
	li	VirtualReg_138, -72
	add	VirtualReg_138, s0, VirtualReg_138
	lw	VirtualReg_137, 0(VirtualReg_138)
	add	fuckLLVM_92, fuckLLVM_90, VirtualReg_137
	li	VirtualReg_140, -76
	add	VirtualReg_140, s0, VirtualReg_140
	lw	VirtualReg_139, 0(VirtualReg_140)
	add	fuckLLVM_94, fuckLLVM_92, VirtualReg_139
	li	VirtualReg_142, -80
	add	VirtualReg_142, s0, VirtualReg_142
	lw	VirtualReg_141, 0(VirtualReg_142)
	add	fuckLLVM_96, fuckLLVM_94, VirtualReg_141
	li	VirtualReg_144, -84
	add	VirtualReg_144, s0, VirtualReg_144
	lw	VirtualReg_143, 0(VirtualReg_144)
	add	fuckLLVM_98, fuckLLVM_96, VirtualReg_143
	li	VirtualReg_146, -88
	add	VirtualReg_146, s0, VirtualReg_146
	lw	VirtualReg_145, 0(VirtualReg_146)
	add	fuckLLVM_100, fuckLLVM_98, VirtualReg_145
	li	VirtualReg_148, -92
	add	VirtualReg_148, s0, VirtualReg_148
	lw	VirtualReg_147, 0(VirtualReg_148)
	add	fuckLLVM_102, fuckLLVM_100, VirtualReg_147
	li	VirtualReg_150, -96
	add	VirtualReg_150, s0, VirtualReg_150
	lw	VirtualReg_149, 0(VirtualReg_150)
	add	fuckLLVM_104, fuckLLVM_102, VirtualReg_149
	li	VirtualReg_152, -100
	add	VirtualReg_152, s0, VirtualReg_152
	lw	VirtualReg_151, 0(VirtualReg_152)
	add	fuckLLVM_106, fuckLLVM_104, VirtualReg_151
	li	VirtualReg_154, -104
	add	VirtualReg_154, s0, VirtualReg_154
	lw	VirtualReg_153, 0(VirtualReg_154)
	add	fuckLLVM_108, fuckLLVM_106, VirtualReg_153
	li	VirtualReg_156, -108
	add	VirtualReg_156, s0, VirtualReg_156
	lw	VirtualReg_155, 0(VirtualReg_156)
	add	fuckLLVM_110, fuckLLVM_108, VirtualReg_155
	li	VirtualReg_158, -112
	add	VirtualReg_158, s0, VirtualReg_158
	lw	VirtualReg_157, 0(VirtualReg_158)
	add	fuckLLVM_112, fuckLLVM_110, VirtualReg_157
	li	VirtualReg_160, -116
	add	VirtualReg_160, s0, VirtualReg_160
	lw	VirtualReg_159, 0(VirtualReg_160)
	add	fuckLLVM_114, fuckLLVM_112, VirtualReg_159
	li	VirtualReg_162, -120
	add	VirtualReg_162, s0, VirtualReg_162
	lw	VirtualReg_161, 0(VirtualReg_162)
	add	fuckLLVM_116, fuckLLVM_114, VirtualReg_161
	li	VirtualReg_164, -124
	add	VirtualReg_164, s0, VirtualReg_164
	lw	VirtualReg_163, 0(VirtualReg_164)
	add	fuckLLVM_118, fuckLLVM_116, VirtualReg_163
	li	VirtualReg_166, -128
	add	VirtualReg_166, s0, VirtualReg_166
	lw	VirtualReg_165, 0(VirtualReg_166)
	add	fuckLLVM_120, fuckLLVM_118, VirtualReg_165
	li	VirtualReg_168, -132
	add	VirtualReg_168, s0, VirtualReg_168
	lw	VirtualReg_167, 0(VirtualReg_168)
	add	fuckLLVM_122, fuckLLVM_120, VirtualReg_167
	li	VirtualReg_170, -136
	add	VirtualReg_170, s0, VirtualReg_170
	lw	VirtualReg_169, 0(VirtualReg_170)
	add	fuckLLVM_124, fuckLLVM_122, VirtualReg_169
	li	VirtualReg_171, 100
	rem	fuckLLVM_125, fuckLLVM_124, VirtualReg_171
	li	VirtualReg_172, -144
	add	VirtualReg_172, s0, VirtualReg_172
	sw	fuckLLVM_125, 0(VirtualReg_172)
	li	VirtualReg_174, -12
	add	VirtualReg_174, s0, VirtualReg_174
	lw	VirtualReg_173, 0(VirtualReg_174)
	li	VirtualReg_176, -16
	add	VirtualReg_176, s0, VirtualReg_176
	lw	VirtualReg_175, 0(VirtualReg_176)
	rem	fuckLLVM_128, VirtualReg_173, VirtualReg_175
	li	VirtualReg_177, 0
	xor	fuckLLVM_129, fuckLLVM_128, VirtualReg_177
	sltiu	fuckLLVM_129, fuckLLVM_129, 1
	bnez	fuckLLVM_129, .gcd2_ID129_if_true
	j	.gcd2_ID129_if_false
.gcd2_ID129_if_true:
	li	VirtualReg_179, -16
	add	VirtualReg_179, s0, VirtualReg_179
	lw	VirtualReg_178, 0(VirtualReg_179)
	li	VirtualReg_180, -140
	add	VirtualReg_180, s0, VirtualReg_180
	sw	VirtualReg_178, 0(VirtualReg_180)
	j	.gcd2_return
	j	.gcd2_ID129_if_out
.gcd2_ID129_if_false:
	li	VirtualReg_182, -16
	add	VirtualReg_182, s0, VirtualReg_182
	lw	VirtualReg_181, 0(VirtualReg_182)
	li	VirtualReg_184, -12
	add	VirtualReg_184, s0, VirtualReg_184
	lw	VirtualReg_183, 0(VirtualReg_184)
	li	VirtualReg_186, -16
	add	VirtualReg_186, s0, VirtualReg_186
	lw	VirtualReg_185, 0(VirtualReg_186)
	rem	fuckLLVM_134, VirtualReg_183, VirtualReg_185
	li	VirtualReg_188, -20
	add	VirtualReg_188, s0, VirtualReg_188
	lw	VirtualReg_187, 0(VirtualReg_188)
	li	VirtualReg_190, -24
	add	VirtualReg_190, s0, VirtualReg_190
	lw	VirtualReg_189, 0(VirtualReg_190)
	li	VirtualReg_192, -28
	add	VirtualReg_192, s0, VirtualReg_192
	lw	VirtualReg_191, 0(VirtualReg_192)
	li	VirtualReg_194, -32
	add	VirtualReg_194, s0, VirtualReg_194
	lw	VirtualReg_193, 0(VirtualReg_194)
	li	VirtualReg_196, -36
	add	VirtualReg_196, s0, VirtualReg_196
	lw	VirtualReg_195, 0(VirtualReg_196)
	li	VirtualReg_198, -40
	add	VirtualReg_198, s0, VirtualReg_198
	lw	VirtualReg_197, 0(VirtualReg_198)
	li	VirtualReg_200, -44
	add	VirtualReg_200, s0, VirtualReg_200
	lw	VirtualReg_199, 0(VirtualReg_200)
	li	VirtualReg_202, -48
	add	VirtualReg_202, s0, VirtualReg_202
	lw	VirtualReg_201, 0(VirtualReg_202)
	li	VirtualReg_204, -52
	add	VirtualReg_204, s0, VirtualReg_204
	lw	VirtualReg_203, 0(VirtualReg_204)
	li	VirtualReg_206, -56
	add	VirtualReg_206, s0, VirtualReg_206
	lw	VirtualReg_205, 0(VirtualReg_206)
	li	VirtualReg_208, -60
	add	VirtualReg_208, s0, VirtualReg_208
	lw	VirtualReg_207, 0(VirtualReg_208)
	li	VirtualReg_210, -64
	add	VirtualReg_210, s0, VirtualReg_210
	lw	VirtualReg_209, 0(VirtualReg_210)
	li	VirtualReg_212, -68
	add	VirtualReg_212, s0, VirtualReg_212
	lw	VirtualReg_211, 0(VirtualReg_212)
	li	VirtualReg_214, -72
	add	VirtualReg_214, s0, VirtualReg_214
	lw	VirtualReg_213, 0(VirtualReg_214)
	li	VirtualReg_216, -76
	add	VirtualReg_216, s0, VirtualReg_216
	lw	VirtualReg_215, 0(VirtualReg_216)
	li	VirtualReg_218, -80
	add	VirtualReg_218, s0, VirtualReg_218
	lw	VirtualReg_217, 0(VirtualReg_218)
	li	VirtualReg_220, -84
	add	VirtualReg_220, s0, VirtualReg_220
	lw	VirtualReg_219, 0(VirtualReg_220)
	li	VirtualReg_222, -88
	add	VirtualReg_222, s0, VirtualReg_222
	lw	VirtualReg_221, 0(VirtualReg_222)
	li	VirtualReg_224, -92
	add	VirtualReg_224, s0, VirtualReg_224
	lw	VirtualReg_223, 0(VirtualReg_224)
	li	VirtualReg_226, -96
	add	VirtualReg_226, s0, VirtualReg_226
	lw	VirtualReg_225, 0(VirtualReg_226)
	li	VirtualReg_228, -100
	add	VirtualReg_228, s0, VirtualReg_228
	lw	VirtualReg_227, 0(VirtualReg_228)
	li	VirtualReg_230, -104
	add	VirtualReg_230, s0, VirtualReg_230
	lw	VirtualReg_229, 0(VirtualReg_230)
	li	VirtualReg_232, -108
	add	VirtualReg_232, s0, VirtualReg_232
	lw	VirtualReg_231, 0(VirtualReg_232)
	li	VirtualReg_234, -112
	add	VirtualReg_234, s0, VirtualReg_234
	lw	VirtualReg_233, 0(VirtualReg_234)
	li	VirtualReg_236, -116
	add	VirtualReg_236, s0, VirtualReg_236
	lw	VirtualReg_235, 0(VirtualReg_236)
	li	VirtualReg_238, -120
	add	VirtualReg_238, s0, VirtualReg_238
	lw	VirtualReg_237, 0(VirtualReg_238)
	li	VirtualReg_240, -124
	add	VirtualReg_240, s0, VirtualReg_240
	lw	VirtualReg_239, 0(VirtualReg_240)
	li	VirtualReg_242, -128
	add	VirtualReg_242, s0, VirtualReg_242
	lw	VirtualReg_241, 0(VirtualReg_242)
	li	VirtualReg_244, -132
	add	VirtualReg_244, s0, VirtualReg_244
	lw	VirtualReg_243, 0(VirtualReg_244)
	li	VirtualReg_246, -136
	add	VirtualReg_246, s0, VirtualReg_246
	lw	VirtualReg_245, 0(VirtualReg_246)
	mv	a0, VirtualReg_181
	mv	a1, fuckLLVM_134
	mv	a2, VirtualReg_187
	mv	a3, VirtualReg_189
	mv	a4, VirtualReg_191
	mv	a5, VirtualReg_193
	mv	a6, VirtualReg_195
	mv	a7, VirtualReg_197
	sw	VirtualReg_199, 0(sp)
	sw	VirtualReg_201, 4(sp)
	sw	VirtualReg_203, 8(sp)
	sw	VirtualReg_205, 12(sp)
	sw	VirtualReg_207, 16(sp)
	sw	VirtualReg_209, 20(sp)
	sw	VirtualReg_211, 24(sp)
	sw	VirtualReg_213, 28(sp)
	sw	VirtualReg_215, 32(sp)
	sw	VirtualReg_217, 36(sp)
	sw	VirtualReg_219, 40(sp)
	sw	VirtualReg_221, 44(sp)
	sw	VirtualReg_223, 48(sp)
	sw	VirtualReg_225, 52(sp)
	sw	VirtualReg_227, 56(sp)
	sw	VirtualReg_229, 60(sp)
	sw	VirtualReg_231, 64(sp)
	sw	VirtualReg_233, 68(sp)
	sw	VirtualReg_235, 72(sp)
	sw	VirtualReg_237, 76(sp)
	sw	VirtualReg_239, 80(sp)
	sw	VirtualReg_241, 84(sp)
	sw	VirtualReg_243, 88(sp)
	sw	VirtualReg_245, 92(sp)
	call	gcd
	mv	VirtualReg_247, a0
	li	VirtualReg_248, -140
	add	VirtualReg_248, s0, VirtualReg_248
	sw	VirtualReg_247, 0(VirtualReg_248)
	j	.gcd2_return
	j	.gcd2_ID129_if_out
.gcd2_ID129_if_out:
	j	.gcd2_return
.gcd2_return:
	li	VirtualReg_250, -140
	add	VirtualReg_250, s0, VirtualReg_250
	lw	VirtualReg_249, 0(VirtualReg_250)
	mv	a0, VirtualReg_249
	mv	sp, VirtualReg_32
	mv	s0, VirtualReg_33
	mv	s1, VirtualReg_34
	mv	s2, VirtualReg_35
	mv	s3, VirtualReg_36
	mv	s4, VirtualReg_37
	mv	s5, VirtualReg_38
	mv	s6, VirtualReg_39
	mv	s7, VirtualReg_40
	mv	s8, VirtualReg_41
	mv	s9, VirtualReg_42
	mv	s10, VirtualReg_43
	mv	s11, VirtualReg_44

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
.main_entry:
	call	__init
	li	VirtualReg_14, 0
	li	VirtualReg_15, -12
	add	VirtualReg_15, s0, VirtualReg_15
	sw	VirtualReg_14, 0(VirtualReg_15)
	li	VirtualReg_16, 10
	mv	a0, VirtualReg_16
	li	VirtualReg_17, 1
	mv	a1, VirtualReg_17
	li	VirtualReg_18, 0
	mv	a2, VirtualReg_18
	li	VirtualReg_19, 2
	mv	a3, VirtualReg_19
	li	VirtualReg_20, 4
	mv	a4, VirtualReg_20
	li	VirtualReg_21, 6
	mv	a5, VirtualReg_21
	li	VirtualReg_22, 8
	mv	a6, VirtualReg_22
	li	VirtualReg_23, 10
	mv	a7, VirtualReg_23
	li	VirtualReg_24, 12
	sw	VirtualReg_24, 0(sp)
	li	VirtualReg_25, 14
	sw	VirtualReg_25, 4(sp)
	li	VirtualReg_26, 16
	sw	VirtualReg_26, 8(sp)
	li	VirtualReg_27, 18
	sw	VirtualReg_27, 12(sp)
	li	VirtualReg_28, 20
	sw	VirtualReg_28, 16(sp)
	li	VirtualReg_29, 22
	sw	VirtualReg_29, 20(sp)
	li	VirtualReg_30, 24
	sw	VirtualReg_30, 24(sp)
	li	VirtualReg_31, 26
	sw	VirtualReg_31, 28(sp)
	li	VirtualReg_32, 28
	sw	VirtualReg_32, 32(sp)
	li	VirtualReg_33, 30
	sw	VirtualReg_33, 36(sp)
	li	VirtualReg_34, 32
	sw	VirtualReg_34, 40(sp)
	li	VirtualReg_35, 34
	sw	VirtualReg_35, 44(sp)
	li	VirtualReg_36, 36
	sw	VirtualReg_36, 48(sp)
	li	VirtualReg_37, 38
	sw	VirtualReg_37, 52(sp)
	li	VirtualReg_38, 40
	sw	VirtualReg_38, 56(sp)
	li	VirtualReg_39, 42
	sw	VirtualReg_39, 60(sp)
	li	VirtualReg_40, 44
	sw	VirtualReg_40, 64(sp)
	li	VirtualReg_41, 46
	sw	VirtualReg_41, 68(sp)
	li	VirtualReg_42, 48
	sw	VirtualReg_42, 72(sp)
	li	VirtualReg_43, 50
	sw	VirtualReg_43, 76(sp)
	li	VirtualReg_44, 52
	sw	VirtualReg_44, 80(sp)
	li	VirtualReg_45, 54
	sw	VirtualReg_45, 84(sp)
	li	VirtualReg_46, 56
	sw	VirtualReg_46, 88(sp)
	li	VirtualReg_47, 58
	sw	VirtualReg_47, 92(sp)
	call	gcd
	mv	VirtualReg_48, a0
	li	VirtualReg_49, 1024
	add	fuckLLVM_2, VirtualReg_48, VirtualReg_49
	mv	a0, fuckLLVM_2
	call	toString
	mv	VirtualReg_50, a0
	mv	a0, VirtualReg_50
	call	println
	li	VirtualReg_51, 0
	li	VirtualReg_52, -12
	add	VirtualReg_52, s0, VirtualReg_52
	sw	VirtualReg_51, 0(VirtualReg_52)
	j	.main_return
	j	.main_return
.main_return:
	li	VirtualReg_54, -12
	add	VirtualReg_54, s0, VirtualReg_54
	lw	VirtualReg_53, 0(VirtualReg_54)
	mv	a0, VirtualReg_53
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

