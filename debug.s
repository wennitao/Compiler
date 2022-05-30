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

	.globl	wpp
	.p2align	2
	.type	wpp,@function
wpp:
.wpp_assemblyInit:
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
	j	.wpp_entry
.wpp_entry:
	lw	VirtualReg_12, fuckLLVM_w
	addi	VirtualReg_13, VirtualReg_12, 1
	la	VirtualReg_14, fuckLLVM_w
	sw	VirtualReg_13, 0(VirtualReg_14)
	lw	VirtualReg_15, fuckLLVM_w
	addi	VirtualReg_16, VirtualReg_15, 1
	la	VirtualReg_17, fuckLLVM_w
	sw	VirtualReg_16, 0(VirtualReg_17)
	lw	VirtualReg_18, fuckLLVM_w
	j	.wpp_return
.wpp_return:
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

	.globl	wppp
	.p2align	2
	.type	wppp,@function
wppp:
.wppp_assemblyInit:
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
	j	.wppp_entry
.wppp_entry:
	j	.wppp_call_wpp_0
.wppp_call_wpp_0:
	lw	VirtualReg_12, fuckLLVM_w
	addi	VirtualReg_13, VirtualReg_12, 1
	la	VirtualReg_14, fuckLLVM_w
	sw	VirtualReg_13, 0(VirtualReg_14)
	lw	VirtualReg_15, fuckLLVM_w
	addi	VirtualReg_16, VirtualReg_15, 1
	la	VirtualReg_17, fuckLLVM_w
	sw	VirtualReg_16, 0(VirtualReg_17)
	lw	VirtualReg_18, fuckLLVM_w
	lw	VirtualReg_19, fuckLLVM_w
	addi	VirtualReg_20, VirtualReg_19, 1
	la	VirtualReg_21, fuckLLVM_w
	sw	VirtualReg_20, 0(VirtualReg_21)
	lw	VirtualReg_22, fuckLLVM_w
	addi	VirtualReg_23, VirtualReg_22, 1
	la	VirtualReg_24, fuckLLVM_w
	sw	VirtualReg_23, 0(VirtualReg_24)
	lw	VirtualReg_25, fuckLLVM_w
	lw	VirtualReg_26, fuckLLVM_w
	addi	VirtualReg_27, VirtualReg_26, 1
	la	VirtualReg_28, fuckLLVM_w
	sw	VirtualReg_27, 0(VirtualReg_28)
	lw	VirtualReg_29, fuckLLVM_w
	addi	VirtualReg_30, VirtualReg_29, 1
	la	VirtualReg_31, fuckLLVM_w
	sw	VirtualReg_30, 0(VirtualReg_31)
	lw	VirtualReg_32, fuckLLVM_w
	lw	VirtualReg_33, fuckLLVM_w
	addi	VirtualReg_34, VirtualReg_33, 1
	la	VirtualReg_35, fuckLLVM_w
	sw	VirtualReg_34, 0(VirtualReg_35)
	lw	VirtualReg_36, fuckLLVM_w
	addi	VirtualReg_37, VirtualReg_36, 1
	la	VirtualReg_38, fuckLLVM_w
	sw	VirtualReg_37, 0(VirtualReg_38)
	lw	VirtualReg_39, fuckLLVM_w
	lw	VirtualReg_40, fuckLLVM_w
	addi	VirtualReg_41, VirtualReg_40, 1
	la	VirtualReg_42, fuckLLVM_w
	sw	VirtualReg_41, 0(VirtualReg_42)
	lw	VirtualReg_43, fuckLLVM_w
	addi	VirtualReg_44, VirtualReg_43, 1
	la	VirtualReg_45, fuckLLVM_w
	sw	VirtualReg_44, 0(VirtualReg_45)
	lw	VirtualReg_46, fuckLLVM_w
	lw	VirtualReg_47, fuckLLVM_w
	addi	VirtualReg_48, VirtualReg_47, 1
	la	VirtualReg_49, fuckLLVM_w
	sw	VirtualReg_48, 0(VirtualReg_49)
	lw	VirtualReg_50, fuckLLVM_w
	addi	VirtualReg_51, VirtualReg_50, 1
	la	VirtualReg_52, fuckLLVM_w
	sw	VirtualReg_51, 0(VirtualReg_52)
	lw	VirtualReg_53, fuckLLVM_w
	lw	VirtualReg_54, fuckLLVM_w
	addi	VirtualReg_55, VirtualReg_54, 1
	la	VirtualReg_56, fuckLLVM_w
	sw	VirtualReg_55, 0(VirtualReg_56)
	lw	VirtualReg_57, fuckLLVM_w
	addi	VirtualReg_58, VirtualReg_57, 1
	la	VirtualReg_59, fuckLLVM_w
	sw	VirtualReg_58, 0(VirtualReg_59)
	lw	VirtualReg_60, fuckLLVM_w
	lw	VirtualReg_61, fuckLLVM_w
	addi	VirtualReg_62, VirtualReg_61, 1
	la	VirtualReg_63, fuckLLVM_w
	sw	VirtualReg_62, 0(VirtualReg_63)
	lw	VirtualReg_64, fuckLLVM_w
	addi	VirtualReg_65, VirtualReg_64, 1
	la	VirtualReg_66, fuckLLVM_w
	sw	VirtualReg_65, 0(VirtualReg_66)
	lw	VirtualReg_67, fuckLLVM_w
	j	.wppp_return
.wppp_return:
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

	.globl	wpppp
	.p2align	2
	.type	wpppp,@function
wpppp:
.wpppp_assemblyInit:
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
	j	.wpppp_entry
.wpppp_entry:
	j	.wpppp_call_wppp_8
.wpppp_call_wppp_8:
	lw	VirtualReg_12, fuckLLVM_w
	addi	VirtualReg_13, VirtualReg_12, 1
	la	VirtualReg_14, fuckLLVM_w
	sw	VirtualReg_13, 0(VirtualReg_14)
	lw	VirtualReg_15, fuckLLVM_w
	addi	VirtualReg_16, VirtualReg_15, 1
	la	VirtualReg_17, fuckLLVM_w
	sw	VirtualReg_16, 0(VirtualReg_17)
	lw	VirtualReg_18, fuckLLVM_w
	lw	VirtualReg_19, fuckLLVM_w
	addi	VirtualReg_20, VirtualReg_19, 1
	la	VirtualReg_21, fuckLLVM_w
	sw	VirtualReg_20, 0(VirtualReg_21)
	lw	VirtualReg_22, fuckLLVM_w
	addi	VirtualReg_23, VirtualReg_22, 1
	la	VirtualReg_24, fuckLLVM_w
	sw	VirtualReg_23, 0(VirtualReg_24)
	lw	VirtualReg_25, fuckLLVM_w
	lw	VirtualReg_26, fuckLLVM_w
	addi	VirtualReg_27, VirtualReg_26, 1
	la	VirtualReg_28, fuckLLVM_w
	sw	VirtualReg_27, 0(VirtualReg_28)
	lw	VirtualReg_29, fuckLLVM_w
	addi	VirtualReg_30, VirtualReg_29, 1
	la	VirtualReg_31, fuckLLVM_w
	sw	VirtualReg_30, 0(VirtualReg_31)
	lw	VirtualReg_32, fuckLLVM_w
	lw	VirtualReg_33, fuckLLVM_w
	addi	VirtualReg_34, VirtualReg_33, 1
	la	VirtualReg_35, fuckLLVM_w
	sw	VirtualReg_34, 0(VirtualReg_35)
	lw	VirtualReg_36, fuckLLVM_w
	addi	VirtualReg_37, VirtualReg_36, 1
	la	VirtualReg_38, fuckLLVM_w
	sw	VirtualReg_37, 0(VirtualReg_38)
	lw	VirtualReg_39, fuckLLVM_w
	lw	VirtualReg_40, fuckLLVM_w
	addi	VirtualReg_41, VirtualReg_40, 1
	la	VirtualReg_42, fuckLLVM_w
	sw	VirtualReg_41, 0(VirtualReg_42)
	lw	VirtualReg_43, fuckLLVM_w
	addi	VirtualReg_44, VirtualReg_43, 1
	la	VirtualReg_45, fuckLLVM_w
	sw	VirtualReg_44, 0(VirtualReg_45)
	lw	VirtualReg_46, fuckLLVM_w
	lw	VirtualReg_47, fuckLLVM_w
	addi	VirtualReg_48, VirtualReg_47, 1
	la	VirtualReg_49, fuckLLVM_w
	sw	VirtualReg_48, 0(VirtualReg_49)
	lw	VirtualReg_50, fuckLLVM_w
	addi	VirtualReg_51, VirtualReg_50, 1
	la	VirtualReg_52, fuckLLVM_w
	sw	VirtualReg_51, 0(VirtualReg_52)
	lw	VirtualReg_53, fuckLLVM_w
	lw	VirtualReg_54, fuckLLVM_w
	addi	VirtualReg_55, VirtualReg_54, 1
	la	VirtualReg_56, fuckLLVM_w
	sw	VirtualReg_55, 0(VirtualReg_56)
	lw	VirtualReg_57, fuckLLVM_w
	addi	VirtualReg_58, VirtualReg_57, 1
	la	VirtualReg_59, fuckLLVM_w
	sw	VirtualReg_58, 0(VirtualReg_59)
	lw	VirtualReg_60, fuckLLVM_w
	lw	VirtualReg_61, fuckLLVM_w
	addi	VirtualReg_62, VirtualReg_61, 1
	la	VirtualReg_63, fuckLLVM_w
	sw	VirtualReg_62, 0(VirtualReg_63)
	lw	VirtualReg_64, fuckLLVM_w
	addi	VirtualReg_65, VirtualReg_64, 1
	la	VirtualReg_66, fuckLLVM_w
	sw	VirtualReg_65, 0(VirtualReg_66)
	lw	VirtualReg_67, fuckLLVM_w
	lw	VirtualReg_68, fuckLLVM_w
	addi	VirtualReg_69, VirtualReg_68, 1
	la	VirtualReg_70, fuckLLVM_w
	sw	VirtualReg_69, 0(VirtualReg_70)
	lw	VirtualReg_71, fuckLLVM_w
	addi	VirtualReg_72, VirtualReg_71, 1
	la	VirtualReg_73, fuckLLVM_w
	sw	VirtualReg_72, 0(VirtualReg_73)
	lw	VirtualReg_74, fuckLLVM_w
	lw	VirtualReg_75, fuckLLVM_w
	addi	VirtualReg_76, VirtualReg_75, 1
	la	VirtualReg_77, fuckLLVM_w
	sw	VirtualReg_76, 0(VirtualReg_77)
	lw	VirtualReg_78, fuckLLVM_w
	addi	VirtualReg_79, VirtualReg_78, 1
	la	VirtualReg_80, fuckLLVM_w
	sw	VirtualReg_79, 0(VirtualReg_80)
	lw	VirtualReg_81, fuckLLVM_w
	lw	VirtualReg_82, fuckLLVM_w
	addi	VirtualReg_83, VirtualReg_82, 1
	la	VirtualReg_84, fuckLLVM_w
	sw	VirtualReg_83, 0(VirtualReg_84)
	lw	VirtualReg_85, fuckLLVM_w
	addi	VirtualReg_86, VirtualReg_85, 1
	la	VirtualReg_87, fuckLLVM_w
	sw	VirtualReg_86, 0(VirtualReg_87)
	lw	VirtualReg_88, fuckLLVM_w
	lw	VirtualReg_89, fuckLLVM_w
	addi	VirtualReg_90, VirtualReg_89, 1
	la	VirtualReg_91, fuckLLVM_w
	sw	VirtualReg_90, 0(VirtualReg_91)
	lw	VirtualReg_92, fuckLLVM_w
	addi	VirtualReg_93, VirtualReg_92, 1
	la	VirtualReg_94, fuckLLVM_w
	sw	VirtualReg_93, 0(VirtualReg_94)
	lw	VirtualReg_95, fuckLLVM_w
	lw	VirtualReg_96, fuckLLVM_w
	addi	VirtualReg_97, VirtualReg_96, 1
	la	VirtualReg_98, fuckLLVM_w
	sw	VirtualReg_97, 0(VirtualReg_98)
	lw	VirtualReg_99, fuckLLVM_w
	addi	VirtualReg_100, VirtualReg_99, 1
	la	VirtualReg_101, fuckLLVM_w
	sw	VirtualReg_100, 0(VirtualReg_101)
	lw	VirtualReg_102, fuckLLVM_w
	lw	VirtualReg_103, fuckLLVM_w
	addi	VirtualReg_104, VirtualReg_103, 1
	la	VirtualReg_105, fuckLLVM_w
	sw	VirtualReg_104, 0(VirtualReg_105)
	lw	VirtualReg_106, fuckLLVM_w
	addi	VirtualReg_107, VirtualReg_106, 1
	la	VirtualReg_108, fuckLLVM_w
	sw	VirtualReg_107, 0(VirtualReg_108)
	lw	VirtualReg_109, fuckLLVM_w
	lw	VirtualReg_110, fuckLLVM_w
	addi	VirtualReg_111, VirtualReg_110, 1
	la	VirtualReg_112, fuckLLVM_w
	sw	VirtualReg_111, 0(VirtualReg_112)
	lw	VirtualReg_113, fuckLLVM_w
	addi	VirtualReg_114, VirtualReg_113, 1
	la	VirtualReg_115, fuckLLVM_w
	sw	VirtualReg_114, 0(VirtualReg_115)
	lw	VirtualReg_116, fuckLLVM_w
	lw	VirtualReg_117, fuckLLVM_w
	addi	VirtualReg_118, VirtualReg_117, 1
	la	VirtualReg_119, fuckLLVM_w
	sw	VirtualReg_118, 0(VirtualReg_119)
	lw	VirtualReg_120, fuckLLVM_w
	addi	VirtualReg_121, VirtualReg_120, 1
	la	VirtualReg_122, fuckLLVM_w
	sw	VirtualReg_121, 0(VirtualReg_122)
	lw	VirtualReg_123, fuckLLVM_w
	lw	VirtualReg_124, fuckLLVM_w
	addi	VirtualReg_125, VirtualReg_124, 1
	la	VirtualReg_126, fuckLLVM_w
	sw	VirtualReg_125, 0(VirtualReg_126)
	lw	VirtualReg_127, fuckLLVM_w
	addi	VirtualReg_128, VirtualReg_127, 1
	la	VirtualReg_129, fuckLLVM_w
	sw	VirtualReg_128, 0(VirtualReg_129)
	lw	VirtualReg_130, fuckLLVM_w
	lw	VirtualReg_131, fuckLLVM_w
	addi	VirtualReg_132, VirtualReg_131, 1
	la	VirtualReg_133, fuckLLVM_w
	sw	VirtualReg_132, 0(VirtualReg_133)
	lw	VirtualReg_134, fuckLLVM_w
	addi	VirtualReg_135, VirtualReg_134, 1
	la	VirtualReg_136, fuckLLVM_w
	sw	VirtualReg_135, 0(VirtualReg_136)
	lw	VirtualReg_137, fuckLLVM_w
	lw	VirtualReg_138, fuckLLVM_w
	addi	VirtualReg_139, VirtualReg_138, 1
	la	VirtualReg_140, fuckLLVM_w
	sw	VirtualReg_139, 0(VirtualReg_140)
	lw	VirtualReg_141, fuckLLVM_w
	addi	VirtualReg_142, VirtualReg_141, 1
	la	VirtualReg_143, fuckLLVM_w
	sw	VirtualReg_142, 0(VirtualReg_143)
	lw	VirtualReg_144, fuckLLVM_w
	lw	VirtualReg_145, fuckLLVM_w
	addi	VirtualReg_146, VirtualReg_145, 1
	la	VirtualReg_147, fuckLLVM_w
	sw	VirtualReg_146, 0(VirtualReg_147)
	lw	VirtualReg_148, fuckLLVM_w
	addi	VirtualReg_149, VirtualReg_148, 1
	la	VirtualReg_150, fuckLLVM_w
	sw	VirtualReg_149, 0(VirtualReg_150)
	lw	VirtualReg_151, fuckLLVM_w
	lw	VirtualReg_152, fuckLLVM_w
	addi	VirtualReg_153, VirtualReg_152, 1
	la	VirtualReg_154, fuckLLVM_w
	sw	VirtualReg_153, 0(VirtualReg_154)
	lw	VirtualReg_155, fuckLLVM_w
	addi	VirtualReg_156, VirtualReg_155, 1
	la	VirtualReg_157, fuckLLVM_w
	sw	VirtualReg_156, 0(VirtualReg_157)
	lw	VirtualReg_158, fuckLLVM_w
	lw	VirtualReg_159, fuckLLVM_w
	addi	VirtualReg_160, VirtualReg_159, 1
	la	VirtualReg_161, fuckLLVM_w
	sw	VirtualReg_160, 0(VirtualReg_161)
	lw	VirtualReg_162, fuckLLVM_w
	addi	VirtualReg_163, VirtualReg_162, 1
	la	VirtualReg_164, fuckLLVM_w
	sw	VirtualReg_163, 0(VirtualReg_164)
	lw	VirtualReg_165, fuckLLVM_w
	lw	VirtualReg_166, fuckLLVM_w
	addi	VirtualReg_167, VirtualReg_166, 1
	la	VirtualReg_168, fuckLLVM_w
	sw	VirtualReg_167, 0(VirtualReg_168)
	lw	VirtualReg_169, fuckLLVM_w
	addi	VirtualReg_170, VirtualReg_169, 1
	la	VirtualReg_171, fuckLLVM_w
	sw	VirtualReg_170, 0(VirtualReg_171)
	lw	VirtualReg_172, fuckLLVM_w
	lw	VirtualReg_173, fuckLLVM_w
	addi	VirtualReg_174, VirtualReg_173, 1
	la	VirtualReg_175, fuckLLVM_w
	sw	VirtualReg_174, 0(VirtualReg_175)
	lw	VirtualReg_176, fuckLLVM_w
	addi	VirtualReg_177, VirtualReg_176, 1
	la	VirtualReg_178, fuckLLVM_w
	sw	VirtualReg_177, 0(VirtualReg_178)
	lw	VirtualReg_179, fuckLLVM_w
	lw	VirtualReg_180, fuckLLVM_w
	addi	VirtualReg_181, VirtualReg_180, 1
	la	VirtualReg_182, fuckLLVM_w
	sw	VirtualReg_181, 0(VirtualReg_182)
	lw	VirtualReg_183, fuckLLVM_w
	addi	VirtualReg_184, VirtualReg_183, 1
	la	VirtualReg_185, fuckLLVM_w
	sw	VirtualReg_184, 0(VirtualReg_185)
	lw	VirtualReg_186, fuckLLVM_w
	lw	VirtualReg_187, fuckLLVM_w
	addi	VirtualReg_188, VirtualReg_187, 1
	la	VirtualReg_189, fuckLLVM_w
	sw	VirtualReg_188, 0(VirtualReg_189)
	lw	VirtualReg_190, fuckLLVM_w
	addi	VirtualReg_191, VirtualReg_190, 1
	la	VirtualReg_192, fuckLLVM_w
	sw	VirtualReg_191, 0(VirtualReg_192)
	lw	VirtualReg_193, fuckLLVM_w
	lw	VirtualReg_194, fuckLLVM_w
	addi	VirtualReg_195, VirtualReg_194, 1
	la	VirtualReg_196, fuckLLVM_w
	sw	VirtualReg_195, 0(VirtualReg_196)
	lw	VirtualReg_197, fuckLLVM_w
	addi	VirtualReg_198, VirtualReg_197, 1
	la	VirtualReg_199, fuckLLVM_w
	sw	VirtualReg_198, 0(VirtualReg_199)
	lw	VirtualReg_200, fuckLLVM_w
	lw	VirtualReg_201, fuckLLVM_w
	addi	VirtualReg_202, VirtualReg_201, 1
	la	VirtualReg_203, fuckLLVM_w
	sw	VirtualReg_202, 0(VirtualReg_203)
	lw	VirtualReg_204, fuckLLVM_w
	addi	VirtualReg_205, VirtualReg_204, 1
	la	VirtualReg_206, fuckLLVM_w
	sw	VirtualReg_205, 0(VirtualReg_206)
	lw	VirtualReg_207, fuckLLVM_w
	lw	VirtualReg_208, fuckLLVM_w
	addi	VirtualReg_209, VirtualReg_208, 1
	la	VirtualReg_210, fuckLLVM_w
	sw	VirtualReg_209, 0(VirtualReg_210)
	lw	VirtualReg_211, fuckLLVM_w
	addi	VirtualReg_212, VirtualReg_211, 1
	la	VirtualReg_213, fuckLLVM_w
	sw	VirtualReg_212, 0(VirtualReg_213)
	lw	VirtualReg_214, fuckLLVM_w
	lw	VirtualReg_215, fuckLLVM_w
	addi	VirtualReg_216, VirtualReg_215, 1
	la	VirtualReg_217, fuckLLVM_w
	sw	VirtualReg_216, 0(VirtualReg_217)
	lw	VirtualReg_218, fuckLLVM_w
	addi	VirtualReg_219, VirtualReg_218, 1
	la	VirtualReg_220, fuckLLVM_w
	sw	VirtualReg_219, 0(VirtualReg_220)
	lw	VirtualReg_221, fuckLLVM_w
	lw	VirtualReg_222, fuckLLVM_w
	addi	VirtualReg_223, VirtualReg_222, 1
	la	VirtualReg_224, fuckLLVM_w
	sw	VirtualReg_223, 0(VirtualReg_224)
	lw	VirtualReg_225, fuckLLVM_w
	addi	VirtualReg_226, VirtualReg_225, 1
	la	VirtualReg_227, fuckLLVM_w
	sw	VirtualReg_226, 0(VirtualReg_227)
	lw	VirtualReg_228, fuckLLVM_w
	lw	VirtualReg_229, fuckLLVM_w
	addi	VirtualReg_230, VirtualReg_229, 1
	la	VirtualReg_231, fuckLLVM_w
	sw	VirtualReg_230, 0(VirtualReg_231)
	lw	VirtualReg_232, fuckLLVM_w
	addi	VirtualReg_233, VirtualReg_232, 1
	la	VirtualReg_234, fuckLLVM_w
	sw	VirtualReg_233, 0(VirtualReg_234)
	lw	VirtualReg_235, fuckLLVM_w
	lw	VirtualReg_236, fuckLLVM_w
	addi	VirtualReg_237, VirtualReg_236, 1
	la	VirtualReg_238, fuckLLVM_w
	sw	VirtualReg_237, 0(VirtualReg_238)
	lw	VirtualReg_239, fuckLLVM_w
	addi	VirtualReg_240, VirtualReg_239, 1
	la	VirtualReg_241, fuckLLVM_w
	sw	VirtualReg_240, 0(VirtualReg_241)
	lw	VirtualReg_242, fuckLLVM_w
	lw	VirtualReg_243, fuckLLVM_w
	addi	VirtualReg_244, VirtualReg_243, 1
	la	VirtualReg_245, fuckLLVM_w
	sw	VirtualReg_244, 0(VirtualReg_245)
	lw	VirtualReg_246, fuckLLVM_w
	addi	VirtualReg_247, VirtualReg_246, 1
	la	VirtualReg_248, fuckLLVM_w
	sw	VirtualReg_247, 0(VirtualReg_248)
	lw	VirtualReg_249, fuckLLVM_w
	lw	VirtualReg_250, fuckLLVM_w
	addi	VirtualReg_251, VirtualReg_250, 1
	la	VirtualReg_252, fuckLLVM_w
	sw	VirtualReg_251, 0(VirtualReg_252)
	lw	VirtualReg_253, fuckLLVM_w
	addi	VirtualReg_254, VirtualReg_253, 1
	la	VirtualReg_255, fuckLLVM_w
	sw	VirtualReg_254, 0(VirtualReg_255)
	lw	VirtualReg_256, fuckLLVM_w
	lw	VirtualReg_257, fuckLLVM_w
	addi	VirtualReg_258, VirtualReg_257, 1
	la	VirtualReg_259, fuckLLVM_w
	sw	VirtualReg_258, 0(VirtualReg_259)
	lw	VirtualReg_260, fuckLLVM_w
	addi	VirtualReg_261, VirtualReg_260, 1
	la	VirtualReg_262, fuckLLVM_w
	sw	VirtualReg_261, 0(VirtualReg_262)
	lw	VirtualReg_263, fuckLLVM_w
	lw	VirtualReg_264, fuckLLVM_w
	addi	VirtualReg_265, VirtualReg_264, 1
	la	VirtualReg_266, fuckLLVM_w
	sw	VirtualReg_265, 0(VirtualReg_266)
	lw	VirtualReg_267, fuckLLVM_w
	addi	VirtualReg_268, VirtualReg_267, 1
	la	VirtualReg_269, fuckLLVM_w
	sw	VirtualReg_268, 0(VirtualReg_269)
	lw	VirtualReg_270, fuckLLVM_w
	lw	VirtualReg_271, fuckLLVM_w
	addi	VirtualReg_272, VirtualReg_271, 1
	la	VirtualReg_273, fuckLLVM_w
	sw	VirtualReg_272, 0(VirtualReg_273)
	lw	VirtualReg_274, fuckLLVM_w
	addi	VirtualReg_275, VirtualReg_274, 1
	la	VirtualReg_276, fuckLLVM_w
	sw	VirtualReg_275, 0(VirtualReg_276)
	lw	VirtualReg_277, fuckLLVM_w
	lw	VirtualReg_278, fuckLLVM_w
	addi	VirtualReg_279, VirtualReg_278, 1
	la	VirtualReg_280, fuckLLVM_w
	sw	VirtualReg_279, 0(VirtualReg_280)
	lw	VirtualReg_281, fuckLLVM_w
	addi	VirtualReg_282, VirtualReg_281, 1
	la	VirtualReg_283, fuckLLVM_w
	sw	VirtualReg_282, 0(VirtualReg_283)
	lw	VirtualReg_284, fuckLLVM_w
	lw	VirtualReg_285, fuckLLVM_w
	addi	VirtualReg_286, VirtualReg_285, 1
	la	VirtualReg_287, fuckLLVM_w
	sw	VirtualReg_286, 0(VirtualReg_287)
	lw	VirtualReg_288, fuckLLVM_w
	addi	VirtualReg_289, VirtualReg_288, 1
	la	VirtualReg_290, fuckLLVM_w
	sw	VirtualReg_289, 0(VirtualReg_290)
	lw	VirtualReg_291, fuckLLVM_w
	lw	VirtualReg_292, fuckLLVM_w
	addi	VirtualReg_293, VirtualReg_292, 1
	la	VirtualReg_294, fuckLLVM_w
	sw	VirtualReg_293, 0(VirtualReg_294)
	lw	VirtualReg_295, fuckLLVM_w
	addi	VirtualReg_296, VirtualReg_295, 1
	la	VirtualReg_297, fuckLLVM_w
	sw	VirtualReg_296, 0(VirtualReg_297)
	lw	VirtualReg_298, fuckLLVM_w
	lw	VirtualReg_299, fuckLLVM_w
	addi	VirtualReg_300, VirtualReg_299, 1
	la	VirtualReg_301, fuckLLVM_w
	sw	VirtualReg_300, 0(VirtualReg_301)
	lw	VirtualReg_302, fuckLLVM_w
	addi	VirtualReg_303, VirtualReg_302, 1
	la	VirtualReg_304, fuckLLVM_w
	sw	VirtualReg_303, 0(VirtualReg_304)
	lw	VirtualReg_305, fuckLLVM_w
	lw	VirtualReg_306, fuckLLVM_w
	addi	VirtualReg_307, VirtualReg_306, 1
	la	VirtualReg_308, fuckLLVM_w
	sw	VirtualReg_307, 0(VirtualReg_308)
	lw	VirtualReg_309, fuckLLVM_w
	addi	VirtualReg_310, VirtualReg_309, 1
	la	VirtualReg_311, fuckLLVM_w
	sw	VirtualReg_310, 0(VirtualReg_311)
	lw	VirtualReg_312, fuckLLVM_w
	lw	VirtualReg_313, fuckLLVM_w
	addi	VirtualReg_314, VirtualReg_313, 1
	la	VirtualReg_315, fuckLLVM_w
	sw	VirtualReg_314, 0(VirtualReg_315)
	lw	VirtualReg_316, fuckLLVM_w
	addi	VirtualReg_317, VirtualReg_316, 1
	la	VirtualReg_318, fuckLLVM_w
	sw	VirtualReg_317, 0(VirtualReg_318)
	lw	VirtualReg_319, fuckLLVM_w
	lw	VirtualReg_320, fuckLLVM_w
	addi	VirtualReg_321, VirtualReg_320, 1
	la	VirtualReg_322, fuckLLVM_w
	sw	VirtualReg_321, 0(VirtualReg_322)
	lw	VirtualReg_323, fuckLLVM_w
	addi	VirtualReg_324, VirtualReg_323, 1
	la	VirtualReg_325, fuckLLVM_w
	sw	VirtualReg_324, 0(VirtualReg_325)
	lw	VirtualReg_326, fuckLLVM_w
	lw	VirtualReg_327, fuckLLVM_w
	addi	VirtualReg_328, VirtualReg_327, 1
	la	VirtualReg_329, fuckLLVM_w
	sw	VirtualReg_328, 0(VirtualReg_329)
	lw	VirtualReg_330, fuckLLVM_w
	addi	VirtualReg_331, VirtualReg_330, 1
	la	VirtualReg_332, fuckLLVM_w
	sw	VirtualReg_331, 0(VirtualReg_332)
	lw	VirtualReg_333, fuckLLVM_w
	lw	VirtualReg_334, fuckLLVM_w
	addi	VirtualReg_335, VirtualReg_334, 1
	la	VirtualReg_336, fuckLLVM_w
	sw	VirtualReg_335, 0(VirtualReg_336)
	lw	VirtualReg_337, fuckLLVM_w
	addi	VirtualReg_338, VirtualReg_337, 1
	la	VirtualReg_339, fuckLLVM_w
	sw	VirtualReg_338, 0(VirtualReg_339)
	lw	VirtualReg_340, fuckLLVM_w
	lw	VirtualReg_341, fuckLLVM_w
	addi	VirtualReg_342, VirtualReg_341, 1
	la	VirtualReg_343, fuckLLVM_w
	sw	VirtualReg_342, 0(VirtualReg_343)
	lw	VirtualReg_344, fuckLLVM_w
	addi	VirtualReg_345, VirtualReg_344, 1
	la	VirtualReg_346, fuckLLVM_w
	sw	VirtualReg_345, 0(VirtualReg_346)
	lw	VirtualReg_347, fuckLLVM_w
	lw	VirtualReg_348, fuckLLVM_w
	addi	VirtualReg_349, VirtualReg_348, 1
	la	VirtualReg_350, fuckLLVM_w
	sw	VirtualReg_349, 0(VirtualReg_350)
	lw	VirtualReg_351, fuckLLVM_w
	addi	VirtualReg_352, VirtualReg_351, 1
	la	VirtualReg_353, fuckLLVM_w
	sw	VirtualReg_352, 0(VirtualReg_353)
	lw	VirtualReg_354, fuckLLVM_w
	lw	VirtualReg_355, fuckLLVM_w
	addi	VirtualReg_356, VirtualReg_355, 1
	la	VirtualReg_357, fuckLLVM_w
	sw	VirtualReg_356, 0(VirtualReg_357)
	lw	VirtualReg_358, fuckLLVM_w
	addi	VirtualReg_359, VirtualReg_358, 1
	la	VirtualReg_360, fuckLLVM_w
	sw	VirtualReg_359, 0(VirtualReg_360)
	lw	VirtualReg_361, fuckLLVM_w
	lw	VirtualReg_362, fuckLLVM_w
	addi	VirtualReg_363, VirtualReg_362, 1
	la	VirtualReg_364, fuckLLVM_w
	sw	VirtualReg_363, 0(VirtualReg_364)
	lw	VirtualReg_365, fuckLLVM_w
	addi	VirtualReg_366, VirtualReg_365, 1
	la	VirtualReg_367, fuckLLVM_w
	sw	VirtualReg_366, 0(VirtualReg_367)
	lw	VirtualReg_368, fuckLLVM_w
	lw	VirtualReg_369, fuckLLVM_w
	addi	VirtualReg_370, VirtualReg_369, 1
	la	VirtualReg_371, fuckLLVM_w
	sw	VirtualReg_370, 0(VirtualReg_371)
	lw	VirtualReg_372, fuckLLVM_w
	addi	VirtualReg_373, VirtualReg_372, 1
	la	VirtualReg_374, fuckLLVM_w
	sw	VirtualReg_373, 0(VirtualReg_374)
	lw	VirtualReg_375, fuckLLVM_w
	lw	VirtualReg_376, fuckLLVM_w
	addi	VirtualReg_377, VirtualReg_376, 1
	la	VirtualReg_378, fuckLLVM_w
	sw	VirtualReg_377, 0(VirtualReg_378)
	lw	VirtualReg_379, fuckLLVM_w
	addi	VirtualReg_380, VirtualReg_379, 1
	la	VirtualReg_381, fuckLLVM_w
	sw	VirtualReg_380, 0(VirtualReg_381)
	lw	VirtualReg_382, fuckLLVM_w
	lw	VirtualReg_383, fuckLLVM_w
	addi	VirtualReg_384, VirtualReg_383, 1
	la	VirtualReg_385, fuckLLVM_w
	sw	VirtualReg_384, 0(VirtualReg_385)
	lw	VirtualReg_386, fuckLLVM_w
	addi	VirtualReg_387, VirtualReg_386, 1
	la	VirtualReg_388, fuckLLVM_w
	sw	VirtualReg_387, 0(VirtualReg_388)
	lw	VirtualReg_389, fuckLLVM_w
	lw	VirtualReg_390, fuckLLVM_w
	addi	VirtualReg_391, VirtualReg_390, 1
	la	VirtualReg_392, fuckLLVM_w
	sw	VirtualReg_391, 0(VirtualReg_392)
	lw	VirtualReg_393, fuckLLVM_w
	addi	VirtualReg_394, VirtualReg_393, 1
	la	VirtualReg_395, fuckLLVM_w
	sw	VirtualReg_394, 0(VirtualReg_395)
	lw	VirtualReg_396, fuckLLVM_w
	lw	VirtualReg_397, fuckLLVM_w
	addi	VirtualReg_398, VirtualReg_397, 1
	la	VirtualReg_399, fuckLLVM_w
	sw	VirtualReg_398, 0(VirtualReg_399)
	lw	VirtualReg_400, fuckLLVM_w
	addi	VirtualReg_401, VirtualReg_400, 1
	la	VirtualReg_402, fuckLLVM_w
	sw	VirtualReg_401, 0(VirtualReg_402)
	lw	VirtualReg_403, fuckLLVM_w
	j	.wpppp_return
.wpppp_return:
	mv	a0, VirtualReg_403
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

	.globl	block
	.p2align	2
	.type	block,@function
block:
.block_assemblyInit:
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
	j	.block_entry
.block_entry:
	call	block
	mv	VirtualReg_12, a0
	j	.block_return
.block_return:
	mv	a0, VirtualReg_12
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

	.globl	bblock
	.p2align	2
	.type	bblock,@function
bblock:
.bblock_assemblyInit:
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
	j	.bblock_entry
.bblock_entry:
	j	.bblock_call_wpppp_15
.bblock_call_wpppp_15:
	lw	VirtualReg_12, fuckLLVM_w
	addi	VirtualReg_13, VirtualReg_12, 1
	la	VirtualReg_14, fuckLLVM_w
	sw	VirtualReg_13, 0(VirtualReg_14)
	lw	VirtualReg_15, fuckLLVM_w
	addi	VirtualReg_16, VirtualReg_15, 1
	la	VirtualReg_17, fuckLLVM_w
	sw	VirtualReg_16, 0(VirtualReg_17)
	lw	VirtualReg_18, fuckLLVM_w
	lw	VirtualReg_19, fuckLLVM_w
	addi	VirtualReg_20, VirtualReg_19, 1
	la	VirtualReg_21, fuckLLVM_w
	sw	VirtualReg_20, 0(VirtualReg_21)
	lw	VirtualReg_22, fuckLLVM_w
	addi	VirtualReg_23, VirtualReg_22, 1
	la	VirtualReg_24, fuckLLVM_w
	sw	VirtualReg_23, 0(VirtualReg_24)
	lw	VirtualReg_25, fuckLLVM_w
	lw	VirtualReg_26, fuckLLVM_w
	addi	VirtualReg_27, VirtualReg_26, 1
	la	VirtualReg_28, fuckLLVM_w
	sw	VirtualReg_27, 0(VirtualReg_28)
	lw	VirtualReg_29, fuckLLVM_w
	addi	VirtualReg_30, VirtualReg_29, 1
	la	VirtualReg_31, fuckLLVM_w
	sw	VirtualReg_30, 0(VirtualReg_31)
	lw	VirtualReg_32, fuckLLVM_w
	lw	VirtualReg_33, fuckLLVM_w
	addi	VirtualReg_34, VirtualReg_33, 1
	la	VirtualReg_35, fuckLLVM_w
	sw	VirtualReg_34, 0(VirtualReg_35)
	lw	VirtualReg_36, fuckLLVM_w
	addi	VirtualReg_37, VirtualReg_36, 1
	la	VirtualReg_38, fuckLLVM_w
	sw	VirtualReg_37, 0(VirtualReg_38)
	lw	VirtualReg_39, fuckLLVM_w
	lw	VirtualReg_40, fuckLLVM_w
	addi	VirtualReg_41, VirtualReg_40, 1
	la	VirtualReg_42, fuckLLVM_w
	sw	VirtualReg_41, 0(VirtualReg_42)
	lw	VirtualReg_43, fuckLLVM_w
	addi	VirtualReg_44, VirtualReg_43, 1
	la	VirtualReg_45, fuckLLVM_w
	sw	VirtualReg_44, 0(VirtualReg_45)
	lw	VirtualReg_46, fuckLLVM_w
	lw	VirtualReg_47, fuckLLVM_w
	addi	VirtualReg_48, VirtualReg_47, 1
	la	VirtualReg_49, fuckLLVM_w
	sw	VirtualReg_48, 0(VirtualReg_49)
	lw	VirtualReg_50, fuckLLVM_w
	addi	VirtualReg_51, VirtualReg_50, 1
	la	VirtualReg_52, fuckLLVM_w
	sw	VirtualReg_51, 0(VirtualReg_52)
	lw	VirtualReg_53, fuckLLVM_w
	lw	VirtualReg_54, fuckLLVM_w
	addi	VirtualReg_55, VirtualReg_54, 1
	la	VirtualReg_56, fuckLLVM_w
	sw	VirtualReg_55, 0(VirtualReg_56)
	lw	VirtualReg_57, fuckLLVM_w
	addi	VirtualReg_58, VirtualReg_57, 1
	la	VirtualReg_59, fuckLLVM_w
	sw	VirtualReg_58, 0(VirtualReg_59)
	lw	VirtualReg_60, fuckLLVM_w
	lw	VirtualReg_61, fuckLLVM_w
	addi	VirtualReg_62, VirtualReg_61, 1
	la	VirtualReg_63, fuckLLVM_w
	sw	VirtualReg_62, 0(VirtualReg_63)
	lw	VirtualReg_64, fuckLLVM_w
	addi	VirtualReg_65, VirtualReg_64, 1
	la	VirtualReg_66, fuckLLVM_w
	sw	VirtualReg_65, 0(VirtualReg_66)
	lw	VirtualReg_67, fuckLLVM_w
	lw	VirtualReg_68, fuckLLVM_w
	addi	VirtualReg_69, VirtualReg_68, 1
	la	VirtualReg_70, fuckLLVM_w
	sw	VirtualReg_69, 0(VirtualReg_70)
	lw	VirtualReg_71, fuckLLVM_w
	addi	VirtualReg_72, VirtualReg_71, 1
	la	VirtualReg_73, fuckLLVM_w
	sw	VirtualReg_72, 0(VirtualReg_73)
	lw	VirtualReg_74, fuckLLVM_w
	lw	VirtualReg_75, fuckLLVM_w
	addi	VirtualReg_76, VirtualReg_75, 1
	la	VirtualReg_77, fuckLLVM_w
	sw	VirtualReg_76, 0(VirtualReg_77)
	lw	VirtualReg_78, fuckLLVM_w
	addi	VirtualReg_79, VirtualReg_78, 1
	la	VirtualReg_80, fuckLLVM_w
	sw	VirtualReg_79, 0(VirtualReg_80)
	lw	VirtualReg_81, fuckLLVM_w
	lw	VirtualReg_82, fuckLLVM_w
	addi	VirtualReg_83, VirtualReg_82, 1
	la	VirtualReg_84, fuckLLVM_w
	sw	VirtualReg_83, 0(VirtualReg_84)
	lw	VirtualReg_85, fuckLLVM_w
	addi	VirtualReg_86, VirtualReg_85, 1
	la	VirtualReg_87, fuckLLVM_w
	sw	VirtualReg_86, 0(VirtualReg_87)
	lw	VirtualReg_88, fuckLLVM_w
	lw	VirtualReg_89, fuckLLVM_w
	addi	VirtualReg_90, VirtualReg_89, 1
	la	VirtualReg_91, fuckLLVM_w
	sw	VirtualReg_90, 0(VirtualReg_91)
	lw	VirtualReg_92, fuckLLVM_w
	addi	VirtualReg_93, VirtualReg_92, 1
	la	VirtualReg_94, fuckLLVM_w
	sw	VirtualReg_93, 0(VirtualReg_94)
	lw	VirtualReg_95, fuckLLVM_w
	lw	VirtualReg_96, fuckLLVM_w
	addi	VirtualReg_97, VirtualReg_96, 1
	la	VirtualReg_98, fuckLLVM_w
	sw	VirtualReg_97, 0(VirtualReg_98)
	lw	VirtualReg_99, fuckLLVM_w
	addi	VirtualReg_100, VirtualReg_99, 1
	la	VirtualReg_101, fuckLLVM_w
	sw	VirtualReg_100, 0(VirtualReg_101)
	lw	VirtualReg_102, fuckLLVM_w
	lw	VirtualReg_103, fuckLLVM_w
	addi	VirtualReg_104, VirtualReg_103, 1
	la	VirtualReg_105, fuckLLVM_w
	sw	VirtualReg_104, 0(VirtualReg_105)
	lw	VirtualReg_106, fuckLLVM_w
	addi	VirtualReg_107, VirtualReg_106, 1
	la	VirtualReg_108, fuckLLVM_w
	sw	VirtualReg_107, 0(VirtualReg_108)
	lw	VirtualReg_109, fuckLLVM_w
	lw	VirtualReg_110, fuckLLVM_w
	addi	VirtualReg_111, VirtualReg_110, 1
	la	VirtualReg_112, fuckLLVM_w
	sw	VirtualReg_111, 0(VirtualReg_112)
	lw	VirtualReg_113, fuckLLVM_w
	addi	VirtualReg_114, VirtualReg_113, 1
	la	VirtualReg_115, fuckLLVM_w
	sw	VirtualReg_114, 0(VirtualReg_115)
	lw	VirtualReg_116, fuckLLVM_w
	lw	VirtualReg_117, fuckLLVM_w
	addi	VirtualReg_118, VirtualReg_117, 1
	la	VirtualReg_119, fuckLLVM_w
	sw	VirtualReg_118, 0(VirtualReg_119)
	lw	VirtualReg_120, fuckLLVM_w
	addi	VirtualReg_121, VirtualReg_120, 1
	la	VirtualReg_122, fuckLLVM_w
	sw	VirtualReg_121, 0(VirtualReg_122)
	lw	VirtualReg_123, fuckLLVM_w
	lw	VirtualReg_124, fuckLLVM_w
	addi	VirtualReg_125, VirtualReg_124, 1
	la	VirtualReg_126, fuckLLVM_w
	sw	VirtualReg_125, 0(VirtualReg_126)
	lw	VirtualReg_127, fuckLLVM_w
	addi	VirtualReg_128, VirtualReg_127, 1
	la	VirtualReg_129, fuckLLVM_w
	sw	VirtualReg_128, 0(VirtualReg_129)
	lw	VirtualReg_130, fuckLLVM_w
	lw	VirtualReg_131, fuckLLVM_w
	addi	VirtualReg_132, VirtualReg_131, 1
	la	VirtualReg_133, fuckLLVM_w
	sw	VirtualReg_132, 0(VirtualReg_133)
	lw	VirtualReg_134, fuckLLVM_w
	addi	VirtualReg_135, VirtualReg_134, 1
	la	VirtualReg_136, fuckLLVM_w
	sw	VirtualReg_135, 0(VirtualReg_136)
	lw	VirtualReg_137, fuckLLVM_w
	lw	VirtualReg_138, fuckLLVM_w
	addi	VirtualReg_139, VirtualReg_138, 1
	la	VirtualReg_140, fuckLLVM_w
	sw	VirtualReg_139, 0(VirtualReg_140)
	lw	VirtualReg_141, fuckLLVM_w
	addi	VirtualReg_142, VirtualReg_141, 1
	la	VirtualReg_143, fuckLLVM_w
	sw	VirtualReg_142, 0(VirtualReg_143)
	lw	VirtualReg_144, fuckLLVM_w
	lw	VirtualReg_145, fuckLLVM_w
	addi	VirtualReg_146, VirtualReg_145, 1
	la	VirtualReg_147, fuckLLVM_w
	sw	VirtualReg_146, 0(VirtualReg_147)
	lw	VirtualReg_148, fuckLLVM_w
	addi	VirtualReg_149, VirtualReg_148, 1
	la	VirtualReg_150, fuckLLVM_w
	sw	VirtualReg_149, 0(VirtualReg_150)
	lw	VirtualReg_151, fuckLLVM_w
	lw	VirtualReg_152, fuckLLVM_w
	addi	VirtualReg_153, VirtualReg_152, 1
	la	VirtualReg_154, fuckLLVM_w
	sw	VirtualReg_153, 0(VirtualReg_154)
	lw	VirtualReg_155, fuckLLVM_w
	addi	VirtualReg_156, VirtualReg_155, 1
	la	VirtualReg_157, fuckLLVM_w
	sw	VirtualReg_156, 0(VirtualReg_157)
	lw	VirtualReg_158, fuckLLVM_w
	lw	VirtualReg_159, fuckLLVM_w
	addi	VirtualReg_160, VirtualReg_159, 1
	la	VirtualReg_161, fuckLLVM_w
	sw	VirtualReg_160, 0(VirtualReg_161)
	lw	VirtualReg_162, fuckLLVM_w
	addi	VirtualReg_163, VirtualReg_162, 1
	la	VirtualReg_164, fuckLLVM_w
	sw	VirtualReg_163, 0(VirtualReg_164)
	lw	VirtualReg_165, fuckLLVM_w
	lw	VirtualReg_166, fuckLLVM_w
	addi	VirtualReg_167, VirtualReg_166, 1
	la	VirtualReg_168, fuckLLVM_w
	sw	VirtualReg_167, 0(VirtualReg_168)
	lw	VirtualReg_169, fuckLLVM_w
	addi	VirtualReg_170, VirtualReg_169, 1
	la	VirtualReg_171, fuckLLVM_w
	sw	VirtualReg_170, 0(VirtualReg_171)
	lw	VirtualReg_172, fuckLLVM_w
	lw	VirtualReg_173, fuckLLVM_w
	addi	VirtualReg_174, VirtualReg_173, 1
	la	VirtualReg_175, fuckLLVM_w
	sw	VirtualReg_174, 0(VirtualReg_175)
	lw	VirtualReg_176, fuckLLVM_w
	addi	VirtualReg_177, VirtualReg_176, 1
	la	VirtualReg_178, fuckLLVM_w
	sw	VirtualReg_177, 0(VirtualReg_178)
	lw	VirtualReg_179, fuckLLVM_w
	lw	VirtualReg_180, fuckLLVM_w
	addi	VirtualReg_181, VirtualReg_180, 1
	la	VirtualReg_182, fuckLLVM_w
	sw	VirtualReg_181, 0(VirtualReg_182)
	lw	VirtualReg_183, fuckLLVM_w
	addi	VirtualReg_184, VirtualReg_183, 1
	la	VirtualReg_185, fuckLLVM_w
	sw	VirtualReg_184, 0(VirtualReg_185)
	lw	VirtualReg_186, fuckLLVM_w
	lw	VirtualReg_187, fuckLLVM_w
	addi	VirtualReg_188, VirtualReg_187, 1
	la	VirtualReg_189, fuckLLVM_w
	sw	VirtualReg_188, 0(VirtualReg_189)
	lw	VirtualReg_190, fuckLLVM_w
	addi	VirtualReg_191, VirtualReg_190, 1
	la	VirtualReg_192, fuckLLVM_w
	sw	VirtualReg_191, 0(VirtualReg_192)
	lw	VirtualReg_193, fuckLLVM_w
	lw	VirtualReg_194, fuckLLVM_w
	addi	VirtualReg_195, VirtualReg_194, 1
	la	VirtualReg_196, fuckLLVM_w
	sw	VirtualReg_195, 0(VirtualReg_196)
	lw	VirtualReg_197, fuckLLVM_w
	addi	VirtualReg_198, VirtualReg_197, 1
	la	VirtualReg_199, fuckLLVM_w
	sw	VirtualReg_198, 0(VirtualReg_199)
	lw	VirtualReg_200, fuckLLVM_w
	lw	VirtualReg_201, fuckLLVM_w
	addi	VirtualReg_202, VirtualReg_201, 1
	la	VirtualReg_203, fuckLLVM_w
	sw	VirtualReg_202, 0(VirtualReg_203)
	lw	VirtualReg_204, fuckLLVM_w
	addi	VirtualReg_205, VirtualReg_204, 1
	la	VirtualReg_206, fuckLLVM_w
	sw	VirtualReg_205, 0(VirtualReg_206)
	lw	VirtualReg_207, fuckLLVM_w
	lw	VirtualReg_208, fuckLLVM_w
	addi	VirtualReg_209, VirtualReg_208, 1
	la	VirtualReg_210, fuckLLVM_w
	sw	VirtualReg_209, 0(VirtualReg_210)
	lw	VirtualReg_211, fuckLLVM_w
	addi	VirtualReg_212, VirtualReg_211, 1
	la	VirtualReg_213, fuckLLVM_w
	sw	VirtualReg_212, 0(VirtualReg_213)
	lw	VirtualReg_214, fuckLLVM_w
	lw	VirtualReg_215, fuckLLVM_w
	addi	VirtualReg_216, VirtualReg_215, 1
	la	VirtualReg_217, fuckLLVM_w
	sw	VirtualReg_216, 0(VirtualReg_217)
	lw	VirtualReg_218, fuckLLVM_w
	addi	VirtualReg_219, VirtualReg_218, 1
	la	VirtualReg_220, fuckLLVM_w
	sw	VirtualReg_219, 0(VirtualReg_220)
	lw	VirtualReg_221, fuckLLVM_w
	lw	VirtualReg_222, fuckLLVM_w
	addi	VirtualReg_223, VirtualReg_222, 1
	la	VirtualReg_224, fuckLLVM_w
	sw	VirtualReg_223, 0(VirtualReg_224)
	lw	VirtualReg_225, fuckLLVM_w
	addi	VirtualReg_226, VirtualReg_225, 1
	la	VirtualReg_227, fuckLLVM_w
	sw	VirtualReg_226, 0(VirtualReg_227)
	lw	VirtualReg_228, fuckLLVM_w
	lw	VirtualReg_229, fuckLLVM_w
	addi	VirtualReg_230, VirtualReg_229, 1
	la	VirtualReg_231, fuckLLVM_w
	sw	VirtualReg_230, 0(VirtualReg_231)
	lw	VirtualReg_232, fuckLLVM_w
	addi	VirtualReg_233, VirtualReg_232, 1
	la	VirtualReg_234, fuckLLVM_w
	sw	VirtualReg_233, 0(VirtualReg_234)
	lw	VirtualReg_235, fuckLLVM_w
	lw	VirtualReg_236, fuckLLVM_w
	addi	VirtualReg_237, VirtualReg_236, 1
	la	VirtualReg_238, fuckLLVM_w
	sw	VirtualReg_237, 0(VirtualReg_238)
	lw	VirtualReg_239, fuckLLVM_w
	addi	VirtualReg_240, VirtualReg_239, 1
	la	VirtualReg_241, fuckLLVM_w
	sw	VirtualReg_240, 0(VirtualReg_241)
	lw	VirtualReg_242, fuckLLVM_w
	lw	VirtualReg_243, fuckLLVM_w
	addi	VirtualReg_244, VirtualReg_243, 1
	la	VirtualReg_245, fuckLLVM_w
	sw	VirtualReg_244, 0(VirtualReg_245)
	lw	VirtualReg_246, fuckLLVM_w
	addi	VirtualReg_247, VirtualReg_246, 1
	la	VirtualReg_248, fuckLLVM_w
	sw	VirtualReg_247, 0(VirtualReg_248)
	lw	VirtualReg_249, fuckLLVM_w
	lw	VirtualReg_250, fuckLLVM_w
	addi	VirtualReg_251, VirtualReg_250, 1
	la	VirtualReg_252, fuckLLVM_w
	sw	VirtualReg_251, 0(VirtualReg_252)
	lw	VirtualReg_253, fuckLLVM_w
	addi	VirtualReg_254, VirtualReg_253, 1
	la	VirtualReg_255, fuckLLVM_w
	sw	VirtualReg_254, 0(VirtualReg_255)
	lw	VirtualReg_256, fuckLLVM_w
	lw	VirtualReg_257, fuckLLVM_w
	addi	VirtualReg_258, VirtualReg_257, 1
	la	VirtualReg_259, fuckLLVM_w
	sw	VirtualReg_258, 0(VirtualReg_259)
	lw	VirtualReg_260, fuckLLVM_w
	addi	VirtualReg_261, VirtualReg_260, 1
	la	VirtualReg_262, fuckLLVM_w
	sw	VirtualReg_261, 0(VirtualReg_262)
	lw	VirtualReg_263, fuckLLVM_w
	lw	VirtualReg_264, fuckLLVM_w
	addi	VirtualReg_265, VirtualReg_264, 1
	la	VirtualReg_266, fuckLLVM_w
	sw	VirtualReg_265, 0(VirtualReg_266)
	lw	VirtualReg_267, fuckLLVM_w
	addi	VirtualReg_268, VirtualReg_267, 1
	la	VirtualReg_269, fuckLLVM_w
	sw	VirtualReg_268, 0(VirtualReg_269)
	lw	VirtualReg_270, fuckLLVM_w
	lw	VirtualReg_271, fuckLLVM_w
	addi	VirtualReg_272, VirtualReg_271, 1
	la	VirtualReg_273, fuckLLVM_w
	sw	VirtualReg_272, 0(VirtualReg_273)
	lw	VirtualReg_274, fuckLLVM_w
	addi	VirtualReg_275, VirtualReg_274, 1
	la	VirtualReg_276, fuckLLVM_w
	sw	VirtualReg_275, 0(VirtualReg_276)
	lw	VirtualReg_277, fuckLLVM_w
	lw	VirtualReg_278, fuckLLVM_w
	addi	VirtualReg_279, VirtualReg_278, 1
	la	VirtualReg_280, fuckLLVM_w
	sw	VirtualReg_279, 0(VirtualReg_280)
	lw	VirtualReg_281, fuckLLVM_w
	addi	VirtualReg_282, VirtualReg_281, 1
	la	VirtualReg_283, fuckLLVM_w
	sw	VirtualReg_282, 0(VirtualReg_283)
	lw	VirtualReg_284, fuckLLVM_w
	lw	VirtualReg_285, fuckLLVM_w
	addi	VirtualReg_286, VirtualReg_285, 1
	la	VirtualReg_287, fuckLLVM_w
	sw	VirtualReg_286, 0(VirtualReg_287)
	lw	VirtualReg_288, fuckLLVM_w
	addi	VirtualReg_289, VirtualReg_288, 1
	la	VirtualReg_290, fuckLLVM_w
	sw	VirtualReg_289, 0(VirtualReg_290)
	lw	VirtualReg_291, fuckLLVM_w
	lw	VirtualReg_292, fuckLLVM_w
	addi	VirtualReg_293, VirtualReg_292, 1
	la	VirtualReg_294, fuckLLVM_w
	sw	VirtualReg_293, 0(VirtualReg_294)
	lw	VirtualReg_295, fuckLLVM_w
	addi	VirtualReg_296, VirtualReg_295, 1
	la	VirtualReg_297, fuckLLVM_w
	sw	VirtualReg_296, 0(VirtualReg_297)
	lw	VirtualReg_298, fuckLLVM_w
	lw	VirtualReg_299, fuckLLVM_w
	addi	VirtualReg_300, VirtualReg_299, 1
	la	VirtualReg_301, fuckLLVM_w
	sw	VirtualReg_300, 0(VirtualReg_301)
	lw	VirtualReg_302, fuckLLVM_w
	addi	VirtualReg_303, VirtualReg_302, 1
	la	VirtualReg_304, fuckLLVM_w
	sw	VirtualReg_303, 0(VirtualReg_304)
	lw	VirtualReg_305, fuckLLVM_w
	lw	VirtualReg_306, fuckLLVM_w
	addi	VirtualReg_307, VirtualReg_306, 1
	la	VirtualReg_308, fuckLLVM_w
	sw	VirtualReg_307, 0(VirtualReg_308)
	lw	VirtualReg_309, fuckLLVM_w
	addi	VirtualReg_310, VirtualReg_309, 1
	la	VirtualReg_311, fuckLLVM_w
	sw	VirtualReg_310, 0(VirtualReg_311)
	lw	VirtualReg_312, fuckLLVM_w
	lw	VirtualReg_313, fuckLLVM_w
	addi	VirtualReg_314, VirtualReg_313, 1
	la	VirtualReg_315, fuckLLVM_w
	sw	VirtualReg_314, 0(VirtualReg_315)
	lw	VirtualReg_316, fuckLLVM_w
	addi	VirtualReg_317, VirtualReg_316, 1
	la	VirtualReg_318, fuckLLVM_w
	sw	VirtualReg_317, 0(VirtualReg_318)
	lw	VirtualReg_319, fuckLLVM_w
	lw	VirtualReg_320, fuckLLVM_w
	addi	VirtualReg_321, VirtualReg_320, 1
	la	VirtualReg_322, fuckLLVM_w
	sw	VirtualReg_321, 0(VirtualReg_322)
	lw	VirtualReg_323, fuckLLVM_w
	addi	VirtualReg_324, VirtualReg_323, 1
	la	VirtualReg_325, fuckLLVM_w
	sw	VirtualReg_324, 0(VirtualReg_325)
	lw	VirtualReg_326, fuckLLVM_w
	lw	VirtualReg_327, fuckLLVM_w
	addi	VirtualReg_328, VirtualReg_327, 1
	la	VirtualReg_329, fuckLLVM_w
	sw	VirtualReg_328, 0(VirtualReg_329)
	lw	VirtualReg_330, fuckLLVM_w
	addi	VirtualReg_331, VirtualReg_330, 1
	la	VirtualReg_332, fuckLLVM_w
	sw	VirtualReg_331, 0(VirtualReg_332)
	lw	VirtualReg_333, fuckLLVM_w
	lw	VirtualReg_334, fuckLLVM_w
	addi	VirtualReg_335, VirtualReg_334, 1
	la	VirtualReg_336, fuckLLVM_w
	sw	VirtualReg_335, 0(VirtualReg_336)
	lw	VirtualReg_337, fuckLLVM_w
	addi	VirtualReg_338, VirtualReg_337, 1
	la	VirtualReg_339, fuckLLVM_w
	sw	VirtualReg_338, 0(VirtualReg_339)
	lw	VirtualReg_340, fuckLLVM_w
	lw	VirtualReg_341, fuckLLVM_w
	addi	VirtualReg_342, VirtualReg_341, 1
	la	VirtualReg_343, fuckLLVM_w
	sw	VirtualReg_342, 0(VirtualReg_343)
	lw	VirtualReg_344, fuckLLVM_w
	addi	VirtualReg_345, VirtualReg_344, 1
	la	VirtualReg_346, fuckLLVM_w
	sw	VirtualReg_345, 0(VirtualReg_346)
	lw	VirtualReg_347, fuckLLVM_w
	lw	VirtualReg_348, fuckLLVM_w
	addi	VirtualReg_349, VirtualReg_348, 1
	la	VirtualReg_350, fuckLLVM_w
	sw	VirtualReg_349, 0(VirtualReg_350)
	lw	VirtualReg_351, fuckLLVM_w
	addi	VirtualReg_352, VirtualReg_351, 1
	la	VirtualReg_353, fuckLLVM_w
	sw	VirtualReg_352, 0(VirtualReg_353)
	lw	VirtualReg_354, fuckLLVM_w
	lw	VirtualReg_355, fuckLLVM_w
	addi	VirtualReg_356, VirtualReg_355, 1
	la	VirtualReg_357, fuckLLVM_w
	sw	VirtualReg_356, 0(VirtualReg_357)
	lw	VirtualReg_358, fuckLLVM_w
	addi	VirtualReg_359, VirtualReg_358, 1
	la	VirtualReg_360, fuckLLVM_w
	sw	VirtualReg_359, 0(VirtualReg_360)
	lw	VirtualReg_361, fuckLLVM_w
	lw	VirtualReg_362, fuckLLVM_w
	addi	VirtualReg_363, VirtualReg_362, 1
	la	VirtualReg_364, fuckLLVM_w
	sw	VirtualReg_363, 0(VirtualReg_364)
	lw	VirtualReg_365, fuckLLVM_w
	addi	VirtualReg_366, VirtualReg_365, 1
	la	VirtualReg_367, fuckLLVM_w
	sw	VirtualReg_366, 0(VirtualReg_367)
	lw	VirtualReg_368, fuckLLVM_w
	lw	VirtualReg_369, fuckLLVM_w
	addi	VirtualReg_370, VirtualReg_369, 1
	la	VirtualReg_371, fuckLLVM_w
	sw	VirtualReg_370, 0(VirtualReg_371)
	lw	VirtualReg_372, fuckLLVM_w
	addi	VirtualReg_373, VirtualReg_372, 1
	la	VirtualReg_374, fuckLLVM_w
	sw	VirtualReg_373, 0(VirtualReg_374)
	lw	VirtualReg_375, fuckLLVM_w
	lw	VirtualReg_376, fuckLLVM_w
	addi	VirtualReg_377, VirtualReg_376, 1
	la	VirtualReg_378, fuckLLVM_w
	sw	VirtualReg_377, 0(VirtualReg_378)
	lw	VirtualReg_379, fuckLLVM_w
	addi	VirtualReg_380, VirtualReg_379, 1
	la	VirtualReg_381, fuckLLVM_w
	sw	VirtualReg_380, 0(VirtualReg_381)
	lw	VirtualReg_382, fuckLLVM_w
	lw	VirtualReg_383, fuckLLVM_w
	addi	VirtualReg_384, VirtualReg_383, 1
	la	VirtualReg_385, fuckLLVM_w
	sw	VirtualReg_384, 0(VirtualReg_385)
	lw	VirtualReg_386, fuckLLVM_w
	addi	VirtualReg_387, VirtualReg_386, 1
	la	VirtualReg_388, fuckLLVM_w
	sw	VirtualReg_387, 0(VirtualReg_388)
	lw	VirtualReg_389, fuckLLVM_w
	lw	VirtualReg_390, fuckLLVM_w
	addi	VirtualReg_391, VirtualReg_390, 1
	la	VirtualReg_392, fuckLLVM_w
	sw	VirtualReg_391, 0(VirtualReg_392)
	lw	VirtualReg_393, fuckLLVM_w
	addi	VirtualReg_394, VirtualReg_393, 1
	la	VirtualReg_395, fuckLLVM_w
	sw	VirtualReg_394, 0(VirtualReg_395)
	lw	VirtualReg_396, fuckLLVM_w
	lw	VirtualReg_397, fuckLLVM_w
	addi	VirtualReg_398, VirtualReg_397, 1
	la	VirtualReg_399, fuckLLVM_w
	sw	VirtualReg_398, 0(VirtualReg_399)
	lw	VirtualReg_400, fuckLLVM_w
	addi	VirtualReg_401, VirtualReg_400, 1
	la	VirtualReg_402, fuckLLVM_w
	sw	VirtualReg_401, 0(VirtualReg_402)
	lw	VirtualReg_403, fuckLLVM_w
	lw	VirtualReg_404, fuckLLVM_w
	addi	VirtualReg_405, VirtualReg_404, 1
	la	VirtualReg_406, fuckLLVM_w
	sw	VirtualReg_405, 0(VirtualReg_406)
	lw	VirtualReg_407, fuckLLVM_w
	addi	VirtualReg_408, VirtualReg_407, 1
	la	VirtualReg_409, fuckLLVM_w
	sw	VirtualReg_408, 0(VirtualReg_409)
	lw	VirtualReg_410, fuckLLVM_w
	lw	VirtualReg_411, fuckLLVM_w
	addi	VirtualReg_412, VirtualReg_411, 1
	la	VirtualReg_413, fuckLLVM_w
	sw	VirtualReg_412, 0(VirtualReg_413)
	lw	VirtualReg_414, fuckLLVM_w
	addi	VirtualReg_415, VirtualReg_414, 1
	la	VirtualReg_416, fuckLLVM_w
	sw	VirtualReg_415, 0(VirtualReg_416)
	lw	VirtualReg_417, fuckLLVM_w
	lw	VirtualReg_418, fuckLLVM_w
	addi	VirtualReg_419, VirtualReg_418, 1
	la	VirtualReg_420, fuckLLVM_w
	sw	VirtualReg_419, 0(VirtualReg_420)
	lw	VirtualReg_421, fuckLLVM_w
	addi	VirtualReg_422, VirtualReg_421, 1
	la	VirtualReg_423, fuckLLVM_w
	sw	VirtualReg_422, 0(VirtualReg_423)
	lw	VirtualReg_424, fuckLLVM_w
	lw	VirtualReg_425, fuckLLVM_w
	addi	VirtualReg_426, VirtualReg_425, 1
	la	VirtualReg_427, fuckLLVM_w
	sw	VirtualReg_426, 0(VirtualReg_427)
	lw	VirtualReg_428, fuckLLVM_w
	addi	VirtualReg_429, VirtualReg_428, 1
	la	VirtualReg_430, fuckLLVM_w
	sw	VirtualReg_429, 0(VirtualReg_430)
	lw	VirtualReg_431, fuckLLVM_w
	lw	VirtualReg_432, fuckLLVM_w
	addi	VirtualReg_433, VirtualReg_432, 1
	la	VirtualReg_434, fuckLLVM_w
	sw	VirtualReg_433, 0(VirtualReg_434)
	lw	VirtualReg_435, fuckLLVM_w
	addi	VirtualReg_436, VirtualReg_435, 1
	la	VirtualReg_437, fuckLLVM_w
	sw	VirtualReg_436, 0(VirtualReg_437)
	lw	VirtualReg_438, fuckLLVM_w
	lw	VirtualReg_439, fuckLLVM_w
	addi	VirtualReg_440, VirtualReg_439, 1
	la	VirtualReg_441, fuckLLVM_w
	sw	VirtualReg_440, 0(VirtualReg_441)
	lw	VirtualReg_442, fuckLLVM_w
	addi	VirtualReg_443, VirtualReg_442, 1
	la	VirtualReg_444, fuckLLVM_w
	sw	VirtualReg_443, 0(VirtualReg_444)
	lw	VirtualReg_445, fuckLLVM_w
	lw	VirtualReg_446, fuckLLVM_w
	addi	VirtualReg_447, VirtualReg_446, 1
	la	VirtualReg_448, fuckLLVM_w
	sw	VirtualReg_447, 0(VirtualReg_448)
	lw	VirtualReg_449, fuckLLVM_w
	addi	VirtualReg_450, VirtualReg_449, 1
	la	VirtualReg_451, fuckLLVM_w
	sw	VirtualReg_450, 0(VirtualReg_451)
	lw	VirtualReg_452, fuckLLVM_w
	lw	VirtualReg_453, fuckLLVM_w
	addi	VirtualReg_454, VirtualReg_453, 1
	la	VirtualReg_455, fuckLLVM_w
	sw	VirtualReg_454, 0(VirtualReg_455)
	lw	VirtualReg_456, fuckLLVM_w
	addi	VirtualReg_457, VirtualReg_456, 1
	la	VirtualReg_458, fuckLLVM_w
	sw	VirtualReg_457, 0(VirtualReg_458)
	lw	VirtualReg_459, fuckLLVM_w
	lw	VirtualReg_460, fuckLLVM_w
	addi	VirtualReg_461, VirtualReg_460, 1
	la	VirtualReg_462, fuckLLVM_w
	sw	VirtualReg_461, 0(VirtualReg_462)
	lw	VirtualReg_463, fuckLLVM_w
	addi	VirtualReg_464, VirtualReg_463, 1
	la	VirtualReg_465, fuckLLVM_w
	sw	VirtualReg_464, 0(VirtualReg_465)
	lw	VirtualReg_466, fuckLLVM_w
	lw	VirtualReg_467, fuckLLVM_w
	addi	VirtualReg_468, VirtualReg_467, 1
	la	VirtualReg_469, fuckLLVM_w
	sw	VirtualReg_468, 0(VirtualReg_469)
	lw	VirtualReg_470, fuckLLVM_w
	addi	VirtualReg_471, VirtualReg_470, 1
	la	VirtualReg_472, fuckLLVM_w
	sw	VirtualReg_471, 0(VirtualReg_472)
	lw	VirtualReg_473, fuckLLVM_w
	lw	VirtualReg_474, fuckLLVM_w
	addi	VirtualReg_475, VirtualReg_474, 1
	la	VirtualReg_476, fuckLLVM_w
	sw	VirtualReg_475, 0(VirtualReg_476)
	lw	VirtualReg_477, fuckLLVM_w
	addi	VirtualReg_478, VirtualReg_477, 1
	la	VirtualReg_479, fuckLLVM_w
	sw	VirtualReg_478, 0(VirtualReg_479)
	lw	VirtualReg_480, fuckLLVM_w
	lw	VirtualReg_481, fuckLLVM_w
	addi	VirtualReg_482, VirtualReg_481, 1
	la	VirtualReg_483, fuckLLVM_w
	sw	VirtualReg_482, 0(VirtualReg_483)
	lw	VirtualReg_484, fuckLLVM_w
	addi	VirtualReg_485, VirtualReg_484, 1
	la	VirtualReg_486, fuckLLVM_w
	sw	VirtualReg_485, 0(VirtualReg_486)
	lw	VirtualReg_487, fuckLLVM_w
	lw	VirtualReg_488, fuckLLVM_w
	addi	VirtualReg_489, VirtualReg_488, 1
	la	VirtualReg_490, fuckLLVM_w
	sw	VirtualReg_489, 0(VirtualReg_490)
	lw	VirtualReg_491, fuckLLVM_w
	addi	VirtualReg_492, VirtualReg_491, 1
	la	VirtualReg_493, fuckLLVM_w
	sw	VirtualReg_492, 0(VirtualReg_493)
	lw	VirtualReg_494, fuckLLVM_w
	lw	VirtualReg_495, fuckLLVM_w
	addi	VirtualReg_496, VirtualReg_495, 1
	la	VirtualReg_497, fuckLLVM_w
	sw	VirtualReg_496, 0(VirtualReg_497)
	lw	VirtualReg_498, fuckLLVM_w
	addi	VirtualReg_499, VirtualReg_498, 1
	la	VirtualReg_500, fuckLLVM_w
	sw	VirtualReg_499, 0(VirtualReg_500)
	lw	VirtualReg_501, fuckLLVM_w
	lw	VirtualReg_502, fuckLLVM_w
	addi	VirtualReg_503, VirtualReg_502, 1
	la	VirtualReg_504, fuckLLVM_w
	sw	VirtualReg_503, 0(VirtualReg_504)
	lw	VirtualReg_505, fuckLLVM_w
	addi	VirtualReg_506, VirtualReg_505, 1
	la	VirtualReg_507, fuckLLVM_w
	sw	VirtualReg_506, 0(VirtualReg_507)
	lw	VirtualReg_508, fuckLLVM_w
	lw	VirtualReg_509, fuckLLVM_w
	addi	VirtualReg_510, VirtualReg_509, 1
	la	VirtualReg_511, fuckLLVM_w
	sw	VirtualReg_510, 0(VirtualReg_511)
	lw	VirtualReg_512, fuckLLVM_w
	addi	VirtualReg_513, VirtualReg_512, 1
	la	VirtualReg_514, fuckLLVM_w
	sw	VirtualReg_513, 0(VirtualReg_514)
	lw	VirtualReg_515, fuckLLVM_w
	lw	VirtualReg_516, fuckLLVM_w
	addi	VirtualReg_517, VirtualReg_516, 1
	la	VirtualReg_518, fuckLLVM_w
	sw	VirtualReg_517, 0(VirtualReg_518)
	lw	VirtualReg_519, fuckLLVM_w
	addi	VirtualReg_520, VirtualReg_519, 1
	la	VirtualReg_521, fuckLLVM_w
	sw	VirtualReg_520, 0(VirtualReg_521)
	lw	VirtualReg_522, fuckLLVM_w
	lw	VirtualReg_523, fuckLLVM_w
	addi	VirtualReg_524, VirtualReg_523, 1
	la	VirtualReg_525, fuckLLVM_w
	sw	VirtualReg_524, 0(VirtualReg_525)
	lw	VirtualReg_526, fuckLLVM_w
	addi	VirtualReg_527, VirtualReg_526, 1
	la	VirtualReg_528, fuckLLVM_w
	sw	VirtualReg_527, 0(VirtualReg_528)
	lw	VirtualReg_529, fuckLLVM_w
	lw	VirtualReg_530, fuckLLVM_w
	addi	VirtualReg_531, VirtualReg_530, 1
	la	VirtualReg_532, fuckLLVM_w
	sw	VirtualReg_531, 0(VirtualReg_532)
	lw	VirtualReg_533, fuckLLVM_w
	addi	VirtualReg_534, VirtualReg_533, 1
	la	VirtualReg_535, fuckLLVM_w
	sw	VirtualReg_534, 0(VirtualReg_535)
	lw	VirtualReg_536, fuckLLVM_w
	lw	VirtualReg_537, fuckLLVM_w
	addi	VirtualReg_538, VirtualReg_537, 1
	la	VirtualReg_539, fuckLLVM_w
	sw	VirtualReg_538, 0(VirtualReg_539)
	lw	VirtualReg_540, fuckLLVM_w
	addi	VirtualReg_541, VirtualReg_540, 1
	la	VirtualReg_542, fuckLLVM_w
	sw	VirtualReg_541, 0(VirtualReg_542)
	lw	VirtualReg_543, fuckLLVM_w
	lw	VirtualReg_544, fuckLLVM_w
	addi	VirtualReg_545, VirtualReg_544, 1
	la	VirtualReg_546, fuckLLVM_w
	sw	VirtualReg_545, 0(VirtualReg_546)
	lw	VirtualReg_547, fuckLLVM_w
	addi	VirtualReg_548, VirtualReg_547, 1
	la	VirtualReg_549, fuckLLVM_w
	sw	VirtualReg_548, 0(VirtualReg_549)
	lw	VirtualReg_550, fuckLLVM_w
	lw	VirtualReg_551, fuckLLVM_w
	addi	VirtualReg_552, VirtualReg_551, 1
	la	VirtualReg_553, fuckLLVM_w
	sw	VirtualReg_552, 0(VirtualReg_553)
	lw	VirtualReg_554, fuckLLVM_w
	addi	VirtualReg_555, VirtualReg_554, 1
	la	VirtualReg_556, fuckLLVM_w
	sw	VirtualReg_555, 0(VirtualReg_556)
	lw	VirtualReg_557, fuckLLVM_w
	lw	VirtualReg_558, fuckLLVM_w
	addi	VirtualReg_559, VirtualReg_558, 1
	la	VirtualReg_560, fuckLLVM_w
	sw	VirtualReg_559, 0(VirtualReg_560)
	lw	VirtualReg_561, fuckLLVM_w
	addi	VirtualReg_562, VirtualReg_561, 1
	la	VirtualReg_563, fuckLLVM_w
	sw	VirtualReg_562, 0(VirtualReg_563)
	lw	VirtualReg_564, fuckLLVM_w
	lw	VirtualReg_565, fuckLLVM_w
	addi	VirtualReg_566, VirtualReg_565, 1
	la	VirtualReg_567, fuckLLVM_w
	sw	VirtualReg_566, 0(VirtualReg_567)
	lw	VirtualReg_568, fuckLLVM_w
	addi	VirtualReg_569, VirtualReg_568, 1
	la	VirtualReg_570, fuckLLVM_w
	sw	VirtualReg_569, 0(VirtualReg_570)
	lw	VirtualReg_571, fuckLLVM_w
	lw	VirtualReg_572, fuckLLVM_w
	addi	VirtualReg_573, VirtualReg_572, 1
	la	VirtualReg_574, fuckLLVM_w
	sw	VirtualReg_573, 0(VirtualReg_574)
	lw	VirtualReg_575, fuckLLVM_w
	addi	VirtualReg_576, VirtualReg_575, 1
	la	VirtualReg_577, fuckLLVM_w
	sw	VirtualReg_576, 0(VirtualReg_577)
	lw	VirtualReg_578, fuckLLVM_w
	lw	VirtualReg_579, fuckLLVM_w
	addi	VirtualReg_580, VirtualReg_579, 1
	la	VirtualReg_581, fuckLLVM_w
	sw	VirtualReg_580, 0(VirtualReg_581)
	lw	VirtualReg_582, fuckLLVM_w
	addi	VirtualReg_583, VirtualReg_582, 1
	la	VirtualReg_584, fuckLLVM_w
	sw	VirtualReg_583, 0(VirtualReg_584)
	lw	VirtualReg_585, fuckLLVM_w
	lw	VirtualReg_586, fuckLLVM_w
	addi	VirtualReg_587, VirtualReg_586, 1
	la	VirtualReg_588, fuckLLVM_w
	sw	VirtualReg_587, 0(VirtualReg_588)
	lw	VirtualReg_589, fuckLLVM_w
	addi	VirtualReg_590, VirtualReg_589, 1
	la	VirtualReg_591, fuckLLVM_w
	sw	VirtualReg_590, 0(VirtualReg_591)
	lw	VirtualReg_592, fuckLLVM_w
	lw	VirtualReg_593, fuckLLVM_w
	addi	VirtualReg_594, VirtualReg_593, 1
	la	VirtualReg_595, fuckLLVM_w
	sw	VirtualReg_594, 0(VirtualReg_595)
	lw	VirtualReg_596, fuckLLVM_w
	addi	VirtualReg_597, VirtualReg_596, 1
	la	VirtualReg_598, fuckLLVM_w
	sw	VirtualReg_597, 0(VirtualReg_598)
	lw	VirtualReg_599, fuckLLVM_w
	lw	VirtualReg_600, fuckLLVM_w
	addi	VirtualReg_601, VirtualReg_600, 1
	la	VirtualReg_602, fuckLLVM_w
	sw	VirtualReg_601, 0(VirtualReg_602)
	lw	VirtualReg_603, fuckLLVM_w
	addi	VirtualReg_604, VirtualReg_603, 1
	la	VirtualReg_605, fuckLLVM_w
	sw	VirtualReg_604, 0(VirtualReg_605)
	lw	VirtualReg_606, fuckLLVM_w
	lw	VirtualReg_607, fuckLLVM_w
	addi	VirtualReg_608, VirtualReg_607, 1
	la	VirtualReg_609, fuckLLVM_w
	sw	VirtualReg_608, 0(VirtualReg_609)
	lw	VirtualReg_610, fuckLLVM_w
	addi	VirtualReg_611, VirtualReg_610, 1
	la	VirtualReg_612, fuckLLVM_w
	sw	VirtualReg_611, 0(VirtualReg_612)
	lw	VirtualReg_613, fuckLLVM_w
	lw	VirtualReg_614, fuckLLVM_w
	addi	VirtualReg_615, VirtualReg_614, 1
	la	VirtualReg_616, fuckLLVM_w
	sw	VirtualReg_615, 0(VirtualReg_616)
	lw	VirtualReg_617, fuckLLVM_w
	addi	VirtualReg_618, VirtualReg_617, 1
	la	VirtualReg_619, fuckLLVM_w
	sw	VirtualReg_618, 0(VirtualReg_619)
	lw	VirtualReg_620, fuckLLVM_w
	lw	VirtualReg_621, fuckLLVM_w
	addi	VirtualReg_622, VirtualReg_621, 1
	la	VirtualReg_623, fuckLLVM_w
	sw	VirtualReg_622, 0(VirtualReg_623)
	lw	VirtualReg_624, fuckLLVM_w
	addi	VirtualReg_625, VirtualReg_624, 1
	la	VirtualReg_626, fuckLLVM_w
	sw	VirtualReg_625, 0(VirtualReg_626)
	lw	VirtualReg_627, fuckLLVM_w
	lw	VirtualReg_628, fuckLLVM_w
	addi	VirtualReg_629, VirtualReg_628, 1
	la	VirtualReg_630, fuckLLVM_w
	sw	VirtualReg_629, 0(VirtualReg_630)
	lw	VirtualReg_631, fuckLLVM_w
	addi	VirtualReg_632, VirtualReg_631, 1
	la	VirtualReg_633, fuckLLVM_w
	sw	VirtualReg_632, 0(VirtualReg_633)
	lw	VirtualReg_634, fuckLLVM_w
	lw	VirtualReg_635, fuckLLVM_w
	addi	VirtualReg_636, VirtualReg_635, 1
	la	VirtualReg_637, fuckLLVM_w
	sw	VirtualReg_636, 0(VirtualReg_637)
	lw	VirtualReg_638, fuckLLVM_w
	addi	VirtualReg_639, VirtualReg_638, 1
	la	VirtualReg_640, fuckLLVM_w
	sw	VirtualReg_639, 0(VirtualReg_640)
	lw	VirtualReg_641, fuckLLVM_w
	lw	VirtualReg_642, fuckLLVM_w
	addi	VirtualReg_643, VirtualReg_642, 1
	la	VirtualReg_644, fuckLLVM_w
	sw	VirtualReg_643, 0(VirtualReg_644)
	lw	VirtualReg_645, fuckLLVM_w
	addi	VirtualReg_646, VirtualReg_645, 1
	la	VirtualReg_647, fuckLLVM_w
	sw	VirtualReg_646, 0(VirtualReg_647)
	lw	VirtualReg_648, fuckLLVM_w
	lw	VirtualReg_649, fuckLLVM_w
	addi	VirtualReg_650, VirtualReg_649, 1
	la	VirtualReg_651, fuckLLVM_w
	sw	VirtualReg_650, 0(VirtualReg_651)
	lw	VirtualReg_652, fuckLLVM_w
	addi	VirtualReg_653, VirtualReg_652, 1
	la	VirtualReg_654, fuckLLVM_w
	sw	VirtualReg_653, 0(VirtualReg_654)
	lw	VirtualReg_655, fuckLLVM_w
	lw	VirtualReg_656, fuckLLVM_w
	addi	VirtualReg_657, VirtualReg_656, 1
	la	VirtualReg_658, fuckLLVM_w
	sw	VirtualReg_657, 0(VirtualReg_658)
	lw	VirtualReg_659, fuckLLVM_w
	addi	VirtualReg_660, VirtualReg_659, 1
	la	VirtualReg_661, fuckLLVM_w
	sw	VirtualReg_660, 0(VirtualReg_661)
	lw	VirtualReg_662, fuckLLVM_w
	lw	VirtualReg_663, fuckLLVM_w
	addi	VirtualReg_664, VirtualReg_663, 1
	la	VirtualReg_665, fuckLLVM_w
	sw	VirtualReg_664, 0(VirtualReg_665)
	lw	VirtualReg_666, fuckLLVM_w
	addi	VirtualReg_667, VirtualReg_666, 1
	la	VirtualReg_668, fuckLLVM_w
	sw	VirtualReg_667, 0(VirtualReg_668)
	lw	VirtualReg_669, fuckLLVM_w
	lw	VirtualReg_670, fuckLLVM_w
	addi	VirtualReg_671, VirtualReg_670, 1
	la	VirtualReg_672, fuckLLVM_w
	sw	VirtualReg_671, 0(VirtualReg_672)
	lw	VirtualReg_673, fuckLLVM_w
	addi	VirtualReg_674, VirtualReg_673, 1
	la	VirtualReg_675, fuckLLVM_w
	sw	VirtualReg_674, 0(VirtualReg_675)
	lw	VirtualReg_676, fuckLLVM_w
	lw	VirtualReg_677, fuckLLVM_w
	addi	VirtualReg_678, VirtualReg_677, 1
	la	VirtualReg_679, fuckLLVM_w
	sw	VirtualReg_678, 0(VirtualReg_679)
	lw	VirtualReg_680, fuckLLVM_w
	addi	VirtualReg_681, VirtualReg_680, 1
	la	VirtualReg_682, fuckLLVM_w
	sw	VirtualReg_681, 0(VirtualReg_682)
	lw	VirtualReg_683, fuckLLVM_w
	lw	VirtualReg_684, fuckLLVM_w
	addi	VirtualReg_685, VirtualReg_684, 1
	la	VirtualReg_686, fuckLLVM_w
	sw	VirtualReg_685, 0(VirtualReg_686)
	lw	VirtualReg_687, fuckLLVM_w
	addi	VirtualReg_688, VirtualReg_687, 1
	la	VirtualReg_689, fuckLLVM_w
	sw	VirtualReg_688, 0(VirtualReg_689)
	lw	VirtualReg_690, fuckLLVM_w
	lw	VirtualReg_691, fuckLLVM_w
	addi	VirtualReg_692, VirtualReg_691, 1
	la	VirtualReg_693, fuckLLVM_w
	sw	VirtualReg_692, 0(VirtualReg_693)
	lw	VirtualReg_694, fuckLLVM_w
	addi	VirtualReg_695, VirtualReg_694, 1
	la	VirtualReg_696, fuckLLVM_w
	sw	VirtualReg_695, 0(VirtualReg_696)
	lw	VirtualReg_697, fuckLLVM_w
	lw	VirtualReg_698, fuckLLVM_w
	addi	VirtualReg_699, VirtualReg_698, 1
	la	VirtualReg_700, fuckLLVM_w
	sw	VirtualReg_699, 0(VirtualReg_700)
	lw	VirtualReg_701, fuckLLVM_w
	addi	VirtualReg_702, VirtualReg_701, 1
	la	VirtualReg_703, fuckLLVM_w
	sw	VirtualReg_702, 0(VirtualReg_703)
	lw	VirtualReg_704, fuckLLVM_w
	lw	VirtualReg_705, fuckLLVM_w
	addi	VirtualReg_706, VirtualReg_705, 1
	la	VirtualReg_707, fuckLLVM_w
	sw	VirtualReg_706, 0(VirtualReg_707)
	lw	VirtualReg_708, fuckLLVM_w
	addi	VirtualReg_709, VirtualReg_708, 1
	la	VirtualReg_710, fuckLLVM_w
	sw	VirtualReg_709, 0(VirtualReg_710)
	lw	VirtualReg_711, fuckLLVM_w
	lw	VirtualReg_712, fuckLLVM_w
	addi	VirtualReg_713, VirtualReg_712, 1
	la	VirtualReg_714, fuckLLVM_w
	sw	VirtualReg_713, 0(VirtualReg_714)
	lw	VirtualReg_715, fuckLLVM_w
	addi	VirtualReg_716, VirtualReg_715, 1
	la	VirtualReg_717, fuckLLVM_w
	sw	VirtualReg_716, 0(VirtualReg_717)
	lw	VirtualReg_718, fuckLLVM_w
	lw	VirtualReg_719, fuckLLVM_w
	addi	VirtualReg_720, VirtualReg_719, 1
	la	VirtualReg_721, fuckLLVM_w
	sw	VirtualReg_720, 0(VirtualReg_721)
	lw	VirtualReg_722, fuckLLVM_w
	addi	VirtualReg_723, VirtualReg_722, 1
	la	VirtualReg_724, fuckLLVM_w
	sw	VirtualReg_723, 0(VirtualReg_724)
	lw	VirtualReg_725, fuckLLVM_w
	lw	VirtualReg_726, fuckLLVM_w
	addi	VirtualReg_727, VirtualReg_726, 1
	la	VirtualReg_728, fuckLLVM_w
	sw	VirtualReg_727, 0(VirtualReg_728)
	lw	VirtualReg_729, fuckLLVM_w
	addi	VirtualReg_730, VirtualReg_729, 1
	la	VirtualReg_731, fuckLLVM_w
	sw	VirtualReg_730, 0(VirtualReg_731)
	lw	VirtualReg_732, fuckLLVM_w
	lw	VirtualReg_733, fuckLLVM_w
	addi	VirtualReg_734, VirtualReg_733, 1
	la	VirtualReg_735, fuckLLVM_w
	sw	VirtualReg_734, 0(VirtualReg_735)
	lw	VirtualReg_736, fuckLLVM_w
	addi	VirtualReg_737, VirtualReg_736, 1
	la	VirtualReg_738, fuckLLVM_w
	sw	VirtualReg_737, 0(VirtualReg_738)
	lw	VirtualReg_739, fuckLLVM_w
	lw	VirtualReg_740, fuckLLVM_w
	addi	VirtualReg_741, VirtualReg_740, 1
	la	VirtualReg_742, fuckLLVM_w
	sw	VirtualReg_741, 0(VirtualReg_742)
	lw	VirtualReg_743, fuckLLVM_w
	addi	VirtualReg_744, VirtualReg_743, 1
	la	VirtualReg_745, fuckLLVM_w
	sw	VirtualReg_744, 0(VirtualReg_745)
	lw	VirtualReg_746, fuckLLVM_w
	lw	VirtualReg_747, fuckLLVM_w
	addi	VirtualReg_748, VirtualReg_747, 1
	la	VirtualReg_749, fuckLLVM_w
	sw	VirtualReg_748, 0(VirtualReg_749)
	lw	VirtualReg_750, fuckLLVM_w
	addi	VirtualReg_751, VirtualReg_750, 1
	la	VirtualReg_752, fuckLLVM_w
	sw	VirtualReg_751, 0(VirtualReg_752)
	lw	VirtualReg_753, fuckLLVM_w
	lw	VirtualReg_754, fuckLLVM_w
	addi	VirtualReg_755, VirtualReg_754, 1
	la	VirtualReg_756, fuckLLVM_w
	sw	VirtualReg_755, 0(VirtualReg_756)
	lw	VirtualReg_757, fuckLLVM_w
	addi	VirtualReg_758, VirtualReg_757, 1
	la	VirtualReg_759, fuckLLVM_w
	sw	VirtualReg_758, 0(VirtualReg_759)
	lw	VirtualReg_760, fuckLLVM_w
	lw	VirtualReg_761, fuckLLVM_w
	addi	VirtualReg_762, VirtualReg_761, 1
	la	VirtualReg_763, fuckLLVM_w
	sw	VirtualReg_762, 0(VirtualReg_763)
	lw	VirtualReg_764, fuckLLVM_w
	addi	VirtualReg_765, VirtualReg_764, 1
	la	VirtualReg_766, fuckLLVM_w
	sw	VirtualReg_765, 0(VirtualReg_766)
	lw	VirtualReg_767, fuckLLVM_w
	lw	VirtualReg_768, fuckLLVM_w
	addi	VirtualReg_769, VirtualReg_768, 1
	la	VirtualReg_770, fuckLLVM_w
	sw	VirtualReg_769, 0(VirtualReg_770)
	lw	VirtualReg_771, fuckLLVM_w
	addi	VirtualReg_772, VirtualReg_771, 1
	la	VirtualReg_773, fuckLLVM_w
	sw	VirtualReg_772, 0(VirtualReg_773)
	lw	VirtualReg_774, fuckLLVM_w
	lw	VirtualReg_775, fuckLLVM_w
	addi	VirtualReg_776, VirtualReg_775, 1
	la	VirtualReg_777, fuckLLVM_w
	sw	VirtualReg_776, 0(VirtualReg_777)
	lw	VirtualReg_778, fuckLLVM_w
	addi	VirtualReg_779, VirtualReg_778, 1
	la	VirtualReg_780, fuckLLVM_w
	sw	VirtualReg_779, 0(VirtualReg_780)
	lw	VirtualReg_781, fuckLLVM_w
	lw	VirtualReg_782, fuckLLVM_w
	addi	VirtualReg_783, VirtualReg_782, 1
	la	VirtualReg_784, fuckLLVM_w
	sw	VirtualReg_783, 0(VirtualReg_784)
	lw	VirtualReg_785, fuckLLVM_w
	addi	VirtualReg_786, VirtualReg_785, 1
	la	VirtualReg_787, fuckLLVM_w
	sw	VirtualReg_786, 0(VirtualReg_787)
	lw	VirtualReg_788, fuckLLVM_w
	lw	VirtualReg_789, fuckLLVM_w
	addi	VirtualReg_790, VirtualReg_789, 1
	la	VirtualReg_791, fuckLLVM_w
	sw	VirtualReg_790, 0(VirtualReg_791)
	lw	VirtualReg_792, fuckLLVM_w
	addi	VirtualReg_793, VirtualReg_792, 1
	la	VirtualReg_794, fuckLLVM_w
	sw	VirtualReg_793, 0(VirtualReg_794)
	lw	VirtualReg_795, fuckLLVM_w
	call	bblock
	mv	VirtualReg_796, a0
	call	bblock
	mv	VirtualReg_797, a0
	j	.bblock_return
.bblock_return:
	mv	a0, VirtualReg_797
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

	.globl	add1
	.p2align	2
	.type	add1,@function
add1:
.add1_assemblyInit:
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
	j	.add1_entry
.add1_entry:
	addi	VirtualReg_13, VirtualReg_0, 1
	j	.add1_return
.add1_return:
	mv	a0, VirtualReg_13
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

	.globl	add2
	.p2align	2
	.type	add2,@function
add2:
.add2_assemblyInit:
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
	j	.add2_entry
.add2_entry:
	j	.add2_call_add1_17
.add2_call_add1_17:
	addi	VirtualReg_13, VirtualReg_0, 1
	addi	VirtualReg_14, VirtualReg_13, 1
	j	.add2_return
.add2_return:
	mv	a0, VirtualReg_14
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

	.globl	add4
	.p2align	2
	.type	add4,@function
add4:
.add4_assemblyInit:
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
	j	.add4_entry
.add4_entry:
	j	.add4_call_add2_19
.add4_call_add2_19:
	addi	VirtualReg_13, VirtualReg_0, 1
	addi	VirtualReg_14, VirtualReg_13, 1
	addi	VirtualReg_15, VirtualReg_14, 1
	addi	VirtualReg_16, VirtualReg_15, 1
	j	.add4_return
.add4_return:
	mv	a0, VirtualReg_16
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

	.globl	add8
	.p2align	2
	.type	add8,@function
add8:
.add8_assemblyInit:
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
	j	.add8_entry
.add8_entry:
	j	.add8_call_add4_21
.add8_call_add4_21:
	addi	VirtualReg_13, VirtualReg_0, 1
	addi	VirtualReg_14, VirtualReg_13, 1
	addi	VirtualReg_15, VirtualReg_14, 1
	addi	VirtualReg_16, VirtualReg_15, 1
	addi	VirtualReg_17, VirtualReg_16, 1
	addi	VirtualReg_18, VirtualReg_17, 1
	addi	VirtualReg_19, VirtualReg_18, 1
	addi	VirtualReg_20, VirtualReg_19, 1
	j	.add8_return
.add8_return:
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

	.globl	add16
	.p2align	2
	.type	add16,@function
add16:
.add16_assemblyInit:
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
	j	.add16_entry
.add16_entry:
	j	.add16_call_add8_23
.add16_call_add8_23:
	addi	VirtualReg_13, VirtualReg_0, 1
	addi	VirtualReg_14, VirtualReg_13, 1
	addi	VirtualReg_15, VirtualReg_14, 1
	addi	VirtualReg_16, VirtualReg_15, 1
	addi	VirtualReg_17, VirtualReg_16, 1
	addi	VirtualReg_18, VirtualReg_17, 1
	addi	VirtualReg_19, VirtualReg_18, 1
	addi	VirtualReg_20, VirtualReg_19, 1
	addi	VirtualReg_21, VirtualReg_20, 1
	addi	VirtualReg_22, VirtualReg_21, 1
	addi	VirtualReg_23, VirtualReg_22, 1
	addi	VirtualReg_24, VirtualReg_23, 1
	addi	VirtualReg_25, VirtualReg_24, 1
	addi	VirtualReg_26, VirtualReg_25, 1
	addi	VirtualReg_27, VirtualReg_26, 1
	addi	VirtualReg_28, VirtualReg_27, 1
	j	.add16_return
.add16_return:
	mv	a0, VirtualReg_28
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

	.globl	add32
	.p2align	2
	.type	add32,@function
add32:
.add32_assemblyInit:
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
	j	.add32_entry
.add32_entry:
	j	.add32_call_add16_25
.add32_call_add16_25:
	addi	VirtualReg_13, VirtualReg_0, 1
	addi	VirtualReg_14, VirtualReg_13, 1
	addi	VirtualReg_15, VirtualReg_14, 1
	addi	VirtualReg_16, VirtualReg_15, 1
	addi	VirtualReg_17, VirtualReg_16, 1
	addi	VirtualReg_18, VirtualReg_17, 1
	addi	VirtualReg_19, VirtualReg_18, 1
	addi	VirtualReg_20, VirtualReg_19, 1
	addi	VirtualReg_21, VirtualReg_20, 1
	addi	VirtualReg_22, VirtualReg_21, 1
	addi	VirtualReg_23, VirtualReg_22, 1
	addi	VirtualReg_24, VirtualReg_23, 1
	addi	VirtualReg_25, VirtualReg_24, 1
	addi	VirtualReg_26, VirtualReg_25, 1
	addi	VirtualReg_27, VirtualReg_26, 1
	addi	VirtualReg_28, VirtualReg_27, 1
	addi	VirtualReg_29, VirtualReg_28, 1
	addi	VirtualReg_30, VirtualReg_29, 1
	addi	VirtualReg_31, VirtualReg_30, 1
	addi	VirtualReg_32, VirtualReg_31, 1
	addi	VirtualReg_33, VirtualReg_32, 1
	addi	VirtualReg_34, VirtualReg_33, 1
	addi	VirtualReg_35, VirtualReg_34, 1
	addi	VirtualReg_36, VirtualReg_35, 1
	addi	VirtualReg_37, VirtualReg_36, 1
	addi	VirtualReg_38, VirtualReg_37, 1
	addi	VirtualReg_39, VirtualReg_38, 1
	addi	VirtualReg_40, VirtualReg_39, 1
	addi	VirtualReg_41, VirtualReg_40, 1
	addi	VirtualReg_42, VirtualReg_41, 1
	addi	VirtualReg_43, VirtualReg_42, 1
	addi	VirtualReg_44, VirtualReg_43, 1
	j	.add32_return
.add32_return:
	mv	a0, VirtualReg_44
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

	.globl	add64
	.p2align	2
	.type	add64,@function
add64:
.add64_assemblyInit:
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
	j	.add64_entry
.add64_entry:
	j	.add64_call_add32_27
.add64_call_add32_27:
	addi	VirtualReg_13, VirtualReg_0, 1
	addi	VirtualReg_14, VirtualReg_13, 1
	addi	VirtualReg_15, VirtualReg_14, 1
	addi	VirtualReg_16, VirtualReg_15, 1
	addi	VirtualReg_17, VirtualReg_16, 1
	addi	VirtualReg_18, VirtualReg_17, 1
	addi	VirtualReg_19, VirtualReg_18, 1
	addi	VirtualReg_20, VirtualReg_19, 1
	addi	VirtualReg_21, VirtualReg_20, 1
	addi	VirtualReg_22, VirtualReg_21, 1
	addi	VirtualReg_23, VirtualReg_22, 1
	addi	VirtualReg_24, VirtualReg_23, 1
	addi	VirtualReg_25, VirtualReg_24, 1
	addi	VirtualReg_26, VirtualReg_25, 1
	addi	VirtualReg_27, VirtualReg_26, 1
	addi	VirtualReg_28, VirtualReg_27, 1
	addi	VirtualReg_29, VirtualReg_28, 1
	addi	VirtualReg_30, VirtualReg_29, 1
	addi	VirtualReg_31, VirtualReg_30, 1
	addi	VirtualReg_32, VirtualReg_31, 1
	addi	VirtualReg_33, VirtualReg_32, 1
	addi	VirtualReg_34, VirtualReg_33, 1
	addi	VirtualReg_35, VirtualReg_34, 1
	addi	VirtualReg_36, VirtualReg_35, 1
	addi	VirtualReg_37, VirtualReg_36, 1
	addi	VirtualReg_38, VirtualReg_37, 1
	addi	VirtualReg_39, VirtualReg_38, 1
	addi	VirtualReg_40, VirtualReg_39, 1
	addi	VirtualReg_41, VirtualReg_40, 1
	addi	VirtualReg_42, VirtualReg_41, 1
	addi	VirtualReg_43, VirtualReg_42, 1
	addi	VirtualReg_44, VirtualReg_43, 1
	addi	VirtualReg_45, VirtualReg_44, 1
	addi	VirtualReg_46, VirtualReg_45, 1
	addi	VirtualReg_47, VirtualReg_46, 1
	addi	VirtualReg_48, VirtualReg_47, 1
	addi	VirtualReg_49, VirtualReg_48, 1
	addi	VirtualReg_50, VirtualReg_49, 1
	addi	VirtualReg_51, VirtualReg_50, 1
	addi	VirtualReg_52, VirtualReg_51, 1
	addi	VirtualReg_53, VirtualReg_52, 1
	addi	VirtualReg_54, VirtualReg_53, 1
	addi	VirtualReg_55, VirtualReg_54, 1
	addi	VirtualReg_56, VirtualReg_55, 1
	addi	VirtualReg_57, VirtualReg_56, 1
	addi	VirtualReg_58, VirtualReg_57, 1
	addi	VirtualReg_59, VirtualReg_58, 1
	addi	VirtualReg_60, VirtualReg_59, 1
	addi	VirtualReg_61, VirtualReg_60, 1
	addi	VirtualReg_62, VirtualReg_61, 1
	addi	VirtualReg_63, VirtualReg_62, 1
	addi	VirtualReg_64, VirtualReg_63, 1
	addi	VirtualReg_65, VirtualReg_64, 1
	addi	VirtualReg_66, VirtualReg_65, 1
	addi	VirtualReg_67, VirtualReg_66, 1
	addi	VirtualReg_68, VirtualReg_67, 1
	addi	VirtualReg_69, VirtualReg_68, 1
	addi	VirtualReg_70, VirtualReg_69, 1
	addi	VirtualReg_71, VirtualReg_70, 1
	addi	VirtualReg_72, VirtualReg_71, 1
	addi	VirtualReg_73, VirtualReg_72, 1
	addi	VirtualReg_74, VirtualReg_73, 1
	addi	VirtualReg_75, VirtualReg_74, 1
	addi	VirtualReg_76, VirtualReg_75, 1
	j	.add64_return
.add64_return:
	mv	a0, VirtualReg_76
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

	.globl	add128
	.p2align	2
	.type	add128,@function
add128:
.add128_assemblyInit:
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
	j	.add128_entry
.add128_entry:
	j	.add128_call_add64_29
.add128_call_add64_29:
	addi	VirtualReg_13, VirtualReg_0, 1
	addi	VirtualReg_14, VirtualReg_13, 1
	addi	VirtualReg_15, VirtualReg_14, 1
	addi	VirtualReg_16, VirtualReg_15, 1
	addi	VirtualReg_17, VirtualReg_16, 1
	addi	VirtualReg_18, VirtualReg_17, 1
	addi	VirtualReg_19, VirtualReg_18, 1
	addi	VirtualReg_20, VirtualReg_19, 1
	addi	VirtualReg_21, VirtualReg_20, 1
	addi	VirtualReg_22, VirtualReg_21, 1
	addi	VirtualReg_23, VirtualReg_22, 1
	addi	VirtualReg_24, VirtualReg_23, 1
	addi	VirtualReg_25, VirtualReg_24, 1
	addi	VirtualReg_26, VirtualReg_25, 1
	addi	VirtualReg_27, VirtualReg_26, 1
	addi	VirtualReg_28, VirtualReg_27, 1
	addi	VirtualReg_29, VirtualReg_28, 1
	addi	VirtualReg_30, VirtualReg_29, 1
	addi	VirtualReg_31, VirtualReg_30, 1
	addi	VirtualReg_32, VirtualReg_31, 1
	addi	VirtualReg_33, VirtualReg_32, 1
	addi	VirtualReg_34, VirtualReg_33, 1
	addi	VirtualReg_35, VirtualReg_34, 1
	addi	VirtualReg_36, VirtualReg_35, 1
	addi	VirtualReg_37, VirtualReg_36, 1
	addi	VirtualReg_38, VirtualReg_37, 1
	addi	VirtualReg_39, VirtualReg_38, 1
	addi	VirtualReg_40, VirtualReg_39, 1
	addi	VirtualReg_41, VirtualReg_40, 1
	addi	VirtualReg_42, VirtualReg_41, 1
	addi	VirtualReg_43, VirtualReg_42, 1
	addi	VirtualReg_44, VirtualReg_43, 1
	addi	VirtualReg_45, VirtualReg_44, 1
	addi	VirtualReg_46, VirtualReg_45, 1
	addi	VirtualReg_47, VirtualReg_46, 1
	addi	VirtualReg_48, VirtualReg_47, 1
	addi	VirtualReg_49, VirtualReg_48, 1
	addi	VirtualReg_50, VirtualReg_49, 1
	addi	VirtualReg_51, VirtualReg_50, 1
	addi	VirtualReg_52, VirtualReg_51, 1
	addi	VirtualReg_53, VirtualReg_52, 1
	addi	VirtualReg_54, VirtualReg_53, 1
	addi	VirtualReg_55, VirtualReg_54, 1
	addi	VirtualReg_56, VirtualReg_55, 1
	addi	VirtualReg_57, VirtualReg_56, 1
	addi	VirtualReg_58, VirtualReg_57, 1
	addi	VirtualReg_59, VirtualReg_58, 1
	addi	VirtualReg_60, VirtualReg_59, 1
	addi	VirtualReg_61, VirtualReg_60, 1
	addi	VirtualReg_62, VirtualReg_61, 1
	addi	VirtualReg_63, VirtualReg_62, 1
	addi	VirtualReg_64, VirtualReg_63, 1
	addi	VirtualReg_65, VirtualReg_64, 1
	addi	VirtualReg_66, VirtualReg_65, 1
	addi	VirtualReg_67, VirtualReg_66, 1
	addi	VirtualReg_68, VirtualReg_67, 1
	addi	VirtualReg_69, VirtualReg_68, 1
	addi	VirtualReg_70, VirtualReg_69, 1
	addi	VirtualReg_71, VirtualReg_70, 1
	addi	VirtualReg_72, VirtualReg_71, 1
	addi	VirtualReg_73, VirtualReg_72, 1
	addi	VirtualReg_74, VirtualReg_73, 1
	addi	VirtualReg_75, VirtualReg_74, 1
	addi	VirtualReg_76, VirtualReg_75, 1
	addi	VirtualReg_77, VirtualReg_76, 1
	addi	VirtualReg_78, VirtualReg_77, 1
	addi	VirtualReg_79, VirtualReg_78, 1
	addi	VirtualReg_80, VirtualReg_79, 1
	addi	VirtualReg_81, VirtualReg_80, 1
	addi	VirtualReg_82, VirtualReg_81, 1
	addi	VirtualReg_83, VirtualReg_82, 1
	addi	VirtualReg_84, VirtualReg_83, 1
	addi	VirtualReg_85, VirtualReg_84, 1
	addi	VirtualReg_86, VirtualReg_85, 1
	addi	VirtualReg_87, VirtualReg_86, 1
	addi	VirtualReg_88, VirtualReg_87, 1
	addi	VirtualReg_89, VirtualReg_88, 1
	addi	VirtualReg_90, VirtualReg_89, 1
	addi	VirtualReg_91, VirtualReg_90, 1
	addi	VirtualReg_92, VirtualReg_91, 1
	addi	VirtualReg_93, VirtualReg_92, 1
	addi	VirtualReg_94, VirtualReg_93, 1
	addi	VirtualReg_95, VirtualReg_94, 1
	addi	VirtualReg_96, VirtualReg_95, 1
	addi	VirtualReg_97, VirtualReg_96, 1
	addi	VirtualReg_98, VirtualReg_97, 1
	addi	VirtualReg_99, VirtualReg_98, 1
	addi	VirtualReg_100, VirtualReg_99, 1
	addi	VirtualReg_101, VirtualReg_100, 1
	addi	VirtualReg_102, VirtualReg_101, 1
	addi	VirtualReg_103, VirtualReg_102, 1
	addi	VirtualReg_104, VirtualReg_103, 1
	addi	VirtualReg_105, VirtualReg_104, 1
	addi	VirtualReg_106, VirtualReg_105, 1
	addi	VirtualReg_107, VirtualReg_106, 1
	addi	VirtualReg_108, VirtualReg_107, 1
	addi	VirtualReg_109, VirtualReg_108, 1
	addi	VirtualReg_110, VirtualReg_109, 1
	addi	VirtualReg_111, VirtualReg_110, 1
	addi	VirtualReg_112, VirtualReg_111, 1
	addi	VirtualReg_113, VirtualReg_112, 1
	addi	VirtualReg_114, VirtualReg_113, 1
	addi	VirtualReg_115, VirtualReg_114, 1
	addi	VirtualReg_116, VirtualReg_115, 1
	addi	VirtualReg_117, VirtualReg_116, 1
	addi	VirtualReg_118, VirtualReg_117, 1
	addi	VirtualReg_119, VirtualReg_118, 1
	addi	VirtualReg_120, VirtualReg_119, 1
	addi	VirtualReg_121, VirtualReg_120, 1
	addi	VirtualReg_122, VirtualReg_121, 1
	addi	VirtualReg_123, VirtualReg_122, 1
	addi	VirtualReg_124, VirtualReg_123, 1
	addi	VirtualReg_125, VirtualReg_124, 1
	addi	VirtualReg_126, VirtualReg_125, 1
	addi	VirtualReg_127, VirtualReg_126, 1
	addi	VirtualReg_128, VirtualReg_127, 1
	addi	VirtualReg_129, VirtualReg_128, 1
	addi	VirtualReg_130, VirtualReg_129, 1
	addi	VirtualReg_131, VirtualReg_130, 1
	addi	VirtualReg_132, VirtualReg_131, 1
	addi	VirtualReg_133, VirtualReg_132, 1
	addi	VirtualReg_134, VirtualReg_133, 1
	addi	VirtualReg_135, VirtualReg_134, 1
	addi	VirtualReg_136, VirtualReg_135, 1
	addi	VirtualReg_137, VirtualReg_136, 1
	addi	VirtualReg_138, VirtualReg_137, 1
	addi	VirtualReg_139, VirtualReg_138, 1
	addi	VirtualReg_140, VirtualReg_139, 1
	j	.add128_return
.add128_return:
	mv	a0, VirtualReg_140
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

	.globl	add256
	.p2align	2
	.type	add256,@function
add256:
.add256_assemblyInit:
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
	j	.add256_entry
.add256_entry:
	j	.add256_call_add128_31
.add256_call_add128_31:
	addi	VirtualReg_13, VirtualReg_0, 1
	addi	VirtualReg_14, VirtualReg_13, 1
	addi	VirtualReg_15, VirtualReg_14, 1
	addi	VirtualReg_16, VirtualReg_15, 1
	addi	VirtualReg_17, VirtualReg_16, 1
	addi	VirtualReg_18, VirtualReg_17, 1
	addi	VirtualReg_19, VirtualReg_18, 1
	addi	VirtualReg_20, VirtualReg_19, 1
	addi	VirtualReg_21, VirtualReg_20, 1
	addi	VirtualReg_22, VirtualReg_21, 1
	addi	VirtualReg_23, VirtualReg_22, 1
	addi	VirtualReg_24, VirtualReg_23, 1
	addi	VirtualReg_25, VirtualReg_24, 1
	addi	VirtualReg_26, VirtualReg_25, 1
	addi	VirtualReg_27, VirtualReg_26, 1
	addi	VirtualReg_28, VirtualReg_27, 1
	addi	VirtualReg_29, VirtualReg_28, 1
	addi	VirtualReg_30, VirtualReg_29, 1
	addi	VirtualReg_31, VirtualReg_30, 1
	addi	VirtualReg_32, VirtualReg_31, 1
	addi	VirtualReg_33, VirtualReg_32, 1
	addi	VirtualReg_34, VirtualReg_33, 1
	addi	VirtualReg_35, VirtualReg_34, 1
	addi	VirtualReg_36, VirtualReg_35, 1
	addi	VirtualReg_37, VirtualReg_36, 1
	addi	VirtualReg_38, VirtualReg_37, 1
	addi	VirtualReg_39, VirtualReg_38, 1
	addi	VirtualReg_40, VirtualReg_39, 1
	addi	VirtualReg_41, VirtualReg_40, 1
	addi	VirtualReg_42, VirtualReg_41, 1
	addi	VirtualReg_43, VirtualReg_42, 1
	addi	VirtualReg_44, VirtualReg_43, 1
	addi	VirtualReg_45, VirtualReg_44, 1
	addi	VirtualReg_46, VirtualReg_45, 1
	addi	VirtualReg_47, VirtualReg_46, 1
	addi	VirtualReg_48, VirtualReg_47, 1
	addi	VirtualReg_49, VirtualReg_48, 1
	addi	VirtualReg_50, VirtualReg_49, 1
	addi	VirtualReg_51, VirtualReg_50, 1
	addi	VirtualReg_52, VirtualReg_51, 1
	addi	VirtualReg_53, VirtualReg_52, 1
	addi	VirtualReg_54, VirtualReg_53, 1
	addi	VirtualReg_55, VirtualReg_54, 1
	addi	VirtualReg_56, VirtualReg_55, 1
	addi	VirtualReg_57, VirtualReg_56, 1
	addi	VirtualReg_58, VirtualReg_57, 1
	addi	VirtualReg_59, VirtualReg_58, 1
	addi	VirtualReg_60, VirtualReg_59, 1
	addi	VirtualReg_61, VirtualReg_60, 1
	addi	VirtualReg_62, VirtualReg_61, 1
	addi	VirtualReg_63, VirtualReg_62, 1
	addi	VirtualReg_64, VirtualReg_63, 1
	addi	VirtualReg_65, VirtualReg_64, 1
	addi	VirtualReg_66, VirtualReg_65, 1
	addi	VirtualReg_67, VirtualReg_66, 1
	addi	VirtualReg_68, VirtualReg_67, 1
	addi	VirtualReg_69, VirtualReg_68, 1
	addi	VirtualReg_70, VirtualReg_69, 1
	addi	VirtualReg_71, VirtualReg_70, 1
	addi	VirtualReg_72, VirtualReg_71, 1
	addi	VirtualReg_73, VirtualReg_72, 1
	addi	VirtualReg_74, VirtualReg_73, 1
	addi	VirtualReg_75, VirtualReg_74, 1
	addi	VirtualReg_76, VirtualReg_75, 1
	addi	VirtualReg_77, VirtualReg_76, 1
	addi	VirtualReg_78, VirtualReg_77, 1
	addi	VirtualReg_79, VirtualReg_78, 1
	addi	VirtualReg_80, VirtualReg_79, 1
	addi	VirtualReg_81, VirtualReg_80, 1
	addi	VirtualReg_82, VirtualReg_81, 1
	addi	VirtualReg_83, VirtualReg_82, 1
	addi	VirtualReg_84, VirtualReg_83, 1
	addi	VirtualReg_85, VirtualReg_84, 1
	addi	VirtualReg_86, VirtualReg_85, 1
	addi	VirtualReg_87, VirtualReg_86, 1
	addi	VirtualReg_88, VirtualReg_87, 1
	addi	VirtualReg_89, VirtualReg_88, 1
	addi	VirtualReg_90, VirtualReg_89, 1
	addi	VirtualReg_91, VirtualReg_90, 1
	addi	VirtualReg_92, VirtualReg_91, 1
	addi	VirtualReg_93, VirtualReg_92, 1
	addi	VirtualReg_94, VirtualReg_93, 1
	addi	VirtualReg_95, VirtualReg_94, 1
	addi	VirtualReg_96, VirtualReg_95, 1
	addi	VirtualReg_97, VirtualReg_96, 1
	addi	VirtualReg_98, VirtualReg_97, 1
	addi	VirtualReg_99, VirtualReg_98, 1
	addi	VirtualReg_100, VirtualReg_99, 1
	addi	VirtualReg_101, VirtualReg_100, 1
	addi	VirtualReg_102, VirtualReg_101, 1
	addi	VirtualReg_103, VirtualReg_102, 1
	addi	VirtualReg_104, VirtualReg_103, 1
	addi	VirtualReg_105, VirtualReg_104, 1
	addi	VirtualReg_106, VirtualReg_105, 1
	addi	VirtualReg_107, VirtualReg_106, 1
	addi	VirtualReg_108, VirtualReg_107, 1
	addi	VirtualReg_109, VirtualReg_108, 1
	addi	VirtualReg_110, VirtualReg_109, 1
	addi	VirtualReg_111, VirtualReg_110, 1
	addi	VirtualReg_112, VirtualReg_111, 1
	addi	VirtualReg_113, VirtualReg_112, 1
	addi	VirtualReg_114, VirtualReg_113, 1
	addi	VirtualReg_115, VirtualReg_114, 1
	addi	VirtualReg_116, VirtualReg_115, 1
	addi	VirtualReg_117, VirtualReg_116, 1
	addi	VirtualReg_118, VirtualReg_117, 1
	addi	VirtualReg_119, VirtualReg_118, 1
	addi	VirtualReg_120, VirtualReg_119, 1
	addi	VirtualReg_121, VirtualReg_120, 1
	addi	VirtualReg_122, VirtualReg_121, 1
	addi	VirtualReg_123, VirtualReg_122, 1
	addi	VirtualReg_124, VirtualReg_123, 1
	addi	VirtualReg_125, VirtualReg_124, 1
	addi	VirtualReg_126, VirtualReg_125, 1
	addi	VirtualReg_127, VirtualReg_126, 1
	addi	VirtualReg_128, VirtualReg_127, 1
	addi	VirtualReg_129, VirtualReg_128, 1
	addi	VirtualReg_130, VirtualReg_129, 1
	addi	VirtualReg_131, VirtualReg_130, 1
	addi	VirtualReg_132, VirtualReg_131, 1
	addi	VirtualReg_133, VirtualReg_132, 1
	addi	VirtualReg_134, VirtualReg_133, 1
	addi	VirtualReg_135, VirtualReg_134, 1
	addi	VirtualReg_136, VirtualReg_135, 1
	addi	VirtualReg_137, VirtualReg_136, 1
	addi	VirtualReg_138, VirtualReg_137, 1
	addi	VirtualReg_139, VirtualReg_138, 1
	addi	VirtualReg_140, VirtualReg_139, 1
	addi	VirtualReg_141, VirtualReg_140, 1
	addi	VirtualReg_142, VirtualReg_141, 1
	addi	VirtualReg_143, VirtualReg_142, 1
	addi	VirtualReg_144, VirtualReg_143, 1
	addi	VirtualReg_145, VirtualReg_144, 1
	addi	VirtualReg_146, VirtualReg_145, 1
	addi	VirtualReg_147, VirtualReg_146, 1
	addi	VirtualReg_148, VirtualReg_147, 1
	addi	VirtualReg_149, VirtualReg_148, 1
	addi	VirtualReg_150, VirtualReg_149, 1
	addi	VirtualReg_151, VirtualReg_150, 1
	addi	VirtualReg_152, VirtualReg_151, 1
	addi	VirtualReg_153, VirtualReg_152, 1
	addi	VirtualReg_154, VirtualReg_153, 1
	addi	VirtualReg_155, VirtualReg_154, 1
	addi	VirtualReg_156, VirtualReg_155, 1
	addi	VirtualReg_157, VirtualReg_156, 1
	addi	VirtualReg_158, VirtualReg_157, 1
	addi	VirtualReg_159, VirtualReg_158, 1
	addi	VirtualReg_160, VirtualReg_159, 1
	addi	VirtualReg_161, VirtualReg_160, 1
	addi	VirtualReg_162, VirtualReg_161, 1
	addi	VirtualReg_163, VirtualReg_162, 1
	addi	VirtualReg_164, VirtualReg_163, 1
	addi	VirtualReg_165, VirtualReg_164, 1
	addi	VirtualReg_166, VirtualReg_165, 1
	addi	VirtualReg_167, VirtualReg_166, 1
	addi	VirtualReg_168, VirtualReg_167, 1
	addi	VirtualReg_169, VirtualReg_168, 1
	addi	VirtualReg_170, VirtualReg_169, 1
	addi	VirtualReg_171, VirtualReg_170, 1
	addi	VirtualReg_172, VirtualReg_171, 1
	addi	VirtualReg_173, VirtualReg_172, 1
	addi	VirtualReg_174, VirtualReg_173, 1
	addi	VirtualReg_175, VirtualReg_174, 1
	addi	VirtualReg_176, VirtualReg_175, 1
	addi	VirtualReg_177, VirtualReg_176, 1
	addi	VirtualReg_178, VirtualReg_177, 1
	addi	VirtualReg_179, VirtualReg_178, 1
	addi	VirtualReg_180, VirtualReg_179, 1
	addi	VirtualReg_181, VirtualReg_180, 1
	addi	VirtualReg_182, VirtualReg_181, 1
	addi	VirtualReg_183, VirtualReg_182, 1
	addi	VirtualReg_184, VirtualReg_183, 1
	addi	VirtualReg_185, VirtualReg_184, 1
	addi	VirtualReg_186, VirtualReg_185, 1
	addi	VirtualReg_187, VirtualReg_186, 1
	addi	VirtualReg_188, VirtualReg_187, 1
	addi	VirtualReg_189, VirtualReg_188, 1
	addi	VirtualReg_190, VirtualReg_189, 1
	addi	VirtualReg_191, VirtualReg_190, 1
	addi	VirtualReg_192, VirtualReg_191, 1
	addi	VirtualReg_193, VirtualReg_192, 1
	addi	VirtualReg_194, VirtualReg_193, 1
	addi	VirtualReg_195, VirtualReg_194, 1
	addi	VirtualReg_196, VirtualReg_195, 1
	addi	VirtualReg_197, VirtualReg_196, 1
	addi	VirtualReg_198, VirtualReg_197, 1
	addi	VirtualReg_199, VirtualReg_198, 1
	addi	VirtualReg_200, VirtualReg_199, 1
	addi	VirtualReg_201, VirtualReg_200, 1
	addi	VirtualReg_202, VirtualReg_201, 1
	addi	VirtualReg_203, VirtualReg_202, 1
	addi	VirtualReg_204, VirtualReg_203, 1
	addi	VirtualReg_205, VirtualReg_204, 1
	addi	VirtualReg_206, VirtualReg_205, 1
	addi	VirtualReg_207, VirtualReg_206, 1
	addi	VirtualReg_208, VirtualReg_207, 1
	addi	VirtualReg_209, VirtualReg_208, 1
	addi	VirtualReg_210, VirtualReg_209, 1
	addi	VirtualReg_211, VirtualReg_210, 1
	addi	VirtualReg_212, VirtualReg_211, 1
	addi	VirtualReg_213, VirtualReg_212, 1
	addi	VirtualReg_214, VirtualReg_213, 1
	addi	VirtualReg_215, VirtualReg_214, 1
	addi	VirtualReg_216, VirtualReg_215, 1
	addi	VirtualReg_217, VirtualReg_216, 1
	addi	VirtualReg_218, VirtualReg_217, 1
	addi	VirtualReg_219, VirtualReg_218, 1
	addi	VirtualReg_220, VirtualReg_219, 1
	addi	VirtualReg_221, VirtualReg_220, 1
	addi	VirtualReg_222, VirtualReg_221, 1
	addi	VirtualReg_223, VirtualReg_222, 1
	addi	VirtualReg_224, VirtualReg_223, 1
	addi	VirtualReg_225, VirtualReg_224, 1
	addi	VirtualReg_226, VirtualReg_225, 1
	addi	VirtualReg_227, VirtualReg_226, 1
	addi	VirtualReg_228, VirtualReg_227, 1
	addi	VirtualReg_229, VirtualReg_228, 1
	addi	VirtualReg_230, VirtualReg_229, 1
	addi	VirtualReg_231, VirtualReg_230, 1
	addi	VirtualReg_232, VirtualReg_231, 1
	addi	VirtualReg_233, VirtualReg_232, 1
	addi	VirtualReg_234, VirtualReg_233, 1
	addi	VirtualReg_235, VirtualReg_234, 1
	addi	VirtualReg_236, VirtualReg_235, 1
	addi	VirtualReg_237, VirtualReg_236, 1
	addi	VirtualReg_238, VirtualReg_237, 1
	addi	VirtualReg_239, VirtualReg_238, 1
	addi	VirtualReg_240, VirtualReg_239, 1
	addi	VirtualReg_241, VirtualReg_240, 1
	addi	VirtualReg_242, VirtualReg_241, 1
	addi	VirtualReg_243, VirtualReg_242, 1
	addi	VirtualReg_244, VirtualReg_243, 1
	addi	VirtualReg_245, VirtualReg_244, 1
	addi	VirtualReg_246, VirtualReg_245, 1
	addi	VirtualReg_247, VirtualReg_246, 1
	addi	VirtualReg_248, VirtualReg_247, 1
	addi	VirtualReg_249, VirtualReg_248, 1
	addi	VirtualReg_250, VirtualReg_249, 1
	addi	VirtualReg_251, VirtualReg_250, 1
	addi	VirtualReg_252, VirtualReg_251, 1
	addi	VirtualReg_253, VirtualReg_252, 1
	addi	VirtualReg_254, VirtualReg_253, 1
	addi	VirtualReg_255, VirtualReg_254, 1
	addi	VirtualReg_256, VirtualReg_255, 1
	addi	VirtualReg_257, VirtualReg_256, 1
	addi	VirtualReg_258, VirtualReg_257, 1
	addi	VirtualReg_259, VirtualReg_258, 1
	addi	VirtualReg_260, VirtualReg_259, 1
	addi	VirtualReg_261, VirtualReg_260, 1
	addi	VirtualReg_262, VirtualReg_261, 1
	addi	VirtualReg_263, VirtualReg_262, 1
	addi	VirtualReg_264, VirtualReg_263, 1
	addi	VirtualReg_265, VirtualReg_264, 1
	addi	VirtualReg_266, VirtualReg_265, 1
	addi	VirtualReg_267, VirtualReg_266, 1
	addi	VirtualReg_268, VirtualReg_267, 1
	j	.add256_return
.add256_return:
	mv	a0, VirtualReg_268
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

	.globl	add512
	.p2align	2
	.type	add512,@function
add512:
.add512_assemblyInit:
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
	j	.add512_entry
.add512_entry:
	j	.add512_call_add256_33
.add512_call_add256_33:
	addi	VirtualReg_13, VirtualReg_0, 1
	addi	VirtualReg_14, VirtualReg_13, 1
	addi	VirtualReg_15, VirtualReg_14, 1
	addi	VirtualReg_16, VirtualReg_15, 1
	addi	VirtualReg_17, VirtualReg_16, 1
	addi	VirtualReg_18, VirtualReg_17, 1
	addi	VirtualReg_19, VirtualReg_18, 1
	addi	VirtualReg_20, VirtualReg_19, 1
	addi	VirtualReg_21, VirtualReg_20, 1
	addi	VirtualReg_22, VirtualReg_21, 1
	addi	VirtualReg_23, VirtualReg_22, 1
	addi	VirtualReg_24, VirtualReg_23, 1
	addi	VirtualReg_25, VirtualReg_24, 1
	addi	VirtualReg_26, VirtualReg_25, 1
	addi	VirtualReg_27, VirtualReg_26, 1
	addi	VirtualReg_28, VirtualReg_27, 1
	addi	VirtualReg_29, VirtualReg_28, 1
	addi	VirtualReg_30, VirtualReg_29, 1
	addi	VirtualReg_31, VirtualReg_30, 1
	addi	VirtualReg_32, VirtualReg_31, 1
	addi	VirtualReg_33, VirtualReg_32, 1
	addi	VirtualReg_34, VirtualReg_33, 1
	addi	VirtualReg_35, VirtualReg_34, 1
	addi	VirtualReg_36, VirtualReg_35, 1
	addi	VirtualReg_37, VirtualReg_36, 1
	addi	VirtualReg_38, VirtualReg_37, 1
	addi	VirtualReg_39, VirtualReg_38, 1
	addi	VirtualReg_40, VirtualReg_39, 1
	addi	VirtualReg_41, VirtualReg_40, 1
	addi	VirtualReg_42, VirtualReg_41, 1
	addi	VirtualReg_43, VirtualReg_42, 1
	addi	VirtualReg_44, VirtualReg_43, 1
	addi	VirtualReg_45, VirtualReg_44, 1
	addi	VirtualReg_46, VirtualReg_45, 1
	addi	VirtualReg_47, VirtualReg_46, 1
	addi	VirtualReg_48, VirtualReg_47, 1
	addi	VirtualReg_49, VirtualReg_48, 1
	addi	VirtualReg_50, VirtualReg_49, 1
	addi	VirtualReg_51, VirtualReg_50, 1
	addi	VirtualReg_52, VirtualReg_51, 1
	addi	VirtualReg_53, VirtualReg_52, 1
	addi	VirtualReg_54, VirtualReg_53, 1
	addi	VirtualReg_55, VirtualReg_54, 1
	addi	VirtualReg_56, VirtualReg_55, 1
	addi	VirtualReg_57, VirtualReg_56, 1
	addi	VirtualReg_58, VirtualReg_57, 1
	addi	VirtualReg_59, VirtualReg_58, 1
	addi	VirtualReg_60, VirtualReg_59, 1
	addi	VirtualReg_61, VirtualReg_60, 1
	addi	VirtualReg_62, VirtualReg_61, 1
	addi	VirtualReg_63, VirtualReg_62, 1
	addi	VirtualReg_64, VirtualReg_63, 1
	addi	VirtualReg_65, VirtualReg_64, 1
	addi	VirtualReg_66, VirtualReg_65, 1
	addi	VirtualReg_67, VirtualReg_66, 1
	addi	VirtualReg_68, VirtualReg_67, 1
	addi	VirtualReg_69, VirtualReg_68, 1
	addi	VirtualReg_70, VirtualReg_69, 1
	addi	VirtualReg_71, VirtualReg_70, 1
	addi	VirtualReg_72, VirtualReg_71, 1
	addi	VirtualReg_73, VirtualReg_72, 1
	addi	VirtualReg_74, VirtualReg_73, 1
	addi	VirtualReg_75, VirtualReg_74, 1
	addi	VirtualReg_76, VirtualReg_75, 1
	addi	VirtualReg_77, VirtualReg_76, 1
	addi	VirtualReg_78, VirtualReg_77, 1
	addi	VirtualReg_79, VirtualReg_78, 1
	addi	VirtualReg_80, VirtualReg_79, 1
	addi	VirtualReg_81, VirtualReg_80, 1
	addi	VirtualReg_82, VirtualReg_81, 1
	addi	VirtualReg_83, VirtualReg_82, 1
	addi	VirtualReg_84, VirtualReg_83, 1
	addi	VirtualReg_85, VirtualReg_84, 1
	addi	VirtualReg_86, VirtualReg_85, 1
	addi	VirtualReg_87, VirtualReg_86, 1
	addi	VirtualReg_88, VirtualReg_87, 1
	addi	VirtualReg_89, VirtualReg_88, 1
	addi	VirtualReg_90, VirtualReg_89, 1
	addi	VirtualReg_91, VirtualReg_90, 1
	addi	VirtualReg_92, VirtualReg_91, 1
	addi	VirtualReg_93, VirtualReg_92, 1
	addi	VirtualReg_94, VirtualReg_93, 1
	addi	VirtualReg_95, VirtualReg_94, 1
	addi	VirtualReg_96, VirtualReg_95, 1
	addi	VirtualReg_97, VirtualReg_96, 1
	addi	VirtualReg_98, VirtualReg_97, 1
	addi	VirtualReg_99, VirtualReg_98, 1
	addi	VirtualReg_100, VirtualReg_99, 1
	addi	VirtualReg_101, VirtualReg_100, 1
	addi	VirtualReg_102, VirtualReg_101, 1
	addi	VirtualReg_103, VirtualReg_102, 1
	addi	VirtualReg_104, VirtualReg_103, 1
	addi	VirtualReg_105, VirtualReg_104, 1
	addi	VirtualReg_106, VirtualReg_105, 1
	addi	VirtualReg_107, VirtualReg_106, 1
	addi	VirtualReg_108, VirtualReg_107, 1
	addi	VirtualReg_109, VirtualReg_108, 1
	addi	VirtualReg_110, VirtualReg_109, 1
	addi	VirtualReg_111, VirtualReg_110, 1
	addi	VirtualReg_112, VirtualReg_111, 1
	addi	VirtualReg_113, VirtualReg_112, 1
	addi	VirtualReg_114, VirtualReg_113, 1
	addi	VirtualReg_115, VirtualReg_114, 1
	addi	VirtualReg_116, VirtualReg_115, 1
	addi	VirtualReg_117, VirtualReg_116, 1
	addi	VirtualReg_118, VirtualReg_117, 1
	addi	VirtualReg_119, VirtualReg_118, 1
	addi	VirtualReg_120, VirtualReg_119, 1
	addi	VirtualReg_121, VirtualReg_120, 1
	addi	VirtualReg_122, VirtualReg_121, 1
	addi	VirtualReg_123, VirtualReg_122, 1
	addi	VirtualReg_124, VirtualReg_123, 1
	addi	VirtualReg_125, VirtualReg_124, 1
	addi	VirtualReg_126, VirtualReg_125, 1
	addi	VirtualReg_127, VirtualReg_126, 1
	addi	VirtualReg_128, VirtualReg_127, 1
	addi	VirtualReg_129, VirtualReg_128, 1
	addi	VirtualReg_130, VirtualReg_129, 1
	addi	VirtualReg_131, VirtualReg_130, 1
	addi	VirtualReg_132, VirtualReg_131, 1
	addi	VirtualReg_133, VirtualReg_132, 1
	addi	VirtualReg_134, VirtualReg_133, 1
	addi	VirtualReg_135, VirtualReg_134, 1
	addi	VirtualReg_136, VirtualReg_135, 1
	addi	VirtualReg_137, VirtualReg_136, 1
	addi	VirtualReg_138, VirtualReg_137, 1
	addi	VirtualReg_139, VirtualReg_138, 1
	addi	VirtualReg_140, VirtualReg_139, 1
	addi	VirtualReg_141, VirtualReg_140, 1
	addi	VirtualReg_142, VirtualReg_141, 1
	addi	VirtualReg_143, VirtualReg_142, 1
	addi	VirtualReg_144, VirtualReg_143, 1
	addi	VirtualReg_145, VirtualReg_144, 1
	addi	VirtualReg_146, VirtualReg_145, 1
	addi	VirtualReg_147, VirtualReg_146, 1
	addi	VirtualReg_148, VirtualReg_147, 1
	addi	VirtualReg_149, VirtualReg_148, 1
	addi	VirtualReg_150, VirtualReg_149, 1
	addi	VirtualReg_151, VirtualReg_150, 1
	addi	VirtualReg_152, VirtualReg_151, 1
	addi	VirtualReg_153, VirtualReg_152, 1
	addi	VirtualReg_154, VirtualReg_153, 1
	addi	VirtualReg_155, VirtualReg_154, 1
	addi	VirtualReg_156, VirtualReg_155, 1
	addi	VirtualReg_157, VirtualReg_156, 1
	addi	VirtualReg_158, VirtualReg_157, 1
	addi	VirtualReg_159, VirtualReg_158, 1
	addi	VirtualReg_160, VirtualReg_159, 1
	addi	VirtualReg_161, VirtualReg_160, 1
	addi	VirtualReg_162, VirtualReg_161, 1
	addi	VirtualReg_163, VirtualReg_162, 1
	addi	VirtualReg_164, VirtualReg_163, 1
	addi	VirtualReg_165, VirtualReg_164, 1
	addi	VirtualReg_166, VirtualReg_165, 1
	addi	VirtualReg_167, VirtualReg_166, 1
	addi	VirtualReg_168, VirtualReg_167, 1
	addi	VirtualReg_169, VirtualReg_168, 1
	addi	VirtualReg_170, VirtualReg_169, 1
	addi	VirtualReg_171, VirtualReg_170, 1
	addi	VirtualReg_172, VirtualReg_171, 1
	addi	VirtualReg_173, VirtualReg_172, 1
	addi	VirtualReg_174, VirtualReg_173, 1
	addi	VirtualReg_175, VirtualReg_174, 1
	addi	VirtualReg_176, VirtualReg_175, 1
	addi	VirtualReg_177, VirtualReg_176, 1
	addi	VirtualReg_178, VirtualReg_177, 1
	addi	VirtualReg_179, VirtualReg_178, 1
	addi	VirtualReg_180, VirtualReg_179, 1
	addi	VirtualReg_181, VirtualReg_180, 1
	addi	VirtualReg_182, VirtualReg_181, 1
	addi	VirtualReg_183, VirtualReg_182, 1
	addi	VirtualReg_184, VirtualReg_183, 1
	addi	VirtualReg_185, VirtualReg_184, 1
	addi	VirtualReg_186, VirtualReg_185, 1
	addi	VirtualReg_187, VirtualReg_186, 1
	addi	VirtualReg_188, VirtualReg_187, 1
	addi	VirtualReg_189, VirtualReg_188, 1
	addi	VirtualReg_190, VirtualReg_189, 1
	addi	VirtualReg_191, VirtualReg_190, 1
	addi	VirtualReg_192, VirtualReg_191, 1
	addi	VirtualReg_193, VirtualReg_192, 1
	addi	VirtualReg_194, VirtualReg_193, 1
	addi	VirtualReg_195, VirtualReg_194, 1
	addi	VirtualReg_196, VirtualReg_195, 1
	addi	VirtualReg_197, VirtualReg_196, 1
	addi	VirtualReg_198, VirtualReg_197, 1
	addi	VirtualReg_199, VirtualReg_198, 1
	addi	VirtualReg_200, VirtualReg_199, 1
	addi	VirtualReg_201, VirtualReg_200, 1
	addi	VirtualReg_202, VirtualReg_201, 1
	addi	VirtualReg_203, VirtualReg_202, 1
	addi	VirtualReg_204, VirtualReg_203, 1
	addi	VirtualReg_205, VirtualReg_204, 1
	addi	VirtualReg_206, VirtualReg_205, 1
	addi	VirtualReg_207, VirtualReg_206, 1
	addi	VirtualReg_208, VirtualReg_207, 1
	addi	VirtualReg_209, VirtualReg_208, 1
	addi	VirtualReg_210, VirtualReg_209, 1
	addi	VirtualReg_211, VirtualReg_210, 1
	addi	VirtualReg_212, VirtualReg_211, 1
	addi	VirtualReg_213, VirtualReg_212, 1
	addi	VirtualReg_214, VirtualReg_213, 1
	addi	VirtualReg_215, VirtualReg_214, 1
	addi	VirtualReg_216, VirtualReg_215, 1
	addi	VirtualReg_217, VirtualReg_216, 1
	addi	VirtualReg_218, VirtualReg_217, 1
	addi	VirtualReg_219, VirtualReg_218, 1
	addi	VirtualReg_220, VirtualReg_219, 1
	addi	VirtualReg_221, VirtualReg_220, 1
	addi	VirtualReg_222, VirtualReg_221, 1
	addi	VirtualReg_223, VirtualReg_222, 1
	addi	VirtualReg_224, VirtualReg_223, 1
	addi	VirtualReg_225, VirtualReg_224, 1
	addi	VirtualReg_226, VirtualReg_225, 1
	addi	VirtualReg_227, VirtualReg_226, 1
	addi	VirtualReg_228, VirtualReg_227, 1
	addi	VirtualReg_229, VirtualReg_228, 1
	addi	VirtualReg_230, VirtualReg_229, 1
	addi	VirtualReg_231, VirtualReg_230, 1
	addi	VirtualReg_232, VirtualReg_231, 1
	addi	VirtualReg_233, VirtualReg_232, 1
	addi	VirtualReg_234, VirtualReg_233, 1
	addi	VirtualReg_235, VirtualReg_234, 1
	addi	VirtualReg_236, VirtualReg_235, 1
	addi	VirtualReg_237, VirtualReg_236, 1
	addi	VirtualReg_238, VirtualReg_237, 1
	addi	VirtualReg_239, VirtualReg_238, 1
	addi	VirtualReg_240, VirtualReg_239, 1
	addi	VirtualReg_241, VirtualReg_240, 1
	addi	VirtualReg_242, VirtualReg_241, 1
	addi	VirtualReg_243, VirtualReg_242, 1
	addi	VirtualReg_244, VirtualReg_243, 1
	addi	VirtualReg_245, VirtualReg_244, 1
	addi	VirtualReg_246, VirtualReg_245, 1
	addi	VirtualReg_247, VirtualReg_246, 1
	addi	VirtualReg_248, VirtualReg_247, 1
	addi	VirtualReg_249, VirtualReg_248, 1
	addi	VirtualReg_250, VirtualReg_249, 1
	addi	VirtualReg_251, VirtualReg_250, 1
	addi	VirtualReg_252, VirtualReg_251, 1
	addi	VirtualReg_253, VirtualReg_252, 1
	addi	VirtualReg_254, VirtualReg_253, 1
	addi	VirtualReg_255, VirtualReg_254, 1
	addi	VirtualReg_256, VirtualReg_255, 1
	addi	VirtualReg_257, VirtualReg_256, 1
	addi	VirtualReg_258, VirtualReg_257, 1
	addi	VirtualReg_259, VirtualReg_258, 1
	addi	VirtualReg_260, VirtualReg_259, 1
	addi	VirtualReg_261, VirtualReg_260, 1
	addi	VirtualReg_262, VirtualReg_261, 1
	addi	VirtualReg_263, VirtualReg_262, 1
	addi	VirtualReg_264, VirtualReg_263, 1
	addi	VirtualReg_265, VirtualReg_264, 1
	addi	VirtualReg_266, VirtualReg_265, 1
	addi	VirtualReg_267, VirtualReg_266, 1
	addi	VirtualReg_268, VirtualReg_267, 1
	addi	VirtualReg_269, VirtualReg_268, 1
	addi	VirtualReg_270, VirtualReg_269, 1
	addi	VirtualReg_271, VirtualReg_270, 1
	addi	VirtualReg_272, VirtualReg_271, 1
	addi	VirtualReg_273, VirtualReg_272, 1
	addi	VirtualReg_274, VirtualReg_273, 1
	addi	VirtualReg_275, VirtualReg_274, 1
	addi	VirtualReg_276, VirtualReg_275, 1
	addi	VirtualReg_277, VirtualReg_276, 1
	addi	VirtualReg_278, VirtualReg_277, 1
	addi	VirtualReg_279, VirtualReg_278, 1
	addi	VirtualReg_280, VirtualReg_279, 1
	addi	VirtualReg_281, VirtualReg_280, 1
	addi	VirtualReg_282, VirtualReg_281, 1
	addi	VirtualReg_283, VirtualReg_282, 1
	addi	VirtualReg_284, VirtualReg_283, 1
	addi	VirtualReg_285, VirtualReg_284, 1
	addi	VirtualReg_286, VirtualReg_285, 1
	addi	VirtualReg_287, VirtualReg_286, 1
	addi	VirtualReg_288, VirtualReg_287, 1
	addi	VirtualReg_289, VirtualReg_288, 1
	addi	VirtualReg_290, VirtualReg_289, 1
	addi	VirtualReg_291, VirtualReg_290, 1
	addi	VirtualReg_292, VirtualReg_291, 1
	addi	VirtualReg_293, VirtualReg_292, 1
	addi	VirtualReg_294, VirtualReg_293, 1
	addi	VirtualReg_295, VirtualReg_294, 1
	addi	VirtualReg_296, VirtualReg_295, 1
	addi	VirtualReg_297, VirtualReg_296, 1
	addi	VirtualReg_298, VirtualReg_297, 1
	addi	VirtualReg_299, VirtualReg_298, 1
	addi	VirtualReg_300, VirtualReg_299, 1
	addi	VirtualReg_301, VirtualReg_300, 1
	addi	VirtualReg_302, VirtualReg_301, 1
	addi	VirtualReg_303, VirtualReg_302, 1
	addi	VirtualReg_304, VirtualReg_303, 1
	addi	VirtualReg_305, VirtualReg_304, 1
	addi	VirtualReg_306, VirtualReg_305, 1
	addi	VirtualReg_307, VirtualReg_306, 1
	addi	VirtualReg_308, VirtualReg_307, 1
	addi	VirtualReg_309, VirtualReg_308, 1
	addi	VirtualReg_310, VirtualReg_309, 1
	addi	VirtualReg_311, VirtualReg_310, 1
	addi	VirtualReg_312, VirtualReg_311, 1
	addi	VirtualReg_313, VirtualReg_312, 1
	addi	VirtualReg_314, VirtualReg_313, 1
	addi	VirtualReg_315, VirtualReg_314, 1
	addi	VirtualReg_316, VirtualReg_315, 1
	addi	VirtualReg_317, VirtualReg_316, 1
	addi	VirtualReg_318, VirtualReg_317, 1
	addi	VirtualReg_319, VirtualReg_318, 1
	addi	VirtualReg_320, VirtualReg_319, 1
	addi	VirtualReg_321, VirtualReg_320, 1
	addi	VirtualReg_322, VirtualReg_321, 1
	addi	VirtualReg_323, VirtualReg_322, 1
	addi	VirtualReg_324, VirtualReg_323, 1
	addi	VirtualReg_325, VirtualReg_324, 1
	addi	VirtualReg_326, VirtualReg_325, 1
	addi	VirtualReg_327, VirtualReg_326, 1
	addi	VirtualReg_328, VirtualReg_327, 1
	addi	VirtualReg_329, VirtualReg_328, 1
	addi	VirtualReg_330, VirtualReg_329, 1
	addi	VirtualReg_331, VirtualReg_330, 1
	addi	VirtualReg_332, VirtualReg_331, 1
	addi	VirtualReg_333, VirtualReg_332, 1
	addi	VirtualReg_334, VirtualReg_333, 1
	addi	VirtualReg_335, VirtualReg_334, 1
	addi	VirtualReg_336, VirtualReg_335, 1
	addi	VirtualReg_337, VirtualReg_336, 1
	addi	VirtualReg_338, VirtualReg_337, 1
	addi	VirtualReg_339, VirtualReg_338, 1
	addi	VirtualReg_340, VirtualReg_339, 1
	addi	VirtualReg_341, VirtualReg_340, 1
	addi	VirtualReg_342, VirtualReg_341, 1
	addi	VirtualReg_343, VirtualReg_342, 1
	addi	VirtualReg_344, VirtualReg_343, 1
	addi	VirtualReg_345, VirtualReg_344, 1
	addi	VirtualReg_346, VirtualReg_345, 1
	addi	VirtualReg_347, VirtualReg_346, 1
	addi	VirtualReg_348, VirtualReg_347, 1
	addi	VirtualReg_349, VirtualReg_348, 1
	addi	VirtualReg_350, VirtualReg_349, 1
	addi	VirtualReg_351, VirtualReg_350, 1
	addi	VirtualReg_352, VirtualReg_351, 1
	addi	VirtualReg_353, VirtualReg_352, 1
	addi	VirtualReg_354, VirtualReg_353, 1
	addi	VirtualReg_355, VirtualReg_354, 1
	addi	VirtualReg_356, VirtualReg_355, 1
	addi	VirtualReg_357, VirtualReg_356, 1
	addi	VirtualReg_358, VirtualReg_357, 1
	addi	VirtualReg_359, VirtualReg_358, 1
	addi	VirtualReg_360, VirtualReg_359, 1
	addi	VirtualReg_361, VirtualReg_360, 1
	addi	VirtualReg_362, VirtualReg_361, 1
	addi	VirtualReg_363, VirtualReg_362, 1
	addi	VirtualReg_364, VirtualReg_363, 1
	addi	VirtualReg_365, VirtualReg_364, 1
	addi	VirtualReg_366, VirtualReg_365, 1
	addi	VirtualReg_367, VirtualReg_366, 1
	addi	VirtualReg_368, VirtualReg_367, 1
	addi	VirtualReg_369, VirtualReg_368, 1
	addi	VirtualReg_370, VirtualReg_369, 1
	addi	VirtualReg_371, VirtualReg_370, 1
	addi	VirtualReg_372, VirtualReg_371, 1
	addi	VirtualReg_373, VirtualReg_372, 1
	addi	VirtualReg_374, VirtualReg_373, 1
	addi	VirtualReg_375, VirtualReg_374, 1
	addi	VirtualReg_376, VirtualReg_375, 1
	addi	VirtualReg_377, VirtualReg_376, 1
	addi	VirtualReg_378, VirtualReg_377, 1
	addi	VirtualReg_379, VirtualReg_378, 1
	addi	VirtualReg_380, VirtualReg_379, 1
	addi	VirtualReg_381, VirtualReg_380, 1
	addi	VirtualReg_382, VirtualReg_381, 1
	addi	VirtualReg_383, VirtualReg_382, 1
	addi	VirtualReg_384, VirtualReg_383, 1
	addi	VirtualReg_385, VirtualReg_384, 1
	addi	VirtualReg_386, VirtualReg_385, 1
	addi	VirtualReg_387, VirtualReg_386, 1
	addi	VirtualReg_388, VirtualReg_387, 1
	addi	VirtualReg_389, VirtualReg_388, 1
	addi	VirtualReg_390, VirtualReg_389, 1
	addi	VirtualReg_391, VirtualReg_390, 1
	addi	VirtualReg_392, VirtualReg_391, 1
	addi	VirtualReg_393, VirtualReg_392, 1
	addi	VirtualReg_394, VirtualReg_393, 1
	addi	VirtualReg_395, VirtualReg_394, 1
	addi	VirtualReg_396, VirtualReg_395, 1
	addi	VirtualReg_397, VirtualReg_396, 1
	addi	VirtualReg_398, VirtualReg_397, 1
	addi	VirtualReg_399, VirtualReg_398, 1
	addi	VirtualReg_400, VirtualReg_399, 1
	addi	VirtualReg_401, VirtualReg_400, 1
	addi	VirtualReg_402, VirtualReg_401, 1
	addi	VirtualReg_403, VirtualReg_402, 1
	addi	VirtualReg_404, VirtualReg_403, 1
	addi	VirtualReg_405, VirtualReg_404, 1
	addi	VirtualReg_406, VirtualReg_405, 1
	addi	VirtualReg_407, VirtualReg_406, 1
	addi	VirtualReg_408, VirtualReg_407, 1
	addi	VirtualReg_409, VirtualReg_408, 1
	addi	VirtualReg_410, VirtualReg_409, 1
	addi	VirtualReg_411, VirtualReg_410, 1
	addi	VirtualReg_412, VirtualReg_411, 1
	addi	VirtualReg_413, VirtualReg_412, 1
	addi	VirtualReg_414, VirtualReg_413, 1
	addi	VirtualReg_415, VirtualReg_414, 1
	addi	VirtualReg_416, VirtualReg_415, 1
	addi	VirtualReg_417, VirtualReg_416, 1
	addi	VirtualReg_418, VirtualReg_417, 1
	addi	VirtualReg_419, VirtualReg_418, 1
	addi	VirtualReg_420, VirtualReg_419, 1
	addi	VirtualReg_421, VirtualReg_420, 1
	addi	VirtualReg_422, VirtualReg_421, 1
	addi	VirtualReg_423, VirtualReg_422, 1
	addi	VirtualReg_424, VirtualReg_423, 1
	addi	VirtualReg_425, VirtualReg_424, 1
	addi	VirtualReg_426, VirtualReg_425, 1
	addi	VirtualReg_427, VirtualReg_426, 1
	addi	VirtualReg_428, VirtualReg_427, 1
	addi	VirtualReg_429, VirtualReg_428, 1
	addi	VirtualReg_430, VirtualReg_429, 1
	addi	VirtualReg_431, VirtualReg_430, 1
	addi	VirtualReg_432, VirtualReg_431, 1
	addi	VirtualReg_433, VirtualReg_432, 1
	addi	VirtualReg_434, VirtualReg_433, 1
	addi	VirtualReg_435, VirtualReg_434, 1
	addi	VirtualReg_436, VirtualReg_435, 1
	addi	VirtualReg_437, VirtualReg_436, 1
	addi	VirtualReg_438, VirtualReg_437, 1
	addi	VirtualReg_439, VirtualReg_438, 1
	addi	VirtualReg_440, VirtualReg_439, 1
	addi	VirtualReg_441, VirtualReg_440, 1
	addi	VirtualReg_442, VirtualReg_441, 1
	addi	VirtualReg_443, VirtualReg_442, 1
	addi	VirtualReg_444, VirtualReg_443, 1
	addi	VirtualReg_445, VirtualReg_444, 1
	addi	VirtualReg_446, VirtualReg_445, 1
	addi	VirtualReg_447, VirtualReg_446, 1
	addi	VirtualReg_448, VirtualReg_447, 1
	addi	VirtualReg_449, VirtualReg_448, 1
	addi	VirtualReg_450, VirtualReg_449, 1
	addi	VirtualReg_451, VirtualReg_450, 1
	addi	VirtualReg_452, VirtualReg_451, 1
	addi	VirtualReg_453, VirtualReg_452, 1
	addi	VirtualReg_454, VirtualReg_453, 1
	addi	VirtualReg_455, VirtualReg_454, 1
	addi	VirtualReg_456, VirtualReg_455, 1
	addi	VirtualReg_457, VirtualReg_456, 1
	addi	VirtualReg_458, VirtualReg_457, 1
	addi	VirtualReg_459, VirtualReg_458, 1
	addi	VirtualReg_460, VirtualReg_459, 1
	addi	VirtualReg_461, VirtualReg_460, 1
	addi	VirtualReg_462, VirtualReg_461, 1
	addi	VirtualReg_463, VirtualReg_462, 1
	addi	VirtualReg_464, VirtualReg_463, 1
	addi	VirtualReg_465, VirtualReg_464, 1
	addi	VirtualReg_466, VirtualReg_465, 1
	addi	VirtualReg_467, VirtualReg_466, 1
	addi	VirtualReg_468, VirtualReg_467, 1
	addi	VirtualReg_469, VirtualReg_468, 1
	addi	VirtualReg_470, VirtualReg_469, 1
	addi	VirtualReg_471, VirtualReg_470, 1
	addi	VirtualReg_472, VirtualReg_471, 1
	addi	VirtualReg_473, VirtualReg_472, 1
	addi	VirtualReg_474, VirtualReg_473, 1
	addi	VirtualReg_475, VirtualReg_474, 1
	addi	VirtualReg_476, VirtualReg_475, 1
	addi	VirtualReg_477, VirtualReg_476, 1
	addi	VirtualReg_478, VirtualReg_477, 1
	addi	VirtualReg_479, VirtualReg_478, 1
	addi	VirtualReg_480, VirtualReg_479, 1
	addi	VirtualReg_481, VirtualReg_480, 1
	addi	VirtualReg_482, VirtualReg_481, 1
	addi	VirtualReg_483, VirtualReg_482, 1
	addi	VirtualReg_484, VirtualReg_483, 1
	addi	VirtualReg_485, VirtualReg_484, 1
	addi	VirtualReg_486, VirtualReg_485, 1
	addi	VirtualReg_487, VirtualReg_486, 1
	addi	VirtualReg_488, VirtualReg_487, 1
	addi	VirtualReg_489, VirtualReg_488, 1
	addi	VirtualReg_490, VirtualReg_489, 1
	addi	VirtualReg_491, VirtualReg_490, 1
	addi	VirtualReg_492, VirtualReg_491, 1
	addi	VirtualReg_493, VirtualReg_492, 1
	addi	VirtualReg_494, VirtualReg_493, 1
	addi	VirtualReg_495, VirtualReg_494, 1
	addi	VirtualReg_496, VirtualReg_495, 1
	addi	VirtualReg_497, VirtualReg_496, 1
	addi	VirtualReg_498, VirtualReg_497, 1
	addi	VirtualReg_499, VirtualReg_498, 1
	addi	VirtualReg_500, VirtualReg_499, 1
	addi	VirtualReg_501, VirtualReg_500, 1
	addi	VirtualReg_502, VirtualReg_501, 1
	addi	VirtualReg_503, VirtualReg_502, 1
	addi	VirtualReg_504, VirtualReg_503, 1
	addi	VirtualReg_505, VirtualReg_504, 1
	addi	VirtualReg_506, VirtualReg_505, 1
	addi	VirtualReg_507, VirtualReg_506, 1
	addi	VirtualReg_508, VirtualReg_507, 1
	addi	VirtualReg_509, VirtualReg_508, 1
	addi	VirtualReg_510, VirtualReg_509, 1
	addi	VirtualReg_511, VirtualReg_510, 1
	addi	VirtualReg_512, VirtualReg_511, 1
	addi	VirtualReg_513, VirtualReg_512, 1
	addi	VirtualReg_514, VirtualReg_513, 1
	addi	VirtualReg_515, VirtualReg_514, 1
	addi	VirtualReg_516, VirtualReg_515, 1
	addi	VirtualReg_517, VirtualReg_516, 1
	addi	VirtualReg_518, VirtualReg_517, 1
	addi	VirtualReg_519, VirtualReg_518, 1
	addi	VirtualReg_520, VirtualReg_519, 1
	addi	VirtualReg_521, VirtualReg_520, 1
	addi	VirtualReg_522, VirtualReg_521, 1
	addi	VirtualReg_523, VirtualReg_522, 1
	addi	VirtualReg_524, VirtualReg_523, 1
	j	.add512_return
.add512_return:
	mv	a0, VirtualReg_524
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

	.globl	add1024
	.p2align	2
	.type	add1024,@function
add1024:
.add1024_assemblyInit:
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
	j	.add1024_entry
.add1024_entry:
	j	.add1024_call_add512_35
.add1024_call_add512_35:
	addi	VirtualReg_13, VirtualReg_0, 1
	addi	VirtualReg_14, VirtualReg_13, 1
	addi	VirtualReg_15, VirtualReg_14, 1
	addi	VirtualReg_16, VirtualReg_15, 1
	addi	VirtualReg_17, VirtualReg_16, 1
	addi	VirtualReg_18, VirtualReg_17, 1
	addi	VirtualReg_19, VirtualReg_18, 1
	addi	VirtualReg_20, VirtualReg_19, 1
	addi	VirtualReg_21, VirtualReg_20, 1
	addi	VirtualReg_22, VirtualReg_21, 1
	addi	VirtualReg_23, VirtualReg_22, 1
	addi	VirtualReg_24, VirtualReg_23, 1
	addi	VirtualReg_25, VirtualReg_24, 1
	addi	VirtualReg_26, VirtualReg_25, 1
	addi	VirtualReg_27, VirtualReg_26, 1
	addi	VirtualReg_28, VirtualReg_27, 1
	addi	VirtualReg_29, VirtualReg_28, 1
	addi	VirtualReg_30, VirtualReg_29, 1
	addi	VirtualReg_31, VirtualReg_30, 1
	addi	VirtualReg_32, VirtualReg_31, 1
	addi	VirtualReg_33, VirtualReg_32, 1
	addi	VirtualReg_34, VirtualReg_33, 1
	addi	VirtualReg_35, VirtualReg_34, 1
	addi	VirtualReg_36, VirtualReg_35, 1
	addi	VirtualReg_37, VirtualReg_36, 1
	addi	VirtualReg_38, VirtualReg_37, 1
	addi	VirtualReg_39, VirtualReg_38, 1
	addi	VirtualReg_40, VirtualReg_39, 1
	addi	VirtualReg_41, VirtualReg_40, 1
	addi	VirtualReg_42, VirtualReg_41, 1
	addi	VirtualReg_43, VirtualReg_42, 1
	addi	VirtualReg_44, VirtualReg_43, 1
	addi	VirtualReg_45, VirtualReg_44, 1
	addi	VirtualReg_46, VirtualReg_45, 1
	addi	VirtualReg_47, VirtualReg_46, 1
	addi	VirtualReg_48, VirtualReg_47, 1
	addi	VirtualReg_49, VirtualReg_48, 1
	addi	VirtualReg_50, VirtualReg_49, 1
	addi	VirtualReg_51, VirtualReg_50, 1
	addi	VirtualReg_52, VirtualReg_51, 1
	addi	VirtualReg_53, VirtualReg_52, 1
	addi	VirtualReg_54, VirtualReg_53, 1
	addi	VirtualReg_55, VirtualReg_54, 1
	addi	VirtualReg_56, VirtualReg_55, 1
	addi	VirtualReg_57, VirtualReg_56, 1
	addi	VirtualReg_58, VirtualReg_57, 1
	addi	VirtualReg_59, VirtualReg_58, 1
	addi	VirtualReg_60, VirtualReg_59, 1
	addi	VirtualReg_61, VirtualReg_60, 1
	addi	VirtualReg_62, VirtualReg_61, 1
	addi	VirtualReg_63, VirtualReg_62, 1
	addi	VirtualReg_64, VirtualReg_63, 1
	addi	VirtualReg_65, VirtualReg_64, 1
	addi	VirtualReg_66, VirtualReg_65, 1
	addi	VirtualReg_67, VirtualReg_66, 1
	addi	VirtualReg_68, VirtualReg_67, 1
	addi	VirtualReg_69, VirtualReg_68, 1
	addi	VirtualReg_70, VirtualReg_69, 1
	addi	VirtualReg_71, VirtualReg_70, 1
	addi	VirtualReg_72, VirtualReg_71, 1
	addi	VirtualReg_73, VirtualReg_72, 1
	addi	VirtualReg_74, VirtualReg_73, 1
	addi	VirtualReg_75, VirtualReg_74, 1
	addi	VirtualReg_76, VirtualReg_75, 1
	addi	VirtualReg_77, VirtualReg_76, 1
	addi	VirtualReg_78, VirtualReg_77, 1
	addi	VirtualReg_79, VirtualReg_78, 1
	addi	VirtualReg_80, VirtualReg_79, 1
	addi	VirtualReg_81, VirtualReg_80, 1
	addi	VirtualReg_82, VirtualReg_81, 1
	addi	VirtualReg_83, VirtualReg_82, 1
	addi	VirtualReg_84, VirtualReg_83, 1
	addi	VirtualReg_85, VirtualReg_84, 1
	addi	VirtualReg_86, VirtualReg_85, 1
	addi	VirtualReg_87, VirtualReg_86, 1
	addi	VirtualReg_88, VirtualReg_87, 1
	addi	VirtualReg_89, VirtualReg_88, 1
	addi	VirtualReg_90, VirtualReg_89, 1
	addi	VirtualReg_91, VirtualReg_90, 1
	addi	VirtualReg_92, VirtualReg_91, 1
	addi	VirtualReg_93, VirtualReg_92, 1
	addi	VirtualReg_94, VirtualReg_93, 1
	addi	VirtualReg_95, VirtualReg_94, 1
	addi	VirtualReg_96, VirtualReg_95, 1
	addi	VirtualReg_97, VirtualReg_96, 1
	addi	VirtualReg_98, VirtualReg_97, 1
	addi	VirtualReg_99, VirtualReg_98, 1
	addi	VirtualReg_100, VirtualReg_99, 1
	addi	VirtualReg_101, VirtualReg_100, 1
	addi	VirtualReg_102, VirtualReg_101, 1
	addi	VirtualReg_103, VirtualReg_102, 1
	addi	VirtualReg_104, VirtualReg_103, 1
	addi	VirtualReg_105, VirtualReg_104, 1
	addi	VirtualReg_106, VirtualReg_105, 1
	addi	VirtualReg_107, VirtualReg_106, 1
	addi	VirtualReg_108, VirtualReg_107, 1
	addi	VirtualReg_109, VirtualReg_108, 1
	addi	VirtualReg_110, VirtualReg_109, 1
	addi	VirtualReg_111, VirtualReg_110, 1
	addi	VirtualReg_112, VirtualReg_111, 1
	addi	VirtualReg_113, VirtualReg_112, 1
	addi	VirtualReg_114, VirtualReg_113, 1
	addi	VirtualReg_115, VirtualReg_114, 1
	addi	VirtualReg_116, VirtualReg_115, 1
	addi	VirtualReg_117, VirtualReg_116, 1
	addi	VirtualReg_118, VirtualReg_117, 1
	addi	VirtualReg_119, VirtualReg_118, 1
	addi	VirtualReg_120, VirtualReg_119, 1
	addi	VirtualReg_121, VirtualReg_120, 1
	addi	VirtualReg_122, VirtualReg_121, 1
	addi	VirtualReg_123, VirtualReg_122, 1
	addi	VirtualReg_124, VirtualReg_123, 1
	addi	VirtualReg_125, VirtualReg_124, 1
	addi	VirtualReg_126, VirtualReg_125, 1
	addi	VirtualReg_127, VirtualReg_126, 1
	addi	VirtualReg_128, VirtualReg_127, 1
	addi	VirtualReg_129, VirtualReg_128, 1
	addi	VirtualReg_130, VirtualReg_129, 1
	addi	VirtualReg_131, VirtualReg_130, 1
	addi	VirtualReg_132, VirtualReg_131, 1
	addi	VirtualReg_133, VirtualReg_132, 1
	addi	VirtualReg_134, VirtualReg_133, 1
	addi	VirtualReg_135, VirtualReg_134, 1
	addi	VirtualReg_136, VirtualReg_135, 1
	addi	VirtualReg_137, VirtualReg_136, 1
	addi	VirtualReg_138, VirtualReg_137, 1
	addi	VirtualReg_139, VirtualReg_138, 1
	addi	VirtualReg_140, VirtualReg_139, 1
	addi	VirtualReg_141, VirtualReg_140, 1
	addi	VirtualReg_142, VirtualReg_141, 1
	addi	VirtualReg_143, VirtualReg_142, 1
	addi	VirtualReg_144, VirtualReg_143, 1
	addi	VirtualReg_145, VirtualReg_144, 1
	addi	VirtualReg_146, VirtualReg_145, 1
	addi	VirtualReg_147, VirtualReg_146, 1
	addi	VirtualReg_148, VirtualReg_147, 1
	addi	VirtualReg_149, VirtualReg_148, 1
	addi	VirtualReg_150, VirtualReg_149, 1
	addi	VirtualReg_151, VirtualReg_150, 1
	addi	VirtualReg_152, VirtualReg_151, 1
	addi	VirtualReg_153, VirtualReg_152, 1
	addi	VirtualReg_154, VirtualReg_153, 1
	addi	VirtualReg_155, VirtualReg_154, 1
	addi	VirtualReg_156, VirtualReg_155, 1
	addi	VirtualReg_157, VirtualReg_156, 1
	addi	VirtualReg_158, VirtualReg_157, 1
	addi	VirtualReg_159, VirtualReg_158, 1
	addi	VirtualReg_160, VirtualReg_159, 1
	addi	VirtualReg_161, VirtualReg_160, 1
	addi	VirtualReg_162, VirtualReg_161, 1
	addi	VirtualReg_163, VirtualReg_162, 1
	addi	VirtualReg_164, VirtualReg_163, 1
	addi	VirtualReg_165, VirtualReg_164, 1
	addi	VirtualReg_166, VirtualReg_165, 1
	addi	VirtualReg_167, VirtualReg_166, 1
	addi	VirtualReg_168, VirtualReg_167, 1
	addi	VirtualReg_169, VirtualReg_168, 1
	addi	VirtualReg_170, VirtualReg_169, 1
	addi	VirtualReg_171, VirtualReg_170, 1
	addi	VirtualReg_172, VirtualReg_171, 1
	addi	VirtualReg_173, VirtualReg_172, 1
	addi	VirtualReg_174, VirtualReg_173, 1
	addi	VirtualReg_175, VirtualReg_174, 1
	addi	VirtualReg_176, VirtualReg_175, 1
	addi	VirtualReg_177, VirtualReg_176, 1
	addi	VirtualReg_178, VirtualReg_177, 1
	addi	VirtualReg_179, VirtualReg_178, 1
	addi	VirtualReg_180, VirtualReg_179, 1
	addi	VirtualReg_181, VirtualReg_180, 1
	addi	VirtualReg_182, VirtualReg_181, 1
	addi	VirtualReg_183, VirtualReg_182, 1
	addi	VirtualReg_184, VirtualReg_183, 1
	addi	VirtualReg_185, VirtualReg_184, 1
	addi	VirtualReg_186, VirtualReg_185, 1
	addi	VirtualReg_187, VirtualReg_186, 1
	addi	VirtualReg_188, VirtualReg_187, 1
	addi	VirtualReg_189, VirtualReg_188, 1
	addi	VirtualReg_190, VirtualReg_189, 1
	addi	VirtualReg_191, VirtualReg_190, 1
	addi	VirtualReg_192, VirtualReg_191, 1
	addi	VirtualReg_193, VirtualReg_192, 1
	addi	VirtualReg_194, VirtualReg_193, 1
	addi	VirtualReg_195, VirtualReg_194, 1
	addi	VirtualReg_196, VirtualReg_195, 1
	addi	VirtualReg_197, VirtualReg_196, 1
	addi	VirtualReg_198, VirtualReg_197, 1
	addi	VirtualReg_199, VirtualReg_198, 1
	addi	VirtualReg_200, VirtualReg_199, 1
	addi	VirtualReg_201, VirtualReg_200, 1
	addi	VirtualReg_202, VirtualReg_201, 1
	addi	VirtualReg_203, VirtualReg_202, 1
	addi	VirtualReg_204, VirtualReg_203, 1
	addi	VirtualReg_205, VirtualReg_204, 1
	addi	VirtualReg_206, VirtualReg_205, 1
	addi	VirtualReg_207, VirtualReg_206, 1
	addi	VirtualReg_208, VirtualReg_207, 1
	addi	VirtualReg_209, VirtualReg_208, 1
	addi	VirtualReg_210, VirtualReg_209, 1
	addi	VirtualReg_211, VirtualReg_210, 1
	addi	VirtualReg_212, VirtualReg_211, 1
	addi	VirtualReg_213, VirtualReg_212, 1
	addi	VirtualReg_214, VirtualReg_213, 1
	addi	VirtualReg_215, VirtualReg_214, 1
	addi	VirtualReg_216, VirtualReg_215, 1
	addi	VirtualReg_217, VirtualReg_216, 1
	addi	VirtualReg_218, VirtualReg_217, 1
	addi	VirtualReg_219, VirtualReg_218, 1
	addi	VirtualReg_220, VirtualReg_219, 1
	addi	VirtualReg_221, VirtualReg_220, 1
	addi	VirtualReg_222, VirtualReg_221, 1
	addi	VirtualReg_223, VirtualReg_222, 1
	addi	VirtualReg_224, VirtualReg_223, 1
	addi	VirtualReg_225, VirtualReg_224, 1
	addi	VirtualReg_226, VirtualReg_225, 1
	addi	VirtualReg_227, VirtualReg_226, 1
	addi	VirtualReg_228, VirtualReg_227, 1
	addi	VirtualReg_229, VirtualReg_228, 1
	addi	VirtualReg_230, VirtualReg_229, 1
	addi	VirtualReg_231, VirtualReg_230, 1
	addi	VirtualReg_232, VirtualReg_231, 1
	addi	VirtualReg_233, VirtualReg_232, 1
	addi	VirtualReg_234, VirtualReg_233, 1
	addi	VirtualReg_235, VirtualReg_234, 1
	addi	VirtualReg_236, VirtualReg_235, 1
	addi	VirtualReg_237, VirtualReg_236, 1
	addi	VirtualReg_238, VirtualReg_237, 1
	addi	VirtualReg_239, VirtualReg_238, 1
	addi	VirtualReg_240, VirtualReg_239, 1
	addi	VirtualReg_241, VirtualReg_240, 1
	addi	VirtualReg_242, VirtualReg_241, 1
	addi	VirtualReg_243, VirtualReg_242, 1
	addi	VirtualReg_244, VirtualReg_243, 1
	addi	VirtualReg_245, VirtualReg_244, 1
	addi	VirtualReg_246, VirtualReg_245, 1
	addi	VirtualReg_247, VirtualReg_246, 1
	addi	VirtualReg_248, VirtualReg_247, 1
	addi	VirtualReg_249, VirtualReg_248, 1
	addi	VirtualReg_250, VirtualReg_249, 1
	addi	VirtualReg_251, VirtualReg_250, 1
	addi	VirtualReg_252, VirtualReg_251, 1
	addi	VirtualReg_253, VirtualReg_252, 1
	addi	VirtualReg_254, VirtualReg_253, 1
	addi	VirtualReg_255, VirtualReg_254, 1
	addi	VirtualReg_256, VirtualReg_255, 1
	addi	VirtualReg_257, VirtualReg_256, 1
	addi	VirtualReg_258, VirtualReg_257, 1
	addi	VirtualReg_259, VirtualReg_258, 1
	addi	VirtualReg_260, VirtualReg_259, 1
	addi	VirtualReg_261, VirtualReg_260, 1
	addi	VirtualReg_262, VirtualReg_261, 1
	addi	VirtualReg_263, VirtualReg_262, 1
	addi	VirtualReg_264, VirtualReg_263, 1
	addi	VirtualReg_265, VirtualReg_264, 1
	addi	VirtualReg_266, VirtualReg_265, 1
	addi	VirtualReg_267, VirtualReg_266, 1
	addi	VirtualReg_268, VirtualReg_267, 1
	addi	VirtualReg_269, VirtualReg_268, 1
	addi	VirtualReg_270, VirtualReg_269, 1
	addi	VirtualReg_271, VirtualReg_270, 1
	addi	VirtualReg_272, VirtualReg_271, 1
	addi	VirtualReg_273, VirtualReg_272, 1
	addi	VirtualReg_274, VirtualReg_273, 1
	addi	VirtualReg_275, VirtualReg_274, 1
	addi	VirtualReg_276, VirtualReg_275, 1
	addi	VirtualReg_277, VirtualReg_276, 1
	addi	VirtualReg_278, VirtualReg_277, 1
	addi	VirtualReg_279, VirtualReg_278, 1
	addi	VirtualReg_280, VirtualReg_279, 1
	addi	VirtualReg_281, VirtualReg_280, 1
	addi	VirtualReg_282, VirtualReg_281, 1
	addi	VirtualReg_283, VirtualReg_282, 1
	addi	VirtualReg_284, VirtualReg_283, 1
	addi	VirtualReg_285, VirtualReg_284, 1
	addi	VirtualReg_286, VirtualReg_285, 1
	addi	VirtualReg_287, VirtualReg_286, 1
	addi	VirtualReg_288, VirtualReg_287, 1
	addi	VirtualReg_289, VirtualReg_288, 1
	addi	VirtualReg_290, VirtualReg_289, 1
	addi	VirtualReg_291, VirtualReg_290, 1
	addi	VirtualReg_292, VirtualReg_291, 1
	addi	VirtualReg_293, VirtualReg_292, 1
	addi	VirtualReg_294, VirtualReg_293, 1
	addi	VirtualReg_295, VirtualReg_294, 1
	addi	VirtualReg_296, VirtualReg_295, 1
	addi	VirtualReg_297, VirtualReg_296, 1
	addi	VirtualReg_298, VirtualReg_297, 1
	addi	VirtualReg_299, VirtualReg_298, 1
	addi	VirtualReg_300, VirtualReg_299, 1
	addi	VirtualReg_301, VirtualReg_300, 1
	addi	VirtualReg_302, VirtualReg_301, 1
	addi	VirtualReg_303, VirtualReg_302, 1
	addi	VirtualReg_304, VirtualReg_303, 1
	addi	VirtualReg_305, VirtualReg_304, 1
	addi	VirtualReg_306, VirtualReg_305, 1
	addi	VirtualReg_307, VirtualReg_306, 1
	addi	VirtualReg_308, VirtualReg_307, 1
	addi	VirtualReg_309, VirtualReg_308, 1
	addi	VirtualReg_310, VirtualReg_309, 1
	addi	VirtualReg_311, VirtualReg_310, 1
	addi	VirtualReg_312, VirtualReg_311, 1
	addi	VirtualReg_313, VirtualReg_312, 1
	addi	VirtualReg_314, VirtualReg_313, 1
	addi	VirtualReg_315, VirtualReg_314, 1
	addi	VirtualReg_316, VirtualReg_315, 1
	addi	VirtualReg_317, VirtualReg_316, 1
	addi	VirtualReg_318, VirtualReg_317, 1
	addi	VirtualReg_319, VirtualReg_318, 1
	addi	VirtualReg_320, VirtualReg_319, 1
	addi	VirtualReg_321, VirtualReg_320, 1
	addi	VirtualReg_322, VirtualReg_321, 1
	addi	VirtualReg_323, VirtualReg_322, 1
	addi	VirtualReg_324, VirtualReg_323, 1
	addi	VirtualReg_325, VirtualReg_324, 1
	addi	VirtualReg_326, VirtualReg_325, 1
	addi	VirtualReg_327, VirtualReg_326, 1
	addi	VirtualReg_328, VirtualReg_327, 1
	addi	VirtualReg_329, VirtualReg_328, 1
	addi	VirtualReg_330, VirtualReg_329, 1
	addi	VirtualReg_331, VirtualReg_330, 1
	addi	VirtualReg_332, VirtualReg_331, 1
	addi	VirtualReg_333, VirtualReg_332, 1
	addi	VirtualReg_334, VirtualReg_333, 1
	addi	VirtualReg_335, VirtualReg_334, 1
	addi	VirtualReg_336, VirtualReg_335, 1
	addi	VirtualReg_337, VirtualReg_336, 1
	addi	VirtualReg_338, VirtualReg_337, 1
	addi	VirtualReg_339, VirtualReg_338, 1
	addi	VirtualReg_340, VirtualReg_339, 1
	addi	VirtualReg_341, VirtualReg_340, 1
	addi	VirtualReg_342, VirtualReg_341, 1
	addi	VirtualReg_343, VirtualReg_342, 1
	addi	VirtualReg_344, VirtualReg_343, 1
	addi	VirtualReg_345, VirtualReg_344, 1
	addi	VirtualReg_346, VirtualReg_345, 1
	addi	VirtualReg_347, VirtualReg_346, 1
	addi	VirtualReg_348, VirtualReg_347, 1
	addi	VirtualReg_349, VirtualReg_348, 1
	addi	VirtualReg_350, VirtualReg_349, 1
	addi	VirtualReg_351, VirtualReg_350, 1
	addi	VirtualReg_352, VirtualReg_351, 1
	addi	VirtualReg_353, VirtualReg_352, 1
	addi	VirtualReg_354, VirtualReg_353, 1
	addi	VirtualReg_355, VirtualReg_354, 1
	addi	VirtualReg_356, VirtualReg_355, 1
	addi	VirtualReg_357, VirtualReg_356, 1
	addi	VirtualReg_358, VirtualReg_357, 1
	addi	VirtualReg_359, VirtualReg_358, 1
	addi	VirtualReg_360, VirtualReg_359, 1
	addi	VirtualReg_361, VirtualReg_360, 1
	addi	VirtualReg_362, VirtualReg_361, 1
	addi	VirtualReg_363, VirtualReg_362, 1
	addi	VirtualReg_364, VirtualReg_363, 1
	addi	VirtualReg_365, VirtualReg_364, 1
	addi	VirtualReg_366, VirtualReg_365, 1
	addi	VirtualReg_367, VirtualReg_366, 1
	addi	VirtualReg_368, VirtualReg_367, 1
	addi	VirtualReg_369, VirtualReg_368, 1
	addi	VirtualReg_370, VirtualReg_369, 1
	addi	VirtualReg_371, VirtualReg_370, 1
	addi	VirtualReg_372, VirtualReg_371, 1
	addi	VirtualReg_373, VirtualReg_372, 1
	addi	VirtualReg_374, VirtualReg_373, 1
	addi	VirtualReg_375, VirtualReg_374, 1
	addi	VirtualReg_376, VirtualReg_375, 1
	addi	VirtualReg_377, VirtualReg_376, 1
	addi	VirtualReg_378, VirtualReg_377, 1
	addi	VirtualReg_379, VirtualReg_378, 1
	addi	VirtualReg_380, VirtualReg_379, 1
	addi	VirtualReg_381, VirtualReg_380, 1
	addi	VirtualReg_382, VirtualReg_381, 1
	addi	VirtualReg_383, VirtualReg_382, 1
	addi	VirtualReg_384, VirtualReg_383, 1
	addi	VirtualReg_385, VirtualReg_384, 1
	addi	VirtualReg_386, VirtualReg_385, 1
	addi	VirtualReg_387, VirtualReg_386, 1
	addi	VirtualReg_388, VirtualReg_387, 1
	addi	VirtualReg_389, VirtualReg_388, 1
	addi	VirtualReg_390, VirtualReg_389, 1
	addi	VirtualReg_391, VirtualReg_390, 1
	addi	VirtualReg_392, VirtualReg_391, 1
	addi	VirtualReg_393, VirtualReg_392, 1
	addi	VirtualReg_394, VirtualReg_393, 1
	addi	VirtualReg_395, VirtualReg_394, 1
	addi	VirtualReg_396, VirtualReg_395, 1
	addi	VirtualReg_397, VirtualReg_396, 1
	addi	VirtualReg_398, VirtualReg_397, 1
	addi	VirtualReg_399, VirtualReg_398, 1
	addi	VirtualReg_400, VirtualReg_399, 1
	addi	VirtualReg_401, VirtualReg_400, 1
	addi	VirtualReg_402, VirtualReg_401, 1
	addi	VirtualReg_403, VirtualReg_402, 1
	addi	VirtualReg_404, VirtualReg_403, 1
	addi	VirtualReg_405, VirtualReg_404, 1
	addi	VirtualReg_406, VirtualReg_405, 1
	addi	VirtualReg_407, VirtualReg_406, 1
	addi	VirtualReg_408, VirtualReg_407, 1
	addi	VirtualReg_409, VirtualReg_408, 1
	addi	VirtualReg_410, VirtualReg_409, 1
	addi	VirtualReg_411, VirtualReg_410, 1
	addi	VirtualReg_412, VirtualReg_411, 1
	addi	VirtualReg_413, VirtualReg_412, 1
	addi	VirtualReg_414, VirtualReg_413, 1
	addi	VirtualReg_415, VirtualReg_414, 1
	addi	VirtualReg_416, VirtualReg_415, 1
	addi	VirtualReg_417, VirtualReg_416, 1
	addi	VirtualReg_418, VirtualReg_417, 1
	addi	VirtualReg_419, VirtualReg_418, 1
	addi	VirtualReg_420, VirtualReg_419, 1
	addi	VirtualReg_421, VirtualReg_420, 1
	addi	VirtualReg_422, VirtualReg_421, 1
	addi	VirtualReg_423, VirtualReg_422, 1
	addi	VirtualReg_424, VirtualReg_423, 1
	addi	VirtualReg_425, VirtualReg_424, 1
	addi	VirtualReg_426, VirtualReg_425, 1
	addi	VirtualReg_427, VirtualReg_426, 1
	addi	VirtualReg_428, VirtualReg_427, 1
	addi	VirtualReg_429, VirtualReg_428, 1
	addi	VirtualReg_430, VirtualReg_429, 1
	addi	VirtualReg_431, VirtualReg_430, 1
	addi	VirtualReg_432, VirtualReg_431, 1
	addi	VirtualReg_433, VirtualReg_432, 1
	addi	VirtualReg_434, VirtualReg_433, 1
	addi	VirtualReg_435, VirtualReg_434, 1
	addi	VirtualReg_436, VirtualReg_435, 1
	addi	VirtualReg_437, VirtualReg_436, 1
	addi	VirtualReg_438, VirtualReg_437, 1
	addi	VirtualReg_439, VirtualReg_438, 1
	addi	VirtualReg_440, VirtualReg_439, 1
	addi	VirtualReg_441, VirtualReg_440, 1
	addi	VirtualReg_442, VirtualReg_441, 1
	addi	VirtualReg_443, VirtualReg_442, 1
	addi	VirtualReg_444, VirtualReg_443, 1
	addi	VirtualReg_445, VirtualReg_444, 1
	addi	VirtualReg_446, VirtualReg_445, 1
	addi	VirtualReg_447, VirtualReg_446, 1
	addi	VirtualReg_448, VirtualReg_447, 1
	addi	VirtualReg_449, VirtualReg_448, 1
	addi	VirtualReg_450, VirtualReg_449, 1
	addi	VirtualReg_451, VirtualReg_450, 1
	addi	VirtualReg_452, VirtualReg_451, 1
	addi	VirtualReg_453, VirtualReg_452, 1
	addi	VirtualReg_454, VirtualReg_453, 1
	addi	VirtualReg_455, VirtualReg_454, 1
	addi	VirtualReg_456, VirtualReg_455, 1
	addi	VirtualReg_457, VirtualReg_456, 1
	addi	VirtualReg_458, VirtualReg_457, 1
	addi	VirtualReg_459, VirtualReg_458, 1
	addi	VirtualReg_460, VirtualReg_459, 1
	addi	VirtualReg_461, VirtualReg_460, 1
	addi	VirtualReg_462, VirtualReg_461, 1
	addi	VirtualReg_463, VirtualReg_462, 1
	addi	VirtualReg_464, VirtualReg_463, 1
	addi	VirtualReg_465, VirtualReg_464, 1
	addi	VirtualReg_466, VirtualReg_465, 1
	addi	VirtualReg_467, VirtualReg_466, 1
	addi	VirtualReg_468, VirtualReg_467, 1
	addi	VirtualReg_469, VirtualReg_468, 1
	addi	VirtualReg_470, VirtualReg_469, 1
	addi	VirtualReg_471, VirtualReg_470, 1
	addi	VirtualReg_472, VirtualReg_471, 1
	addi	VirtualReg_473, VirtualReg_472, 1
	addi	VirtualReg_474, VirtualReg_473, 1
	addi	VirtualReg_475, VirtualReg_474, 1
	addi	VirtualReg_476, VirtualReg_475, 1
	addi	VirtualReg_477, VirtualReg_476, 1
	addi	VirtualReg_478, VirtualReg_477, 1
	addi	VirtualReg_479, VirtualReg_478, 1
	addi	VirtualReg_480, VirtualReg_479, 1
	addi	VirtualReg_481, VirtualReg_480, 1
	addi	VirtualReg_482, VirtualReg_481, 1
	addi	VirtualReg_483, VirtualReg_482, 1
	addi	VirtualReg_484, VirtualReg_483, 1
	addi	VirtualReg_485, VirtualReg_484, 1
	addi	VirtualReg_486, VirtualReg_485, 1
	addi	VirtualReg_487, VirtualReg_486, 1
	addi	VirtualReg_488, VirtualReg_487, 1
	addi	VirtualReg_489, VirtualReg_488, 1
	addi	VirtualReg_490, VirtualReg_489, 1
	addi	VirtualReg_491, VirtualReg_490, 1
	addi	VirtualReg_492, VirtualReg_491, 1
	addi	VirtualReg_493, VirtualReg_492, 1
	addi	VirtualReg_494, VirtualReg_493, 1
	addi	VirtualReg_495, VirtualReg_494, 1
	addi	VirtualReg_496, VirtualReg_495, 1
	addi	VirtualReg_497, VirtualReg_496, 1
	addi	VirtualReg_498, VirtualReg_497, 1
	addi	VirtualReg_499, VirtualReg_498, 1
	addi	VirtualReg_500, VirtualReg_499, 1
	addi	VirtualReg_501, VirtualReg_500, 1
	addi	VirtualReg_502, VirtualReg_501, 1
	addi	VirtualReg_503, VirtualReg_502, 1
	addi	VirtualReg_504, VirtualReg_503, 1
	addi	VirtualReg_505, VirtualReg_504, 1
	addi	VirtualReg_506, VirtualReg_505, 1
	addi	VirtualReg_507, VirtualReg_506, 1
	addi	VirtualReg_508, VirtualReg_507, 1
	addi	VirtualReg_509, VirtualReg_508, 1
	addi	VirtualReg_510, VirtualReg_509, 1
	addi	VirtualReg_511, VirtualReg_510, 1
	addi	VirtualReg_512, VirtualReg_511, 1
	addi	VirtualReg_513, VirtualReg_512, 1
	addi	VirtualReg_514, VirtualReg_513, 1
	addi	VirtualReg_515, VirtualReg_514, 1
	addi	VirtualReg_516, VirtualReg_515, 1
	addi	VirtualReg_517, VirtualReg_516, 1
	addi	VirtualReg_518, VirtualReg_517, 1
	addi	VirtualReg_519, VirtualReg_518, 1
	addi	VirtualReg_520, VirtualReg_519, 1
	addi	VirtualReg_521, VirtualReg_520, 1
	addi	VirtualReg_522, VirtualReg_521, 1
	addi	VirtualReg_523, VirtualReg_522, 1
	addi	VirtualReg_524, VirtualReg_523, 1
	addi	VirtualReg_525, VirtualReg_524, 1
	addi	VirtualReg_526, VirtualReg_525, 1
	addi	VirtualReg_527, VirtualReg_526, 1
	addi	VirtualReg_528, VirtualReg_527, 1
	addi	VirtualReg_529, VirtualReg_528, 1
	addi	VirtualReg_530, VirtualReg_529, 1
	addi	VirtualReg_531, VirtualReg_530, 1
	addi	VirtualReg_532, VirtualReg_531, 1
	addi	VirtualReg_533, VirtualReg_532, 1
	addi	VirtualReg_534, VirtualReg_533, 1
	addi	VirtualReg_535, VirtualReg_534, 1
	addi	VirtualReg_536, VirtualReg_535, 1
	addi	VirtualReg_537, VirtualReg_536, 1
	addi	VirtualReg_538, VirtualReg_537, 1
	addi	VirtualReg_539, VirtualReg_538, 1
	addi	VirtualReg_540, VirtualReg_539, 1
	addi	VirtualReg_541, VirtualReg_540, 1
	addi	VirtualReg_542, VirtualReg_541, 1
	addi	VirtualReg_543, VirtualReg_542, 1
	addi	VirtualReg_544, VirtualReg_543, 1
	addi	VirtualReg_545, VirtualReg_544, 1
	addi	VirtualReg_546, VirtualReg_545, 1
	addi	VirtualReg_547, VirtualReg_546, 1
	addi	VirtualReg_548, VirtualReg_547, 1
	addi	VirtualReg_549, VirtualReg_548, 1
	addi	VirtualReg_550, VirtualReg_549, 1
	addi	VirtualReg_551, VirtualReg_550, 1
	addi	VirtualReg_552, VirtualReg_551, 1
	addi	VirtualReg_553, VirtualReg_552, 1
	addi	VirtualReg_554, VirtualReg_553, 1
	addi	VirtualReg_555, VirtualReg_554, 1
	addi	VirtualReg_556, VirtualReg_555, 1
	addi	VirtualReg_557, VirtualReg_556, 1
	addi	VirtualReg_558, VirtualReg_557, 1
	addi	VirtualReg_559, VirtualReg_558, 1
	addi	VirtualReg_560, VirtualReg_559, 1
	addi	VirtualReg_561, VirtualReg_560, 1
	addi	VirtualReg_562, VirtualReg_561, 1
	addi	VirtualReg_563, VirtualReg_562, 1
	addi	VirtualReg_564, VirtualReg_563, 1
	addi	VirtualReg_565, VirtualReg_564, 1
	addi	VirtualReg_566, VirtualReg_565, 1
	addi	VirtualReg_567, VirtualReg_566, 1
	addi	VirtualReg_568, VirtualReg_567, 1
	addi	VirtualReg_569, VirtualReg_568, 1
	addi	VirtualReg_570, VirtualReg_569, 1
	addi	VirtualReg_571, VirtualReg_570, 1
	addi	VirtualReg_572, VirtualReg_571, 1
	addi	VirtualReg_573, VirtualReg_572, 1
	addi	VirtualReg_574, VirtualReg_573, 1
	addi	VirtualReg_575, VirtualReg_574, 1
	addi	VirtualReg_576, VirtualReg_575, 1
	addi	VirtualReg_577, VirtualReg_576, 1
	addi	VirtualReg_578, VirtualReg_577, 1
	addi	VirtualReg_579, VirtualReg_578, 1
	addi	VirtualReg_580, VirtualReg_579, 1
	addi	VirtualReg_581, VirtualReg_580, 1
	addi	VirtualReg_582, VirtualReg_581, 1
	addi	VirtualReg_583, VirtualReg_582, 1
	addi	VirtualReg_584, VirtualReg_583, 1
	addi	VirtualReg_585, VirtualReg_584, 1
	addi	VirtualReg_586, VirtualReg_585, 1
	addi	VirtualReg_587, VirtualReg_586, 1
	addi	VirtualReg_588, VirtualReg_587, 1
	addi	VirtualReg_589, VirtualReg_588, 1
	addi	VirtualReg_590, VirtualReg_589, 1
	addi	VirtualReg_591, VirtualReg_590, 1
	addi	VirtualReg_592, VirtualReg_591, 1
	addi	VirtualReg_593, VirtualReg_592, 1
	addi	VirtualReg_594, VirtualReg_593, 1
	addi	VirtualReg_595, VirtualReg_594, 1
	addi	VirtualReg_596, VirtualReg_595, 1
	addi	VirtualReg_597, VirtualReg_596, 1
	addi	VirtualReg_598, VirtualReg_597, 1
	addi	VirtualReg_599, VirtualReg_598, 1
	addi	VirtualReg_600, VirtualReg_599, 1
	addi	VirtualReg_601, VirtualReg_600, 1
	addi	VirtualReg_602, VirtualReg_601, 1
	addi	VirtualReg_603, VirtualReg_602, 1
	addi	VirtualReg_604, VirtualReg_603, 1
	addi	VirtualReg_605, VirtualReg_604, 1
	addi	VirtualReg_606, VirtualReg_605, 1
	addi	VirtualReg_607, VirtualReg_606, 1
	addi	VirtualReg_608, VirtualReg_607, 1
	addi	VirtualReg_609, VirtualReg_608, 1
	addi	VirtualReg_610, VirtualReg_609, 1
	addi	VirtualReg_611, VirtualReg_610, 1
	addi	VirtualReg_612, VirtualReg_611, 1
	addi	VirtualReg_613, VirtualReg_612, 1
	addi	VirtualReg_614, VirtualReg_613, 1
	addi	VirtualReg_615, VirtualReg_614, 1
	addi	VirtualReg_616, VirtualReg_615, 1
	addi	VirtualReg_617, VirtualReg_616, 1
	addi	VirtualReg_618, VirtualReg_617, 1
	addi	VirtualReg_619, VirtualReg_618, 1
	addi	VirtualReg_620, VirtualReg_619, 1
	addi	VirtualReg_621, VirtualReg_620, 1
	addi	VirtualReg_622, VirtualReg_621, 1
	addi	VirtualReg_623, VirtualReg_622, 1
	addi	VirtualReg_624, VirtualReg_623, 1
	addi	VirtualReg_625, VirtualReg_624, 1
	addi	VirtualReg_626, VirtualReg_625, 1
	addi	VirtualReg_627, VirtualReg_626, 1
	addi	VirtualReg_628, VirtualReg_627, 1
	addi	VirtualReg_629, VirtualReg_628, 1
	addi	VirtualReg_630, VirtualReg_629, 1
	addi	VirtualReg_631, VirtualReg_630, 1
	addi	VirtualReg_632, VirtualReg_631, 1
	addi	VirtualReg_633, VirtualReg_632, 1
	addi	VirtualReg_634, VirtualReg_633, 1
	addi	VirtualReg_635, VirtualReg_634, 1
	addi	VirtualReg_636, VirtualReg_635, 1
	addi	VirtualReg_637, VirtualReg_636, 1
	addi	VirtualReg_638, VirtualReg_637, 1
	addi	VirtualReg_639, VirtualReg_638, 1
	addi	VirtualReg_640, VirtualReg_639, 1
	addi	VirtualReg_641, VirtualReg_640, 1
	addi	VirtualReg_642, VirtualReg_641, 1
	addi	VirtualReg_643, VirtualReg_642, 1
	addi	VirtualReg_644, VirtualReg_643, 1
	addi	VirtualReg_645, VirtualReg_644, 1
	addi	VirtualReg_646, VirtualReg_645, 1
	addi	VirtualReg_647, VirtualReg_646, 1
	addi	VirtualReg_648, VirtualReg_647, 1
	addi	VirtualReg_649, VirtualReg_648, 1
	addi	VirtualReg_650, VirtualReg_649, 1
	addi	VirtualReg_651, VirtualReg_650, 1
	addi	VirtualReg_652, VirtualReg_651, 1
	addi	VirtualReg_653, VirtualReg_652, 1
	addi	VirtualReg_654, VirtualReg_653, 1
	addi	VirtualReg_655, VirtualReg_654, 1
	addi	VirtualReg_656, VirtualReg_655, 1
	addi	VirtualReg_657, VirtualReg_656, 1
	addi	VirtualReg_658, VirtualReg_657, 1
	addi	VirtualReg_659, VirtualReg_658, 1
	addi	VirtualReg_660, VirtualReg_659, 1
	addi	VirtualReg_661, VirtualReg_660, 1
	addi	VirtualReg_662, VirtualReg_661, 1
	addi	VirtualReg_663, VirtualReg_662, 1
	addi	VirtualReg_664, VirtualReg_663, 1
	addi	VirtualReg_665, VirtualReg_664, 1
	addi	VirtualReg_666, VirtualReg_665, 1
	addi	VirtualReg_667, VirtualReg_666, 1
	addi	VirtualReg_668, VirtualReg_667, 1
	addi	VirtualReg_669, VirtualReg_668, 1
	addi	VirtualReg_670, VirtualReg_669, 1
	addi	VirtualReg_671, VirtualReg_670, 1
	addi	VirtualReg_672, VirtualReg_671, 1
	addi	VirtualReg_673, VirtualReg_672, 1
	addi	VirtualReg_674, VirtualReg_673, 1
	addi	VirtualReg_675, VirtualReg_674, 1
	addi	VirtualReg_676, VirtualReg_675, 1
	addi	VirtualReg_677, VirtualReg_676, 1
	addi	VirtualReg_678, VirtualReg_677, 1
	addi	VirtualReg_679, VirtualReg_678, 1
	addi	VirtualReg_680, VirtualReg_679, 1
	addi	VirtualReg_681, VirtualReg_680, 1
	addi	VirtualReg_682, VirtualReg_681, 1
	addi	VirtualReg_683, VirtualReg_682, 1
	addi	VirtualReg_684, VirtualReg_683, 1
	addi	VirtualReg_685, VirtualReg_684, 1
	addi	VirtualReg_686, VirtualReg_685, 1
	addi	VirtualReg_687, VirtualReg_686, 1
	addi	VirtualReg_688, VirtualReg_687, 1
	addi	VirtualReg_689, VirtualReg_688, 1
	addi	VirtualReg_690, VirtualReg_689, 1
	addi	VirtualReg_691, VirtualReg_690, 1
	addi	VirtualReg_692, VirtualReg_691, 1
	addi	VirtualReg_693, VirtualReg_692, 1
	addi	VirtualReg_694, VirtualReg_693, 1
	addi	VirtualReg_695, VirtualReg_694, 1
	addi	VirtualReg_696, VirtualReg_695, 1
	addi	VirtualReg_697, VirtualReg_696, 1
	addi	VirtualReg_698, VirtualReg_697, 1
	addi	VirtualReg_699, VirtualReg_698, 1
	addi	VirtualReg_700, VirtualReg_699, 1
	addi	VirtualReg_701, VirtualReg_700, 1
	addi	VirtualReg_702, VirtualReg_701, 1
	addi	VirtualReg_703, VirtualReg_702, 1
	addi	VirtualReg_704, VirtualReg_703, 1
	addi	VirtualReg_705, VirtualReg_704, 1
	addi	VirtualReg_706, VirtualReg_705, 1
	addi	VirtualReg_707, VirtualReg_706, 1
	addi	VirtualReg_708, VirtualReg_707, 1
	addi	VirtualReg_709, VirtualReg_708, 1
	addi	VirtualReg_710, VirtualReg_709, 1
	addi	VirtualReg_711, VirtualReg_710, 1
	addi	VirtualReg_712, VirtualReg_711, 1
	addi	VirtualReg_713, VirtualReg_712, 1
	addi	VirtualReg_714, VirtualReg_713, 1
	addi	VirtualReg_715, VirtualReg_714, 1
	addi	VirtualReg_716, VirtualReg_715, 1
	addi	VirtualReg_717, VirtualReg_716, 1
	addi	VirtualReg_718, VirtualReg_717, 1
	addi	VirtualReg_719, VirtualReg_718, 1
	addi	VirtualReg_720, VirtualReg_719, 1
	addi	VirtualReg_721, VirtualReg_720, 1
	addi	VirtualReg_722, VirtualReg_721, 1
	addi	VirtualReg_723, VirtualReg_722, 1
	addi	VirtualReg_724, VirtualReg_723, 1
	addi	VirtualReg_725, VirtualReg_724, 1
	addi	VirtualReg_726, VirtualReg_725, 1
	addi	VirtualReg_727, VirtualReg_726, 1
	addi	VirtualReg_728, VirtualReg_727, 1
	addi	VirtualReg_729, VirtualReg_728, 1
	addi	VirtualReg_730, VirtualReg_729, 1
	addi	VirtualReg_731, VirtualReg_730, 1
	addi	VirtualReg_732, VirtualReg_731, 1
	addi	VirtualReg_733, VirtualReg_732, 1
	addi	VirtualReg_734, VirtualReg_733, 1
	addi	VirtualReg_735, VirtualReg_734, 1
	addi	VirtualReg_736, VirtualReg_735, 1
	addi	VirtualReg_737, VirtualReg_736, 1
	addi	VirtualReg_738, VirtualReg_737, 1
	addi	VirtualReg_739, VirtualReg_738, 1
	addi	VirtualReg_740, VirtualReg_739, 1
	addi	VirtualReg_741, VirtualReg_740, 1
	addi	VirtualReg_742, VirtualReg_741, 1
	addi	VirtualReg_743, VirtualReg_742, 1
	addi	VirtualReg_744, VirtualReg_743, 1
	addi	VirtualReg_745, VirtualReg_744, 1
	addi	VirtualReg_746, VirtualReg_745, 1
	addi	VirtualReg_747, VirtualReg_746, 1
	addi	VirtualReg_748, VirtualReg_747, 1
	addi	VirtualReg_749, VirtualReg_748, 1
	addi	VirtualReg_750, VirtualReg_749, 1
	addi	VirtualReg_751, VirtualReg_750, 1
	addi	VirtualReg_752, VirtualReg_751, 1
	addi	VirtualReg_753, VirtualReg_752, 1
	addi	VirtualReg_754, VirtualReg_753, 1
	addi	VirtualReg_755, VirtualReg_754, 1
	addi	VirtualReg_756, VirtualReg_755, 1
	addi	VirtualReg_757, VirtualReg_756, 1
	addi	VirtualReg_758, VirtualReg_757, 1
	addi	VirtualReg_759, VirtualReg_758, 1
	addi	VirtualReg_760, VirtualReg_759, 1
	addi	VirtualReg_761, VirtualReg_760, 1
	addi	VirtualReg_762, VirtualReg_761, 1
	addi	VirtualReg_763, VirtualReg_762, 1
	addi	VirtualReg_764, VirtualReg_763, 1
	addi	VirtualReg_765, VirtualReg_764, 1
	addi	VirtualReg_766, VirtualReg_765, 1
	addi	VirtualReg_767, VirtualReg_766, 1
	addi	VirtualReg_768, VirtualReg_767, 1
	addi	VirtualReg_769, VirtualReg_768, 1
	addi	VirtualReg_770, VirtualReg_769, 1
	addi	VirtualReg_771, VirtualReg_770, 1
	addi	VirtualReg_772, VirtualReg_771, 1
	addi	VirtualReg_773, VirtualReg_772, 1
	addi	VirtualReg_774, VirtualReg_773, 1
	addi	VirtualReg_775, VirtualReg_774, 1
	addi	VirtualReg_776, VirtualReg_775, 1
	addi	VirtualReg_777, VirtualReg_776, 1
	addi	VirtualReg_778, VirtualReg_777, 1
	addi	VirtualReg_779, VirtualReg_778, 1
	addi	VirtualReg_780, VirtualReg_779, 1
	addi	VirtualReg_781, VirtualReg_780, 1
	addi	VirtualReg_782, VirtualReg_781, 1
	addi	VirtualReg_783, VirtualReg_782, 1
	addi	VirtualReg_784, VirtualReg_783, 1
	addi	VirtualReg_785, VirtualReg_784, 1
	addi	VirtualReg_786, VirtualReg_785, 1
	addi	VirtualReg_787, VirtualReg_786, 1
	addi	VirtualReg_788, VirtualReg_787, 1
	addi	VirtualReg_789, VirtualReg_788, 1
	addi	VirtualReg_790, VirtualReg_789, 1
	addi	VirtualReg_791, VirtualReg_790, 1
	addi	VirtualReg_792, VirtualReg_791, 1
	addi	VirtualReg_793, VirtualReg_792, 1
	addi	VirtualReg_794, VirtualReg_793, 1
	addi	VirtualReg_795, VirtualReg_794, 1
	addi	VirtualReg_796, VirtualReg_795, 1
	addi	VirtualReg_797, VirtualReg_796, 1
	addi	VirtualReg_798, VirtualReg_797, 1
	addi	VirtualReg_799, VirtualReg_798, 1
	addi	VirtualReg_800, VirtualReg_799, 1
	addi	VirtualReg_801, VirtualReg_800, 1
	addi	VirtualReg_802, VirtualReg_801, 1
	addi	VirtualReg_803, VirtualReg_802, 1
	addi	VirtualReg_804, VirtualReg_803, 1
	addi	VirtualReg_805, VirtualReg_804, 1
	addi	VirtualReg_806, VirtualReg_805, 1
	addi	VirtualReg_807, VirtualReg_806, 1
	addi	VirtualReg_808, VirtualReg_807, 1
	addi	VirtualReg_809, VirtualReg_808, 1
	addi	VirtualReg_810, VirtualReg_809, 1
	addi	VirtualReg_811, VirtualReg_810, 1
	addi	VirtualReg_812, VirtualReg_811, 1
	addi	VirtualReg_813, VirtualReg_812, 1
	addi	VirtualReg_814, VirtualReg_813, 1
	addi	VirtualReg_815, VirtualReg_814, 1
	addi	VirtualReg_816, VirtualReg_815, 1
	addi	VirtualReg_817, VirtualReg_816, 1
	addi	VirtualReg_818, VirtualReg_817, 1
	addi	VirtualReg_819, VirtualReg_818, 1
	addi	VirtualReg_820, VirtualReg_819, 1
	addi	VirtualReg_821, VirtualReg_820, 1
	addi	VirtualReg_822, VirtualReg_821, 1
	addi	VirtualReg_823, VirtualReg_822, 1
	addi	VirtualReg_824, VirtualReg_823, 1
	addi	VirtualReg_825, VirtualReg_824, 1
	addi	VirtualReg_826, VirtualReg_825, 1
	addi	VirtualReg_827, VirtualReg_826, 1
	addi	VirtualReg_828, VirtualReg_827, 1
	addi	VirtualReg_829, VirtualReg_828, 1
	addi	VirtualReg_830, VirtualReg_829, 1
	addi	VirtualReg_831, VirtualReg_830, 1
	addi	VirtualReg_832, VirtualReg_831, 1
	addi	VirtualReg_833, VirtualReg_832, 1
	addi	VirtualReg_834, VirtualReg_833, 1
	addi	VirtualReg_835, VirtualReg_834, 1
	addi	VirtualReg_836, VirtualReg_835, 1
	addi	VirtualReg_837, VirtualReg_836, 1
	addi	VirtualReg_838, VirtualReg_837, 1
	addi	VirtualReg_839, VirtualReg_838, 1
	addi	VirtualReg_840, VirtualReg_839, 1
	addi	VirtualReg_841, VirtualReg_840, 1
	addi	VirtualReg_842, VirtualReg_841, 1
	addi	VirtualReg_843, VirtualReg_842, 1
	addi	VirtualReg_844, VirtualReg_843, 1
	addi	VirtualReg_845, VirtualReg_844, 1
	addi	VirtualReg_846, VirtualReg_845, 1
	addi	VirtualReg_847, VirtualReg_846, 1
	addi	VirtualReg_848, VirtualReg_847, 1
	addi	VirtualReg_849, VirtualReg_848, 1
	addi	VirtualReg_850, VirtualReg_849, 1
	addi	VirtualReg_851, VirtualReg_850, 1
	addi	VirtualReg_852, VirtualReg_851, 1
	addi	VirtualReg_853, VirtualReg_852, 1
	addi	VirtualReg_854, VirtualReg_853, 1
	addi	VirtualReg_855, VirtualReg_854, 1
	addi	VirtualReg_856, VirtualReg_855, 1
	addi	VirtualReg_857, VirtualReg_856, 1
	addi	VirtualReg_858, VirtualReg_857, 1
	addi	VirtualReg_859, VirtualReg_858, 1
	addi	VirtualReg_860, VirtualReg_859, 1
	addi	VirtualReg_861, VirtualReg_860, 1
	addi	VirtualReg_862, VirtualReg_861, 1
	addi	VirtualReg_863, VirtualReg_862, 1
	addi	VirtualReg_864, VirtualReg_863, 1
	addi	VirtualReg_865, VirtualReg_864, 1
	addi	VirtualReg_866, VirtualReg_865, 1
	addi	VirtualReg_867, VirtualReg_866, 1
	addi	VirtualReg_868, VirtualReg_867, 1
	addi	VirtualReg_869, VirtualReg_868, 1
	addi	VirtualReg_870, VirtualReg_869, 1
	addi	VirtualReg_871, VirtualReg_870, 1
	addi	VirtualReg_872, VirtualReg_871, 1
	addi	VirtualReg_873, VirtualReg_872, 1
	addi	VirtualReg_874, VirtualReg_873, 1
	addi	VirtualReg_875, VirtualReg_874, 1
	addi	VirtualReg_876, VirtualReg_875, 1
	addi	VirtualReg_877, VirtualReg_876, 1
	addi	VirtualReg_878, VirtualReg_877, 1
	addi	VirtualReg_879, VirtualReg_878, 1
	addi	VirtualReg_880, VirtualReg_879, 1
	addi	VirtualReg_881, VirtualReg_880, 1
	addi	VirtualReg_882, VirtualReg_881, 1
	addi	VirtualReg_883, VirtualReg_882, 1
	addi	VirtualReg_884, VirtualReg_883, 1
	addi	VirtualReg_885, VirtualReg_884, 1
	addi	VirtualReg_886, VirtualReg_885, 1
	addi	VirtualReg_887, VirtualReg_886, 1
	addi	VirtualReg_888, VirtualReg_887, 1
	addi	VirtualReg_889, VirtualReg_888, 1
	addi	VirtualReg_890, VirtualReg_889, 1
	addi	VirtualReg_891, VirtualReg_890, 1
	addi	VirtualReg_892, VirtualReg_891, 1
	addi	VirtualReg_893, VirtualReg_892, 1
	addi	VirtualReg_894, VirtualReg_893, 1
	addi	VirtualReg_895, VirtualReg_894, 1
	addi	VirtualReg_896, VirtualReg_895, 1
	addi	VirtualReg_897, VirtualReg_896, 1
	addi	VirtualReg_898, VirtualReg_897, 1
	addi	VirtualReg_899, VirtualReg_898, 1
	addi	VirtualReg_900, VirtualReg_899, 1
	addi	VirtualReg_901, VirtualReg_900, 1
	addi	VirtualReg_902, VirtualReg_901, 1
	addi	VirtualReg_903, VirtualReg_902, 1
	addi	VirtualReg_904, VirtualReg_903, 1
	addi	VirtualReg_905, VirtualReg_904, 1
	addi	VirtualReg_906, VirtualReg_905, 1
	addi	VirtualReg_907, VirtualReg_906, 1
	addi	VirtualReg_908, VirtualReg_907, 1
	addi	VirtualReg_909, VirtualReg_908, 1
	addi	VirtualReg_910, VirtualReg_909, 1
	addi	VirtualReg_911, VirtualReg_910, 1
	addi	VirtualReg_912, VirtualReg_911, 1
	addi	VirtualReg_913, VirtualReg_912, 1
	addi	VirtualReg_914, VirtualReg_913, 1
	addi	VirtualReg_915, VirtualReg_914, 1
	addi	VirtualReg_916, VirtualReg_915, 1
	addi	VirtualReg_917, VirtualReg_916, 1
	addi	VirtualReg_918, VirtualReg_917, 1
	addi	VirtualReg_919, VirtualReg_918, 1
	addi	VirtualReg_920, VirtualReg_919, 1
	addi	VirtualReg_921, VirtualReg_920, 1
	addi	VirtualReg_922, VirtualReg_921, 1
	addi	VirtualReg_923, VirtualReg_922, 1
	addi	VirtualReg_924, VirtualReg_923, 1
	addi	VirtualReg_925, VirtualReg_924, 1
	addi	VirtualReg_926, VirtualReg_925, 1
	addi	VirtualReg_927, VirtualReg_926, 1
	addi	VirtualReg_928, VirtualReg_927, 1
	addi	VirtualReg_929, VirtualReg_928, 1
	addi	VirtualReg_930, VirtualReg_929, 1
	addi	VirtualReg_931, VirtualReg_930, 1
	addi	VirtualReg_932, VirtualReg_931, 1
	addi	VirtualReg_933, VirtualReg_932, 1
	addi	VirtualReg_934, VirtualReg_933, 1
	addi	VirtualReg_935, VirtualReg_934, 1
	addi	VirtualReg_936, VirtualReg_935, 1
	addi	VirtualReg_937, VirtualReg_936, 1
	addi	VirtualReg_938, VirtualReg_937, 1
	addi	VirtualReg_939, VirtualReg_938, 1
	addi	VirtualReg_940, VirtualReg_939, 1
	addi	VirtualReg_941, VirtualReg_940, 1
	addi	VirtualReg_942, VirtualReg_941, 1
	addi	VirtualReg_943, VirtualReg_942, 1
	addi	VirtualReg_944, VirtualReg_943, 1
	addi	VirtualReg_945, VirtualReg_944, 1
	addi	VirtualReg_946, VirtualReg_945, 1
	addi	VirtualReg_947, VirtualReg_946, 1
	addi	VirtualReg_948, VirtualReg_947, 1
	addi	VirtualReg_949, VirtualReg_948, 1
	addi	VirtualReg_950, VirtualReg_949, 1
	addi	VirtualReg_951, VirtualReg_950, 1
	addi	VirtualReg_952, VirtualReg_951, 1
	addi	VirtualReg_953, VirtualReg_952, 1
	addi	VirtualReg_954, VirtualReg_953, 1
	addi	VirtualReg_955, VirtualReg_954, 1
	addi	VirtualReg_956, VirtualReg_955, 1
	addi	VirtualReg_957, VirtualReg_956, 1
	addi	VirtualReg_958, VirtualReg_957, 1
	addi	VirtualReg_959, VirtualReg_958, 1
	addi	VirtualReg_960, VirtualReg_959, 1
	addi	VirtualReg_961, VirtualReg_960, 1
	addi	VirtualReg_962, VirtualReg_961, 1
	addi	VirtualReg_963, VirtualReg_962, 1
	addi	VirtualReg_964, VirtualReg_963, 1
	addi	VirtualReg_965, VirtualReg_964, 1
	addi	VirtualReg_966, VirtualReg_965, 1
	addi	VirtualReg_967, VirtualReg_966, 1
	addi	VirtualReg_968, VirtualReg_967, 1
	addi	VirtualReg_969, VirtualReg_968, 1
	addi	VirtualReg_970, VirtualReg_969, 1
	addi	VirtualReg_971, VirtualReg_970, 1
	addi	VirtualReg_972, VirtualReg_971, 1
	addi	VirtualReg_973, VirtualReg_972, 1
	addi	VirtualReg_974, VirtualReg_973, 1
	addi	VirtualReg_975, VirtualReg_974, 1
	addi	VirtualReg_976, VirtualReg_975, 1
	addi	VirtualReg_977, VirtualReg_976, 1
	addi	VirtualReg_978, VirtualReg_977, 1
	addi	VirtualReg_979, VirtualReg_978, 1
	addi	VirtualReg_980, VirtualReg_979, 1
	addi	VirtualReg_981, VirtualReg_980, 1
	addi	VirtualReg_982, VirtualReg_981, 1
	addi	VirtualReg_983, VirtualReg_982, 1
	addi	VirtualReg_984, VirtualReg_983, 1
	addi	VirtualReg_985, VirtualReg_984, 1
	addi	VirtualReg_986, VirtualReg_985, 1
	addi	VirtualReg_987, VirtualReg_986, 1
	addi	VirtualReg_988, VirtualReg_987, 1
	addi	VirtualReg_989, VirtualReg_988, 1
	addi	VirtualReg_990, VirtualReg_989, 1
	addi	VirtualReg_991, VirtualReg_990, 1
	addi	VirtualReg_992, VirtualReg_991, 1
	addi	VirtualReg_993, VirtualReg_992, 1
	addi	VirtualReg_994, VirtualReg_993, 1
	addi	VirtualReg_995, VirtualReg_994, 1
	addi	VirtualReg_996, VirtualReg_995, 1
	addi	VirtualReg_997, VirtualReg_996, 1
	addi	VirtualReg_998, VirtualReg_997, 1
	addi	VirtualReg_999, VirtualReg_998, 1
	addi	VirtualReg_1000, VirtualReg_999, 1
	addi	VirtualReg_1001, VirtualReg_1000, 1
	addi	VirtualReg_1002, VirtualReg_1001, 1
	addi	VirtualReg_1003, VirtualReg_1002, 1
	addi	VirtualReg_1004, VirtualReg_1003, 1
	addi	VirtualReg_1005, VirtualReg_1004, 1
	addi	VirtualReg_1006, VirtualReg_1005, 1
	addi	VirtualReg_1007, VirtualReg_1006, 1
	addi	VirtualReg_1008, VirtualReg_1007, 1
	addi	VirtualReg_1009, VirtualReg_1008, 1
	addi	VirtualReg_1010, VirtualReg_1009, 1
	addi	VirtualReg_1011, VirtualReg_1010, 1
	addi	VirtualReg_1012, VirtualReg_1011, 1
	addi	VirtualReg_1013, VirtualReg_1012, 1
	addi	VirtualReg_1014, VirtualReg_1013, 1
	addi	VirtualReg_1015, VirtualReg_1014, 1
	addi	VirtualReg_1016, VirtualReg_1015, 1
	addi	VirtualReg_1017, VirtualReg_1016, 1
	addi	VirtualReg_1018, VirtualReg_1017, 1
	addi	VirtualReg_1019, VirtualReg_1018, 1
	addi	VirtualReg_1020, VirtualReg_1019, 1
	addi	VirtualReg_1021, VirtualReg_1020, 1
	addi	VirtualReg_1022, VirtualReg_1021, 1
	addi	VirtualReg_1023, VirtualReg_1022, 1
	addi	VirtualReg_1024, VirtualReg_1023, 1
	addi	VirtualReg_1025, VirtualReg_1024, 1
	addi	VirtualReg_1026, VirtualReg_1025, 1
	addi	VirtualReg_1027, VirtualReg_1026, 1
	addi	VirtualReg_1028, VirtualReg_1027, 1
	addi	VirtualReg_1029, VirtualReg_1028, 1
	addi	VirtualReg_1030, VirtualReg_1029, 1
	addi	VirtualReg_1031, VirtualReg_1030, 1
	addi	VirtualReg_1032, VirtualReg_1031, 1
	addi	VirtualReg_1033, VirtualReg_1032, 1
	addi	VirtualReg_1034, VirtualReg_1033, 1
	addi	VirtualReg_1035, VirtualReg_1034, 1
	addi	VirtualReg_1036, VirtualReg_1035, 1
	j	.add1024_return
.add1024_return:
	mv	a0, VirtualReg_1036
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

	.globl	add2048
	.p2align	2
	.type	add2048,@function
add2048:
.add2048_assemblyInit:
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
	j	.add2048_entry
.add2048_entry:
	j	.add2048_call_add1024_37
.add2048_call_add1024_37:
	addi	VirtualReg_13, VirtualReg_0, 1
	addi	VirtualReg_14, VirtualReg_13, 1
	addi	VirtualReg_15, VirtualReg_14, 1
	addi	VirtualReg_16, VirtualReg_15, 1
	addi	VirtualReg_17, VirtualReg_16, 1
	addi	VirtualReg_18, VirtualReg_17, 1
	addi	VirtualReg_19, VirtualReg_18, 1
	addi	VirtualReg_20, VirtualReg_19, 1
	addi	VirtualReg_21, VirtualReg_20, 1
	addi	VirtualReg_22, VirtualReg_21, 1
	addi	VirtualReg_23, VirtualReg_22, 1
	addi	VirtualReg_24, VirtualReg_23, 1
	addi	VirtualReg_25, VirtualReg_24, 1
	addi	VirtualReg_26, VirtualReg_25, 1
	addi	VirtualReg_27, VirtualReg_26, 1
	addi	VirtualReg_28, VirtualReg_27, 1
	addi	VirtualReg_29, VirtualReg_28, 1
	addi	VirtualReg_30, VirtualReg_29, 1
	addi	VirtualReg_31, VirtualReg_30, 1
	addi	VirtualReg_32, VirtualReg_31, 1
	addi	VirtualReg_33, VirtualReg_32, 1
	addi	VirtualReg_34, VirtualReg_33, 1
	addi	VirtualReg_35, VirtualReg_34, 1
	addi	VirtualReg_36, VirtualReg_35, 1
	addi	VirtualReg_37, VirtualReg_36, 1
	addi	VirtualReg_38, VirtualReg_37, 1
	addi	VirtualReg_39, VirtualReg_38, 1
	addi	VirtualReg_40, VirtualReg_39, 1
	addi	VirtualReg_41, VirtualReg_40, 1
	addi	VirtualReg_42, VirtualReg_41, 1
	addi	VirtualReg_43, VirtualReg_42, 1
	addi	VirtualReg_44, VirtualReg_43, 1
	addi	VirtualReg_45, VirtualReg_44, 1
	addi	VirtualReg_46, VirtualReg_45, 1
	addi	VirtualReg_47, VirtualReg_46, 1
	addi	VirtualReg_48, VirtualReg_47, 1
	addi	VirtualReg_49, VirtualReg_48, 1
	addi	VirtualReg_50, VirtualReg_49, 1
	addi	VirtualReg_51, VirtualReg_50, 1
	addi	VirtualReg_52, VirtualReg_51, 1
	addi	VirtualReg_53, VirtualReg_52, 1
	addi	VirtualReg_54, VirtualReg_53, 1
	addi	VirtualReg_55, VirtualReg_54, 1
	addi	VirtualReg_56, VirtualReg_55, 1
	addi	VirtualReg_57, VirtualReg_56, 1
	addi	VirtualReg_58, VirtualReg_57, 1
	addi	VirtualReg_59, VirtualReg_58, 1
	addi	VirtualReg_60, VirtualReg_59, 1
	addi	VirtualReg_61, VirtualReg_60, 1
	addi	VirtualReg_62, VirtualReg_61, 1
	addi	VirtualReg_63, VirtualReg_62, 1
	addi	VirtualReg_64, VirtualReg_63, 1
	addi	VirtualReg_65, VirtualReg_64, 1
	addi	VirtualReg_66, VirtualReg_65, 1
	addi	VirtualReg_67, VirtualReg_66, 1
	addi	VirtualReg_68, VirtualReg_67, 1
	addi	VirtualReg_69, VirtualReg_68, 1
	addi	VirtualReg_70, VirtualReg_69, 1
	addi	VirtualReg_71, VirtualReg_70, 1
	addi	VirtualReg_72, VirtualReg_71, 1
	addi	VirtualReg_73, VirtualReg_72, 1
	addi	VirtualReg_74, VirtualReg_73, 1
	addi	VirtualReg_75, VirtualReg_74, 1
	addi	VirtualReg_76, VirtualReg_75, 1
	addi	VirtualReg_77, VirtualReg_76, 1
	addi	VirtualReg_78, VirtualReg_77, 1
	addi	VirtualReg_79, VirtualReg_78, 1
	addi	VirtualReg_80, VirtualReg_79, 1
	addi	VirtualReg_81, VirtualReg_80, 1
	addi	VirtualReg_82, VirtualReg_81, 1
	addi	VirtualReg_83, VirtualReg_82, 1
	addi	VirtualReg_84, VirtualReg_83, 1
	addi	VirtualReg_85, VirtualReg_84, 1
	addi	VirtualReg_86, VirtualReg_85, 1
	addi	VirtualReg_87, VirtualReg_86, 1
	addi	VirtualReg_88, VirtualReg_87, 1
	addi	VirtualReg_89, VirtualReg_88, 1
	addi	VirtualReg_90, VirtualReg_89, 1
	addi	VirtualReg_91, VirtualReg_90, 1
	addi	VirtualReg_92, VirtualReg_91, 1
	addi	VirtualReg_93, VirtualReg_92, 1
	addi	VirtualReg_94, VirtualReg_93, 1
	addi	VirtualReg_95, VirtualReg_94, 1
	addi	VirtualReg_96, VirtualReg_95, 1
	addi	VirtualReg_97, VirtualReg_96, 1
	addi	VirtualReg_98, VirtualReg_97, 1
	addi	VirtualReg_99, VirtualReg_98, 1
	addi	VirtualReg_100, VirtualReg_99, 1
	addi	VirtualReg_101, VirtualReg_100, 1
	addi	VirtualReg_102, VirtualReg_101, 1
	addi	VirtualReg_103, VirtualReg_102, 1
	addi	VirtualReg_104, VirtualReg_103, 1
	addi	VirtualReg_105, VirtualReg_104, 1
	addi	VirtualReg_106, VirtualReg_105, 1
	addi	VirtualReg_107, VirtualReg_106, 1
	addi	VirtualReg_108, VirtualReg_107, 1
	addi	VirtualReg_109, VirtualReg_108, 1
	addi	VirtualReg_110, VirtualReg_109, 1
	addi	VirtualReg_111, VirtualReg_110, 1
	addi	VirtualReg_112, VirtualReg_111, 1
	addi	VirtualReg_113, VirtualReg_112, 1
	addi	VirtualReg_114, VirtualReg_113, 1
	addi	VirtualReg_115, VirtualReg_114, 1
	addi	VirtualReg_116, VirtualReg_115, 1
	addi	VirtualReg_117, VirtualReg_116, 1
	addi	VirtualReg_118, VirtualReg_117, 1
	addi	VirtualReg_119, VirtualReg_118, 1
	addi	VirtualReg_120, VirtualReg_119, 1
	addi	VirtualReg_121, VirtualReg_120, 1
	addi	VirtualReg_122, VirtualReg_121, 1
	addi	VirtualReg_123, VirtualReg_122, 1
	addi	VirtualReg_124, VirtualReg_123, 1
	addi	VirtualReg_125, VirtualReg_124, 1
	addi	VirtualReg_126, VirtualReg_125, 1
	addi	VirtualReg_127, VirtualReg_126, 1
	addi	VirtualReg_128, VirtualReg_127, 1
	addi	VirtualReg_129, VirtualReg_128, 1
	addi	VirtualReg_130, VirtualReg_129, 1
	addi	VirtualReg_131, VirtualReg_130, 1
	addi	VirtualReg_132, VirtualReg_131, 1
	addi	VirtualReg_133, VirtualReg_132, 1
	addi	VirtualReg_134, VirtualReg_133, 1
	addi	VirtualReg_135, VirtualReg_134, 1
	addi	VirtualReg_136, VirtualReg_135, 1
	addi	VirtualReg_137, VirtualReg_136, 1
	addi	VirtualReg_138, VirtualReg_137, 1
	addi	VirtualReg_139, VirtualReg_138, 1
	addi	VirtualReg_140, VirtualReg_139, 1
	addi	VirtualReg_141, VirtualReg_140, 1
	addi	VirtualReg_142, VirtualReg_141, 1
	addi	VirtualReg_143, VirtualReg_142, 1
	addi	VirtualReg_144, VirtualReg_143, 1
	addi	VirtualReg_145, VirtualReg_144, 1
	addi	VirtualReg_146, VirtualReg_145, 1
	addi	VirtualReg_147, VirtualReg_146, 1
	addi	VirtualReg_148, VirtualReg_147, 1
	addi	VirtualReg_149, VirtualReg_148, 1
	addi	VirtualReg_150, VirtualReg_149, 1
	addi	VirtualReg_151, VirtualReg_150, 1
	addi	VirtualReg_152, VirtualReg_151, 1
	addi	VirtualReg_153, VirtualReg_152, 1
	addi	VirtualReg_154, VirtualReg_153, 1
	addi	VirtualReg_155, VirtualReg_154, 1
	addi	VirtualReg_156, VirtualReg_155, 1
	addi	VirtualReg_157, VirtualReg_156, 1
	addi	VirtualReg_158, VirtualReg_157, 1
	addi	VirtualReg_159, VirtualReg_158, 1
	addi	VirtualReg_160, VirtualReg_159, 1
	addi	VirtualReg_161, VirtualReg_160, 1
	addi	VirtualReg_162, VirtualReg_161, 1
	addi	VirtualReg_163, VirtualReg_162, 1
	addi	VirtualReg_164, VirtualReg_163, 1
	addi	VirtualReg_165, VirtualReg_164, 1
	addi	VirtualReg_166, VirtualReg_165, 1
	addi	VirtualReg_167, VirtualReg_166, 1
	addi	VirtualReg_168, VirtualReg_167, 1
	addi	VirtualReg_169, VirtualReg_168, 1
	addi	VirtualReg_170, VirtualReg_169, 1
	addi	VirtualReg_171, VirtualReg_170, 1
	addi	VirtualReg_172, VirtualReg_171, 1
	addi	VirtualReg_173, VirtualReg_172, 1
	addi	VirtualReg_174, VirtualReg_173, 1
	addi	VirtualReg_175, VirtualReg_174, 1
	addi	VirtualReg_176, VirtualReg_175, 1
	addi	VirtualReg_177, VirtualReg_176, 1
	addi	VirtualReg_178, VirtualReg_177, 1
	addi	VirtualReg_179, VirtualReg_178, 1
	addi	VirtualReg_180, VirtualReg_179, 1
	addi	VirtualReg_181, VirtualReg_180, 1
	addi	VirtualReg_182, VirtualReg_181, 1
	addi	VirtualReg_183, VirtualReg_182, 1
	addi	VirtualReg_184, VirtualReg_183, 1
	addi	VirtualReg_185, VirtualReg_184, 1
	addi	VirtualReg_186, VirtualReg_185, 1
	addi	VirtualReg_187, VirtualReg_186, 1
	addi	VirtualReg_188, VirtualReg_187, 1
	addi	VirtualReg_189, VirtualReg_188, 1
	addi	VirtualReg_190, VirtualReg_189, 1
	addi	VirtualReg_191, VirtualReg_190, 1
	addi	VirtualReg_192, VirtualReg_191, 1
	addi	VirtualReg_193, VirtualReg_192, 1
	addi	VirtualReg_194, VirtualReg_193, 1
	addi	VirtualReg_195, VirtualReg_194, 1
	addi	VirtualReg_196, VirtualReg_195, 1
	addi	VirtualReg_197, VirtualReg_196, 1
	addi	VirtualReg_198, VirtualReg_197, 1
	addi	VirtualReg_199, VirtualReg_198, 1
	addi	VirtualReg_200, VirtualReg_199, 1
	addi	VirtualReg_201, VirtualReg_200, 1
	addi	VirtualReg_202, VirtualReg_201, 1
	addi	VirtualReg_203, VirtualReg_202, 1
	addi	VirtualReg_204, VirtualReg_203, 1
	addi	VirtualReg_205, VirtualReg_204, 1
	addi	VirtualReg_206, VirtualReg_205, 1
	addi	VirtualReg_207, VirtualReg_206, 1
	addi	VirtualReg_208, VirtualReg_207, 1
	addi	VirtualReg_209, VirtualReg_208, 1
	addi	VirtualReg_210, VirtualReg_209, 1
	addi	VirtualReg_211, VirtualReg_210, 1
	addi	VirtualReg_212, VirtualReg_211, 1
	addi	VirtualReg_213, VirtualReg_212, 1
	addi	VirtualReg_214, VirtualReg_213, 1
	addi	VirtualReg_215, VirtualReg_214, 1
	addi	VirtualReg_216, VirtualReg_215, 1
	addi	VirtualReg_217, VirtualReg_216, 1
	addi	VirtualReg_218, VirtualReg_217, 1
	addi	VirtualReg_219, VirtualReg_218, 1
	addi	VirtualReg_220, VirtualReg_219, 1
	addi	VirtualReg_221, VirtualReg_220, 1
	addi	VirtualReg_222, VirtualReg_221, 1
	addi	VirtualReg_223, VirtualReg_222, 1
	addi	VirtualReg_224, VirtualReg_223, 1
	addi	VirtualReg_225, VirtualReg_224, 1
	addi	VirtualReg_226, VirtualReg_225, 1
	addi	VirtualReg_227, VirtualReg_226, 1
	addi	VirtualReg_228, VirtualReg_227, 1
	addi	VirtualReg_229, VirtualReg_228, 1
	addi	VirtualReg_230, VirtualReg_229, 1
	addi	VirtualReg_231, VirtualReg_230, 1
	addi	VirtualReg_232, VirtualReg_231, 1
	addi	VirtualReg_233, VirtualReg_232, 1
	addi	VirtualReg_234, VirtualReg_233, 1
	addi	VirtualReg_235, VirtualReg_234, 1
	addi	VirtualReg_236, VirtualReg_235, 1
	addi	VirtualReg_237, VirtualReg_236, 1
	addi	VirtualReg_238, VirtualReg_237, 1
	addi	VirtualReg_239, VirtualReg_238, 1
	addi	VirtualReg_240, VirtualReg_239, 1
	addi	VirtualReg_241, VirtualReg_240, 1
	addi	VirtualReg_242, VirtualReg_241, 1
	addi	VirtualReg_243, VirtualReg_242, 1
	addi	VirtualReg_244, VirtualReg_243, 1
	addi	VirtualReg_245, VirtualReg_244, 1
	addi	VirtualReg_246, VirtualReg_245, 1
	addi	VirtualReg_247, VirtualReg_246, 1
	addi	VirtualReg_248, VirtualReg_247, 1
	addi	VirtualReg_249, VirtualReg_248, 1
	addi	VirtualReg_250, VirtualReg_249, 1
	addi	VirtualReg_251, VirtualReg_250, 1
	addi	VirtualReg_252, VirtualReg_251, 1
	addi	VirtualReg_253, VirtualReg_252, 1
	addi	VirtualReg_254, VirtualReg_253, 1
	addi	VirtualReg_255, VirtualReg_254, 1
	addi	VirtualReg_256, VirtualReg_255, 1
	addi	VirtualReg_257, VirtualReg_256, 1
	addi	VirtualReg_258, VirtualReg_257, 1
	addi	VirtualReg_259, VirtualReg_258, 1
	addi	VirtualReg_260, VirtualReg_259, 1
	addi	VirtualReg_261, VirtualReg_260, 1
	addi	VirtualReg_262, VirtualReg_261, 1
	addi	VirtualReg_263, VirtualReg_262, 1
	addi	VirtualReg_264, VirtualReg_263, 1
	addi	VirtualReg_265, VirtualReg_264, 1
	addi	VirtualReg_266, VirtualReg_265, 1
	addi	VirtualReg_267, VirtualReg_266, 1
	addi	VirtualReg_268, VirtualReg_267, 1
	addi	VirtualReg_269, VirtualReg_268, 1
	addi	VirtualReg_270, VirtualReg_269, 1
	addi	VirtualReg_271, VirtualReg_270, 1
	addi	VirtualReg_272, VirtualReg_271, 1
	addi	VirtualReg_273, VirtualReg_272, 1
	addi	VirtualReg_274, VirtualReg_273, 1
	addi	VirtualReg_275, VirtualReg_274, 1
	addi	VirtualReg_276, VirtualReg_275, 1
	addi	VirtualReg_277, VirtualReg_276, 1
	addi	VirtualReg_278, VirtualReg_277, 1
	addi	VirtualReg_279, VirtualReg_278, 1
	addi	VirtualReg_280, VirtualReg_279, 1
	addi	VirtualReg_281, VirtualReg_280, 1
	addi	VirtualReg_282, VirtualReg_281, 1
	addi	VirtualReg_283, VirtualReg_282, 1
	addi	VirtualReg_284, VirtualReg_283, 1
	addi	VirtualReg_285, VirtualReg_284, 1
	addi	VirtualReg_286, VirtualReg_285, 1
	addi	VirtualReg_287, VirtualReg_286, 1
	addi	VirtualReg_288, VirtualReg_287, 1
	addi	VirtualReg_289, VirtualReg_288, 1
	addi	VirtualReg_290, VirtualReg_289, 1
	addi	VirtualReg_291, VirtualReg_290, 1
	addi	VirtualReg_292, VirtualReg_291, 1
	addi	VirtualReg_293, VirtualReg_292, 1
	addi	VirtualReg_294, VirtualReg_293, 1
	addi	VirtualReg_295, VirtualReg_294, 1
	addi	VirtualReg_296, VirtualReg_295, 1
	addi	VirtualReg_297, VirtualReg_296, 1
	addi	VirtualReg_298, VirtualReg_297, 1
	addi	VirtualReg_299, VirtualReg_298, 1
	addi	VirtualReg_300, VirtualReg_299, 1
	addi	VirtualReg_301, VirtualReg_300, 1
	addi	VirtualReg_302, VirtualReg_301, 1
	addi	VirtualReg_303, VirtualReg_302, 1
	addi	VirtualReg_304, VirtualReg_303, 1
	addi	VirtualReg_305, VirtualReg_304, 1
	addi	VirtualReg_306, VirtualReg_305, 1
	addi	VirtualReg_307, VirtualReg_306, 1
	addi	VirtualReg_308, VirtualReg_307, 1
	addi	VirtualReg_309, VirtualReg_308, 1
	addi	VirtualReg_310, VirtualReg_309, 1
	addi	VirtualReg_311, VirtualReg_310, 1
	addi	VirtualReg_312, VirtualReg_311, 1
	addi	VirtualReg_313, VirtualReg_312, 1
	addi	VirtualReg_314, VirtualReg_313, 1
	addi	VirtualReg_315, VirtualReg_314, 1
	addi	VirtualReg_316, VirtualReg_315, 1
	addi	VirtualReg_317, VirtualReg_316, 1
	addi	VirtualReg_318, VirtualReg_317, 1
	addi	VirtualReg_319, VirtualReg_318, 1
	addi	VirtualReg_320, VirtualReg_319, 1
	addi	VirtualReg_321, VirtualReg_320, 1
	addi	VirtualReg_322, VirtualReg_321, 1
	addi	VirtualReg_323, VirtualReg_322, 1
	addi	VirtualReg_324, VirtualReg_323, 1
	addi	VirtualReg_325, VirtualReg_324, 1
	addi	VirtualReg_326, VirtualReg_325, 1
	addi	VirtualReg_327, VirtualReg_326, 1
	addi	VirtualReg_328, VirtualReg_327, 1
	addi	VirtualReg_329, VirtualReg_328, 1
	addi	VirtualReg_330, VirtualReg_329, 1
	addi	VirtualReg_331, VirtualReg_330, 1
	addi	VirtualReg_332, VirtualReg_331, 1
	addi	VirtualReg_333, VirtualReg_332, 1
	addi	VirtualReg_334, VirtualReg_333, 1
	addi	VirtualReg_335, VirtualReg_334, 1
	addi	VirtualReg_336, VirtualReg_335, 1
	addi	VirtualReg_337, VirtualReg_336, 1
	addi	VirtualReg_338, VirtualReg_337, 1
	addi	VirtualReg_339, VirtualReg_338, 1
	addi	VirtualReg_340, VirtualReg_339, 1
	addi	VirtualReg_341, VirtualReg_340, 1
	addi	VirtualReg_342, VirtualReg_341, 1
	addi	VirtualReg_343, VirtualReg_342, 1
	addi	VirtualReg_344, VirtualReg_343, 1
	addi	VirtualReg_345, VirtualReg_344, 1
	addi	VirtualReg_346, VirtualReg_345, 1
	addi	VirtualReg_347, VirtualReg_346, 1
	addi	VirtualReg_348, VirtualReg_347, 1
	addi	VirtualReg_349, VirtualReg_348, 1
	addi	VirtualReg_350, VirtualReg_349, 1
	addi	VirtualReg_351, VirtualReg_350, 1
	addi	VirtualReg_352, VirtualReg_351, 1
	addi	VirtualReg_353, VirtualReg_352, 1
	addi	VirtualReg_354, VirtualReg_353, 1
	addi	VirtualReg_355, VirtualReg_354, 1
	addi	VirtualReg_356, VirtualReg_355, 1
	addi	VirtualReg_357, VirtualReg_356, 1
	addi	VirtualReg_358, VirtualReg_357, 1
	addi	VirtualReg_359, VirtualReg_358, 1
	addi	VirtualReg_360, VirtualReg_359, 1
	addi	VirtualReg_361, VirtualReg_360, 1
	addi	VirtualReg_362, VirtualReg_361, 1
	addi	VirtualReg_363, VirtualReg_362, 1
	addi	VirtualReg_364, VirtualReg_363, 1
	addi	VirtualReg_365, VirtualReg_364, 1
	addi	VirtualReg_366, VirtualReg_365, 1
	addi	VirtualReg_367, VirtualReg_366, 1
	addi	VirtualReg_368, VirtualReg_367, 1
	addi	VirtualReg_369, VirtualReg_368, 1
	addi	VirtualReg_370, VirtualReg_369, 1
	addi	VirtualReg_371, VirtualReg_370, 1
	addi	VirtualReg_372, VirtualReg_371, 1
	addi	VirtualReg_373, VirtualReg_372, 1
	addi	VirtualReg_374, VirtualReg_373, 1
	addi	VirtualReg_375, VirtualReg_374, 1
	addi	VirtualReg_376, VirtualReg_375, 1
	addi	VirtualReg_377, VirtualReg_376, 1
	addi	VirtualReg_378, VirtualReg_377, 1
	addi	VirtualReg_379, VirtualReg_378, 1
	addi	VirtualReg_380, VirtualReg_379, 1
	addi	VirtualReg_381, VirtualReg_380, 1
	addi	VirtualReg_382, VirtualReg_381, 1
	addi	VirtualReg_383, VirtualReg_382, 1
	addi	VirtualReg_384, VirtualReg_383, 1
	addi	VirtualReg_385, VirtualReg_384, 1
	addi	VirtualReg_386, VirtualReg_385, 1
	addi	VirtualReg_387, VirtualReg_386, 1
	addi	VirtualReg_388, VirtualReg_387, 1
	addi	VirtualReg_389, VirtualReg_388, 1
	addi	VirtualReg_390, VirtualReg_389, 1
	addi	VirtualReg_391, VirtualReg_390, 1
	addi	VirtualReg_392, VirtualReg_391, 1
	addi	VirtualReg_393, VirtualReg_392, 1
	addi	VirtualReg_394, VirtualReg_393, 1
	addi	VirtualReg_395, VirtualReg_394, 1
	addi	VirtualReg_396, VirtualReg_395, 1
	addi	VirtualReg_397, VirtualReg_396, 1
	addi	VirtualReg_398, VirtualReg_397, 1
	addi	VirtualReg_399, VirtualReg_398, 1
	addi	VirtualReg_400, VirtualReg_399, 1
	addi	VirtualReg_401, VirtualReg_400, 1
	addi	VirtualReg_402, VirtualReg_401, 1
	addi	VirtualReg_403, VirtualReg_402, 1
	addi	VirtualReg_404, VirtualReg_403, 1
	addi	VirtualReg_405, VirtualReg_404, 1
	addi	VirtualReg_406, VirtualReg_405, 1
	addi	VirtualReg_407, VirtualReg_406, 1
	addi	VirtualReg_408, VirtualReg_407, 1
	addi	VirtualReg_409, VirtualReg_408, 1
	addi	VirtualReg_410, VirtualReg_409, 1
	addi	VirtualReg_411, VirtualReg_410, 1
	addi	VirtualReg_412, VirtualReg_411, 1
	addi	VirtualReg_413, VirtualReg_412, 1
	addi	VirtualReg_414, VirtualReg_413, 1
	addi	VirtualReg_415, VirtualReg_414, 1
	addi	VirtualReg_416, VirtualReg_415, 1
	addi	VirtualReg_417, VirtualReg_416, 1
	addi	VirtualReg_418, VirtualReg_417, 1
	addi	VirtualReg_419, VirtualReg_418, 1
	addi	VirtualReg_420, VirtualReg_419, 1
	addi	VirtualReg_421, VirtualReg_420, 1
	addi	VirtualReg_422, VirtualReg_421, 1
	addi	VirtualReg_423, VirtualReg_422, 1
	addi	VirtualReg_424, VirtualReg_423, 1
	addi	VirtualReg_425, VirtualReg_424, 1
	addi	VirtualReg_426, VirtualReg_425, 1
	addi	VirtualReg_427, VirtualReg_426, 1
	addi	VirtualReg_428, VirtualReg_427, 1
	addi	VirtualReg_429, VirtualReg_428, 1
	addi	VirtualReg_430, VirtualReg_429, 1
	addi	VirtualReg_431, VirtualReg_430, 1
	addi	VirtualReg_432, VirtualReg_431, 1
	addi	VirtualReg_433, VirtualReg_432, 1
	addi	VirtualReg_434, VirtualReg_433, 1
	addi	VirtualReg_435, VirtualReg_434, 1
	addi	VirtualReg_436, VirtualReg_435, 1
	addi	VirtualReg_437, VirtualReg_436, 1
	addi	VirtualReg_438, VirtualReg_437, 1
	addi	VirtualReg_439, VirtualReg_438, 1
	addi	VirtualReg_440, VirtualReg_439, 1
	addi	VirtualReg_441, VirtualReg_440, 1
	addi	VirtualReg_442, VirtualReg_441, 1
	addi	VirtualReg_443, VirtualReg_442, 1
	addi	VirtualReg_444, VirtualReg_443, 1
	addi	VirtualReg_445, VirtualReg_444, 1
	addi	VirtualReg_446, VirtualReg_445, 1
	addi	VirtualReg_447, VirtualReg_446, 1
	addi	VirtualReg_448, VirtualReg_447, 1
	addi	VirtualReg_449, VirtualReg_448, 1
	addi	VirtualReg_450, VirtualReg_449, 1
	addi	VirtualReg_451, VirtualReg_450, 1
	addi	VirtualReg_452, VirtualReg_451, 1
	addi	VirtualReg_453, VirtualReg_452, 1
	addi	VirtualReg_454, VirtualReg_453, 1
	addi	VirtualReg_455, VirtualReg_454, 1
	addi	VirtualReg_456, VirtualReg_455, 1
	addi	VirtualReg_457, VirtualReg_456, 1
	addi	VirtualReg_458, VirtualReg_457, 1
	addi	VirtualReg_459, VirtualReg_458, 1
	addi	VirtualReg_460, VirtualReg_459, 1
	addi	VirtualReg_461, VirtualReg_460, 1
	addi	VirtualReg_462, VirtualReg_461, 1
	addi	VirtualReg_463, VirtualReg_462, 1
	addi	VirtualReg_464, VirtualReg_463, 1
	addi	VirtualReg_465, VirtualReg_464, 1
	addi	VirtualReg_466, VirtualReg_465, 1
	addi	VirtualReg_467, VirtualReg_466, 1
	addi	VirtualReg_468, VirtualReg_467, 1
	addi	VirtualReg_469, VirtualReg_468, 1
	addi	VirtualReg_470, VirtualReg_469, 1
	addi	VirtualReg_471, VirtualReg_470, 1
	addi	VirtualReg_472, VirtualReg_471, 1
	addi	VirtualReg_473, VirtualReg_472, 1
	addi	VirtualReg_474, VirtualReg_473, 1
	addi	VirtualReg_475, VirtualReg_474, 1
	addi	VirtualReg_476, VirtualReg_475, 1
	addi	VirtualReg_477, VirtualReg_476, 1
	addi	VirtualReg_478, VirtualReg_477, 1
	addi	VirtualReg_479, VirtualReg_478, 1
	addi	VirtualReg_480, VirtualReg_479, 1
	addi	VirtualReg_481, VirtualReg_480, 1
	addi	VirtualReg_482, VirtualReg_481, 1
	addi	VirtualReg_483, VirtualReg_482, 1
	addi	VirtualReg_484, VirtualReg_483, 1
	addi	VirtualReg_485, VirtualReg_484, 1
	addi	VirtualReg_486, VirtualReg_485, 1
	addi	VirtualReg_487, VirtualReg_486, 1
	addi	VirtualReg_488, VirtualReg_487, 1
	addi	VirtualReg_489, VirtualReg_488, 1
	addi	VirtualReg_490, VirtualReg_489, 1
	addi	VirtualReg_491, VirtualReg_490, 1
	addi	VirtualReg_492, VirtualReg_491, 1
	addi	VirtualReg_493, VirtualReg_492, 1
	addi	VirtualReg_494, VirtualReg_493, 1
	addi	VirtualReg_495, VirtualReg_494, 1
	addi	VirtualReg_496, VirtualReg_495, 1
	addi	VirtualReg_497, VirtualReg_496, 1
	addi	VirtualReg_498, VirtualReg_497, 1
	addi	VirtualReg_499, VirtualReg_498, 1
	addi	VirtualReg_500, VirtualReg_499, 1
	addi	VirtualReg_501, VirtualReg_500, 1
	addi	VirtualReg_502, VirtualReg_501, 1
	addi	VirtualReg_503, VirtualReg_502, 1
	addi	VirtualReg_504, VirtualReg_503, 1
	addi	VirtualReg_505, VirtualReg_504, 1
	addi	VirtualReg_506, VirtualReg_505, 1
	addi	VirtualReg_507, VirtualReg_506, 1
	addi	VirtualReg_508, VirtualReg_507, 1
	addi	VirtualReg_509, VirtualReg_508, 1
	addi	VirtualReg_510, VirtualReg_509, 1
	addi	VirtualReg_511, VirtualReg_510, 1
	addi	VirtualReg_512, VirtualReg_511, 1
	addi	VirtualReg_513, VirtualReg_512, 1
	addi	VirtualReg_514, VirtualReg_513, 1
	addi	VirtualReg_515, VirtualReg_514, 1
	addi	VirtualReg_516, VirtualReg_515, 1
	addi	VirtualReg_517, VirtualReg_516, 1
	addi	VirtualReg_518, VirtualReg_517, 1
	addi	VirtualReg_519, VirtualReg_518, 1
	addi	VirtualReg_520, VirtualReg_519, 1
	addi	VirtualReg_521, VirtualReg_520, 1
	addi	VirtualReg_522, VirtualReg_521, 1
	addi	VirtualReg_523, VirtualReg_522, 1
	addi	VirtualReg_524, VirtualReg_523, 1
	addi	VirtualReg_525, VirtualReg_524, 1
	addi	VirtualReg_526, VirtualReg_525, 1
	addi	VirtualReg_527, VirtualReg_526, 1
	addi	VirtualReg_528, VirtualReg_527, 1
	addi	VirtualReg_529, VirtualReg_528, 1
	addi	VirtualReg_530, VirtualReg_529, 1
	addi	VirtualReg_531, VirtualReg_530, 1
	addi	VirtualReg_532, VirtualReg_531, 1
	addi	VirtualReg_533, VirtualReg_532, 1
	addi	VirtualReg_534, VirtualReg_533, 1
	addi	VirtualReg_535, VirtualReg_534, 1
	addi	VirtualReg_536, VirtualReg_535, 1
	addi	VirtualReg_537, VirtualReg_536, 1
	addi	VirtualReg_538, VirtualReg_537, 1
	addi	VirtualReg_539, VirtualReg_538, 1
	addi	VirtualReg_540, VirtualReg_539, 1
	addi	VirtualReg_541, VirtualReg_540, 1
	addi	VirtualReg_542, VirtualReg_541, 1
	addi	VirtualReg_543, VirtualReg_542, 1
	addi	VirtualReg_544, VirtualReg_543, 1
	addi	VirtualReg_545, VirtualReg_544, 1
	addi	VirtualReg_546, VirtualReg_545, 1
	addi	VirtualReg_547, VirtualReg_546, 1
	addi	VirtualReg_548, VirtualReg_547, 1
	addi	VirtualReg_549, VirtualReg_548, 1
	addi	VirtualReg_550, VirtualReg_549, 1
	addi	VirtualReg_551, VirtualReg_550, 1
	addi	VirtualReg_552, VirtualReg_551, 1
	addi	VirtualReg_553, VirtualReg_552, 1
	addi	VirtualReg_554, VirtualReg_553, 1
	addi	VirtualReg_555, VirtualReg_554, 1
	addi	VirtualReg_556, VirtualReg_555, 1
	addi	VirtualReg_557, VirtualReg_556, 1
	addi	VirtualReg_558, VirtualReg_557, 1
	addi	VirtualReg_559, VirtualReg_558, 1
	addi	VirtualReg_560, VirtualReg_559, 1
	addi	VirtualReg_561, VirtualReg_560, 1
	addi	VirtualReg_562, VirtualReg_561, 1
	addi	VirtualReg_563, VirtualReg_562, 1
	addi	VirtualReg_564, VirtualReg_563, 1
	addi	VirtualReg_565, VirtualReg_564, 1
	addi	VirtualReg_566, VirtualReg_565, 1
	addi	VirtualReg_567, VirtualReg_566, 1
	addi	VirtualReg_568, VirtualReg_567, 1
	addi	VirtualReg_569, VirtualReg_568, 1
	addi	VirtualReg_570, VirtualReg_569, 1
	addi	VirtualReg_571, VirtualReg_570, 1
	addi	VirtualReg_572, VirtualReg_571, 1
	addi	VirtualReg_573, VirtualReg_572, 1
	addi	VirtualReg_574, VirtualReg_573, 1
	addi	VirtualReg_575, VirtualReg_574, 1
	addi	VirtualReg_576, VirtualReg_575, 1
	addi	VirtualReg_577, VirtualReg_576, 1
	addi	VirtualReg_578, VirtualReg_577, 1
	addi	VirtualReg_579, VirtualReg_578, 1
	addi	VirtualReg_580, VirtualReg_579, 1
	addi	VirtualReg_581, VirtualReg_580, 1
	addi	VirtualReg_582, VirtualReg_581, 1
	addi	VirtualReg_583, VirtualReg_582, 1
	addi	VirtualReg_584, VirtualReg_583, 1
	addi	VirtualReg_585, VirtualReg_584, 1
	addi	VirtualReg_586, VirtualReg_585, 1
	addi	VirtualReg_587, VirtualReg_586, 1
	addi	VirtualReg_588, VirtualReg_587, 1
	addi	VirtualReg_589, VirtualReg_588, 1
	addi	VirtualReg_590, VirtualReg_589, 1
	addi	VirtualReg_591, VirtualReg_590, 1
	addi	VirtualReg_592, VirtualReg_591, 1
	addi	VirtualReg_593, VirtualReg_592, 1
	addi	VirtualReg_594, VirtualReg_593, 1
	addi	VirtualReg_595, VirtualReg_594, 1
	addi	VirtualReg_596, VirtualReg_595, 1
	addi	VirtualReg_597, VirtualReg_596, 1
	addi	VirtualReg_598, VirtualReg_597, 1
	addi	VirtualReg_599, VirtualReg_598, 1
	addi	VirtualReg_600, VirtualReg_599, 1
	addi	VirtualReg_601, VirtualReg_600, 1
	addi	VirtualReg_602, VirtualReg_601, 1
	addi	VirtualReg_603, VirtualReg_602, 1
	addi	VirtualReg_604, VirtualReg_603, 1
	addi	VirtualReg_605, VirtualReg_604, 1
	addi	VirtualReg_606, VirtualReg_605, 1
	addi	VirtualReg_607, VirtualReg_606, 1
	addi	VirtualReg_608, VirtualReg_607, 1
	addi	VirtualReg_609, VirtualReg_608, 1
	addi	VirtualReg_610, VirtualReg_609, 1
	addi	VirtualReg_611, VirtualReg_610, 1
	addi	VirtualReg_612, VirtualReg_611, 1
	addi	VirtualReg_613, VirtualReg_612, 1
	addi	VirtualReg_614, VirtualReg_613, 1
	addi	VirtualReg_615, VirtualReg_614, 1
	addi	VirtualReg_616, VirtualReg_615, 1
	addi	VirtualReg_617, VirtualReg_616, 1
	addi	VirtualReg_618, VirtualReg_617, 1
	addi	VirtualReg_619, VirtualReg_618, 1
	addi	VirtualReg_620, VirtualReg_619, 1
	addi	VirtualReg_621, VirtualReg_620, 1
	addi	VirtualReg_622, VirtualReg_621, 1
	addi	VirtualReg_623, VirtualReg_622, 1
	addi	VirtualReg_624, VirtualReg_623, 1
	addi	VirtualReg_625, VirtualReg_624, 1
	addi	VirtualReg_626, VirtualReg_625, 1
	addi	VirtualReg_627, VirtualReg_626, 1
	addi	VirtualReg_628, VirtualReg_627, 1
	addi	VirtualReg_629, VirtualReg_628, 1
	addi	VirtualReg_630, VirtualReg_629, 1
	addi	VirtualReg_631, VirtualReg_630, 1
	addi	VirtualReg_632, VirtualReg_631, 1
	addi	VirtualReg_633, VirtualReg_632, 1
	addi	VirtualReg_634, VirtualReg_633, 1
	addi	VirtualReg_635, VirtualReg_634, 1
	addi	VirtualReg_636, VirtualReg_635, 1
	addi	VirtualReg_637, VirtualReg_636, 1
	addi	VirtualReg_638, VirtualReg_637, 1
	addi	VirtualReg_639, VirtualReg_638, 1
	addi	VirtualReg_640, VirtualReg_639, 1
	addi	VirtualReg_641, VirtualReg_640, 1
	addi	VirtualReg_642, VirtualReg_641, 1
	addi	VirtualReg_643, VirtualReg_642, 1
	addi	VirtualReg_644, VirtualReg_643, 1
	addi	VirtualReg_645, VirtualReg_644, 1
	addi	VirtualReg_646, VirtualReg_645, 1
	addi	VirtualReg_647, VirtualReg_646, 1
	addi	VirtualReg_648, VirtualReg_647, 1
	addi	VirtualReg_649, VirtualReg_648, 1
	addi	VirtualReg_650, VirtualReg_649, 1
	addi	VirtualReg_651, VirtualReg_650, 1
	addi	VirtualReg_652, VirtualReg_651, 1
	addi	VirtualReg_653, VirtualReg_652, 1
	addi	VirtualReg_654, VirtualReg_653, 1
	addi	VirtualReg_655, VirtualReg_654, 1
	addi	VirtualReg_656, VirtualReg_655, 1
	addi	VirtualReg_657, VirtualReg_656, 1
	addi	VirtualReg_658, VirtualReg_657, 1
	addi	VirtualReg_659, VirtualReg_658, 1
	addi	VirtualReg_660, VirtualReg_659, 1
	addi	VirtualReg_661, VirtualReg_660, 1
	addi	VirtualReg_662, VirtualReg_661, 1
	addi	VirtualReg_663, VirtualReg_662, 1
	addi	VirtualReg_664, VirtualReg_663, 1
	addi	VirtualReg_665, VirtualReg_664, 1
	addi	VirtualReg_666, VirtualReg_665, 1
	addi	VirtualReg_667, VirtualReg_666, 1
	addi	VirtualReg_668, VirtualReg_667, 1
	addi	VirtualReg_669, VirtualReg_668, 1
	addi	VirtualReg_670, VirtualReg_669, 1
	addi	VirtualReg_671, VirtualReg_670, 1
	addi	VirtualReg_672, VirtualReg_671, 1
	addi	VirtualReg_673, VirtualReg_672, 1
	addi	VirtualReg_674, VirtualReg_673, 1
	addi	VirtualReg_675, VirtualReg_674, 1
	addi	VirtualReg_676, VirtualReg_675, 1
	addi	VirtualReg_677, VirtualReg_676, 1
	addi	VirtualReg_678, VirtualReg_677, 1
	addi	VirtualReg_679, VirtualReg_678, 1
	addi	VirtualReg_680, VirtualReg_679, 1
	addi	VirtualReg_681, VirtualReg_680, 1
	addi	VirtualReg_682, VirtualReg_681, 1
	addi	VirtualReg_683, VirtualReg_682, 1
	addi	VirtualReg_684, VirtualReg_683, 1
	addi	VirtualReg_685, VirtualReg_684, 1
	addi	VirtualReg_686, VirtualReg_685, 1
	addi	VirtualReg_687, VirtualReg_686, 1
	addi	VirtualReg_688, VirtualReg_687, 1
	addi	VirtualReg_689, VirtualReg_688, 1
	addi	VirtualReg_690, VirtualReg_689, 1
	addi	VirtualReg_691, VirtualReg_690, 1
	addi	VirtualReg_692, VirtualReg_691, 1
	addi	VirtualReg_693, VirtualReg_692, 1
	addi	VirtualReg_694, VirtualReg_693, 1
	addi	VirtualReg_695, VirtualReg_694, 1
	addi	VirtualReg_696, VirtualReg_695, 1
	addi	VirtualReg_697, VirtualReg_696, 1
	addi	VirtualReg_698, VirtualReg_697, 1
	addi	VirtualReg_699, VirtualReg_698, 1
	addi	VirtualReg_700, VirtualReg_699, 1
	addi	VirtualReg_701, VirtualReg_700, 1
	addi	VirtualReg_702, VirtualReg_701, 1
	addi	VirtualReg_703, VirtualReg_702, 1
	addi	VirtualReg_704, VirtualReg_703, 1
	addi	VirtualReg_705, VirtualReg_704, 1
	addi	VirtualReg_706, VirtualReg_705, 1
	addi	VirtualReg_707, VirtualReg_706, 1
	addi	VirtualReg_708, VirtualReg_707, 1
	addi	VirtualReg_709, VirtualReg_708, 1
	addi	VirtualReg_710, VirtualReg_709, 1
	addi	VirtualReg_711, VirtualReg_710, 1
	addi	VirtualReg_712, VirtualReg_711, 1
	addi	VirtualReg_713, VirtualReg_712, 1
	addi	VirtualReg_714, VirtualReg_713, 1
	addi	VirtualReg_715, VirtualReg_714, 1
	addi	VirtualReg_716, VirtualReg_715, 1
	addi	VirtualReg_717, VirtualReg_716, 1
	addi	VirtualReg_718, VirtualReg_717, 1
	addi	VirtualReg_719, VirtualReg_718, 1
	addi	VirtualReg_720, VirtualReg_719, 1
	addi	VirtualReg_721, VirtualReg_720, 1
	addi	VirtualReg_722, VirtualReg_721, 1
	addi	VirtualReg_723, VirtualReg_722, 1
	addi	VirtualReg_724, VirtualReg_723, 1
	addi	VirtualReg_725, VirtualReg_724, 1
	addi	VirtualReg_726, VirtualReg_725, 1
	addi	VirtualReg_727, VirtualReg_726, 1
	addi	VirtualReg_728, VirtualReg_727, 1
	addi	VirtualReg_729, VirtualReg_728, 1
	addi	VirtualReg_730, VirtualReg_729, 1
	addi	VirtualReg_731, VirtualReg_730, 1
	addi	VirtualReg_732, VirtualReg_731, 1
	addi	VirtualReg_733, VirtualReg_732, 1
	addi	VirtualReg_734, VirtualReg_733, 1
	addi	VirtualReg_735, VirtualReg_734, 1
	addi	VirtualReg_736, VirtualReg_735, 1
	addi	VirtualReg_737, VirtualReg_736, 1
	addi	VirtualReg_738, VirtualReg_737, 1
	addi	VirtualReg_739, VirtualReg_738, 1
	addi	VirtualReg_740, VirtualReg_739, 1
	addi	VirtualReg_741, VirtualReg_740, 1
	addi	VirtualReg_742, VirtualReg_741, 1
	addi	VirtualReg_743, VirtualReg_742, 1
	addi	VirtualReg_744, VirtualReg_743, 1
	addi	VirtualReg_745, VirtualReg_744, 1
	addi	VirtualReg_746, VirtualReg_745, 1
	addi	VirtualReg_747, VirtualReg_746, 1
	addi	VirtualReg_748, VirtualReg_747, 1
	addi	VirtualReg_749, VirtualReg_748, 1
	addi	VirtualReg_750, VirtualReg_749, 1
	addi	VirtualReg_751, VirtualReg_750, 1
	addi	VirtualReg_752, VirtualReg_751, 1
	addi	VirtualReg_753, VirtualReg_752, 1
	addi	VirtualReg_754, VirtualReg_753, 1
	addi	VirtualReg_755, VirtualReg_754, 1
	addi	VirtualReg_756, VirtualReg_755, 1
	addi	VirtualReg_757, VirtualReg_756, 1
	addi	VirtualReg_758, VirtualReg_757, 1
	addi	VirtualReg_759, VirtualReg_758, 1
	addi	VirtualReg_760, VirtualReg_759, 1
	addi	VirtualReg_761, VirtualReg_760, 1
	addi	VirtualReg_762, VirtualReg_761, 1
	addi	VirtualReg_763, VirtualReg_762, 1
	addi	VirtualReg_764, VirtualReg_763, 1
	addi	VirtualReg_765, VirtualReg_764, 1
	addi	VirtualReg_766, VirtualReg_765, 1
	addi	VirtualReg_767, VirtualReg_766, 1
	addi	VirtualReg_768, VirtualReg_767, 1
	addi	VirtualReg_769, VirtualReg_768, 1
	addi	VirtualReg_770, VirtualReg_769, 1
	addi	VirtualReg_771, VirtualReg_770, 1
	addi	VirtualReg_772, VirtualReg_771, 1
	addi	VirtualReg_773, VirtualReg_772, 1
	addi	VirtualReg_774, VirtualReg_773, 1
	addi	VirtualReg_775, VirtualReg_774, 1
	addi	VirtualReg_776, VirtualReg_775, 1
	addi	VirtualReg_777, VirtualReg_776, 1
	addi	VirtualReg_778, VirtualReg_777, 1
	addi	VirtualReg_779, VirtualReg_778, 1
	addi	VirtualReg_780, VirtualReg_779, 1
	addi	VirtualReg_781, VirtualReg_780, 1
	addi	VirtualReg_782, VirtualReg_781, 1
	addi	VirtualReg_783, VirtualReg_782, 1
	addi	VirtualReg_784, VirtualReg_783, 1
	addi	VirtualReg_785, VirtualReg_784, 1
	addi	VirtualReg_786, VirtualReg_785, 1
	addi	VirtualReg_787, VirtualReg_786, 1
	addi	VirtualReg_788, VirtualReg_787, 1
	addi	VirtualReg_789, VirtualReg_788, 1
	addi	VirtualReg_790, VirtualReg_789, 1
	addi	VirtualReg_791, VirtualReg_790, 1
	addi	VirtualReg_792, VirtualReg_791, 1
	addi	VirtualReg_793, VirtualReg_792, 1
	addi	VirtualReg_794, VirtualReg_793, 1
	addi	VirtualReg_795, VirtualReg_794, 1
	addi	VirtualReg_796, VirtualReg_795, 1
	addi	VirtualReg_797, VirtualReg_796, 1
	addi	VirtualReg_798, VirtualReg_797, 1
	addi	VirtualReg_799, VirtualReg_798, 1
	addi	VirtualReg_800, VirtualReg_799, 1
	addi	VirtualReg_801, VirtualReg_800, 1
	addi	VirtualReg_802, VirtualReg_801, 1
	addi	VirtualReg_803, VirtualReg_802, 1
	addi	VirtualReg_804, VirtualReg_803, 1
	addi	VirtualReg_805, VirtualReg_804, 1
	addi	VirtualReg_806, VirtualReg_805, 1
	addi	VirtualReg_807, VirtualReg_806, 1
	addi	VirtualReg_808, VirtualReg_807, 1
	addi	VirtualReg_809, VirtualReg_808, 1
	addi	VirtualReg_810, VirtualReg_809, 1
	addi	VirtualReg_811, VirtualReg_810, 1
	addi	VirtualReg_812, VirtualReg_811, 1
	addi	VirtualReg_813, VirtualReg_812, 1
	addi	VirtualReg_814, VirtualReg_813, 1
	addi	VirtualReg_815, VirtualReg_814, 1
	addi	VirtualReg_816, VirtualReg_815, 1
	addi	VirtualReg_817, VirtualReg_816, 1
	addi	VirtualReg_818, VirtualReg_817, 1
	addi	VirtualReg_819, VirtualReg_818, 1
	addi	VirtualReg_820, VirtualReg_819, 1
	addi	VirtualReg_821, VirtualReg_820, 1
	addi	VirtualReg_822, VirtualReg_821, 1
	addi	VirtualReg_823, VirtualReg_822, 1
	addi	VirtualReg_824, VirtualReg_823, 1
	addi	VirtualReg_825, VirtualReg_824, 1
	addi	VirtualReg_826, VirtualReg_825, 1
	addi	VirtualReg_827, VirtualReg_826, 1
	addi	VirtualReg_828, VirtualReg_827, 1
	addi	VirtualReg_829, VirtualReg_828, 1
	addi	VirtualReg_830, VirtualReg_829, 1
	addi	VirtualReg_831, VirtualReg_830, 1
	addi	VirtualReg_832, VirtualReg_831, 1
	addi	VirtualReg_833, VirtualReg_832, 1
	addi	VirtualReg_834, VirtualReg_833, 1
	addi	VirtualReg_835, VirtualReg_834, 1
	addi	VirtualReg_836, VirtualReg_835, 1
	addi	VirtualReg_837, VirtualReg_836, 1
	addi	VirtualReg_838, VirtualReg_837, 1
	addi	VirtualReg_839, VirtualReg_838, 1
	addi	VirtualReg_840, VirtualReg_839, 1
	addi	VirtualReg_841, VirtualReg_840, 1
	addi	VirtualReg_842, VirtualReg_841, 1
	addi	VirtualReg_843, VirtualReg_842, 1
	addi	VirtualReg_844, VirtualReg_843, 1
	addi	VirtualReg_845, VirtualReg_844, 1
	addi	VirtualReg_846, VirtualReg_845, 1
	addi	VirtualReg_847, VirtualReg_846, 1
	addi	VirtualReg_848, VirtualReg_847, 1
	addi	VirtualReg_849, VirtualReg_848, 1
	addi	VirtualReg_850, VirtualReg_849, 1
	addi	VirtualReg_851, VirtualReg_850, 1
	addi	VirtualReg_852, VirtualReg_851, 1
	addi	VirtualReg_853, VirtualReg_852, 1
	addi	VirtualReg_854, VirtualReg_853, 1
	addi	VirtualReg_855, VirtualReg_854, 1
	addi	VirtualReg_856, VirtualReg_855, 1
	addi	VirtualReg_857, VirtualReg_856, 1
	addi	VirtualReg_858, VirtualReg_857, 1
	addi	VirtualReg_859, VirtualReg_858, 1
	addi	VirtualReg_860, VirtualReg_859, 1
	addi	VirtualReg_861, VirtualReg_860, 1
	addi	VirtualReg_862, VirtualReg_861, 1
	addi	VirtualReg_863, VirtualReg_862, 1
	addi	VirtualReg_864, VirtualReg_863, 1
	addi	VirtualReg_865, VirtualReg_864, 1
	addi	VirtualReg_866, VirtualReg_865, 1
	addi	VirtualReg_867, VirtualReg_866, 1
	addi	VirtualReg_868, VirtualReg_867, 1
	addi	VirtualReg_869, VirtualReg_868, 1
	addi	VirtualReg_870, VirtualReg_869, 1
	addi	VirtualReg_871, VirtualReg_870, 1
	addi	VirtualReg_872, VirtualReg_871, 1
	addi	VirtualReg_873, VirtualReg_872, 1
	addi	VirtualReg_874, VirtualReg_873, 1
	addi	VirtualReg_875, VirtualReg_874, 1
	addi	VirtualReg_876, VirtualReg_875, 1
	addi	VirtualReg_877, VirtualReg_876, 1
	addi	VirtualReg_878, VirtualReg_877, 1
	addi	VirtualReg_879, VirtualReg_878, 1
	addi	VirtualReg_880, VirtualReg_879, 1
	addi	VirtualReg_881, VirtualReg_880, 1
	addi	VirtualReg_882, VirtualReg_881, 1
	addi	VirtualReg_883, VirtualReg_882, 1
	addi	VirtualReg_884, VirtualReg_883, 1
	addi	VirtualReg_885, VirtualReg_884, 1
	addi	VirtualReg_886, VirtualReg_885, 1
	addi	VirtualReg_887, VirtualReg_886, 1
	addi	VirtualReg_888, VirtualReg_887, 1
	addi	VirtualReg_889, VirtualReg_888, 1
	addi	VirtualReg_890, VirtualReg_889, 1
	addi	VirtualReg_891, VirtualReg_890, 1
	addi	VirtualReg_892, VirtualReg_891, 1
	addi	VirtualReg_893, VirtualReg_892, 1
	addi	VirtualReg_894, VirtualReg_893, 1
	addi	VirtualReg_895, VirtualReg_894, 1
	addi	VirtualReg_896, VirtualReg_895, 1
	addi	VirtualReg_897, VirtualReg_896, 1
	addi	VirtualReg_898, VirtualReg_897, 1
	addi	VirtualReg_899, VirtualReg_898, 1
	addi	VirtualReg_900, VirtualReg_899, 1
	addi	VirtualReg_901, VirtualReg_900, 1
	addi	VirtualReg_902, VirtualReg_901, 1
	addi	VirtualReg_903, VirtualReg_902, 1
	addi	VirtualReg_904, VirtualReg_903, 1
	addi	VirtualReg_905, VirtualReg_904, 1
	addi	VirtualReg_906, VirtualReg_905, 1
	addi	VirtualReg_907, VirtualReg_906, 1
	addi	VirtualReg_908, VirtualReg_907, 1
	addi	VirtualReg_909, VirtualReg_908, 1
	addi	VirtualReg_910, VirtualReg_909, 1
	addi	VirtualReg_911, VirtualReg_910, 1
	addi	VirtualReg_912, VirtualReg_911, 1
	addi	VirtualReg_913, VirtualReg_912, 1
	addi	VirtualReg_914, VirtualReg_913, 1
	addi	VirtualReg_915, VirtualReg_914, 1
	addi	VirtualReg_916, VirtualReg_915, 1
	addi	VirtualReg_917, VirtualReg_916, 1
	addi	VirtualReg_918, VirtualReg_917, 1
	addi	VirtualReg_919, VirtualReg_918, 1
	addi	VirtualReg_920, VirtualReg_919, 1
	addi	VirtualReg_921, VirtualReg_920, 1
	addi	VirtualReg_922, VirtualReg_921, 1
	addi	VirtualReg_923, VirtualReg_922, 1
	addi	VirtualReg_924, VirtualReg_923, 1
	addi	VirtualReg_925, VirtualReg_924, 1
	addi	VirtualReg_926, VirtualReg_925, 1
	addi	VirtualReg_927, VirtualReg_926, 1
	addi	VirtualReg_928, VirtualReg_927, 1
	addi	VirtualReg_929, VirtualReg_928, 1
	addi	VirtualReg_930, VirtualReg_929, 1
	addi	VirtualReg_931, VirtualReg_930, 1
	addi	VirtualReg_932, VirtualReg_931, 1
	addi	VirtualReg_933, VirtualReg_932, 1
	addi	VirtualReg_934, VirtualReg_933, 1
	addi	VirtualReg_935, VirtualReg_934, 1
	addi	VirtualReg_936, VirtualReg_935, 1
	addi	VirtualReg_937, VirtualReg_936, 1
	addi	VirtualReg_938, VirtualReg_937, 1
	addi	VirtualReg_939, VirtualReg_938, 1
	addi	VirtualReg_940, VirtualReg_939, 1
	addi	VirtualReg_941, VirtualReg_940, 1
	addi	VirtualReg_942, VirtualReg_941, 1
	addi	VirtualReg_943, VirtualReg_942, 1
	addi	VirtualReg_944, VirtualReg_943, 1
	addi	VirtualReg_945, VirtualReg_944, 1
	addi	VirtualReg_946, VirtualReg_945, 1
	addi	VirtualReg_947, VirtualReg_946, 1
	addi	VirtualReg_948, VirtualReg_947, 1
	addi	VirtualReg_949, VirtualReg_948, 1
	addi	VirtualReg_950, VirtualReg_949, 1
	addi	VirtualReg_951, VirtualReg_950, 1
	addi	VirtualReg_952, VirtualReg_951, 1
	addi	VirtualReg_953, VirtualReg_952, 1
	addi	VirtualReg_954, VirtualReg_953, 1
	addi	VirtualReg_955, VirtualReg_954, 1
	addi	VirtualReg_956, VirtualReg_955, 1
	addi	VirtualReg_957, VirtualReg_956, 1
	addi	VirtualReg_958, VirtualReg_957, 1
	addi	VirtualReg_959, VirtualReg_958, 1
	addi	VirtualReg_960, VirtualReg_959, 1
	addi	VirtualReg_961, VirtualReg_960, 1
	addi	VirtualReg_962, VirtualReg_961, 1
	addi	VirtualReg_963, VirtualReg_962, 1
	addi	VirtualReg_964, VirtualReg_963, 1
	addi	VirtualReg_965, VirtualReg_964, 1
	addi	VirtualReg_966, VirtualReg_965, 1
	addi	VirtualReg_967, VirtualReg_966, 1
	addi	VirtualReg_968, VirtualReg_967, 1
	addi	VirtualReg_969, VirtualReg_968, 1
	addi	VirtualReg_970, VirtualReg_969, 1
	addi	VirtualReg_971, VirtualReg_970, 1
	addi	VirtualReg_972, VirtualReg_971, 1
	addi	VirtualReg_973, VirtualReg_972, 1
	addi	VirtualReg_974, VirtualReg_973, 1
	addi	VirtualReg_975, VirtualReg_974, 1
	addi	VirtualReg_976, VirtualReg_975, 1
	addi	VirtualReg_977, VirtualReg_976, 1
	addi	VirtualReg_978, VirtualReg_977, 1
	addi	VirtualReg_979, VirtualReg_978, 1
	addi	VirtualReg_980, VirtualReg_979, 1
	addi	VirtualReg_981, VirtualReg_980, 1
	addi	VirtualReg_982, VirtualReg_981, 1
	addi	VirtualReg_983, VirtualReg_982, 1
	addi	VirtualReg_984, VirtualReg_983, 1
	addi	VirtualReg_985, VirtualReg_984, 1
	addi	VirtualReg_986, VirtualReg_985, 1
	addi	VirtualReg_987, VirtualReg_986, 1
	addi	VirtualReg_988, VirtualReg_987, 1
	addi	VirtualReg_989, VirtualReg_988, 1
	addi	VirtualReg_990, VirtualReg_989, 1
	addi	VirtualReg_991, VirtualReg_990, 1
	addi	VirtualReg_992, VirtualReg_991, 1
	addi	VirtualReg_993, VirtualReg_992, 1
	addi	VirtualReg_994, VirtualReg_993, 1
	addi	VirtualReg_995, VirtualReg_994, 1
	addi	VirtualReg_996, VirtualReg_995, 1
	addi	VirtualReg_997, VirtualReg_996, 1
	addi	VirtualReg_998, VirtualReg_997, 1
	addi	VirtualReg_999, VirtualReg_998, 1
	addi	VirtualReg_1000, VirtualReg_999, 1
	addi	VirtualReg_1001, VirtualReg_1000, 1
	addi	VirtualReg_1002, VirtualReg_1001, 1
	addi	VirtualReg_1003, VirtualReg_1002, 1
	addi	VirtualReg_1004, VirtualReg_1003, 1
	addi	VirtualReg_1005, VirtualReg_1004, 1
	addi	VirtualReg_1006, VirtualReg_1005, 1
	addi	VirtualReg_1007, VirtualReg_1006, 1
	addi	VirtualReg_1008, VirtualReg_1007, 1
	addi	VirtualReg_1009, VirtualReg_1008, 1
	addi	VirtualReg_1010, VirtualReg_1009, 1
	addi	VirtualReg_1011, VirtualReg_1010, 1
	addi	VirtualReg_1012, VirtualReg_1011, 1
	addi	VirtualReg_1013, VirtualReg_1012, 1
	addi	VirtualReg_1014, VirtualReg_1013, 1
	addi	VirtualReg_1015, VirtualReg_1014, 1
	addi	VirtualReg_1016, VirtualReg_1015, 1
	addi	VirtualReg_1017, VirtualReg_1016, 1
	addi	VirtualReg_1018, VirtualReg_1017, 1
	addi	VirtualReg_1019, VirtualReg_1018, 1
	addi	VirtualReg_1020, VirtualReg_1019, 1
	addi	VirtualReg_1021, VirtualReg_1020, 1
	addi	VirtualReg_1022, VirtualReg_1021, 1
	addi	VirtualReg_1023, VirtualReg_1022, 1
	addi	VirtualReg_1024, VirtualReg_1023, 1
	addi	VirtualReg_1025, VirtualReg_1024, 1
	addi	VirtualReg_1026, VirtualReg_1025, 1
	addi	VirtualReg_1027, VirtualReg_1026, 1
	addi	VirtualReg_1028, VirtualReg_1027, 1
	addi	VirtualReg_1029, VirtualReg_1028, 1
	addi	VirtualReg_1030, VirtualReg_1029, 1
	addi	VirtualReg_1031, VirtualReg_1030, 1
	addi	VirtualReg_1032, VirtualReg_1031, 1
	addi	VirtualReg_1033, VirtualReg_1032, 1
	addi	VirtualReg_1034, VirtualReg_1033, 1
	addi	VirtualReg_1035, VirtualReg_1034, 1
	addi	VirtualReg_1036, VirtualReg_1035, 1
	addi	VirtualReg_1037, VirtualReg_1036, 1
	addi	VirtualReg_1038, VirtualReg_1037, 1
	addi	VirtualReg_1039, VirtualReg_1038, 1
	addi	VirtualReg_1040, VirtualReg_1039, 1
	addi	VirtualReg_1041, VirtualReg_1040, 1
	addi	VirtualReg_1042, VirtualReg_1041, 1
	addi	VirtualReg_1043, VirtualReg_1042, 1
	addi	VirtualReg_1044, VirtualReg_1043, 1
	addi	VirtualReg_1045, VirtualReg_1044, 1
	addi	VirtualReg_1046, VirtualReg_1045, 1
	addi	VirtualReg_1047, VirtualReg_1046, 1
	addi	VirtualReg_1048, VirtualReg_1047, 1
	addi	VirtualReg_1049, VirtualReg_1048, 1
	addi	VirtualReg_1050, VirtualReg_1049, 1
	addi	VirtualReg_1051, VirtualReg_1050, 1
	addi	VirtualReg_1052, VirtualReg_1051, 1
	addi	VirtualReg_1053, VirtualReg_1052, 1
	addi	VirtualReg_1054, VirtualReg_1053, 1
	addi	VirtualReg_1055, VirtualReg_1054, 1
	addi	VirtualReg_1056, VirtualReg_1055, 1
	addi	VirtualReg_1057, VirtualReg_1056, 1
	addi	VirtualReg_1058, VirtualReg_1057, 1
	addi	VirtualReg_1059, VirtualReg_1058, 1
	addi	VirtualReg_1060, VirtualReg_1059, 1
	addi	VirtualReg_1061, VirtualReg_1060, 1
	addi	VirtualReg_1062, VirtualReg_1061, 1
	addi	VirtualReg_1063, VirtualReg_1062, 1
	addi	VirtualReg_1064, VirtualReg_1063, 1
	addi	VirtualReg_1065, VirtualReg_1064, 1
	addi	VirtualReg_1066, VirtualReg_1065, 1
	addi	VirtualReg_1067, VirtualReg_1066, 1
	addi	VirtualReg_1068, VirtualReg_1067, 1
	addi	VirtualReg_1069, VirtualReg_1068, 1
	addi	VirtualReg_1070, VirtualReg_1069, 1
	addi	VirtualReg_1071, VirtualReg_1070, 1
	addi	VirtualReg_1072, VirtualReg_1071, 1
	addi	VirtualReg_1073, VirtualReg_1072, 1
	addi	VirtualReg_1074, VirtualReg_1073, 1
	addi	VirtualReg_1075, VirtualReg_1074, 1
	addi	VirtualReg_1076, VirtualReg_1075, 1
	addi	VirtualReg_1077, VirtualReg_1076, 1
	addi	VirtualReg_1078, VirtualReg_1077, 1
	addi	VirtualReg_1079, VirtualReg_1078, 1
	addi	VirtualReg_1080, VirtualReg_1079, 1
	addi	VirtualReg_1081, VirtualReg_1080, 1
	addi	VirtualReg_1082, VirtualReg_1081, 1
	addi	VirtualReg_1083, VirtualReg_1082, 1
	addi	VirtualReg_1084, VirtualReg_1083, 1
	addi	VirtualReg_1085, VirtualReg_1084, 1
	addi	VirtualReg_1086, VirtualReg_1085, 1
	addi	VirtualReg_1087, VirtualReg_1086, 1
	addi	VirtualReg_1088, VirtualReg_1087, 1
	addi	VirtualReg_1089, VirtualReg_1088, 1
	addi	VirtualReg_1090, VirtualReg_1089, 1
	addi	VirtualReg_1091, VirtualReg_1090, 1
	addi	VirtualReg_1092, VirtualReg_1091, 1
	addi	VirtualReg_1093, VirtualReg_1092, 1
	addi	VirtualReg_1094, VirtualReg_1093, 1
	addi	VirtualReg_1095, VirtualReg_1094, 1
	addi	VirtualReg_1096, VirtualReg_1095, 1
	addi	VirtualReg_1097, VirtualReg_1096, 1
	addi	VirtualReg_1098, VirtualReg_1097, 1
	addi	VirtualReg_1099, VirtualReg_1098, 1
	addi	VirtualReg_1100, VirtualReg_1099, 1
	addi	VirtualReg_1101, VirtualReg_1100, 1
	addi	VirtualReg_1102, VirtualReg_1101, 1
	addi	VirtualReg_1103, VirtualReg_1102, 1
	addi	VirtualReg_1104, VirtualReg_1103, 1
	addi	VirtualReg_1105, VirtualReg_1104, 1
	addi	VirtualReg_1106, VirtualReg_1105, 1
	addi	VirtualReg_1107, VirtualReg_1106, 1
	addi	VirtualReg_1108, VirtualReg_1107, 1
	addi	VirtualReg_1109, VirtualReg_1108, 1
	addi	VirtualReg_1110, VirtualReg_1109, 1
	addi	VirtualReg_1111, VirtualReg_1110, 1
	addi	VirtualReg_1112, VirtualReg_1111, 1
	addi	VirtualReg_1113, VirtualReg_1112, 1
	addi	VirtualReg_1114, VirtualReg_1113, 1
	addi	VirtualReg_1115, VirtualReg_1114, 1
	addi	VirtualReg_1116, VirtualReg_1115, 1
	addi	VirtualReg_1117, VirtualReg_1116, 1
	addi	VirtualReg_1118, VirtualReg_1117, 1
	addi	VirtualReg_1119, VirtualReg_1118, 1
	addi	VirtualReg_1120, VirtualReg_1119, 1
	addi	VirtualReg_1121, VirtualReg_1120, 1
	addi	VirtualReg_1122, VirtualReg_1121, 1
	addi	VirtualReg_1123, VirtualReg_1122, 1
	addi	VirtualReg_1124, VirtualReg_1123, 1
	addi	VirtualReg_1125, VirtualReg_1124, 1
	addi	VirtualReg_1126, VirtualReg_1125, 1
	addi	VirtualReg_1127, VirtualReg_1126, 1
	addi	VirtualReg_1128, VirtualReg_1127, 1
	addi	VirtualReg_1129, VirtualReg_1128, 1
	addi	VirtualReg_1130, VirtualReg_1129, 1
	addi	VirtualReg_1131, VirtualReg_1130, 1
	addi	VirtualReg_1132, VirtualReg_1131, 1
	addi	VirtualReg_1133, VirtualReg_1132, 1
	addi	VirtualReg_1134, VirtualReg_1133, 1
	addi	VirtualReg_1135, VirtualReg_1134, 1
	addi	VirtualReg_1136, VirtualReg_1135, 1
	addi	VirtualReg_1137, VirtualReg_1136, 1
	addi	VirtualReg_1138, VirtualReg_1137, 1
	addi	VirtualReg_1139, VirtualReg_1138, 1
	addi	VirtualReg_1140, VirtualReg_1139, 1
	addi	VirtualReg_1141, VirtualReg_1140, 1
	addi	VirtualReg_1142, VirtualReg_1141, 1
	addi	VirtualReg_1143, VirtualReg_1142, 1
	addi	VirtualReg_1144, VirtualReg_1143, 1
	addi	VirtualReg_1145, VirtualReg_1144, 1
	addi	VirtualReg_1146, VirtualReg_1145, 1
	addi	VirtualReg_1147, VirtualReg_1146, 1
	addi	VirtualReg_1148, VirtualReg_1147, 1
	addi	VirtualReg_1149, VirtualReg_1148, 1
	addi	VirtualReg_1150, VirtualReg_1149, 1
	addi	VirtualReg_1151, VirtualReg_1150, 1
	addi	VirtualReg_1152, VirtualReg_1151, 1
	addi	VirtualReg_1153, VirtualReg_1152, 1
	addi	VirtualReg_1154, VirtualReg_1153, 1
	addi	VirtualReg_1155, VirtualReg_1154, 1
	addi	VirtualReg_1156, VirtualReg_1155, 1
	addi	VirtualReg_1157, VirtualReg_1156, 1
	addi	VirtualReg_1158, VirtualReg_1157, 1
	addi	VirtualReg_1159, VirtualReg_1158, 1
	addi	VirtualReg_1160, VirtualReg_1159, 1
	addi	VirtualReg_1161, VirtualReg_1160, 1
	addi	VirtualReg_1162, VirtualReg_1161, 1
	addi	VirtualReg_1163, VirtualReg_1162, 1
	addi	VirtualReg_1164, VirtualReg_1163, 1
	addi	VirtualReg_1165, VirtualReg_1164, 1
	addi	VirtualReg_1166, VirtualReg_1165, 1
	addi	VirtualReg_1167, VirtualReg_1166, 1
	addi	VirtualReg_1168, VirtualReg_1167, 1
	addi	VirtualReg_1169, VirtualReg_1168, 1
	addi	VirtualReg_1170, VirtualReg_1169, 1
	addi	VirtualReg_1171, VirtualReg_1170, 1
	addi	VirtualReg_1172, VirtualReg_1171, 1
	addi	VirtualReg_1173, VirtualReg_1172, 1
	addi	VirtualReg_1174, VirtualReg_1173, 1
	addi	VirtualReg_1175, VirtualReg_1174, 1
	addi	VirtualReg_1176, VirtualReg_1175, 1
	addi	VirtualReg_1177, VirtualReg_1176, 1
	addi	VirtualReg_1178, VirtualReg_1177, 1
	addi	VirtualReg_1179, VirtualReg_1178, 1
	addi	VirtualReg_1180, VirtualReg_1179, 1
	addi	VirtualReg_1181, VirtualReg_1180, 1
	addi	VirtualReg_1182, VirtualReg_1181, 1
	addi	VirtualReg_1183, VirtualReg_1182, 1
	addi	VirtualReg_1184, VirtualReg_1183, 1
	addi	VirtualReg_1185, VirtualReg_1184, 1
	addi	VirtualReg_1186, VirtualReg_1185, 1
	addi	VirtualReg_1187, VirtualReg_1186, 1
	addi	VirtualReg_1188, VirtualReg_1187, 1
	addi	VirtualReg_1189, VirtualReg_1188, 1
	addi	VirtualReg_1190, VirtualReg_1189, 1
	addi	VirtualReg_1191, VirtualReg_1190, 1
	addi	VirtualReg_1192, VirtualReg_1191, 1
	addi	VirtualReg_1193, VirtualReg_1192, 1
	addi	VirtualReg_1194, VirtualReg_1193, 1
	addi	VirtualReg_1195, VirtualReg_1194, 1
	addi	VirtualReg_1196, VirtualReg_1195, 1
	addi	VirtualReg_1197, VirtualReg_1196, 1
	addi	VirtualReg_1198, VirtualReg_1197, 1
	addi	VirtualReg_1199, VirtualReg_1198, 1
	addi	VirtualReg_1200, VirtualReg_1199, 1
	addi	VirtualReg_1201, VirtualReg_1200, 1
	addi	VirtualReg_1202, VirtualReg_1201, 1
	addi	VirtualReg_1203, VirtualReg_1202, 1
	addi	VirtualReg_1204, VirtualReg_1203, 1
	addi	VirtualReg_1205, VirtualReg_1204, 1
	addi	VirtualReg_1206, VirtualReg_1205, 1
	addi	VirtualReg_1207, VirtualReg_1206, 1
	addi	VirtualReg_1208, VirtualReg_1207, 1
	addi	VirtualReg_1209, VirtualReg_1208, 1
	addi	VirtualReg_1210, VirtualReg_1209, 1
	addi	VirtualReg_1211, VirtualReg_1210, 1
	addi	VirtualReg_1212, VirtualReg_1211, 1
	addi	VirtualReg_1213, VirtualReg_1212, 1
	addi	VirtualReg_1214, VirtualReg_1213, 1
	addi	VirtualReg_1215, VirtualReg_1214, 1
	addi	VirtualReg_1216, VirtualReg_1215, 1
	addi	VirtualReg_1217, VirtualReg_1216, 1
	addi	VirtualReg_1218, VirtualReg_1217, 1
	addi	VirtualReg_1219, VirtualReg_1218, 1
	addi	VirtualReg_1220, VirtualReg_1219, 1
	addi	VirtualReg_1221, VirtualReg_1220, 1
	addi	VirtualReg_1222, VirtualReg_1221, 1
	addi	VirtualReg_1223, VirtualReg_1222, 1
	addi	VirtualReg_1224, VirtualReg_1223, 1
	addi	VirtualReg_1225, VirtualReg_1224, 1
	addi	VirtualReg_1226, VirtualReg_1225, 1
	addi	VirtualReg_1227, VirtualReg_1226, 1
	addi	VirtualReg_1228, VirtualReg_1227, 1
	addi	VirtualReg_1229, VirtualReg_1228, 1
	addi	VirtualReg_1230, VirtualReg_1229, 1
	addi	VirtualReg_1231, VirtualReg_1230, 1
	addi	VirtualReg_1232, VirtualReg_1231, 1
	addi	VirtualReg_1233, VirtualReg_1232, 1
	addi	VirtualReg_1234, VirtualReg_1233, 1
	addi	VirtualReg_1235, VirtualReg_1234, 1
	addi	VirtualReg_1236, VirtualReg_1235, 1
	addi	VirtualReg_1237, VirtualReg_1236, 1
	addi	VirtualReg_1238, VirtualReg_1237, 1
	addi	VirtualReg_1239, VirtualReg_1238, 1
	addi	VirtualReg_1240, VirtualReg_1239, 1
	addi	VirtualReg_1241, VirtualReg_1240, 1
	addi	VirtualReg_1242, VirtualReg_1241, 1
	addi	VirtualReg_1243, VirtualReg_1242, 1
	addi	VirtualReg_1244, VirtualReg_1243, 1
	addi	VirtualReg_1245, VirtualReg_1244, 1
	addi	VirtualReg_1246, VirtualReg_1245, 1
	addi	VirtualReg_1247, VirtualReg_1246, 1
	addi	VirtualReg_1248, VirtualReg_1247, 1
	addi	VirtualReg_1249, VirtualReg_1248, 1
	addi	VirtualReg_1250, VirtualReg_1249, 1
	addi	VirtualReg_1251, VirtualReg_1250, 1
	addi	VirtualReg_1252, VirtualReg_1251, 1
	addi	VirtualReg_1253, VirtualReg_1252, 1
	addi	VirtualReg_1254, VirtualReg_1253, 1
	addi	VirtualReg_1255, VirtualReg_1254, 1
	addi	VirtualReg_1256, VirtualReg_1255, 1
	addi	VirtualReg_1257, VirtualReg_1256, 1
	addi	VirtualReg_1258, VirtualReg_1257, 1
	addi	VirtualReg_1259, VirtualReg_1258, 1
	addi	VirtualReg_1260, VirtualReg_1259, 1
	addi	VirtualReg_1261, VirtualReg_1260, 1
	addi	VirtualReg_1262, VirtualReg_1261, 1
	addi	VirtualReg_1263, VirtualReg_1262, 1
	addi	VirtualReg_1264, VirtualReg_1263, 1
	addi	VirtualReg_1265, VirtualReg_1264, 1
	addi	VirtualReg_1266, VirtualReg_1265, 1
	addi	VirtualReg_1267, VirtualReg_1266, 1
	addi	VirtualReg_1268, VirtualReg_1267, 1
	addi	VirtualReg_1269, VirtualReg_1268, 1
	addi	VirtualReg_1270, VirtualReg_1269, 1
	addi	VirtualReg_1271, VirtualReg_1270, 1
	addi	VirtualReg_1272, VirtualReg_1271, 1
	addi	VirtualReg_1273, VirtualReg_1272, 1
	addi	VirtualReg_1274, VirtualReg_1273, 1
	addi	VirtualReg_1275, VirtualReg_1274, 1
	addi	VirtualReg_1276, VirtualReg_1275, 1
	addi	VirtualReg_1277, VirtualReg_1276, 1
	addi	VirtualReg_1278, VirtualReg_1277, 1
	addi	VirtualReg_1279, VirtualReg_1278, 1
	addi	VirtualReg_1280, VirtualReg_1279, 1
	addi	VirtualReg_1281, VirtualReg_1280, 1
	addi	VirtualReg_1282, VirtualReg_1281, 1
	addi	VirtualReg_1283, VirtualReg_1282, 1
	addi	VirtualReg_1284, VirtualReg_1283, 1
	addi	VirtualReg_1285, VirtualReg_1284, 1
	addi	VirtualReg_1286, VirtualReg_1285, 1
	addi	VirtualReg_1287, VirtualReg_1286, 1
	addi	VirtualReg_1288, VirtualReg_1287, 1
	addi	VirtualReg_1289, VirtualReg_1288, 1
	addi	VirtualReg_1290, VirtualReg_1289, 1
	addi	VirtualReg_1291, VirtualReg_1290, 1
	addi	VirtualReg_1292, VirtualReg_1291, 1
	addi	VirtualReg_1293, VirtualReg_1292, 1
	addi	VirtualReg_1294, VirtualReg_1293, 1
	addi	VirtualReg_1295, VirtualReg_1294, 1
	addi	VirtualReg_1296, VirtualReg_1295, 1
	addi	VirtualReg_1297, VirtualReg_1296, 1
	addi	VirtualReg_1298, VirtualReg_1297, 1
	addi	VirtualReg_1299, VirtualReg_1298, 1
	addi	VirtualReg_1300, VirtualReg_1299, 1
	addi	VirtualReg_1301, VirtualReg_1300, 1
	addi	VirtualReg_1302, VirtualReg_1301, 1
	addi	VirtualReg_1303, VirtualReg_1302, 1
	addi	VirtualReg_1304, VirtualReg_1303, 1
	addi	VirtualReg_1305, VirtualReg_1304, 1
	addi	VirtualReg_1306, VirtualReg_1305, 1
	addi	VirtualReg_1307, VirtualReg_1306, 1
	addi	VirtualReg_1308, VirtualReg_1307, 1
	addi	VirtualReg_1309, VirtualReg_1308, 1
	addi	VirtualReg_1310, VirtualReg_1309, 1
	addi	VirtualReg_1311, VirtualReg_1310, 1
	addi	VirtualReg_1312, VirtualReg_1311, 1
	addi	VirtualReg_1313, VirtualReg_1312, 1
	addi	VirtualReg_1314, VirtualReg_1313, 1
	addi	VirtualReg_1315, VirtualReg_1314, 1
	addi	VirtualReg_1316, VirtualReg_1315, 1
	addi	VirtualReg_1317, VirtualReg_1316, 1
	addi	VirtualReg_1318, VirtualReg_1317, 1
	addi	VirtualReg_1319, VirtualReg_1318, 1
	addi	VirtualReg_1320, VirtualReg_1319, 1
	addi	VirtualReg_1321, VirtualReg_1320, 1
	addi	VirtualReg_1322, VirtualReg_1321, 1
	addi	VirtualReg_1323, VirtualReg_1322, 1
	addi	VirtualReg_1324, VirtualReg_1323, 1
	addi	VirtualReg_1325, VirtualReg_1324, 1
	addi	VirtualReg_1326, VirtualReg_1325, 1
	addi	VirtualReg_1327, VirtualReg_1326, 1
	addi	VirtualReg_1328, VirtualReg_1327, 1
	addi	VirtualReg_1329, VirtualReg_1328, 1
	addi	VirtualReg_1330, VirtualReg_1329, 1
	addi	VirtualReg_1331, VirtualReg_1330, 1
	addi	VirtualReg_1332, VirtualReg_1331, 1
	addi	VirtualReg_1333, VirtualReg_1332, 1
	addi	VirtualReg_1334, VirtualReg_1333, 1
	addi	VirtualReg_1335, VirtualReg_1334, 1
	addi	VirtualReg_1336, VirtualReg_1335, 1
	addi	VirtualReg_1337, VirtualReg_1336, 1
	addi	VirtualReg_1338, VirtualReg_1337, 1
	addi	VirtualReg_1339, VirtualReg_1338, 1
	addi	VirtualReg_1340, VirtualReg_1339, 1
	addi	VirtualReg_1341, VirtualReg_1340, 1
	addi	VirtualReg_1342, VirtualReg_1341, 1
	addi	VirtualReg_1343, VirtualReg_1342, 1
	addi	VirtualReg_1344, VirtualReg_1343, 1
	addi	VirtualReg_1345, VirtualReg_1344, 1
	addi	VirtualReg_1346, VirtualReg_1345, 1
	addi	VirtualReg_1347, VirtualReg_1346, 1
	addi	VirtualReg_1348, VirtualReg_1347, 1
	addi	VirtualReg_1349, VirtualReg_1348, 1
	addi	VirtualReg_1350, VirtualReg_1349, 1
	addi	VirtualReg_1351, VirtualReg_1350, 1
	addi	VirtualReg_1352, VirtualReg_1351, 1
	addi	VirtualReg_1353, VirtualReg_1352, 1
	addi	VirtualReg_1354, VirtualReg_1353, 1
	addi	VirtualReg_1355, VirtualReg_1354, 1
	addi	VirtualReg_1356, VirtualReg_1355, 1
	addi	VirtualReg_1357, VirtualReg_1356, 1
	addi	VirtualReg_1358, VirtualReg_1357, 1
	addi	VirtualReg_1359, VirtualReg_1358, 1
	addi	VirtualReg_1360, VirtualReg_1359, 1
	addi	VirtualReg_1361, VirtualReg_1360, 1
	addi	VirtualReg_1362, VirtualReg_1361, 1
	addi	VirtualReg_1363, VirtualReg_1362, 1
	addi	VirtualReg_1364, VirtualReg_1363, 1
	addi	VirtualReg_1365, VirtualReg_1364, 1
	addi	VirtualReg_1366, VirtualReg_1365, 1
	addi	VirtualReg_1367, VirtualReg_1366, 1
	addi	VirtualReg_1368, VirtualReg_1367, 1
	addi	VirtualReg_1369, VirtualReg_1368, 1
	addi	VirtualReg_1370, VirtualReg_1369, 1
	addi	VirtualReg_1371, VirtualReg_1370, 1
	addi	VirtualReg_1372, VirtualReg_1371, 1
	addi	VirtualReg_1373, VirtualReg_1372, 1
	addi	VirtualReg_1374, VirtualReg_1373, 1
	addi	VirtualReg_1375, VirtualReg_1374, 1
	addi	VirtualReg_1376, VirtualReg_1375, 1
	addi	VirtualReg_1377, VirtualReg_1376, 1
	addi	VirtualReg_1378, VirtualReg_1377, 1
	addi	VirtualReg_1379, VirtualReg_1378, 1
	addi	VirtualReg_1380, VirtualReg_1379, 1
	addi	VirtualReg_1381, VirtualReg_1380, 1
	addi	VirtualReg_1382, VirtualReg_1381, 1
	addi	VirtualReg_1383, VirtualReg_1382, 1
	addi	VirtualReg_1384, VirtualReg_1383, 1
	addi	VirtualReg_1385, VirtualReg_1384, 1
	addi	VirtualReg_1386, VirtualReg_1385, 1
	addi	VirtualReg_1387, VirtualReg_1386, 1
	addi	VirtualReg_1388, VirtualReg_1387, 1
	addi	VirtualReg_1389, VirtualReg_1388, 1
	addi	VirtualReg_1390, VirtualReg_1389, 1
	addi	VirtualReg_1391, VirtualReg_1390, 1
	addi	VirtualReg_1392, VirtualReg_1391, 1
	addi	VirtualReg_1393, VirtualReg_1392, 1
	addi	VirtualReg_1394, VirtualReg_1393, 1
	addi	VirtualReg_1395, VirtualReg_1394, 1
	addi	VirtualReg_1396, VirtualReg_1395, 1
	addi	VirtualReg_1397, VirtualReg_1396, 1
	addi	VirtualReg_1398, VirtualReg_1397, 1
	addi	VirtualReg_1399, VirtualReg_1398, 1
	addi	VirtualReg_1400, VirtualReg_1399, 1
	addi	VirtualReg_1401, VirtualReg_1400, 1
	addi	VirtualReg_1402, VirtualReg_1401, 1
	addi	VirtualReg_1403, VirtualReg_1402, 1
	addi	VirtualReg_1404, VirtualReg_1403, 1
	addi	VirtualReg_1405, VirtualReg_1404, 1
	addi	VirtualReg_1406, VirtualReg_1405, 1
	addi	VirtualReg_1407, VirtualReg_1406, 1
	addi	VirtualReg_1408, VirtualReg_1407, 1
	addi	VirtualReg_1409, VirtualReg_1408, 1
	addi	VirtualReg_1410, VirtualReg_1409, 1
	addi	VirtualReg_1411, VirtualReg_1410, 1
	addi	VirtualReg_1412, VirtualReg_1411, 1
	addi	VirtualReg_1413, VirtualReg_1412, 1
	addi	VirtualReg_1414, VirtualReg_1413, 1
	addi	VirtualReg_1415, VirtualReg_1414, 1
	addi	VirtualReg_1416, VirtualReg_1415, 1
	addi	VirtualReg_1417, VirtualReg_1416, 1
	addi	VirtualReg_1418, VirtualReg_1417, 1
	addi	VirtualReg_1419, VirtualReg_1418, 1
	addi	VirtualReg_1420, VirtualReg_1419, 1
	addi	VirtualReg_1421, VirtualReg_1420, 1
	addi	VirtualReg_1422, VirtualReg_1421, 1
	addi	VirtualReg_1423, VirtualReg_1422, 1
	addi	VirtualReg_1424, VirtualReg_1423, 1
	addi	VirtualReg_1425, VirtualReg_1424, 1
	addi	VirtualReg_1426, VirtualReg_1425, 1
	addi	VirtualReg_1427, VirtualReg_1426, 1
	addi	VirtualReg_1428, VirtualReg_1427, 1
	addi	VirtualReg_1429, VirtualReg_1428, 1
	addi	VirtualReg_1430, VirtualReg_1429, 1
	addi	VirtualReg_1431, VirtualReg_1430, 1
	addi	VirtualReg_1432, VirtualReg_1431, 1
	addi	VirtualReg_1433, VirtualReg_1432, 1
	addi	VirtualReg_1434, VirtualReg_1433, 1
	addi	VirtualReg_1435, VirtualReg_1434, 1
	addi	VirtualReg_1436, VirtualReg_1435, 1
	addi	VirtualReg_1437, VirtualReg_1436, 1
	addi	VirtualReg_1438, VirtualReg_1437, 1
	addi	VirtualReg_1439, VirtualReg_1438, 1
	addi	VirtualReg_1440, VirtualReg_1439, 1
	addi	VirtualReg_1441, VirtualReg_1440, 1
	addi	VirtualReg_1442, VirtualReg_1441, 1
	addi	VirtualReg_1443, VirtualReg_1442, 1
	addi	VirtualReg_1444, VirtualReg_1443, 1
	addi	VirtualReg_1445, VirtualReg_1444, 1
	addi	VirtualReg_1446, VirtualReg_1445, 1
	addi	VirtualReg_1447, VirtualReg_1446, 1
	addi	VirtualReg_1448, VirtualReg_1447, 1
	addi	VirtualReg_1449, VirtualReg_1448, 1
	addi	VirtualReg_1450, VirtualReg_1449, 1
	addi	VirtualReg_1451, VirtualReg_1450, 1
	addi	VirtualReg_1452, VirtualReg_1451, 1
	addi	VirtualReg_1453, VirtualReg_1452, 1
	addi	VirtualReg_1454, VirtualReg_1453, 1
	addi	VirtualReg_1455, VirtualReg_1454, 1
	addi	VirtualReg_1456, VirtualReg_1455, 1
	addi	VirtualReg_1457, VirtualReg_1456, 1
	addi	VirtualReg_1458, VirtualReg_1457, 1
	addi	VirtualReg_1459, VirtualReg_1458, 1
	addi	VirtualReg_1460, VirtualReg_1459, 1
	addi	VirtualReg_1461, VirtualReg_1460, 1
	addi	VirtualReg_1462, VirtualReg_1461, 1
	addi	VirtualReg_1463, VirtualReg_1462, 1
	addi	VirtualReg_1464, VirtualReg_1463, 1
	addi	VirtualReg_1465, VirtualReg_1464, 1
	addi	VirtualReg_1466, VirtualReg_1465, 1
	addi	VirtualReg_1467, VirtualReg_1466, 1
	addi	VirtualReg_1468, VirtualReg_1467, 1
	addi	VirtualReg_1469, VirtualReg_1468, 1
	addi	VirtualReg_1470, VirtualReg_1469, 1
	addi	VirtualReg_1471, VirtualReg_1470, 1
	addi	VirtualReg_1472, VirtualReg_1471, 1
	addi	VirtualReg_1473, VirtualReg_1472, 1
	addi	VirtualReg_1474, VirtualReg_1473, 1
	addi	VirtualReg_1475, VirtualReg_1474, 1
	addi	VirtualReg_1476, VirtualReg_1475, 1
	addi	VirtualReg_1477, VirtualReg_1476, 1
	addi	VirtualReg_1478, VirtualReg_1477, 1
	addi	VirtualReg_1479, VirtualReg_1478, 1
	addi	VirtualReg_1480, VirtualReg_1479, 1
	addi	VirtualReg_1481, VirtualReg_1480, 1
	addi	VirtualReg_1482, VirtualReg_1481, 1
	addi	VirtualReg_1483, VirtualReg_1482, 1
	addi	VirtualReg_1484, VirtualReg_1483, 1
	addi	VirtualReg_1485, VirtualReg_1484, 1
	addi	VirtualReg_1486, VirtualReg_1485, 1
	addi	VirtualReg_1487, VirtualReg_1486, 1
	addi	VirtualReg_1488, VirtualReg_1487, 1
	addi	VirtualReg_1489, VirtualReg_1488, 1
	addi	VirtualReg_1490, VirtualReg_1489, 1
	addi	VirtualReg_1491, VirtualReg_1490, 1
	addi	VirtualReg_1492, VirtualReg_1491, 1
	addi	VirtualReg_1493, VirtualReg_1492, 1
	addi	VirtualReg_1494, VirtualReg_1493, 1
	addi	VirtualReg_1495, VirtualReg_1494, 1
	addi	VirtualReg_1496, VirtualReg_1495, 1
	addi	VirtualReg_1497, VirtualReg_1496, 1
	addi	VirtualReg_1498, VirtualReg_1497, 1
	addi	VirtualReg_1499, VirtualReg_1498, 1
	addi	VirtualReg_1500, VirtualReg_1499, 1
	addi	VirtualReg_1501, VirtualReg_1500, 1
	addi	VirtualReg_1502, VirtualReg_1501, 1
	addi	VirtualReg_1503, VirtualReg_1502, 1
	addi	VirtualReg_1504, VirtualReg_1503, 1
	addi	VirtualReg_1505, VirtualReg_1504, 1
	addi	VirtualReg_1506, VirtualReg_1505, 1
	addi	VirtualReg_1507, VirtualReg_1506, 1
	addi	VirtualReg_1508, VirtualReg_1507, 1
	addi	VirtualReg_1509, VirtualReg_1508, 1
	addi	VirtualReg_1510, VirtualReg_1509, 1
	addi	VirtualReg_1511, VirtualReg_1510, 1
	addi	VirtualReg_1512, VirtualReg_1511, 1
	addi	VirtualReg_1513, VirtualReg_1512, 1
	addi	VirtualReg_1514, VirtualReg_1513, 1
	addi	VirtualReg_1515, VirtualReg_1514, 1
	addi	VirtualReg_1516, VirtualReg_1515, 1
	addi	VirtualReg_1517, VirtualReg_1516, 1
	addi	VirtualReg_1518, VirtualReg_1517, 1
	addi	VirtualReg_1519, VirtualReg_1518, 1
	addi	VirtualReg_1520, VirtualReg_1519, 1
	addi	VirtualReg_1521, VirtualReg_1520, 1
	addi	VirtualReg_1522, VirtualReg_1521, 1
	addi	VirtualReg_1523, VirtualReg_1522, 1
	addi	VirtualReg_1524, VirtualReg_1523, 1
	addi	VirtualReg_1525, VirtualReg_1524, 1
	addi	VirtualReg_1526, VirtualReg_1525, 1
	addi	VirtualReg_1527, VirtualReg_1526, 1
	addi	VirtualReg_1528, VirtualReg_1527, 1
	addi	VirtualReg_1529, VirtualReg_1528, 1
	addi	VirtualReg_1530, VirtualReg_1529, 1
	addi	VirtualReg_1531, VirtualReg_1530, 1
	addi	VirtualReg_1532, VirtualReg_1531, 1
	addi	VirtualReg_1533, VirtualReg_1532, 1
	addi	VirtualReg_1534, VirtualReg_1533, 1
	addi	VirtualReg_1535, VirtualReg_1534, 1
	addi	VirtualReg_1536, VirtualReg_1535, 1
	addi	VirtualReg_1537, VirtualReg_1536, 1
	addi	VirtualReg_1538, VirtualReg_1537, 1
	addi	VirtualReg_1539, VirtualReg_1538, 1
	addi	VirtualReg_1540, VirtualReg_1539, 1
	addi	VirtualReg_1541, VirtualReg_1540, 1
	addi	VirtualReg_1542, VirtualReg_1541, 1
	addi	VirtualReg_1543, VirtualReg_1542, 1
	addi	VirtualReg_1544, VirtualReg_1543, 1
	addi	VirtualReg_1545, VirtualReg_1544, 1
	addi	VirtualReg_1546, VirtualReg_1545, 1
	addi	VirtualReg_1547, VirtualReg_1546, 1
	addi	VirtualReg_1548, VirtualReg_1547, 1
	addi	VirtualReg_1549, VirtualReg_1548, 1
	addi	VirtualReg_1550, VirtualReg_1549, 1
	addi	VirtualReg_1551, VirtualReg_1550, 1
	addi	VirtualReg_1552, VirtualReg_1551, 1
	addi	VirtualReg_1553, VirtualReg_1552, 1
	addi	VirtualReg_1554, VirtualReg_1553, 1
	addi	VirtualReg_1555, VirtualReg_1554, 1
	addi	VirtualReg_1556, VirtualReg_1555, 1
	addi	VirtualReg_1557, VirtualReg_1556, 1
	addi	VirtualReg_1558, VirtualReg_1557, 1
	addi	VirtualReg_1559, VirtualReg_1558, 1
	addi	VirtualReg_1560, VirtualReg_1559, 1
	addi	VirtualReg_1561, VirtualReg_1560, 1
	addi	VirtualReg_1562, VirtualReg_1561, 1
	addi	VirtualReg_1563, VirtualReg_1562, 1
	addi	VirtualReg_1564, VirtualReg_1563, 1
	addi	VirtualReg_1565, VirtualReg_1564, 1
	addi	VirtualReg_1566, VirtualReg_1565, 1
	addi	VirtualReg_1567, VirtualReg_1566, 1
	addi	VirtualReg_1568, VirtualReg_1567, 1
	addi	VirtualReg_1569, VirtualReg_1568, 1
	addi	VirtualReg_1570, VirtualReg_1569, 1
	addi	VirtualReg_1571, VirtualReg_1570, 1
	addi	VirtualReg_1572, VirtualReg_1571, 1
	addi	VirtualReg_1573, VirtualReg_1572, 1
	addi	VirtualReg_1574, VirtualReg_1573, 1
	addi	VirtualReg_1575, VirtualReg_1574, 1
	addi	VirtualReg_1576, VirtualReg_1575, 1
	addi	VirtualReg_1577, VirtualReg_1576, 1
	addi	VirtualReg_1578, VirtualReg_1577, 1
	addi	VirtualReg_1579, VirtualReg_1578, 1
	addi	VirtualReg_1580, VirtualReg_1579, 1
	addi	VirtualReg_1581, VirtualReg_1580, 1
	addi	VirtualReg_1582, VirtualReg_1581, 1
	addi	VirtualReg_1583, VirtualReg_1582, 1
	addi	VirtualReg_1584, VirtualReg_1583, 1
	addi	VirtualReg_1585, VirtualReg_1584, 1
	addi	VirtualReg_1586, VirtualReg_1585, 1
	addi	VirtualReg_1587, VirtualReg_1586, 1
	addi	VirtualReg_1588, VirtualReg_1587, 1
	addi	VirtualReg_1589, VirtualReg_1588, 1
	addi	VirtualReg_1590, VirtualReg_1589, 1
	addi	VirtualReg_1591, VirtualReg_1590, 1
	addi	VirtualReg_1592, VirtualReg_1591, 1
	addi	VirtualReg_1593, VirtualReg_1592, 1
	addi	VirtualReg_1594, VirtualReg_1593, 1
	addi	VirtualReg_1595, VirtualReg_1594, 1
	addi	VirtualReg_1596, VirtualReg_1595, 1
	addi	VirtualReg_1597, VirtualReg_1596, 1
	addi	VirtualReg_1598, VirtualReg_1597, 1
	addi	VirtualReg_1599, VirtualReg_1598, 1
	addi	VirtualReg_1600, VirtualReg_1599, 1
	addi	VirtualReg_1601, VirtualReg_1600, 1
	addi	VirtualReg_1602, VirtualReg_1601, 1
	addi	VirtualReg_1603, VirtualReg_1602, 1
	addi	VirtualReg_1604, VirtualReg_1603, 1
	addi	VirtualReg_1605, VirtualReg_1604, 1
	addi	VirtualReg_1606, VirtualReg_1605, 1
	addi	VirtualReg_1607, VirtualReg_1606, 1
	addi	VirtualReg_1608, VirtualReg_1607, 1
	addi	VirtualReg_1609, VirtualReg_1608, 1
	addi	VirtualReg_1610, VirtualReg_1609, 1
	addi	VirtualReg_1611, VirtualReg_1610, 1
	addi	VirtualReg_1612, VirtualReg_1611, 1
	addi	VirtualReg_1613, VirtualReg_1612, 1
	addi	VirtualReg_1614, VirtualReg_1613, 1
	addi	VirtualReg_1615, VirtualReg_1614, 1
	addi	VirtualReg_1616, VirtualReg_1615, 1
	addi	VirtualReg_1617, VirtualReg_1616, 1
	addi	VirtualReg_1618, VirtualReg_1617, 1
	addi	VirtualReg_1619, VirtualReg_1618, 1
	addi	VirtualReg_1620, VirtualReg_1619, 1
	addi	VirtualReg_1621, VirtualReg_1620, 1
	addi	VirtualReg_1622, VirtualReg_1621, 1
	addi	VirtualReg_1623, VirtualReg_1622, 1
	addi	VirtualReg_1624, VirtualReg_1623, 1
	addi	VirtualReg_1625, VirtualReg_1624, 1
	addi	VirtualReg_1626, VirtualReg_1625, 1
	addi	VirtualReg_1627, VirtualReg_1626, 1
	addi	VirtualReg_1628, VirtualReg_1627, 1
	addi	VirtualReg_1629, VirtualReg_1628, 1
	addi	VirtualReg_1630, VirtualReg_1629, 1
	addi	VirtualReg_1631, VirtualReg_1630, 1
	addi	VirtualReg_1632, VirtualReg_1631, 1
	addi	VirtualReg_1633, VirtualReg_1632, 1
	addi	VirtualReg_1634, VirtualReg_1633, 1
	addi	VirtualReg_1635, VirtualReg_1634, 1
	addi	VirtualReg_1636, VirtualReg_1635, 1
	addi	VirtualReg_1637, VirtualReg_1636, 1
	addi	VirtualReg_1638, VirtualReg_1637, 1
	addi	VirtualReg_1639, VirtualReg_1638, 1
	addi	VirtualReg_1640, VirtualReg_1639, 1
	addi	VirtualReg_1641, VirtualReg_1640, 1
	addi	VirtualReg_1642, VirtualReg_1641, 1
	addi	VirtualReg_1643, VirtualReg_1642, 1
	addi	VirtualReg_1644, VirtualReg_1643, 1
	addi	VirtualReg_1645, VirtualReg_1644, 1
	addi	VirtualReg_1646, VirtualReg_1645, 1
	addi	VirtualReg_1647, VirtualReg_1646, 1
	addi	VirtualReg_1648, VirtualReg_1647, 1
	addi	VirtualReg_1649, VirtualReg_1648, 1
	addi	VirtualReg_1650, VirtualReg_1649, 1
	addi	VirtualReg_1651, VirtualReg_1650, 1
	addi	VirtualReg_1652, VirtualReg_1651, 1
	addi	VirtualReg_1653, VirtualReg_1652, 1
	addi	VirtualReg_1654, VirtualReg_1653, 1
	addi	VirtualReg_1655, VirtualReg_1654, 1
	addi	VirtualReg_1656, VirtualReg_1655, 1
	addi	VirtualReg_1657, VirtualReg_1656, 1
	addi	VirtualReg_1658, VirtualReg_1657, 1
	addi	VirtualReg_1659, VirtualReg_1658, 1
	addi	VirtualReg_1660, VirtualReg_1659, 1
	addi	VirtualReg_1661, VirtualReg_1660, 1
	addi	VirtualReg_1662, VirtualReg_1661, 1
	addi	VirtualReg_1663, VirtualReg_1662, 1
	addi	VirtualReg_1664, VirtualReg_1663, 1
	addi	VirtualReg_1665, VirtualReg_1664, 1
	addi	VirtualReg_1666, VirtualReg_1665, 1
	addi	VirtualReg_1667, VirtualReg_1666, 1
	addi	VirtualReg_1668, VirtualReg_1667, 1
	addi	VirtualReg_1669, VirtualReg_1668, 1
	addi	VirtualReg_1670, VirtualReg_1669, 1
	addi	VirtualReg_1671, VirtualReg_1670, 1
	addi	VirtualReg_1672, VirtualReg_1671, 1
	addi	VirtualReg_1673, VirtualReg_1672, 1
	addi	VirtualReg_1674, VirtualReg_1673, 1
	addi	VirtualReg_1675, VirtualReg_1674, 1
	addi	VirtualReg_1676, VirtualReg_1675, 1
	addi	VirtualReg_1677, VirtualReg_1676, 1
	addi	VirtualReg_1678, VirtualReg_1677, 1
	addi	VirtualReg_1679, VirtualReg_1678, 1
	addi	VirtualReg_1680, VirtualReg_1679, 1
	addi	VirtualReg_1681, VirtualReg_1680, 1
	addi	VirtualReg_1682, VirtualReg_1681, 1
	addi	VirtualReg_1683, VirtualReg_1682, 1
	addi	VirtualReg_1684, VirtualReg_1683, 1
	addi	VirtualReg_1685, VirtualReg_1684, 1
	addi	VirtualReg_1686, VirtualReg_1685, 1
	addi	VirtualReg_1687, VirtualReg_1686, 1
	addi	VirtualReg_1688, VirtualReg_1687, 1
	addi	VirtualReg_1689, VirtualReg_1688, 1
	addi	VirtualReg_1690, VirtualReg_1689, 1
	addi	VirtualReg_1691, VirtualReg_1690, 1
	addi	VirtualReg_1692, VirtualReg_1691, 1
	addi	VirtualReg_1693, VirtualReg_1692, 1
	addi	VirtualReg_1694, VirtualReg_1693, 1
	addi	VirtualReg_1695, VirtualReg_1694, 1
	addi	VirtualReg_1696, VirtualReg_1695, 1
	addi	VirtualReg_1697, VirtualReg_1696, 1
	addi	VirtualReg_1698, VirtualReg_1697, 1
	addi	VirtualReg_1699, VirtualReg_1698, 1
	addi	VirtualReg_1700, VirtualReg_1699, 1
	addi	VirtualReg_1701, VirtualReg_1700, 1
	addi	VirtualReg_1702, VirtualReg_1701, 1
	addi	VirtualReg_1703, VirtualReg_1702, 1
	addi	VirtualReg_1704, VirtualReg_1703, 1
	addi	VirtualReg_1705, VirtualReg_1704, 1
	addi	VirtualReg_1706, VirtualReg_1705, 1
	addi	VirtualReg_1707, VirtualReg_1706, 1
	addi	VirtualReg_1708, VirtualReg_1707, 1
	addi	VirtualReg_1709, VirtualReg_1708, 1
	addi	VirtualReg_1710, VirtualReg_1709, 1
	addi	VirtualReg_1711, VirtualReg_1710, 1
	addi	VirtualReg_1712, VirtualReg_1711, 1
	addi	VirtualReg_1713, VirtualReg_1712, 1
	addi	VirtualReg_1714, VirtualReg_1713, 1
	addi	VirtualReg_1715, VirtualReg_1714, 1
	addi	VirtualReg_1716, VirtualReg_1715, 1
	addi	VirtualReg_1717, VirtualReg_1716, 1
	addi	VirtualReg_1718, VirtualReg_1717, 1
	addi	VirtualReg_1719, VirtualReg_1718, 1
	addi	VirtualReg_1720, VirtualReg_1719, 1
	addi	VirtualReg_1721, VirtualReg_1720, 1
	addi	VirtualReg_1722, VirtualReg_1721, 1
	addi	VirtualReg_1723, VirtualReg_1722, 1
	addi	VirtualReg_1724, VirtualReg_1723, 1
	addi	VirtualReg_1725, VirtualReg_1724, 1
	addi	VirtualReg_1726, VirtualReg_1725, 1
	addi	VirtualReg_1727, VirtualReg_1726, 1
	addi	VirtualReg_1728, VirtualReg_1727, 1
	addi	VirtualReg_1729, VirtualReg_1728, 1
	addi	VirtualReg_1730, VirtualReg_1729, 1
	addi	VirtualReg_1731, VirtualReg_1730, 1
	addi	VirtualReg_1732, VirtualReg_1731, 1
	addi	VirtualReg_1733, VirtualReg_1732, 1
	addi	VirtualReg_1734, VirtualReg_1733, 1
	addi	VirtualReg_1735, VirtualReg_1734, 1
	addi	VirtualReg_1736, VirtualReg_1735, 1
	addi	VirtualReg_1737, VirtualReg_1736, 1
	addi	VirtualReg_1738, VirtualReg_1737, 1
	addi	VirtualReg_1739, VirtualReg_1738, 1
	addi	VirtualReg_1740, VirtualReg_1739, 1
	addi	VirtualReg_1741, VirtualReg_1740, 1
	addi	VirtualReg_1742, VirtualReg_1741, 1
	addi	VirtualReg_1743, VirtualReg_1742, 1
	addi	VirtualReg_1744, VirtualReg_1743, 1
	addi	VirtualReg_1745, VirtualReg_1744, 1
	addi	VirtualReg_1746, VirtualReg_1745, 1
	addi	VirtualReg_1747, VirtualReg_1746, 1
	addi	VirtualReg_1748, VirtualReg_1747, 1
	addi	VirtualReg_1749, VirtualReg_1748, 1
	addi	VirtualReg_1750, VirtualReg_1749, 1
	addi	VirtualReg_1751, VirtualReg_1750, 1
	addi	VirtualReg_1752, VirtualReg_1751, 1
	addi	VirtualReg_1753, VirtualReg_1752, 1
	addi	VirtualReg_1754, VirtualReg_1753, 1
	addi	VirtualReg_1755, VirtualReg_1754, 1
	addi	VirtualReg_1756, VirtualReg_1755, 1
	addi	VirtualReg_1757, VirtualReg_1756, 1
	addi	VirtualReg_1758, VirtualReg_1757, 1
	addi	VirtualReg_1759, VirtualReg_1758, 1
	addi	VirtualReg_1760, VirtualReg_1759, 1
	addi	VirtualReg_1761, VirtualReg_1760, 1
	addi	VirtualReg_1762, VirtualReg_1761, 1
	addi	VirtualReg_1763, VirtualReg_1762, 1
	addi	VirtualReg_1764, VirtualReg_1763, 1
	addi	VirtualReg_1765, VirtualReg_1764, 1
	addi	VirtualReg_1766, VirtualReg_1765, 1
	addi	VirtualReg_1767, VirtualReg_1766, 1
	addi	VirtualReg_1768, VirtualReg_1767, 1
	addi	VirtualReg_1769, VirtualReg_1768, 1
	addi	VirtualReg_1770, VirtualReg_1769, 1
	addi	VirtualReg_1771, VirtualReg_1770, 1
	addi	VirtualReg_1772, VirtualReg_1771, 1
	addi	VirtualReg_1773, VirtualReg_1772, 1
	addi	VirtualReg_1774, VirtualReg_1773, 1
	addi	VirtualReg_1775, VirtualReg_1774, 1
	addi	VirtualReg_1776, VirtualReg_1775, 1
	addi	VirtualReg_1777, VirtualReg_1776, 1
	addi	VirtualReg_1778, VirtualReg_1777, 1
	addi	VirtualReg_1779, VirtualReg_1778, 1
	addi	VirtualReg_1780, VirtualReg_1779, 1
	addi	VirtualReg_1781, VirtualReg_1780, 1
	addi	VirtualReg_1782, VirtualReg_1781, 1
	addi	VirtualReg_1783, VirtualReg_1782, 1
	addi	VirtualReg_1784, VirtualReg_1783, 1
	addi	VirtualReg_1785, VirtualReg_1784, 1
	addi	VirtualReg_1786, VirtualReg_1785, 1
	addi	VirtualReg_1787, VirtualReg_1786, 1
	addi	VirtualReg_1788, VirtualReg_1787, 1
	addi	VirtualReg_1789, VirtualReg_1788, 1
	addi	VirtualReg_1790, VirtualReg_1789, 1
	addi	VirtualReg_1791, VirtualReg_1790, 1
	addi	VirtualReg_1792, VirtualReg_1791, 1
	addi	VirtualReg_1793, VirtualReg_1792, 1
	addi	VirtualReg_1794, VirtualReg_1793, 1
	addi	VirtualReg_1795, VirtualReg_1794, 1
	addi	VirtualReg_1796, VirtualReg_1795, 1
	addi	VirtualReg_1797, VirtualReg_1796, 1
	addi	VirtualReg_1798, VirtualReg_1797, 1
	addi	VirtualReg_1799, VirtualReg_1798, 1
	addi	VirtualReg_1800, VirtualReg_1799, 1
	addi	VirtualReg_1801, VirtualReg_1800, 1
	addi	VirtualReg_1802, VirtualReg_1801, 1
	addi	VirtualReg_1803, VirtualReg_1802, 1
	addi	VirtualReg_1804, VirtualReg_1803, 1
	addi	VirtualReg_1805, VirtualReg_1804, 1
	addi	VirtualReg_1806, VirtualReg_1805, 1
	addi	VirtualReg_1807, VirtualReg_1806, 1
	addi	VirtualReg_1808, VirtualReg_1807, 1
	addi	VirtualReg_1809, VirtualReg_1808, 1
	addi	VirtualReg_1810, VirtualReg_1809, 1
	addi	VirtualReg_1811, VirtualReg_1810, 1
	addi	VirtualReg_1812, VirtualReg_1811, 1
	addi	VirtualReg_1813, VirtualReg_1812, 1
	addi	VirtualReg_1814, VirtualReg_1813, 1
	addi	VirtualReg_1815, VirtualReg_1814, 1
	addi	VirtualReg_1816, VirtualReg_1815, 1
	addi	VirtualReg_1817, VirtualReg_1816, 1
	addi	VirtualReg_1818, VirtualReg_1817, 1
	addi	VirtualReg_1819, VirtualReg_1818, 1
	addi	VirtualReg_1820, VirtualReg_1819, 1
	addi	VirtualReg_1821, VirtualReg_1820, 1
	addi	VirtualReg_1822, VirtualReg_1821, 1
	addi	VirtualReg_1823, VirtualReg_1822, 1
	addi	VirtualReg_1824, VirtualReg_1823, 1
	addi	VirtualReg_1825, VirtualReg_1824, 1
	addi	VirtualReg_1826, VirtualReg_1825, 1
	addi	VirtualReg_1827, VirtualReg_1826, 1
	addi	VirtualReg_1828, VirtualReg_1827, 1
	addi	VirtualReg_1829, VirtualReg_1828, 1
	addi	VirtualReg_1830, VirtualReg_1829, 1
	addi	VirtualReg_1831, VirtualReg_1830, 1
	addi	VirtualReg_1832, VirtualReg_1831, 1
	addi	VirtualReg_1833, VirtualReg_1832, 1
	addi	VirtualReg_1834, VirtualReg_1833, 1
	addi	VirtualReg_1835, VirtualReg_1834, 1
	addi	VirtualReg_1836, VirtualReg_1835, 1
	addi	VirtualReg_1837, VirtualReg_1836, 1
	addi	VirtualReg_1838, VirtualReg_1837, 1
	addi	VirtualReg_1839, VirtualReg_1838, 1
	addi	VirtualReg_1840, VirtualReg_1839, 1
	addi	VirtualReg_1841, VirtualReg_1840, 1
	addi	VirtualReg_1842, VirtualReg_1841, 1
	addi	VirtualReg_1843, VirtualReg_1842, 1
	addi	VirtualReg_1844, VirtualReg_1843, 1
	addi	VirtualReg_1845, VirtualReg_1844, 1
	addi	VirtualReg_1846, VirtualReg_1845, 1
	addi	VirtualReg_1847, VirtualReg_1846, 1
	addi	VirtualReg_1848, VirtualReg_1847, 1
	addi	VirtualReg_1849, VirtualReg_1848, 1
	addi	VirtualReg_1850, VirtualReg_1849, 1
	addi	VirtualReg_1851, VirtualReg_1850, 1
	addi	VirtualReg_1852, VirtualReg_1851, 1
	addi	VirtualReg_1853, VirtualReg_1852, 1
	addi	VirtualReg_1854, VirtualReg_1853, 1
	addi	VirtualReg_1855, VirtualReg_1854, 1
	addi	VirtualReg_1856, VirtualReg_1855, 1
	addi	VirtualReg_1857, VirtualReg_1856, 1
	addi	VirtualReg_1858, VirtualReg_1857, 1
	addi	VirtualReg_1859, VirtualReg_1858, 1
	addi	VirtualReg_1860, VirtualReg_1859, 1
	addi	VirtualReg_1861, VirtualReg_1860, 1
	addi	VirtualReg_1862, VirtualReg_1861, 1
	addi	VirtualReg_1863, VirtualReg_1862, 1
	addi	VirtualReg_1864, VirtualReg_1863, 1
	addi	VirtualReg_1865, VirtualReg_1864, 1
	addi	VirtualReg_1866, VirtualReg_1865, 1
	addi	VirtualReg_1867, VirtualReg_1866, 1
	addi	VirtualReg_1868, VirtualReg_1867, 1
	addi	VirtualReg_1869, VirtualReg_1868, 1
	addi	VirtualReg_1870, VirtualReg_1869, 1
	addi	VirtualReg_1871, VirtualReg_1870, 1
	addi	VirtualReg_1872, VirtualReg_1871, 1
	addi	VirtualReg_1873, VirtualReg_1872, 1
	addi	VirtualReg_1874, VirtualReg_1873, 1
	addi	VirtualReg_1875, VirtualReg_1874, 1
	addi	VirtualReg_1876, VirtualReg_1875, 1
	addi	VirtualReg_1877, VirtualReg_1876, 1
	addi	VirtualReg_1878, VirtualReg_1877, 1
	addi	VirtualReg_1879, VirtualReg_1878, 1
	addi	VirtualReg_1880, VirtualReg_1879, 1
	addi	VirtualReg_1881, VirtualReg_1880, 1
	addi	VirtualReg_1882, VirtualReg_1881, 1
	addi	VirtualReg_1883, VirtualReg_1882, 1
	addi	VirtualReg_1884, VirtualReg_1883, 1
	addi	VirtualReg_1885, VirtualReg_1884, 1
	addi	VirtualReg_1886, VirtualReg_1885, 1
	addi	VirtualReg_1887, VirtualReg_1886, 1
	addi	VirtualReg_1888, VirtualReg_1887, 1
	addi	VirtualReg_1889, VirtualReg_1888, 1
	addi	VirtualReg_1890, VirtualReg_1889, 1
	addi	VirtualReg_1891, VirtualReg_1890, 1
	addi	VirtualReg_1892, VirtualReg_1891, 1
	addi	VirtualReg_1893, VirtualReg_1892, 1
	addi	VirtualReg_1894, VirtualReg_1893, 1
	addi	VirtualReg_1895, VirtualReg_1894, 1
	addi	VirtualReg_1896, VirtualReg_1895, 1
	addi	VirtualReg_1897, VirtualReg_1896, 1
	addi	VirtualReg_1898, VirtualReg_1897, 1
	addi	VirtualReg_1899, VirtualReg_1898, 1
	addi	VirtualReg_1900, VirtualReg_1899, 1
	addi	VirtualReg_1901, VirtualReg_1900, 1
	addi	VirtualReg_1902, VirtualReg_1901, 1
	addi	VirtualReg_1903, VirtualReg_1902, 1
	addi	VirtualReg_1904, VirtualReg_1903, 1
	addi	VirtualReg_1905, VirtualReg_1904, 1
	addi	VirtualReg_1906, VirtualReg_1905, 1
	addi	VirtualReg_1907, VirtualReg_1906, 1
	addi	VirtualReg_1908, VirtualReg_1907, 1
	addi	VirtualReg_1909, VirtualReg_1908, 1
	addi	VirtualReg_1910, VirtualReg_1909, 1
	addi	VirtualReg_1911, VirtualReg_1910, 1
	addi	VirtualReg_1912, VirtualReg_1911, 1
	addi	VirtualReg_1913, VirtualReg_1912, 1
	addi	VirtualReg_1914, VirtualReg_1913, 1
	addi	VirtualReg_1915, VirtualReg_1914, 1
	addi	VirtualReg_1916, VirtualReg_1915, 1
	addi	VirtualReg_1917, VirtualReg_1916, 1
	addi	VirtualReg_1918, VirtualReg_1917, 1
	addi	VirtualReg_1919, VirtualReg_1918, 1
	addi	VirtualReg_1920, VirtualReg_1919, 1
	addi	VirtualReg_1921, VirtualReg_1920, 1
	addi	VirtualReg_1922, VirtualReg_1921, 1
	addi	VirtualReg_1923, VirtualReg_1922, 1
	addi	VirtualReg_1924, VirtualReg_1923, 1
	addi	VirtualReg_1925, VirtualReg_1924, 1
	addi	VirtualReg_1926, VirtualReg_1925, 1
	addi	VirtualReg_1927, VirtualReg_1926, 1
	addi	VirtualReg_1928, VirtualReg_1927, 1
	addi	VirtualReg_1929, VirtualReg_1928, 1
	addi	VirtualReg_1930, VirtualReg_1929, 1
	addi	VirtualReg_1931, VirtualReg_1930, 1
	addi	VirtualReg_1932, VirtualReg_1931, 1
	addi	VirtualReg_1933, VirtualReg_1932, 1
	addi	VirtualReg_1934, VirtualReg_1933, 1
	addi	VirtualReg_1935, VirtualReg_1934, 1
	addi	VirtualReg_1936, VirtualReg_1935, 1
	addi	VirtualReg_1937, VirtualReg_1936, 1
	addi	VirtualReg_1938, VirtualReg_1937, 1
	addi	VirtualReg_1939, VirtualReg_1938, 1
	addi	VirtualReg_1940, VirtualReg_1939, 1
	addi	VirtualReg_1941, VirtualReg_1940, 1
	addi	VirtualReg_1942, VirtualReg_1941, 1
	addi	VirtualReg_1943, VirtualReg_1942, 1
	addi	VirtualReg_1944, VirtualReg_1943, 1
	addi	VirtualReg_1945, VirtualReg_1944, 1
	addi	VirtualReg_1946, VirtualReg_1945, 1
	addi	VirtualReg_1947, VirtualReg_1946, 1
	addi	VirtualReg_1948, VirtualReg_1947, 1
	addi	VirtualReg_1949, VirtualReg_1948, 1
	addi	VirtualReg_1950, VirtualReg_1949, 1
	addi	VirtualReg_1951, VirtualReg_1950, 1
	addi	VirtualReg_1952, VirtualReg_1951, 1
	addi	VirtualReg_1953, VirtualReg_1952, 1
	addi	VirtualReg_1954, VirtualReg_1953, 1
	addi	VirtualReg_1955, VirtualReg_1954, 1
	addi	VirtualReg_1956, VirtualReg_1955, 1
	addi	VirtualReg_1957, VirtualReg_1956, 1
	addi	VirtualReg_1958, VirtualReg_1957, 1
	addi	VirtualReg_1959, VirtualReg_1958, 1
	addi	VirtualReg_1960, VirtualReg_1959, 1
	addi	VirtualReg_1961, VirtualReg_1960, 1
	addi	VirtualReg_1962, VirtualReg_1961, 1
	addi	VirtualReg_1963, VirtualReg_1962, 1
	addi	VirtualReg_1964, VirtualReg_1963, 1
	addi	VirtualReg_1965, VirtualReg_1964, 1
	addi	VirtualReg_1966, VirtualReg_1965, 1
	addi	VirtualReg_1967, VirtualReg_1966, 1
	addi	VirtualReg_1968, VirtualReg_1967, 1
	addi	VirtualReg_1969, VirtualReg_1968, 1
	addi	VirtualReg_1970, VirtualReg_1969, 1
	addi	VirtualReg_1971, VirtualReg_1970, 1
	addi	VirtualReg_1972, VirtualReg_1971, 1
	addi	VirtualReg_1973, VirtualReg_1972, 1
	addi	VirtualReg_1974, VirtualReg_1973, 1
	addi	VirtualReg_1975, VirtualReg_1974, 1
	addi	VirtualReg_1976, VirtualReg_1975, 1
	addi	VirtualReg_1977, VirtualReg_1976, 1
	addi	VirtualReg_1978, VirtualReg_1977, 1
	addi	VirtualReg_1979, VirtualReg_1978, 1
	addi	VirtualReg_1980, VirtualReg_1979, 1
	addi	VirtualReg_1981, VirtualReg_1980, 1
	addi	VirtualReg_1982, VirtualReg_1981, 1
	addi	VirtualReg_1983, VirtualReg_1982, 1
	addi	VirtualReg_1984, VirtualReg_1983, 1
	addi	VirtualReg_1985, VirtualReg_1984, 1
	addi	VirtualReg_1986, VirtualReg_1985, 1
	addi	VirtualReg_1987, VirtualReg_1986, 1
	addi	VirtualReg_1988, VirtualReg_1987, 1
	addi	VirtualReg_1989, VirtualReg_1988, 1
	addi	VirtualReg_1990, VirtualReg_1989, 1
	addi	VirtualReg_1991, VirtualReg_1990, 1
	addi	VirtualReg_1992, VirtualReg_1991, 1
	addi	VirtualReg_1993, VirtualReg_1992, 1
	addi	VirtualReg_1994, VirtualReg_1993, 1
	addi	VirtualReg_1995, VirtualReg_1994, 1
	addi	VirtualReg_1996, VirtualReg_1995, 1
	addi	VirtualReg_1997, VirtualReg_1996, 1
	addi	VirtualReg_1998, VirtualReg_1997, 1
	addi	VirtualReg_1999, VirtualReg_1998, 1
	addi	VirtualReg_2000, VirtualReg_1999, 1
	addi	VirtualReg_2001, VirtualReg_2000, 1
	addi	VirtualReg_2002, VirtualReg_2001, 1
	addi	VirtualReg_2003, VirtualReg_2002, 1
	addi	VirtualReg_2004, VirtualReg_2003, 1
	addi	VirtualReg_2005, VirtualReg_2004, 1
	addi	VirtualReg_2006, VirtualReg_2005, 1
	addi	VirtualReg_2007, VirtualReg_2006, 1
	addi	VirtualReg_2008, VirtualReg_2007, 1
	addi	VirtualReg_2009, VirtualReg_2008, 1
	addi	VirtualReg_2010, VirtualReg_2009, 1
	addi	VirtualReg_2011, VirtualReg_2010, 1
	addi	VirtualReg_2012, VirtualReg_2011, 1
	addi	VirtualReg_2013, VirtualReg_2012, 1
	addi	VirtualReg_2014, VirtualReg_2013, 1
	addi	VirtualReg_2015, VirtualReg_2014, 1
	addi	VirtualReg_2016, VirtualReg_2015, 1
	addi	VirtualReg_2017, VirtualReg_2016, 1
	addi	VirtualReg_2018, VirtualReg_2017, 1
	addi	VirtualReg_2019, VirtualReg_2018, 1
	addi	VirtualReg_2020, VirtualReg_2019, 1
	addi	VirtualReg_2021, VirtualReg_2020, 1
	addi	VirtualReg_2022, VirtualReg_2021, 1
	addi	VirtualReg_2023, VirtualReg_2022, 1
	addi	VirtualReg_2024, VirtualReg_2023, 1
	addi	VirtualReg_2025, VirtualReg_2024, 1
	addi	VirtualReg_2026, VirtualReg_2025, 1
	addi	VirtualReg_2027, VirtualReg_2026, 1
	addi	VirtualReg_2028, VirtualReg_2027, 1
	addi	VirtualReg_2029, VirtualReg_2028, 1
	addi	VirtualReg_2030, VirtualReg_2029, 1
	addi	VirtualReg_2031, VirtualReg_2030, 1
	addi	VirtualReg_2032, VirtualReg_2031, 1
	addi	VirtualReg_2033, VirtualReg_2032, 1
	addi	VirtualReg_2034, VirtualReg_2033, 1
	addi	VirtualReg_2035, VirtualReg_2034, 1
	addi	VirtualReg_2036, VirtualReg_2035, 1
	addi	VirtualReg_2037, VirtualReg_2036, 1
	addi	VirtualReg_2038, VirtualReg_2037, 1
	addi	VirtualReg_2039, VirtualReg_2038, 1
	addi	VirtualReg_2040, VirtualReg_2039, 1
	addi	VirtualReg_2041, VirtualReg_2040, 1
	addi	VirtualReg_2042, VirtualReg_2041, 1
	addi	VirtualReg_2043, VirtualReg_2042, 1
	addi	VirtualReg_2044, VirtualReg_2043, 1
	addi	VirtualReg_2045, VirtualReg_2044, 1
	addi	VirtualReg_2046, VirtualReg_2045, 1
	addi	VirtualReg_2047, VirtualReg_2046, 1
	addi	VirtualReg_2048, VirtualReg_2047, 1
	addi	VirtualReg_2049, VirtualReg_2048, 1
	addi	VirtualReg_2050, VirtualReg_2049, 1
	addi	VirtualReg_2051, VirtualReg_2050, 1
	addi	VirtualReg_2052, VirtualReg_2051, 1
	addi	VirtualReg_2053, VirtualReg_2052, 1
	addi	VirtualReg_2054, VirtualReg_2053, 1
	addi	VirtualReg_2055, VirtualReg_2054, 1
	addi	VirtualReg_2056, VirtualReg_2055, 1
	addi	VirtualReg_2057, VirtualReg_2056, 1
	addi	VirtualReg_2058, VirtualReg_2057, 1
	addi	VirtualReg_2059, VirtualReg_2058, 1
	addi	VirtualReg_2060, VirtualReg_2059, 1
	j	.add2048_return
.add2048_return:
	mv	a0, VirtualReg_2060
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

	.globl	add4096
	.p2align	2
	.type	add4096,@function
add4096:
.add4096_assemblyInit:
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
	j	.add4096_entry
.add4096_entry:
	mv	a0, VirtualReg_0
	call	add2048
	mv	VirtualReg_13, a0
	mv	a0, VirtualReg_13
	call	add2048
	mv	VirtualReg_14, a0
	j	.add4096_return
.add4096_return:
	mv	a0, VirtualReg_14
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

	.globl	add8192
	.p2align	2
	.type	add8192,@function
add8192:
.add8192_assemblyInit:
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
	j	.add8192_entry
.add8192_entry:
	j	.add8192_call_add4096_39
.add8192_call_add4096_39:
	mv	a0, VirtualReg_0
	call	add2048
	mv	VirtualReg_13, a0
	mv	a0, VirtualReg_13
	call	add2048
	mv	VirtualReg_14, a0
	mv	a0, VirtualReg_14
	call	add2048
	mv	VirtualReg_15, a0
	mv	a0, VirtualReg_15
	call	add2048
	mv	VirtualReg_16, a0
	j	.add8192_return
.add8192_return:
	mv	a0, VirtualReg_16
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

	.globl	add16384
	.p2align	2
	.type	add16384,@function
add16384:
.add16384_assemblyInit:
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
	j	.add16384_entry
.add16384_entry:
	j	.add16384_call_add8192_41
.add16384_call_add8192_41:
	mv	a0, VirtualReg_0
	call	add2048
	mv	VirtualReg_13, a0
	mv	a0, VirtualReg_13
	call	add2048
	mv	VirtualReg_14, a0
	mv	a0, VirtualReg_14
	call	add2048
	mv	VirtualReg_15, a0
	mv	a0, VirtualReg_15
	call	add2048
	mv	VirtualReg_16, a0
	mv	a0, VirtualReg_16
	call	add2048
	mv	VirtualReg_17, a0
	mv	a0, VirtualReg_17
	call	add2048
	mv	VirtualReg_18, a0
	mv	a0, VirtualReg_18
	call	add2048
	mv	VirtualReg_19, a0
	mv	a0, VirtualReg_19
	call	add2048
	mv	VirtualReg_20, a0
	j	.add16384_return
.add16384_return:
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

	.globl	add32768
	.p2align	2
	.type	add32768,@function
add32768:
.add32768_assemblyInit:
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
	j	.add32768_entry
.add32768_entry:
	j	.add32768_call_add16384_43
.add32768_call_add16384_43:
	mv	a0, VirtualReg_0
	call	add2048
	mv	VirtualReg_13, a0
	mv	a0, VirtualReg_13
	call	add2048
	mv	VirtualReg_14, a0
	mv	a0, VirtualReg_14
	call	add2048
	mv	VirtualReg_15, a0
	mv	a0, VirtualReg_15
	call	add2048
	mv	VirtualReg_16, a0
	mv	a0, VirtualReg_16
	call	add2048
	mv	VirtualReg_17, a0
	mv	a0, VirtualReg_17
	call	add2048
	mv	VirtualReg_18, a0
	mv	a0, VirtualReg_18
	call	add2048
	mv	VirtualReg_19, a0
	mv	a0, VirtualReg_19
	call	add2048
	mv	VirtualReg_20, a0
	mv	a0, VirtualReg_20
	call	add2048
	mv	VirtualReg_21, a0
	mv	a0, VirtualReg_21
	call	add2048
	mv	VirtualReg_22, a0
	mv	a0, VirtualReg_22
	call	add2048
	mv	VirtualReg_23, a0
	mv	a0, VirtualReg_23
	call	add2048
	mv	VirtualReg_24, a0
	mv	a0, VirtualReg_24
	call	add2048
	mv	VirtualReg_25, a0
	mv	a0, VirtualReg_25
	call	add2048
	mv	VirtualReg_26, a0
	mv	a0, VirtualReg_26
	call	add2048
	mv	VirtualReg_27, a0
	mv	a0, VirtualReg_27
	call	add2048
	mv	VirtualReg_28, a0
	j	.add32768_return
.add32768_return:
	mv	a0, VirtualReg_28
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

	.globl	add65536
	.p2align	2
	.type	add65536,@function
add65536:
.add65536_assemblyInit:
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
	j	.add65536_entry
.add65536_entry:
	j	.add65536_call_add32768_45
.add65536_call_add32768_45:
	mv	a0, VirtualReg_0
	call	add2048
	mv	VirtualReg_13, a0
	mv	a0, VirtualReg_13
	call	add2048
	mv	VirtualReg_14, a0
	mv	a0, VirtualReg_14
	call	add2048
	mv	VirtualReg_15, a0
	mv	a0, VirtualReg_15
	call	add2048
	mv	VirtualReg_16, a0
	mv	a0, VirtualReg_16
	call	add2048
	mv	VirtualReg_17, a0
	mv	a0, VirtualReg_17
	call	add2048
	mv	VirtualReg_18, a0
	mv	a0, VirtualReg_18
	call	add2048
	mv	VirtualReg_19, a0
	mv	a0, VirtualReg_19
	call	add2048
	mv	VirtualReg_20, a0
	mv	a0, VirtualReg_20
	call	add2048
	mv	VirtualReg_21, a0
	mv	a0, VirtualReg_21
	call	add2048
	mv	VirtualReg_22, a0
	mv	a0, VirtualReg_22
	call	add2048
	mv	VirtualReg_23, a0
	mv	a0, VirtualReg_23
	call	add2048
	mv	VirtualReg_24, a0
	mv	a0, VirtualReg_24
	call	add2048
	mv	VirtualReg_25, a0
	mv	a0, VirtualReg_25
	call	add2048
	mv	VirtualReg_26, a0
	mv	a0, VirtualReg_26
	call	add2048
	mv	VirtualReg_27, a0
	mv	a0, VirtualReg_27
	call	add2048
	mv	VirtualReg_28, a0
	mv	a0, VirtualReg_28
	call	add2048
	mv	VirtualReg_29, a0
	mv	a0, VirtualReg_29
	call	add2048
	mv	VirtualReg_30, a0
	mv	a0, VirtualReg_30
	call	add2048
	mv	VirtualReg_31, a0
	mv	a0, VirtualReg_31
	call	add2048
	mv	VirtualReg_32, a0
	mv	a0, VirtualReg_32
	call	add2048
	mv	VirtualReg_33, a0
	mv	a0, VirtualReg_33
	call	add2048
	mv	VirtualReg_34, a0
	mv	a0, VirtualReg_34
	call	add2048
	mv	VirtualReg_35, a0
	mv	a0, VirtualReg_35
	call	add2048
	mv	VirtualReg_36, a0
	mv	a0, VirtualReg_36
	call	add2048
	mv	VirtualReg_37, a0
	mv	a0, VirtualReg_37
	call	add2048
	mv	VirtualReg_38, a0
	mv	a0, VirtualReg_38
	call	add2048
	mv	VirtualReg_39, a0
	mv	a0, VirtualReg_39
	call	add2048
	mv	VirtualReg_40, a0
	mv	a0, VirtualReg_40
	call	add2048
	mv	VirtualReg_41, a0
	mv	a0, VirtualReg_41
	call	add2048
	mv	VirtualReg_42, a0
	mv	a0, VirtualReg_42
	call	add2048
	mv	VirtualReg_43, a0
	mv	a0, VirtualReg_43
	call	add2048
	mv	VirtualReg_44, a0
	j	.add65536_return
.add65536_return:
	mv	a0, VirtualReg_44
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

	.globl	add131072
	.p2align	2
	.type	add131072,@function
add131072:
.add131072_assemblyInit:
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
	j	.add131072_entry
.add131072_entry:
	j	.add131072_call_add65536_47
.add131072_call_add65536_47:
	mv	a0, VirtualReg_0
	call	add2048
	mv	VirtualReg_13, a0
	mv	a0, VirtualReg_13
	call	add2048
	mv	VirtualReg_14, a0
	mv	a0, VirtualReg_14
	call	add2048
	mv	VirtualReg_15, a0
	mv	a0, VirtualReg_15
	call	add2048
	mv	VirtualReg_16, a0
	mv	a0, VirtualReg_16
	call	add2048
	mv	VirtualReg_17, a0
	mv	a0, VirtualReg_17
	call	add2048
	mv	VirtualReg_18, a0
	mv	a0, VirtualReg_18
	call	add2048
	mv	VirtualReg_19, a0
	mv	a0, VirtualReg_19
	call	add2048
	mv	VirtualReg_20, a0
	mv	a0, VirtualReg_20
	call	add2048
	mv	VirtualReg_21, a0
	mv	a0, VirtualReg_21
	call	add2048
	mv	VirtualReg_22, a0
	mv	a0, VirtualReg_22
	call	add2048
	mv	VirtualReg_23, a0
	mv	a0, VirtualReg_23
	call	add2048
	mv	VirtualReg_24, a0
	mv	a0, VirtualReg_24
	call	add2048
	mv	VirtualReg_25, a0
	mv	a0, VirtualReg_25
	call	add2048
	mv	VirtualReg_26, a0
	mv	a0, VirtualReg_26
	call	add2048
	mv	VirtualReg_27, a0
	mv	a0, VirtualReg_27
	call	add2048
	mv	VirtualReg_28, a0
	mv	a0, VirtualReg_28
	call	add2048
	mv	VirtualReg_29, a0
	mv	a0, VirtualReg_29
	call	add2048
	mv	VirtualReg_30, a0
	mv	a0, VirtualReg_30
	call	add2048
	mv	VirtualReg_31, a0
	mv	a0, VirtualReg_31
	call	add2048
	mv	VirtualReg_32, a0
	mv	a0, VirtualReg_32
	call	add2048
	mv	VirtualReg_33, a0
	mv	a0, VirtualReg_33
	call	add2048
	mv	VirtualReg_34, a0
	mv	a0, VirtualReg_34
	call	add2048
	mv	VirtualReg_35, a0
	mv	a0, VirtualReg_35
	call	add2048
	mv	VirtualReg_36, a0
	mv	a0, VirtualReg_36
	call	add2048
	mv	VirtualReg_37, a0
	mv	a0, VirtualReg_37
	call	add2048
	mv	VirtualReg_38, a0
	mv	a0, VirtualReg_38
	call	add2048
	mv	VirtualReg_39, a0
	mv	a0, VirtualReg_39
	call	add2048
	mv	VirtualReg_40, a0
	mv	a0, VirtualReg_40
	call	add2048
	mv	VirtualReg_41, a0
	mv	a0, VirtualReg_41
	call	add2048
	mv	VirtualReg_42, a0
	mv	a0, VirtualReg_42
	call	add2048
	mv	VirtualReg_43, a0
	mv	a0, VirtualReg_43
	call	add2048
	mv	VirtualReg_44, a0
	mv	a0, VirtualReg_44
	call	add2048
	mv	VirtualReg_45, a0
	mv	a0, VirtualReg_45
	call	add2048
	mv	VirtualReg_46, a0
	mv	a0, VirtualReg_46
	call	add2048
	mv	VirtualReg_47, a0
	mv	a0, VirtualReg_47
	call	add2048
	mv	VirtualReg_48, a0
	mv	a0, VirtualReg_48
	call	add2048
	mv	VirtualReg_49, a0
	mv	a0, VirtualReg_49
	call	add2048
	mv	VirtualReg_50, a0
	mv	a0, VirtualReg_50
	call	add2048
	mv	VirtualReg_51, a0
	mv	a0, VirtualReg_51
	call	add2048
	mv	VirtualReg_52, a0
	mv	a0, VirtualReg_52
	call	add2048
	mv	VirtualReg_53, a0
	mv	a0, VirtualReg_53
	call	add2048
	mv	VirtualReg_54, a0
	mv	a0, VirtualReg_54
	call	add2048
	mv	VirtualReg_55, a0
	mv	a0, VirtualReg_55
	call	add2048
	mv	VirtualReg_56, a0
	mv	a0, VirtualReg_56
	call	add2048
	mv	VirtualReg_57, a0
	mv	a0, VirtualReg_57
	call	add2048
	mv	VirtualReg_58, a0
	mv	a0, VirtualReg_58
	call	add2048
	mv	VirtualReg_59, a0
	mv	a0, VirtualReg_59
	call	add2048
	mv	VirtualReg_60, a0
	mv	a0, VirtualReg_60
	call	add2048
	mv	VirtualReg_61, a0
	mv	a0, VirtualReg_61
	call	add2048
	mv	VirtualReg_62, a0
	mv	a0, VirtualReg_62
	call	add2048
	mv	VirtualReg_63, a0
	mv	a0, VirtualReg_63
	call	add2048
	mv	VirtualReg_64, a0
	mv	a0, VirtualReg_64
	call	add2048
	mv	VirtualReg_65, a0
	mv	a0, VirtualReg_65
	call	add2048
	mv	VirtualReg_66, a0
	mv	a0, VirtualReg_66
	call	add2048
	mv	VirtualReg_67, a0
	mv	a0, VirtualReg_67
	call	add2048
	mv	VirtualReg_68, a0
	mv	a0, VirtualReg_68
	call	add2048
	mv	VirtualReg_69, a0
	mv	a0, VirtualReg_69
	call	add2048
	mv	VirtualReg_70, a0
	mv	a0, VirtualReg_70
	call	add2048
	mv	VirtualReg_71, a0
	mv	a0, VirtualReg_71
	call	add2048
	mv	VirtualReg_72, a0
	mv	a0, VirtualReg_72
	call	add2048
	mv	VirtualReg_73, a0
	mv	a0, VirtualReg_73
	call	add2048
	mv	VirtualReg_74, a0
	mv	a0, VirtualReg_74
	call	add2048
	mv	VirtualReg_75, a0
	mv	a0, VirtualReg_75
	call	add2048
	mv	VirtualReg_76, a0
	j	.add131072_return
.add131072_return:
	mv	a0, VirtualReg_76
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

	.globl	add262144
	.p2align	2
	.type	add262144,@function
add262144:
.add262144_assemblyInit:
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
	j	.add262144_entry
.add262144_entry:
	j	.add262144_call_add131072_49
.add262144_call_add131072_49:
	mv	a0, VirtualReg_0
	call	add2048
	mv	VirtualReg_13, a0
	mv	a0, VirtualReg_13
	call	add2048
	mv	VirtualReg_14, a0
	mv	a0, VirtualReg_14
	call	add2048
	mv	VirtualReg_15, a0
	mv	a0, VirtualReg_15
	call	add2048
	mv	VirtualReg_16, a0
	mv	a0, VirtualReg_16
	call	add2048
	mv	VirtualReg_17, a0
	mv	a0, VirtualReg_17
	call	add2048
	mv	VirtualReg_18, a0
	mv	a0, VirtualReg_18
	call	add2048
	mv	VirtualReg_19, a0
	mv	a0, VirtualReg_19
	call	add2048
	mv	VirtualReg_20, a0
	mv	a0, VirtualReg_20
	call	add2048
	mv	VirtualReg_21, a0
	mv	a0, VirtualReg_21
	call	add2048
	mv	VirtualReg_22, a0
	mv	a0, VirtualReg_22
	call	add2048
	mv	VirtualReg_23, a0
	mv	a0, VirtualReg_23
	call	add2048
	mv	VirtualReg_24, a0
	mv	a0, VirtualReg_24
	call	add2048
	mv	VirtualReg_25, a0
	mv	a0, VirtualReg_25
	call	add2048
	mv	VirtualReg_26, a0
	mv	a0, VirtualReg_26
	call	add2048
	mv	VirtualReg_27, a0
	mv	a0, VirtualReg_27
	call	add2048
	mv	VirtualReg_28, a0
	mv	a0, VirtualReg_28
	call	add2048
	mv	VirtualReg_29, a0
	mv	a0, VirtualReg_29
	call	add2048
	mv	VirtualReg_30, a0
	mv	a0, VirtualReg_30
	call	add2048
	mv	VirtualReg_31, a0
	mv	a0, VirtualReg_31
	call	add2048
	mv	VirtualReg_32, a0
	mv	a0, VirtualReg_32
	call	add2048
	mv	VirtualReg_33, a0
	mv	a0, VirtualReg_33
	call	add2048
	mv	VirtualReg_34, a0
	mv	a0, VirtualReg_34
	call	add2048
	mv	VirtualReg_35, a0
	mv	a0, VirtualReg_35
	call	add2048
	mv	VirtualReg_36, a0
	mv	a0, VirtualReg_36
	call	add2048
	mv	VirtualReg_37, a0
	mv	a0, VirtualReg_37
	call	add2048
	mv	VirtualReg_38, a0
	mv	a0, VirtualReg_38
	call	add2048
	mv	VirtualReg_39, a0
	mv	a0, VirtualReg_39
	call	add2048
	mv	VirtualReg_40, a0
	mv	a0, VirtualReg_40
	call	add2048
	mv	VirtualReg_41, a0
	mv	a0, VirtualReg_41
	call	add2048
	mv	VirtualReg_42, a0
	mv	a0, VirtualReg_42
	call	add2048
	mv	VirtualReg_43, a0
	mv	a0, VirtualReg_43
	call	add2048
	mv	VirtualReg_44, a0
	mv	a0, VirtualReg_44
	call	add2048
	mv	VirtualReg_45, a0
	mv	a0, VirtualReg_45
	call	add2048
	mv	VirtualReg_46, a0
	mv	a0, VirtualReg_46
	call	add2048
	mv	VirtualReg_47, a0
	mv	a0, VirtualReg_47
	call	add2048
	mv	VirtualReg_48, a0
	mv	a0, VirtualReg_48
	call	add2048
	mv	VirtualReg_49, a0
	mv	a0, VirtualReg_49
	call	add2048
	mv	VirtualReg_50, a0
	mv	a0, VirtualReg_50
	call	add2048
	mv	VirtualReg_51, a0
	mv	a0, VirtualReg_51
	call	add2048
	mv	VirtualReg_52, a0
	mv	a0, VirtualReg_52
	call	add2048
	mv	VirtualReg_53, a0
	mv	a0, VirtualReg_53
	call	add2048
	mv	VirtualReg_54, a0
	mv	a0, VirtualReg_54
	call	add2048
	mv	VirtualReg_55, a0
	mv	a0, VirtualReg_55
	call	add2048
	mv	VirtualReg_56, a0
	mv	a0, VirtualReg_56
	call	add2048
	mv	VirtualReg_57, a0
	mv	a0, VirtualReg_57
	call	add2048
	mv	VirtualReg_58, a0
	mv	a0, VirtualReg_58
	call	add2048
	mv	VirtualReg_59, a0
	mv	a0, VirtualReg_59
	call	add2048
	mv	VirtualReg_60, a0
	mv	a0, VirtualReg_60
	call	add2048
	mv	VirtualReg_61, a0
	mv	a0, VirtualReg_61
	call	add2048
	mv	VirtualReg_62, a0
	mv	a0, VirtualReg_62
	call	add2048
	mv	VirtualReg_63, a0
	mv	a0, VirtualReg_63
	call	add2048
	mv	VirtualReg_64, a0
	mv	a0, VirtualReg_64
	call	add2048
	mv	VirtualReg_65, a0
	mv	a0, VirtualReg_65
	call	add2048
	mv	VirtualReg_66, a0
	mv	a0, VirtualReg_66
	call	add2048
	mv	VirtualReg_67, a0
	mv	a0, VirtualReg_67
	call	add2048
	mv	VirtualReg_68, a0
	mv	a0, VirtualReg_68
	call	add2048
	mv	VirtualReg_69, a0
	mv	a0, VirtualReg_69
	call	add2048
	mv	VirtualReg_70, a0
	mv	a0, VirtualReg_70
	call	add2048
	mv	VirtualReg_71, a0
	mv	a0, VirtualReg_71
	call	add2048
	mv	VirtualReg_72, a0
	mv	a0, VirtualReg_72
	call	add2048
	mv	VirtualReg_73, a0
	mv	a0, VirtualReg_73
	call	add2048
	mv	VirtualReg_74, a0
	mv	a0, VirtualReg_74
	call	add2048
	mv	VirtualReg_75, a0
	mv	a0, VirtualReg_75
	call	add2048
	mv	VirtualReg_76, a0
	mv	a0, VirtualReg_76
	call	add2048
	mv	VirtualReg_77, a0
	mv	a0, VirtualReg_77
	call	add2048
	mv	VirtualReg_78, a0
	mv	a0, VirtualReg_78
	call	add2048
	mv	VirtualReg_79, a0
	mv	a0, VirtualReg_79
	call	add2048
	mv	VirtualReg_80, a0
	mv	a0, VirtualReg_80
	call	add2048
	mv	VirtualReg_81, a0
	mv	a0, VirtualReg_81
	call	add2048
	mv	VirtualReg_82, a0
	mv	a0, VirtualReg_82
	call	add2048
	mv	VirtualReg_83, a0
	mv	a0, VirtualReg_83
	call	add2048
	mv	VirtualReg_84, a0
	mv	a0, VirtualReg_84
	call	add2048
	mv	VirtualReg_85, a0
	mv	a0, VirtualReg_85
	call	add2048
	mv	VirtualReg_86, a0
	mv	a0, VirtualReg_86
	call	add2048
	mv	VirtualReg_87, a0
	mv	a0, VirtualReg_87
	call	add2048
	mv	VirtualReg_88, a0
	mv	a0, VirtualReg_88
	call	add2048
	mv	VirtualReg_89, a0
	mv	a0, VirtualReg_89
	call	add2048
	mv	VirtualReg_90, a0
	mv	a0, VirtualReg_90
	call	add2048
	mv	VirtualReg_91, a0
	mv	a0, VirtualReg_91
	call	add2048
	mv	VirtualReg_92, a0
	mv	a0, VirtualReg_92
	call	add2048
	mv	VirtualReg_93, a0
	mv	a0, VirtualReg_93
	call	add2048
	mv	VirtualReg_94, a0
	mv	a0, VirtualReg_94
	call	add2048
	mv	VirtualReg_95, a0
	mv	a0, VirtualReg_95
	call	add2048
	mv	VirtualReg_96, a0
	mv	a0, VirtualReg_96
	call	add2048
	mv	VirtualReg_97, a0
	mv	a0, VirtualReg_97
	call	add2048
	mv	VirtualReg_98, a0
	mv	a0, VirtualReg_98
	call	add2048
	mv	VirtualReg_99, a0
	mv	a0, VirtualReg_99
	call	add2048
	mv	VirtualReg_100, a0
	mv	a0, VirtualReg_100
	call	add2048
	mv	VirtualReg_101, a0
	mv	a0, VirtualReg_101
	call	add2048
	mv	VirtualReg_102, a0
	mv	a0, VirtualReg_102
	call	add2048
	mv	VirtualReg_103, a0
	mv	a0, VirtualReg_103
	call	add2048
	mv	VirtualReg_104, a0
	mv	a0, VirtualReg_104
	call	add2048
	mv	VirtualReg_105, a0
	mv	a0, VirtualReg_105
	call	add2048
	mv	VirtualReg_106, a0
	mv	a0, VirtualReg_106
	call	add2048
	mv	VirtualReg_107, a0
	mv	a0, VirtualReg_107
	call	add2048
	mv	VirtualReg_108, a0
	mv	a0, VirtualReg_108
	call	add2048
	mv	VirtualReg_109, a0
	mv	a0, VirtualReg_109
	call	add2048
	mv	VirtualReg_110, a0
	mv	a0, VirtualReg_110
	call	add2048
	mv	VirtualReg_111, a0
	mv	a0, VirtualReg_111
	call	add2048
	mv	VirtualReg_112, a0
	mv	a0, VirtualReg_112
	call	add2048
	mv	VirtualReg_113, a0
	mv	a0, VirtualReg_113
	call	add2048
	mv	VirtualReg_114, a0
	mv	a0, VirtualReg_114
	call	add2048
	mv	VirtualReg_115, a0
	mv	a0, VirtualReg_115
	call	add2048
	mv	VirtualReg_116, a0
	mv	a0, VirtualReg_116
	call	add2048
	mv	VirtualReg_117, a0
	mv	a0, VirtualReg_117
	call	add2048
	mv	VirtualReg_118, a0
	mv	a0, VirtualReg_118
	call	add2048
	mv	VirtualReg_119, a0
	mv	a0, VirtualReg_119
	call	add2048
	mv	VirtualReg_120, a0
	mv	a0, VirtualReg_120
	call	add2048
	mv	VirtualReg_121, a0
	mv	a0, VirtualReg_121
	call	add2048
	mv	VirtualReg_122, a0
	mv	a0, VirtualReg_122
	call	add2048
	mv	VirtualReg_123, a0
	mv	a0, VirtualReg_123
	call	add2048
	mv	VirtualReg_124, a0
	mv	a0, VirtualReg_124
	call	add2048
	mv	VirtualReg_125, a0
	mv	a0, VirtualReg_125
	call	add2048
	mv	VirtualReg_126, a0
	mv	a0, VirtualReg_126
	call	add2048
	mv	VirtualReg_127, a0
	mv	a0, VirtualReg_127
	call	add2048
	mv	VirtualReg_128, a0
	mv	a0, VirtualReg_128
	call	add2048
	mv	VirtualReg_129, a0
	mv	a0, VirtualReg_129
	call	add2048
	mv	VirtualReg_130, a0
	mv	a0, VirtualReg_130
	call	add2048
	mv	VirtualReg_131, a0
	mv	a0, VirtualReg_131
	call	add2048
	mv	VirtualReg_132, a0
	mv	a0, VirtualReg_132
	call	add2048
	mv	VirtualReg_133, a0
	mv	a0, VirtualReg_133
	call	add2048
	mv	VirtualReg_134, a0
	mv	a0, VirtualReg_134
	call	add2048
	mv	VirtualReg_135, a0
	mv	a0, VirtualReg_135
	call	add2048
	mv	VirtualReg_136, a0
	mv	a0, VirtualReg_136
	call	add2048
	mv	VirtualReg_137, a0
	mv	a0, VirtualReg_137
	call	add2048
	mv	VirtualReg_138, a0
	mv	a0, VirtualReg_138
	call	add2048
	mv	VirtualReg_139, a0
	mv	a0, VirtualReg_139
	call	add2048
	mv	VirtualReg_140, a0
	j	.add262144_return
.add262144_return:
	mv	a0, VirtualReg_140
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

	.globl	add524288
	.p2align	2
	.type	add524288,@function
add524288:
.add524288_assemblyInit:
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
	j	.add524288_entry
.add524288_entry:
	j	.add524288_call_add262144_51
.add524288_call_add262144_51:
	mv	a0, VirtualReg_0
	call	add2048
	mv	VirtualReg_13, a0
	mv	a0, VirtualReg_13
	call	add2048
	mv	VirtualReg_14, a0
	mv	a0, VirtualReg_14
	call	add2048
	mv	VirtualReg_15, a0
	mv	a0, VirtualReg_15
	call	add2048
	mv	VirtualReg_16, a0
	mv	a0, VirtualReg_16
	call	add2048
	mv	VirtualReg_17, a0
	mv	a0, VirtualReg_17
	call	add2048
	mv	VirtualReg_18, a0
	mv	a0, VirtualReg_18
	call	add2048
	mv	VirtualReg_19, a0
	mv	a0, VirtualReg_19
	call	add2048
	mv	VirtualReg_20, a0
	mv	a0, VirtualReg_20
	call	add2048
	mv	VirtualReg_21, a0
	mv	a0, VirtualReg_21
	call	add2048
	mv	VirtualReg_22, a0
	mv	a0, VirtualReg_22
	call	add2048
	mv	VirtualReg_23, a0
	mv	a0, VirtualReg_23
	call	add2048
	mv	VirtualReg_24, a0
	mv	a0, VirtualReg_24
	call	add2048
	mv	VirtualReg_25, a0
	mv	a0, VirtualReg_25
	call	add2048
	mv	VirtualReg_26, a0
	mv	a0, VirtualReg_26
	call	add2048
	mv	VirtualReg_27, a0
	mv	a0, VirtualReg_27
	call	add2048
	mv	VirtualReg_28, a0
	mv	a0, VirtualReg_28
	call	add2048
	mv	VirtualReg_29, a0
	mv	a0, VirtualReg_29
	call	add2048
	mv	VirtualReg_30, a0
	mv	a0, VirtualReg_30
	call	add2048
	mv	VirtualReg_31, a0
	mv	a0, VirtualReg_31
	call	add2048
	mv	VirtualReg_32, a0
	mv	a0, VirtualReg_32
	call	add2048
	mv	VirtualReg_33, a0
	mv	a0, VirtualReg_33
	call	add2048
	mv	VirtualReg_34, a0
	mv	a0, VirtualReg_34
	call	add2048
	mv	VirtualReg_35, a0
	mv	a0, VirtualReg_35
	call	add2048
	mv	VirtualReg_36, a0
	mv	a0, VirtualReg_36
	call	add2048
	mv	VirtualReg_37, a0
	mv	a0, VirtualReg_37
	call	add2048
	mv	VirtualReg_38, a0
	mv	a0, VirtualReg_38
	call	add2048
	mv	VirtualReg_39, a0
	mv	a0, VirtualReg_39
	call	add2048
	mv	VirtualReg_40, a0
	mv	a0, VirtualReg_40
	call	add2048
	mv	VirtualReg_41, a0
	mv	a0, VirtualReg_41
	call	add2048
	mv	VirtualReg_42, a0
	mv	a0, VirtualReg_42
	call	add2048
	mv	VirtualReg_43, a0
	mv	a0, VirtualReg_43
	call	add2048
	mv	VirtualReg_44, a0
	mv	a0, VirtualReg_44
	call	add2048
	mv	VirtualReg_45, a0
	mv	a0, VirtualReg_45
	call	add2048
	mv	VirtualReg_46, a0
	mv	a0, VirtualReg_46
	call	add2048
	mv	VirtualReg_47, a0
	mv	a0, VirtualReg_47
	call	add2048
	mv	VirtualReg_48, a0
	mv	a0, VirtualReg_48
	call	add2048
	mv	VirtualReg_49, a0
	mv	a0, VirtualReg_49
	call	add2048
	mv	VirtualReg_50, a0
	mv	a0, VirtualReg_50
	call	add2048
	mv	VirtualReg_51, a0
	mv	a0, VirtualReg_51
	call	add2048
	mv	VirtualReg_52, a0
	mv	a0, VirtualReg_52
	call	add2048
	mv	VirtualReg_53, a0
	mv	a0, VirtualReg_53
	call	add2048
	mv	VirtualReg_54, a0
	mv	a0, VirtualReg_54
	call	add2048
	mv	VirtualReg_55, a0
	mv	a0, VirtualReg_55
	call	add2048
	mv	VirtualReg_56, a0
	mv	a0, VirtualReg_56
	call	add2048
	mv	VirtualReg_57, a0
	mv	a0, VirtualReg_57
	call	add2048
	mv	VirtualReg_58, a0
	mv	a0, VirtualReg_58
	call	add2048
	mv	VirtualReg_59, a0
	mv	a0, VirtualReg_59
	call	add2048
	mv	VirtualReg_60, a0
	mv	a0, VirtualReg_60
	call	add2048
	mv	VirtualReg_61, a0
	mv	a0, VirtualReg_61
	call	add2048
	mv	VirtualReg_62, a0
	mv	a0, VirtualReg_62
	call	add2048
	mv	VirtualReg_63, a0
	mv	a0, VirtualReg_63
	call	add2048
	mv	VirtualReg_64, a0
	mv	a0, VirtualReg_64
	call	add2048
	mv	VirtualReg_65, a0
	mv	a0, VirtualReg_65
	call	add2048
	mv	VirtualReg_66, a0
	mv	a0, VirtualReg_66
	call	add2048
	mv	VirtualReg_67, a0
	mv	a0, VirtualReg_67
	call	add2048
	mv	VirtualReg_68, a0
	mv	a0, VirtualReg_68
	call	add2048
	mv	VirtualReg_69, a0
	mv	a0, VirtualReg_69
	call	add2048
	mv	VirtualReg_70, a0
	mv	a0, VirtualReg_70
	call	add2048
	mv	VirtualReg_71, a0
	mv	a0, VirtualReg_71
	call	add2048
	mv	VirtualReg_72, a0
	mv	a0, VirtualReg_72
	call	add2048
	mv	VirtualReg_73, a0
	mv	a0, VirtualReg_73
	call	add2048
	mv	VirtualReg_74, a0
	mv	a0, VirtualReg_74
	call	add2048
	mv	VirtualReg_75, a0
	mv	a0, VirtualReg_75
	call	add2048
	mv	VirtualReg_76, a0
	mv	a0, VirtualReg_76
	call	add2048
	mv	VirtualReg_77, a0
	mv	a0, VirtualReg_77
	call	add2048
	mv	VirtualReg_78, a0
	mv	a0, VirtualReg_78
	call	add2048
	mv	VirtualReg_79, a0
	mv	a0, VirtualReg_79
	call	add2048
	mv	VirtualReg_80, a0
	mv	a0, VirtualReg_80
	call	add2048
	mv	VirtualReg_81, a0
	mv	a0, VirtualReg_81
	call	add2048
	mv	VirtualReg_82, a0
	mv	a0, VirtualReg_82
	call	add2048
	mv	VirtualReg_83, a0
	mv	a0, VirtualReg_83
	call	add2048
	mv	VirtualReg_84, a0
	mv	a0, VirtualReg_84
	call	add2048
	mv	VirtualReg_85, a0
	mv	a0, VirtualReg_85
	call	add2048
	mv	VirtualReg_86, a0
	mv	a0, VirtualReg_86
	call	add2048
	mv	VirtualReg_87, a0
	mv	a0, VirtualReg_87
	call	add2048
	mv	VirtualReg_88, a0
	mv	a0, VirtualReg_88
	call	add2048
	mv	VirtualReg_89, a0
	mv	a0, VirtualReg_89
	call	add2048
	mv	VirtualReg_90, a0
	mv	a0, VirtualReg_90
	call	add2048
	mv	VirtualReg_91, a0
	mv	a0, VirtualReg_91
	call	add2048
	mv	VirtualReg_92, a0
	mv	a0, VirtualReg_92
	call	add2048
	mv	VirtualReg_93, a0
	mv	a0, VirtualReg_93
	call	add2048
	mv	VirtualReg_94, a0
	mv	a0, VirtualReg_94
	call	add2048
	mv	VirtualReg_95, a0
	mv	a0, VirtualReg_95
	call	add2048
	mv	VirtualReg_96, a0
	mv	a0, VirtualReg_96
	call	add2048
	mv	VirtualReg_97, a0
	mv	a0, VirtualReg_97
	call	add2048
	mv	VirtualReg_98, a0
	mv	a0, VirtualReg_98
	call	add2048
	mv	VirtualReg_99, a0
	mv	a0, VirtualReg_99
	call	add2048
	mv	VirtualReg_100, a0
	mv	a0, VirtualReg_100
	call	add2048
	mv	VirtualReg_101, a0
	mv	a0, VirtualReg_101
	call	add2048
	mv	VirtualReg_102, a0
	mv	a0, VirtualReg_102
	call	add2048
	mv	VirtualReg_103, a0
	mv	a0, VirtualReg_103
	call	add2048
	mv	VirtualReg_104, a0
	mv	a0, VirtualReg_104
	call	add2048
	mv	VirtualReg_105, a0
	mv	a0, VirtualReg_105
	call	add2048
	mv	VirtualReg_106, a0
	mv	a0, VirtualReg_106
	call	add2048
	mv	VirtualReg_107, a0
	mv	a0, VirtualReg_107
	call	add2048
	mv	VirtualReg_108, a0
	mv	a0, VirtualReg_108
	call	add2048
	mv	VirtualReg_109, a0
	mv	a0, VirtualReg_109
	call	add2048
	mv	VirtualReg_110, a0
	mv	a0, VirtualReg_110
	call	add2048
	mv	VirtualReg_111, a0
	mv	a0, VirtualReg_111
	call	add2048
	mv	VirtualReg_112, a0
	mv	a0, VirtualReg_112
	call	add2048
	mv	VirtualReg_113, a0
	mv	a0, VirtualReg_113
	call	add2048
	mv	VirtualReg_114, a0
	mv	a0, VirtualReg_114
	call	add2048
	mv	VirtualReg_115, a0
	mv	a0, VirtualReg_115
	call	add2048
	mv	VirtualReg_116, a0
	mv	a0, VirtualReg_116
	call	add2048
	mv	VirtualReg_117, a0
	mv	a0, VirtualReg_117
	call	add2048
	mv	VirtualReg_118, a0
	mv	a0, VirtualReg_118
	call	add2048
	mv	VirtualReg_119, a0
	mv	a0, VirtualReg_119
	call	add2048
	mv	VirtualReg_120, a0
	mv	a0, VirtualReg_120
	call	add2048
	mv	VirtualReg_121, a0
	mv	a0, VirtualReg_121
	call	add2048
	mv	VirtualReg_122, a0
	mv	a0, VirtualReg_122
	call	add2048
	mv	VirtualReg_123, a0
	mv	a0, VirtualReg_123
	call	add2048
	mv	VirtualReg_124, a0
	mv	a0, VirtualReg_124
	call	add2048
	mv	VirtualReg_125, a0
	mv	a0, VirtualReg_125
	call	add2048
	mv	VirtualReg_126, a0
	mv	a0, VirtualReg_126
	call	add2048
	mv	VirtualReg_127, a0
	mv	a0, VirtualReg_127
	call	add2048
	mv	VirtualReg_128, a0
	mv	a0, VirtualReg_128
	call	add2048
	mv	VirtualReg_129, a0
	mv	a0, VirtualReg_129
	call	add2048
	mv	VirtualReg_130, a0
	mv	a0, VirtualReg_130
	call	add2048
	mv	VirtualReg_131, a0
	mv	a0, VirtualReg_131
	call	add2048
	mv	VirtualReg_132, a0
	mv	a0, VirtualReg_132
	call	add2048
	mv	VirtualReg_133, a0
	mv	a0, VirtualReg_133
	call	add2048
	mv	VirtualReg_134, a0
	mv	a0, VirtualReg_134
	call	add2048
	mv	VirtualReg_135, a0
	mv	a0, VirtualReg_135
	call	add2048
	mv	VirtualReg_136, a0
	mv	a0, VirtualReg_136
	call	add2048
	mv	VirtualReg_137, a0
	mv	a0, VirtualReg_137
	call	add2048
	mv	VirtualReg_138, a0
	mv	a0, VirtualReg_138
	call	add2048
	mv	VirtualReg_139, a0
	mv	a0, VirtualReg_139
	call	add2048
	mv	VirtualReg_140, a0
	mv	a0, VirtualReg_140
	call	add2048
	mv	VirtualReg_141, a0
	mv	a0, VirtualReg_141
	call	add2048
	mv	VirtualReg_142, a0
	mv	a0, VirtualReg_142
	call	add2048
	mv	VirtualReg_143, a0
	mv	a0, VirtualReg_143
	call	add2048
	mv	VirtualReg_144, a0
	mv	a0, VirtualReg_144
	call	add2048
	mv	VirtualReg_145, a0
	mv	a0, VirtualReg_145
	call	add2048
	mv	VirtualReg_146, a0
	mv	a0, VirtualReg_146
	call	add2048
	mv	VirtualReg_147, a0
	mv	a0, VirtualReg_147
	call	add2048
	mv	VirtualReg_148, a0
	mv	a0, VirtualReg_148
	call	add2048
	mv	VirtualReg_149, a0
	mv	a0, VirtualReg_149
	call	add2048
	mv	VirtualReg_150, a0
	mv	a0, VirtualReg_150
	call	add2048
	mv	VirtualReg_151, a0
	mv	a0, VirtualReg_151
	call	add2048
	mv	VirtualReg_152, a0
	mv	a0, VirtualReg_152
	call	add2048
	mv	VirtualReg_153, a0
	mv	a0, VirtualReg_153
	call	add2048
	mv	VirtualReg_154, a0
	mv	a0, VirtualReg_154
	call	add2048
	mv	VirtualReg_155, a0
	mv	a0, VirtualReg_155
	call	add2048
	mv	VirtualReg_156, a0
	mv	a0, VirtualReg_156
	call	add2048
	mv	VirtualReg_157, a0
	mv	a0, VirtualReg_157
	call	add2048
	mv	VirtualReg_158, a0
	mv	a0, VirtualReg_158
	call	add2048
	mv	VirtualReg_159, a0
	mv	a0, VirtualReg_159
	call	add2048
	mv	VirtualReg_160, a0
	mv	a0, VirtualReg_160
	call	add2048
	mv	VirtualReg_161, a0
	mv	a0, VirtualReg_161
	call	add2048
	mv	VirtualReg_162, a0
	mv	a0, VirtualReg_162
	call	add2048
	mv	VirtualReg_163, a0
	mv	a0, VirtualReg_163
	call	add2048
	mv	VirtualReg_164, a0
	mv	a0, VirtualReg_164
	call	add2048
	mv	VirtualReg_165, a0
	mv	a0, VirtualReg_165
	call	add2048
	mv	VirtualReg_166, a0
	mv	a0, VirtualReg_166
	call	add2048
	mv	VirtualReg_167, a0
	mv	a0, VirtualReg_167
	call	add2048
	mv	VirtualReg_168, a0
	mv	a0, VirtualReg_168
	call	add2048
	mv	VirtualReg_169, a0
	mv	a0, VirtualReg_169
	call	add2048
	mv	VirtualReg_170, a0
	mv	a0, VirtualReg_170
	call	add2048
	mv	VirtualReg_171, a0
	mv	a0, VirtualReg_171
	call	add2048
	mv	VirtualReg_172, a0
	mv	a0, VirtualReg_172
	call	add2048
	mv	VirtualReg_173, a0
	mv	a0, VirtualReg_173
	call	add2048
	mv	VirtualReg_174, a0
	mv	a0, VirtualReg_174
	call	add2048
	mv	VirtualReg_175, a0
	mv	a0, VirtualReg_175
	call	add2048
	mv	VirtualReg_176, a0
	mv	a0, VirtualReg_176
	call	add2048
	mv	VirtualReg_177, a0
	mv	a0, VirtualReg_177
	call	add2048
	mv	VirtualReg_178, a0
	mv	a0, VirtualReg_178
	call	add2048
	mv	VirtualReg_179, a0
	mv	a0, VirtualReg_179
	call	add2048
	mv	VirtualReg_180, a0
	mv	a0, VirtualReg_180
	call	add2048
	mv	VirtualReg_181, a0
	mv	a0, VirtualReg_181
	call	add2048
	mv	VirtualReg_182, a0
	mv	a0, VirtualReg_182
	call	add2048
	mv	VirtualReg_183, a0
	mv	a0, VirtualReg_183
	call	add2048
	mv	VirtualReg_184, a0
	mv	a0, VirtualReg_184
	call	add2048
	mv	VirtualReg_185, a0
	mv	a0, VirtualReg_185
	call	add2048
	mv	VirtualReg_186, a0
	mv	a0, VirtualReg_186
	call	add2048
	mv	VirtualReg_187, a0
	mv	a0, VirtualReg_187
	call	add2048
	mv	VirtualReg_188, a0
	mv	a0, VirtualReg_188
	call	add2048
	mv	VirtualReg_189, a0
	mv	a0, VirtualReg_189
	call	add2048
	mv	VirtualReg_190, a0
	mv	a0, VirtualReg_190
	call	add2048
	mv	VirtualReg_191, a0
	mv	a0, VirtualReg_191
	call	add2048
	mv	VirtualReg_192, a0
	mv	a0, VirtualReg_192
	call	add2048
	mv	VirtualReg_193, a0
	mv	a0, VirtualReg_193
	call	add2048
	mv	VirtualReg_194, a0
	mv	a0, VirtualReg_194
	call	add2048
	mv	VirtualReg_195, a0
	mv	a0, VirtualReg_195
	call	add2048
	mv	VirtualReg_196, a0
	mv	a0, VirtualReg_196
	call	add2048
	mv	VirtualReg_197, a0
	mv	a0, VirtualReg_197
	call	add2048
	mv	VirtualReg_198, a0
	mv	a0, VirtualReg_198
	call	add2048
	mv	VirtualReg_199, a0
	mv	a0, VirtualReg_199
	call	add2048
	mv	VirtualReg_200, a0
	mv	a0, VirtualReg_200
	call	add2048
	mv	VirtualReg_201, a0
	mv	a0, VirtualReg_201
	call	add2048
	mv	VirtualReg_202, a0
	mv	a0, VirtualReg_202
	call	add2048
	mv	VirtualReg_203, a0
	mv	a0, VirtualReg_203
	call	add2048
	mv	VirtualReg_204, a0
	mv	a0, VirtualReg_204
	call	add2048
	mv	VirtualReg_205, a0
	mv	a0, VirtualReg_205
	call	add2048
	mv	VirtualReg_206, a0
	mv	a0, VirtualReg_206
	call	add2048
	mv	VirtualReg_207, a0
	mv	a0, VirtualReg_207
	call	add2048
	mv	VirtualReg_208, a0
	mv	a0, VirtualReg_208
	call	add2048
	mv	VirtualReg_209, a0
	mv	a0, VirtualReg_209
	call	add2048
	mv	VirtualReg_210, a0
	mv	a0, VirtualReg_210
	call	add2048
	mv	VirtualReg_211, a0
	mv	a0, VirtualReg_211
	call	add2048
	mv	VirtualReg_212, a0
	mv	a0, VirtualReg_212
	call	add2048
	mv	VirtualReg_213, a0
	mv	a0, VirtualReg_213
	call	add2048
	mv	VirtualReg_214, a0
	mv	a0, VirtualReg_214
	call	add2048
	mv	VirtualReg_215, a0
	mv	a0, VirtualReg_215
	call	add2048
	mv	VirtualReg_216, a0
	mv	a0, VirtualReg_216
	call	add2048
	mv	VirtualReg_217, a0
	mv	a0, VirtualReg_217
	call	add2048
	mv	VirtualReg_218, a0
	mv	a0, VirtualReg_218
	call	add2048
	mv	VirtualReg_219, a0
	mv	a0, VirtualReg_219
	call	add2048
	mv	VirtualReg_220, a0
	mv	a0, VirtualReg_220
	call	add2048
	mv	VirtualReg_221, a0
	mv	a0, VirtualReg_221
	call	add2048
	mv	VirtualReg_222, a0
	mv	a0, VirtualReg_222
	call	add2048
	mv	VirtualReg_223, a0
	mv	a0, VirtualReg_223
	call	add2048
	mv	VirtualReg_224, a0
	mv	a0, VirtualReg_224
	call	add2048
	mv	VirtualReg_225, a0
	mv	a0, VirtualReg_225
	call	add2048
	mv	VirtualReg_226, a0
	mv	a0, VirtualReg_226
	call	add2048
	mv	VirtualReg_227, a0
	mv	a0, VirtualReg_227
	call	add2048
	mv	VirtualReg_228, a0
	mv	a0, VirtualReg_228
	call	add2048
	mv	VirtualReg_229, a0
	mv	a0, VirtualReg_229
	call	add2048
	mv	VirtualReg_230, a0
	mv	a0, VirtualReg_230
	call	add2048
	mv	VirtualReg_231, a0
	mv	a0, VirtualReg_231
	call	add2048
	mv	VirtualReg_232, a0
	mv	a0, VirtualReg_232
	call	add2048
	mv	VirtualReg_233, a0
	mv	a0, VirtualReg_233
	call	add2048
	mv	VirtualReg_234, a0
	mv	a0, VirtualReg_234
	call	add2048
	mv	VirtualReg_235, a0
	mv	a0, VirtualReg_235
	call	add2048
	mv	VirtualReg_236, a0
	mv	a0, VirtualReg_236
	call	add2048
	mv	VirtualReg_237, a0
	mv	a0, VirtualReg_237
	call	add2048
	mv	VirtualReg_238, a0
	mv	a0, VirtualReg_238
	call	add2048
	mv	VirtualReg_239, a0
	mv	a0, VirtualReg_239
	call	add2048
	mv	VirtualReg_240, a0
	mv	a0, VirtualReg_240
	call	add2048
	mv	VirtualReg_241, a0
	mv	a0, VirtualReg_241
	call	add2048
	mv	VirtualReg_242, a0
	mv	a0, VirtualReg_242
	call	add2048
	mv	VirtualReg_243, a0
	mv	a0, VirtualReg_243
	call	add2048
	mv	VirtualReg_244, a0
	mv	a0, VirtualReg_244
	call	add2048
	mv	VirtualReg_245, a0
	mv	a0, VirtualReg_245
	call	add2048
	mv	VirtualReg_246, a0
	mv	a0, VirtualReg_246
	call	add2048
	mv	VirtualReg_247, a0
	mv	a0, VirtualReg_247
	call	add2048
	mv	VirtualReg_248, a0
	mv	a0, VirtualReg_248
	call	add2048
	mv	VirtualReg_249, a0
	mv	a0, VirtualReg_249
	call	add2048
	mv	VirtualReg_250, a0
	mv	a0, VirtualReg_250
	call	add2048
	mv	VirtualReg_251, a0
	mv	a0, VirtualReg_251
	call	add2048
	mv	VirtualReg_252, a0
	mv	a0, VirtualReg_252
	call	add2048
	mv	VirtualReg_253, a0
	mv	a0, VirtualReg_253
	call	add2048
	mv	VirtualReg_254, a0
	mv	a0, VirtualReg_254
	call	add2048
	mv	VirtualReg_255, a0
	mv	a0, VirtualReg_255
	call	add2048
	mv	VirtualReg_256, a0
	mv	a0, VirtualReg_256
	call	add2048
	mv	VirtualReg_257, a0
	mv	a0, VirtualReg_257
	call	add2048
	mv	VirtualReg_258, a0
	mv	a0, VirtualReg_258
	call	add2048
	mv	VirtualReg_259, a0
	mv	a0, VirtualReg_259
	call	add2048
	mv	VirtualReg_260, a0
	mv	a0, VirtualReg_260
	call	add2048
	mv	VirtualReg_261, a0
	mv	a0, VirtualReg_261
	call	add2048
	mv	VirtualReg_262, a0
	mv	a0, VirtualReg_262
	call	add2048
	mv	VirtualReg_263, a0
	mv	a0, VirtualReg_263
	call	add2048
	mv	VirtualReg_264, a0
	mv	a0, VirtualReg_264
	call	add2048
	mv	VirtualReg_265, a0
	mv	a0, VirtualReg_265
	call	add2048
	mv	VirtualReg_266, a0
	mv	a0, VirtualReg_266
	call	add2048
	mv	VirtualReg_267, a0
	mv	a0, VirtualReg_267
	call	add2048
	mv	VirtualReg_268, a0
	j	.add524288_return
.add524288_return:
	mv	a0, VirtualReg_268
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

	.globl	wP
	.p2align	2
	.type	wP,@function
wP:
.wP_assemblyInit:
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
	j	.wP_entry
.wP_entry:
	li	VirtualReg_1487, 3
	mv	VirtualReg_12, VirtualReg_1487
	j	.wP_ID4_for_suite
.wP_ID4_for_suite:
	li	VirtualReg_14, 1
	sra	VirtualReg_13, VirtualReg_12, VirtualReg_14
	li	VirtualReg_1488, 2
	mv	VirtualReg_15, VirtualReg_1488
	j	.wP_ID6_for_condition
.wP_ID6_for_condition:
	slt	VirtualReg_16, VirtualReg_15, VirtualReg_13
	bnez	VirtualReg_16, .wP_ID6_for_suite
	j	.wP_ID6_for_condition_mid
.wP_ID6_for_condition_mid:
	mv	VirtualReg_22, VirtualReg_12
	li	VirtualReg_1489, 1
	mv	VirtualReg_23, VirtualReg_1489
	j	.wP_ID6_for_out
.wP_ID6_for_suite:
	rem	VirtualReg_17, VirtualReg_12, VirtualReg_15
	li	VirtualReg_19, 0
	xor	VirtualReg_18, VirtualReg_17, VirtualReg_19
	sltiu	VirtualReg_18, VirtualReg_18, 1
	bnez	VirtualReg_18, .wP_ID13_if_true
	j	.wP_ID6_for_incr
.wP_ID13_if_true:
	addi	VirtualReg_20, VirtualReg_12, 1
	mv	VirtualReg_22, VirtualReg_20
	li	VirtualReg_1490, 0
	mv	VirtualReg_23, VirtualReg_1490
	j	.wP_ID6_for_out
.wP_ID6_for_incr:
	addi	VirtualReg_21, VirtualReg_15, 1
	mv	VirtualReg_15, VirtualReg_21
	j	.wP_ID6_for_condition
.wP_ID6_for_out_mid:
	li	VirtualReg_1491, 0
	mv	VirtualReg_31, VirtualReg_1491
	j	.wP_ID19_AndAnd_out
.wP_ID6_for_out:
	li	VirtualReg_25, 0
	slt	VirtualReg_24, VirtualReg_25, VirtualReg_22
	bnez	VirtualReg_24, .wP_ID19_AndAnd_true
	j	.wP_ID6_for_out_mid
.wP_ID19_AndAnd_true:
	add	VirtualReg_26, VirtualReg_22, VirtualReg_23
	li	VirtualReg_28, 9
	rem	VirtualReg_27, VirtualReg_26, VirtualReg_28
	li	VirtualReg_30, 0
	xor	VirtualReg_29, VirtualReg_27, VirtualReg_30
	sltiu	VirtualReg_29, VirtualReg_29, 1
	mv	VirtualReg_31, VirtualReg_29
	j	.wP_ID19_AndAnd_out
.wP_ID19_AndAnd_out:
	bnez	VirtualReg_31, .wP_ID4_for_out
	j	.wP_ID25_if_out
.wP_ID25_if_out:
	lw	VirtualReg_32, fuckLLVM_N
	add	VirtualReg_33, VirtualReg_32, VirtualReg_23
	la	VirtualReg_34, fuckLLVM_N
	sw	VirtualReg_33, 0(VirtualReg_34)
	add	VirtualReg_35, VirtualReg_22, VirtualReg_23
	addi	VirtualReg_36, VirtualReg_35, 1
	mv	VirtualReg_12, VirtualReg_36
	j	.wP_ID4_for_suite
.wP_ID4_for_out:
	lw	VirtualReg_37, fuckLLVM_N
	lw	VirtualReg_38, fuckLLVM_w
	addi	VirtualReg_39, VirtualReg_38, 1
	la	VirtualReg_40, fuckLLVM_w
	sw	VirtualReg_39, 0(VirtualReg_40)
	lw	VirtualReg_41, fuckLLVM_w
	addi	VirtualReg_42, VirtualReg_41, 1
	la	VirtualReg_43, fuckLLVM_w
	sw	VirtualReg_42, 0(VirtualReg_43)
	lw	VirtualReg_44, fuckLLVM_w
	lw	VirtualReg_45, fuckLLVM_w
	addi	VirtualReg_46, VirtualReg_45, 1
	la	VirtualReg_47, fuckLLVM_w
	sw	VirtualReg_46, 0(VirtualReg_47)
	lw	VirtualReg_48, fuckLLVM_w
	addi	VirtualReg_49, VirtualReg_48, 1
	la	VirtualReg_50, fuckLLVM_w
	sw	VirtualReg_49, 0(VirtualReg_50)
	lw	VirtualReg_51, fuckLLVM_w
	lw	VirtualReg_52, fuckLLVM_w
	addi	VirtualReg_53, VirtualReg_52, 1
	la	VirtualReg_54, fuckLLVM_w
	sw	VirtualReg_53, 0(VirtualReg_54)
	lw	VirtualReg_55, fuckLLVM_w
	addi	VirtualReg_56, VirtualReg_55, 1
	la	VirtualReg_57, fuckLLVM_w
	sw	VirtualReg_56, 0(VirtualReg_57)
	lw	VirtualReg_58, fuckLLVM_w
	lw	VirtualReg_59, fuckLLVM_w
	addi	VirtualReg_60, VirtualReg_59, 1
	la	VirtualReg_61, fuckLLVM_w
	sw	VirtualReg_60, 0(VirtualReg_61)
	lw	VirtualReg_62, fuckLLVM_w
	addi	VirtualReg_63, VirtualReg_62, 1
	la	VirtualReg_64, fuckLLVM_w
	sw	VirtualReg_63, 0(VirtualReg_64)
	lw	VirtualReg_65, fuckLLVM_w
	lw	VirtualReg_66, fuckLLVM_w
	addi	VirtualReg_67, VirtualReg_66, 1
	la	VirtualReg_68, fuckLLVM_w
	sw	VirtualReg_67, 0(VirtualReg_68)
	lw	VirtualReg_69, fuckLLVM_w
	addi	VirtualReg_70, VirtualReg_69, 1
	la	VirtualReg_71, fuckLLVM_w
	sw	VirtualReg_70, 0(VirtualReg_71)
	lw	VirtualReg_72, fuckLLVM_w
	lw	VirtualReg_73, fuckLLVM_w
	addi	VirtualReg_74, VirtualReg_73, 1
	la	VirtualReg_75, fuckLLVM_w
	sw	VirtualReg_74, 0(VirtualReg_75)
	lw	VirtualReg_76, fuckLLVM_w
	addi	VirtualReg_77, VirtualReg_76, 1
	la	VirtualReg_78, fuckLLVM_w
	sw	VirtualReg_77, 0(VirtualReg_78)
	lw	VirtualReg_79, fuckLLVM_w
	lw	VirtualReg_80, fuckLLVM_w
	addi	VirtualReg_81, VirtualReg_80, 1
	la	VirtualReg_82, fuckLLVM_w
	sw	VirtualReg_81, 0(VirtualReg_82)
	lw	VirtualReg_83, fuckLLVM_w
	addi	VirtualReg_84, VirtualReg_83, 1
	la	VirtualReg_85, fuckLLVM_w
	sw	VirtualReg_84, 0(VirtualReg_85)
	lw	VirtualReg_86, fuckLLVM_w
	lw	VirtualReg_87, fuckLLVM_w
	addi	VirtualReg_88, VirtualReg_87, 1
	la	VirtualReg_89, fuckLLVM_w
	sw	VirtualReg_88, 0(VirtualReg_89)
	lw	VirtualReg_90, fuckLLVM_w
	addi	VirtualReg_91, VirtualReg_90, 1
	la	VirtualReg_92, fuckLLVM_w
	sw	VirtualReg_91, 0(VirtualReg_92)
	lw	VirtualReg_93, fuckLLVM_w
	lw	VirtualReg_94, fuckLLVM_w
	addi	VirtualReg_95, VirtualReg_94, 1
	la	VirtualReg_96, fuckLLVM_w
	sw	VirtualReg_95, 0(VirtualReg_96)
	lw	VirtualReg_97, fuckLLVM_w
	addi	VirtualReg_98, VirtualReg_97, 1
	la	VirtualReg_99, fuckLLVM_w
	sw	VirtualReg_98, 0(VirtualReg_99)
	lw	VirtualReg_100, fuckLLVM_w
	lw	VirtualReg_101, fuckLLVM_w
	addi	VirtualReg_102, VirtualReg_101, 1
	la	VirtualReg_103, fuckLLVM_w
	sw	VirtualReg_102, 0(VirtualReg_103)
	lw	VirtualReg_104, fuckLLVM_w
	addi	VirtualReg_105, VirtualReg_104, 1
	la	VirtualReg_106, fuckLLVM_w
	sw	VirtualReg_105, 0(VirtualReg_106)
	lw	VirtualReg_107, fuckLLVM_w
	lw	VirtualReg_108, fuckLLVM_w
	addi	VirtualReg_109, VirtualReg_108, 1
	la	VirtualReg_110, fuckLLVM_w
	sw	VirtualReg_109, 0(VirtualReg_110)
	lw	VirtualReg_111, fuckLLVM_w
	addi	VirtualReg_112, VirtualReg_111, 1
	la	VirtualReg_113, fuckLLVM_w
	sw	VirtualReg_112, 0(VirtualReg_113)
	lw	VirtualReg_114, fuckLLVM_w
	lw	VirtualReg_115, fuckLLVM_w
	addi	VirtualReg_116, VirtualReg_115, 1
	la	VirtualReg_117, fuckLLVM_w
	sw	VirtualReg_116, 0(VirtualReg_117)
	lw	VirtualReg_118, fuckLLVM_w
	addi	VirtualReg_119, VirtualReg_118, 1
	la	VirtualReg_120, fuckLLVM_w
	sw	VirtualReg_119, 0(VirtualReg_120)
	lw	VirtualReg_121, fuckLLVM_w
	lw	VirtualReg_122, fuckLLVM_w
	addi	VirtualReg_123, VirtualReg_122, 1
	la	VirtualReg_124, fuckLLVM_w
	sw	VirtualReg_123, 0(VirtualReg_124)
	lw	VirtualReg_125, fuckLLVM_w
	addi	VirtualReg_126, VirtualReg_125, 1
	la	VirtualReg_127, fuckLLVM_w
	sw	VirtualReg_126, 0(VirtualReg_127)
	lw	VirtualReg_128, fuckLLVM_w
	lw	VirtualReg_129, fuckLLVM_w
	addi	VirtualReg_130, VirtualReg_129, 1
	la	VirtualReg_131, fuckLLVM_w
	sw	VirtualReg_130, 0(VirtualReg_131)
	lw	VirtualReg_132, fuckLLVM_w
	addi	VirtualReg_133, VirtualReg_132, 1
	la	VirtualReg_134, fuckLLVM_w
	sw	VirtualReg_133, 0(VirtualReg_134)
	lw	VirtualReg_135, fuckLLVM_w
	lw	VirtualReg_136, fuckLLVM_w
	addi	VirtualReg_137, VirtualReg_136, 1
	la	VirtualReg_138, fuckLLVM_w
	sw	VirtualReg_137, 0(VirtualReg_138)
	lw	VirtualReg_139, fuckLLVM_w
	addi	VirtualReg_140, VirtualReg_139, 1
	la	VirtualReg_141, fuckLLVM_w
	sw	VirtualReg_140, 0(VirtualReg_141)
	lw	VirtualReg_142, fuckLLVM_w
	lw	VirtualReg_143, fuckLLVM_w
	addi	VirtualReg_144, VirtualReg_143, 1
	la	VirtualReg_145, fuckLLVM_w
	sw	VirtualReg_144, 0(VirtualReg_145)
	lw	VirtualReg_146, fuckLLVM_w
	addi	VirtualReg_147, VirtualReg_146, 1
	la	VirtualReg_148, fuckLLVM_w
	sw	VirtualReg_147, 0(VirtualReg_148)
	lw	VirtualReg_149, fuckLLVM_w
	lw	VirtualReg_150, fuckLLVM_w
	addi	VirtualReg_151, VirtualReg_150, 1
	la	VirtualReg_152, fuckLLVM_w
	sw	VirtualReg_151, 0(VirtualReg_152)
	lw	VirtualReg_153, fuckLLVM_w
	addi	VirtualReg_154, VirtualReg_153, 1
	la	VirtualReg_155, fuckLLVM_w
	sw	VirtualReg_154, 0(VirtualReg_155)
	lw	VirtualReg_156, fuckLLVM_w
	lw	VirtualReg_157, fuckLLVM_w
	addi	VirtualReg_158, VirtualReg_157, 1
	la	VirtualReg_159, fuckLLVM_w
	sw	VirtualReg_158, 0(VirtualReg_159)
	lw	VirtualReg_160, fuckLLVM_w
	addi	VirtualReg_161, VirtualReg_160, 1
	la	VirtualReg_162, fuckLLVM_w
	sw	VirtualReg_161, 0(VirtualReg_162)
	lw	VirtualReg_163, fuckLLVM_w
	lw	VirtualReg_164, fuckLLVM_w
	addi	VirtualReg_165, VirtualReg_164, 1
	la	VirtualReg_166, fuckLLVM_w
	sw	VirtualReg_165, 0(VirtualReg_166)
	lw	VirtualReg_167, fuckLLVM_w
	addi	VirtualReg_168, VirtualReg_167, 1
	la	VirtualReg_169, fuckLLVM_w
	sw	VirtualReg_168, 0(VirtualReg_169)
	lw	VirtualReg_170, fuckLLVM_w
	lw	VirtualReg_171, fuckLLVM_w
	addi	VirtualReg_172, VirtualReg_171, 1
	la	VirtualReg_173, fuckLLVM_w
	sw	VirtualReg_172, 0(VirtualReg_173)
	lw	VirtualReg_174, fuckLLVM_w
	addi	VirtualReg_175, VirtualReg_174, 1
	la	VirtualReg_176, fuckLLVM_w
	sw	VirtualReg_175, 0(VirtualReg_176)
	lw	VirtualReg_177, fuckLLVM_w
	lw	VirtualReg_178, fuckLLVM_w
	addi	VirtualReg_179, VirtualReg_178, 1
	la	VirtualReg_180, fuckLLVM_w
	sw	VirtualReg_179, 0(VirtualReg_180)
	lw	VirtualReg_181, fuckLLVM_w
	addi	VirtualReg_182, VirtualReg_181, 1
	la	VirtualReg_183, fuckLLVM_w
	sw	VirtualReg_182, 0(VirtualReg_183)
	lw	VirtualReg_184, fuckLLVM_w
	lw	VirtualReg_185, fuckLLVM_w
	addi	VirtualReg_186, VirtualReg_185, 1
	la	VirtualReg_187, fuckLLVM_w
	sw	VirtualReg_186, 0(VirtualReg_187)
	lw	VirtualReg_188, fuckLLVM_w
	addi	VirtualReg_189, VirtualReg_188, 1
	la	VirtualReg_190, fuckLLVM_w
	sw	VirtualReg_189, 0(VirtualReg_190)
	lw	VirtualReg_191, fuckLLVM_w
	lw	VirtualReg_192, fuckLLVM_w
	addi	VirtualReg_193, VirtualReg_192, 1
	la	VirtualReg_194, fuckLLVM_w
	sw	VirtualReg_193, 0(VirtualReg_194)
	lw	VirtualReg_195, fuckLLVM_w
	addi	VirtualReg_196, VirtualReg_195, 1
	la	VirtualReg_197, fuckLLVM_w
	sw	VirtualReg_196, 0(VirtualReg_197)
	lw	VirtualReg_198, fuckLLVM_w
	lw	VirtualReg_199, fuckLLVM_w
	addi	VirtualReg_200, VirtualReg_199, 1
	la	VirtualReg_201, fuckLLVM_w
	sw	VirtualReg_200, 0(VirtualReg_201)
	lw	VirtualReg_202, fuckLLVM_w
	addi	VirtualReg_203, VirtualReg_202, 1
	la	VirtualReg_204, fuckLLVM_w
	sw	VirtualReg_203, 0(VirtualReg_204)
	lw	VirtualReg_205, fuckLLVM_w
	lw	VirtualReg_206, fuckLLVM_w
	addi	VirtualReg_207, VirtualReg_206, 1
	la	VirtualReg_208, fuckLLVM_w
	sw	VirtualReg_207, 0(VirtualReg_208)
	lw	VirtualReg_209, fuckLLVM_w
	addi	VirtualReg_210, VirtualReg_209, 1
	la	VirtualReg_211, fuckLLVM_w
	sw	VirtualReg_210, 0(VirtualReg_211)
	lw	VirtualReg_212, fuckLLVM_w
	lw	VirtualReg_213, fuckLLVM_w
	addi	VirtualReg_214, VirtualReg_213, 1
	la	VirtualReg_215, fuckLLVM_w
	sw	VirtualReg_214, 0(VirtualReg_215)
	lw	VirtualReg_216, fuckLLVM_w
	addi	VirtualReg_217, VirtualReg_216, 1
	la	VirtualReg_218, fuckLLVM_w
	sw	VirtualReg_217, 0(VirtualReg_218)
	lw	VirtualReg_219, fuckLLVM_w
	lw	VirtualReg_220, fuckLLVM_w
	addi	VirtualReg_221, VirtualReg_220, 1
	la	VirtualReg_222, fuckLLVM_w
	sw	VirtualReg_221, 0(VirtualReg_222)
	lw	VirtualReg_223, fuckLLVM_w
	addi	VirtualReg_224, VirtualReg_223, 1
	la	VirtualReg_225, fuckLLVM_w
	sw	VirtualReg_224, 0(VirtualReg_225)
	lw	VirtualReg_226, fuckLLVM_w
	lw	VirtualReg_227, fuckLLVM_w
	addi	VirtualReg_228, VirtualReg_227, 1
	la	VirtualReg_229, fuckLLVM_w
	sw	VirtualReg_228, 0(VirtualReg_229)
	lw	VirtualReg_230, fuckLLVM_w
	addi	VirtualReg_231, VirtualReg_230, 1
	la	VirtualReg_232, fuckLLVM_w
	sw	VirtualReg_231, 0(VirtualReg_232)
	lw	VirtualReg_233, fuckLLVM_w
	lw	VirtualReg_234, fuckLLVM_w
	addi	VirtualReg_235, VirtualReg_234, 1
	la	VirtualReg_236, fuckLLVM_w
	sw	VirtualReg_235, 0(VirtualReg_236)
	lw	VirtualReg_237, fuckLLVM_w
	addi	VirtualReg_238, VirtualReg_237, 1
	la	VirtualReg_239, fuckLLVM_w
	sw	VirtualReg_238, 0(VirtualReg_239)
	lw	VirtualReg_240, fuckLLVM_w
	lw	VirtualReg_241, fuckLLVM_w
	addi	VirtualReg_242, VirtualReg_241, 1
	la	VirtualReg_243, fuckLLVM_w
	sw	VirtualReg_242, 0(VirtualReg_243)
	lw	VirtualReg_244, fuckLLVM_w
	addi	VirtualReg_245, VirtualReg_244, 1
	la	VirtualReg_246, fuckLLVM_w
	sw	VirtualReg_245, 0(VirtualReg_246)
	lw	VirtualReg_247, fuckLLVM_w
	lw	VirtualReg_248, fuckLLVM_w
	addi	VirtualReg_249, VirtualReg_248, 1
	la	VirtualReg_250, fuckLLVM_w
	sw	VirtualReg_249, 0(VirtualReg_250)
	lw	VirtualReg_251, fuckLLVM_w
	addi	VirtualReg_252, VirtualReg_251, 1
	la	VirtualReg_253, fuckLLVM_w
	sw	VirtualReg_252, 0(VirtualReg_253)
	lw	VirtualReg_254, fuckLLVM_w
	lw	VirtualReg_255, fuckLLVM_w
	addi	VirtualReg_256, VirtualReg_255, 1
	la	VirtualReg_257, fuckLLVM_w
	sw	VirtualReg_256, 0(VirtualReg_257)
	lw	VirtualReg_258, fuckLLVM_w
	addi	VirtualReg_259, VirtualReg_258, 1
	la	VirtualReg_260, fuckLLVM_w
	sw	VirtualReg_259, 0(VirtualReg_260)
	lw	VirtualReg_261, fuckLLVM_w
	lw	VirtualReg_262, fuckLLVM_w
	addi	VirtualReg_263, VirtualReg_262, 1
	la	VirtualReg_264, fuckLLVM_w
	sw	VirtualReg_263, 0(VirtualReg_264)
	lw	VirtualReg_265, fuckLLVM_w
	addi	VirtualReg_266, VirtualReg_265, 1
	la	VirtualReg_267, fuckLLVM_w
	sw	VirtualReg_266, 0(VirtualReg_267)
	lw	VirtualReg_268, fuckLLVM_w
	lw	VirtualReg_269, fuckLLVM_w
	addi	VirtualReg_270, VirtualReg_269, 1
	la	VirtualReg_271, fuckLLVM_w
	sw	VirtualReg_270, 0(VirtualReg_271)
	lw	VirtualReg_272, fuckLLVM_w
	addi	VirtualReg_273, VirtualReg_272, 1
	la	VirtualReg_274, fuckLLVM_w
	sw	VirtualReg_273, 0(VirtualReg_274)
	lw	VirtualReg_275, fuckLLVM_w
	lw	VirtualReg_276, fuckLLVM_w
	addi	VirtualReg_277, VirtualReg_276, 1
	la	VirtualReg_278, fuckLLVM_w
	sw	VirtualReg_277, 0(VirtualReg_278)
	lw	VirtualReg_279, fuckLLVM_w
	addi	VirtualReg_280, VirtualReg_279, 1
	la	VirtualReg_281, fuckLLVM_w
	sw	VirtualReg_280, 0(VirtualReg_281)
	lw	VirtualReg_282, fuckLLVM_w
	lw	VirtualReg_283, fuckLLVM_w
	addi	VirtualReg_284, VirtualReg_283, 1
	la	VirtualReg_285, fuckLLVM_w
	sw	VirtualReg_284, 0(VirtualReg_285)
	lw	VirtualReg_286, fuckLLVM_w
	addi	VirtualReg_287, VirtualReg_286, 1
	la	VirtualReg_288, fuckLLVM_w
	sw	VirtualReg_287, 0(VirtualReg_288)
	lw	VirtualReg_289, fuckLLVM_w
	lw	VirtualReg_290, fuckLLVM_w
	addi	VirtualReg_291, VirtualReg_290, 1
	la	VirtualReg_292, fuckLLVM_w
	sw	VirtualReg_291, 0(VirtualReg_292)
	lw	VirtualReg_293, fuckLLVM_w
	addi	VirtualReg_294, VirtualReg_293, 1
	la	VirtualReg_295, fuckLLVM_w
	sw	VirtualReg_294, 0(VirtualReg_295)
	lw	VirtualReg_296, fuckLLVM_w
	lw	VirtualReg_297, fuckLLVM_w
	addi	VirtualReg_298, VirtualReg_297, 1
	la	VirtualReg_299, fuckLLVM_w
	sw	VirtualReg_298, 0(VirtualReg_299)
	lw	VirtualReg_300, fuckLLVM_w
	addi	VirtualReg_301, VirtualReg_300, 1
	la	VirtualReg_302, fuckLLVM_w
	sw	VirtualReg_301, 0(VirtualReg_302)
	lw	VirtualReg_303, fuckLLVM_w
	lw	VirtualReg_304, fuckLLVM_w
	addi	VirtualReg_305, VirtualReg_304, 1
	la	VirtualReg_306, fuckLLVM_w
	sw	VirtualReg_305, 0(VirtualReg_306)
	lw	VirtualReg_307, fuckLLVM_w
	addi	VirtualReg_308, VirtualReg_307, 1
	la	VirtualReg_309, fuckLLVM_w
	sw	VirtualReg_308, 0(VirtualReg_309)
	lw	VirtualReg_310, fuckLLVM_w
	lw	VirtualReg_311, fuckLLVM_w
	addi	VirtualReg_312, VirtualReg_311, 1
	la	VirtualReg_313, fuckLLVM_w
	sw	VirtualReg_312, 0(VirtualReg_313)
	lw	VirtualReg_314, fuckLLVM_w
	addi	VirtualReg_315, VirtualReg_314, 1
	la	VirtualReg_316, fuckLLVM_w
	sw	VirtualReg_315, 0(VirtualReg_316)
	lw	VirtualReg_317, fuckLLVM_w
	lw	VirtualReg_318, fuckLLVM_w
	addi	VirtualReg_319, VirtualReg_318, 1
	la	VirtualReg_320, fuckLLVM_w
	sw	VirtualReg_319, 0(VirtualReg_320)
	lw	VirtualReg_321, fuckLLVM_w
	addi	VirtualReg_322, VirtualReg_321, 1
	la	VirtualReg_323, fuckLLVM_w
	sw	VirtualReg_322, 0(VirtualReg_323)
	lw	VirtualReg_324, fuckLLVM_w
	lw	VirtualReg_325, fuckLLVM_w
	addi	VirtualReg_326, VirtualReg_325, 1
	la	VirtualReg_327, fuckLLVM_w
	sw	VirtualReg_326, 0(VirtualReg_327)
	lw	VirtualReg_328, fuckLLVM_w
	addi	VirtualReg_329, VirtualReg_328, 1
	la	VirtualReg_330, fuckLLVM_w
	sw	VirtualReg_329, 0(VirtualReg_330)
	lw	VirtualReg_331, fuckLLVM_w
	lw	VirtualReg_332, fuckLLVM_w
	addi	VirtualReg_333, VirtualReg_332, 1
	la	VirtualReg_334, fuckLLVM_w
	sw	VirtualReg_333, 0(VirtualReg_334)
	lw	VirtualReg_335, fuckLLVM_w
	addi	VirtualReg_336, VirtualReg_335, 1
	la	VirtualReg_337, fuckLLVM_w
	sw	VirtualReg_336, 0(VirtualReg_337)
	lw	VirtualReg_338, fuckLLVM_w
	lw	VirtualReg_339, fuckLLVM_w
	addi	VirtualReg_340, VirtualReg_339, 1
	la	VirtualReg_341, fuckLLVM_w
	sw	VirtualReg_340, 0(VirtualReg_341)
	lw	VirtualReg_342, fuckLLVM_w
	addi	VirtualReg_343, VirtualReg_342, 1
	la	VirtualReg_344, fuckLLVM_w
	sw	VirtualReg_343, 0(VirtualReg_344)
	lw	VirtualReg_345, fuckLLVM_w
	lw	VirtualReg_346, fuckLLVM_w
	addi	VirtualReg_347, VirtualReg_346, 1
	la	VirtualReg_348, fuckLLVM_w
	sw	VirtualReg_347, 0(VirtualReg_348)
	lw	VirtualReg_349, fuckLLVM_w
	addi	VirtualReg_350, VirtualReg_349, 1
	la	VirtualReg_351, fuckLLVM_w
	sw	VirtualReg_350, 0(VirtualReg_351)
	lw	VirtualReg_352, fuckLLVM_w
	lw	VirtualReg_353, fuckLLVM_w
	addi	VirtualReg_354, VirtualReg_353, 1
	la	VirtualReg_355, fuckLLVM_w
	sw	VirtualReg_354, 0(VirtualReg_355)
	lw	VirtualReg_356, fuckLLVM_w
	addi	VirtualReg_357, VirtualReg_356, 1
	la	VirtualReg_358, fuckLLVM_w
	sw	VirtualReg_357, 0(VirtualReg_358)
	lw	VirtualReg_359, fuckLLVM_w
	lw	VirtualReg_360, fuckLLVM_w
	addi	VirtualReg_361, VirtualReg_360, 1
	la	VirtualReg_362, fuckLLVM_w
	sw	VirtualReg_361, 0(VirtualReg_362)
	lw	VirtualReg_363, fuckLLVM_w
	addi	VirtualReg_364, VirtualReg_363, 1
	la	VirtualReg_365, fuckLLVM_w
	sw	VirtualReg_364, 0(VirtualReg_365)
	lw	VirtualReg_366, fuckLLVM_w
	lw	VirtualReg_367, fuckLLVM_w
	addi	VirtualReg_368, VirtualReg_367, 1
	la	VirtualReg_369, fuckLLVM_w
	sw	VirtualReg_368, 0(VirtualReg_369)
	lw	VirtualReg_370, fuckLLVM_w
	addi	VirtualReg_371, VirtualReg_370, 1
	la	VirtualReg_372, fuckLLVM_w
	sw	VirtualReg_371, 0(VirtualReg_372)
	lw	VirtualReg_373, fuckLLVM_w
	lw	VirtualReg_374, fuckLLVM_w
	addi	VirtualReg_375, VirtualReg_374, 1
	la	VirtualReg_376, fuckLLVM_w
	sw	VirtualReg_375, 0(VirtualReg_376)
	lw	VirtualReg_377, fuckLLVM_w
	addi	VirtualReg_378, VirtualReg_377, 1
	la	VirtualReg_379, fuckLLVM_w
	sw	VirtualReg_378, 0(VirtualReg_379)
	lw	VirtualReg_380, fuckLLVM_w
	lw	VirtualReg_381, fuckLLVM_w
	addi	VirtualReg_382, VirtualReg_381, 1
	la	VirtualReg_383, fuckLLVM_w
	sw	VirtualReg_382, 0(VirtualReg_383)
	lw	VirtualReg_384, fuckLLVM_w
	addi	VirtualReg_385, VirtualReg_384, 1
	la	VirtualReg_386, fuckLLVM_w
	sw	VirtualReg_385, 0(VirtualReg_386)
	lw	VirtualReg_387, fuckLLVM_w
	lw	VirtualReg_388, fuckLLVM_w
	addi	VirtualReg_389, VirtualReg_388, 1
	la	VirtualReg_390, fuckLLVM_w
	sw	VirtualReg_389, 0(VirtualReg_390)
	lw	VirtualReg_391, fuckLLVM_w
	addi	VirtualReg_392, VirtualReg_391, 1
	la	VirtualReg_393, fuckLLVM_w
	sw	VirtualReg_392, 0(VirtualReg_393)
	lw	VirtualReg_394, fuckLLVM_w
	lw	VirtualReg_395, fuckLLVM_w
	addi	VirtualReg_396, VirtualReg_395, 1
	la	VirtualReg_397, fuckLLVM_w
	sw	VirtualReg_396, 0(VirtualReg_397)
	lw	VirtualReg_398, fuckLLVM_w
	addi	VirtualReg_399, VirtualReg_398, 1
	la	VirtualReg_400, fuckLLVM_w
	sw	VirtualReg_399, 0(VirtualReg_400)
	lw	VirtualReg_401, fuckLLVM_w
	lw	VirtualReg_402, fuckLLVM_w
	addi	VirtualReg_403, VirtualReg_402, 1
	la	VirtualReg_404, fuckLLVM_w
	sw	VirtualReg_403, 0(VirtualReg_404)
	lw	VirtualReg_405, fuckLLVM_w
	addi	VirtualReg_406, VirtualReg_405, 1
	la	VirtualReg_407, fuckLLVM_w
	sw	VirtualReg_406, 0(VirtualReg_407)
	lw	VirtualReg_408, fuckLLVM_w
	lw	VirtualReg_409, fuckLLVM_w
	addi	VirtualReg_410, VirtualReg_409, 1
	la	VirtualReg_411, fuckLLVM_w
	sw	VirtualReg_410, 0(VirtualReg_411)
	lw	VirtualReg_412, fuckLLVM_w
	addi	VirtualReg_413, VirtualReg_412, 1
	la	VirtualReg_414, fuckLLVM_w
	sw	VirtualReg_413, 0(VirtualReg_414)
	lw	VirtualReg_415, fuckLLVM_w
	lw	VirtualReg_416, fuckLLVM_w
	addi	VirtualReg_417, VirtualReg_416, 1
	la	VirtualReg_418, fuckLLVM_w
	sw	VirtualReg_417, 0(VirtualReg_418)
	lw	VirtualReg_419, fuckLLVM_w
	addi	VirtualReg_420, VirtualReg_419, 1
	la	VirtualReg_421, fuckLLVM_w
	sw	VirtualReg_420, 0(VirtualReg_421)
	lw	VirtualReg_422, fuckLLVM_w
	lw	VirtualReg_423, fuckLLVM_w
	addi	VirtualReg_424, VirtualReg_423, 1
	la	VirtualReg_425, fuckLLVM_w
	sw	VirtualReg_424, 0(VirtualReg_425)
	lw	VirtualReg_426, fuckLLVM_w
	addi	VirtualReg_427, VirtualReg_426, 1
	la	VirtualReg_428, fuckLLVM_w
	sw	VirtualReg_427, 0(VirtualReg_428)
	lw	VirtualReg_429, fuckLLVM_w
	j	.wP_call_wpppp_53_out
.wP_call_wpppp_53_out:
	add	VirtualReg_430, VirtualReg_37, VirtualReg_429
	li	VirtualReg_432, 2
	rem	VirtualReg_431, VirtualReg_430, VirtualReg_432
	li	VirtualReg_434, 0
	xor	VirtualReg_433, VirtualReg_431, VirtualReg_434
	sltiu	VirtualReg_433, VirtualReg_433, 1
	bnez	VirtualReg_433, .wP_ID38_if_true
	j	.wP_ID38_if_out
.wP_ID38_if_true:
	lw	VirtualReg_435, fuckLLVM_N
	mv	a0, VirtualReg_435
	call	add2048
	mv	VirtualReg_436, a0
	mv	a0, VirtualReg_436
	call	add2048
	mv	VirtualReg_437, a0
	mv	a0, VirtualReg_437
	call	add2048
	mv	VirtualReg_438, a0
	mv	a0, VirtualReg_438
	call	add2048
	mv	VirtualReg_439, a0
	mv	a0, VirtualReg_439
	call	add2048
	mv	VirtualReg_440, a0
	mv	a0, VirtualReg_440
	call	add2048
	mv	VirtualReg_441, a0
	mv	a0, VirtualReg_441
	call	add2048
	mv	VirtualReg_442, a0
	mv	a0, VirtualReg_442
	call	add2048
	mv	VirtualReg_443, a0
	mv	a0, VirtualReg_443
	call	add2048
	mv	VirtualReg_444, a0
	mv	a0, VirtualReg_444
	call	add2048
	mv	VirtualReg_445, a0
	mv	a0, VirtualReg_445
	call	add2048
	mv	VirtualReg_446, a0
	mv	a0, VirtualReg_446
	call	add2048
	mv	VirtualReg_447, a0
	mv	a0, VirtualReg_447
	call	add2048
	mv	VirtualReg_448, a0
	mv	a0, VirtualReg_448
	call	add2048
	mv	VirtualReg_449, a0
	mv	a0, VirtualReg_449
	call	add2048
	mv	VirtualReg_450, a0
	mv	a0, VirtualReg_450
	call	add2048
	mv	VirtualReg_451, a0
	mv	a0, VirtualReg_451
	call	add2048
	mv	VirtualReg_452, a0
	mv	a0, VirtualReg_452
	call	add2048
	mv	VirtualReg_453, a0
	mv	a0, VirtualReg_453
	call	add2048
	mv	VirtualReg_454, a0
	mv	a0, VirtualReg_454
	call	add2048
	mv	VirtualReg_455, a0
	mv	a0, VirtualReg_455
	call	add2048
	mv	VirtualReg_456, a0
	mv	a0, VirtualReg_456
	call	add2048
	mv	VirtualReg_457, a0
	mv	a0, VirtualReg_457
	call	add2048
	mv	VirtualReg_458, a0
	mv	a0, VirtualReg_458
	call	add2048
	mv	VirtualReg_459, a0
	mv	a0, VirtualReg_459
	call	add2048
	mv	VirtualReg_460, a0
	mv	a0, VirtualReg_460
	call	add2048
	mv	VirtualReg_461, a0
	mv	a0, VirtualReg_461
	call	add2048
	mv	VirtualReg_462, a0
	mv	a0, VirtualReg_462
	call	add2048
	mv	VirtualReg_463, a0
	mv	a0, VirtualReg_463
	call	add2048
	mv	VirtualReg_464, a0
	mv	a0, VirtualReg_464
	call	add2048
	mv	VirtualReg_465, a0
	mv	a0, VirtualReg_465
	call	add2048
	mv	VirtualReg_466, a0
	mv	a0, VirtualReg_466
	call	add2048
	mv	VirtualReg_467, a0
	mv	a0, VirtualReg_467
	call	add2048
	mv	VirtualReg_468, a0
	mv	a0, VirtualReg_468
	call	add2048
	mv	VirtualReg_469, a0
	mv	a0, VirtualReg_469
	call	add2048
	mv	VirtualReg_470, a0
	mv	a0, VirtualReg_470
	call	add2048
	mv	VirtualReg_471, a0
	mv	a0, VirtualReg_471
	call	add2048
	mv	VirtualReg_472, a0
	mv	a0, VirtualReg_472
	call	add2048
	mv	VirtualReg_473, a0
	mv	a0, VirtualReg_473
	call	add2048
	mv	VirtualReg_474, a0
	mv	a0, VirtualReg_474
	call	add2048
	mv	VirtualReg_475, a0
	mv	a0, VirtualReg_475
	call	add2048
	mv	VirtualReg_476, a0
	mv	a0, VirtualReg_476
	call	add2048
	mv	VirtualReg_477, a0
	mv	a0, VirtualReg_477
	call	add2048
	mv	VirtualReg_478, a0
	mv	a0, VirtualReg_478
	call	add2048
	mv	VirtualReg_479, a0
	mv	a0, VirtualReg_479
	call	add2048
	mv	VirtualReg_480, a0
	mv	a0, VirtualReg_480
	call	add2048
	mv	VirtualReg_481, a0
	mv	a0, VirtualReg_481
	call	add2048
	mv	VirtualReg_482, a0
	mv	a0, VirtualReg_482
	call	add2048
	mv	VirtualReg_483, a0
	mv	a0, VirtualReg_483
	call	add2048
	mv	VirtualReg_484, a0
	mv	a0, VirtualReg_484
	call	add2048
	mv	VirtualReg_485, a0
	mv	a0, VirtualReg_485
	call	add2048
	mv	VirtualReg_486, a0
	mv	a0, VirtualReg_486
	call	add2048
	mv	VirtualReg_487, a0
	mv	a0, VirtualReg_487
	call	add2048
	mv	VirtualReg_488, a0
	mv	a0, VirtualReg_488
	call	add2048
	mv	VirtualReg_489, a0
	mv	a0, VirtualReg_489
	call	add2048
	mv	VirtualReg_490, a0
	mv	a0, VirtualReg_490
	call	add2048
	mv	VirtualReg_491, a0
	mv	a0, VirtualReg_491
	call	add2048
	mv	VirtualReg_492, a0
	mv	a0, VirtualReg_492
	call	add2048
	mv	VirtualReg_493, a0
	mv	a0, VirtualReg_493
	call	add2048
	mv	VirtualReg_494, a0
	mv	a0, VirtualReg_494
	call	add2048
	mv	VirtualReg_495, a0
	mv	a0, VirtualReg_495
	call	add2048
	mv	VirtualReg_496, a0
	mv	a0, VirtualReg_496
	call	add2048
	mv	VirtualReg_497, a0
	mv	a0, VirtualReg_497
	call	add2048
	mv	VirtualReg_498, a0
	mv	a0, VirtualReg_498
	call	add2048
	mv	VirtualReg_499, a0
	mv	a0, VirtualReg_499
	call	add2048
	mv	VirtualReg_500, a0
	mv	a0, VirtualReg_500
	call	add2048
	mv	VirtualReg_501, a0
	mv	a0, VirtualReg_501
	call	add2048
	mv	VirtualReg_502, a0
	mv	a0, VirtualReg_502
	call	add2048
	mv	VirtualReg_503, a0
	mv	a0, VirtualReg_503
	call	add2048
	mv	VirtualReg_504, a0
	mv	a0, VirtualReg_504
	call	add2048
	mv	VirtualReg_505, a0
	mv	a0, VirtualReg_505
	call	add2048
	mv	VirtualReg_506, a0
	mv	a0, VirtualReg_506
	call	add2048
	mv	VirtualReg_507, a0
	mv	a0, VirtualReg_507
	call	add2048
	mv	VirtualReg_508, a0
	mv	a0, VirtualReg_508
	call	add2048
	mv	VirtualReg_509, a0
	mv	a0, VirtualReg_509
	call	add2048
	mv	VirtualReg_510, a0
	mv	a0, VirtualReg_510
	call	add2048
	mv	VirtualReg_511, a0
	mv	a0, VirtualReg_511
	call	add2048
	mv	VirtualReg_512, a0
	mv	a0, VirtualReg_512
	call	add2048
	mv	VirtualReg_513, a0
	mv	a0, VirtualReg_513
	call	add2048
	mv	VirtualReg_514, a0
	mv	a0, VirtualReg_514
	call	add2048
	mv	VirtualReg_515, a0
	mv	a0, VirtualReg_515
	call	add2048
	mv	VirtualReg_516, a0
	mv	a0, VirtualReg_516
	call	add2048
	mv	VirtualReg_517, a0
	mv	a0, VirtualReg_517
	call	add2048
	mv	VirtualReg_518, a0
	mv	a0, VirtualReg_518
	call	add2048
	mv	VirtualReg_519, a0
	mv	a0, VirtualReg_519
	call	add2048
	mv	VirtualReg_520, a0
	mv	a0, VirtualReg_520
	call	add2048
	mv	VirtualReg_521, a0
	mv	a0, VirtualReg_521
	call	add2048
	mv	VirtualReg_522, a0
	mv	a0, VirtualReg_522
	call	add2048
	mv	VirtualReg_523, a0
	mv	a0, VirtualReg_523
	call	add2048
	mv	VirtualReg_524, a0
	mv	a0, VirtualReg_524
	call	add2048
	mv	VirtualReg_525, a0
	mv	a0, VirtualReg_525
	call	add2048
	mv	VirtualReg_526, a0
	mv	a0, VirtualReg_526
	call	add2048
	mv	VirtualReg_527, a0
	mv	a0, VirtualReg_527
	call	add2048
	mv	VirtualReg_528, a0
	mv	a0, VirtualReg_528
	call	add2048
	mv	VirtualReg_529, a0
	mv	a0, VirtualReg_529
	call	add2048
	mv	VirtualReg_530, a0
	mv	a0, VirtualReg_530
	call	add2048
	mv	VirtualReg_531, a0
	mv	a0, VirtualReg_531
	call	add2048
	mv	VirtualReg_532, a0
	mv	a0, VirtualReg_532
	call	add2048
	mv	VirtualReg_533, a0
	mv	a0, VirtualReg_533
	call	add2048
	mv	VirtualReg_534, a0
	mv	a0, VirtualReg_534
	call	add2048
	mv	VirtualReg_535, a0
	mv	a0, VirtualReg_535
	call	add2048
	mv	VirtualReg_536, a0
	mv	a0, VirtualReg_536
	call	add2048
	mv	VirtualReg_537, a0
	mv	a0, VirtualReg_537
	call	add2048
	mv	VirtualReg_538, a0
	mv	a0, VirtualReg_538
	call	add2048
	mv	VirtualReg_539, a0
	mv	a0, VirtualReg_539
	call	add2048
	mv	VirtualReg_540, a0
	mv	a0, VirtualReg_540
	call	add2048
	mv	VirtualReg_541, a0
	mv	a0, VirtualReg_541
	call	add2048
	mv	VirtualReg_542, a0
	mv	a0, VirtualReg_542
	call	add2048
	mv	VirtualReg_543, a0
	mv	a0, VirtualReg_543
	call	add2048
	mv	VirtualReg_544, a0
	mv	a0, VirtualReg_544
	call	add2048
	mv	VirtualReg_545, a0
	mv	a0, VirtualReg_545
	call	add2048
	mv	VirtualReg_546, a0
	mv	a0, VirtualReg_546
	call	add2048
	mv	VirtualReg_547, a0
	mv	a0, VirtualReg_547
	call	add2048
	mv	VirtualReg_548, a0
	mv	a0, VirtualReg_548
	call	add2048
	mv	VirtualReg_549, a0
	mv	a0, VirtualReg_549
	call	add2048
	mv	VirtualReg_550, a0
	mv	a0, VirtualReg_550
	call	add2048
	mv	VirtualReg_551, a0
	mv	a0, VirtualReg_551
	call	add2048
	mv	VirtualReg_552, a0
	mv	a0, VirtualReg_552
	call	add2048
	mv	VirtualReg_553, a0
	mv	a0, VirtualReg_553
	call	add2048
	mv	VirtualReg_554, a0
	mv	a0, VirtualReg_554
	call	add2048
	mv	VirtualReg_555, a0
	mv	a0, VirtualReg_555
	call	add2048
	mv	VirtualReg_556, a0
	mv	a0, VirtualReg_556
	call	add2048
	mv	VirtualReg_557, a0
	mv	a0, VirtualReg_557
	call	add2048
	mv	VirtualReg_558, a0
	mv	a0, VirtualReg_558
	call	add2048
	mv	VirtualReg_559, a0
	mv	a0, VirtualReg_559
	call	add2048
	mv	VirtualReg_560, a0
	mv	a0, VirtualReg_560
	call	add2048
	mv	VirtualReg_561, a0
	mv	a0, VirtualReg_561
	call	add2048
	mv	VirtualReg_562, a0
	mv	a0, VirtualReg_562
	call	add2048
	mv	VirtualReg_563, a0
	mv	a0, VirtualReg_563
	call	add2048
	mv	VirtualReg_564, a0
	mv	a0, VirtualReg_564
	call	add2048
	mv	VirtualReg_565, a0
	mv	a0, VirtualReg_565
	call	add2048
	mv	VirtualReg_566, a0
	mv	a0, VirtualReg_566
	call	add2048
	mv	VirtualReg_567, a0
	mv	a0, VirtualReg_567
	call	add2048
	mv	VirtualReg_568, a0
	mv	a0, VirtualReg_568
	call	add2048
	mv	VirtualReg_569, a0
	mv	a0, VirtualReg_569
	call	add2048
	mv	VirtualReg_570, a0
	mv	a0, VirtualReg_570
	call	add2048
	mv	VirtualReg_571, a0
	mv	a0, VirtualReg_571
	call	add2048
	mv	VirtualReg_572, a0
	mv	a0, VirtualReg_572
	call	add2048
	mv	VirtualReg_573, a0
	mv	a0, VirtualReg_573
	call	add2048
	mv	VirtualReg_574, a0
	mv	a0, VirtualReg_574
	call	add2048
	mv	VirtualReg_575, a0
	mv	a0, VirtualReg_575
	call	add2048
	mv	VirtualReg_576, a0
	mv	a0, VirtualReg_576
	call	add2048
	mv	VirtualReg_577, a0
	mv	a0, VirtualReg_577
	call	add2048
	mv	VirtualReg_578, a0
	mv	a0, VirtualReg_578
	call	add2048
	mv	VirtualReg_579, a0
	mv	a0, VirtualReg_579
	call	add2048
	mv	VirtualReg_580, a0
	mv	a0, VirtualReg_580
	call	add2048
	mv	VirtualReg_581, a0
	mv	a0, VirtualReg_581
	call	add2048
	mv	VirtualReg_582, a0
	mv	a0, VirtualReg_582
	call	add2048
	mv	VirtualReg_583, a0
	mv	a0, VirtualReg_583
	call	add2048
	mv	VirtualReg_584, a0
	mv	a0, VirtualReg_584
	call	add2048
	mv	VirtualReg_585, a0
	mv	a0, VirtualReg_585
	call	add2048
	mv	VirtualReg_586, a0
	mv	a0, VirtualReg_586
	call	add2048
	mv	VirtualReg_587, a0
	mv	a0, VirtualReg_587
	call	add2048
	mv	VirtualReg_588, a0
	mv	a0, VirtualReg_588
	call	add2048
	mv	VirtualReg_589, a0
	mv	a0, VirtualReg_589
	call	add2048
	mv	VirtualReg_590, a0
	mv	a0, VirtualReg_590
	call	add2048
	mv	VirtualReg_591, a0
	mv	a0, VirtualReg_591
	call	add2048
	mv	VirtualReg_592, a0
	mv	a0, VirtualReg_592
	call	add2048
	mv	VirtualReg_593, a0
	mv	a0, VirtualReg_593
	call	add2048
	mv	VirtualReg_594, a0
	mv	a0, VirtualReg_594
	call	add2048
	mv	VirtualReg_595, a0
	mv	a0, VirtualReg_595
	call	add2048
	mv	VirtualReg_596, a0
	mv	a0, VirtualReg_596
	call	add2048
	mv	VirtualReg_597, a0
	mv	a0, VirtualReg_597
	call	add2048
	mv	VirtualReg_598, a0
	mv	a0, VirtualReg_598
	call	add2048
	mv	VirtualReg_599, a0
	mv	a0, VirtualReg_599
	call	add2048
	mv	VirtualReg_600, a0
	mv	a0, VirtualReg_600
	call	add2048
	mv	VirtualReg_601, a0
	mv	a0, VirtualReg_601
	call	add2048
	mv	VirtualReg_602, a0
	mv	a0, VirtualReg_602
	call	add2048
	mv	VirtualReg_603, a0
	mv	a0, VirtualReg_603
	call	add2048
	mv	VirtualReg_604, a0
	mv	a0, VirtualReg_604
	call	add2048
	mv	VirtualReg_605, a0
	mv	a0, VirtualReg_605
	call	add2048
	mv	VirtualReg_606, a0
	mv	a0, VirtualReg_606
	call	add2048
	mv	VirtualReg_607, a0
	mv	a0, VirtualReg_607
	call	add2048
	mv	VirtualReg_608, a0
	mv	a0, VirtualReg_608
	call	add2048
	mv	VirtualReg_609, a0
	mv	a0, VirtualReg_609
	call	add2048
	mv	VirtualReg_610, a0
	mv	a0, VirtualReg_610
	call	add2048
	mv	VirtualReg_611, a0
	mv	a0, VirtualReg_611
	call	add2048
	mv	VirtualReg_612, a0
	mv	a0, VirtualReg_612
	call	add2048
	mv	VirtualReg_613, a0
	mv	a0, VirtualReg_613
	call	add2048
	mv	VirtualReg_614, a0
	mv	a0, VirtualReg_614
	call	add2048
	mv	VirtualReg_615, a0
	mv	a0, VirtualReg_615
	call	add2048
	mv	VirtualReg_616, a0
	mv	a0, VirtualReg_616
	call	add2048
	mv	VirtualReg_617, a0
	mv	a0, VirtualReg_617
	call	add2048
	mv	VirtualReg_618, a0
	mv	a0, VirtualReg_618
	call	add2048
	mv	VirtualReg_619, a0
	mv	a0, VirtualReg_619
	call	add2048
	mv	VirtualReg_620, a0
	mv	a0, VirtualReg_620
	call	add2048
	mv	VirtualReg_621, a0
	mv	a0, VirtualReg_621
	call	add2048
	mv	VirtualReg_622, a0
	mv	a0, VirtualReg_622
	call	add2048
	mv	VirtualReg_623, a0
	mv	a0, VirtualReg_623
	call	add2048
	mv	VirtualReg_624, a0
	mv	a0, VirtualReg_624
	call	add2048
	mv	VirtualReg_625, a0
	mv	a0, VirtualReg_625
	call	add2048
	mv	VirtualReg_626, a0
	mv	a0, VirtualReg_626
	call	add2048
	mv	VirtualReg_627, a0
	mv	a0, VirtualReg_627
	call	add2048
	mv	VirtualReg_628, a0
	mv	a0, VirtualReg_628
	call	add2048
	mv	VirtualReg_629, a0
	mv	a0, VirtualReg_629
	call	add2048
	mv	VirtualReg_630, a0
	mv	a0, VirtualReg_630
	call	add2048
	mv	VirtualReg_631, a0
	mv	a0, VirtualReg_631
	call	add2048
	mv	VirtualReg_632, a0
	mv	a0, VirtualReg_632
	call	add2048
	mv	VirtualReg_633, a0
	mv	a0, VirtualReg_633
	call	add2048
	mv	VirtualReg_634, a0
	mv	a0, VirtualReg_634
	call	add2048
	mv	VirtualReg_635, a0
	mv	a0, VirtualReg_635
	call	add2048
	mv	VirtualReg_636, a0
	mv	a0, VirtualReg_636
	call	add2048
	mv	VirtualReg_637, a0
	mv	a0, VirtualReg_637
	call	add2048
	mv	VirtualReg_638, a0
	mv	a0, VirtualReg_638
	call	add2048
	mv	VirtualReg_639, a0
	mv	a0, VirtualReg_639
	call	add2048
	mv	VirtualReg_640, a0
	mv	a0, VirtualReg_640
	call	add2048
	mv	VirtualReg_641, a0
	mv	a0, VirtualReg_641
	call	add2048
	mv	VirtualReg_642, a0
	mv	a0, VirtualReg_642
	call	add2048
	mv	VirtualReg_643, a0
	mv	a0, VirtualReg_643
	call	add2048
	mv	VirtualReg_644, a0
	mv	a0, VirtualReg_644
	call	add2048
	mv	VirtualReg_645, a0
	mv	a0, VirtualReg_645
	call	add2048
	mv	VirtualReg_646, a0
	mv	a0, VirtualReg_646
	call	add2048
	mv	VirtualReg_647, a0
	mv	a0, VirtualReg_647
	call	add2048
	mv	VirtualReg_648, a0
	mv	a0, VirtualReg_648
	call	add2048
	mv	VirtualReg_649, a0
	mv	a0, VirtualReg_649
	call	add2048
	mv	VirtualReg_650, a0
	mv	a0, VirtualReg_650
	call	add2048
	mv	VirtualReg_651, a0
	mv	a0, VirtualReg_651
	call	add2048
	mv	VirtualReg_652, a0
	mv	a0, VirtualReg_652
	call	add2048
	mv	VirtualReg_653, a0
	mv	a0, VirtualReg_653
	call	add2048
	mv	VirtualReg_654, a0
	mv	a0, VirtualReg_654
	call	add2048
	mv	VirtualReg_655, a0
	mv	a0, VirtualReg_655
	call	add2048
	mv	VirtualReg_656, a0
	mv	a0, VirtualReg_656
	call	add2048
	mv	VirtualReg_657, a0
	mv	a0, VirtualReg_657
	call	add2048
	mv	VirtualReg_658, a0
	mv	a0, VirtualReg_658
	call	add2048
	mv	VirtualReg_659, a0
	mv	a0, VirtualReg_659
	call	add2048
	mv	VirtualReg_660, a0
	mv	a0, VirtualReg_660
	call	add2048
	mv	VirtualReg_661, a0
	mv	a0, VirtualReg_661
	call	add2048
	mv	VirtualReg_662, a0
	mv	a0, VirtualReg_662
	call	add2048
	mv	VirtualReg_663, a0
	mv	a0, VirtualReg_663
	call	add2048
	mv	VirtualReg_664, a0
	mv	a0, VirtualReg_664
	call	add2048
	mv	VirtualReg_665, a0
	mv	a0, VirtualReg_665
	call	add2048
	mv	VirtualReg_666, a0
	mv	a0, VirtualReg_666
	call	add2048
	mv	VirtualReg_667, a0
	mv	a0, VirtualReg_667
	call	add2048
	mv	VirtualReg_668, a0
	mv	a0, VirtualReg_668
	call	add2048
	mv	VirtualReg_669, a0
	mv	a0, VirtualReg_669
	call	add2048
	mv	VirtualReg_670, a0
	mv	a0, VirtualReg_670
	call	add2048
	mv	VirtualReg_671, a0
	mv	a0, VirtualReg_671
	call	add2048
	mv	VirtualReg_672, a0
	mv	a0, VirtualReg_672
	call	add2048
	mv	VirtualReg_673, a0
	mv	a0, VirtualReg_673
	call	add2048
	mv	VirtualReg_674, a0
	mv	a0, VirtualReg_674
	call	add2048
	mv	VirtualReg_675, a0
	mv	a0, VirtualReg_675
	call	add2048
	mv	VirtualReg_676, a0
	mv	a0, VirtualReg_676
	call	add2048
	mv	VirtualReg_677, a0
	mv	a0, VirtualReg_677
	call	add2048
	mv	VirtualReg_678, a0
	mv	a0, VirtualReg_678
	call	add2048
	mv	VirtualReg_679, a0
	mv	a0, VirtualReg_679
	call	add2048
	mv	VirtualReg_680, a0
	mv	a0, VirtualReg_680
	call	add2048
	mv	VirtualReg_681, a0
	mv	a0, VirtualReg_681
	call	add2048
	mv	VirtualReg_682, a0
	mv	a0, VirtualReg_682
	call	add2048
	mv	VirtualReg_683, a0
	mv	a0, VirtualReg_683
	call	add2048
	mv	VirtualReg_684, a0
	mv	a0, VirtualReg_684
	call	add2048
	mv	VirtualReg_685, a0
	mv	a0, VirtualReg_685
	call	add2048
	mv	VirtualReg_686, a0
	mv	a0, VirtualReg_686
	call	add2048
	mv	VirtualReg_687, a0
	mv	a0, VirtualReg_687
	call	add2048
	mv	VirtualReg_688, a0
	mv	a0, VirtualReg_688
	call	add2048
	mv	VirtualReg_689, a0
	mv	a0, VirtualReg_689
	call	add2048
	mv	VirtualReg_690, a0
	mv	a0, VirtualReg_690
	call	add2048
	mv	VirtualReg_691, a0
	li	VirtualReg_693, 524288
	sub	VirtualReg_692, VirtualReg_691, VirtualReg_693
	li	VirtualReg_695, 4
	sub	VirtualReg_694, VirtualReg_692, VirtualReg_695
	mv	VirtualReg_1486, VirtualReg_694
	j	.wP_return
.wP_ID38_if_out:
	call	block
	mv	VirtualReg_696, a0
	call	block
	mv	VirtualReg_697, a0
	call	block
	mv	VirtualReg_698, a0
	call	block
	mv	VirtualReg_699, a0
	lw	VirtualReg_700, fuckLLVM_w
	addi	VirtualReg_701, VirtualReg_700, 1
	la	VirtualReg_702, fuckLLVM_w
	sw	VirtualReg_701, 0(VirtualReg_702)
	lw	VirtualReg_703, fuckLLVM_w
	addi	VirtualReg_704, VirtualReg_703, 1
	la	VirtualReg_705, fuckLLVM_w
	sw	VirtualReg_704, 0(VirtualReg_705)
	lw	VirtualReg_706, fuckLLVM_w
	lw	VirtualReg_707, fuckLLVM_w
	addi	VirtualReg_708, VirtualReg_707, 1
	la	VirtualReg_709, fuckLLVM_w
	sw	VirtualReg_708, 0(VirtualReg_709)
	lw	VirtualReg_710, fuckLLVM_w
	addi	VirtualReg_711, VirtualReg_710, 1
	la	VirtualReg_712, fuckLLVM_w
	sw	VirtualReg_711, 0(VirtualReg_712)
	lw	VirtualReg_713, fuckLLVM_w
	lw	VirtualReg_714, fuckLLVM_w
	addi	VirtualReg_715, VirtualReg_714, 1
	la	VirtualReg_716, fuckLLVM_w
	sw	VirtualReg_715, 0(VirtualReg_716)
	lw	VirtualReg_717, fuckLLVM_w
	addi	VirtualReg_718, VirtualReg_717, 1
	la	VirtualReg_719, fuckLLVM_w
	sw	VirtualReg_718, 0(VirtualReg_719)
	lw	VirtualReg_720, fuckLLVM_w
	lw	VirtualReg_721, fuckLLVM_w
	addi	VirtualReg_722, VirtualReg_721, 1
	la	VirtualReg_723, fuckLLVM_w
	sw	VirtualReg_722, 0(VirtualReg_723)
	lw	VirtualReg_724, fuckLLVM_w
	addi	VirtualReg_725, VirtualReg_724, 1
	la	VirtualReg_726, fuckLLVM_w
	sw	VirtualReg_725, 0(VirtualReg_726)
	lw	VirtualReg_727, fuckLLVM_w
	lw	VirtualReg_728, fuckLLVM_w
	addi	VirtualReg_729, VirtualReg_728, 1
	la	VirtualReg_730, fuckLLVM_w
	sw	VirtualReg_729, 0(VirtualReg_730)
	lw	VirtualReg_731, fuckLLVM_w
	addi	VirtualReg_732, VirtualReg_731, 1
	la	VirtualReg_733, fuckLLVM_w
	sw	VirtualReg_732, 0(VirtualReg_733)
	lw	VirtualReg_734, fuckLLVM_w
	lw	VirtualReg_735, fuckLLVM_w
	addi	VirtualReg_736, VirtualReg_735, 1
	la	VirtualReg_737, fuckLLVM_w
	sw	VirtualReg_736, 0(VirtualReg_737)
	lw	VirtualReg_738, fuckLLVM_w
	addi	VirtualReg_739, VirtualReg_738, 1
	la	VirtualReg_740, fuckLLVM_w
	sw	VirtualReg_739, 0(VirtualReg_740)
	lw	VirtualReg_741, fuckLLVM_w
	lw	VirtualReg_742, fuckLLVM_w
	addi	VirtualReg_743, VirtualReg_742, 1
	la	VirtualReg_744, fuckLLVM_w
	sw	VirtualReg_743, 0(VirtualReg_744)
	lw	VirtualReg_745, fuckLLVM_w
	addi	VirtualReg_746, VirtualReg_745, 1
	la	VirtualReg_747, fuckLLVM_w
	sw	VirtualReg_746, 0(VirtualReg_747)
	lw	VirtualReg_748, fuckLLVM_w
	lw	VirtualReg_749, fuckLLVM_w
	addi	VirtualReg_750, VirtualReg_749, 1
	la	VirtualReg_751, fuckLLVM_w
	sw	VirtualReg_750, 0(VirtualReg_751)
	lw	VirtualReg_752, fuckLLVM_w
	addi	VirtualReg_753, VirtualReg_752, 1
	la	VirtualReg_754, fuckLLVM_w
	sw	VirtualReg_753, 0(VirtualReg_754)
	lw	VirtualReg_755, fuckLLVM_w
	lw	VirtualReg_756, fuckLLVM_w
	addi	VirtualReg_757, VirtualReg_756, 1
	la	VirtualReg_758, fuckLLVM_w
	sw	VirtualReg_757, 0(VirtualReg_758)
	lw	VirtualReg_759, fuckLLVM_w
	addi	VirtualReg_760, VirtualReg_759, 1
	la	VirtualReg_761, fuckLLVM_w
	sw	VirtualReg_760, 0(VirtualReg_761)
	lw	VirtualReg_762, fuckLLVM_w
	lw	VirtualReg_763, fuckLLVM_w
	addi	VirtualReg_764, VirtualReg_763, 1
	la	VirtualReg_765, fuckLLVM_w
	sw	VirtualReg_764, 0(VirtualReg_765)
	lw	VirtualReg_766, fuckLLVM_w
	addi	VirtualReg_767, VirtualReg_766, 1
	la	VirtualReg_768, fuckLLVM_w
	sw	VirtualReg_767, 0(VirtualReg_768)
	lw	VirtualReg_769, fuckLLVM_w
	lw	VirtualReg_770, fuckLLVM_w
	addi	VirtualReg_771, VirtualReg_770, 1
	la	VirtualReg_772, fuckLLVM_w
	sw	VirtualReg_771, 0(VirtualReg_772)
	lw	VirtualReg_773, fuckLLVM_w
	addi	VirtualReg_774, VirtualReg_773, 1
	la	VirtualReg_775, fuckLLVM_w
	sw	VirtualReg_774, 0(VirtualReg_775)
	lw	VirtualReg_776, fuckLLVM_w
	lw	VirtualReg_777, fuckLLVM_w
	addi	VirtualReg_778, VirtualReg_777, 1
	la	VirtualReg_779, fuckLLVM_w
	sw	VirtualReg_778, 0(VirtualReg_779)
	lw	VirtualReg_780, fuckLLVM_w
	addi	VirtualReg_781, VirtualReg_780, 1
	la	VirtualReg_782, fuckLLVM_w
	sw	VirtualReg_781, 0(VirtualReg_782)
	lw	VirtualReg_783, fuckLLVM_w
	lw	VirtualReg_784, fuckLLVM_w
	addi	VirtualReg_785, VirtualReg_784, 1
	la	VirtualReg_786, fuckLLVM_w
	sw	VirtualReg_785, 0(VirtualReg_786)
	lw	VirtualReg_787, fuckLLVM_w
	addi	VirtualReg_788, VirtualReg_787, 1
	la	VirtualReg_789, fuckLLVM_w
	sw	VirtualReg_788, 0(VirtualReg_789)
	lw	VirtualReg_790, fuckLLVM_w
	lw	VirtualReg_791, fuckLLVM_w
	addi	VirtualReg_792, VirtualReg_791, 1
	la	VirtualReg_793, fuckLLVM_w
	sw	VirtualReg_792, 0(VirtualReg_793)
	lw	VirtualReg_794, fuckLLVM_w
	addi	VirtualReg_795, VirtualReg_794, 1
	la	VirtualReg_796, fuckLLVM_w
	sw	VirtualReg_795, 0(VirtualReg_796)
	lw	VirtualReg_797, fuckLLVM_w
	lw	VirtualReg_798, fuckLLVM_w
	addi	VirtualReg_799, VirtualReg_798, 1
	la	VirtualReg_800, fuckLLVM_w
	sw	VirtualReg_799, 0(VirtualReg_800)
	lw	VirtualReg_801, fuckLLVM_w
	addi	VirtualReg_802, VirtualReg_801, 1
	la	VirtualReg_803, fuckLLVM_w
	sw	VirtualReg_802, 0(VirtualReg_803)
	lw	VirtualReg_804, fuckLLVM_w
	lw	VirtualReg_805, fuckLLVM_w
	addi	VirtualReg_806, VirtualReg_805, 1
	la	VirtualReg_807, fuckLLVM_w
	sw	VirtualReg_806, 0(VirtualReg_807)
	lw	VirtualReg_808, fuckLLVM_w
	addi	VirtualReg_809, VirtualReg_808, 1
	la	VirtualReg_810, fuckLLVM_w
	sw	VirtualReg_809, 0(VirtualReg_810)
	lw	VirtualReg_811, fuckLLVM_w
	lw	VirtualReg_812, fuckLLVM_w
	addi	VirtualReg_813, VirtualReg_812, 1
	la	VirtualReg_814, fuckLLVM_w
	sw	VirtualReg_813, 0(VirtualReg_814)
	lw	VirtualReg_815, fuckLLVM_w
	addi	VirtualReg_816, VirtualReg_815, 1
	la	VirtualReg_817, fuckLLVM_w
	sw	VirtualReg_816, 0(VirtualReg_817)
	lw	VirtualReg_818, fuckLLVM_w
	lw	VirtualReg_819, fuckLLVM_w
	addi	VirtualReg_820, VirtualReg_819, 1
	la	VirtualReg_821, fuckLLVM_w
	sw	VirtualReg_820, 0(VirtualReg_821)
	lw	VirtualReg_822, fuckLLVM_w
	addi	VirtualReg_823, VirtualReg_822, 1
	la	VirtualReg_824, fuckLLVM_w
	sw	VirtualReg_823, 0(VirtualReg_824)
	lw	VirtualReg_825, fuckLLVM_w
	lw	VirtualReg_826, fuckLLVM_w
	addi	VirtualReg_827, VirtualReg_826, 1
	la	VirtualReg_828, fuckLLVM_w
	sw	VirtualReg_827, 0(VirtualReg_828)
	lw	VirtualReg_829, fuckLLVM_w
	addi	VirtualReg_830, VirtualReg_829, 1
	la	VirtualReg_831, fuckLLVM_w
	sw	VirtualReg_830, 0(VirtualReg_831)
	lw	VirtualReg_832, fuckLLVM_w
	lw	VirtualReg_833, fuckLLVM_w
	addi	VirtualReg_834, VirtualReg_833, 1
	la	VirtualReg_835, fuckLLVM_w
	sw	VirtualReg_834, 0(VirtualReg_835)
	lw	VirtualReg_836, fuckLLVM_w
	addi	VirtualReg_837, VirtualReg_836, 1
	la	VirtualReg_838, fuckLLVM_w
	sw	VirtualReg_837, 0(VirtualReg_838)
	lw	VirtualReg_839, fuckLLVM_w
	lw	VirtualReg_840, fuckLLVM_w
	addi	VirtualReg_841, VirtualReg_840, 1
	la	VirtualReg_842, fuckLLVM_w
	sw	VirtualReg_841, 0(VirtualReg_842)
	lw	VirtualReg_843, fuckLLVM_w
	addi	VirtualReg_844, VirtualReg_843, 1
	la	VirtualReg_845, fuckLLVM_w
	sw	VirtualReg_844, 0(VirtualReg_845)
	lw	VirtualReg_846, fuckLLVM_w
	lw	VirtualReg_847, fuckLLVM_w
	addi	VirtualReg_848, VirtualReg_847, 1
	la	VirtualReg_849, fuckLLVM_w
	sw	VirtualReg_848, 0(VirtualReg_849)
	lw	VirtualReg_850, fuckLLVM_w
	addi	VirtualReg_851, VirtualReg_850, 1
	la	VirtualReg_852, fuckLLVM_w
	sw	VirtualReg_851, 0(VirtualReg_852)
	lw	VirtualReg_853, fuckLLVM_w
	lw	VirtualReg_854, fuckLLVM_w
	addi	VirtualReg_855, VirtualReg_854, 1
	la	VirtualReg_856, fuckLLVM_w
	sw	VirtualReg_855, 0(VirtualReg_856)
	lw	VirtualReg_857, fuckLLVM_w
	addi	VirtualReg_858, VirtualReg_857, 1
	la	VirtualReg_859, fuckLLVM_w
	sw	VirtualReg_858, 0(VirtualReg_859)
	lw	VirtualReg_860, fuckLLVM_w
	lw	VirtualReg_861, fuckLLVM_w
	addi	VirtualReg_862, VirtualReg_861, 1
	la	VirtualReg_863, fuckLLVM_w
	sw	VirtualReg_862, 0(VirtualReg_863)
	lw	VirtualReg_864, fuckLLVM_w
	addi	VirtualReg_865, VirtualReg_864, 1
	la	VirtualReg_866, fuckLLVM_w
	sw	VirtualReg_865, 0(VirtualReg_866)
	lw	VirtualReg_867, fuckLLVM_w
	lw	VirtualReg_868, fuckLLVM_w
	addi	VirtualReg_869, VirtualReg_868, 1
	la	VirtualReg_870, fuckLLVM_w
	sw	VirtualReg_869, 0(VirtualReg_870)
	lw	VirtualReg_871, fuckLLVM_w
	addi	VirtualReg_872, VirtualReg_871, 1
	la	VirtualReg_873, fuckLLVM_w
	sw	VirtualReg_872, 0(VirtualReg_873)
	lw	VirtualReg_874, fuckLLVM_w
	lw	VirtualReg_875, fuckLLVM_w
	addi	VirtualReg_876, VirtualReg_875, 1
	la	VirtualReg_877, fuckLLVM_w
	sw	VirtualReg_876, 0(VirtualReg_877)
	lw	VirtualReg_878, fuckLLVM_w
	addi	VirtualReg_879, VirtualReg_878, 1
	la	VirtualReg_880, fuckLLVM_w
	sw	VirtualReg_879, 0(VirtualReg_880)
	lw	VirtualReg_881, fuckLLVM_w
	lw	VirtualReg_882, fuckLLVM_w
	addi	VirtualReg_883, VirtualReg_882, 1
	la	VirtualReg_884, fuckLLVM_w
	sw	VirtualReg_883, 0(VirtualReg_884)
	lw	VirtualReg_885, fuckLLVM_w
	addi	VirtualReg_886, VirtualReg_885, 1
	la	VirtualReg_887, fuckLLVM_w
	sw	VirtualReg_886, 0(VirtualReg_887)
	lw	VirtualReg_888, fuckLLVM_w
	lw	VirtualReg_889, fuckLLVM_w
	addi	VirtualReg_890, VirtualReg_889, 1
	la	VirtualReg_891, fuckLLVM_w
	sw	VirtualReg_890, 0(VirtualReg_891)
	lw	VirtualReg_892, fuckLLVM_w
	addi	VirtualReg_893, VirtualReg_892, 1
	la	VirtualReg_894, fuckLLVM_w
	sw	VirtualReg_893, 0(VirtualReg_894)
	lw	VirtualReg_895, fuckLLVM_w
	lw	VirtualReg_896, fuckLLVM_w
	addi	VirtualReg_897, VirtualReg_896, 1
	la	VirtualReg_898, fuckLLVM_w
	sw	VirtualReg_897, 0(VirtualReg_898)
	lw	VirtualReg_899, fuckLLVM_w
	addi	VirtualReg_900, VirtualReg_899, 1
	la	VirtualReg_901, fuckLLVM_w
	sw	VirtualReg_900, 0(VirtualReg_901)
	lw	VirtualReg_902, fuckLLVM_w
	lw	VirtualReg_903, fuckLLVM_w
	addi	VirtualReg_904, VirtualReg_903, 1
	la	VirtualReg_905, fuckLLVM_w
	sw	VirtualReg_904, 0(VirtualReg_905)
	lw	VirtualReg_906, fuckLLVM_w
	addi	VirtualReg_907, VirtualReg_906, 1
	la	VirtualReg_908, fuckLLVM_w
	sw	VirtualReg_907, 0(VirtualReg_908)
	lw	VirtualReg_909, fuckLLVM_w
	lw	VirtualReg_910, fuckLLVM_w
	addi	VirtualReg_911, VirtualReg_910, 1
	la	VirtualReg_912, fuckLLVM_w
	sw	VirtualReg_911, 0(VirtualReg_912)
	lw	VirtualReg_913, fuckLLVM_w
	addi	VirtualReg_914, VirtualReg_913, 1
	la	VirtualReg_915, fuckLLVM_w
	sw	VirtualReg_914, 0(VirtualReg_915)
	lw	VirtualReg_916, fuckLLVM_w
	lw	VirtualReg_917, fuckLLVM_w
	addi	VirtualReg_918, VirtualReg_917, 1
	la	VirtualReg_919, fuckLLVM_w
	sw	VirtualReg_918, 0(VirtualReg_919)
	lw	VirtualReg_920, fuckLLVM_w
	addi	VirtualReg_921, VirtualReg_920, 1
	la	VirtualReg_922, fuckLLVM_w
	sw	VirtualReg_921, 0(VirtualReg_922)
	lw	VirtualReg_923, fuckLLVM_w
	lw	VirtualReg_924, fuckLLVM_w
	addi	VirtualReg_925, VirtualReg_924, 1
	la	VirtualReg_926, fuckLLVM_w
	sw	VirtualReg_925, 0(VirtualReg_926)
	lw	VirtualReg_927, fuckLLVM_w
	addi	VirtualReg_928, VirtualReg_927, 1
	la	VirtualReg_929, fuckLLVM_w
	sw	VirtualReg_928, 0(VirtualReg_929)
	lw	VirtualReg_930, fuckLLVM_w
	lw	VirtualReg_931, fuckLLVM_w
	addi	VirtualReg_932, VirtualReg_931, 1
	la	VirtualReg_933, fuckLLVM_w
	sw	VirtualReg_932, 0(VirtualReg_933)
	lw	VirtualReg_934, fuckLLVM_w
	addi	VirtualReg_935, VirtualReg_934, 1
	la	VirtualReg_936, fuckLLVM_w
	sw	VirtualReg_935, 0(VirtualReg_936)
	lw	VirtualReg_937, fuckLLVM_w
	lw	VirtualReg_938, fuckLLVM_w
	addi	VirtualReg_939, VirtualReg_938, 1
	la	VirtualReg_940, fuckLLVM_w
	sw	VirtualReg_939, 0(VirtualReg_940)
	lw	VirtualReg_941, fuckLLVM_w
	addi	VirtualReg_942, VirtualReg_941, 1
	la	VirtualReg_943, fuckLLVM_w
	sw	VirtualReg_942, 0(VirtualReg_943)
	lw	VirtualReg_944, fuckLLVM_w
	lw	VirtualReg_945, fuckLLVM_w
	addi	VirtualReg_946, VirtualReg_945, 1
	la	VirtualReg_947, fuckLLVM_w
	sw	VirtualReg_946, 0(VirtualReg_947)
	lw	VirtualReg_948, fuckLLVM_w
	addi	VirtualReg_949, VirtualReg_948, 1
	la	VirtualReg_950, fuckLLVM_w
	sw	VirtualReg_949, 0(VirtualReg_950)
	lw	VirtualReg_951, fuckLLVM_w
	lw	VirtualReg_952, fuckLLVM_w
	addi	VirtualReg_953, VirtualReg_952, 1
	la	VirtualReg_954, fuckLLVM_w
	sw	VirtualReg_953, 0(VirtualReg_954)
	lw	VirtualReg_955, fuckLLVM_w
	addi	VirtualReg_956, VirtualReg_955, 1
	la	VirtualReg_957, fuckLLVM_w
	sw	VirtualReg_956, 0(VirtualReg_957)
	lw	VirtualReg_958, fuckLLVM_w
	lw	VirtualReg_959, fuckLLVM_w
	addi	VirtualReg_960, VirtualReg_959, 1
	la	VirtualReg_961, fuckLLVM_w
	sw	VirtualReg_960, 0(VirtualReg_961)
	lw	VirtualReg_962, fuckLLVM_w
	addi	VirtualReg_963, VirtualReg_962, 1
	la	VirtualReg_964, fuckLLVM_w
	sw	VirtualReg_963, 0(VirtualReg_964)
	lw	VirtualReg_965, fuckLLVM_w
	lw	VirtualReg_966, fuckLLVM_w
	addi	VirtualReg_967, VirtualReg_966, 1
	la	VirtualReg_968, fuckLLVM_w
	sw	VirtualReg_967, 0(VirtualReg_968)
	lw	VirtualReg_969, fuckLLVM_w
	addi	VirtualReg_970, VirtualReg_969, 1
	la	VirtualReg_971, fuckLLVM_w
	sw	VirtualReg_970, 0(VirtualReg_971)
	lw	VirtualReg_972, fuckLLVM_w
	lw	VirtualReg_973, fuckLLVM_w
	addi	VirtualReg_974, VirtualReg_973, 1
	la	VirtualReg_975, fuckLLVM_w
	sw	VirtualReg_974, 0(VirtualReg_975)
	lw	VirtualReg_976, fuckLLVM_w
	addi	VirtualReg_977, VirtualReg_976, 1
	la	VirtualReg_978, fuckLLVM_w
	sw	VirtualReg_977, 0(VirtualReg_978)
	lw	VirtualReg_979, fuckLLVM_w
	lw	VirtualReg_980, fuckLLVM_w
	addi	VirtualReg_981, VirtualReg_980, 1
	la	VirtualReg_982, fuckLLVM_w
	sw	VirtualReg_981, 0(VirtualReg_982)
	lw	VirtualReg_983, fuckLLVM_w
	addi	VirtualReg_984, VirtualReg_983, 1
	la	VirtualReg_985, fuckLLVM_w
	sw	VirtualReg_984, 0(VirtualReg_985)
	lw	VirtualReg_986, fuckLLVM_w
	lw	VirtualReg_987, fuckLLVM_w
	addi	VirtualReg_988, VirtualReg_987, 1
	la	VirtualReg_989, fuckLLVM_w
	sw	VirtualReg_988, 0(VirtualReg_989)
	lw	VirtualReg_990, fuckLLVM_w
	addi	VirtualReg_991, VirtualReg_990, 1
	la	VirtualReg_992, fuckLLVM_w
	sw	VirtualReg_991, 0(VirtualReg_992)
	lw	VirtualReg_993, fuckLLVM_w
	lw	VirtualReg_994, fuckLLVM_w
	addi	VirtualReg_995, VirtualReg_994, 1
	la	VirtualReg_996, fuckLLVM_w
	sw	VirtualReg_995, 0(VirtualReg_996)
	lw	VirtualReg_997, fuckLLVM_w
	addi	VirtualReg_998, VirtualReg_997, 1
	la	VirtualReg_999, fuckLLVM_w
	sw	VirtualReg_998, 0(VirtualReg_999)
	lw	VirtualReg_1000, fuckLLVM_w
	lw	VirtualReg_1001, fuckLLVM_w
	addi	VirtualReg_1002, VirtualReg_1001, 1
	la	VirtualReg_1003, fuckLLVM_w
	sw	VirtualReg_1002, 0(VirtualReg_1003)
	lw	VirtualReg_1004, fuckLLVM_w
	addi	VirtualReg_1005, VirtualReg_1004, 1
	la	VirtualReg_1006, fuckLLVM_w
	sw	VirtualReg_1005, 0(VirtualReg_1006)
	lw	VirtualReg_1007, fuckLLVM_w
	lw	VirtualReg_1008, fuckLLVM_w
	addi	VirtualReg_1009, VirtualReg_1008, 1
	la	VirtualReg_1010, fuckLLVM_w
	sw	VirtualReg_1009, 0(VirtualReg_1010)
	lw	VirtualReg_1011, fuckLLVM_w
	addi	VirtualReg_1012, VirtualReg_1011, 1
	la	VirtualReg_1013, fuckLLVM_w
	sw	VirtualReg_1012, 0(VirtualReg_1013)
	lw	VirtualReg_1014, fuckLLVM_w
	lw	VirtualReg_1015, fuckLLVM_w
	addi	VirtualReg_1016, VirtualReg_1015, 1
	la	VirtualReg_1017, fuckLLVM_w
	sw	VirtualReg_1016, 0(VirtualReg_1017)
	lw	VirtualReg_1018, fuckLLVM_w
	addi	VirtualReg_1019, VirtualReg_1018, 1
	la	VirtualReg_1020, fuckLLVM_w
	sw	VirtualReg_1019, 0(VirtualReg_1020)
	lw	VirtualReg_1021, fuckLLVM_w
	lw	VirtualReg_1022, fuckLLVM_w
	addi	VirtualReg_1023, VirtualReg_1022, 1
	la	VirtualReg_1024, fuckLLVM_w
	sw	VirtualReg_1023, 0(VirtualReg_1024)
	lw	VirtualReg_1025, fuckLLVM_w
	addi	VirtualReg_1026, VirtualReg_1025, 1
	la	VirtualReg_1027, fuckLLVM_w
	sw	VirtualReg_1026, 0(VirtualReg_1027)
	lw	VirtualReg_1028, fuckLLVM_w
	lw	VirtualReg_1029, fuckLLVM_w
	addi	VirtualReg_1030, VirtualReg_1029, 1
	la	VirtualReg_1031, fuckLLVM_w
	sw	VirtualReg_1030, 0(VirtualReg_1031)
	lw	VirtualReg_1032, fuckLLVM_w
	addi	VirtualReg_1033, VirtualReg_1032, 1
	la	VirtualReg_1034, fuckLLVM_w
	sw	VirtualReg_1033, 0(VirtualReg_1034)
	lw	VirtualReg_1035, fuckLLVM_w
	lw	VirtualReg_1036, fuckLLVM_w
	addi	VirtualReg_1037, VirtualReg_1036, 1
	la	VirtualReg_1038, fuckLLVM_w
	sw	VirtualReg_1037, 0(VirtualReg_1038)
	lw	VirtualReg_1039, fuckLLVM_w
	addi	VirtualReg_1040, VirtualReg_1039, 1
	la	VirtualReg_1041, fuckLLVM_w
	sw	VirtualReg_1040, 0(VirtualReg_1041)
	lw	VirtualReg_1042, fuckLLVM_w
	lw	VirtualReg_1043, fuckLLVM_w
	addi	VirtualReg_1044, VirtualReg_1043, 1
	la	VirtualReg_1045, fuckLLVM_w
	sw	VirtualReg_1044, 0(VirtualReg_1045)
	lw	VirtualReg_1046, fuckLLVM_w
	addi	VirtualReg_1047, VirtualReg_1046, 1
	la	VirtualReg_1048, fuckLLVM_w
	sw	VirtualReg_1047, 0(VirtualReg_1048)
	lw	VirtualReg_1049, fuckLLVM_w
	lw	VirtualReg_1050, fuckLLVM_w
	addi	VirtualReg_1051, VirtualReg_1050, 1
	la	VirtualReg_1052, fuckLLVM_w
	sw	VirtualReg_1051, 0(VirtualReg_1052)
	lw	VirtualReg_1053, fuckLLVM_w
	addi	VirtualReg_1054, VirtualReg_1053, 1
	la	VirtualReg_1055, fuckLLVM_w
	sw	VirtualReg_1054, 0(VirtualReg_1055)
	lw	VirtualReg_1056, fuckLLVM_w
	lw	VirtualReg_1057, fuckLLVM_w
	addi	VirtualReg_1058, VirtualReg_1057, 1
	la	VirtualReg_1059, fuckLLVM_w
	sw	VirtualReg_1058, 0(VirtualReg_1059)
	lw	VirtualReg_1060, fuckLLVM_w
	addi	VirtualReg_1061, VirtualReg_1060, 1
	la	VirtualReg_1062, fuckLLVM_w
	sw	VirtualReg_1061, 0(VirtualReg_1062)
	lw	VirtualReg_1063, fuckLLVM_w
	lw	VirtualReg_1064, fuckLLVM_w
	addi	VirtualReg_1065, VirtualReg_1064, 1
	la	VirtualReg_1066, fuckLLVM_w
	sw	VirtualReg_1065, 0(VirtualReg_1066)
	lw	VirtualReg_1067, fuckLLVM_w
	addi	VirtualReg_1068, VirtualReg_1067, 1
	la	VirtualReg_1069, fuckLLVM_w
	sw	VirtualReg_1068, 0(VirtualReg_1069)
	lw	VirtualReg_1070, fuckLLVM_w
	lw	VirtualReg_1071, fuckLLVM_w
	addi	VirtualReg_1072, VirtualReg_1071, 1
	la	VirtualReg_1073, fuckLLVM_w
	sw	VirtualReg_1072, 0(VirtualReg_1073)
	lw	VirtualReg_1074, fuckLLVM_w
	addi	VirtualReg_1075, VirtualReg_1074, 1
	la	VirtualReg_1076, fuckLLVM_w
	sw	VirtualReg_1075, 0(VirtualReg_1076)
	lw	VirtualReg_1077, fuckLLVM_w
	lw	VirtualReg_1078, fuckLLVM_w
	addi	VirtualReg_1079, VirtualReg_1078, 1
	la	VirtualReg_1080, fuckLLVM_w
	sw	VirtualReg_1079, 0(VirtualReg_1080)
	lw	VirtualReg_1081, fuckLLVM_w
	addi	VirtualReg_1082, VirtualReg_1081, 1
	la	VirtualReg_1083, fuckLLVM_w
	sw	VirtualReg_1082, 0(VirtualReg_1083)
	lw	VirtualReg_1084, fuckLLVM_w
	lw	VirtualReg_1085, fuckLLVM_w
	addi	VirtualReg_1086, VirtualReg_1085, 1
	la	VirtualReg_1087, fuckLLVM_w
	sw	VirtualReg_1086, 0(VirtualReg_1087)
	lw	VirtualReg_1088, fuckLLVM_w
	addi	VirtualReg_1089, VirtualReg_1088, 1
	la	VirtualReg_1090, fuckLLVM_w
	sw	VirtualReg_1089, 0(VirtualReg_1090)
	lw	VirtualReg_1091, fuckLLVM_w
	lw	VirtualReg_1092, fuckLLVM_w
	addi	VirtualReg_1093, VirtualReg_1092, 1
	la	VirtualReg_1094, fuckLLVM_w
	sw	VirtualReg_1093, 0(VirtualReg_1094)
	lw	VirtualReg_1095, fuckLLVM_w
	addi	VirtualReg_1096, VirtualReg_1095, 1
	la	VirtualReg_1097, fuckLLVM_w
	sw	VirtualReg_1096, 0(VirtualReg_1097)
	lw	VirtualReg_1098, fuckLLVM_w
	lw	VirtualReg_1099, fuckLLVM_w
	addi	VirtualReg_1100, VirtualReg_1099, 1
	la	VirtualReg_1101, fuckLLVM_w
	sw	VirtualReg_1100, 0(VirtualReg_1101)
	lw	VirtualReg_1102, fuckLLVM_w
	addi	VirtualReg_1103, VirtualReg_1102, 1
	la	VirtualReg_1104, fuckLLVM_w
	sw	VirtualReg_1103, 0(VirtualReg_1104)
	lw	VirtualReg_1105, fuckLLVM_w
	lw	VirtualReg_1106, fuckLLVM_w
	addi	VirtualReg_1107, VirtualReg_1106, 1
	la	VirtualReg_1108, fuckLLVM_w
	sw	VirtualReg_1107, 0(VirtualReg_1108)
	lw	VirtualReg_1109, fuckLLVM_w
	addi	VirtualReg_1110, VirtualReg_1109, 1
	la	VirtualReg_1111, fuckLLVM_w
	sw	VirtualReg_1110, 0(VirtualReg_1111)
	lw	VirtualReg_1112, fuckLLVM_w
	lw	VirtualReg_1113, fuckLLVM_w
	addi	VirtualReg_1114, VirtualReg_1113, 1
	la	VirtualReg_1115, fuckLLVM_w
	sw	VirtualReg_1114, 0(VirtualReg_1115)
	lw	VirtualReg_1116, fuckLLVM_w
	addi	VirtualReg_1117, VirtualReg_1116, 1
	la	VirtualReg_1118, fuckLLVM_w
	sw	VirtualReg_1117, 0(VirtualReg_1118)
	lw	VirtualReg_1119, fuckLLVM_w
	lw	VirtualReg_1120, fuckLLVM_w
	addi	VirtualReg_1121, VirtualReg_1120, 1
	la	VirtualReg_1122, fuckLLVM_w
	sw	VirtualReg_1121, 0(VirtualReg_1122)
	lw	VirtualReg_1123, fuckLLVM_w
	addi	VirtualReg_1124, VirtualReg_1123, 1
	la	VirtualReg_1125, fuckLLVM_w
	sw	VirtualReg_1124, 0(VirtualReg_1125)
	lw	VirtualReg_1126, fuckLLVM_w
	lw	VirtualReg_1127, fuckLLVM_w
	addi	VirtualReg_1128, VirtualReg_1127, 1
	la	VirtualReg_1129, fuckLLVM_w
	sw	VirtualReg_1128, 0(VirtualReg_1129)
	lw	VirtualReg_1130, fuckLLVM_w
	addi	VirtualReg_1131, VirtualReg_1130, 1
	la	VirtualReg_1132, fuckLLVM_w
	sw	VirtualReg_1131, 0(VirtualReg_1132)
	lw	VirtualReg_1133, fuckLLVM_w
	lw	VirtualReg_1134, fuckLLVM_w
	addi	VirtualReg_1135, VirtualReg_1134, 1
	la	VirtualReg_1136, fuckLLVM_w
	sw	VirtualReg_1135, 0(VirtualReg_1136)
	lw	VirtualReg_1137, fuckLLVM_w
	addi	VirtualReg_1138, VirtualReg_1137, 1
	la	VirtualReg_1139, fuckLLVM_w
	sw	VirtualReg_1138, 0(VirtualReg_1139)
	lw	VirtualReg_1140, fuckLLVM_w
	lw	VirtualReg_1141, fuckLLVM_w
	addi	VirtualReg_1142, VirtualReg_1141, 1
	la	VirtualReg_1143, fuckLLVM_w
	sw	VirtualReg_1142, 0(VirtualReg_1143)
	lw	VirtualReg_1144, fuckLLVM_w
	addi	VirtualReg_1145, VirtualReg_1144, 1
	la	VirtualReg_1146, fuckLLVM_w
	sw	VirtualReg_1145, 0(VirtualReg_1146)
	lw	VirtualReg_1147, fuckLLVM_w
	lw	VirtualReg_1148, fuckLLVM_w
	addi	VirtualReg_1149, VirtualReg_1148, 1
	la	VirtualReg_1150, fuckLLVM_w
	sw	VirtualReg_1149, 0(VirtualReg_1150)
	lw	VirtualReg_1151, fuckLLVM_w
	addi	VirtualReg_1152, VirtualReg_1151, 1
	la	VirtualReg_1153, fuckLLVM_w
	sw	VirtualReg_1152, 0(VirtualReg_1153)
	lw	VirtualReg_1154, fuckLLVM_w
	lw	VirtualReg_1155, fuckLLVM_w
	addi	VirtualReg_1156, VirtualReg_1155, 1
	la	VirtualReg_1157, fuckLLVM_w
	sw	VirtualReg_1156, 0(VirtualReg_1157)
	lw	VirtualReg_1158, fuckLLVM_w
	addi	VirtualReg_1159, VirtualReg_1158, 1
	la	VirtualReg_1160, fuckLLVM_w
	sw	VirtualReg_1159, 0(VirtualReg_1160)
	lw	VirtualReg_1161, fuckLLVM_w
	lw	VirtualReg_1162, fuckLLVM_w
	addi	VirtualReg_1163, VirtualReg_1162, 1
	la	VirtualReg_1164, fuckLLVM_w
	sw	VirtualReg_1163, 0(VirtualReg_1164)
	lw	VirtualReg_1165, fuckLLVM_w
	addi	VirtualReg_1166, VirtualReg_1165, 1
	la	VirtualReg_1167, fuckLLVM_w
	sw	VirtualReg_1166, 0(VirtualReg_1167)
	lw	VirtualReg_1168, fuckLLVM_w
	lw	VirtualReg_1169, fuckLLVM_w
	addi	VirtualReg_1170, VirtualReg_1169, 1
	la	VirtualReg_1171, fuckLLVM_w
	sw	VirtualReg_1170, 0(VirtualReg_1171)
	lw	VirtualReg_1172, fuckLLVM_w
	addi	VirtualReg_1173, VirtualReg_1172, 1
	la	VirtualReg_1174, fuckLLVM_w
	sw	VirtualReg_1173, 0(VirtualReg_1174)
	lw	VirtualReg_1175, fuckLLVM_w
	lw	VirtualReg_1176, fuckLLVM_w
	addi	VirtualReg_1177, VirtualReg_1176, 1
	la	VirtualReg_1178, fuckLLVM_w
	sw	VirtualReg_1177, 0(VirtualReg_1178)
	lw	VirtualReg_1179, fuckLLVM_w
	addi	VirtualReg_1180, VirtualReg_1179, 1
	la	VirtualReg_1181, fuckLLVM_w
	sw	VirtualReg_1180, 0(VirtualReg_1181)
	lw	VirtualReg_1182, fuckLLVM_w
	lw	VirtualReg_1183, fuckLLVM_w
	addi	VirtualReg_1184, VirtualReg_1183, 1
	la	VirtualReg_1185, fuckLLVM_w
	sw	VirtualReg_1184, 0(VirtualReg_1185)
	lw	VirtualReg_1186, fuckLLVM_w
	addi	VirtualReg_1187, VirtualReg_1186, 1
	la	VirtualReg_1188, fuckLLVM_w
	sw	VirtualReg_1187, 0(VirtualReg_1188)
	lw	VirtualReg_1189, fuckLLVM_w
	lw	VirtualReg_1190, fuckLLVM_w
	addi	VirtualReg_1191, VirtualReg_1190, 1
	la	VirtualReg_1192, fuckLLVM_w
	sw	VirtualReg_1191, 0(VirtualReg_1192)
	lw	VirtualReg_1193, fuckLLVM_w
	addi	VirtualReg_1194, VirtualReg_1193, 1
	la	VirtualReg_1195, fuckLLVM_w
	sw	VirtualReg_1194, 0(VirtualReg_1195)
	lw	VirtualReg_1196, fuckLLVM_w
	lw	VirtualReg_1197, fuckLLVM_w
	addi	VirtualReg_1198, VirtualReg_1197, 1
	la	VirtualReg_1199, fuckLLVM_w
	sw	VirtualReg_1198, 0(VirtualReg_1199)
	lw	VirtualReg_1200, fuckLLVM_w
	addi	VirtualReg_1201, VirtualReg_1200, 1
	la	VirtualReg_1202, fuckLLVM_w
	sw	VirtualReg_1201, 0(VirtualReg_1202)
	lw	VirtualReg_1203, fuckLLVM_w
	lw	VirtualReg_1204, fuckLLVM_w
	addi	VirtualReg_1205, VirtualReg_1204, 1
	la	VirtualReg_1206, fuckLLVM_w
	sw	VirtualReg_1205, 0(VirtualReg_1206)
	lw	VirtualReg_1207, fuckLLVM_w
	addi	VirtualReg_1208, VirtualReg_1207, 1
	la	VirtualReg_1209, fuckLLVM_w
	sw	VirtualReg_1208, 0(VirtualReg_1209)
	lw	VirtualReg_1210, fuckLLVM_w
	lw	VirtualReg_1211, fuckLLVM_w
	addi	VirtualReg_1212, VirtualReg_1211, 1
	la	VirtualReg_1213, fuckLLVM_w
	sw	VirtualReg_1212, 0(VirtualReg_1213)
	lw	VirtualReg_1214, fuckLLVM_w
	addi	VirtualReg_1215, VirtualReg_1214, 1
	la	VirtualReg_1216, fuckLLVM_w
	sw	VirtualReg_1215, 0(VirtualReg_1216)
	lw	VirtualReg_1217, fuckLLVM_w
	lw	VirtualReg_1218, fuckLLVM_w
	addi	VirtualReg_1219, VirtualReg_1218, 1
	la	VirtualReg_1220, fuckLLVM_w
	sw	VirtualReg_1219, 0(VirtualReg_1220)
	lw	VirtualReg_1221, fuckLLVM_w
	addi	VirtualReg_1222, VirtualReg_1221, 1
	la	VirtualReg_1223, fuckLLVM_w
	sw	VirtualReg_1222, 0(VirtualReg_1223)
	lw	VirtualReg_1224, fuckLLVM_w
	lw	VirtualReg_1225, fuckLLVM_w
	addi	VirtualReg_1226, VirtualReg_1225, 1
	la	VirtualReg_1227, fuckLLVM_w
	sw	VirtualReg_1226, 0(VirtualReg_1227)
	lw	VirtualReg_1228, fuckLLVM_w
	addi	VirtualReg_1229, VirtualReg_1228, 1
	la	VirtualReg_1230, fuckLLVM_w
	sw	VirtualReg_1229, 0(VirtualReg_1230)
	lw	VirtualReg_1231, fuckLLVM_w
	lw	VirtualReg_1232, fuckLLVM_w
	addi	VirtualReg_1233, VirtualReg_1232, 1
	la	VirtualReg_1234, fuckLLVM_w
	sw	VirtualReg_1233, 0(VirtualReg_1234)
	lw	VirtualReg_1235, fuckLLVM_w
	addi	VirtualReg_1236, VirtualReg_1235, 1
	la	VirtualReg_1237, fuckLLVM_w
	sw	VirtualReg_1236, 0(VirtualReg_1237)
	lw	VirtualReg_1238, fuckLLVM_w
	lw	VirtualReg_1239, fuckLLVM_w
	addi	VirtualReg_1240, VirtualReg_1239, 1
	la	VirtualReg_1241, fuckLLVM_w
	sw	VirtualReg_1240, 0(VirtualReg_1241)
	lw	VirtualReg_1242, fuckLLVM_w
	addi	VirtualReg_1243, VirtualReg_1242, 1
	la	VirtualReg_1244, fuckLLVM_w
	sw	VirtualReg_1243, 0(VirtualReg_1244)
	lw	VirtualReg_1245, fuckLLVM_w
	lw	VirtualReg_1246, fuckLLVM_w
	addi	VirtualReg_1247, VirtualReg_1246, 1
	la	VirtualReg_1248, fuckLLVM_w
	sw	VirtualReg_1247, 0(VirtualReg_1248)
	lw	VirtualReg_1249, fuckLLVM_w
	addi	VirtualReg_1250, VirtualReg_1249, 1
	la	VirtualReg_1251, fuckLLVM_w
	sw	VirtualReg_1250, 0(VirtualReg_1251)
	lw	VirtualReg_1252, fuckLLVM_w
	lw	VirtualReg_1253, fuckLLVM_w
	addi	VirtualReg_1254, VirtualReg_1253, 1
	la	VirtualReg_1255, fuckLLVM_w
	sw	VirtualReg_1254, 0(VirtualReg_1255)
	lw	VirtualReg_1256, fuckLLVM_w
	addi	VirtualReg_1257, VirtualReg_1256, 1
	la	VirtualReg_1258, fuckLLVM_w
	sw	VirtualReg_1257, 0(VirtualReg_1258)
	lw	VirtualReg_1259, fuckLLVM_w
	lw	VirtualReg_1260, fuckLLVM_w
	addi	VirtualReg_1261, VirtualReg_1260, 1
	la	VirtualReg_1262, fuckLLVM_w
	sw	VirtualReg_1261, 0(VirtualReg_1262)
	lw	VirtualReg_1263, fuckLLVM_w
	addi	VirtualReg_1264, VirtualReg_1263, 1
	la	VirtualReg_1265, fuckLLVM_w
	sw	VirtualReg_1264, 0(VirtualReg_1265)
	lw	VirtualReg_1266, fuckLLVM_w
	lw	VirtualReg_1267, fuckLLVM_w
	addi	VirtualReg_1268, VirtualReg_1267, 1
	la	VirtualReg_1269, fuckLLVM_w
	sw	VirtualReg_1268, 0(VirtualReg_1269)
	lw	VirtualReg_1270, fuckLLVM_w
	addi	VirtualReg_1271, VirtualReg_1270, 1
	la	VirtualReg_1272, fuckLLVM_w
	sw	VirtualReg_1271, 0(VirtualReg_1272)
	lw	VirtualReg_1273, fuckLLVM_w
	lw	VirtualReg_1274, fuckLLVM_w
	addi	VirtualReg_1275, VirtualReg_1274, 1
	la	VirtualReg_1276, fuckLLVM_w
	sw	VirtualReg_1275, 0(VirtualReg_1276)
	lw	VirtualReg_1277, fuckLLVM_w
	addi	VirtualReg_1278, VirtualReg_1277, 1
	la	VirtualReg_1279, fuckLLVM_w
	sw	VirtualReg_1278, 0(VirtualReg_1279)
	lw	VirtualReg_1280, fuckLLVM_w
	lw	VirtualReg_1281, fuckLLVM_w
	addi	VirtualReg_1282, VirtualReg_1281, 1
	la	VirtualReg_1283, fuckLLVM_w
	sw	VirtualReg_1282, 0(VirtualReg_1283)
	lw	VirtualReg_1284, fuckLLVM_w
	addi	VirtualReg_1285, VirtualReg_1284, 1
	la	VirtualReg_1286, fuckLLVM_w
	sw	VirtualReg_1285, 0(VirtualReg_1286)
	lw	VirtualReg_1287, fuckLLVM_w
	lw	VirtualReg_1288, fuckLLVM_w
	addi	VirtualReg_1289, VirtualReg_1288, 1
	la	VirtualReg_1290, fuckLLVM_w
	sw	VirtualReg_1289, 0(VirtualReg_1290)
	lw	VirtualReg_1291, fuckLLVM_w
	addi	VirtualReg_1292, VirtualReg_1291, 1
	la	VirtualReg_1293, fuckLLVM_w
	sw	VirtualReg_1292, 0(VirtualReg_1293)
	lw	VirtualReg_1294, fuckLLVM_w
	lw	VirtualReg_1295, fuckLLVM_w
	addi	VirtualReg_1296, VirtualReg_1295, 1
	la	VirtualReg_1297, fuckLLVM_w
	sw	VirtualReg_1296, 0(VirtualReg_1297)
	lw	VirtualReg_1298, fuckLLVM_w
	addi	VirtualReg_1299, VirtualReg_1298, 1
	la	VirtualReg_1300, fuckLLVM_w
	sw	VirtualReg_1299, 0(VirtualReg_1300)
	lw	VirtualReg_1301, fuckLLVM_w
	lw	VirtualReg_1302, fuckLLVM_w
	addi	VirtualReg_1303, VirtualReg_1302, 1
	la	VirtualReg_1304, fuckLLVM_w
	sw	VirtualReg_1303, 0(VirtualReg_1304)
	lw	VirtualReg_1305, fuckLLVM_w
	addi	VirtualReg_1306, VirtualReg_1305, 1
	la	VirtualReg_1307, fuckLLVM_w
	sw	VirtualReg_1306, 0(VirtualReg_1307)
	lw	VirtualReg_1308, fuckLLVM_w
	lw	VirtualReg_1309, fuckLLVM_w
	addi	VirtualReg_1310, VirtualReg_1309, 1
	la	VirtualReg_1311, fuckLLVM_w
	sw	VirtualReg_1310, 0(VirtualReg_1311)
	lw	VirtualReg_1312, fuckLLVM_w
	addi	VirtualReg_1313, VirtualReg_1312, 1
	la	VirtualReg_1314, fuckLLVM_w
	sw	VirtualReg_1313, 0(VirtualReg_1314)
	lw	VirtualReg_1315, fuckLLVM_w
	lw	VirtualReg_1316, fuckLLVM_w
	addi	VirtualReg_1317, VirtualReg_1316, 1
	la	VirtualReg_1318, fuckLLVM_w
	sw	VirtualReg_1317, 0(VirtualReg_1318)
	lw	VirtualReg_1319, fuckLLVM_w
	addi	VirtualReg_1320, VirtualReg_1319, 1
	la	VirtualReg_1321, fuckLLVM_w
	sw	VirtualReg_1320, 0(VirtualReg_1321)
	lw	VirtualReg_1322, fuckLLVM_w
	lw	VirtualReg_1323, fuckLLVM_w
	addi	VirtualReg_1324, VirtualReg_1323, 1
	la	VirtualReg_1325, fuckLLVM_w
	sw	VirtualReg_1324, 0(VirtualReg_1325)
	lw	VirtualReg_1326, fuckLLVM_w
	addi	VirtualReg_1327, VirtualReg_1326, 1
	la	VirtualReg_1328, fuckLLVM_w
	sw	VirtualReg_1327, 0(VirtualReg_1328)
	lw	VirtualReg_1329, fuckLLVM_w
	lw	VirtualReg_1330, fuckLLVM_w
	addi	VirtualReg_1331, VirtualReg_1330, 1
	la	VirtualReg_1332, fuckLLVM_w
	sw	VirtualReg_1331, 0(VirtualReg_1332)
	lw	VirtualReg_1333, fuckLLVM_w
	addi	VirtualReg_1334, VirtualReg_1333, 1
	la	VirtualReg_1335, fuckLLVM_w
	sw	VirtualReg_1334, 0(VirtualReg_1335)
	lw	VirtualReg_1336, fuckLLVM_w
	lw	VirtualReg_1337, fuckLLVM_w
	addi	VirtualReg_1338, VirtualReg_1337, 1
	la	VirtualReg_1339, fuckLLVM_w
	sw	VirtualReg_1338, 0(VirtualReg_1339)
	lw	VirtualReg_1340, fuckLLVM_w
	addi	VirtualReg_1341, VirtualReg_1340, 1
	la	VirtualReg_1342, fuckLLVM_w
	sw	VirtualReg_1341, 0(VirtualReg_1342)
	lw	VirtualReg_1343, fuckLLVM_w
	lw	VirtualReg_1344, fuckLLVM_w
	addi	VirtualReg_1345, VirtualReg_1344, 1
	la	VirtualReg_1346, fuckLLVM_w
	sw	VirtualReg_1345, 0(VirtualReg_1346)
	lw	VirtualReg_1347, fuckLLVM_w
	addi	VirtualReg_1348, VirtualReg_1347, 1
	la	VirtualReg_1349, fuckLLVM_w
	sw	VirtualReg_1348, 0(VirtualReg_1349)
	lw	VirtualReg_1350, fuckLLVM_w
	lw	VirtualReg_1351, fuckLLVM_w
	addi	VirtualReg_1352, VirtualReg_1351, 1
	la	VirtualReg_1353, fuckLLVM_w
	sw	VirtualReg_1352, 0(VirtualReg_1353)
	lw	VirtualReg_1354, fuckLLVM_w
	addi	VirtualReg_1355, VirtualReg_1354, 1
	la	VirtualReg_1356, fuckLLVM_w
	sw	VirtualReg_1355, 0(VirtualReg_1356)
	lw	VirtualReg_1357, fuckLLVM_w
	lw	VirtualReg_1358, fuckLLVM_w
	addi	VirtualReg_1359, VirtualReg_1358, 1
	la	VirtualReg_1360, fuckLLVM_w
	sw	VirtualReg_1359, 0(VirtualReg_1360)
	lw	VirtualReg_1361, fuckLLVM_w
	addi	VirtualReg_1362, VirtualReg_1361, 1
	la	VirtualReg_1363, fuckLLVM_w
	sw	VirtualReg_1362, 0(VirtualReg_1363)
	lw	VirtualReg_1364, fuckLLVM_w
	lw	VirtualReg_1365, fuckLLVM_w
	addi	VirtualReg_1366, VirtualReg_1365, 1
	la	VirtualReg_1367, fuckLLVM_w
	sw	VirtualReg_1366, 0(VirtualReg_1367)
	lw	VirtualReg_1368, fuckLLVM_w
	addi	VirtualReg_1369, VirtualReg_1368, 1
	la	VirtualReg_1370, fuckLLVM_w
	sw	VirtualReg_1369, 0(VirtualReg_1370)
	lw	VirtualReg_1371, fuckLLVM_w
	lw	VirtualReg_1372, fuckLLVM_w
	addi	VirtualReg_1373, VirtualReg_1372, 1
	la	VirtualReg_1374, fuckLLVM_w
	sw	VirtualReg_1373, 0(VirtualReg_1374)
	lw	VirtualReg_1375, fuckLLVM_w
	addi	VirtualReg_1376, VirtualReg_1375, 1
	la	VirtualReg_1377, fuckLLVM_w
	sw	VirtualReg_1376, 0(VirtualReg_1377)
	lw	VirtualReg_1378, fuckLLVM_w
	lw	VirtualReg_1379, fuckLLVM_w
	addi	VirtualReg_1380, VirtualReg_1379, 1
	la	VirtualReg_1381, fuckLLVM_w
	sw	VirtualReg_1380, 0(VirtualReg_1381)
	lw	VirtualReg_1382, fuckLLVM_w
	addi	VirtualReg_1383, VirtualReg_1382, 1
	la	VirtualReg_1384, fuckLLVM_w
	sw	VirtualReg_1383, 0(VirtualReg_1384)
	lw	VirtualReg_1385, fuckLLVM_w
	lw	VirtualReg_1386, fuckLLVM_w
	addi	VirtualReg_1387, VirtualReg_1386, 1
	la	VirtualReg_1388, fuckLLVM_w
	sw	VirtualReg_1387, 0(VirtualReg_1388)
	lw	VirtualReg_1389, fuckLLVM_w
	addi	VirtualReg_1390, VirtualReg_1389, 1
	la	VirtualReg_1391, fuckLLVM_w
	sw	VirtualReg_1390, 0(VirtualReg_1391)
	lw	VirtualReg_1392, fuckLLVM_w
	lw	VirtualReg_1393, fuckLLVM_w
	addi	VirtualReg_1394, VirtualReg_1393, 1
	la	VirtualReg_1395, fuckLLVM_w
	sw	VirtualReg_1394, 0(VirtualReg_1395)
	lw	VirtualReg_1396, fuckLLVM_w
	addi	VirtualReg_1397, VirtualReg_1396, 1
	la	VirtualReg_1398, fuckLLVM_w
	sw	VirtualReg_1397, 0(VirtualReg_1398)
	lw	VirtualReg_1399, fuckLLVM_w
	lw	VirtualReg_1400, fuckLLVM_w
	addi	VirtualReg_1401, VirtualReg_1400, 1
	la	VirtualReg_1402, fuckLLVM_w
	sw	VirtualReg_1401, 0(VirtualReg_1402)
	lw	VirtualReg_1403, fuckLLVM_w
	addi	VirtualReg_1404, VirtualReg_1403, 1
	la	VirtualReg_1405, fuckLLVM_w
	sw	VirtualReg_1404, 0(VirtualReg_1405)
	lw	VirtualReg_1406, fuckLLVM_w
	lw	VirtualReg_1407, fuckLLVM_w
	addi	VirtualReg_1408, VirtualReg_1407, 1
	la	VirtualReg_1409, fuckLLVM_w
	sw	VirtualReg_1408, 0(VirtualReg_1409)
	lw	VirtualReg_1410, fuckLLVM_w
	addi	VirtualReg_1411, VirtualReg_1410, 1
	la	VirtualReg_1412, fuckLLVM_w
	sw	VirtualReg_1411, 0(VirtualReg_1412)
	lw	VirtualReg_1413, fuckLLVM_w
	lw	VirtualReg_1414, fuckLLVM_w
	addi	VirtualReg_1415, VirtualReg_1414, 1
	la	VirtualReg_1416, fuckLLVM_w
	sw	VirtualReg_1415, 0(VirtualReg_1416)
	lw	VirtualReg_1417, fuckLLVM_w
	addi	VirtualReg_1418, VirtualReg_1417, 1
	la	VirtualReg_1419, fuckLLVM_w
	sw	VirtualReg_1418, 0(VirtualReg_1419)
	lw	VirtualReg_1420, fuckLLVM_w
	lw	VirtualReg_1421, fuckLLVM_w
	addi	VirtualReg_1422, VirtualReg_1421, 1
	la	VirtualReg_1423, fuckLLVM_w
	sw	VirtualReg_1422, 0(VirtualReg_1423)
	lw	VirtualReg_1424, fuckLLVM_w
	addi	VirtualReg_1425, VirtualReg_1424, 1
	la	VirtualReg_1426, fuckLLVM_w
	sw	VirtualReg_1425, 0(VirtualReg_1426)
	lw	VirtualReg_1427, fuckLLVM_w
	lw	VirtualReg_1428, fuckLLVM_w
	addi	VirtualReg_1429, VirtualReg_1428, 1
	la	VirtualReg_1430, fuckLLVM_w
	sw	VirtualReg_1429, 0(VirtualReg_1430)
	lw	VirtualReg_1431, fuckLLVM_w
	addi	VirtualReg_1432, VirtualReg_1431, 1
	la	VirtualReg_1433, fuckLLVM_w
	sw	VirtualReg_1432, 0(VirtualReg_1433)
	lw	VirtualReg_1434, fuckLLVM_w
	lw	VirtualReg_1435, fuckLLVM_w
	addi	VirtualReg_1436, VirtualReg_1435, 1
	la	VirtualReg_1437, fuckLLVM_w
	sw	VirtualReg_1436, 0(VirtualReg_1437)
	lw	VirtualReg_1438, fuckLLVM_w
	addi	VirtualReg_1439, VirtualReg_1438, 1
	la	VirtualReg_1440, fuckLLVM_w
	sw	VirtualReg_1439, 0(VirtualReg_1440)
	lw	VirtualReg_1441, fuckLLVM_w
	lw	VirtualReg_1442, fuckLLVM_w
	addi	VirtualReg_1443, VirtualReg_1442, 1
	la	VirtualReg_1444, fuckLLVM_w
	sw	VirtualReg_1443, 0(VirtualReg_1444)
	lw	VirtualReg_1445, fuckLLVM_w
	addi	VirtualReg_1446, VirtualReg_1445, 1
	la	VirtualReg_1447, fuckLLVM_w
	sw	VirtualReg_1446, 0(VirtualReg_1447)
	lw	VirtualReg_1448, fuckLLVM_w
	lw	VirtualReg_1449, fuckLLVM_w
	addi	VirtualReg_1450, VirtualReg_1449, 1
	la	VirtualReg_1451, fuckLLVM_w
	sw	VirtualReg_1450, 0(VirtualReg_1451)
	lw	VirtualReg_1452, fuckLLVM_w
	addi	VirtualReg_1453, VirtualReg_1452, 1
	la	VirtualReg_1454, fuckLLVM_w
	sw	VirtualReg_1453, 0(VirtualReg_1454)
	lw	VirtualReg_1455, fuckLLVM_w
	lw	VirtualReg_1456, fuckLLVM_w
	addi	VirtualReg_1457, VirtualReg_1456, 1
	la	VirtualReg_1458, fuckLLVM_w
	sw	VirtualReg_1457, 0(VirtualReg_1458)
	lw	VirtualReg_1459, fuckLLVM_w
	addi	VirtualReg_1460, VirtualReg_1459, 1
	la	VirtualReg_1461, fuckLLVM_w
	sw	VirtualReg_1460, 0(VirtualReg_1461)
	lw	VirtualReg_1462, fuckLLVM_w
	lw	VirtualReg_1463, fuckLLVM_w
	addi	VirtualReg_1464, VirtualReg_1463, 1
	la	VirtualReg_1465, fuckLLVM_w
	sw	VirtualReg_1464, 0(VirtualReg_1465)
	lw	VirtualReg_1466, fuckLLVM_w
	addi	VirtualReg_1467, VirtualReg_1466, 1
	la	VirtualReg_1468, fuckLLVM_w
	sw	VirtualReg_1467, 0(VirtualReg_1468)
	lw	VirtualReg_1469, fuckLLVM_w
	lw	VirtualReg_1470, fuckLLVM_w
	addi	VirtualReg_1471, VirtualReg_1470, 1
	la	VirtualReg_1472, fuckLLVM_w
	sw	VirtualReg_1471, 0(VirtualReg_1472)
	lw	VirtualReg_1473, fuckLLVM_w
	addi	VirtualReg_1474, VirtualReg_1473, 1
	la	VirtualReg_1475, fuckLLVM_w
	sw	VirtualReg_1474, 0(VirtualReg_1475)
	lw	VirtualReg_1476, fuckLLVM_w
	lw	VirtualReg_1477, fuckLLVM_w
	addi	VirtualReg_1478, VirtualReg_1477, 1
	la	VirtualReg_1479, fuckLLVM_w
	sw	VirtualReg_1478, 0(VirtualReg_1479)
	lw	VirtualReg_1480, fuckLLVM_w
	addi	VirtualReg_1481, VirtualReg_1480, 1
	la	VirtualReg_1482, fuckLLVM_w
	sw	VirtualReg_1481, 0(VirtualReg_1482)
	lw	VirtualReg_1483, fuckLLVM_w
	call	bblock
	mv	VirtualReg_1484, a0
	call	bblock
	mv	VirtualReg_1485, a0
	mv	VirtualReg_1486, VirtualReg_1485
	j	.wP_return
.wP_return:
	mv	a0, VirtualReg_1486
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

	.globl	sanity_check
	.p2align	2
	.type	sanity_check,@function
sanity_check:
.sanity_check_assemblyInit:
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
	j	.sanity_check_entry
.sanity_check_entry:
	j	.sanity_check_call_wP_60
.sanity_check_call_wP_60_out:
	addi	VirtualReg_12, VirtualReg_13, 1
	j	.sanity_check_return
.sanity_check_call_wP_60_wP_ID4_for_suite:
	li	VirtualReg_16, 1
	sra	VirtualReg_15, VirtualReg_14, VirtualReg_16
	li	VirtualReg_1488, 2
	mv	VirtualReg_17, VirtualReg_1488
	j	.sanity_check_call_wP_60_wP_ID6_for_condition
.sanity_check_call_wP_60_wP_ID6_for_condition:
	slt	VirtualReg_18, VirtualReg_17, VirtualReg_15
	bnez	VirtualReg_18, .sanity_check_call_wP_60_wP_ID6_for_suite
	j	.sanity_check_call_wP_60_wP_ID6_for_condition_mid
.sanity_check_call_wP_60_wP_ID6_for_condition_mid:
	mv	VirtualReg_24, VirtualReg_14
	li	VirtualReg_1489, 1
	mv	VirtualReg_25, VirtualReg_1489
	j	.sanity_check_call_wP_60_wP_ID6_for_out
.sanity_check_call_wP_60_wP_ID6_for_suite:
	rem	VirtualReg_19, VirtualReg_14, VirtualReg_17
	li	VirtualReg_21, 0
	xor	VirtualReg_20, VirtualReg_19, VirtualReg_21
	sltiu	VirtualReg_20, VirtualReg_20, 1
	bnez	VirtualReg_20, .sanity_check_call_wP_60_wP_ID13_if_true
	j	.sanity_check_call_wP_60_wP_ID6_for_incr
.sanity_check_call_wP_60_wP_ID13_if_true:
	addi	VirtualReg_22, VirtualReg_14, 1
	mv	VirtualReg_24, VirtualReg_22
	li	VirtualReg_1490, 0
	mv	VirtualReg_25, VirtualReg_1490
	j	.sanity_check_call_wP_60_wP_ID6_for_out
.sanity_check_call_wP_60_wP_ID6_for_incr:
	addi	VirtualReg_23, VirtualReg_17, 1
	mv	VirtualReg_17, VirtualReg_23
	j	.sanity_check_call_wP_60_wP_ID6_for_condition
.sanity_check_call_wP_60_wP_ID6_for_out_mid:
	li	VirtualReg_1491, 0
	mv	VirtualReg_33, VirtualReg_1491
	j	.sanity_check_call_wP_60_wP_ID19_AndAnd_out
.sanity_check_call_wP_60_wP_ID6_for_out:
	li	VirtualReg_27, 0
	slt	VirtualReg_26, VirtualReg_27, VirtualReg_24
	bnez	VirtualReg_26, .sanity_check_call_wP_60_wP_ID19_AndAnd_true
	j	.sanity_check_call_wP_60_wP_ID6_for_out_mid
.sanity_check_call_wP_60_wP_ID19_AndAnd_true:
	add	VirtualReg_28, VirtualReg_24, VirtualReg_25
	li	VirtualReg_30, 9
	rem	VirtualReg_29, VirtualReg_28, VirtualReg_30
	li	VirtualReg_32, 0
	xor	VirtualReg_31, VirtualReg_29, VirtualReg_32
	sltiu	VirtualReg_31, VirtualReg_31, 1
	mv	VirtualReg_33, VirtualReg_31
	j	.sanity_check_call_wP_60_wP_ID19_AndAnd_out
.sanity_check_call_wP_60_wP_ID19_AndAnd_out:
	bnez	VirtualReg_33, .sanity_check_call_wP_60_wP_ID4_for_out
	j	.sanity_check_call_wP_60_wP_ID25_if_out
.sanity_check_call_wP_60_wP_ID25_if_out:
	lw	VirtualReg_34, fuckLLVM_N
	add	VirtualReg_35, VirtualReg_34, VirtualReg_25
	la	VirtualReg_36, fuckLLVM_N
	sw	VirtualReg_35, 0(VirtualReg_36)
	add	VirtualReg_37, VirtualReg_24, VirtualReg_25
	addi	VirtualReg_38, VirtualReg_37, 1
	mv	VirtualReg_14, VirtualReg_38
	j	.sanity_check_call_wP_60_wP_ID4_for_suite
.sanity_check_call_wP_60_wP_ID4_for_out:
	lw	VirtualReg_39, fuckLLVM_N
	lw	VirtualReg_40, fuckLLVM_w
	addi	VirtualReg_41, VirtualReg_40, 1
	la	VirtualReg_42, fuckLLVM_w
	sw	VirtualReg_41, 0(VirtualReg_42)
	lw	VirtualReg_43, fuckLLVM_w
	addi	VirtualReg_44, VirtualReg_43, 1
	la	VirtualReg_45, fuckLLVM_w
	sw	VirtualReg_44, 0(VirtualReg_45)
	lw	VirtualReg_46, fuckLLVM_w
	lw	VirtualReg_47, fuckLLVM_w
	addi	VirtualReg_48, VirtualReg_47, 1
	la	VirtualReg_49, fuckLLVM_w
	sw	VirtualReg_48, 0(VirtualReg_49)
	lw	VirtualReg_50, fuckLLVM_w
	addi	VirtualReg_51, VirtualReg_50, 1
	la	VirtualReg_52, fuckLLVM_w
	sw	VirtualReg_51, 0(VirtualReg_52)
	lw	VirtualReg_53, fuckLLVM_w
	lw	VirtualReg_54, fuckLLVM_w
	addi	VirtualReg_55, VirtualReg_54, 1
	la	VirtualReg_56, fuckLLVM_w
	sw	VirtualReg_55, 0(VirtualReg_56)
	lw	VirtualReg_57, fuckLLVM_w
	addi	VirtualReg_58, VirtualReg_57, 1
	la	VirtualReg_59, fuckLLVM_w
	sw	VirtualReg_58, 0(VirtualReg_59)
	lw	VirtualReg_60, fuckLLVM_w
	lw	VirtualReg_61, fuckLLVM_w
	addi	VirtualReg_62, VirtualReg_61, 1
	la	VirtualReg_63, fuckLLVM_w
	sw	VirtualReg_62, 0(VirtualReg_63)
	lw	VirtualReg_64, fuckLLVM_w
	addi	VirtualReg_65, VirtualReg_64, 1
	la	VirtualReg_66, fuckLLVM_w
	sw	VirtualReg_65, 0(VirtualReg_66)
	lw	VirtualReg_67, fuckLLVM_w
	lw	VirtualReg_68, fuckLLVM_w
	addi	VirtualReg_69, VirtualReg_68, 1
	la	VirtualReg_70, fuckLLVM_w
	sw	VirtualReg_69, 0(VirtualReg_70)
	lw	VirtualReg_71, fuckLLVM_w
	addi	VirtualReg_72, VirtualReg_71, 1
	la	VirtualReg_73, fuckLLVM_w
	sw	VirtualReg_72, 0(VirtualReg_73)
	lw	VirtualReg_74, fuckLLVM_w
	lw	VirtualReg_75, fuckLLVM_w
	addi	VirtualReg_76, VirtualReg_75, 1
	la	VirtualReg_77, fuckLLVM_w
	sw	VirtualReg_76, 0(VirtualReg_77)
	lw	VirtualReg_78, fuckLLVM_w
	addi	VirtualReg_79, VirtualReg_78, 1
	la	VirtualReg_80, fuckLLVM_w
	sw	VirtualReg_79, 0(VirtualReg_80)
	lw	VirtualReg_81, fuckLLVM_w
	lw	VirtualReg_82, fuckLLVM_w
	addi	VirtualReg_83, VirtualReg_82, 1
	la	VirtualReg_84, fuckLLVM_w
	sw	VirtualReg_83, 0(VirtualReg_84)
	lw	VirtualReg_85, fuckLLVM_w
	addi	VirtualReg_86, VirtualReg_85, 1
	la	VirtualReg_87, fuckLLVM_w
	sw	VirtualReg_86, 0(VirtualReg_87)
	lw	VirtualReg_88, fuckLLVM_w
	lw	VirtualReg_89, fuckLLVM_w
	addi	VirtualReg_90, VirtualReg_89, 1
	la	VirtualReg_91, fuckLLVM_w
	sw	VirtualReg_90, 0(VirtualReg_91)
	lw	VirtualReg_92, fuckLLVM_w
	addi	VirtualReg_93, VirtualReg_92, 1
	la	VirtualReg_94, fuckLLVM_w
	sw	VirtualReg_93, 0(VirtualReg_94)
	lw	VirtualReg_95, fuckLLVM_w
	lw	VirtualReg_96, fuckLLVM_w
	addi	VirtualReg_97, VirtualReg_96, 1
	la	VirtualReg_98, fuckLLVM_w
	sw	VirtualReg_97, 0(VirtualReg_98)
	lw	VirtualReg_99, fuckLLVM_w
	addi	VirtualReg_100, VirtualReg_99, 1
	la	VirtualReg_101, fuckLLVM_w
	sw	VirtualReg_100, 0(VirtualReg_101)
	lw	VirtualReg_102, fuckLLVM_w
	lw	VirtualReg_103, fuckLLVM_w
	addi	VirtualReg_104, VirtualReg_103, 1
	la	VirtualReg_105, fuckLLVM_w
	sw	VirtualReg_104, 0(VirtualReg_105)
	lw	VirtualReg_106, fuckLLVM_w
	addi	VirtualReg_107, VirtualReg_106, 1
	la	VirtualReg_108, fuckLLVM_w
	sw	VirtualReg_107, 0(VirtualReg_108)
	lw	VirtualReg_109, fuckLLVM_w
	lw	VirtualReg_110, fuckLLVM_w
	addi	VirtualReg_111, VirtualReg_110, 1
	la	VirtualReg_112, fuckLLVM_w
	sw	VirtualReg_111, 0(VirtualReg_112)
	lw	VirtualReg_113, fuckLLVM_w
	addi	VirtualReg_114, VirtualReg_113, 1
	la	VirtualReg_115, fuckLLVM_w
	sw	VirtualReg_114, 0(VirtualReg_115)
	lw	VirtualReg_116, fuckLLVM_w
	lw	VirtualReg_117, fuckLLVM_w
	addi	VirtualReg_118, VirtualReg_117, 1
	la	VirtualReg_119, fuckLLVM_w
	sw	VirtualReg_118, 0(VirtualReg_119)
	lw	VirtualReg_120, fuckLLVM_w
	addi	VirtualReg_121, VirtualReg_120, 1
	la	VirtualReg_122, fuckLLVM_w
	sw	VirtualReg_121, 0(VirtualReg_122)
	lw	VirtualReg_123, fuckLLVM_w
	lw	VirtualReg_124, fuckLLVM_w
	addi	VirtualReg_125, VirtualReg_124, 1
	la	VirtualReg_126, fuckLLVM_w
	sw	VirtualReg_125, 0(VirtualReg_126)
	lw	VirtualReg_127, fuckLLVM_w
	addi	VirtualReg_128, VirtualReg_127, 1
	la	VirtualReg_129, fuckLLVM_w
	sw	VirtualReg_128, 0(VirtualReg_129)
	lw	VirtualReg_130, fuckLLVM_w
	lw	VirtualReg_131, fuckLLVM_w
	addi	VirtualReg_132, VirtualReg_131, 1
	la	VirtualReg_133, fuckLLVM_w
	sw	VirtualReg_132, 0(VirtualReg_133)
	lw	VirtualReg_134, fuckLLVM_w
	addi	VirtualReg_135, VirtualReg_134, 1
	la	VirtualReg_136, fuckLLVM_w
	sw	VirtualReg_135, 0(VirtualReg_136)
	lw	VirtualReg_137, fuckLLVM_w
	lw	VirtualReg_138, fuckLLVM_w
	addi	VirtualReg_139, VirtualReg_138, 1
	la	VirtualReg_140, fuckLLVM_w
	sw	VirtualReg_139, 0(VirtualReg_140)
	lw	VirtualReg_141, fuckLLVM_w
	addi	VirtualReg_142, VirtualReg_141, 1
	la	VirtualReg_143, fuckLLVM_w
	sw	VirtualReg_142, 0(VirtualReg_143)
	lw	VirtualReg_144, fuckLLVM_w
	lw	VirtualReg_145, fuckLLVM_w
	addi	VirtualReg_146, VirtualReg_145, 1
	la	VirtualReg_147, fuckLLVM_w
	sw	VirtualReg_146, 0(VirtualReg_147)
	lw	VirtualReg_148, fuckLLVM_w
	addi	VirtualReg_149, VirtualReg_148, 1
	la	VirtualReg_150, fuckLLVM_w
	sw	VirtualReg_149, 0(VirtualReg_150)
	lw	VirtualReg_151, fuckLLVM_w
	lw	VirtualReg_152, fuckLLVM_w
	addi	VirtualReg_153, VirtualReg_152, 1
	la	VirtualReg_154, fuckLLVM_w
	sw	VirtualReg_153, 0(VirtualReg_154)
	lw	VirtualReg_155, fuckLLVM_w
	addi	VirtualReg_156, VirtualReg_155, 1
	la	VirtualReg_157, fuckLLVM_w
	sw	VirtualReg_156, 0(VirtualReg_157)
	lw	VirtualReg_158, fuckLLVM_w
	lw	VirtualReg_159, fuckLLVM_w
	addi	VirtualReg_160, VirtualReg_159, 1
	la	VirtualReg_161, fuckLLVM_w
	sw	VirtualReg_160, 0(VirtualReg_161)
	lw	VirtualReg_162, fuckLLVM_w
	addi	VirtualReg_163, VirtualReg_162, 1
	la	VirtualReg_164, fuckLLVM_w
	sw	VirtualReg_163, 0(VirtualReg_164)
	lw	VirtualReg_165, fuckLLVM_w
	lw	VirtualReg_166, fuckLLVM_w
	addi	VirtualReg_167, VirtualReg_166, 1
	la	VirtualReg_168, fuckLLVM_w
	sw	VirtualReg_167, 0(VirtualReg_168)
	lw	VirtualReg_169, fuckLLVM_w
	addi	VirtualReg_170, VirtualReg_169, 1
	la	VirtualReg_171, fuckLLVM_w
	sw	VirtualReg_170, 0(VirtualReg_171)
	lw	VirtualReg_172, fuckLLVM_w
	lw	VirtualReg_173, fuckLLVM_w
	addi	VirtualReg_174, VirtualReg_173, 1
	la	VirtualReg_175, fuckLLVM_w
	sw	VirtualReg_174, 0(VirtualReg_175)
	lw	VirtualReg_176, fuckLLVM_w
	addi	VirtualReg_177, VirtualReg_176, 1
	la	VirtualReg_178, fuckLLVM_w
	sw	VirtualReg_177, 0(VirtualReg_178)
	lw	VirtualReg_179, fuckLLVM_w
	lw	VirtualReg_180, fuckLLVM_w
	addi	VirtualReg_181, VirtualReg_180, 1
	la	VirtualReg_182, fuckLLVM_w
	sw	VirtualReg_181, 0(VirtualReg_182)
	lw	VirtualReg_183, fuckLLVM_w
	addi	VirtualReg_184, VirtualReg_183, 1
	la	VirtualReg_185, fuckLLVM_w
	sw	VirtualReg_184, 0(VirtualReg_185)
	lw	VirtualReg_186, fuckLLVM_w
	lw	VirtualReg_187, fuckLLVM_w
	addi	VirtualReg_188, VirtualReg_187, 1
	la	VirtualReg_189, fuckLLVM_w
	sw	VirtualReg_188, 0(VirtualReg_189)
	lw	VirtualReg_190, fuckLLVM_w
	addi	VirtualReg_191, VirtualReg_190, 1
	la	VirtualReg_192, fuckLLVM_w
	sw	VirtualReg_191, 0(VirtualReg_192)
	lw	VirtualReg_193, fuckLLVM_w
	lw	VirtualReg_194, fuckLLVM_w
	addi	VirtualReg_195, VirtualReg_194, 1
	la	VirtualReg_196, fuckLLVM_w
	sw	VirtualReg_195, 0(VirtualReg_196)
	lw	VirtualReg_197, fuckLLVM_w
	addi	VirtualReg_198, VirtualReg_197, 1
	la	VirtualReg_199, fuckLLVM_w
	sw	VirtualReg_198, 0(VirtualReg_199)
	lw	VirtualReg_200, fuckLLVM_w
	lw	VirtualReg_201, fuckLLVM_w
	addi	VirtualReg_202, VirtualReg_201, 1
	la	VirtualReg_203, fuckLLVM_w
	sw	VirtualReg_202, 0(VirtualReg_203)
	lw	VirtualReg_204, fuckLLVM_w
	addi	VirtualReg_205, VirtualReg_204, 1
	la	VirtualReg_206, fuckLLVM_w
	sw	VirtualReg_205, 0(VirtualReg_206)
	lw	VirtualReg_207, fuckLLVM_w
	lw	VirtualReg_208, fuckLLVM_w
	addi	VirtualReg_209, VirtualReg_208, 1
	la	VirtualReg_210, fuckLLVM_w
	sw	VirtualReg_209, 0(VirtualReg_210)
	lw	VirtualReg_211, fuckLLVM_w
	addi	VirtualReg_212, VirtualReg_211, 1
	la	VirtualReg_213, fuckLLVM_w
	sw	VirtualReg_212, 0(VirtualReg_213)
	lw	VirtualReg_214, fuckLLVM_w
	lw	VirtualReg_215, fuckLLVM_w
	addi	VirtualReg_216, VirtualReg_215, 1
	la	VirtualReg_217, fuckLLVM_w
	sw	VirtualReg_216, 0(VirtualReg_217)
	lw	VirtualReg_218, fuckLLVM_w
	addi	VirtualReg_219, VirtualReg_218, 1
	la	VirtualReg_220, fuckLLVM_w
	sw	VirtualReg_219, 0(VirtualReg_220)
	lw	VirtualReg_221, fuckLLVM_w
	lw	VirtualReg_222, fuckLLVM_w
	addi	VirtualReg_223, VirtualReg_222, 1
	la	VirtualReg_224, fuckLLVM_w
	sw	VirtualReg_223, 0(VirtualReg_224)
	lw	VirtualReg_225, fuckLLVM_w
	addi	VirtualReg_226, VirtualReg_225, 1
	la	VirtualReg_227, fuckLLVM_w
	sw	VirtualReg_226, 0(VirtualReg_227)
	lw	VirtualReg_228, fuckLLVM_w
	lw	VirtualReg_229, fuckLLVM_w
	addi	VirtualReg_230, VirtualReg_229, 1
	la	VirtualReg_231, fuckLLVM_w
	sw	VirtualReg_230, 0(VirtualReg_231)
	lw	VirtualReg_232, fuckLLVM_w
	addi	VirtualReg_233, VirtualReg_232, 1
	la	VirtualReg_234, fuckLLVM_w
	sw	VirtualReg_233, 0(VirtualReg_234)
	lw	VirtualReg_235, fuckLLVM_w
	lw	VirtualReg_236, fuckLLVM_w
	addi	VirtualReg_237, VirtualReg_236, 1
	la	VirtualReg_238, fuckLLVM_w
	sw	VirtualReg_237, 0(VirtualReg_238)
	lw	VirtualReg_239, fuckLLVM_w
	addi	VirtualReg_240, VirtualReg_239, 1
	la	VirtualReg_241, fuckLLVM_w
	sw	VirtualReg_240, 0(VirtualReg_241)
	lw	VirtualReg_242, fuckLLVM_w
	lw	VirtualReg_243, fuckLLVM_w
	addi	VirtualReg_244, VirtualReg_243, 1
	la	VirtualReg_245, fuckLLVM_w
	sw	VirtualReg_244, 0(VirtualReg_245)
	lw	VirtualReg_246, fuckLLVM_w
	addi	VirtualReg_247, VirtualReg_246, 1
	la	VirtualReg_248, fuckLLVM_w
	sw	VirtualReg_247, 0(VirtualReg_248)
	lw	VirtualReg_249, fuckLLVM_w
	lw	VirtualReg_250, fuckLLVM_w
	addi	VirtualReg_251, VirtualReg_250, 1
	la	VirtualReg_252, fuckLLVM_w
	sw	VirtualReg_251, 0(VirtualReg_252)
	lw	VirtualReg_253, fuckLLVM_w
	addi	VirtualReg_254, VirtualReg_253, 1
	la	VirtualReg_255, fuckLLVM_w
	sw	VirtualReg_254, 0(VirtualReg_255)
	lw	VirtualReg_256, fuckLLVM_w
	lw	VirtualReg_257, fuckLLVM_w
	addi	VirtualReg_258, VirtualReg_257, 1
	la	VirtualReg_259, fuckLLVM_w
	sw	VirtualReg_258, 0(VirtualReg_259)
	lw	VirtualReg_260, fuckLLVM_w
	addi	VirtualReg_261, VirtualReg_260, 1
	la	VirtualReg_262, fuckLLVM_w
	sw	VirtualReg_261, 0(VirtualReg_262)
	lw	VirtualReg_263, fuckLLVM_w
	lw	VirtualReg_264, fuckLLVM_w
	addi	VirtualReg_265, VirtualReg_264, 1
	la	VirtualReg_266, fuckLLVM_w
	sw	VirtualReg_265, 0(VirtualReg_266)
	lw	VirtualReg_267, fuckLLVM_w
	addi	VirtualReg_268, VirtualReg_267, 1
	la	VirtualReg_269, fuckLLVM_w
	sw	VirtualReg_268, 0(VirtualReg_269)
	lw	VirtualReg_270, fuckLLVM_w
	lw	VirtualReg_271, fuckLLVM_w
	addi	VirtualReg_272, VirtualReg_271, 1
	la	VirtualReg_273, fuckLLVM_w
	sw	VirtualReg_272, 0(VirtualReg_273)
	lw	VirtualReg_274, fuckLLVM_w
	addi	VirtualReg_275, VirtualReg_274, 1
	la	VirtualReg_276, fuckLLVM_w
	sw	VirtualReg_275, 0(VirtualReg_276)
	lw	VirtualReg_277, fuckLLVM_w
	lw	VirtualReg_278, fuckLLVM_w
	addi	VirtualReg_279, VirtualReg_278, 1
	la	VirtualReg_280, fuckLLVM_w
	sw	VirtualReg_279, 0(VirtualReg_280)
	lw	VirtualReg_281, fuckLLVM_w
	addi	VirtualReg_282, VirtualReg_281, 1
	la	VirtualReg_283, fuckLLVM_w
	sw	VirtualReg_282, 0(VirtualReg_283)
	lw	VirtualReg_284, fuckLLVM_w
	lw	VirtualReg_285, fuckLLVM_w
	addi	VirtualReg_286, VirtualReg_285, 1
	la	VirtualReg_287, fuckLLVM_w
	sw	VirtualReg_286, 0(VirtualReg_287)
	lw	VirtualReg_288, fuckLLVM_w
	addi	VirtualReg_289, VirtualReg_288, 1
	la	VirtualReg_290, fuckLLVM_w
	sw	VirtualReg_289, 0(VirtualReg_290)
	lw	VirtualReg_291, fuckLLVM_w
	lw	VirtualReg_292, fuckLLVM_w
	addi	VirtualReg_293, VirtualReg_292, 1
	la	VirtualReg_294, fuckLLVM_w
	sw	VirtualReg_293, 0(VirtualReg_294)
	lw	VirtualReg_295, fuckLLVM_w
	addi	VirtualReg_296, VirtualReg_295, 1
	la	VirtualReg_297, fuckLLVM_w
	sw	VirtualReg_296, 0(VirtualReg_297)
	lw	VirtualReg_298, fuckLLVM_w
	lw	VirtualReg_299, fuckLLVM_w
	addi	VirtualReg_300, VirtualReg_299, 1
	la	VirtualReg_301, fuckLLVM_w
	sw	VirtualReg_300, 0(VirtualReg_301)
	lw	VirtualReg_302, fuckLLVM_w
	addi	VirtualReg_303, VirtualReg_302, 1
	la	VirtualReg_304, fuckLLVM_w
	sw	VirtualReg_303, 0(VirtualReg_304)
	lw	VirtualReg_305, fuckLLVM_w
	lw	VirtualReg_306, fuckLLVM_w
	addi	VirtualReg_307, VirtualReg_306, 1
	la	VirtualReg_308, fuckLLVM_w
	sw	VirtualReg_307, 0(VirtualReg_308)
	lw	VirtualReg_309, fuckLLVM_w
	addi	VirtualReg_310, VirtualReg_309, 1
	la	VirtualReg_311, fuckLLVM_w
	sw	VirtualReg_310, 0(VirtualReg_311)
	lw	VirtualReg_312, fuckLLVM_w
	lw	VirtualReg_313, fuckLLVM_w
	addi	VirtualReg_314, VirtualReg_313, 1
	la	VirtualReg_315, fuckLLVM_w
	sw	VirtualReg_314, 0(VirtualReg_315)
	lw	VirtualReg_316, fuckLLVM_w
	addi	VirtualReg_317, VirtualReg_316, 1
	la	VirtualReg_318, fuckLLVM_w
	sw	VirtualReg_317, 0(VirtualReg_318)
	lw	VirtualReg_319, fuckLLVM_w
	lw	VirtualReg_320, fuckLLVM_w
	addi	VirtualReg_321, VirtualReg_320, 1
	la	VirtualReg_322, fuckLLVM_w
	sw	VirtualReg_321, 0(VirtualReg_322)
	lw	VirtualReg_323, fuckLLVM_w
	addi	VirtualReg_324, VirtualReg_323, 1
	la	VirtualReg_325, fuckLLVM_w
	sw	VirtualReg_324, 0(VirtualReg_325)
	lw	VirtualReg_326, fuckLLVM_w
	lw	VirtualReg_327, fuckLLVM_w
	addi	VirtualReg_328, VirtualReg_327, 1
	la	VirtualReg_329, fuckLLVM_w
	sw	VirtualReg_328, 0(VirtualReg_329)
	lw	VirtualReg_330, fuckLLVM_w
	addi	VirtualReg_331, VirtualReg_330, 1
	la	VirtualReg_332, fuckLLVM_w
	sw	VirtualReg_331, 0(VirtualReg_332)
	lw	VirtualReg_333, fuckLLVM_w
	lw	VirtualReg_334, fuckLLVM_w
	addi	VirtualReg_335, VirtualReg_334, 1
	la	VirtualReg_336, fuckLLVM_w
	sw	VirtualReg_335, 0(VirtualReg_336)
	lw	VirtualReg_337, fuckLLVM_w
	addi	VirtualReg_338, VirtualReg_337, 1
	la	VirtualReg_339, fuckLLVM_w
	sw	VirtualReg_338, 0(VirtualReg_339)
	lw	VirtualReg_340, fuckLLVM_w
	lw	VirtualReg_341, fuckLLVM_w
	addi	VirtualReg_342, VirtualReg_341, 1
	la	VirtualReg_343, fuckLLVM_w
	sw	VirtualReg_342, 0(VirtualReg_343)
	lw	VirtualReg_344, fuckLLVM_w
	addi	VirtualReg_345, VirtualReg_344, 1
	la	VirtualReg_346, fuckLLVM_w
	sw	VirtualReg_345, 0(VirtualReg_346)
	lw	VirtualReg_347, fuckLLVM_w
	lw	VirtualReg_348, fuckLLVM_w
	addi	VirtualReg_349, VirtualReg_348, 1
	la	VirtualReg_350, fuckLLVM_w
	sw	VirtualReg_349, 0(VirtualReg_350)
	lw	VirtualReg_351, fuckLLVM_w
	addi	VirtualReg_352, VirtualReg_351, 1
	la	VirtualReg_353, fuckLLVM_w
	sw	VirtualReg_352, 0(VirtualReg_353)
	lw	VirtualReg_354, fuckLLVM_w
	lw	VirtualReg_355, fuckLLVM_w
	addi	VirtualReg_356, VirtualReg_355, 1
	la	VirtualReg_357, fuckLLVM_w
	sw	VirtualReg_356, 0(VirtualReg_357)
	lw	VirtualReg_358, fuckLLVM_w
	addi	VirtualReg_359, VirtualReg_358, 1
	la	VirtualReg_360, fuckLLVM_w
	sw	VirtualReg_359, 0(VirtualReg_360)
	lw	VirtualReg_361, fuckLLVM_w
	lw	VirtualReg_362, fuckLLVM_w
	addi	VirtualReg_363, VirtualReg_362, 1
	la	VirtualReg_364, fuckLLVM_w
	sw	VirtualReg_363, 0(VirtualReg_364)
	lw	VirtualReg_365, fuckLLVM_w
	addi	VirtualReg_366, VirtualReg_365, 1
	la	VirtualReg_367, fuckLLVM_w
	sw	VirtualReg_366, 0(VirtualReg_367)
	lw	VirtualReg_368, fuckLLVM_w
	lw	VirtualReg_369, fuckLLVM_w
	addi	VirtualReg_370, VirtualReg_369, 1
	la	VirtualReg_371, fuckLLVM_w
	sw	VirtualReg_370, 0(VirtualReg_371)
	lw	VirtualReg_372, fuckLLVM_w
	addi	VirtualReg_373, VirtualReg_372, 1
	la	VirtualReg_374, fuckLLVM_w
	sw	VirtualReg_373, 0(VirtualReg_374)
	lw	VirtualReg_375, fuckLLVM_w
	lw	VirtualReg_376, fuckLLVM_w
	addi	VirtualReg_377, VirtualReg_376, 1
	la	VirtualReg_378, fuckLLVM_w
	sw	VirtualReg_377, 0(VirtualReg_378)
	lw	VirtualReg_379, fuckLLVM_w
	addi	VirtualReg_380, VirtualReg_379, 1
	la	VirtualReg_381, fuckLLVM_w
	sw	VirtualReg_380, 0(VirtualReg_381)
	lw	VirtualReg_382, fuckLLVM_w
	lw	VirtualReg_383, fuckLLVM_w
	addi	VirtualReg_384, VirtualReg_383, 1
	la	VirtualReg_385, fuckLLVM_w
	sw	VirtualReg_384, 0(VirtualReg_385)
	lw	VirtualReg_386, fuckLLVM_w
	addi	VirtualReg_387, VirtualReg_386, 1
	la	VirtualReg_388, fuckLLVM_w
	sw	VirtualReg_387, 0(VirtualReg_388)
	lw	VirtualReg_389, fuckLLVM_w
	lw	VirtualReg_390, fuckLLVM_w
	addi	VirtualReg_391, VirtualReg_390, 1
	la	VirtualReg_392, fuckLLVM_w
	sw	VirtualReg_391, 0(VirtualReg_392)
	lw	VirtualReg_393, fuckLLVM_w
	addi	VirtualReg_394, VirtualReg_393, 1
	la	VirtualReg_395, fuckLLVM_w
	sw	VirtualReg_394, 0(VirtualReg_395)
	lw	VirtualReg_396, fuckLLVM_w
	lw	VirtualReg_397, fuckLLVM_w
	addi	VirtualReg_398, VirtualReg_397, 1
	la	VirtualReg_399, fuckLLVM_w
	sw	VirtualReg_398, 0(VirtualReg_399)
	lw	VirtualReg_400, fuckLLVM_w
	addi	VirtualReg_401, VirtualReg_400, 1
	la	VirtualReg_402, fuckLLVM_w
	sw	VirtualReg_401, 0(VirtualReg_402)
	lw	VirtualReg_403, fuckLLVM_w
	lw	VirtualReg_404, fuckLLVM_w
	addi	VirtualReg_405, VirtualReg_404, 1
	la	VirtualReg_406, fuckLLVM_w
	sw	VirtualReg_405, 0(VirtualReg_406)
	lw	VirtualReg_407, fuckLLVM_w
	addi	VirtualReg_408, VirtualReg_407, 1
	la	VirtualReg_409, fuckLLVM_w
	sw	VirtualReg_408, 0(VirtualReg_409)
	lw	VirtualReg_410, fuckLLVM_w
	lw	VirtualReg_411, fuckLLVM_w
	addi	VirtualReg_412, VirtualReg_411, 1
	la	VirtualReg_413, fuckLLVM_w
	sw	VirtualReg_412, 0(VirtualReg_413)
	lw	VirtualReg_414, fuckLLVM_w
	addi	VirtualReg_415, VirtualReg_414, 1
	la	VirtualReg_416, fuckLLVM_w
	sw	VirtualReg_415, 0(VirtualReg_416)
	lw	VirtualReg_417, fuckLLVM_w
	lw	VirtualReg_418, fuckLLVM_w
	addi	VirtualReg_419, VirtualReg_418, 1
	la	VirtualReg_420, fuckLLVM_w
	sw	VirtualReg_419, 0(VirtualReg_420)
	lw	VirtualReg_421, fuckLLVM_w
	addi	VirtualReg_422, VirtualReg_421, 1
	la	VirtualReg_423, fuckLLVM_w
	sw	VirtualReg_422, 0(VirtualReg_423)
	lw	VirtualReg_424, fuckLLVM_w
	lw	VirtualReg_425, fuckLLVM_w
	addi	VirtualReg_426, VirtualReg_425, 1
	la	VirtualReg_427, fuckLLVM_w
	sw	VirtualReg_426, 0(VirtualReg_427)
	lw	VirtualReg_428, fuckLLVM_w
	addi	VirtualReg_429, VirtualReg_428, 1
	la	VirtualReg_430, fuckLLVM_w
	sw	VirtualReg_429, 0(VirtualReg_430)
	lw	VirtualReg_431, fuckLLVM_w
	j	.sanity_check_call_wP_60_wP_call_wpppp_53_out
.sanity_check_call_wP_60_wP_call_wpppp_53_out:
	add	VirtualReg_432, VirtualReg_39, VirtualReg_431
	li	VirtualReg_434, 2
	rem	VirtualReg_433, VirtualReg_432, VirtualReg_434
	li	VirtualReg_436, 0
	xor	VirtualReg_435, VirtualReg_433, VirtualReg_436
	sltiu	VirtualReg_435, VirtualReg_435, 1
	bnez	VirtualReg_435, .sanity_check_call_wP_60_wP_ID38_if_true
	j	.sanity_check_call_wP_60_wP_ID38_if_out
.sanity_check_call_wP_60_wP_ID38_if_true:
	lw	VirtualReg_437, fuckLLVM_N
	mv	a0, VirtualReg_437
	call	add2048
	mv	VirtualReg_438, a0
	mv	a0, VirtualReg_438
	call	add2048
	mv	VirtualReg_439, a0
	mv	a0, VirtualReg_439
	call	add2048
	mv	VirtualReg_440, a0
	mv	a0, VirtualReg_440
	call	add2048
	mv	VirtualReg_441, a0
	mv	a0, VirtualReg_441
	call	add2048
	mv	VirtualReg_442, a0
	mv	a0, VirtualReg_442
	call	add2048
	mv	VirtualReg_443, a0
	mv	a0, VirtualReg_443
	call	add2048
	mv	VirtualReg_444, a0
	mv	a0, VirtualReg_444
	call	add2048
	mv	VirtualReg_445, a0
	mv	a0, VirtualReg_445
	call	add2048
	mv	VirtualReg_446, a0
	mv	a0, VirtualReg_446
	call	add2048
	mv	VirtualReg_447, a0
	mv	a0, VirtualReg_447
	call	add2048
	mv	VirtualReg_448, a0
	mv	a0, VirtualReg_448
	call	add2048
	mv	VirtualReg_449, a0
	mv	a0, VirtualReg_449
	call	add2048
	mv	VirtualReg_450, a0
	mv	a0, VirtualReg_450
	call	add2048
	mv	VirtualReg_451, a0
	mv	a0, VirtualReg_451
	call	add2048
	mv	VirtualReg_452, a0
	mv	a0, VirtualReg_452
	call	add2048
	mv	VirtualReg_453, a0
	mv	a0, VirtualReg_453
	call	add2048
	mv	VirtualReg_454, a0
	mv	a0, VirtualReg_454
	call	add2048
	mv	VirtualReg_455, a0
	mv	a0, VirtualReg_455
	call	add2048
	mv	VirtualReg_456, a0
	mv	a0, VirtualReg_456
	call	add2048
	mv	VirtualReg_457, a0
	mv	a0, VirtualReg_457
	call	add2048
	mv	VirtualReg_458, a0
	mv	a0, VirtualReg_458
	call	add2048
	mv	VirtualReg_459, a0
	mv	a0, VirtualReg_459
	call	add2048
	mv	VirtualReg_460, a0
	mv	a0, VirtualReg_460
	call	add2048
	mv	VirtualReg_461, a0
	mv	a0, VirtualReg_461
	call	add2048
	mv	VirtualReg_462, a0
	mv	a0, VirtualReg_462
	call	add2048
	mv	VirtualReg_463, a0
	mv	a0, VirtualReg_463
	call	add2048
	mv	VirtualReg_464, a0
	mv	a0, VirtualReg_464
	call	add2048
	mv	VirtualReg_465, a0
	mv	a0, VirtualReg_465
	call	add2048
	mv	VirtualReg_466, a0
	mv	a0, VirtualReg_466
	call	add2048
	mv	VirtualReg_467, a0
	mv	a0, VirtualReg_467
	call	add2048
	mv	VirtualReg_468, a0
	mv	a0, VirtualReg_468
	call	add2048
	mv	VirtualReg_469, a0
	mv	a0, VirtualReg_469
	call	add2048
	mv	VirtualReg_470, a0
	mv	a0, VirtualReg_470
	call	add2048
	mv	VirtualReg_471, a0
	mv	a0, VirtualReg_471
	call	add2048
	mv	VirtualReg_472, a0
	mv	a0, VirtualReg_472
	call	add2048
	mv	VirtualReg_473, a0
	mv	a0, VirtualReg_473
	call	add2048
	mv	VirtualReg_474, a0
	mv	a0, VirtualReg_474
	call	add2048
	mv	VirtualReg_475, a0
	mv	a0, VirtualReg_475
	call	add2048
	mv	VirtualReg_476, a0
	mv	a0, VirtualReg_476
	call	add2048
	mv	VirtualReg_477, a0
	mv	a0, VirtualReg_477
	call	add2048
	mv	VirtualReg_478, a0
	mv	a0, VirtualReg_478
	call	add2048
	mv	VirtualReg_479, a0
	mv	a0, VirtualReg_479
	call	add2048
	mv	VirtualReg_480, a0
	mv	a0, VirtualReg_480
	call	add2048
	mv	VirtualReg_481, a0
	mv	a0, VirtualReg_481
	call	add2048
	mv	VirtualReg_482, a0
	mv	a0, VirtualReg_482
	call	add2048
	mv	VirtualReg_483, a0
	mv	a0, VirtualReg_483
	call	add2048
	mv	VirtualReg_484, a0
	mv	a0, VirtualReg_484
	call	add2048
	mv	VirtualReg_485, a0
	mv	a0, VirtualReg_485
	call	add2048
	mv	VirtualReg_486, a0
	mv	a0, VirtualReg_486
	call	add2048
	mv	VirtualReg_487, a0
	mv	a0, VirtualReg_487
	call	add2048
	mv	VirtualReg_488, a0
	mv	a0, VirtualReg_488
	call	add2048
	mv	VirtualReg_489, a0
	mv	a0, VirtualReg_489
	call	add2048
	mv	VirtualReg_490, a0
	mv	a0, VirtualReg_490
	call	add2048
	mv	VirtualReg_491, a0
	mv	a0, VirtualReg_491
	call	add2048
	mv	VirtualReg_492, a0
	mv	a0, VirtualReg_492
	call	add2048
	mv	VirtualReg_493, a0
	mv	a0, VirtualReg_493
	call	add2048
	mv	VirtualReg_494, a0
	mv	a0, VirtualReg_494
	call	add2048
	mv	VirtualReg_495, a0
	mv	a0, VirtualReg_495
	call	add2048
	mv	VirtualReg_496, a0
	mv	a0, VirtualReg_496
	call	add2048
	mv	VirtualReg_497, a0
	mv	a0, VirtualReg_497
	call	add2048
	mv	VirtualReg_498, a0
	mv	a0, VirtualReg_498
	call	add2048
	mv	VirtualReg_499, a0
	mv	a0, VirtualReg_499
	call	add2048
	mv	VirtualReg_500, a0
	mv	a0, VirtualReg_500
	call	add2048
	mv	VirtualReg_501, a0
	mv	a0, VirtualReg_501
	call	add2048
	mv	VirtualReg_502, a0
	mv	a0, VirtualReg_502
	call	add2048
	mv	VirtualReg_503, a0
	mv	a0, VirtualReg_503
	call	add2048
	mv	VirtualReg_504, a0
	mv	a0, VirtualReg_504
	call	add2048
	mv	VirtualReg_505, a0
	mv	a0, VirtualReg_505
	call	add2048
	mv	VirtualReg_506, a0
	mv	a0, VirtualReg_506
	call	add2048
	mv	VirtualReg_507, a0
	mv	a0, VirtualReg_507
	call	add2048
	mv	VirtualReg_508, a0
	mv	a0, VirtualReg_508
	call	add2048
	mv	VirtualReg_509, a0
	mv	a0, VirtualReg_509
	call	add2048
	mv	VirtualReg_510, a0
	mv	a0, VirtualReg_510
	call	add2048
	mv	VirtualReg_511, a0
	mv	a0, VirtualReg_511
	call	add2048
	mv	VirtualReg_512, a0
	mv	a0, VirtualReg_512
	call	add2048
	mv	VirtualReg_513, a0
	mv	a0, VirtualReg_513
	call	add2048
	mv	VirtualReg_514, a0
	mv	a0, VirtualReg_514
	call	add2048
	mv	VirtualReg_515, a0
	mv	a0, VirtualReg_515
	call	add2048
	mv	VirtualReg_516, a0
	mv	a0, VirtualReg_516
	call	add2048
	mv	VirtualReg_517, a0
	mv	a0, VirtualReg_517
	call	add2048
	mv	VirtualReg_518, a0
	mv	a0, VirtualReg_518
	call	add2048
	mv	VirtualReg_519, a0
	mv	a0, VirtualReg_519
	call	add2048
	mv	VirtualReg_520, a0
	mv	a0, VirtualReg_520
	call	add2048
	mv	VirtualReg_521, a0
	mv	a0, VirtualReg_521
	call	add2048
	mv	VirtualReg_522, a0
	mv	a0, VirtualReg_522
	call	add2048
	mv	VirtualReg_523, a0
	mv	a0, VirtualReg_523
	call	add2048
	mv	VirtualReg_524, a0
	mv	a0, VirtualReg_524
	call	add2048
	mv	VirtualReg_525, a0
	mv	a0, VirtualReg_525
	call	add2048
	mv	VirtualReg_526, a0
	mv	a0, VirtualReg_526
	call	add2048
	mv	VirtualReg_527, a0
	mv	a0, VirtualReg_527
	call	add2048
	mv	VirtualReg_528, a0
	mv	a0, VirtualReg_528
	call	add2048
	mv	VirtualReg_529, a0
	mv	a0, VirtualReg_529
	call	add2048
	mv	VirtualReg_530, a0
	mv	a0, VirtualReg_530
	call	add2048
	mv	VirtualReg_531, a0
	mv	a0, VirtualReg_531
	call	add2048
	mv	VirtualReg_532, a0
	mv	a0, VirtualReg_532
	call	add2048
	mv	VirtualReg_533, a0
	mv	a0, VirtualReg_533
	call	add2048
	mv	VirtualReg_534, a0
	mv	a0, VirtualReg_534
	call	add2048
	mv	VirtualReg_535, a0
	mv	a0, VirtualReg_535
	call	add2048
	mv	VirtualReg_536, a0
	mv	a0, VirtualReg_536
	call	add2048
	mv	VirtualReg_537, a0
	mv	a0, VirtualReg_537
	call	add2048
	mv	VirtualReg_538, a0
	mv	a0, VirtualReg_538
	call	add2048
	mv	VirtualReg_539, a0
	mv	a0, VirtualReg_539
	call	add2048
	mv	VirtualReg_540, a0
	mv	a0, VirtualReg_540
	call	add2048
	mv	VirtualReg_541, a0
	mv	a0, VirtualReg_541
	call	add2048
	mv	VirtualReg_542, a0
	mv	a0, VirtualReg_542
	call	add2048
	mv	VirtualReg_543, a0
	mv	a0, VirtualReg_543
	call	add2048
	mv	VirtualReg_544, a0
	mv	a0, VirtualReg_544
	call	add2048
	mv	VirtualReg_545, a0
	mv	a0, VirtualReg_545
	call	add2048
	mv	VirtualReg_546, a0
	mv	a0, VirtualReg_546
	call	add2048
	mv	VirtualReg_547, a0
	mv	a0, VirtualReg_547
	call	add2048
	mv	VirtualReg_548, a0
	mv	a0, VirtualReg_548
	call	add2048
	mv	VirtualReg_549, a0
	mv	a0, VirtualReg_549
	call	add2048
	mv	VirtualReg_550, a0
	mv	a0, VirtualReg_550
	call	add2048
	mv	VirtualReg_551, a0
	mv	a0, VirtualReg_551
	call	add2048
	mv	VirtualReg_552, a0
	mv	a0, VirtualReg_552
	call	add2048
	mv	VirtualReg_553, a0
	mv	a0, VirtualReg_553
	call	add2048
	mv	VirtualReg_554, a0
	mv	a0, VirtualReg_554
	call	add2048
	mv	VirtualReg_555, a0
	mv	a0, VirtualReg_555
	call	add2048
	mv	VirtualReg_556, a0
	mv	a0, VirtualReg_556
	call	add2048
	mv	VirtualReg_557, a0
	mv	a0, VirtualReg_557
	call	add2048
	mv	VirtualReg_558, a0
	mv	a0, VirtualReg_558
	call	add2048
	mv	VirtualReg_559, a0
	mv	a0, VirtualReg_559
	call	add2048
	mv	VirtualReg_560, a0
	mv	a0, VirtualReg_560
	call	add2048
	mv	VirtualReg_561, a0
	mv	a0, VirtualReg_561
	call	add2048
	mv	VirtualReg_562, a0
	mv	a0, VirtualReg_562
	call	add2048
	mv	VirtualReg_563, a0
	mv	a0, VirtualReg_563
	call	add2048
	mv	VirtualReg_564, a0
	mv	a0, VirtualReg_564
	call	add2048
	mv	VirtualReg_565, a0
	mv	a0, VirtualReg_565
	call	add2048
	mv	VirtualReg_566, a0
	mv	a0, VirtualReg_566
	call	add2048
	mv	VirtualReg_567, a0
	mv	a0, VirtualReg_567
	call	add2048
	mv	VirtualReg_568, a0
	mv	a0, VirtualReg_568
	call	add2048
	mv	VirtualReg_569, a0
	mv	a0, VirtualReg_569
	call	add2048
	mv	VirtualReg_570, a0
	mv	a0, VirtualReg_570
	call	add2048
	mv	VirtualReg_571, a0
	mv	a0, VirtualReg_571
	call	add2048
	mv	VirtualReg_572, a0
	mv	a0, VirtualReg_572
	call	add2048
	mv	VirtualReg_573, a0
	mv	a0, VirtualReg_573
	call	add2048
	mv	VirtualReg_574, a0
	mv	a0, VirtualReg_574
	call	add2048
	mv	VirtualReg_575, a0
	mv	a0, VirtualReg_575
	call	add2048
	mv	VirtualReg_576, a0
	mv	a0, VirtualReg_576
	call	add2048
	mv	VirtualReg_577, a0
	mv	a0, VirtualReg_577
	call	add2048
	mv	VirtualReg_578, a0
	mv	a0, VirtualReg_578
	call	add2048
	mv	VirtualReg_579, a0
	mv	a0, VirtualReg_579
	call	add2048
	mv	VirtualReg_580, a0
	mv	a0, VirtualReg_580
	call	add2048
	mv	VirtualReg_581, a0
	mv	a0, VirtualReg_581
	call	add2048
	mv	VirtualReg_582, a0
	mv	a0, VirtualReg_582
	call	add2048
	mv	VirtualReg_583, a0
	mv	a0, VirtualReg_583
	call	add2048
	mv	VirtualReg_584, a0
	mv	a0, VirtualReg_584
	call	add2048
	mv	VirtualReg_585, a0
	mv	a0, VirtualReg_585
	call	add2048
	mv	VirtualReg_586, a0
	mv	a0, VirtualReg_586
	call	add2048
	mv	VirtualReg_587, a0
	mv	a0, VirtualReg_587
	call	add2048
	mv	VirtualReg_588, a0
	mv	a0, VirtualReg_588
	call	add2048
	mv	VirtualReg_589, a0
	mv	a0, VirtualReg_589
	call	add2048
	mv	VirtualReg_590, a0
	mv	a0, VirtualReg_590
	call	add2048
	mv	VirtualReg_591, a0
	mv	a0, VirtualReg_591
	call	add2048
	mv	VirtualReg_592, a0
	mv	a0, VirtualReg_592
	call	add2048
	mv	VirtualReg_593, a0
	mv	a0, VirtualReg_593
	call	add2048
	mv	VirtualReg_594, a0
	mv	a0, VirtualReg_594
	call	add2048
	mv	VirtualReg_595, a0
	mv	a0, VirtualReg_595
	call	add2048
	mv	VirtualReg_596, a0
	mv	a0, VirtualReg_596
	call	add2048
	mv	VirtualReg_597, a0
	mv	a0, VirtualReg_597
	call	add2048
	mv	VirtualReg_598, a0
	mv	a0, VirtualReg_598
	call	add2048
	mv	VirtualReg_599, a0
	mv	a0, VirtualReg_599
	call	add2048
	mv	VirtualReg_600, a0
	mv	a0, VirtualReg_600
	call	add2048
	mv	VirtualReg_601, a0
	mv	a0, VirtualReg_601
	call	add2048
	mv	VirtualReg_602, a0
	mv	a0, VirtualReg_602
	call	add2048
	mv	VirtualReg_603, a0
	mv	a0, VirtualReg_603
	call	add2048
	mv	VirtualReg_604, a0
	mv	a0, VirtualReg_604
	call	add2048
	mv	VirtualReg_605, a0
	mv	a0, VirtualReg_605
	call	add2048
	mv	VirtualReg_606, a0
	mv	a0, VirtualReg_606
	call	add2048
	mv	VirtualReg_607, a0
	mv	a0, VirtualReg_607
	call	add2048
	mv	VirtualReg_608, a0
	mv	a0, VirtualReg_608
	call	add2048
	mv	VirtualReg_609, a0
	mv	a0, VirtualReg_609
	call	add2048
	mv	VirtualReg_610, a0
	mv	a0, VirtualReg_610
	call	add2048
	mv	VirtualReg_611, a0
	mv	a0, VirtualReg_611
	call	add2048
	mv	VirtualReg_612, a0
	mv	a0, VirtualReg_612
	call	add2048
	mv	VirtualReg_613, a0
	mv	a0, VirtualReg_613
	call	add2048
	mv	VirtualReg_614, a0
	mv	a0, VirtualReg_614
	call	add2048
	mv	VirtualReg_615, a0
	mv	a0, VirtualReg_615
	call	add2048
	mv	VirtualReg_616, a0
	mv	a0, VirtualReg_616
	call	add2048
	mv	VirtualReg_617, a0
	mv	a0, VirtualReg_617
	call	add2048
	mv	VirtualReg_618, a0
	mv	a0, VirtualReg_618
	call	add2048
	mv	VirtualReg_619, a0
	mv	a0, VirtualReg_619
	call	add2048
	mv	VirtualReg_620, a0
	mv	a0, VirtualReg_620
	call	add2048
	mv	VirtualReg_621, a0
	mv	a0, VirtualReg_621
	call	add2048
	mv	VirtualReg_622, a0
	mv	a0, VirtualReg_622
	call	add2048
	mv	VirtualReg_623, a0
	mv	a0, VirtualReg_623
	call	add2048
	mv	VirtualReg_624, a0
	mv	a0, VirtualReg_624
	call	add2048
	mv	VirtualReg_625, a0
	mv	a0, VirtualReg_625
	call	add2048
	mv	VirtualReg_626, a0
	mv	a0, VirtualReg_626
	call	add2048
	mv	VirtualReg_627, a0
	mv	a0, VirtualReg_627
	call	add2048
	mv	VirtualReg_628, a0
	mv	a0, VirtualReg_628
	call	add2048
	mv	VirtualReg_629, a0
	mv	a0, VirtualReg_629
	call	add2048
	mv	VirtualReg_630, a0
	mv	a0, VirtualReg_630
	call	add2048
	mv	VirtualReg_631, a0
	mv	a0, VirtualReg_631
	call	add2048
	mv	VirtualReg_632, a0
	mv	a0, VirtualReg_632
	call	add2048
	mv	VirtualReg_633, a0
	mv	a0, VirtualReg_633
	call	add2048
	mv	VirtualReg_634, a0
	mv	a0, VirtualReg_634
	call	add2048
	mv	VirtualReg_635, a0
	mv	a0, VirtualReg_635
	call	add2048
	mv	VirtualReg_636, a0
	mv	a0, VirtualReg_636
	call	add2048
	mv	VirtualReg_637, a0
	mv	a0, VirtualReg_637
	call	add2048
	mv	VirtualReg_638, a0
	mv	a0, VirtualReg_638
	call	add2048
	mv	VirtualReg_639, a0
	mv	a0, VirtualReg_639
	call	add2048
	mv	VirtualReg_640, a0
	mv	a0, VirtualReg_640
	call	add2048
	mv	VirtualReg_641, a0
	mv	a0, VirtualReg_641
	call	add2048
	mv	VirtualReg_642, a0
	mv	a0, VirtualReg_642
	call	add2048
	mv	VirtualReg_643, a0
	mv	a0, VirtualReg_643
	call	add2048
	mv	VirtualReg_644, a0
	mv	a0, VirtualReg_644
	call	add2048
	mv	VirtualReg_645, a0
	mv	a0, VirtualReg_645
	call	add2048
	mv	VirtualReg_646, a0
	mv	a0, VirtualReg_646
	call	add2048
	mv	VirtualReg_647, a0
	mv	a0, VirtualReg_647
	call	add2048
	mv	VirtualReg_648, a0
	mv	a0, VirtualReg_648
	call	add2048
	mv	VirtualReg_649, a0
	mv	a0, VirtualReg_649
	call	add2048
	mv	VirtualReg_650, a0
	mv	a0, VirtualReg_650
	call	add2048
	mv	VirtualReg_651, a0
	mv	a0, VirtualReg_651
	call	add2048
	mv	VirtualReg_652, a0
	mv	a0, VirtualReg_652
	call	add2048
	mv	VirtualReg_653, a0
	mv	a0, VirtualReg_653
	call	add2048
	mv	VirtualReg_654, a0
	mv	a0, VirtualReg_654
	call	add2048
	mv	VirtualReg_655, a0
	mv	a0, VirtualReg_655
	call	add2048
	mv	VirtualReg_656, a0
	mv	a0, VirtualReg_656
	call	add2048
	mv	VirtualReg_657, a0
	mv	a0, VirtualReg_657
	call	add2048
	mv	VirtualReg_658, a0
	mv	a0, VirtualReg_658
	call	add2048
	mv	VirtualReg_659, a0
	mv	a0, VirtualReg_659
	call	add2048
	mv	VirtualReg_660, a0
	mv	a0, VirtualReg_660
	call	add2048
	mv	VirtualReg_661, a0
	mv	a0, VirtualReg_661
	call	add2048
	mv	VirtualReg_662, a0
	mv	a0, VirtualReg_662
	call	add2048
	mv	VirtualReg_663, a0
	mv	a0, VirtualReg_663
	call	add2048
	mv	VirtualReg_664, a0
	mv	a0, VirtualReg_664
	call	add2048
	mv	VirtualReg_665, a0
	mv	a0, VirtualReg_665
	call	add2048
	mv	VirtualReg_666, a0
	mv	a0, VirtualReg_666
	call	add2048
	mv	VirtualReg_667, a0
	mv	a0, VirtualReg_667
	call	add2048
	mv	VirtualReg_668, a0
	mv	a0, VirtualReg_668
	call	add2048
	mv	VirtualReg_669, a0
	mv	a0, VirtualReg_669
	call	add2048
	mv	VirtualReg_670, a0
	mv	a0, VirtualReg_670
	call	add2048
	mv	VirtualReg_671, a0
	mv	a0, VirtualReg_671
	call	add2048
	mv	VirtualReg_672, a0
	mv	a0, VirtualReg_672
	call	add2048
	mv	VirtualReg_673, a0
	mv	a0, VirtualReg_673
	call	add2048
	mv	VirtualReg_674, a0
	mv	a0, VirtualReg_674
	call	add2048
	mv	VirtualReg_675, a0
	mv	a0, VirtualReg_675
	call	add2048
	mv	VirtualReg_676, a0
	mv	a0, VirtualReg_676
	call	add2048
	mv	VirtualReg_677, a0
	mv	a0, VirtualReg_677
	call	add2048
	mv	VirtualReg_678, a0
	mv	a0, VirtualReg_678
	call	add2048
	mv	VirtualReg_679, a0
	mv	a0, VirtualReg_679
	call	add2048
	mv	VirtualReg_680, a0
	mv	a0, VirtualReg_680
	call	add2048
	mv	VirtualReg_681, a0
	mv	a0, VirtualReg_681
	call	add2048
	mv	VirtualReg_682, a0
	mv	a0, VirtualReg_682
	call	add2048
	mv	VirtualReg_683, a0
	mv	a0, VirtualReg_683
	call	add2048
	mv	VirtualReg_684, a0
	mv	a0, VirtualReg_684
	call	add2048
	mv	VirtualReg_685, a0
	mv	a0, VirtualReg_685
	call	add2048
	mv	VirtualReg_686, a0
	mv	a0, VirtualReg_686
	call	add2048
	mv	VirtualReg_687, a0
	mv	a0, VirtualReg_687
	call	add2048
	mv	VirtualReg_688, a0
	mv	a0, VirtualReg_688
	call	add2048
	mv	VirtualReg_689, a0
	mv	a0, VirtualReg_689
	call	add2048
	mv	VirtualReg_690, a0
	mv	a0, VirtualReg_690
	call	add2048
	mv	VirtualReg_691, a0
	mv	a0, VirtualReg_691
	call	add2048
	mv	VirtualReg_692, a0
	mv	a0, VirtualReg_692
	call	add2048
	mv	VirtualReg_693, a0
	li	VirtualReg_695, 524288
	sub	VirtualReg_694, VirtualReg_693, VirtualReg_695
	li	VirtualReg_697, 4
	sub	VirtualReg_696, VirtualReg_694, VirtualReg_697
	mv	VirtualReg_13, VirtualReg_696
	j	.sanity_check_call_wP_60_wP_return
.sanity_check_call_wP_60_wP_ID38_if_out:
	call	block
	mv	VirtualReg_698, a0
	call	block
	mv	VirtualReg_699, a0
	call	block
	mv	VirtualReg_700, a0
	call	block
	mv	VirtualReg_701, a0
	lw	VirtualReg_702, fuckLLVM_w
	addi	VirtualReg_703, VirtualReg_702, 1
	la	VirtualReg_704, fuckLLVM_w
	sw	VirtualReg_703, 0(VirtualReg_704)
	lw	VirtualReg_705, fuckLLVM_w
	addi	VirtualReg_706, VirtualReg_705, 1
	la	VirtualReg_707, fuckLLVM_w
	sw	VirtualReg_706, 0(VirtualReg_707)
	lw	VirtualReg_708, fuckLLVM_w
	lw	VirtualReg_709, fuckLLVM_w
	addi	VirtualReg_710, VirtualReg_709, 1
	la	VirtualReg_711, fuckLLVM_w
	sw	VirtualReg_710, 0(VirtualReg_711)
	lw	VirtualReg_712, fuckLLVM_w
	addi	VirtualReg_713, VirtualReg_712, 1
	la	VirtualReg_714, fuckLLVM_w
	sw	VirtualReg_713, 0(VirtualReg_714)
	lw	VirtualReg_715, fuckLLVM_w
	lw	VirtualReg_716, fuckLLVM_w
	addi	VirtualReg_717, VirtualReg_716, 1
	la	VirtualReg_718, fuckLLVM_w
	sw	VirtualReg_717, 0(VirtualReg_718)
	lw	VirtualReg_719, fuckLLVM_w
	addi	VirtualReg_720, VirtualReg_719, 1
	la	VirtualReg_721, fuckLLVM_w
	sw	VirtualReg_720, 0(VirtualReg_721)
	lw	VirtualReg_722, fuckLLVM_w
	lw	VirtualReg_723, fuckLLVM_w
	addi	VirtualReg_724, VirtualReg_723, 1
	la	VirtualReg_725, fuckLLVM_w
	sw	VirtualReg_724, 0(VirtualReg_725)
	lw	VirtualReg_726, fuckLLVM_w
	addi	VirtualReg_727, VirtualReg_726, 1
	la	VirtualReg_728, fuckLLVM_w
	sw	VirtualReg_727, 0(VirtualReg_728)
	lw	VirtualReg_729, fuckLLVM_w
	lw	VirtualReg_730, fuckLLVM_w
	addi	VirtualReg_731, VirtualReg_730, 1
	la	VirtualReg_732, fuckLLVM_w
	sw	VirtualReg_731, 0(VirtualReg_732)
	lw	VirtualReg_733, fuckLLVM_w
	addi	VirtualReg_734, VirtualReg_733, 1
	la	VirtualReg_735, fuckLLVM_w
	sw	VirtualReg_734, 0(VirtualReg_735)
	lw	VirtualReg_736, fuckLLVM_w
	lw	VirtualReg_737, fuckLLVM_w
	addi	VirtualReg_738, VirtualReg_737, 1
	la	VirtualReg_739, fuckLLVM_w
	sw	VirtualReg_738, 0(VirtualReg_739)
	lw	VirtualReg_740, fuckLLVM_w
	addi	VirtualReg_741, VirtualReg_740, 1
	la	VirtualReg_742, fuckLLVM_w
	sw	VirtualReg_741, 0(VirtualReg_742)
	lw	VirtualReg_743, fuckLLVM_w
	lw	VirtualReg_744, fuckLLVM_w
	addi	VirtualReg_745, VirtualReg_744, 1
	la	VirtualReg_746, fuckLLVM_w
	sw	VirtualReg_745, 0(VirtualReg_746)
	lw	VirtualReg_747, fuckLLVM_w
	addi	VirtualReg_748, VirtualReg_747, 1
	la	VirtualReg_749, fuckLLVM_w
	sw	VirtualReg_748, 0(VirtualReg_749)
	lw	VirtualReg_750, fuckLLVM_w
	lw	VirtualReg_751, fuckLLVM_w
	addi	VirtualReg_752, VirtualReg_751, 1
	la	VirtualReg_753, fuckLLVM_w
	sw	VirtualReg_752, 0(VirtualReg_753)
	lw	VirtualReg_754, fuckLLVM_w
	addi	VirtualReg_755, VirtualReg_754, 1
	la	VirtualReg_756, fuckLLVM_w
	sw	VirtualReg_755, 0(VirtualReg_756)
	lw	VirtualReg_757, fuckLLVM_w
	lw	VirtualReg_758, fuckLLVM_w
	addi	VirtualReg_759, VirtualReg_758, 1
	la	VirtualReg_760, fuckLLVM_w
	sw	VirtualReg_759, 0(VirtualReg_760)
	lw	VirtualReg_761, fuckLLVM_w
	addi	VirtualReg_762, VirtualReg_761, 1
	la	VirtualReg_763, fuckLLVM_w
	sw	VirtualReg_762, 0(VirtualReg_763)
	lw	VirtualReg_764, fuckLLVM_w
	lw	VirtualReg_765, fuckLLVM_w
	addi	VirtualReg_766, VirtualReg_765, 1
	la	VirtualReg_767, fuckLLVM_w
	sw	VirtualReg_766, 0(VirtualReg_767)
	lw	VirtualReg_768, fuckLLVM_w
	addi	VirtualReg_769, VirtualReg_768, 1
	la	VirtualReg_770, fuckLLVM_w
	sw	VirtualReg_769, 0(VirtualReg_770)
	lw	VirtualReg_771, fuckLLVM_w
	lw	VirtualReg_772, fuckLLVM_w
	addi	VirtualReg_773, VirtualReg_772, 1
	la	VirtualReg_774, fuckLLVM_w
	sw	VirtualReg_773, 0(VirtualReg_774)
	lw	VirtualReg_775, fuckLLVM_w
	addi	VirtualReg_776, VirtualReg_775, 1
	la	VirtualReg_777, fuckLLVM_w
	sw	VirtualReg_776, 0(VirtualReg_777)
	lw	VirtualReg_778, fuckLLVM_w
	lw	VirtualReg_779, fuckLLVM_w
	addi	VirtualReg_780, VirtualReg_779, 1
	la	VirtualReg_781, fuckLLVM_w
	sw	VirtualReg_780, 0(VirtualReg_781)
	lw	VirtualReg_782, fuckLLVM_w
	addi	VirtualReg_783, VirtualReg_782, 1
	la	VirtualReg_784, fuckLLVM_w
	sw	VirtualReg_783, 0(VirtualReg_784)
	lw	VirtualReg_785, fuckLLVM_w
	lw	VirtualReg_786, fuckLLVM_w
	addi	VirtualReg_787, VirtualReg_786, 1
	la	VirtualReg_788, fuckLLVM_w
	sw	VirtualReg_787, 0(VirtualReg_788)
	lw	VirtualReg_789, fuckLLVM_w
	addi	VirtualReg_790, VirtualReg_789, 1
	la	VirtualReg_791, fuckLLVM_w
	sw	VirtualReg_790, 0(VirtualReg_791)
	lw	VirtualReg_792, fuckLLVM_w
	lw	VirtualReg_793, fuckLLVM_w
	addi	VirtualReg_794, VirtualReg_793, 1
	la	VirtualReg_795, fuckLLVM_w
	sw	VirtualReg_794, 0(VirtualReg_795)
	lw	VirtualReg_796, fuckLLVM_w
	addi	VirtualReg_797, VirtualReg_796, 1
	la	VirtualReg_798, fuckLLVM_w
	sw	VirtualReg_797, 0(VirtualReg_798)
	lw	VirtualReg_799, fuckLLVM_w
	lw	VirtualReg_800, fuckLLVM_w
	addi	VirtualReg_801, VirtualReg_800, 1
	la	VirtualReg_802, fuckLLVM_w
	sw	VirtualReg_801, 0(VirtualReg_802)
	lw	VirtualReg_803, fuckLLVM_w
	addi	VirtualReg_804, VirtualReg_803, 1
	la	VirtualReg_805, fuckLLVM_w
	sw	VirtualReg_804, 0(VirtualReg_805)
	lw	VirtualReg_806, fuckLLVM_w
	lw	VirtualReg_807, fuckLLVM_w
	addi	VirtualReg_808, VirtualReg_807, 1
	la	VirtualReg_809, fuckLLVM_w
	sw	VirtualReg_808, 0(VirtualReg_809)
	lw	VirtualReg_810, fuckLLVM_w
	addi	VirtualReg_811, VirtualReg_810, 1
	la	VirtualReg_812, fuckLLVM_w
	sw	VirtualReg_811, 0(VirtualReg_812)
	lw	VirtualReg_813, fuckLLVM_w
	lw	VirtualReg_814, fuckLLVM_w
	addi	VirtualReg_815, VirtualReg_814, 1
	la	VirtualReg_816, fuckLLVM_w
	sw	VirtualReg_815, 0(VirtualReg_816)
	lw	VirtualReg_817, fuckLLVM_w
	addi	VirtualReg_818, VirtualReg_817, 1
	la	VirtualReg_819, fuckLLVM_w
	sw	VirtualReg_818, 0(VirtualReg_819)
	lw	VirtualReg_820, fuckLLVM_w
	lw	VirtualReg_821, fuckLLVM_w
	addi	VirtualReg_822, VirtualReg_821, 1
	la	VirtualReg_823, fuckLLVM_w
	sw	VirtualReg_822, 0(VirtualReg_823)
	lw	VirtualReg_824, fuckLLVM_w
	addi	VirtualReg_825, VirtualReg_824, 1
	la	VirtualReg_826, fuckLLVM_w
	sw	VirtualReg_825, 0(VirtualReg_826)
	lw	VirtualReg_827, fuckLLVM_w
	lw	VirtualReg_828, fuckLLVM_w
	addi	VirtualReg_829, VirtualReg_828, 1
	la	VirtualReg_830, fuckLLVM_w
	sw	VirtualReg_829, 0(VirtualReg_830)
	lw	VirtualReg_831, fuckLLVM_w
	addi	VirtualReg_832, VirtualReg_831, 1
	la	VirtualReg_833, fuckLLVM_w
	sw	VirtualReg_832, 0(VirtualReg_833)
	lw	VirtualReg_834, fuckLLVM_w
	lw	VirtualReg_835, fuckLLVM_w
	addi	VirtualReg_836, VirtualReg_835, 1
	la	VirtualReg_837, fuckLLVM_w
	sw	VirtualReg_836, 0(VirtualReg_837)
	lw	VirtualReg_838, fuckLLVM_w
	addi	VirtualReg_839, VirtualReg_838, 1
	la	VirtualReg_840, fuckLLVM_w
	sw	VirtualReg_839, 0(VirtualReg_840)
	lw	VirtualReg_841, fuckLLVM_w
	lw	VirtualReg_842, fuckLLVM_w
	addi	VirtualReg_843, VirtualReg_842, 1
	la	VirtualReg_844, fuckLLVM_w
	sw	VirtualReg_843, 0(VirtualReg_844)
	lw	VirtualReg_845, fuckLLVM_w
	addi	VirtualReg_846, VirtualReg_845, 1
	la	VirtualReg_847, fuckLLVM_w
	sw	VirtualReg_846, 0(VirtualReg_847)
	lw	VirtualReg_848, fuckLLVM_w
	lw	VirtualReg_849, fuckLLVM_w
	addi	VirtualReg_850, VirtualReg_849, 1
	la	VirtualReg_851, fuckLLVM_w
	sw	VirtualReg_850, 0(VirtualReg_851)
	lw	VirtualReg_852, fuckLLVM_w
	addi	VirtualReg_853, VirtualReg_852, 1
	la	VirtualReg_854, fuckLLVM_w
	sw	VirtualReg_853, 0(VirtualReg_854)
	lw	VirtualReg_855, fuckLLVM_w
	lw	VirtualReg_856, fuckLLVM_w
	addi	VirtualReg_857, VirtualReg_856, 1
	la	VirtualReg_858, fuckLLVM_w
	sw	VirtualReg_857, 0(VirtualReg_858)
	lw	VirtualReg_859, fuckLLVM_w
	addi	VirtualReg_860, VirtualReg_859, 1
	la	VirtualReg_861, fuckLLVM_w
	sw	VirtualReg_860, 0(VirtualReg_861)
	lw	VirtualReg_862, fuckLLVM_w
	lw	VirtualReg_863, fuckLLVM_w
	addi	VirtualReg_864, VirtualReg_863, 1
	la	VirtualReg_865, fuckLLVM_w
	sw	VirtualReg_864, 0(VirtualReg_865)
	lw	VirtualReg_866, fuckLLVM_w
	addi	VirtualReg_867, VirtualReg_866, 1
	la	VirtualReg_868, fuckLLVM_w
	sw	VirtualReg_867, 0(VirtualReg_868)
	lw	VirtualReg_869, fuckLLVM_w
	lw	VirtualReg_870, fuckLLVM_w
	addi	VirtualReg_871, VirtualReg_870, 1
	la	VirtualReg_872, fuckLLVM_w
	sw	VirtualReg_871, 0(VirtualReg_872)
	lw	VirtualReg_873, fuckLLVM_w
	addi	VirtualReg_874, VirtualReg_873, 1
	la	VirtualReg_875, fuckLLVM_w
	sw	VirtualReg_874, 0(VirtualReg_875)
	lw	VirtualReg_876, fuckLLVM_w
	lw	VirtualReg_877, fuckLLVM_w
	addi	VirtualReg_878, VirtualReg_877, 1
	la	VirtualReg_879, fuckLLVM_w
	sw	VirtualReg_878, 0(VirtualReg_879)
	lw	VirtualReg_880, fuckLLVM_w
	addi	VirtualReg_881, VirtualReg_880, 1
	la	VirtualReg_882, fuckLLVM_w
	sw	VirtualReg_881, 0(VirtualReg_882)
	lw	VirtualReg_883, fuckLLVM_w
	lw	VirtualReg_884, fuckLLVM_w
	addi	VirtualReg_885, VirtualReg_884, 1
	la	VirtualReg_886, fuckLLVM_w
	sw	VirtualReg_885, 0(VirtualReg_886)
	lw	VirtualReg_887, fuckLLVM_w
	addi	VirtualReg_888, VirtualReg_887, 1
	la	VirtualReg_889, fuckLLVM_w
	sw	VirtualReg_888, 0(VirtualReg_889)
	lw	VirtualReg_890, fuckLLVM_w
	lw	VirtualReg_891, fuckLLVM_w
	addi	VirtualReg_892, VirtualReg_891, 1
	la	VirtualReg_893, fuckLLVM_w
	sw	VirtualReg_892, 0(VirtualReg_893)
	lw	VirtualReg_894, fuckLLVM_w
	addi	VirtualReg_895, VirtualReg_894, 1
	la	VirtualReg_896, fuckLLVM_w
	sw	VirtualReg_895, 0(VirtualReg_896)
	lw	VirtualReg_897, fuckLLVM_w
	lw	VirtualReg_898, fuckLLVM_w
	addi	VirtualReg_899, VirtualReg_898, 1
	la	VirtualReg_900, fuckLLVM_w
	sw	VirtualReg_899, 0(VirtualReg_900)
	lw	VirtualReg_901, fuckLLVM_w
	addi	VirtualReg_902, VirtualReg_901, 1
	la	VirtualReg_903, fuckLLVM_w
	sw	VirtualReg_902, 0(VirtualReg_903)
	lw	VirtualReg_904, fuckLLVM_w
	lw	VirtualReg_905, fuckLLVM_w
	addi	VirtualReg_906, VirtualReg_905, 1
	la	VirtualReg_907, fuckLLVM_w
	sw	VirtualReg_906, 0(VirtualReg_907)
	lw	VirtualReg_908, fuckLLVM_w
	addi	VirtualReg_909, VirtualReg_908, 1
	la	VirtualReg_910, fuckLLVM_w
	sw	VirtualReg_909, 0(VirtualReg_910)
	lw	VirtualReg_911, fuckLLVM_w
	lw	VirtualReg_912, fuckLLVM_w
	addi	VirtualReg_913, VirtualReg_912, 1
	la	VirtualReg_914, fuckLLVM_w
	sw	VirtualReg_913, 0(VirtualReg_914)
	lw	VirtualReg_915, fuckLLVM_w
	addi	VirtualReg_916, VirtualReg_915, 1
	la	VirtualReg_917, fuckLLVM_w
	sw	VirtualReg_916, 0(VirtualReg_917)
	lw	VirtualReg_918, fuckLLVM_w
	lw	VirtualReg_919, fuckLLVM_w
	addi	VirtualReg_920, VirtualReg_919, 1
	la	VirtualReg_921, fuckLLVM_w
	sw	VirtualReg_920, 0(VirtualReg_921)
	lw	VirtualReg_922, fuckLLVM_w
	addi	VirtualReg_923, VirtualReg_922, 1
	la	VirtualReg_924, fuckLLVM_w
	sw	VirtualReg_923, 0(VirtualReg_924)
	lw	VirtualReg_925, fuckLLVM_w
	lw	VirtualReg_926, fuckLLVM_w
	addi	VirtualReg_927, VirtualReg_926, 1
	la	VirtualReg_928, fuckLLVM_w
	sw	VirtualReg_927, 0(VirtualReg_928)
	lw	VirtualReg_929, fuckLLVM_w
	addi	VirtualReg_930, VirtualReg_929, 1
	la	VirtualReg_931, fuckLLVM_w
	sw	VirtualReg_930, 0(VirtualReg_931)
	lw	VirtualReg_932, fuckLLVM_w
	lw	VirtualReg_933, fuckLLVM_w
	addi	VirtualReg_934, VirtualReg_933, 1
	la	VirtualReg_935, fuckLLVM_w
	sw	VirtualReg_934, 0(VirtualReg_935)
	lw	VirtualReg_936, fuckLLVM_w
	addi	VirtualReg_937, VirtualReg_936, 1
	la	VirtualReg_938, fuckLLVM_w
	sw	VirtualReg_937, 0(VirtualReg_938)
	lw	VirtualReg_939, fuckLLVM_w
	lw	VirtualReg_940, fuckLLVM_w
	addi	VirtualReg_941, VirtualReg_940, 1
	la	VirtualReg_942, fuckLLVM_w
	sw	VirtualReg_941, 0(VirtualReg_942)
	lw	VirtualReg_943, fuckLLVM_w
	addi	VirtualReg_944, VirtualReg_943, 1
	la	VirtualReg_945, fuckLLVM_w
	sw	VirtualReg_944, 0(VirtualReg_945)
	lw	VirtualReg_946, fuckLLVM_w
	lw	VirtualReg_947, fuckLLVM_w
	addi	VirtualReg_948, VirtualReg_947, 1
	la	VirtualReg_949, fuckLLVM_w
	sw	VirtualReg_948, 0(VirtualReg_949)
	lw	VirtualReg_950, fuckLLVM_w
	addi	VirtualReg_951, VirtualReg_950, 1
	la	VirtualReg_952, fuckLLVM_w
	sw	VirtualReg_951, 0(VirtualReg_952)
	lw	VirtualReg_953, fuckLLVM_w
	lw	VirtualReg_954, fuckLLVM_w
	addi	VirtualReg_955, VirtualReg_954, 1
	la	VirtualReg_956, fuckLLVM_w
	sw	VirtualReg_955, 0(VirtualReg_956)
	lw	VirtualReg_957, fuckLLVM_w
	addi	VirtualReg_958, VirtualReg_957, 1
	la	VirtualReg_959, fuckLLVM_w
	sw	VirtualReg_958, 0(VirtualReg_959)
	lw	VirtualReg_960, fuckLLVM_w
	lw	VirtualReg_961, fuckLLVM_w
	addi	VirtualReg_962, VirtualReg_961, 1
	la	VirtualReg_963, fuckLLVM_w
	sw	VirtualReg_962, 0(VirtualReg_963)
	lw	VirtualReg_964, fuckLLVM_w
	addi	VirtualReg_965, VirtualReg_964, 1
	la	VirtualReg_966, fuckLLVM_w
	sw	VirtualReg_965, 0(VirtualReg_966)
	lw	VirtualReg_967, fuckLLVM_w
	lw	VirtualReg_968, fuckLLVM_w
	addi	VirtualReg_969, VirtualReg_968, 1
	la	VirtualReg_970, fuckLLVM_w
	sw	VirtualReg_969, 0(VirtualReg_970)
	lw	VirtualReg_971, fuckLLVM_w
	addi	VirtualReg_972, VirtualReg_971, 1
	la	VirtualReg_973, fuckLLVM_w
	sw	VirtualReg_972, 0(VirtualReg_973)
	lw	VirtualReg_974, fuckLLVM_w
	lw	VirtualReg_975, fuckLLVM_w
	addi	VirtualReg_976, VirtualReg_975, 1
	la	VirtualReg_977, fuckLLVM_w
	sw	VirtualReg_976, 0(VirtualReg_977)
	lw	VirtualReg_978, fuckLLVM_w
	addi	VirtualReg_979, VirtualReg_978, 1
	la	VirtualReg_980, fuckLLVM_w
	sw	VirtualReg_979, 0(VirtualReg_980)
	lw	VirtualReg_981, fuckLLVM_w
	lw	VirtualReg_982, fuckLLVM_w
	addi	VirtualReg_983, VirtualReg_982, 1
	la	VirtualReg_984, fuckLLVM_w
	sw	VirtualReg_983, 0(VirtualReg_984)
	lw	VirtualReg_985, fuckLLVM_w
	addi	VirtualReg_986, VirtualReg_985, 1
	la	VirtualReg_987, fuckLLVM_w
	sw	VirtualReg_986, 0(VirtualReg_987)
	lw	VirtualReg_988, fuckLLVM_w
	lw	VirtualReg_989, fuckLLVM_w
	addi	VirtualReg_990, VirtualReg_989, 1
	la	VirtualReg_991, fuckLLVM_w
	sw	VirtualReg_990, 0(VirtualReg_991)
	lw	VirtualReg_992, fuckLLVM_w
	addi	VirtualReg_993, VirtualReg_992, 1
	la	VirtualReg_994, fuckLLVM_w
	sw	VirtualReg_993, 0(VirtualReg_994)
	lw	VirtualReg_995, fuckLLVM_w
	lw	VirtualReg_996, fuckLLVM_w
	addi	VirtualReg_997, VirtualReg_996, 1
	la	VirtualReg_998, fuckLLVM_w
	sw	VirtualReg_997, 0(VirtualReg_998)
	lw	VirtualReg_999, fuckLLVM_w
	addi	VirtualReg_1000, VirtualReg_999, 1
	la	VirtualReg_1001, fuckLLVM_w
	sw	VirtualReg_1000, 0(VirtualReg_1001)
	lw	VirtualReg_1002, fuckLLVM_w
	lw	VirtualReg_1003, fuckLLVM_w
	addi	VirtualReg_1004, VirtualReg_1003, 1
	la	VirtualReg_1005, fuckLLVM_w
	sw	VirtualReg_1004, 0(VirtualReg_1005)
	lw	VirtualReg_1006, fuckLLVM_w
	addi	VirtualReg_1007, VirtualReg_1006, 1
	la	VirtualReg_1008, fuckLLVM_w
	sw	VirtualReg_1007, 0(VirtualReg_1008)
	lw	VirtualReg_1009, fuckLLVM_w
	lw	VirtualReg_1010, fuckLLVM_w
	addi	VirtualReg_1011, VirtualReg_1010, 1
	la	VirtualReg_1012, fuckLLVM_w
	sw	VirtualReg_1011, 0(VirtualReg_1012)
	lw	VirtualReg_1013, fuckLLVM_w
	addi	VirtualReg_1014, VirtualReg_1013, 1
	la	VirtualReg_1015, fuckLLVM_w
	sw	VirtualReg_1014, 0(VirtualReg_1015)
	lw	VirtualReg_1016, fuckLLVM_w
	lw	VirtualReg_1017, fuckLLVM_w
	addi	VirtualReg_1018, VirtualReg_1017, 1
	la	VirtualReg_1019, fuckLLVM_w
	sw	VirtualReg_1018, 0(VirtualReg_1019)
	lw	VirtualReg_1020, fuckLLVM_w
	addi	VirtualReg_1021, VirtualReg_1020, 1
	la	VirtualReg_1022, fuckLLVM_w
	sw	VirtualReg_1021, 0(VirtualReg_1022)
	lw	VirtualReg_1023, fuckLLVM_w
	lw	VirtualReg_1024, fuckLLVM_w
	addi	VirtualReg_1025, VirtualReg_1024, 1
	la	VirtualReg_1026, fuckLLVM_w
	sw	VirtualReg_1025, 0(VirtualReg_1026)
	lw	VirtualReg_1027, fuckLLVM_w
	addi	VirtualReg_1028, VirtualReg_1027, 1
	la	VirtualReg_1029, fuckLLVM_w
	sw	VirtualReg_1028, 0(VirtualReg_1029)
	lw	VirtualReg_1030, fuckLLVM_w
	lw	VirtualReg_1031, fuckLLVM_w
	addi	VirtualReg_1032, VirtualReg_1031, 1
	la	VirtualReg_1033, fuckLLVM_w
	sw	VirtualReg_1032, 0(VirtualReg_1033)
	lw	VirtualReg_1034, fuckLLVM_w
	addi	VirtualReg_1035, VirtualReg_1034, 1
	la	VirtualReg_1036, fuckLLVM_w
	sw	VirtualReg_1035, 0(VirtualReg_1036)
	lw	VirtualReg_1037, fuckLLVM_w
	lw	VirtualReg_1038, fuckLLVM_w
	addi	VirtualReg_1039, VirtualReg_1038, 1
	la	VirtualReg_1040, fuckLLVM_w
	sw	VirtualReg_1039, 0(VirtualReg_1040)
	lw	VirtualReg_1041, fuckLLVM_w
	addi	VirtualReg_1042, VirtualReg_1041, 1
	la	VirtualReg_1043, fuckLLVM_w
	sw	VirtualReg_1042, 0(VirtualReg_1043)
	lw	VirtualReg_1044, fuckLLVM_w
	lw	VirtualReg_1045, fuckLLVM_w
	addi	VirtualReg_1046, VirtualReg_1045, 1
	la	VirtualReg_1047, fuckLLVM_w
	sw	VirtualReg_1046, 0(VirtualReg_1047)
	lw	VirtualReg_1048, fuckLLVM_w
	addi	VirtualReg_1049, VirtualReg_1048, 1
	la	VirtualReg_1050, fuckLLVM_w
	sw	VirtualReg_1049, 0(VirtualReg_1050)
	lw	VirtualReg_1051, fuckLLVM_w
	lw	VirtualReg_1052, fuckLLVM_w
	addi	VirtualReg_1053, VirtualReg_1052, 1
	la	VirtualReg_1054, fuckLLVM_w
	sw	VirtualReg_1053, 0(VirtualReg_1054)
	lw	VirtualReg_1055, fuckLLVM_w
	addi	VirtualReg_1056, VirtualReg_1055, 1
	la	VirtualReg_1057, fuckLLVM_w
	sw	VirtualReg_1056, 0(VirtualReg_1057)
	lw	VirtualReg_1058, fuckLLVM_w
	lw	VirtualReg_1059, fuckLLVM_w
	addi	VirtualReg_1060, VirtualReg_1059, 1
	la	VirtualReg_1061, fuckLLVM_w
	sw	VirtualReg_1060, 0(VirtualReg_1061)
	lw	VirtualReg_1062, fuckLLVM_w
	addi	VirtualReg_1063, VirtualReg_1062, 1
	la	VirtualReg_1064, fuckLLVM_w
	sw	VirtualReg_1063, 0(VirtualReg_1064)
	lw	VirtualReg_1065, fuckLLVM_w
	lw	VirtualReg_1066, fuckLLVM_w
	addi	VirtualReg_1067, VirtualReg_1066, 1
	la	VirtualReg_1068, fuckLLVM_w
	sw	VirtualReg_1067, 0(VirtualReg_1068)
	lw	VirtualReg_1069, fuckLLVM_w
	addi	VirtualReg_1070, VirtualReg_1069, 1
	la	VirtualReg_1071, fuckLLVM_w
	sw	VirtualReg_1070, 0(VirtualReg_1071)
	lw	VirtualReg_1072, fuckLLVM_w
	lw	VirtualReg_1073, fuckLLVM_w
	addi	VirtualReg_1074, VirtualReg_1073, 1
	la	VirtualReg_1075, fuckLLVM_w
	sw	VirtualReg_1074, 0(VirtualReg_1075)
	lw	VirtualReg_1076, fuckLLVM_w
	addi	VirtualReg_1077, VirtualReg_1076, 1
	la	VirtualReg_1078, fuckLLVM_w
	sw	VirtualReg_1077, 0(VirtualReg_1078)
	lw	VirtualReg_1079, fuckLLVM_w
	lw	VirtualReg_1080, fuckLLVM_w
	addi	VirtualReg_1081, VirtualReg_1080, 1
	la	VirtualReg_1082, fuckLLVM_w
	sw	VirtualReg_1081, 0(VirtualReg_1082)
	lw	VirtualReg_1083, fuckLLVM_w
	addi	VirtualReg_1084, VirtualReg_1083, 1
	la	VirtualReg_1085, fuckLLVM_w
	sw	VirtualReg_1084, 0(VirtualReg_1085)
	lw	VirtualReg_1086, fuckLLVM_w
	lw	VirtualReg_1087, fuckLLVM_w
	addi	VirtualReg_1088, VirtualReg_1087, 1
	la	VirtualReg_1089, fuckLLVM_w
	sw	VirtualReg_1088, 0(VirtualReg_1089)
	lw	VirtualReg_1090, fuckLLVM_w
	addi	VirtualReg_1091, VirtualReg_1090, 1
	la	VirtualReg_1092, fuckLLVM_w
	sw	VirtualReg_1091, 0(VirtualReg_1092)
	lw	VirtualReg_1093, fuckLLVM_w
	lw	VirtualReg_1094, fuckLLVM_w
	addi	VirtualReg_1095, VirtualReg_1094, 1
	la	VirtualReg_1096, fuckLLVM_w
	sw	VirtualReg_1095, 0(VirtualReg_1096)
	lw	VirtualReg_1097, fuckLLVM_w
	addi	VirtualReg_1098, VirtualReg_1097, 1
	la	VirtualReg_1099, fuckLLVM_w
	sw	VirtualReg_1098, 0(VirtualReg_1099)
	lw	VirtualReg_1100, fuckLLVM_w
	lw	VirtualReg_1101, fuckLLVM_w
	addi	VirtualReg_1102, VirtualReg_1101, 1
	la	VirtualReg_1103, fuckLLVM_w
	sw	VirtualReg_1102, 0(VirtualReg_1103)
	lw	VirtualReg_1104, fuckLLVM_w
	addi	VirtualReg_1105, VirtualReg_1104, 1
	la	VirtualReg_1106, fuckLLVM_w
	sw	VirtualReg_1105, 0(VirtualReg_1106)
	lw	VirtualReg_1107, fuckLLVM_w
	lw	VirtualReg_1108, fuckLLVM_w
	addi	VirtualReg_1109, VirtualReg_1108, 1
	la	VirtualReg_1110, fuckLLVM_w
	sw	VirtualReg_1109, 0(VirtualReg_1110)
	lw	VirtualReg_1111, fuckLLVM_w
	addi	VirtualReg_1112, VirtualReg_1111, 1
	la	VirtualReg_1113, fuckLLVM_w
	sw	VirtualReg_1112, 0(VirtualReg_1113)
	lw	VirtualReg_1114, fuckLLVM_w
	lw	VirtualReg_1115, fuckLLVM_w
	addi	VirtualReg_1116, VirtualReg_1115, 1
	la	VirtualReg_1117, fuckLLVM_w
	sw	VirtualReg_1116, 0(VirtualReg_1117)
	lw	VirtualReg_1118, fuckLLVM_w
	addi	VirtualReg_1119, VirtualReg_1118, 1
	la	VirtualReg_1120, fuckLLVM_w
	sw	VirtualReg_1119, 0(VirtualReg_1120)
	lw	VirtualReg_1121, fuckLLVM_w
	lw	VirtualReg_1122, fuckLLVM_w
	addi	VirtualReg_1123, VirtualReg_1122, 1
	la	VirtualReg_1124, fuckLLVM_w
	sw	VirtualReg_1123, 0(VirtualReg_1124)
	lw	VirtualReg_1125, fuckLLVM_w
	addi	VirtualReg_1126, VirtualReg_1125, 1
	la	VirtualReg_1127, fuckLLVM_w
	sw	VirtualReg_1126, 0(VirtualReg_1127)
	lw	VirtualReg_1128, fuckLLVM_w
	lw	VirtualReg_1129, fuckLLVM_w
	addi	VirtualReg_1130, VirtualReg_1129, 1
	la	VirtualReg_1131, fuckLLVM_w
	sw	VirtualReg_1130, 0(VirtualReg_1131)
	lw	VirtualReg_1132, fuckLLVM_w
	addi	VirtualReg_1133, VirtualReg_1132, 1
	la	VirtualReg_1134, fuckLLVM_w
	sw	VirtualReg_1133, 0(VirtualReg_1134)
	lw	VirtualReg_1135, fuckLLVM_w
	lw	VirtualReg_1136, fuckLLVM_w
	addi	VirtualReg_1137, VirtualReg_1136, 1
	la	VirtualReg_1138, fuckLLVM_w
	sw	VirtualReg_1137, 0(VirtualReg_1138)
	lw	VirtualReg_1139, fuckLLVM_w
	addi	VirtualReg_1140, VirtualReg_1139, 1
	la	VirtualReg_1141, fuckLLVM_w
	sw	VirtualReg_1140, 0(VirtualReg_1141)
	lw	VirtualReg_1142, fuckLLVM_w
	lw	VirtualReg_1143, fuckLLVM_w
	addi	VirtualReg_1144, VirtualReg_1143, 1
	la	VirtualReg_1145, fuckLLVM_w
	sw	VirtualReg_1144, 0(VirtualReg_1145)
	lw	VirtualReg_1146, fuckLLVM_w
	addi	VirtualReg_1147, VirtualReg_1146, 1
	la	VirtualReg_1148, fuckLLVM_w
	sw	VirtualReg_1147, 0(VirtualReg_1148)
	lw	VirtualReg_1149, fuckLLVM_w
	lw	VirtualReg_1150, fuckLLVM_w
	addi	VirtualReg_1151, VirtualReg_1150, 1
	la	VirtualReg_1152, fuckLLVM_w
	sw	VirtualReg_1151, 0(VirtualReg_1152)
	lw	VirtualReg_1153, fuckLLVM_w
	addi	VirtualReg_1154, VirtualReg_1153, 1
	la	VirtualReg_1155, fuckLLVM_w
	sw	VirtualReg_1154, 0(VirtualReg_1155)
	lw	VirtualReg_1156, fuckLLVM_w
	lw	VirtualReg_1157, fuckLLVM_w
	addi	VirtualReg_1158, VirtualReg_1157, 1
	la	VirtualReg_1159, fuckLLVM_w
	sw	VirtualReg_1158, 0(VirtualReg_1159)
	lw	VirtualReg_1160, fuckLLVM_w
	addi	VirtualReg_1161, VirtualReg_1160, 1
	la	VirtualReg_1162, fuckLLVM_w
	sw	VirtualReg_1161, 0(VirtualReg_1162)
	lw	VirtualReg_1163, fuckLLVM_w
	lw	VirtualReg_1164, fuckLLVM_w
	addi	VirtualReg_1165, VirtualReg_1164, 1
	la	VirtualReg_1166, fuckLLVM_w
	sw	VirtualReg_1165, 0(VirtualReg_1166)
	lw	VirtualReg_1167, fuckLLVM_w
	addi	VirtualReg_1168, VirtualReg_1167, 1
	la	VirtualReg_1169, fuckLLVM_w
	sw	VirtualReg_1168, 0(VirtualReg_1169)
	lw	VirtualReg_1170, fuckLLVM_w
	lw	VirtualReg_1171, fuckLLVM_w
	addi	VirtualReg_1172, VirtualReg_1171, 1
	la	VirtualReg_1173, fuckLLVM_w
	sw	VirtualReg_1172, 0(VirtualReg_1173)
	lw	VirtualReg_1174, fuckLLVM_w
	addi	VirtualReg_1175, VirtualReg_1174, 1
	la	VirtualReg_1176, fuckLLVM_w
	sw	VirtualReg_1175, 0(VirtualReg_1176)
	lw	VirtualReg_1177, fuckLLVM_w
	lw	VirtualReg_1178, fuckLLVM_w
	addi	VirtualReg_1179, VirtualReg_1178, 1
	la	VirtualReg_1180, fuckLLVM_w
	sw	VirtualReg_1179, 0(VirtualReg_1180)
	lw	VirtualReg_1181, fuckLLVM_w
	addi	VirtualReg_1182, VirtualReg_1181, 1
	la	VirtualReg_1183, fuckLLVM_w
	sw	VirtualReg_1182, 0(VirtualReg_1183)
	lw	VirtualReg_1184, fuckLLVM_w
	lw	VirtualReg_1185, fuckLLVM_w
	addi	VirtualReg_1186, VirtualReg_1185, 1
	la	VirtualReg_1187, fuckLLVM_w
	sw	VirtualReg_1186, 0(VirtualReg_1187)
	lw	VirtualReg_1188, fuckLLVM_w
	addi	VirtualReg_1189, VirtualReg_1188, 1
	la	VirtualReg_1190, fuckLLVM_w
	sw	VirtualReg_1189, 0(VirtualReg_1190)
	lw	VirtualReg_1191, fuckLLVM_w
	lw	VirtualReg_1192, fuckLLVM_w
	addi	VirtualReg_1193, VirtualReg_1192, 1
	la	VirtualReg_1194, fuckLLVM_w
	sw	VirtualReg_1193, 0(VirtualReg_1194)
	lw	VirtualReg_1195, fuckLLVM_w
	addi	VirtualReg_1196, VirtualReg_1195, 1
	la	VirtualReg_1197, fuckLLVM_w
	sw	VirtualReg_1196, 0(VirtualReg_1197)
	lw	VirtualReg_1198, fuckLLVM_w
	lw	VirtualReg_1199, fuckLLVM_w
	addi	VirtualReg_1200, VirtualReg_1199, 1
	la	VirtualReg_1201, fuckLLVM_w
	sw	VirtualReg_1200, 0(VirtualReg_1201)
	lw	VirtualReg_1202, fuckLLVM_w
	addi	VirtualReg_1203, VirtualReg_1202, 1
	la	VirtualReg_1204, fuckLLVM_w
	sw	VirtualReg_1203, 0(VirtualReg_1204)
	lw	VirtualReg_1205, fuckLLVM_w
	lw	VirtualReg_1206, fuckLLVM_w
	addi	VirtualReg_1207, VirtualReg_1206, 1
	la	VirtualReg_1208, fuckLLVM_w
	sw	VirtualReg_1207, 0(VirtualReg_1208)
	lw	VirtualReg_1209, fuckLLVM_w
	addi	VirtualReg_1210, VirtualReg_1209, 1
	la	VirtualReg_1211, fuckLLVM_w
	sw	VirtualReg_1210, 0(VirtualReg_1211)
	lw	VirtualReg_1212, fuckLLVM_w
	lw	VirtualReg_1213, fuckLLVM_w
	addi	VirtualReg_1214, VirtualReg_1213, 1
	la	VirtualReg_1215, fuckLLVM_w
	sw	VirtualReg_1214, 0(VirtualReg_1215)
	lw	VirtualReg_1216, fuckLLVM_w
	addi	VirtualReg_1217, VirtualReg_1216, 1
	la	VirtualReg_1218, fuckLLVM_w
	sw	VirtualReg_1217, 0(VirtualReg_1218)
	lw	VirtualReg_1219, fuckLLVM_w
	lw	VirtualReg_1220, fuckLLVM_w
	addi	VirtualReg_1221, VirtualReg_1220, 1
	la	VirtualReg_1222, fuckLLVM_w
	sw	VirtualReg_1221, 0(VirtualReg_1222)
	lw	VirtualReg_1223, fuckLLVM_w
	addi	VirtualReg_1224, VirtualReg_1223, 1
	la	VirtualReg_1225, fuckLLVM_w
	sw	VirtualReg_1224, 0(VirtualReg_1225)
	lw	VirtualReg_1226, fuckLLVM_w
	lw	VirtualReg_1227, fuckLLVM_w
	addi	VirtualReg_1228, VirtualReg_1227, 1
	la	VirtualReg_1229, fuckLLVM_w
	sw	VirtualReg_1228, 0(VirtualReg_1229)
	lw	VirtualReg_1230, fuckLLVM_w
	addi	VirtualReg_1231, VirtualReg_1230, 1
	la	VirtualReg_1232, fuckLLVM_w
	sw	VirtualReg_1231, 0(VirtualReg_1232)
	lw	VirtualReg_1233, fuckLLVM_w
	lw	VirtualReg_1234, fuckLLVM_w
	addi	VirtualReg_1235, VirtualReg_1234, 1
	la	VirtualReg_1236, fuckLLVM_w
	sw	VirtualReg_1235, 0(VirtualReg_1236)
	lw	VirtualReg_1237, fuckLLVM_w
	addi	VirtualReg_1238, VirtualReg_1237, 1
	la	VirtualReg_1239, fuckLLVM_w
	sw	VirtualReg_1238, 0(VirtualReg_1239)
	lw	VirtualReg_1240, fuckLLVM_w
	lw	VirtualReg_1241, fuckLLVM_w
	addi	VirtualReg_1242, VirtualReg_1241, 1
	la	VirtualReg_1243, fuckLLVM_w
	sw	VirtualReg_1242, 0(VirtualReg_1243)
	lw	VirtualReg_1244, fuckLLVM_w
	addi	VirtualReg_1245, VirtualReg_1244, 1
	la	VirtualReg_1246, fuckLLVM_w
	sw	VirtualReg_1245, 0(VirtualReg_1246)
	lw	VirtualReg_1247, fuckLLVM_w
	lw	VirtualReg_1248, fuckLLVM_w
	addi	VirtualReg_1249, VirtualReg_1248, 1
	la	VirtualReg_1250, fuckLLVM_w
	sw	VirtualReg_1249, 0(VirtualReg_1250)
	lw	VirtualReg_1251, fuckLLVM_w
	addi	VirtualReg_1252, VirtualReg_1251, 1
	la	VirtualReg_1253, fuckLLVM_w
	sw	VirtualReg_1252, 0(VirtualReg_1253)
	lw	VirtualReg_1254, fuckLLVM_w
	lw	VirtualReg_1255, fuckLLVM_w
	addi	VirtualReg_1256, VirtualReg_1255, 1
	la	VirtualReg_1257, fuckLLVM_w
	sw	VirtualReg_1256, 0(VirtualReg_1257)
	lw	VirtualReg_1258, fuckLLVM_w
	addi	VirtualReg_1259, VirtualReg_1258, 1
	la	VirtualReg_1260, fuckLLVM_w
	sw	VirtualReg_1259, 0(VirtualReg_1260)
	lw	VirtualReg_1261, fuckLLVM_w
	lw	VirtualReg_1262, fuckLLVM_w
	addi	VirtualReg_1263, VirtualReg_1262, 1
	la	VirtualReg_1264, fuckLLVM_w
	sw	VirtualReg_1263, 0(VirtualReg_1264)
	lw	VirtualReg_1265, fuckLLVM_w
	addi	VirtualReg_1266, VirtualReg_1265, 1
	la	VirtualReg_1267, fuckLLVM_w
	sw	VirtualReg_1266, 0(VirtualReg_1267)
	lw	VirtualReg_1268, fuckLLVM_w
	lw	VirtualReg_1269, fuckLLVM_w
	addi	VirtualReg_1270, VirtualReg_1269, 1
	la	VirtualReg_1271, fuckLLVM_w
	sw	VirtualReg_1270, 0(VirtualReg_1271)
	lw	VirtualReg_1272, fuckLLVM_w
	addi	VirtualReg_1273, VirtualReg_1272, 1
	la	VirtualReg_1274, fuckLLVM_w
	sw	VirtualReg_1273, 0(VirtualReg_1274)
	lw	VirtualReg_1275, fuckLLVM_w
	lw	VirtualReg_1276, fuckLLVM_w
	addi	VirtualReg_1277, VirtualReg_1276, 1
	la	VirtualReg_1278, fuckLLVM_w
	sw	VirtualReg_1277, 0(VirtualReg_1278)
	lw	VirtualReg_1279, fuckLLVM_w
	addi	VirtualReg_1280, VirtualReg_1279, 1
	la	VirtualReg_1281, fuckLLVM_w
	sw	VirtualReg_1280, 0(VirtualReg_1281)
	lw	VirtualReg_1282, fuckLLVM_w
	lw	VirtualReg_1283, fuckLLVM_w
	addi	VirtualReg_1284, VirtualReg_1283, 1
	la	VirtualReg_1285, fuckLLVM_w
	sw	VirtualReg_1284, 0(VirtualReg_1285)
	lw	VirtualReg_1286, fuckLLVM_w
	addi	VirtualReg_1287, VirtualReg_1286, 1
	la	VirtualReg_1288, fuckLLVM_w
	sw	VirtualReg_1287, 0(VirtualReg_1288)
	lw	VirtualReg_1289, fuckLLVM_w
	lw	VirtualReg_1290, fuckLLVM_w
	addi	VirtualReg_1291, VirtualReg_1290, 1
	la	VirtualReg_1292, fuckLLVM_w
	sw	VirtualReg_1291, 0(VirtualReg_1292)
	lw	VirtualReg_1293, fuckLLVM_w
	addi	VirtualReg_1294, VirtualReg_1293, 1
	la	VirtualReg_1295, fuckLLVM_w
	sw	VirtualReg_1294, 0(VirtualReg_1295)
	lw	VirtualReg_1296, fuckLLVM_w
	lw	VirtualReg_1297, fuckLLVM_w
	addi	VirtualReg_1298, VirtualReg_1297, 1
	la	VirtualReg_1299, fuckLLVM_w
	sw	VirtualReg_1298, 0(VirtualReg_1299)
	lw	VirtualReg_1300, fuckLLVM_w
	addi	VirtualReg_1301, VirtualReg_1300, 1
	la	VirtualReg_1302, fuckLLVM_w
	sw	VirtualReg_1301, 0(VirtualReg_1302)
	lw	VirtualReg_1303, fuckLLVM_w
	lw	VirtualReg_1304, fuckLLVM_w
	addi	VirtualReg_1305, VirtualReg_1304, 1
	la	VirtualReg_1306, fuckLLVM_w
	sw	VirtualReg_1305, 0(VirtualReg_1306)
	lw	VirtualReg_1307, fuckLLVM_w
	addi	VirtualReg_1308, VirtualReg_1307, 1
	la	VirtualReg_1309, fuckLLVM_w
	sw	VirtualReg_1308, 0(VirtualReg_1309)
	lw	VirtualReg_1310, fuckLLVM_w
	lw	VirtualReg_1311, fuckLLVM_w
	addi	VirtualReg_1312, VirtualReg_1311, 1
	la	VirtualReg_1313, fuckLLVM_w
	sw	VirtualReg_1312, 0(VirtualReg_1313)
	lw	VirtualReg_1314, fuckLLVM_w
	addi	VirtualReg_1315, VirtualReg_1314, 1
	la	VirtualReg_1316, fuckLLVM_w
	sw	VirtualReg_1315, 0(VirtualReg_1316)
	lw	VirtualReg_1317, fuckLLVM_w
	lw	VirtualReg_1318, fuckLLVM_w
	addi	VirtualReg_1319, VirtualReg_1318, 1
	la	VirtualReg_1320, fuckLLVM_w
	sw	VirtualReg_1319, 0(VirtualReg_1320)
	lw	VirtualReg_1321, fuckLLVM_w
	addi	VirtualReg_1322, VirtualReg_1321, 1
	la	VirtualReg_1323, fuckLLVM_w
	sw	VirtualReg_1322, 0(VirtualReg_1323)
	lw	VirtualReg_1324, fuckLLVM_w
	lw	VirtualReg_1325, fuckLLVM_w
	addi	VirtualReg_1326, VirtualReg_1325, 1
	la	VirtualReg_1327, fuckLLVM_w
	sw	VirtualReg_1326, 0(VirtualReg_1327)
	lw	VirtualReg_1328, fuckLLVM_w
	addi	VirtualReg_1329, VirtualReg_1328, 1
	la	VirtualReg_1330, fuckLLVM_w
	sw	VirtualReg_1329, 0(VirtualReg_1330)
	lw	VirtualReg_1331, fuckLLVM_w
	lw	VirtualReg_1332, fuckLLVM_w
	addi	VirtualReg_1333, VirtualReg_1332, 1
	la	VirtualReg_1334, fuckLLVM_w
	sw	VirtualReg_1333, 0(VirtualReg_1334)
	lw	VirtualReg_1335, fuckLLVM_w
	addi	VirtualReg_1336, VirtualReg_1335, 1
	la	VirtualReg_1337, fuckLLVM_w
	sw	VirtualReg_1336, 0(VirtualReg_1337)
	lw	VirtualReg_1338, fuckLLVM_w
	lw	VirtualReg_1339, fuckLLVM_w
	addi	VirtualReg_1340, VirtualReg_1339, 1
	la	VirtualReg_1341, fuckLLVM_w
	sw	VirtualReg_1340, 0(VirtualReg_1341)
	lw	VirtualReg_1342, fuckLLVM_w
	addi	VirtualReg_1343, VirtualReg_1342, 1
	la	VirtualReg_1344, fuckLLVM_w
	sw	VirtualReg_1343, 0(VirtualReg_1344)
	lw	VirtualReg_1345, fuckLLVM_w
	lw	VirtualReg_1346, fuckLLVM_w
	addi	VirtualReg_1347, VirtualReg_1346, 1
	la	VirtualReg_1348, fuckLLVM_w
	sw	VirtualReg_1347, 0(VirtualReg_1348)
	lw	VirtualReg_1349, fuckLLVM_w
	addi	VirtualReg_1350, VirtualReg_1349, 1
	la	VirtualReg_1351, fuckLLVM_w
	sw	VirtualReg_1350, 0(VirtualReg_1351)
	lw	VirtualReg_1352, fuckLLVM_w
	lw	VirtualReg_1353, fuckLLVM_w
	addi	VirtualReg_1354, VirtualReg_1353, 1
	la	VirtualReg_1355, fuckLLVM_w
	sw	VirtualReg_1354, 0(VirtualReg_1355)
	lw	VirtualReg_1356, fuckLLVM_w
	addi	VirtualReg_1357, VirtualReg_1356, 1
	la	VirtualReg_1358, fuckLLVM_w
	sw	VirtualReg_1357, 0(VirtualReg_1358)
	lw	VirtualReg_1359, fuckLLVM_w
	lw	VirtualReg_1360, fuckLLVM_w
	addi	VirtualReg_1361, VirtualReg_1360, 1
	la	VirtualReg_1362, fuckLLVM_w
	sw	VirtualReg_1361, 0(VirtualReg_1362)
	lw	VirtualReg_1363, fuckLLVM_w
	addi	VirtualReg_1364, VirtualReg_1363, 1
	la	VirtualReg_1365, fuckLLVM_w
	sw	VirtualReg_1364, 0(VirtualReg_1365)
	lw	VirtualReg_1366, fuckLLVM_w
	lw	VirtualReg_1367, fuckLLVM_w
	addi	VirtualReg_1368, VirtualReg_1367, 1
	la	VirtualReg_1369, fuckLLVM_w
	sw	VirtualReg_1368, 0(VirtualReg_1369)
	lw	VirtualReg_1370, fuckLLVM_w
	addi	VirtualReg_1371, VirtualReg_1370, 1
	la	VirtualReg_1372, fuckLLVM_w
	sw	VirtualReg_1371, 0(VirtualReg_1372)
	lw	VirtualReg_1373, fuckLLVM_w
	lw	VirtualReg_1374, fuckLLVM_w
	addi	VirtualReg_1375, VirtualReg_1374, 1
	la	VirtualReg_1376, fuckLLVM_w
	sw	VirtualReg_1375, 0(VirtualReg_1376)
	lw	VirtualReg_1377, fuckLLVM_w
	addi	VirtualReg_1378, VirtualReg_1377, 1
	la	VirtualReg_1379, fuckLLVM_w
	sw	VirtualReg_1378, 0(VirtualReg_1379)
	lw	VirtualReg_1380, fuckLLVM_w
	lw	VirtualReg_1381, fuckLLVM_w
	addi	VirtualReg_1382, VirtualReg_1381, 1
	la	VirtualReg_1383, fuckLLVM_w
	sw	VirtualReg_1382, 0(VirtualReg_1383)
	lw	VirtualReg_1384, fuckLLVM_w
	addi	VirtualReg_1385, VirtualReg_1384, 1
	la	VirtualReg_1386, fuckLLVM_w
	sw	VirtualReg_1385, 0(VirtualReg_1386)
	lw	VirtualReg_1387, fuckLLVM_w
	lw	VirtualReg_1388, fuckLLVM_w
	addi	VirtualReg_1389, VirtualReg_1388, 1
	la	VirtualReg_1390, fuckLLVM_w
	sw	VirtualReg_1389, 0(VirtualReg_1390)
	lw	VirtualReg_1391, fuckLLVM_w
	addi	VirtualReg_1392, VirtualReg_1391, 1
	la	VirtualReg_1393, fuckLLVM_w
	sw	VirtualReg_1392, 0(VirtualReg_1393)
	lw	VirtualReg_1394, fuckLLVM_w
	lw	VirtualReg_1395, fuckLLVM_w
	addi	VirtualReg_1396, VirtualReg_1395, 1
	la	VirtualReg_1397, fuckLLVM_w
	sw	VirtualReg_1396, 0(VirtualReg_1397)
	lw	VirtualReg_1398, fuckLLVM_w
	addi	VirtualReg_1399, VirtualReg_1398, 1
	la	VirtualReg_1400, fuckLLVM_w
	sw	VirtualReg_1399, 0(VirtualReg_1400)
	lw	VirtualReg_1401, fuckLLVM_w
	lw	VirtualReg_1402, fuckLLVM_w
	addi	VirtualReg_1403, VirtualReg_1402, 1
	la	VirtualReg_1404, fuckLLVM_w
	sw	VirtualReg_1403, 0(VirtualReg_1404)
	lw	VirtualReg_1405, fuckLLVM_w
	addi	VirtualReg_1406, VirtualReg_1405, 1
	la	VirtualReg_1407, fuckLLVM_w
	sw	VirtualReg_1406, 0(VirtualReg_1407)
	lw	VirtualReg_1408, fuckLLVM_w
	lw	VirtualReg_1409, fuckLLVM_w
	addi	VirtualReg_1410, VirtualReg_1409, 1
	la	VirtualReg_1411, fuckLLVM_w
	sw	VirtualReg_1410, 0(VirtualReg_1411)
	lw	VirtualReg_1412, fuckLLVM_w
	addi	VirtualReg_1413, VirtualReg_1412, 1
	la	VirtualReg_1414, fuckLLVM_w
	sw	VirtualReg_1413, 0(VirtualReg_1414)
	lw	VirtualReg_1415, fuckLLVM_w
	lw	VirtualReg_1416, fuckLLVM_w
	addi	VirtualReg_1417, VirtualReg_1416, 1
	la	VirtualReg_1418, fuckLLVM_w
	sw	VirtualReg_1417, 0(VirtualReg_1418)
	lw	VirtualReg_1419, fuckLLVM_w
	addi	VirtualReg_1420, VirtualReg_1419, 1
	la	VirtualReg_1421, fuckLLVM_w
	sw	VirtualReg_1420, 0(VirtualReg_1421)
	lw	VirtualReg_1422, fuckLLVM_w
	lw	VirtualReg_1423, fuckLLVM_w
	addi	VirtualReg_1424, VirtualReg_1423, 1
	la	VirtualReg_1425, fuckLLVM_w
	sw	VirtualReg_1424, 0(VirtualReg_1425)
	lw	VirtualReg_1426, fuckLLVM_w
	addi	VirtualReg_1427, VirtualReg_1426, 1
	la	VirtualReg_1428, fuckLLVM_w
	sw	VirtualReg_1427, 0(VirtualReg_1428)
	lw	VirtualReg_1429, fuckLLVM_w
	lw	VirtualReg_1430, fuckLLVM_w
	addi	VirtualReg_1431, VirtualReg_1430, 1
	la	VirtualReg_1432, fuckLLVM_w
	sw	VirtualReg_1431, 0(VirtualReg_1432)
	lw	VirtualReg_1433, fuckLLVM_w
	addi	VirtualReg_1434, VirtualReg_1433, 1
	la	VirtualReg_1435, fuckLLVM_w
	sw	VirtualReg_1434, 0(VirtualReg_1435)
	lw	VirtualReg_1436, fuckLLVM_w
	lw	VirtualReg_1437, fuckLLVM_w
	addi	VirtualReg_1438, VirtualReg_1437, 1
	la	VirtualReg_1439, fuckLLVM_w
	sw	VirtualReg_1438, 0(VirtualReg_1439)
	lw	VirtualReg_1440, fuckLLVM_w
	addi	VirtualReg_1441, VirtualReg_1440, 1
	la	VirtualReg_1442, fuckLLVM_w
	sw	VirtualReg_1441, 0(VirtualReg_1442)
	lw	VirtualReg_1443, fuckLLVM_w
	lw	VirtualReg_1444, fuckLLVM_w
	addi	VirtualReg_1445, VirtualReg_1444, 1
	la	VirtualReg_1446, fuckLLVM_w
	sw	VirtualReg_1445, 0(VirtualReg_1446)
	lw	VirtualReg_1447, fuckLLVM_w
	addi	VirtualReg_1448, VirtualReg_1447, 1
	la	VirtualReg_1449, fuckLLVM_w
	sw	VirtualReg_1448, 0(VirtualReg_1449)
	lw	VirtualReg_1450, fuckLLVM_w
	lw	VirtualReg_1451, fuckLLVM_w
	addi	VirtualReg_1452, VirtualReg_1451, 1
	la	VirtualReg_1453, fuckLLVM_w
	sw	VirtualReg_1452, 0(VirtualReg_1453)
	lw	VirtualReg_1454, fuckLLVM_w
	addi	VirtualReg_1455, VirtualReg_1454, 1
	la	VirtualReg_1456, fuckLLVM_w
	sw	VirtualReg_1455, 0(VirtualReg_1456)
	lw	VirtualReg_1457, fuckLLVM_w
	lw	VirtualReg_1458, fuckLLVM_w
	addi	VirtualReg_1459, VirtualReg_1458, 1
	la	VirtualReg_1460, fuckLLVM_w
	sw	VirtualReg_1459, 0(VirtualReg_1460)
	lw	VirtualReg_1461, fuckLLVM_w
	addi	VirtualReg_1462, VirtualReg_1461, 1
	la	VirtualReg_1463, fuckLLVM_w
	sw	VirtualReg_1462, 0(VirtualReg_1463)
	lw	VirtualReg_1464, fuckLLVM_w
	lw	VirtualReg_1465, fuckLLVM_w
	addi	VirtualReg_1466, VirtualReg_1465, 1
	la	VirtualReg_1467, fuckLLVM_w
	sw	VirtualReg_1466, 0(VirtualReg_1467)
	lw	VirtualReg_1468, fuckLLVM_w
	addi	VirtualReg_1469, VirtualReg_1468, 1
	la	VirtualReg_1470, fuckLLVM_w
	sw	VirtualReg_1469, 0(VirtualReg_1470)
	lw	VirtualReg_1471, fuckLLVM_w
	lw	VirtualReg_1472, fuckLLVM_w
	addi	VirtualReg_1473, VirtualReg_1472, 1
	la	VirtualReg_1474, fuckLLVM_w
	sw	VirtualReg_1473, 0(VirtualReg_1474)
	lw	VirtualReg_1475, fuckLLVM_w
	addi	VirtualReg_1476, VirtualReg_1475, 1
	la	VirtualReg_1477, fuckLLVM_w
	sw	VirtualReg_1476, 0(VirtualReg_1477)
	lw	VirtualReg_1478, fuckLLVM_w
	lw	VirtualReg_1479, fuckLLVM_w
	addi	VirtualReg_1480, VirtualReg_1479, 1
	la	VirtualReg_1481, fuckLLVM_w
	sw	VirtualReg_1480, 0(VirtualReg_1481)
	lw	VirtualReg_1482, fuckLLVM_w
	addi	VirtualReg_1483, VirtualReg_1482, 1
	la	VirtualReg_1484, fuckLLVM_w
	sw	VirtualReg_1483, 0(VirtualReg_1484)
	lw	VirtualReg_1485, fuckLLVM_w
	call	bblock
	mv	VirtualReg_1486, a0
	call	bblock
	mv	VirtualReg_1487, a0
	mv	VirtualReg_13, VirtualReg_1487
	j	.sanity_check_call_wP_60_wP_return
.sanity_check_call_wP_60_wP_return:
	j	.sanity_check_call_wP_60_out
.sanity_check_call_wP_60:
	li	VirtualReg_1492, 3
	mv	VirtualReg_14, VirtualReg_1492
	j	.sanity_check_call_wP_60_wP_ID4_for_suite
.sanity_check_return:
	mv	a0, VirtualReg_12
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
	j	.main_call___init_61
.main_call___init_61:
	li	VirtualReg_1490, 3
	mv	VirtualReg_16, VirtualReg_1490
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID4_for_suite
.main_call_sanity_check_62_sanity_check_call_wP_60_out:
	addi	VirtualReg_12, VirtualReg_13, 1
	li	VirtualReg_15, 3
	sub	VirtualReg_14, VirtualReg_12, VirtualReg_15
	j	.main_return
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID4_for_suite:
	li	VirtualReg_18, 1
	sra	VirtualReg_17, VirtualReg_16, VirtualReg_18
	li	VirtualReg_1491, 2
	mv	VirtualReg_19, VirtualReg_1491
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_condition
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_condition:
	slt	VirtualReg_20, VirtualReg_19, VirtualReg_17
	bnez	VirtualReg_20, .main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_suite
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_condition_mid
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_condition_mid:
	mv	VirtualReg_26, VirtualReg_16
	li	VirtualReg_1492, 1
	mv	VirtualReg_27, VirtualReg_1492
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_suite:
	rem	VirtualReg_21, VirtualReg_16, VirtualReg_19
	li	VirtualReg_23, 0
	xor	VirtualReg_22, VirtualReg_21, VirtualReg_23
	sltiu	VirtualReg_22, VirtualReg_22, 1
	bnez	VirtualReg_22, .main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID13_if_true
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_incr
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID13_if_true:
	addi	VirtualReg_24, VirtualReg_16, 1
	mv	VirtualReg_26, VirtualReg_24
	li	VirtualReg_1493, 0
	mv	VirtualReg_27, VirtualReg_1493
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_incr:
	addi	VirtualReg_25, VirtualReg_19, 1
	mv	VirtualReg_19, VirtualReg_25
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_condition
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_out_mid:
	li	VirtualReg_1494, 0
	mv	VirtualReg_35, VirtualReg_1494
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID19_AndAnd_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_out:
	li	VirtualReg_29, 0
	slt	VirtualReg_28, VirtualReg_29, VirtualReg_26
	bnez	VirtualReg_28, .main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID19_AndAnd_true
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_out_mid
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID19_AndAnd_true:
	add	VirtualReg_30, VirtualReg_26, VirtualReg_27
	li	VirtualReg_32, 9
	rem	VirtualReg_31, VirtualReg_30, VirtualReg_32
	li	VirtualReg_34, 0
	xor	VirtualReg_33, VirtualReg_31, VirtualReg_34
	sltiu	VirtualReg_33, VirtualReg_33, 1
	mv	VirtualReg_35, VirtualReg_33
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID19_AndAnd_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID19_AndAnd_out:
	bnez	VirtualReg_35, .main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID4_for_out
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID25_if_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID25_if_out:
	lw	VirtualReg_36, fuckLLVM_N
	add	VirtualReg_37, VirtualReg_36, VirtualReg_27
	la	VirtualReg_38, fuckLLVM_N
	sw	VirtualReg_37, 0(VirtualReg_38)
	add	VirtualReg_39, VirtualReg_26, VirtualReg_27
	addi	VirtualReg_40, VirtualReg_39, 1
	mv	VirtualReg_16, VirtualReg_40
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID4_for_suite
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID4_for_out:
	lw	VirtualReg_41, fuckLLVM_N
	lw	VirtualReg_42, fuckLLVM_w
	addi	VirtualReg_43, VirtualReg_42, 1
	la	VirtualReg_44, fuckLLVM_w
	sw	VirtualReg_43, 0(VirtualReg_44)
	lw	VirtualReg_45, fuckLLVM_w
	addi	VirtualReg_46, VirtualReg_45, 1
	la	VirtualReg_47, fuckLLVM_w
	sw	VirtualReg_46, 0(VirtualReg_47)
	lw	VirtualReg_48, fuckLLVM_w
	lw	VirtualReg_49, fuckLLVM_w
	addi	VirtualReg_50, VirtualReg_49, 1
	la	VirtualReg_51, fuckLLVM_w
	sw	VirtualReg_50, 0(VirtualReg_51)
	lw	VirtualReg_52, fuckLLVM_w
	addi	VirtualReg_53, VirtualReg_52, 1
	la	VirtualReg_54, fuckLLVM_w
	sw	VirtualReg_53, 0(VirtualReg_54)
	lw	VirtualReg_55, fuckLLVM_w
	lw	VirtualReg_56, fuckLLVM_w
	addi	VirtualReg_57, VirtualReg_56, 1
	la	VirtualReg_58, fuckLLVM_w
	sw	VirtualReg_57, 0(VirtualReg_58)
	lw	VirtualReg_59, fuckLLVM_w
	addi	VirtualReg_60, VirtualReg_59, 1
	la	VirtualReg_61, fuckLLVM_w
	sw	VirtualReg_60, 0(VirtualReg_61)
	lw	VirtualReg_62, fuckLLVM_w
	lw	VirtualReg_63, fuckLLVM_w
	addi	VirtualReg_64, VirtualReg_63, 1
	la	VirtualReg_65, fuckLLVM_w
	sw	VirtualReg_64, 0(VirtualReg_65)
	lw	VirtualReg_66, fuckLLVM_w
	addi	VirtualReg_67, VirtualReg_66, 1
	la	VirtualReg_68, fuckLLVM_w
	sw	VirtualReg_67, 0(VirtualReg_68)
	lw	VirtualReg_69, fuckLLVM_w
	lw	VirtualReg_70, fuckLLVM_w
	addi	VirtualReg_71, VirtualReg_70, 1
	la	VirtualReg_72, fuckLLVM_w
	sw	VirtualReg_71, 0(VirtualReg_72)
	lw	VirtualReg_73, fuckLLVM_w
	addi	VirtualReg_74, VirtualReg_73, 1
	la	VirtualReg_75, fuckLLVM_w
	sw	VirtualReg_74, 0(VirtualReg_75)
	lw	VirtualReg_76, fuckLLVM_w
	lw	VirtualReg_77, fuckLLVM_w
	addi	VirtualReg_78, VirtualReg_77, 1
	la	VirtualReg_79, fuckLLVM_w
	sw	VirtualReg_78, 0(VirtualReg_79)
	lw	VirtualReg_80, fuckLLVM_w
	addi	VirtualReg_81, VirtualReg_80, 1
	la	VirtualReg_82, fuckLLVM_w
	sw	VirtualReg_81, 0(VirtualReg_82)
	lw	VirtualReg_83, fuckLLVM_w
	lw	VirtualReg_84, fuckLLVM_w
	addi	VirtualReg_85, VirtualReg_84, 1
	la	VirtualReg_86, fuckLLVM_w
	sw	VirtualReg_85, 0(VirtualReg_86)
	lw	VirtualReg_87, fuckLLVM_w
	addi	VirtualReg_88, VirtualReg_87, 1
	la	VirtualReg_89, fuckLLVM_w
	sw	VirtualReg_88, 0(VirtualReg_89)
	lw	VirtualReg_90, fuckLLVM_w
	lw	VirtualReg_91, fuckLLVM_w
	addi	VirtualReg_92, VirtualReg_91, 1
	la	VirtualReg_93, fuckLLVM_w
	sw	VirtualReg_92, 0(VirtualReg_93)
	lw	VirtualReg_94, fuckLLVM_w
	addi	VirtualReg_95, VirtualReg_94, 1
	la	VirtualReg_96, fuckLLVM_w
	sw	VirtualReg_95, 0(VirtualReg_96)
	lw	VirtualReg_97, fuckLLVM_w
	lw	VirtualReg_98, fuckLLVM_w
	addi	VirtualReg_99, VirtualReg_98, 1
	la	VirtualReg_100, fuckLLVM_w
	sw	VirtualReg_99, 0(VirtualReg_100)
	lw	VirtualReg_101, fuckLLVM_w
	addi	VirtualReg_102, VirtualReg_101, 1
	la	VirtualReg_103, fuckLLVM_w
	sw	VirtualReg_102, 0(VirtualReg_103)
	lw	VirtualReg_104, fuckLLVM_w
	lw	VirtualReg_105, fuckLLVM_w
	addi	VirtualReg_106, VirtualReg_105, 1
	la	VirtualReg_107, fuckLLVM_w
	sw	VirtualReg_106, 0(VirtualReg_107)
	lw	VirtualReg_108, fuckLLVM_w
	addi	VirtualReg_109, VirtualReg_108, 1
	la	VirtualReg_110, fuckLLVM_w
	sw	VirtualReg_109, 0(VirtualReg_110)
	lw	VirtualReg_111, fuckLLVM_w
	lw	VirtualReg_112, fuckLLVM_w
	addi	VirtualReg_113, VirtualReg_112, 1
	la	VirtualReg_114, fuckLLVM_w
	sw	VirtualReg_113, 0(VirtualReg_114)
	lw	VirtualReg_115, fuckLLVM_w
	addi	VirtualReg_116, VirtualReg_115, 1
	la	VirtualReg_117, fuckLLVM_w
	sw	VirtualReg_116, 0(VirtualReg_117)
	lw	VirtualReg_118, fuckLLVM_w
	lw	VirtualReg_119, fuckLLVM_w
	addi	VirtualReg_120, VirtualReg_119, 1
	la	VirtualReg_121, fuckLLVM_w
	sw	VirtualReg_120, 0(VirtualReg_121)
	lw	VirtualReg_122, fuckLLVM_w
	addi	VirtualReg_123, VirtualReg_122, 1
	la	VirtualReg_124, fuckLLVM_w
	sw	VirtualReg_123, 0(VirtualReg_124)
	lw	VirtualReg_125, fuckLLVM_w
	lw	VirtualReg_126, fuckLLVM_w
	addi	VirtualReg_127, VirtualReg_126, 1
	la	VirtualReg_128, fuckLLVM_w
	sw	VirtualReg_127, 0(VirtualReg_128)
	lw	VirtualReg_129, fuckLLVM_w
	addi	VirtualReg_130, VirtualReg_129, 1
	la	VirtualReg_131, fuckLLVM_w
	sw	VirtualReg_130, 0(VirtualReg_131)
	lw	VirtualReg_132, fuckLLVM_w
	lw	VirtualReg_133, fuckLLVM_w
	addi	VirtualReg_134, VirtualReg_133, 1
	la	VirtualReg_135, fuckLLVM_w
	sw	VirtualReg_134, 0(VirtualReg_135)
	lw	VirtualReg_136, fuckLLVM_w
	addi	VirtualReg_137, VirtualReg_136, 1
	la	VirtualReg_138, fuckLLVM_w
	sw	VirtualReg_137, 0(VirtualReg_138)
	lw	VirtualReg_139, fuckLLVM_w
	lw	VirtualReg_140, fuckLLVM_w
	addi	VirtualReg_141, VirtualReg_140, 1
	la	VirtualReg_142, fuckLLVM_w
	sw	VirtualReg_141, 0(VirtualReg_142)
	lw	VirtualReg_143, fuckLLVM_w
	addi	VirtualReg_144, VirtualReg_143, 1
	la	VirtualReg_145, fuckLLVM_w
	sw	VirtualReg_144, 0(VirtualReg_145)
	lw	VirtualReg_146, fuckLLVM_w
	lw	VirtualReg_147, fuckLLVM_w
	addi	VirtualReg_148, VirtualReg_147, 1
	la	VirtualReg_149, fuckLLVM_w
	sw	VirtualReg_148, 0(VirtualReg_149)
	lw	VirtualReg_150, fuckLLVM_w
	addi	VirtualReg_151, VirtualReg_150, 1
	la	VirtualReg_152, fuckLLVM_w
	sw	VirtualReg_151, 0(VirtualReg_152)
	lw	VirtualReg_153, fuckLLVM_w
	lw	VirtualReg_154, fuckLLVM_w
	addi	VirtualReg_155, VirtualReg_154, 1
	la	VirtualReg_156, fuckLLVM_w
	sw	VirtualReg_155, 0(VirtualReg_156)
	lw	VirtualReg_157, fuckLLVM_w
	addi	VirtualReg_158, VirtualReg_157, 1
	la	VirtualReg_159, fuckLLVM_w
	sw	VirtualReg_158, 0(VirtualReg_159)
	lw	VirtualReg_160, fuckLLVM_w
	lw	VirtualReg_161, fuckLLVM_w
	addi	VirtualReg_162, VirtualReg_161, 1
	la	VirtualReg_163, fuckLLVM_w
	sw	VirtualReg_162, 0(VirtualReg_163)
	lw	VirtualReg_164, fuckLLVM_w
	addi	VirtualReg_165, VirtualReg_164, 1
	la	VirtualReg_166, fuckLLVM_w
	sw	VirtualReg_165, 0(VirtualReg_166)
	lw	VirtualReg_167, fuckLLVM_w
	lw	VirtualReg_168, fuckLLVM_w
	addi	VirtualReg_169, VirtualReg_168, 1
	la	VirtualReg_170, fuckLLVM_w
	sw	VirtualReg_169, 0(VirtualReg_170)
	lw	VirtualReg_171, fuckLLVM_w
	addi	VirtualReg_172, VirtualReg_171, 1
	la	VirtualReg_173, fuckLLVM_w
	sw	VirtualReg_172, 0(VirtualReg_173)
	lw	VirtualReg_174, fuckLLVM_w
	lw	VirtualReg_175, fuckLLVM_w
	addi	VirtualReg_176, VirtualReg_175, 1
	la	VirtualReg_177, fuckLLVM_w
	sw	VirtualReg_176, 0(VirtualReg_177)
	lw	VirtualReg_178, fuckLLVM_w
	addi	VirtualReg_179, VirtualReg_178, 1
	la	VirtualReg_180, fuckLLVM_w
	sw	VirtualReg_179, 0(VirtualReg_180)
	lw	VirtualReg_181, fuckLLVM_w
	lw	VirtualReg_182, fuckLLVM_w
	addi	VirtualReg_183, VirtualReg_182, 1
	la	VirtualReg_184, fuckLLVM_w
	sw	VirtualReg_183, 0(VirtualReg_184)
	lw	VirtualReg_185, fuckLLVM_w
	addi	VirtualReg_186, VirtualReg_185, 1
	la	VirtualReg_187, fuckLLVM_w
	sw	VirtualReg_186, 0(VirtualReg_187)
	lw	VirtualReg_188, fuckLLVM_w
	lw	VirtualReg_189, fuckLLVM_w
	addi	VirtualReg_190, VirtualReg_189, 1
	la	VirtualReg_191, fuckLLVM_w
	sw	VirtualReg_190, 0(VirtualReg_191)
	lw	VirtualReg_192, fuckLLVM_w
	addi	VirtualReg_193, VirtualReg_192, 1
	la	VirtualReg_194, fuckLLVM_w
	sw	VirtualReg_193, 0(VirtualReg_194)
	lw	VirtualReg_195, fuckLLVM_w
	lw	VirtualReg_196, fuckLLVM_w
	addi	VirtualReg_197, VirtualReg_196, 1
	la	VirtualReg_198, fuckLLVM_w
	sw	VirtualReg_197, 0(VirtualReg_198)
	lw	VirtualReg_199, fuckLLVM_w
	addi	VirtualReg_200, VirtualReg_199, 1
	la	VirtualReg_201, fuckLLVM_w
	sw	VirtualReg_200, 0(VirtualReg_201)
	lw	VirtualReg_202, fuckLLVM_w
	lw	VirtualReg_203, fuckLLVM_w
	addi	VirtualReg_204, VirtualReg_203, 1
	la	VirtualReg_205, fuckLLVM_w
	sw	VirtualReg_204, 0(VirtualReg_205)
	lw	VirtualReg_206, fuckLLVM_w
	addi	VirtualReg_207, VirtualReg_206, 1
	la	VirtualReg_208, fuckLLVM_w
	sw	VirtualReg_207, 0(VirtualReg_208)
	lw	VirtualReg_209, fuckLLVM_w
	lw	VirtualReg_210, fuckLLVM_w
	addi	VirtualReg_211, VirtualReg_210, 1
	la	VirtualReg_212, fuckLLVM_w
	sw	VirtualReg_211, 0(VirtualReg_212)
	lw	VirtualReg_213, fuckLLVM_w
	addi	VirtualReg_214, VirtualReg_213, 1
	la	VirtualReg_215, fuckLLVM_w
	sw	VirtualReg_214, 0(VirtualReg_215)
	lw	VirtualReg_216, fuckLLVM_w
	lw	VirtualReg_217, fuckLLVM_w
	addi	VirtualReg_218, VirtualReg_217, 1
	la	VirtualReg_219, fuckLLVM_w
	sw	VirtualReg_218, 0(VirtualReg_219)
	lw	VirtualReg_220, fuckLLVM_w
	addi	VirtualReg_221, VirtualReg_220, 1
	la	VirtualReg_222, fuckLLVM_w
	sw	VirtualReg_221, 0(VirtualReg_222)
	lw	VirtualReg_223, fuckLLVM_w
	lw	VirtualReg_224, fuckLLVM_w
	addi	VirtualReg_225, VirtualReg_224, 1
	la	VirtualReg_226, fuckLLVM_w
	sw	VirtualReg_225, 0(VirtualReg_226)
	lw	VirtualReg_227, fuckLLVM_w
	addi	VirtualReg_228, VirtualReg_227, 1
	la	VirtualReg_229, fuckLLVM_w
	sw	VirtualReg_228, 0(VirtualReg_229)
	lw	VirtualReg_230, fuckLLVM_w
	lw	VirtualReg_231, fuckLLVM_w
	addi	VirtualReg_232, VirtualReg_231, 1
	la	VirtualReg_233, fuckLLVM_w
	sw	VirtualReg_232, 0(VirtualReg_233)
	lw	VirtualReg_234, fuckLLVM_w
	addi	VirtualReg_235, VirtualReg_234, 1
	la	VirtualReg_236, fuckLLVM_w
	sw	VirtualReg_235, 0(VirtualReg_236)
	lw	VirtualReg_237, fuckLLVM_w
	lw	VirtualReg_238, fuckLLVM_w
	addi	VirtualReg_239, VirtualReg_238, 1
	la	VirtualReg_240, fuckLLVM_w
	sw	VirtualReg_239, 0(VirtualReg_240)
	lw	VirtualReg_241, fuckLLVM_w
	addi	VirtualReg_242, VirtualReg_241, 1
	la	VirtualReg_243, fuckLLVM_w
	sw	VirtualReg_242, 0(VirtualReg_243)
	lw	VirtualReg_244, fuckLLVM_w
	lw	VirtualReg_245, fuckLLVM_w
	addi	VirtualReg_246, VirtualReg_245, 1
	la	VirtualReg_247, fuckLLVM_w
	sw	VirtualReg_246, 0(VirtualReg_247)
	lw	VirtualReg_248, fuckLLVM_w
	addi	VirtualReg_249, VirtualReg_248, 1
	la	VirtualReg_250, fuckLLVM_w
	sw	VirtualReg_249, 0(VirtualReg_250)
	lw	VirtualReg_251, fuckLLVM_w
	lw	VirtualReg_252, fuckLLVM_w
	addi	VirtualReg_253, VirtualReg_252, 1
	la	VirtualReg_254, fuckLLVM_w
	sw	VirtualReg_253, 0(VirtualReg_254)
	lw	VirtualReg_255, fuckLLVM_w
	addi	VirtualReg_256, VirtualReg_255, 1
	la	VirtualReg_257, fuckLLVM_w
	sw	VirtualReg_256, 0(VirtualReg_257)
	lw	VirtualReg_258, fuckLLVM_w
	lw	VirtualReg_259, fuckLLVM_w
	addi	VirtualReg_260, VirtualReg_259, 1
	la	VirtualReg_261, fuckLLVM_w
	sw	VirtualReg_260, 0(VirtualReg_261)
	lw	VirtualReg_262, fuckLLVM_w
	addi	VirtualReg_263, VirtualReg_262, 1
	la	VirtualReg_264, fuckLLVM_w
	sw	VirtualReg_263, 0(VirtualReg_264)
	lw	VirtualReg_265, fuckLLVM_w
	lw	VirtualReg_266, fuckLLVM_w
	addi	VirtualReg_267, VirtualReg_266, 1
	la	VirtualReg_268, fuckLLVM_w
	sw	VirtualReg_267, 0(VirtualReg_268)
	lw	VirtualReg_269, fuckLLVM_w
	addi	VirtualReg_270, VirtualReg_269, 1
	la	VirtualReg_271, fuckLLVM_w
	sw	VirtualReg_270, 0(VirtualReg_271)
	lw	VirtualReg_272, fuckLLVM_w
	lw	VirtualReg_273, fuckLLVM_w
	addi	VirtualReg_274, VirtualReg_273, 1
	la	VirtualReg_275, fuckLLVM_w
	sw	VirtualReg_274, 0(VirtualReg_275)
	lw	VirtualReg_276, fuckLLVM_w
	addi	VirtualReg_277, VirtualReg_276, 1
	la	VirtualReg_278, fuckLLVM_w
	sw	VirtualReg_277, 0(VirtualReg_278)
	lw	VirtualReg_279, fuckLLVM_w
	lw	VirtualReg_280, fuckLLVM_w
	addi	VirtualReg_281, VirtualReg_280, 1
	la	VirtualReg_282, fuckLLVM_w
	sw	VirtualReg_281, 0(VirtualReg_282)
	lw	VirtualReg_283, fuckLLVM_w
	addi	VirtualReg_284, VirtualReg_283, 1
	la	VirtualReg_285, fuckLLVM_w
	sw	VirtualReg_284, 0(VirtualReg_285)
	lw	VirtualReg_286, fuckLLVM_w
	lw	VirtualReg_287, fuckLLVM_w
	addi	VirtualReg_288, VirtualReg_287, 1
	la	VirtualReg_289, fuckLLVM_w
	sw	VirtualReg_288, 0(VirtualReg_289)
	lw	VirtualReg_290, fuckLLVM_w
	addi	VirtualReg_291, VirtualReg_290, 1
	la	VirtualReg_292, fuckLLVM_w
	sw	VirtualReg_291, 0(VirtualReg_292)
	lw	VirtualReg_293, fuckLLVM_w
	lw	VirtualReg_294, fuckLLVM_w
	addi	VirtualReg_295, VirtualReg_294, 1
	la	VirtualReg_296, fuckLLVM_w
	sw	VirtualReg_295, 0(VirtualReg_296)
	lw	VirtualReg_297, fuckLLVM_w
	addi	VirtualReg_298, VirtualReg_297, 1
	la	VirtualReg_299, fuckLLVM_w
	sw	VirtualReg_298, 0(VirtualReg_299)
	lw	VirtualReg_300, fuckLLVM_w
	lw	VirtualReg_301, fuckLLVM_w
	addi	VirtualReg_302, VirtualReg_301, 1
	la	VirtualReg_303, fuckLLVM_w
	sw	VirtualReg_302, 0(VirtualReg_303)
	lw	VirtualReg_304, fuckLLVM_w
	addi	VirtualReg_305, VirtualReg_304, 1
	la	VirtualReg_306, fuckLLVM_w
	sw	VirtualReg_305, 0(VirtualReg_306)
	lw	VirtualReg_307, fuckLLVM_w
	lw	VirtualReg_308, fuckLLVM_w
	addi	VirtualReg_309, VirtualReg_308, 1
	la	VirtualReg_310, fuckLLVM_w
	sw	VirtualReg_309, 0(VirtualReg_310)
	lw	VirtualReg_311, fuckLLVM_w
	addi	VirtualReg_312, VirtualReg_311, 1
	la	VirtualReg_313, fuckLLVM_w
	sw	VirtualReg_312, 0(VirtualReg_313)
	lw	VirtualReg_314, fuckLLVM_w
	lw	VirtualReg_315, fuckLLVM_w
	addi	VirtualReg_316, VirtualReg_315, 1
	la	VirtualReg_317, fuckLLVM_w
	sw	VirtualReg_316, 0(VirtualReg_317)
	lw	VirtualReg_318, fuckLLVM_w
	addi	VirtualReg_319, VirtualReg_318, 1
	la	VirtualReg_320, fuckLLVM_w
	sw	VirtualReg_319, 0(VirtualReg_320)
	lw	VirtualReg_321, fuckLLVM_w
	lw	VirtualReg_322, fuckLLVM_w
	addi	VirtualReg_323, VirtualReg_322, 1
	la	VirtualReg_324, fuckLLVM_w
	sw	VirtualReg_323, 0(VirtualReg_324)
	lw	VirtualReg_325, fuckLLVM_w
	addi	VirtualReg_326, VirtualReg_325, 1
	la	VirtualReg_327, fuckLLVM_w
	sw	VirtualReg_326, 0(VirtualReg_327)
	lw	VirtualReg_328, fuckLLVM_w
	lw	VirtualReg_329, fuckLLVM_w
	addi	VirtualReg_330, VirtualReg_329, 1
	la	VirtualReg_331, fuckLLVM_w
	sw	VirtualReg_330, 0(VirtualReg_331)
	lw	VirtualReg_332, fuckLLVM_w
	addi	VirtualReg_333, VirtualReg_332, 1
	la	VirtualReg_334, fuckLLVM_w
	sw	VirtualReg_333, 0(VirtualReg_334)
	lw	VirtualReg_335, fuckLLVM_w
	lw	VirtualReg_336, fuckLLVM_w
	addi	VirtualReg_337, VirtualReg_336, 1
	la	VirtualReg_338, fuckLLVM_w
	sw	VirtualReg_337, 0(VirtualReg_338)
	lw	VirtualReg_339, fuckLLVM_w
	addi	VirtualReg_340, VirtualReg_339, 1
	la	VirtualReg_341, fuckLLVM_w
	sw	VirtualReg_340, 0(VirtualReg_341)
	lw	VirtualReg_342, fuckLLVM_w
	lw	VirtualReg_343, fuckLLVM_w
	addi	VirtualReg_344, VirtualReg_343, 1
	la	VirtualReg_345, fuckLLVM_w
	sw	VirtualReg_344, 0(VirtualReg_345)
	lw	VirtualReg_346, fuckLLVM_w
	addi	VirtualReg_347, VirtualReg_346, 1
	la	VirtualReg_348, fuckLLVM_w
	sw	VirtualReg_347, 0(VirtualReg_348)
	lw	VirtualReg_349, fuckLLVM_w
	lw	VirtualReg_350, fuckLLVM_w
	addi	VirtualReg_351, VirtualReg_350, 1
	la	VirtualReg_352, fuckLLVM_w
	sw	VirtualReg_351, 0(VirtualReg_352)
	lw	VirtualReg_353, fuckLLVM_w
	addi	VirtualReg_354, VirtualReg_353, 1
	la	VirtualReg_355, fuckLLVM_w
	sw	VirtualReg_354, 0(VirtualReg_355)
	lw	VirtualReg_356, fuckLLVM_w
	lw	VirtualReg_357, fuckLLVM_w
	addi	VirtualReg_358, VirtualReg_357, 1
	la	VirtualReg_359, fuckLLVM_w
	sw	VirtualReg_358, 0(VirtualReg_359)
	lw	VirtualReg_360, fuckLLVM_w
	addi	VirtualReg_361, VirtualReg_360, 1
	la	VirtualReg_362, fuckLLVM_w
	sw	VirtualReg_361, 0(VirtualReg_362)
	lw	VirtualReg_363, fuckLLVM_w
	lw	VirtualReg_364, fuckLLVM_w
	addi	VirtualReg_365, VirtualReg_364, 1
	la	VirtualReg_366, fuckLLVM_w
	sw	VirtualReg_365, 0(VirtualReg_366)
	lw	VirtualReg_367, fuckLLVM_w
	addi	VirtualReg_368, VirtualReg_367, 1
	la	VirtualReg_369, fuckLLVM_w
	sw	VirtualReg_368, 0(VirtualReg_369)
	lw	VirtualReg_370, fuckLLVM_w
	lw	VirtualReg_371, fuckLLVM_w
	addi	VirtualReg_372, VirtualReg_371, 1
	la	VirtualReg_373, fuckLLVM_w
	sw	VirtualReg_372, 0(VirtualReg_373)
	lw	VirtualReg_374, fuckLLVM_w
	addi	VirtualReg_375, VirtualReg_374, 1
	la	VirtualReg_376, fuckLLVM_w
	sw	VirtualReg_375, 0(VirtualReg_376)
	lw	VirtualReg_377, fuckLLVM_w
	lw	VirtualReg_378, fuckLLVM_w
	addi	VirtualReg_379, VirtualReg_378, 1
	la	VirtualReg_380, fuckLLVM_w
	sw	VirtualReg_379, 0(VirtualReg_380)
	lw	VirtualReg_381, fuckLLVM_w
	addi	VirtualReg_382, VirtualReg_381, 1
	la	VirtualReg_383, fuckLLVM_w
	sw	VirtualReg_382, 0(VirtualReg_383)
	lw	VirtualReg_384, fuckLLVM_w
	lw	VirtualReg_385, fuckLLVM_w
	addi	VirtualReg_386, VirtualReg_385, 1
	la	VirtualReg_387, fuckLLVM_w
	sw	VirtualReg_386, 0(VirtualReg_387)
	lw	VirtualReg_388, fuckLLVM_w
	addi	VirtualReg_389, VirtualReg_388, 1
	la	VirtualReg_390, fuckLLVM_w
	sw	VirtualReg_389, 0(VirtualReg_390)
	lw	VirtualReg_391, fuckLLVM_w
	lw	VirtualReg_392, fuckLLVM_w
	addi	VirtualReg_393, VirtualReg_392, 1
	la	VirtualReg_394, fuckLLVM_w
	sw	VirtualReg_393, 0(VirtualReg_394)
	lw	VirtualReg_395, fuckLLVM_w
	addi	VirtualReg_396, VirtualReg_395, 1
	la	VirtualReg_397, fuckLLVM_w
	sw	VirtualReg_396, 0(VirtualReg_397)
	lw	VirtualReg_398, fuckLLVM_w
	lw	VirtualReg_399, fuckLLVM_w
	addi	VirtualReg_400, VirtualReg_399, 1
	la	VirtualReg_401, fuckLLVM_w
	sw	VirtualReg_400, 0(VirtualReg_401)
	lw	VirtualReg_402, fuckLLVM_w
	addi	VirtualReg_403, VirtualReg_402, 1
	la	VirtualReg_404, fuckLLVM_w
	sw	VirtualReg_403, 0(VirtualReg_404)
	lw	VirtualReg_405, fuckLLVM_w
	lw	VirtualReg_406, fuckLLVM_w
	addi	VirtualReg_407, VirtualReg_406, 1
	la	VirtualReg_408, fuckLLVM_w
	sw	VirtualReg_407, 0(VirtualReg_408)
	lw	VirtualReg_409, fuckLLVM_w
	addi	VirtualReg_410, VirtualReg_409, 1
	la	VirtualReg_411, fuckLLVM_w
	sw	VirtualReg_410, 0(VirtualReg_411)
	lw	VirtualReg_412, fuckLLVM_w
	lw	VirtualReg_413, fuckLLVM_w
	addi	VirtualReg_414, VirtualReg_413, 1
	la	VirtualReg_415, fuckLLVM_w
	sw	VirtualReg_414, 0(VirtualReg_415)
	lw	VirtualReg_416, fuckLLVM_w
	addi	VirtualReg_417, VirtualReg_416, 1
	la	VirtualReg_418, fuckLLVM_w
	sw	VirtualReg_417, 0(VirtualReg_418)
	lw	VirtualReg_419, fuckLLVM_w
	lw	VirtualReg_420, fuckLLVM_w
	addi	VirtualReg_421, VirtualReg_420, 1
	la	VirtualReg_422, fuckLLVM_w
	sw	VirtualReg_421, 0(VirtualReg_422)
	lw	VirtualReg_423, fuckLLVM_w
	addi	VirtualReg_424, VirtualReg_423, 1
	la	VirtualReg_425, fuckLLVM_w
	sw	VirtualReg_424, 0(VirtualReg_425)
	lw	VirtualReg_426, fuckLLVM_w
	lw	VirtualReg_427, fuckLLVM_w
	addi	VirtualReg_428, VirtualReg_427, 1
	la	VirtualReg_429, fuckLLVM_w
	sw	VirtualReg_428, 0(VirtualReg_429)
	lw	VirtualReg_430, fuckLLVM_w
	addi	VirtualReg_431, VirtualReg_430, 1
	la	VirtualReg_432, fuckLLVM_w
	sw	VirtualReg_431, 0(VirtualReg_432)
	lw	VirtualReg_433, fuckLLVM_w
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_call_wpppp_53_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_call_wpppp_53_out:
	add	VirtualReg_434, VirtualReg_41, VirtualReg_433
	li	VirtualReg_436, 2
	rem	VirtualReg_435, VirtualReg_434, VirtualReg_436
	li	VirtualReg_438, 0
	xor	VirtualReg_437, VirtualReg_435, VirtualReg_438
	sltiu	VirtualReg_437, VirtualReg_437, 1
	bnez	VirtualReg_437, .main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID38_if_true
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID38_if_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID38_if_true:
	lw	VirtualReg_439, fuckLLVM_N
	mv	a0, VirtualReg_439
	call	add2048
	mv	VirtualReg_440, a0
	mv	a0, VirtualReg_440
	call	add2048
	mv	VirtualReg_441, a0
	mv	a0, VirtualReg_441
	call	add2048
	mv	VirtualReg_442, a0
	mv	a0, VirtualReg_442
	call	add2048
	mv	VirtualReg_443, a0
	mv	a0, VirtualReg_443
	call	add2048
	mv	VirtualReg_444, a0
	mv	a0, VirtualReg_444
	call	add2048
	mv	VirtualReg_445, a0
	mv	a0, VirtualReg_445
	call	add2048
	mv	VirtualReg_446, a0
	mv	a0, VirtualReg_446
	call	add2048
	mv	VirtualReg_447, a0
	mv	a0, VirtualReg_447
	call	add2048
	mv	VirtualReg_448, a0
	mv	a0, VirtualReg_448
	call	add2048
	mv	VirtualReg_449, a0
	mv	a0, VirtualReg_449
	call	add2048
	mv	VirtualReg_450, a0
	mv	a0, VirtualReg_450
	call	add2048
	mv	VirtualReg_451, a0
	mv	a0, VirtualReg_451
	call	add2048
	mv	VirtualReg_452, a0
	mv	a0, VirtualReg_452
	call	add2048
	mv	VirtualReg_453, a0
	mv	a0, VirtualReg_453
	call	add2048
	mv	VirtualReg_454, a0
	mv	a0, VirtualReg_454
	call	add2048
	mv	VirtualReg_455, a0
	mv	a0, VirtualReg_455
	call	add2048
	mv	VirtualReg_456, a0
	mv	a0, VirtualReg_456
	call	add2048
	mv	VirtualReg_457, a0
	mv	a0, VirtualReg_457
	call	add2048
	mv	VirtualReg_458, a0
	mv	a0, VirtualReg_458
	call	add2048
	mv	VirtualReg_459, a0
	mv	a0, VirtualReg_459
	call	add2048
	mv	VirtualReg_460, a0
	mv	a0, VirtualReg_460
	call	add2048
	mv	VirtualReg_461, a0
	mv	a0, VirtualReg_461
	call	add2048
	mv	VirtualReg_462, a0
	mv	a0, VirtualReg_462
	call	add2048
	mv	VirtualReg_463, a0
	mv	a0, VirtualReg_463
	call	add2048
	mv	VirtualReg_464, a0
	mv	a0, VirtualReg_464
	call	add2048
	mv	VirtualReg_465, a0
	mv	a0, VirtualReg_465
	call	add2048
	mv	VirtualReg_466, a0
	mv	a0, VirtualReg_466
	call	add2048
	mv	VirtualReg_467, a0
	mv	a0, VirtualReg_467
	call	add2048
	mv	VirtualReg_468, a0
	mv	a0, VirtualReg_468
	call	add2048
	mv	VirtualReg_469, a0
	mv	a0, VirtualReg_469
	call	add2048
	mv	VirtualReg_470, a0
	mv	a0, VirtualReg_470
	call	add2048
	mv	VirtualReg_471, a0
	mv	a0, VirtualReg_471
	call	add2048
	mv	VirtualReg_472, a0
	mv	a0, VirtualReg_472
	call	add2048
	mv	VirtualReg_473, a0
	mv	a0, VirtualReg_473
	call	add2048
	mv	VirtualReg_474, a0
	mv	a0, VirtualReg_474
	call	add2048
	mv	VirtualReg_475, a0
	mv	a0, VirtualReg_475
	call	add2048
	mv	VirtualReg_476, a0
	mv	a0, VirtualReg_476
	call	add2048
	mv	VirtualReg_477, a0
	mv	a0, VirtualReg_477
	call	add2048
	mv	VirtualReg_478, a0
	mv	a0, VirtualReg_478
	call	add2048
	mv	VirtualReg_479, a0
	mv	a0, VirtualReg_479
	call	add2048
	mv	VirtualReg_480, a0
	mv	a0, VirtualReg_480
	call	add2048
	mv	VirtualReg_481, a0
	mv	a0, VirtualReg_481
	call	add2048
	mv	VirtualReg_482, a0
	mv	a0, VirtualReg_482
	call	add2048
	mv	VirtualReg_483, a0
	mv	a0, VirtualReg_483
	call	add2048
	mv	VirtualReg_484, a0
	mv	a0, VirtualReg_484
	call	add2048
	mv	VirtualReg_485, a0
	mv	a0, VirtualReg_485
	call	add2048
	mv	VirtualReg_486, a0
	mv	a0, VirtualReg_486
	call	add2048
	mv	VirtualReg_487, a0
	mv	a0, VirtualReg_487
	call	add2048
	mv	VirtualReg_488, a0
	mv	a0, VirtualReg_488
	call	add2048
	mv	VirtualReg_489, a0
	mv	a0, VirtualReg_489
	call	add2048
	mv	VirtualReg_490, a0
	mv	a0, VirtualReg_490
	call	add2048
	mv	VirtualReg_491, a0
	mv	a0, VirtualReg_491
	call	add2048
	mv	VirtualReg_492, a0
	mv	a0, VirtualReg_492
	call	add2048
	mv	VirtualReg_493, a0
	mv	a0, VirtualReg_493
	call	add2048
	mv	VirtualReg_494, a0
	mv	a0, VirtualReg_494
	call	add2048
	mv	VirtualReg_495, a0
	mv	a0, VirtualReg_495
	call	add2048
	mv	VirtualReg_496, a0
	mv	a0, VirtualReg_496
	call	add2048
	mv	VirtualReg_497, a0
	mv	a0, VirtualReg_497
	call	add2048
	mv	VirtualReg_498, a0
	mv	a0, VirtualReg_498
	call	add2048
	mv	VirtualReg_499, a0
	mv	a0, VirtualReg_499
	call	add2048
	mv	VirtualReg_500, a0
	mv	a0, VirtualReg_500
	call	add2048
	mv	VirtualReg_501, a0
	mv	a0, VirtualReg_501
	call	add2048
	mv	VirtualReg_502, a0
	mv	a0, VirtualReg_502
	call	add2048
	mv	VirtualReg_503, a0
	mv	a0, VirtualReg_503
	call	add2048
	mv	VirtualReg_504, a0
	mv	a0, VirtualReg_504
	call	add2048
	mv	VirtualReg_505, a0
	mv	a0, VirtualReg_505
	call	add2048
	mv	VirtualReg_506, a0
	mv	a0, VirtualReg_506
	call	add2048
	mv	VirtualReg_507, a0
	mv	a0, VirtualReg_507
	call	add2048
	mv	VirtualReg_508, a0
	mv	a0, VirtualReg_508
	call	add2048
	mv	VirtualReg_509, a0
	mv	a0, VirtualReg_509
	call	add2048
	mv	VirtualReg_510, a0
	mv	a0, VirtualReg_510
	call	add2048
	mv	VirtualReg_511, a0
	mv	a0, VirtualReg_511
	call	add2048
	mv	VirtualReg_512, a0
	mv	a0, VirtualReg_512
	call	add2048
	mv	VirtualReg_513, a0
	mv	a0, VirtualReg_513
	call	add2048
	mv	VirtualReg_514, a0
	mv	a0, VirtualReg_514
	call	add2048
	mv	VirtualReg_515, a0
	mv	a0, VirtualReg_515
	call	add2048
	mv	VirtualReg_516, a0
	mv	a0, VirtualReg_516
	call	add2048
	mv	VirtualReg_517, a0
	mv	a0, VirtualReg_517
	call	add2048
	mv	VirtualReg_518, a0
	mv	a0, VirtualReg_518
	call	add2048
	mv	VirtualReg_519, a0
	mv	a0, VirtualReg_519
	call	add2048
	mv	VirtualReg_520, a0
	mv	a0, VirtualReg_520
	call	add2048
	mv	VirtualReg_521, a0
	mv	a0, VirtualReg_521
	call	add2048
	mv	VirtualReg_522, a0
	mv	a0, VirtualReg_522
	call	add2048
	mv	VirtualReg_523, a0
	mv	a0, VirtualReg_523
	call	add2048
	mv	VirtualReg_524, a0
	mv	a0, VirtualReg_524
	call	add2048
	mv	VirtualReg_525, a0
	mv	a0, VirtualReg_525
	call	add2048
	mv	VirtualReg_526, a0
	mv	a0, VirtualReg_526
	call	add2048
	mv	VirtualReg_527, a0
	mv	a0, VirtualReg_527
	call	add2048
	mv	VirtualReg_528, a0
	mv	a0, VirtualReg_528
	call	add2048
	mv	VirtualReg_529, a0
	mv	a0, VirtualReg_529
	call	add2048
	mv	VirtualReg_530, a0
	mv	a0, VirtualReg_530
	call	add2048
	mv	VirtualReg_531, a0
	mv	a0, VirtualReg_531
	call	add2048
	mv	VirtualReg_532, a0
	mv	a0, VirtualReg_532
	call	add2048
	mv	VirtualReg_533, a0
	mv	a0, VirtualReg_533
	call	add2048
	mv	VirtualReg_534, a0
	mv	a0, VirtualReg_534
	call	add2048
	mv	VirtualReg_535, a0
	mv	a0, VirtualReg_535
	call	add2048
	mv	VirtualReg_536, a0
	mv	a0, VirtualReg_536
	call	add2048
	mv	VirtualReg_537, a0
	mv	a0, VirtualReg_537
	call	add2048
	mv	VirtualReg_538, a0
	mv	a0, VirtualReg_538
	call	add2048
	mv	VirtualReg_539, a0
	mv	a0, VirtualReg_539
	call	add2048
	mv	VirtualReg_540, a0
	mv	a0, VirtualReg_540
	call	add2048
	mv	VirtualReg_541, a0
	mv	a0, VirtualReg_541
	call	add2048
	mv	VirtualReg_542, a0
	mv	a0, VirtualReg_542
	call	add2048
	mv	VirtualReg_543, a0
	mv	a0, VirtualReg_543
	call	add2048
	mv	VirtualReg_544, a0
	mv	a0, VirtualReg_544
	call	add2048
	mv	VirtualReg_545, a0
	mv	a0, VirtualReg_545
	call	add2048
	mv	VirtualReg_546, a0
	mv	a0, VirtualReg_546
	call	add2048
	mv	VirtualReg_547, a0
	mv	a0, VirtualReg_547
	call	add2048
	mv	VirtualReg_548, a0
	mv	a0, VirtualReg_548
	call	add2048
	mv	VirtualReg_549, a0
	mv	a0, VirtualReg_549
	call	add2048
	mv	VirtualReg_550, a0
	mv	a0, VirtualReg_550
	call	add2048
	mv	VirtualReg_551, a0
	mv	a0, VirtualReg_551
	call	add2048
	mv	VirtualReg_552, a0
	mv	a0, VirtualReg_552
	call	add2048
	mv	VirtualReg_553, a0
	mv	a0, VirtualReg_553
	call	add2048
	mv	VirtualReg_554, a0
	mv	a0, VirtualReg_554
	call	add2048
	mv	VirtualReg_555, a0
	mv	a0, VirtualReg_555
	call	add2048
	mv	VirtualReg_556, a0
	mv	a0, VirtualReg_556
	call	add2048
	mv	VirtualReg_557, a0
	mv	a0, VirtualReg_557
	call	add2048
	mv	VirtualReg_558, a0
	mv	a0, VirtualReg_558
	call	add2048
	mv	VirtualReg_559, a0
	mv	a0, VirtualReg_559
	call	add2048
	mv	VirtualReg_560, a0
	mv	a0, VirtualReg_560
	call	add2048
	mv	VirtualReg_561, a0
	mv	a0, VirtualReg_561
	call	add2048
	mv	VirtualReg_562, a0
	mv	a0, VirtualReg_562
	call	add2048
	mv	VirtualReg_563, a0
	mv	a0, VirtualReg_563
	call	add2048
	mv	VirtualReg_564, a0
	mv	a0, VirtualReg_564
	call	add2048
	mv	VirtualReg_565, a0
	mv	a0, VirtualReg_565
	call	add2048
	mv	VirtualReg_566, a0
	mv	a0, VirtualReg_566
	call	add2048
	mv	VirtualReg_567, a0
	mv	a0, VirtualReg_567
	call	add2048
	mv	VirtualReg_568, a0
	mv	a0, VirtualReg_568
	call	add2048
	mv	VirtualReg_569, a0
	mv	a0, VirtualReg_569
	call	add2048
	mv	VirtualReg_570, a0
	mv	a0, VirtualReg_570
	call	add2048
	mv	VirtualReg_571, a0
	mv	a0, VirtualReg_571
	call	add2048
	mv	VirtualReg_572, a0
	mv	a0, VirtualReg_572
	call	add2048
	mv	VirtualReg_573, a0
	mv	a0, VirtualReg_573
	call	add2048
	mv	VirtualReg_574, a0
	mv	a0, VirtualReg_574
	call	add2048
	mv	VirtualReg_575, a0
	mv	a0, VirtualReg_575
	call	add2048
	mv	VirtualReg_576, a0
	mv	a0, VirtualReg_576
	call	add2048
	mv	VirtualReg_577, a0
	mv	a0, VirtualReg_577
	call	add2048
	mv	VirtualReg_578, a0
	mv	a0, VirtualReg_578
	call	add2048
	mv	VirtualReg_579, a0
	mv	a0, VirtualReg_579
	call	add2048
	mv	VirtualReg_580, a0
	mv	a0, VirtualReg_580
	call	add2048
	mv	VirtualReg_581, a0
	mv	a0, VirtualReg_581
	call	add2048
	mv	VirtualReg_582, a0
	mv	a0, VirtualReg_582
	call	add2048
	mv	VirtualReg_583, a0
	mv	a0, VirtualReg_583
	call	add2048
	mv	VirtualReg_584, a0
	mv	a0, VirtualReg_584
	call	add2048
	mv	VirtualReg_585, a0
	mv	a0, VirtualReg_585
	call	add2048
	mv	VirtualReg_586, a0
	mv	a0, VirtualReg_586
	call	add2048
	mv	VirtualReg_587, a0
	mv	a0, VirtualReg_587
	call	add2048
	mv	VirtualReg_588, a0
	mv	a0, VirtualReg_588
	call	add2048
	mv	VirtualReg_589, a0
	mv	a0, VirtualReg_589
	call	add2048
	mv	VirtualReg_590, a0
	mv	a0, VirtualReg_590
	call	add2048
	mv	VirtualReg_591, a0
	mv	a0, VirtualReg_591
	call	add2048
	mv	VirtualReg_592, a0
	mv	a0, VirtualReg_592
	call	add2048
	mv	VirtualReg_593, a0
	mv	a0, VirtualReg_593
	call	add2048
	mv	VirtualReg_594, a0
	mv	a0, VirtualReg_594
	call	add2048
	mv	VirtualReg_595, a0
	mv	a0, VirtualReg_595
	call	add2048
	mv	VirtualReg_596, a0
	mv	a0, VirtualReg_596
	call	add2048
	mv	VirtualReg_597, a0
	mv	a0, VirtualReg_597
	call	add2048
	mv	VirtualReg_598, a0
	mv	a0, VirtualReg_598
	call	add2048
	mv	VirtualReg_599, a0
	mv	a0, VirtualReg_599
	call	add2048
	mv	VirtualReg_600, a0
	mv	a0, VirtualReg_600
	call	add2048
	mv	VirtualReg_601, a0
	mv	a0, VirtualReg_601
	call	add2048
	mv	VirtualReg_602, a0
	mv	a0, VirtualReg_602
	call	add2048
	mv	VirtualReg_603, a0
	mv	a0, VirtualReg_603
	call	add2048
	mv	VirtualReg_604, a0
	mv	a0, VirtualReg_604
	call	add2048
	mv	VirtualReg_605, a0
	mv	a0, VirtualReg_605
	call	add2048
	mv	VirtualReg_606, a0
	mv	a0, VirtualReg_606
	call	add2048
	mv	VirtualReg_607, a0
	mv	a0, VirtualReg_607
	call	add2048
	mv	VirtualReg_608, a0
	mv	a0, VirtualReg_608
	call	add2048
	mv	VirtualReg_609, a0
	mv	a0, VirtualReg_609
	call	add2048
	mv	VirtualReg_610, a0
	mv	a0, VirtualReg_610
	call	add2048
	mv	VirtualReg_611, a0
	mv	a0, VirtualReg_611
	call	add2048
	mv	VirtualReg_612, a0
	mv	a0, VirtualReg_612
	call	add2048
	mv	VirtualReg_613, a0
	mv	a0, VirtualReg_613
	call	add2048
	mv	VirtualReg_614, a0
	mv	a0, VirtualReg_614
	call	add2048
	mv	VirtualReg_615, a0
	mv	a0, VirtualReg_615
	call	add2048
	mv	VirtualReg_616, a0
	mv	a0, VirtualReg_616
	call	add2048
	mv	VirtualReg_617, a0
	mv	a0, VirtualReg_617
	call	add2048
	mv	VirtualReg_618, a0
	mv	a0, VirtualReg_618
	call	add2048
	mv	VirtualReg_619, a0
	mv	a0, VirtualReg_619
	call	add2048
	mv	VirtualReg_620, a0
	mv	a0, VirtualReg_620
	call	add2048
	mv	VirtualReg_621, a0
	mv	a0, VirtualReg_621
	call	add2048
	mv	VirtualReg_622, a0
	mv	a0, VirtualReg_622
	call	add2048
	mv	VirtualReg_623, a0
	mv	a0, VirtualReg_623
	call	add2048
	mv	VirtualReg_624, a0
	mv	a0, VirtualReg_624
	call	add2048
	mv	VirtualReg_625, a0
	mv	a0, VirtualReg_625
	call	add2048
	mv	VirtualReg_626, a0
	mv	a0, VirtualReg_626
	call	add2048
	mv	VirtualReg_627, a0
	mv	a0, VirtualReg_627
	call	add2048
	mv	VirtualReg_628, a0
	mv	a0, VirtualReg_628
	call	add2048
	mv	VirtualReg_629, a0
	mv	a0, VirtualReg_629
	call	add2048
	mv	VirtualReg_630, a0
	mv	a0, VirtualReg_630
	call	add2048
	mv	VirtualReg_631, a0
	mv	a0, VirtualReg_631
	call	add2048
	mv	VirtualReg_632, a0
	mv	a0, VirtualReg_632
	call	add2048
	mv	VirtualReg_633, a0
	mv	a0, VirtualReg_633
	call	add2048
	mv	VirtualReg_634, a0
	mv	a0, VirtualReg_634
	call	add2048
	mv	VirtualReg_635, a0
	mv	a0, VirtualReg_635
	call	add2048
	mv	VirtualReg_636, a0
	mv	a0, VirtualReg_636
	call	add2048
	mv	VirtualReg_637, a0
	mv	a0, VirtualReg_637
	call	add2048
	mv	VirtualReg_638, a0
	mv	a0, VirtualReg_638
	call	add2048
	mv	VirtualReg_639, a0
	mv	a0, VirtualReg_639
	call	add2048
	mv	VirtualReg_640, a0
	mv	a0, VirtualReg_640
	call	add2048
	mv	VirtualReg_641, a0
	mv	a0, VirtualReg_641
	call	add2048
	mv	VirtualReg_642, a0
	mv	a0, VirtualReg_642
	call	add2048
	mv	VirtualReg_643, a0
	mv	a0, VirtualReg_643
	call	add2048
	mv	VirtualReg_644, a0
	mv	a0, VirtualReg_644
	call	add2048
	mv	VirtualReg_645, a0
	mv	a0, VirtualReg_645
	call	add2048
	mv	VirtualReg_646, a0
	mv	a0, VirtualReg_646
	call	add2048
	mv	VirtualReg_647, a0
	mv	a0, VirtualReg_647
	call	add2048
	mv	VirtualReg_648, a0
	mv	a0, VirtualReg_648
	call	add2048
	mv	VirtualReg_649, a0
	mv	a0, VirtualReg_649
	call	add2048
	mv	VirtualReg_650, a0
	mv	a0, VirtualReg_650
	call	add2048
	mv	VirtualReg_651, a0
	mv	a0, VirtualReg_651
	call	add2048
	mv	VirtualReg_652, a0
	mv	a0, VirtualReg_652
	call	add2048
	mv	VirtualReg_653, a0
	mv	a0, VirtualReg_653
	call	add2048
	mv	VirtualReg_654, a0
	mv	a0, VirtualReg_654
	call	add2048
	mv	VirtualReg_655, a0
	mv	a0, VirtualReg_655
	call	add2048
	mv	VirtualReg_656, a0
	mv	a0, VirtualReg_656
	call	add2048
	mv	VirtualReg_657, a0
	mv	a0, VirtualReg_657
	call	add2048
	mv	VirtualReg_658, a0
	mv	a0, VirtualReg_658
	call	add2048
	mv	VirtualReg_659, a0
	mv	a0, VirtualReg_659
	call	add2048
	mv	VirtualReg_660, a0
	mv	a0, VirtualReg_660
	call	add2048
	mv	VirtualReg_661, a0
	mv	a0, VirtualReg_661
	call	add2048
	mv	VirtualReg_662, a0
	mv	a0, VirtualReg_662
	call	add2048
	mv	VirtualReg_663, a0
	mv	a0, VirtualReg_663
	call	add2048
	mv	VirtualReg_664, a0
	mv	a0, VirtualReg_664
	call	add2048
	mv	VirtualReg_665, a0
	mv	a0, VirtualReg_665
	call	add2048
	mv	VirtualReg_666, a0
	mv	a0, VirtualReg_666
	call	add2048
	mv	VirtualReg_667, a0
	mv	a0, VirtualReg_667
	call	add2048
	mv	VirtualReg_668, a0
	mv	a0, VirtualReg_668
	call	add2048
	mv	VirtualReg_669, a0
	mv	a0, VirtualReg_669
	call	add2048
	mv	VirtualReg_670, a0
	mv	a0, VirtualReg_670
	call	add2048
	mv	VirtualReg_671, a0
	mv	a0, VirtualReg_671
	call	add2048
	mv	VirtualReg_672, a0
	mv	a0, VirtualReg_672
	call	add2048
	mv	VirtualReg_673, a0
	mv	a0, VirtualReg_673
	call	add2048
	mv	VirtualReg_674, a0
	mv	a0, VirtualReg_674
	call	add2048
	mv	VirtualReg_675, a0
	mv	a0, VirtualReg_675
	call	add2048
	mv	VirtualReg_676, a0
	mv	a0, VirtualReg_676
	call	add2048
	mv	VirtualReg_677, a0
	mv	a0, VirtualReg_677
	call	add2048
	mv	VirtualReg_678, a0
	mv	a0, VirtualReg_678
	call	add2048
	mv	VirtualReg_679, a0
	mv	a0, VirtualReg_679
	call	add2048
	mv	VirtualReg_680, a0
	mv	a0, VirtualReg_680
	call	add2048
	mv	VirtualReg_681, a0
	mv	a0, VirtualReg_681
	call	add2048
	mv	VirtualReg_682, a0
	mv	a0, VirtualReg_682
	call	add2048
	mv	VirtualReg_683, a0
	mv	a0, VirtualReg_683
	call	add2048
	mv	VirtualReg_684, a0
	mv	a0, VirtualReg_684
	call	add2048
	mv	VirtualReg_685, a0
	mv	a0, VirtualReg_685
	call	add2048
	mv	VirtualReg_686, a0
	mv	a0, VirtualReg_686
	call	add2048
	mv	VirtualReg_687, a0
	mv	a0, VirtualReg_687
	call	add2048
	mv	VirtualReg_688, a0
	mv	a0, VirtualReg_688
	call	add2048
	mv	VirtualReg_689, a0
	mv	a0, VirtualReg_689
	call	add2048
	mv	VirtualReg_690, a0
	mv	a0, VirtualReg_690
	call	add2048
	mv	VirtualReg_691, a0
	mv	a0, VirtualReg_691
	call	add2048
	mv	VirtualReg_692, a0
	mv	a0, VirtualReg_692
	call	add2048
	mv	VirtualReg_693, a0
	mv	a0, VirtualReg_693
	call	add2048
	mv	VirtualReg_694, a0
	mv	a0, VirtualReg_694
	call	add2048
	mv	VirtualReg_695, a0
	li	VirtualReg_697, 524288
	sub	VirtualReg_696, VirtualReg_695, VirtualReg_697
	li	VirtualReg_699, 4
	sub	VirtualReg_698, VirtualReg_696, VirtualReg_699
	mv	VirtualReg_13, VirtualReg_698
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_return
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID38_if_out:
	call	block
	mv	VirtualReg_700, a0
	call	block
	mv	VirtualReg_701, a0
	call	block
	mv	VirtualReg_702, a0
	call	block
	mv	VirtualReg_703, a0
	lw	VirtualReg_704, fuckLLVM_w
	addi	VirtualReg_705, VirtualReg_704, 1
	la	VirtualReg_706, fuckLLVM_w
	sw	VirtualReg_705, 0(VirtualReg_706)
	lw	VirtualReg_707, fuckLLVM_w
	addi	VirtualReg_708, VirtualReg_707, 1
	la	VirtualReg_709, fuckLLVM_w
	sw	VirtualReg_708, 0(VirtualReg_709)
	lw	VirtualReg_710, fuckLLVM_w
	lw	VirtualReg_711, fuckLLVM_w
	addi	VirtualReg_712, VirtualReg_711, 1
	la	VirtualReg_713, fuckLLVM_w
	sw	VirtualReg_712, 0(VirtualReg_713)
	lw	VirtualReg_714, fuckLLVM_w
	addi	VirtualReg_715, VirtualReg_714, 1
	la	VirtualReg_716, fuckLLVM_w
	sw	VirtualReg_715, 0(VirtualReg_716)
	lw	VirtualReg_717, fuckLLVM_w
	lw	VirtualReg_718, fuckLLVM_w
	addi	VirtualReg_719, VirtualReg_718, 1
	la	VirtualReg_720, fuckLLVM_w
	sw	VirtualReg_719, 0(VirtualReg_720)
	lw	VirtualReg_721, fuckLLVM_w
	addi	VirtualReg_722, VirtualReg_721, 1
	la	VirtualReg_723, fuckLLVM_w
	sw	VirtualReg_722, 0(VirtualReg_723)
	lw	VirtualReg_724, fuckLLVM_w
	lw	VirtualReg_725, fuckLLVM_w
	addi	VirtualReg_726, VirtualReg_725, 1
	la	VirtualReg_727, fuckLLVM_w
	sw	VirtualReg_726, 0(VirtualReg_727)
	lw	VirtualReg_728, fuckLLVM_w
	addi	VirtualReg_729, VirtualReg_728, 1
	la	VirtualReg_730, fuckLLVM_w
	sw	VirtualReg_729, 0(VirtualReg_730)
	lw	VirtualReg_731, fuckLLVM_w
	lw	VirtualReg_732, fuckLLVM_w
	addi	VirtualReg_733, VirtualReg_732, 1
	la	VirtualReg_734, fuckLLVM_w
	sw	VirtualReg_733, 0(VirtualReg_734)
	lw	VirtualReg_735, fuckLLVM_w
	addi	VirtualReg_736, VirtualReg_735, 1
	la	VirtualReg_737, fuckLLVM_w
	sw	VirtualReg_736, 0(VirtualReg_737)
	lw	VirtualReg_738, fuckLLVM_w
	lw	VirtualReg_739, fuckLLVM_w
	addi	VirtualReg_740, VirtualReg_739, 1
	la	VirtualReg_741, fuckLLVM_w
	sw	VirtualReg_740, 0(VirtualReg_741)
	lw	VirtualReg_742, fuckLLVM_w
	addi	VirtualReg_743, VirtualReg_742, 1
	la	VirtualReg_744, fuckLLVM_w
	sw	VirtualReg_743, 0(VirtualReg_744)
	lw	VirtualReg_745, fuckLLVM_w
	lw	VirtualReg_746, fuckLLVM_w
	addi	VirtualReg_747, VirtualReg_746, 1
	la	VirtualReg_748, fuckLLVM_w
	sw	VirtualReg_747, 0(VirtualReg_748)
	lw	VirtualReg_749, fuckLLVM_w
	addi	VirtualReg_750, VirtualReg_749, 1
	la	VirtualReg_751, fuckLLVM_w
	sw	VirtualReg_750, 0(VirtualReg_751)
	lw	VirtualReg_752, fuckLLVM_w
	lw	VirtualReg_753, fuckLLVM_w
	addi	VirtualReg_754, VirtualReg_753, 1
	la	VirtualReg_755, fuckLLVM_w
	sw	VirtualReg_754, 0(VirtualReg_755)
	lw	VirtualReg_756, fuckLLVM_w
	addi	VirtualReg_757, VirtualReg_756, 1
	la	VirtualReg_758, fuckLLVM_w
	sw	VirtualReg_757, 0(VirtualReg_758)
	lw	VirtualReg_759, fuckLLVM_w
	lw	VirtualReg_760, fuckLLVM_w
	addi	VirtualReg_761, VirtualReg_760, 1
	la	VirtualReg_762, fuckLLVM_w
	sw	VirtualReg_761, 0(VirtualReg_762)
	lw	VirtualReg_763, fuckLLVM_w
	addi	VirtualReg_764, VirtualReg_763, 1
	la	VirtualReg_765, fuckLLVM_w
	sw	VirtualReg_764, 0(VirtualReg_765)
	lw	VirtualReg_766, fuckLLVM_w
	lw	VirtualReg_767, fuckLLVM_w
	addi	VirtualReg_768, VirtualReg_767, 1
	la	VirtualReg_769, fuckLLVM_w
	sw	VirtualReg_768, 0(VirtualReg_769)
	lw	VirtualReg_770, fuckLLVM_w
	addi	VirtualReg_771, VirtualReg_770, 1
	la	VirtualReg_772, fuckLLVM_w
	sw	VirtualReg_771, 0(VirtualReg_772)
	lw	VirtualReg_773, fuckLLVM_w
	lw	VirtualReg_774, fuckLLVM_w
	addi	VirtualReg_775, VirtualReg_774, 1
	la	VirtualReg_776, fuckLLVM_w
	sw	VirtualReg_775, 0(VirtualReg_776)
	lw	VirtualReg_777, fuckLLVM_w
	addi	VirtualReg_778, VirtualReg_777, 1
	la	VirtualReg_779, fuckLLVM_w
	sw	VirtualReg_778, 0(VirtualReg_779)
	lw	VirtualReg_780, fuckLLVM_w
	lw	VirtualReg_781, fuckLLVM_w
	addi	VirtualReg_782, VirtualReg_781, 1
	la	VirtualReg_783, fuckLLVM_w
	sw	VirtualReg_782, 0(VirtualReg_783)
	lw	VirtualReg_784, fuckLLVM_w
	addi	VirtualReg_785, VirtualReg_784, 1
	la	VirtualReg_786, fuckLLVM_w
	sw	VirtualReg_785, 0(VirtualReg_786)
	lw	VirtualReg_787, fuckLLVM_w
	lw	VirtualReg_788, fuckLLVM_w
	addi	VirtualReg_789, VirtualReg_788, 1
	la	VirtualReg_790, fuckLLVM_w
	sw	VirtualReg_789, 0(VirtualReg_790)
	lw	VirtualReg_791, fuckLLVM_w
	addi	VirtualReg_792, VirtualReg_791, 1
	la	VirtualReg_793, fuckLLVM_w
	sw	VirtualReg_792, 0(VirtualReg_793)
	lw	VirtualReg_794, fuckLLVM_w
	lw	VirtualReg_795, fuckLLVM_w
	addi	VirtualReg_796, VirtualReg_795, 1
	la	VirtualReg_797, fuckLLVM_w
	sw	VirtualReg_796, 0(VirtualReg_797)
	lw	VirtualReg_798, fuckLLVM_w
	addi	VirtualReg_799, VirtualReg_798, 1
	la	VirtualReg_800, fuckLLVM_w
	sw	VirtualReg_799, 0(VirtualReg_800)
	lw	VirtualReg_801, fuckLLVM_w
	lw	VirtualReg_802, fuckLLVM_w
	addi	VirtualReg_803, VirtualReg_802, 1
	la	VirtualReg_804, fuckLLVM_w
	sw	VirtualReg_803, 0(VirtualReg_804)
	lw	VirtualReg_805, fuckLLVM_w
	addi	VirtualReg_806, VirtualReg_805, 1
	la	VirtualReg_807, fuckLLVM_w
	sw	VirtualReg_806, 0(VirtualReg_807)
	lw	VirtualReg_808, fuckLLVM_w
	lw	VirtualReg_809, fuckLLVM_w
	addi	VirtualReg_810, VirtualReg_809, 1
	la	VirtualReg_811, fuckLLVM_w
	sw	VirtualReg_810, 0(VirtualReg_811)
	lw	VirtualReg_812, fuckLLVM_w
	addi	VirtualReg_813, VirtualReg_812, 1
	la	VirtualReg_814, fuckLLVM_w
	sw	VirtualReg_813, 0(VirtualReg_814)
	lw	VirtualReg_815, fuckLLVM_w
	lw	VirtualReg_816, fuckLLVM_w
	addi	VirtualReg_817, VirtualReg_816, 1
	la	VirtualReg_818, fuckLLVM_w
	sw	VirtualReg_817, 0(VirtualReg_818)
	lw	VirtualReg_819, fuckLLVM_w
	addi	VirtualReg_820, VirtualReg_819, 1
	la	VirtualReg_821, fuckLLVM_w
	sw	VirtualReg_820, 0(VirtualReg_821)
	lw	VirtualReg_822, fuckLLVM_w
	lw	VirtualReg_823, fuckLLVM_w
	addi	VirtualReg_824, VirtualReg_823, 1
	la	VirtualReg_825, fuckLLVM_w
	sw	VirtualReg_824, 0(VirtualReg_825)
	lw	VirtualReg_826, fuckLLVM_w
	addi	VirtualReg_827, VirtualReg_826, 1
	la	VirtualReg_828, fuckLLVM_w
	sw	VirtualReg_827, 0(VirtualReg_828)
	lw	VirtualReg_829, fuckLLVM_w
	lw	VirtualReg_830, fuckLLVM_w
	addi	VirtualReg_831, VirtualReg_830, 1
	la	VirtualReg_832, fuckLLVM_w
	sw	VirtualReg_831, 0(VirtualReg_832)
	lw	VirtualReg_833, fuckLLVM_w
	addi	VirtualReg_834, VirtualReg_833, 1
	la	VirtualReg_835, fuckLLVM_w
	sw	VirtualReg_834, 0(VirtualReg_835)
	lw	VirtualReg_836, fuckLLVM_w
	lw	VirtualReg_837, fuckLLVM_w
	addi	VirtualReg_838, VirtualReg_837, 1
	la	VirtualReg_839, fuckLLVM_w
	sw	VirtualReg_838, 0(VirtualReg_839)
	lw	VirtualReg_840, fuckLLVM_w
	addi	VirtualReg_841, VirtualReg_840, 1
	la	VirtualReg_842, fuckLLVM_w
	sw	VirtualReg_841, 0(VirtualReg_842)
	lw	VirtualReg_843, fuckLLVM_w
	lw	VirtualReg_844, fuckLLVM_w
	addi	VirtualReg_845, VirtualReg_844, 1
	la	VirtualReg_846, fuckLLVM_w
	sw	VirtualReg_845, 0(VirtualReg_846)
	lw	VirtualReg_847, fuckLLVM_w
	addi	VirtualReg_848, VirtualReg_847, 1
	la	VirtualReg_849, fuckLLVM_w
	sw	VirtualReg_848, 0(VirtualReg_849)
	lw	VirtualReg_850, fuckLLVM_w
	lw	VirtualReg_851, fuckLLVM_w
	addi	VirtualReg_852, VirtualReg_851, 1
	la	VirtualReg_853, fuckLLVM_w
	sw	VirtualReg_852, 0(VirtualReg_853)
	lw	VirtualReg_854, fuckLLVM_w
	addi	VirtualReg_855, VirtualReg_854, 1
	la	VirtualReg_856, fuckLLVM_w
	sw	VirtualReg_855, 0(VirtualReg_856)
	lw	VirtualReg_857, fuckLLVM_w
	lw	VirtualReg_858, fuckLLVM_w
	addi	VirtualReg_859, VirtualReg_858, 1
	la	VirtualReg_860, fuckLLVM_w
	sw	VirtualReg_859, 0(VirtualReg_860)
	lw	VirtualReg_861, fuckLLVM_w
	addi	VirtualReg_862, VirtualReg_861, 1
	la	VirtualReg_863, fuckLLVM_w
	sw	VirtualReg_862, 0(VirtualReg_863)
	lw	VirtualReg_864, fuckLLVM_w
	lw	VirtualReg_865, fuckLLVM_w
	addi	VirtualReg_866, VirtualReg_865, 1
	la	VirtualReg_867, fuckLLVM_w
	sw	VirtualReg_866, 0(VirtualReg_867)
	lw	VirtualReg_868, fuckLLVM_w
	addi	VirtualReg_869, VirtualReg_868, 1
	la	VirtualReg_870, fuckLLVM_w
	sw	VirtualReg_869, 0(VirtualReg_870)
	lw	VirtualReg_871, fuckLLVM_w
	lw	VirtualReg_872, fuckLLVM_w
	addi	VirtualReg_873, VirtualReg_872, 1
	la	VirtualReg_874, fuckLLVM_w
	sw	VirtualReg_873, 0(VirtualReg_874)
	lw	VirtualReg_875, fuckLLVM_w
	addi	VirtualReg_876, VirtualReg_875, 1
	la	VirtualReg_877, fuckLLVM_w
	sw	VirtualReg_876, 0(VirtualReg_877)
	lw	VirtualReg_878, fuckLLVM_w
	lw	VirtualReg_879, fuckLLVM_w
	addi	VirtualReg_880, VirtualReg_879, 1
	la	VirtualReg_881, fuckLLVM_w
	sw	VirtualReg_880, 0(VirtualReg_881)
	lw	VirtualReg_882, fuckLLVM_w
	addi	VirtualReg_883, VirtualReg_882, 1
	la	VirtualReg_884, fuckLLVM_w
	sw	VirtualReg_883, 0(VirtualReg_884)
	lw	VirtualReg_885, fuckLLVM_w
	lw	VirtualReg_886, fuckLLVM_w
	addi	VirtualReg_887, VirtualReg_886, 1
	la	VirtualReg_888, fuckLLVM_w
	sw	VirtualReg_887, 0(VirtualReg_888)
	lw	VirtualReg_889, fuckLLVM_w
	addi	VirtualReg_890, VirtualReg_889, 1
	la	VirtualReg_891, fuckLLVM_w
	sw	VirtualReg_890, 0(VirtualReg_891)
	lw	VirtualReg_892, fuckLLVM_w
	lw	VirtualReg_893, fuckLLVM_w
	addi	VirtualReg_894, VirtualReg_893, 1
	la	VirtualReg_895, fuckLLVM_w
	sw	VirtualReg_894, 0(VirtualReg_895)
	lw	VirtualReg_896, fuckLLVM_w
	addi	VirtualReg_897, VirtualReg_896, 1
	la	VirtualReg_898, fuckLLVM_w
	sw	VirtualReg_897, 0(VirtualReg_898)
	lw	VirtualReg_899, fuckLLVM_w
	lw	VirtualReg_900, fuckLLVM_w
	addi	VirtualReg_901, VirtualReg_900, 1
	la	VirtualReg_902, fuckLLVM_w
	sw	VirtualReg_901, 0(VirtualReg_902)
	lw	VirtualReg_903, fuckLLVM_w
	addi	VirtualReg_904, VirtualReg_903, 1
	la	VirtualReg_905, fuckLLVM_w
	sw	VirtualReg_904, 0(VirtualReg_905)
	lw	VirtualReg_906, fuckLLVM_w
	lw	VirtualReg_907, fuckLLVM_w
	addi	VirtualReg_908, VirtualReg_907, 1
	la	VirtualReg_909, fuckLLVM_w
	sw	VirtualReg_908, 0(VirtualReg_909)
	lw	VirtualReg_910, fuckLLVM_w
	addi	VirtualReg_911, VirtualReg_910, 1
	la	VirtualReg_912, fuckLLVM_w
	sw	VirtualReg_911, 0(VirtualReg_912)
	lw	VirtualReg_913, fuckLLVM_w
	lw	VirtualReg_914, fuckLLVM_w
	addi	VirtualReg_915, VirtualReg_914, 1
	la	VirtualReg_916, fuckLLVM_w
	sw	VirtualReg_915, 0(VirtualReg_916)
	lw	VirtualReg_917, fuckLLVM_w
	addi	VirtualReg_918, VirtualReg_917, 1
	la	VirtualReg_919, fuckLLVM_w
	sw	VirtualReg_918, 0(VirtualReg_919)
	lw	VirtualReg_920, fuckLLVM_w
	lw	VirtualReg_921, fuckLLVM_w
	addi	VirtualReg_922, VirtualReg_921, 1
	la	VirtualReg_923, fuckLLVM_w
	sw	VirtualReg_922, 0(VirtualReg_923)
	lw	VirtualReg_924, fuckLLVM_w
	addi	VirtualReg_925, VirtualReg_924, 1
	la	VirtualReg_926, fuckLLVM_w
	sw	VirtualReg_925, 0(VirtualReg_926)
	lw	VirtualReg_927, fuckLLVM_w
	lw	VirtualReg_928, fuckLLVM_w
	addi	VirtualReg_929, VirtualReg_928, 1
	la	VirtualReg_930, fuckLLVM_w
	sw	VirtualReg_929, 0(VirtualReg_930)
	lw	VirtualReg_931, fuckLLVM_w
	addi	VirtualReg_932, VirtualReg_931, 1
	la	VirtualReg_933, fuckLLVM_w
	sw	VirtualReg_932, 0(VirtualReg_933)
	lw	VirtualReg_934, fuckLLVM_w
	lw	VirtualReg_935, fuckLLVM_w
	addi	VirtualReg_936, VirtualReg_935, 1
	la	VirtualReg_937, fuckLLVM_w
	sw	VirtualReg_936, 0(VirtualReg_937)
	lw	VirtualReg_938, fuckLLVM_w
	addi	VirtualReg_939, VirtualReg_938, 1
	la	VirtualReg_940, fuckLLVM_w
	sw	VirtualReg_939, 0(VirtualReg_940)
	lw	VirtualReg_941, fuckLLVM_w
	lw	VirtualReg_942, fuckLLVM_w
	addi	VirtualReg_943, VirtualReg_942, 1
	la	VirtualReg_944, fuckLLVM_w
	sw	VirtualReg_943, 0(VirtualReg_944)
	lw	VirtualReg_945, fuckLLVM_w
	addi	VirtualReg_946, VirtualReg_945, 1
	la	VirtualReg_947, fuckLLVM_w
	sw	VirtualReg_946, 0(VirtualReg_947)
	lw	VirtualReg_948, fuckLLVM_w
	lw	VirtualReg_949, fuckLLVM_w
	addi	VirtualReg_950, VirtualReg_949, 1
	la	VirtualReg_951, fuckLLVM_w
	sw	VirtualReg_950, 0(VirtualReg_951)
	lw	VirtualReg_952, fuckLLVM_w
	addi	VirtualReg_953, VirtualReg_952, 1
	la	VirtualReg_954, fuckLLVM_w
	sw	VirtualReg_953, 0(VirtualReg_954)
	lw	VirtualReg_955, fuckLLVM_w
	lw	VirtualReg_956, fuckLLVM_w
	addi	VirtualReg_957, VirtualReg_956, 1
	la	VirtualReg_958, fuckLLVM_w
	sw	VirtualReg_957, 0(VirtualReg_958)
	lw	VirtualReg_959, fuckLLVM_w
	addi	VirtualReg_960, VirtualReg_959, 1
	la	VirtualReg_961, fuckLLVM_w
	sw	VirtualReg_960, 0(VirtualReg_961)
	lw	VirtualReg_962, fuckLLVM_w
	lw	VirtualReg_963, fuckLLVM_w
	addi	VirtualReg_964, VirtualReg_963, 1
	la	VirtualReg_965, fuckLLVM_w
	sw	VirtualReg_964, 0(VirtualReg_965)
	lw	VirtualReg_966, fuckLLVM_w
	addi	VirtualReg_967, VirtualReg_966, 1
	la	VirtualReg_968, fuckLLVM_w
	sw	VirtualReg_967, 0(VirtualReg_968)
	lw	VirtualReg_969, fuckLLVM_w
	lw	VirtualReg_970, fuckLLVM_w
	addi	VirtualReg_971, VirtualReg_970, 1
	la	VirtualReg_972, fuckLLVM_w
	sw	VirtualReg_971, 0(VirtualReg_972)
	lw	VirtualReg_973, fuckLLVM_w
	addi	VirtualReg_974, VirtualReg_973, 1
	la	VirtualReg_975, fuckLLVM_w
	sw	VirtualReg_974, 0(VirtualReg_975)
	lw	VirtualReg_976, fuckLLVM_w
	lw	VirtualReg_977, fuckLLVM_w
	addi	VirtualReg_978, VirtualReg_977, 1
	la	VirtualReg_979, fuckLLVM_w
	sw	VirtualReg_978, 0(VirtualReg_979)
	lw	VirtualReg_980, fuckLLVM_w
	addi	VirtualReg_981, VirtualReg_980, 1
	la	VirtualReg_982, fuckLLVM_w
	sw	VirtualReg_981, 0(VirtualReg_982)
	lw	VirtualReg_983, fuckLLVM_w
	lw	VirtualReg_984, fuckLLVM_w
	addi	VirtualReg_985, VirtualReg_984, 1
	la	VirtualReg_986, fuckLLVM_w
	sw	VirtualReg_985, 0(VirtualReg_986)
	lw	VirtualReg_987, fuckLLVM_w
	addi	VirtualReg_988, VirtualReg_987, 1
	la	VirtualReg_989, fuckLLVM_w
	sw	VirtualReg_988, 0(VirtualReg_989)
	lw	VirtualReg_990, fuckLLVM_w
	lw	VirtualReg_991, fuckLLVM_w
	addi	VirtualReg_992, VirtualReg_991, 1
	la	VirtualReg_993, fuckLLVM_w
	sw	VirtualReg_992, 0(VirtualReg_993)
	lw	VirtualReg_994, fuckLLVM_w
	addi	VirtualReg_995, VirtualReg_994, 1
	la	VirtualReg_996, fuckLLVM_w
	sw	VirtualReg_995, 0(VirtualReg_996)
	lw	VirtualReg_997, fuckLLVM_w
	lw	VirtualReg_998, fuckLLVM_w
	addi	VirtualReg_999, VirtualReg_998, 1
	la	VirtualReg_1000, fuckLLVM_w
	sw	VirtualReg_999, 0(VirtualReg_1000)
	lw	VirtualReg_1001, fuckLLVM_w
	addi	VirtualReg_1002, VirtualReg_1001, 1
	la	VirtualReg_1003, fuckLLVM_w
	sw	VirtualReg_1002, 0(VirtualReg_1003)
	lw	VirtualReg_1004, fuckLLVM_w
	lw	VirtualReg_1005, fuckLLVM_w
	addi	VirtualReg_1006, VirtualReg_1005, 1
	la	VirtualReg_1007, fuckLLVM_w
	sw	VirtualReg_1006, 0(VirtualReg_1007)
	lw	VirtualReg_1008, fuckLLVM_w
	addi	VirtualReg_1009, VirtualReg_1008, 1
	la	VirtualReg_1010, fuckLLVM_w
	sw	VirtualReg_1009, 0(VirtualReg_1010)
	lw	VirtualReg_1011, fuckLLVM_w
	lw	VirtualReg_1012, fuckLLVM_w
	addi	VirtualReg_1013, VirtualReg_1012, 1
	la	VirtualReg_1014, fuckLLVM_w
	sw	VirtualReg_1013, 0(VirtualReg_1014)
	lw	VirtualReg_1015, fuckLLVM_w
	addi	VirtualReg_1016, VirtualReg_1015, 1
	la	VirtualReg_1017, fuckLLVM_w
	sw	VirtualReg_1016, 0(VirtualReg_1017)
	lw	VirtualReg_1018, fuckLLVM_w
	lw	VirtualReg_1019, fuckLLVM_w
	addi	VirtualReg_1020, VirtualReg_1019, 1
	la	VirtualReg_1021, fuckLLVM_w
	sw	VirtualReg_1020, 0(VirtualReg_1021)
	lw	VirtualReg_1022, fuckLLVM_w
	addi	VirtualReg_1023, VirtualReg_1022, 1
	la	VirtualReg_1024, fuckLLVM_w
	sw	VirtualReg_1023, 0(VirtualReg_1024)
	lw	VirtualReg_1025, fuckLLVM_w
	lw	VirtualReg_1026, fuckLLVM_w
	addi	VirtualReg_1027, VirtualReg_1026, 1
	la	VirtualReg_1028, fuckLLVM_w
	sw	VirtualReg_1027, 0(VirtualReg_1028)
	lw	VirtualReg_1029, fuckLLVM_w
	addi	VirtualReg_1030, VirtualReg_1029, 1
	la	VirtualReg_1031, fuckLLVM_w
	sw	VirtualReg_1030, 0(VirtualReg_1031)
	lw	VirtualReg_1032, fuckLLVM_w
	lw	VirtualReg_1033, fuckLLVM_w
	addi	VirtualReg_1034, VirtualReg_1033, 1
	la	VirtualReg_1035, fuckLLVM_w
	sw	VirtualReg_1034, 0(VirtualReg_1035)
	lw	VirtualReg_1036, fuckLLVM_w
	addi	VirtualReg_1037, VirtualReg_1036, 1
	la	VirtualReg_1038, fuckLLVM_w
	sw	VirtualReg_1037, 0(VirtualReg_1038)
	lw	VirtualReg_1039, fuckLLVM_w
	lw	VirtualReg_1040, fuckLLVM_w
	addi	VirtualReg_1041, VirtualReg_1040, 1
	la	VirtualReg_1042, fuckLLVM_w
	sw	VirtualReg_1041, 0(VirtualReg_1042)
	lw	VirtualReg_1043, fuckLLVM_w
	addi	VirtualReg_1044, VirtualReg_1043, 1
	la	VirtualReg_1045, fuckLLVM_w
	sw	VirtualReg_1044, 0(VirtualReg_1045)
	lw	VirtualReg_1046, fuckLLVM_w
	lw	VirtualReg_1047, fuckLLVM_w
	addi	VirtualReg_1048, VirtualReg_1047, 1
	la	VirtualReg_1049, fuckLLVM_w
	sw	VirtualReg_1048, 0(VirtualReg_1049)
	lw	VirtualReg_1050, fuckLLVM_w
	addi	VirtualReg_1051, VirtualReg_1050, 1
	la	VirtualReg_1052, fuckLLVM_w
	sw	VirtualReg_1051, 0(VirtualReg_1052)
	lw	VirtualReg_1053, fuckLLVM_w
	lw	VirtualReg_1054, fuckLLVM_w
	addi	VirtualReg_1055, VirtualReg_1054, 1
	la	VirtualReg_1056, fuckLLVM_w
	sw	VirtualReg_1055, 0(VirtualReg_1056)
	lw	VirtualReg_1057, fuckLLVM_w
	addi	VirtualReg_1058, VirtualReg_1057, 1
	la	VirtualReg_1059, fuckLLVM_w
	sw	VirtualReg_1058, 0(VirtualReg_1059)
	lw	VirtualReg_1060, fuckLLVM_w
	lw	VirtualReg_1061, fuckLLVM_w
	addi	VirtualReg_1062, VirtualReg_1061, 1
	la	VirtualReg_1063, fuckLLVM_w
	sw	VirtualReg_1062, 0(VirtualReg_1063)
	lw	VirtualReg_1064, fuckLLVM_w
	addi	VirtualReg_1065, VirtualReg_1064, 1
	la	VirtualReg_1066, fuckLLVM_w
	sw	VirtualReg_1065, 0(VirtualReg_1066)
	lw	VirtualReg_1067, fuckLLVM_w
	lw	VirtualReg_1068, fuckLLVM_w
	addi	VirtualReg_1069, VirtualReg_1068, 1
	la	VirtualReg_1070, fuckLLVM_w
	sw	VirtualReg_1069, 0(VirtualReg_1070)
	lw	VirtualReg_1071, fuckLLVM_w
	addi	VirtualReg_1072, VirtualReg_1071, 1
	la	VirtualReg_1073, fuckLLVM_w
	sw	VirtualReg_1072, 0(VirtualReg_1073)
	lw	VirtualReg_1074, fuckLLVM_w
	lw	VirtualReg_1075, fuckLLVM_w
	addi	VirtualReg_1076, VirtualReg_1075, 1
	la	VirtualReg_1077, fuckLLVM_w
	sw	VirtualReg_1076, 0(VirtualReg_1077)
	lw	VirtualReg_1078, fuckLLVM_w
	addi	VirtualReg_1079, VirtualReg_1078, 1
	la	VirtualReg_1080, fuckLLVM_w
	sw	VirtualReg_1079, 0(VirtualReg_1080)
	lw	VirtualReg_1081, fuckLLVM_w
	lw	VirtualReg_1082, fuckLLVM_w
	addi	VirtualReg_1083, VirtualReg_1082, 1
	la	VirtualReg_1084, fuckLLVM_w
	sw	VirtualReg_1083, 0(VirtualReg_1084)
	lw	VirtualReg_1085, fuckLLVM_w
	addi	VirtualReg_1086, VirtualReg_1085, 1
	la	VirtualReg_1087, fuckLLVM_w
	sw	VirtualReg_1086, 0(VirtualReg_1087)
	lw	VirtualReg_1088, fuckLLVM_w
	lw	VirtualReg_1089, fuckLLVM_w
	addi	VirtualReg_1090, VirtualReg_1089, 1
	la	VirtualReg_1091, fuckLLVM_w
	sw	VirtualReg_1090, 0(VirtualReg_1091)
	lw	VirtualReg_1092, fuckLLVM_w
	addi	VirtualReg_1093, VirtualReg_1092, 1
	la	VirtualReg_1094, fuckLLVM_w
	sw	VirtualReg_1093, 0(VirtualReg_1094)
	lw	VirtualReg_1095, fuckLLVM_w
	lw	VirtualReg_1096, fuckLLVM_w
	addi	VirtualReg_1097, VirtualReg_1096, 1
	la	VirtualReg_1098, fuckLLVM_w
	sw	VirtualReg_1097, 0(VirtualReg_1098)
	lw	VirtualReg_1099, fuckLLVM_w
	addi	VirtualReg_1100, VirtualReg_1099, 1
	la	VirtualReg_1101, fuckLLVM_w
	sw	VirtualReg_1100, 0(VirtualReg_1101)
	lw	VirtualReg_1102, fuckLLVM_w
	lw	VirtualReg_1103, fuckLLVM_w
	addi	VirtualReg_1104, VirtualReg_1103, 1
	la	VirtualReg_1105, fuckLLVM_w
	sw	VirtualReg_1104, 0(VirtualReg_1105)
	lw	VirtualReg_1106, fuckLLVM_w
	addi	VirtualReg_1107, VirtualReg_1106, 1
	la	VirtualReg_1108, fuckLLVM_w
	sw	VirtualReg_1107, 0(VirtualReg_1108)
	lw	VirtualReg_1109, fuckLLVM_w
	lw	VirtualReg_1110, fuckLLVM_w
	addi	VirtualReg_1111, VirtualReg_1110, 1
	la	VirtualReg_1112, fuckLLVM_w
	sw	VirtualReg_1111, 0(VirtualReg_1112)
	lw	VirtualReg_1113, fuckLLVM_w
	addi	VirtualReg_1114, VirtualReg_1113, 1
	la	VirtualReg_1115, fuckLLVM_w
	sw	VirtualReg_1114, 0(VirtualReg_1115)
	lw	VirtualReg_1116, fuckLLVM_w
	lw	VirtualReg_1117, fuckLLVM_w
	addi	VirtualReg_1118, VirtualReg_1117, 1
	la	VirtualReg_1119, fuckLLVM_w
	sw	VirtualReg_1118, 0(VirtualReg_1119)
	lw	VirtualReg_1120, fuckLLVM_w
	addi	VirtualReg_1121, VirtualReg_1120, 1
	la	VirtualReg_1122, fuckLLVM_w
	sw	VirtualReg_1121, 0(VirtualReg_1122)
	lw	VirtualReg_1123, fuckLLVM_w
	lw	VirtualReg_1124, fuckLLVM_w
	addi	VirtualReg_1125, VirtualReg_1124, 1
	la	VirtualReg_1126, fuckLLVM_w
	sw	VirtualReg_1125, 0(VirtualReg_1126)
	lw	VirtualReg_1127, fuckLLVM_w
	addi	VirtualReg_1128, VirtualReg_1127, 1
	la	VirtualReg_1129, fuckLLVM_w
	sw	VirtualReg_1128, 0(VirtualReg_1129)
	lw	VirtualReg_1130, fuckLLVM_w
	lw	VirtualReg_1131, fuckLLVM_w
	addi	VirtualReg_1132, VirtualReg_1131, 1
	la	VirtualReg_1133, fuckLLVM_w
	sw	VirtualReg_1132, 0(VirtualReg_1133)
	lw	VirtualReg_1134, fuckLLVM_w
	addi	VirtualReg_1135, VirtualReg_1134, 1
	la	VirtualReg_1136, fuckLLVM_w
	sw	VirtualReg_1135, 0(VirtualReg_1136)
	lw	VirtualReg_1137, fuckLLVM_w
	lw	VirtualReg_1138, fuckLLVM_w
	addi	VirtualReg_1139, VirtualReg_1138, 1
	la	VirtualReg_1140, fuckLLVM_w
	sw	VirtualReg_1139, 0(VirtualReg_1140)
	lw	VirtualReg_1141, fuckLLVM_w
	addi	VirtualReg_1142, VirtualReg_1141, 1
	la	VirtualReg_1143, fuckLLVM_w
	sw	VirtualReg_1142, 0(VirtualReg_1143)
	lw	VirtualReg_1144, fuckLLVM_w
	lw	VirtualReg_1145, fuckLLVM_w
	addi	VirtualReg_1146, VirtualReg_1145, 1
	la	VirtualReg_1147, fuckLLVM_w
	sw	VirtualReg_1146, 0(VirtualReg_1147)
	lw	VirtualReg_1148, fuckLLVM_w
	addi	VirtualReg_1149, VirtualReg_1148, 1
	la	VirtualReg_1150, fuckLLVM_w
	sw	VirtualReg_1149, 0(VirtualReg_1150)
	lw	VirtualReg_1151, fuckLLVM_w
	lw	VirtualReg_1152, fuckLLVM_w
	addi	VirtualReg_1153, VirtualReg_1152, 1
	la	VirtualReg_1154, fuckLLVM_w
	sw	VirtualReg_1153, 0(VirtualReg_1154)
	lw	VirtualReg_1155, fuckLLVM_w
	addi	VirtualReg_1156, VirtualReg_1155, 1
	la	VirtualReg_1157, fuckLLVM_w
	sw	VirtualReg_1156, 0(VirtualReg_1157)
	lw	VirtualReg_1158, fuckLLVM_w
	lw	VirtualReg_1159, fuckLLVM_w
	addi	VirtualReg_1160, VirtualReg_1159, 1
	la	VirtualReg_1161, fuckLLVM_w
	sw	VirtualReg_1160, 0(VirtualReg_1161)
	lw	VirtualReg_1162, fuckLLVM_w
	addi	VirtualReg_1163, VirtualReg_1162, 1
	la	VirtualReg_1164, fuckLLVM_w
	sw	VirtualReg_1163, 0(VirtualReg_1164)
	lw	VirtualReg_1165, fuckLLVM_w
	lw	VirtualReg_1166, fuckLLVM_w
	addi	VirtualReg_1167, VirtualReg_1166, 1
	la	VirtualReg_1168, fuckLLVM_w
	sw	VirtualReg_1167, 0(VirtualReg_1168)
	lw	VirtualReg_1169, fuckLLVM_w
	addi	VirtualReg_1170, VirtualReg_1169, 1
	la	VirtualReg_1171, fuckLLVM_w
	sw	VirtualReg_1170, 0(VirtualReg_1171)
	lw	VirtualReg_1172, fuckLLVM_w
	lw	VirtualReg_1173, fuckLLVM_w
	addi	VirtualReg_1174, VirtualReg_1173, 1
	la	VirtualReg_1175, fuckLLVM_w
	sw	VirtualReg_1174, 0(VirtualReg_1175)
	lw	VirtualReg_1176, fuckLLVM_w
	addi	VirtualReg_1177, VirtualReg_1176, 1
	la	VirtualReg_1178, fuckLLVM_w
	sw	VirtualReg_1177, 0(VirtualReg_1178)
	lw	VirtualReg_1179, fuckLLVM_w
	lw	VirtualReg_1180, fuckLLVM_w
	addi	VirtualReg_1181, VirtualReg_1180, 1
	la	VirtualReg_1182, fuckLLVM_w
	sw	VirtualReg_1181, 0(VirtualReg_1182)
	lw	VirtualReg_1183, fuckLLVM_w
	addi	VirtualReg_1184, VirtualReg_1183, 1
	la	VirtualReg_1185, fuckLLVM_w
	sw	VirtualReg_1184, 0(VirtualReg_1185)
	lw	VirtualReg_1186, fuckLLVM_w
	lw	VirtualReg_1187, fuckLLVM_w
	addi	VirtualReg_1188, VirtualReg_1187, 1
	la	VirtualReg_1189, fuckLLVM_w
	sw	VirtualReg_1188, 0(VirtualReg_1189)
	lw	VirtualReg_1190, fuckLLVM_w
	addi	VirtualReg_1191, VirtualReg_1190, 1
	la	VirtualReg_1192, fuckLLVM_w
	sw	VirtualReg_1191, 0(VirtualReg_1192)
	lw	VirtualReg_1193, fuckLLVM_w
	lw	VirtualReg_1194, fuckLLVM_w
	addi	VirtualReg_1195, VirtualReg_1194, 1
	la	VirtualReg_1196, fuckLLVM_w
	sw	VirtualReg_1195, 0(VirtualReg_1196)
	lw	VirtualReg_1197, fuckLLVM_w
	addi	VirtualReg_1198, VirtualReg_1197, 1
	la	VirtualReg_1199, fuckLLVM_w
	sw	VirtualReg_1198, 0(VirtualReg_1199)
	lw	VirtualReg_1200, fuckLLVM_w
	lw	VirtualReg_1201, fuckLLVM_w
	addi	VirtualReg_1202, VirtualReg_1201, 1
	la	VirtualReg_1203, fuckLLVM_w
	sw	VirtualReg_1202, 0(VirtualReg_1203)
	lw	VirtualReg_1204, fuckLLVM_w
	addi	VirtualReg_1205, VirtualReg_1204, 1
	la	VirtualReg_1206, fuckLLVM_w
	sw	VirtualReg_1205, 0(VirtualReg_1206)
	lw	VirtualReg_1207, fuckLLVM_w
	lw	VirtualReg_1208, fuckLLVM_w
	addi	VirtualReg_1209, VirtualReg_1208, 1
	la	VirtualReg_1210, fuckLLVM_w
	sw	VirtualReg_1209, 0(VirtualReg_1210)
	lw	VirtualReg_1211, fuckLLVM_w
	addi	VirtualReg_1212, VirtualReg_1211, 1
	la	VirtualReg_1213, fuckLLVM_w
	sw	VirtualReg_1212, 0(VirtualReg_1213)
	lw	VirtualReg_1214, fuckLLVM_w
	lw	VirtualReg_1215, fuckLLVM_w
	addi	VirtualReg_1216, VirtualReg_1215, 1
	la	VirtualReg_1217, fuckLLVM_w
	sw	VirtualReg_1216, 0(VirtualReg_1217)
	lw	VirtualReg_1218, fuckLLVM_w
	addi	VirtualReg_1219, VirtualReg_1218, 1
	la	VirtualReg_1220, fuckLLVM_w
	sw	VirtualReg_1219, 0(VirtualReg_1220)
	lw	VirtualReg_1221, fuckLLVM_w
	lw	VirtualReg_1222, fuckLLVM_w
	addi	VirtualReg_1223, VirtualReg_1222, 1
	la	VirtualReg_1224, fuckLLVM_w
	sw	VirtualReg_1223, 0(VirtualReg_1224)
	lw	VirtualReg_1225, fuckLLVM_w
	addi	VirtualReg_1226, VirtualReg_1225, 1
	la	VirtualReg_1227, fuckLLVM_w
	sw	VirtualReg_1226, 0(VirtualReg_1227)
	lw	VirtualReg_1228, fuckLLVM_w
	lw	VirtualReg_1229, fuckLLVM_w
	addi	VirtualReg_1230, VirtualReg_1229, 1
	la	VirtualReg_1231, fuckLLVM_w
	sw	VirtualReg_1230, 0(VirtualReg_1231)
	lw	VirtualReg_1232, fuckLLVM_w
	addi	VirtualReg_1233, VirtualReg_1232, 1
	la	VirtualReg_1234, fuckLLVM_w
	sw	VirtualReg_1233, 0(VirtualReg_1234)
	lw	VirtualReg_1235, fuckLLVM_w
	lw	VirtualReg_1236, fuckLLVM_w
	addi	VirtualReg_1237, VirtualReg_1236, 1
	la	VirtualReg_1238, fuckLLVM_w
	sw	VirtualReg_1237, 0(VirtualReg_1238)
	lw	VirtualReg_1239, fuckLLVM_w
	addi	VirtualReg_1240, VirtualReg_1239, 1
	la	VirtualReg_1241, fuckLLVM_w
	sw	VirtualReg_1240, 0(VirtualReg_1241)
	lw	VirtualReg_1242, fuckLLVM_w
	lw	VirtualReg_1243, fuckLLVM_w
	addi	VirtualReg_1244, VirtualReg_1243, 1
	la	VirtualReg_1245, fuckLLVM_w
	sw	VirtualReg_1244, 0(VirtualReg_1245)
	lw	VirtualReg_1246, fuckLLVM_w
	addi	VirtualReg_1247, VirtualReg_1246, 1
	la	VirtualReg_1248, fuckLLVM_w
	sw	VirtualReg_1247, 0(VirtualReg_1248)
	lw	VirtualReg_1249, fuckLLVM_w
	lw	VirtualReg_1250, fuckLLVM_w
	addi	VirtualReg_1251, VirtualReg_1250, 1
	la	VirtualReg_1252, fuckLLVM_w
	sw	VirtualReg_1251, 0(VirtualReg_1252)
	lw	VirtualReg_1253, fuckLLVM_w
	addi	VirtualReg_1254, VirtualReg_1253, 1
	la	VirtualReg_1255, fuckLLVM_w
	sw	VirtualReg_1254, 0(VirtualReg_1255)
	lw	VirtualReg_1256, fuckLLVM_w
	lw	VirtualReg_1257, fuckLLVM_w
	addi	VirtualReg_1258, VirtualReg_1257, 1
	la	VirtualReg_1259, fuckLLVM_w
	sw	VirtualReg_1258, 0(VirtualReg_1259)
	lw	VirtualReg_1260, fuckLLVM_w
	addi	VirtualReg_1261, VirtualReg_1260, 1
	la	VirtualReg_1262, fuckLLVM_w
	sw	VirtualReg_1261, 0(VirtualReg_1262)
	lw	VirtualReg_1263, fuckLLVM_w
	lw	VirtualReg_1264, fuckLLVM_w
	addi	VirtualReg_1265, VirtualReg_1264, 1
	la	VirtualReg_1266, fuckLLVM_w
	sw	VirtualReg_1265, 0(VirtualReg_1266)
	lw	VirtualReg_1267, fuckLLVM_w
	addi	VirtualReg_1268, VirtualReg_1267, 1
	la	VirtualReg_1269, fuckLLVM_w
	sw	VirtualReg_1268, 0(VirtualReg_1269)
	lw	VirtualReg_1270, fuckLLVM_w
	lw	VirtualReg_1271, fuckLLVM_w
	addi	VirtualReg_1272, VirtualReg_1271, 1
	la	VirtualReg_1273, fuckLLVM_w
	sw	VirtualReg_1272, 0(VirtualReg_1273)
	lw	VirtualReg_1274, fuckLLVM_w
	addi	VirtualReg_1275, VirtualReg_1274, 1
	la	VirtualReg_1276, fuckLLVM_w
	sw	VirtualReg_1275, 0(VirtualReg_1276)
	lw	VirtualReg_1277, fuckLLVM_w
	lw	VirtualReg_1278, fuckLLVM_w
	addi	VirtualReg_1279, VirtualReg_1278, 1
	la	VirtualReg_1280, fuckLLVM_w
	sw	VirtualReg_1279, 0(VirtualReg_1280)
	lw	VirtualReg_1281, fuckLLVM_w
	addi	VirtualReg_1282, VirtualReg_1281, 1
	la	VirtualReg_1283, fuckLLVM_w
	sw	VirtualReg_1282, 0(VirtualReg_1283)
	lw	VirtualReg_1284, fuckLLVM_w
	lw	VirtualReg_1285, fuckLLVM_w
	addi	VirtualReg_1286, VirtualReg_1285, 1
	la	VirtualReg_1287, fuckLLVM_w
	sw	VirtualReg_1286, 0(VirtualReg_1287)
	lw	VirtualReg_1288, fuckLLVM_w
	addi	VirtualReg_1289, VirtualReg_1288, 1
	la	VirtualReg_1290, fuckLLVM_w
	sw	VirtualReg_1289, 0(VirtualReg_1290)
	lw	VirtualReg_1291, fuckLLVM_w
	lw	VirtualReg_1292, fuckLLVM_w
	addi	VirtualReg_1293, VirtualReg_1292, 1
	la	VirtualReg_1294, fuckLLVM_w
	sw	VirtualReg_1293, 0(VirtualReg_1294)
	lw	VirtualReg_1295, fuckLLVM_w
	addi	VirtualReg_1296, VirtualReg_1295, 1
	la	VirtualReg_1297, fuckLLVM_w
	sw	VirtualReg_1296, 0(VirtualReg_1297)
	lw	VirtualReg_1298, fuckLLVM_w
	lw	VirtualReg_1299, fuckLLVM_w
	addi	VirtualReg_1300, VirtualReg_1299, 1
	la	VirtualReg_1301, fuckLLVM_w
	sw	VirtualReg_1300, 0(VirtualReg_1301)
	lw	VirtualReg_1302, fuckLLVM_w
	addi	VirtualReg_1303, VirtualReg_1302, 1
	la	VirtualReg_1304, fuckLLVM_w
	sw	VirtualReg_1303, 0(VirtualReg_1304)
	lw	VirtualReg_1305, fuckLLVM_w
	lw	VirtualReg_1306, fuckLLVM_w
	addi	VirtualReg_1307, VirtualReg_1306, 1
	la	VirtualReg_1308, fuckLLVM_w
	sw	VirtualReg_1307, 0(VirtualReg_1308)
	lw	VirtualReg_1309, fuckLLVM_w
	addi	VirtualReg_1310, VirtualReg_1309, 1
	la	VirtualReg_1311, fuckLLVM_w
	sw	VirtualReg_1310, 0(VirtualReg_1311)
	lw	VirtualReg_1312, fuckLLVM_w
	lw	VirtualReg_1313, fuckLLVM_w
	addi	VirtualReg_1314, VirtualReg_1313, 1
	la	VirtualReg_1315, fuckLLVM_w
	sw	VirtualReg_1314, 0(VirtualReg_1315)
	lw	VirtualReg_1316, fuckLLVM_w
	addi	VirtualReg_1317, VirtualReg_1316, 1
	la	VirtualReg_1318, fuckLLVM_w
	sw	VirtualReg_1317, 0(VirtualReg_1318)
	lw	VirtualReg_1319, fuckLLVM_w
	lw	VirtualReg_1320, fuckLLVM_w
	addi	VirtualReg_1321, VirtualReg_1320, 1
	la	VirtualReg_1322, fuckLLVM_w
	sw	VirtualReg_1321, 0(VirtualReg_1322)
	lw	VirtualReg_1323, fuckLLVM_w
	addi	VirtualReg_1324, VirtualReg_1323, 1
	la	VirtualReg_1325, fuckLLVM_w
	sw	VirtualReg_1324, 0(VirtualReg_1325)
	lw	VirtualReg_1326, fuckLLVM_w
	lw	VirtualReg_1327, fuckLLVM_w
	addi	VirtualReg_1328, VirtualReg_1327, 1
	la	VirtualReg_1329, fuckLLVM_w
	sw	VirtualReg_1328, 0(VirtualReg_1329)
	lw	VirtualReg_1330, fuckLLVM_w
	addi	VirtualReg_1331, VirtualReg_1330, 1
	la	VirtualReg_1332, fuckLLVM_w
	sw	VirtualReg_1331, 0(VirtualReg_1332)
	lw	VirtualReg_1333, fuckLLVM_w
	lw	VirtualReg_1334, fuckLLVM_w
	addi	VirtualReg_1335, VirtualReg_1334, 1
	la	VirtualReg_1336, fuckLLVM_w
	sw	VirtualReg_1335, 0(VirtualReg_1336)
	lw	VirtualReg_1337, fuckLLVM_w
	addi	VirtualReg_1338, VirtualReg_1337, 1
	la	VirtualReg_1339, fuckLLVM_w
	sw	VirtualReg_1338, 0(VirtualReg_1339)
	lw	VirtualReg_1340, fuckLLVM_w
	lw	VirtualReg_1341, fuckLLVM_w
	addi	VirtualReg_1342, VirtualReg_1341, 1
	la	VirtualReg_1343, fuckLLVM_w
	sw	VirtualReg_1342, 0(VirtualReg_1343)
	lw	VirtualReg_1344, fuckLLVM_w
	addi	VirtualReg_1345, VirtualReg_1344, 1
	la	VirtualReg_1346, fuckLLVM_w
	sw	VirtualReg_1345, 0(VirtualReg_1346)
	lw	VirtualReg_1347, fuckLLVM_w
	lw	VirtualReg_1348, fuckLLVM_w
	addi	VirtualReg_1349, VirtualReg_1348, 1
	la	VirtualReg_1350, fuckLLVM_w
	sw	VirtualReg_1349, 0(VirtualReg_1350)
	lw	VirtualReg_1351, fuckLLVM_w
	addi	VirtualReg_1352, VirtualReg_1351, 1
	la	VirtualReg_1353, fuckLLVM_w
	sw	VirtualReg_1352, 0(VirtualReg_1353)
	lw	VirtualReg_1354, fuckLLVM_w
	lw	VirtualReg_1355, fuckLLVM_w
	addi	VirtualReg_1356, VirtualReg_1355, 1
	la	VirtualReg_1357, fuckLLVM_w
	sw	VirtualReg_1356, 0(VirtualReg_1357)
	lw	VirtualReg_1358, fuckLLVM_w
	addi	VirtualReg_1359, VirtualReg_1358, 1
	la	VirtualReg_1360, fuckLLVM_w
	sw	VirtualReg_1359, 0(VirtualReg_1360)
	lw	VirtualReg_1361, fuckLLVM_w
	lw	VirtualReg_1362, fuckLLVM_w
	addi	VirtualReg_1363, VirtualReg_1362, 1
	la	VirtualReg_1364, fuckLLVM_w
	sw	VirtualReg_1363, 0(VirtualReg_1364)
	lw	VirtualReg_1365, fuckLLVM_w
	addi	VirtualReg_1366, VirtualReg_1365, 1
	la	VirtualReg_1367, fuckLLVM_w
	sw	VirtualReg_1366, 0(VirtualReg_1367)
	lw	VirtualReg_1368, fuckLLVM_w
	lw	VirtualReg_1369, fuckLLVM_w
	addi	VirtualReg_1370, VirtualReg_1369, 1
	la	VirtualReg_1371, fuckLLVM_w
	sw	VirtualReg_1370, 0(VirtualReg_1371)
	lw	VirtualReg_1372, fuckLLVM_w
	addi	VirtualReg_1373, VirtualReg_1372, 1
	la	VirtualReg_1374, fuckLLVM_w
	sw	VirtualReg_1373, 0(VirtualReg_1374)
	lw	VirtualReg_1375, fuckLLVM_w
	lw	VirtualReg_1376, fuckLLVM_w
	addi	VirtualReg_1377, VirtualReg_1376, 1
	la	VirtualReg_1378, fuckLLVM_w
	sw	VirtualReg_1377, 0(VirtualReg_1378)
	lw	VirtualReg_1379, fuckLLVM_w
	addi	VirtualReg_1380, VirtualReg_1379, 1
	la	VirtualReg_1381, fuckLLVM_w
	sw	VirtualReg_1380, 0(VirtualReg_1381)
	lw	VirtualReg_1382, fuckLLVM_w
	lw	VirtualReg_1383, fuckLLVM_w
	addi	VirtualReg_1384, VirtualReg_1383, 1
	la	VirtualReg_1385, fuckLLVM_w
	sw	VirtualReg_1384, 0(VirtualReg_1385)
	lw	VirtualReg_1386, fuckLLVM_w
	addi	VirtualReg_1387, VirtualReg_1386, 1
	la	VirtualReg_1388, fuckLLVM_w
	sw	VirtualReg_1387, 0(VirtualReg_1388)
	lw	VirtualReg_1389, fuckLLVM_w
	lw	VirtualReg_1390, fuckLLVM_w
	addi	VirtualReg_1391, VirtualReg_1390, 1
	la	VirtualReg_1392, fuckLLVM_w
	sw	VirtualReg_1391, 0(VirtualReg_1392)
	lw	VirtualReg_1393, fuckLLVM_w
	addi	VirtualReg_1394, VirtualReg_1393, 1
	la	VirtualReg_1395, fuckLLVM_w
	sw	VirtualReg_1394, 0(VirtualReg_1395)
	lw	VirtualReg_1396, fuckLLVM_w
	lw	VirtualReg_1397, fuckLLVM_w
	addi	VirtualReg_1398, VirtualReg_1397, 1
	la	VirtualReg_1399, fuckLLVM_w
	sw	VirtualReg_1398, 0(VirtualReg_1399)
	lw	VirtualReg_1400, fuckLLVM_w
	addi	VirtualReg_1401, VirtualReg_1400, 1
	la	VirtualReg_1402, fuckLLVM_w
	sw	VirtualReg_1401, 0(VirtualReg_1402)
	lw	VirtualReg_1403, fuckLLVM_w
	lw	VirtualReg_1404, fuckLLVM_w
	addi	VirtualReg_1405, VirtualReg_1404, 1
	la	VirtualReg_1406, fuckLLVM_w
	sw	VirtualReg_1405, 0(VirtualReg_1406)
	lw	VirtualReg_1407, fuckLLVM_w
	addi	VirtualReg_1408, VirtualReg_1407, 1
	la	VirtualReg_1409, fuckLLVM_w
	sw	VirtualReg_1408, 0(VirtualReg_1409)
	lw	VirtualReg_1410, fuckLLVM_w
	lw	VirtualReg_1411, fuckLLVM_w
	addi	VirtualReg_1412, VirtualReg_1411, 1
	la	VirtualReg_1413, fuckLLVM_w
	sw	VirtualReg_1412, 0(VirtualReg_1413)
	lw	VirtualReg_1414, fuckLLVM_w
	addi	VirtualReg_1415, VirtualReg_1414, 1
	la	VirtualReg_1416, fuckLLVM_w
	sw	VirtualReg_1415, 0(VirtualReg_1416)
	lw	VirtualReg_1417, fuckLLVM_w
	lw	VirtualReg_1418, fuckLLVM_w
	addi	VirtualReg_1419, VirtualReg_1418, 1
	la	VirtualReg_1420, fuckLLVM_w
	sw	VirtualReg_1419, 0(VirtualReg_1420)
	lw	VirtualReg_1421, fuckLLVM_w
	addi	VirtualReg_1422, VirtualReg_1421, 1
	la	VirtualReg_1423, fuckLLVM_w
	sw	VirtualReg_1422, 0(VirtualReg_1423)
	lw	VirtualReg_1424, fuckLLVM_w
	lw	VirtualReg_1425, fuckLLVM_w
	addi	VirtualReg_1426, VirtualReg_1425, 1
	la	VirtualReg_1427, fuckLLVM_w
	sw	VirtualReg_1426, 0(VirtualReg_1427)
	lw	VirtualReg_1428, fuckLLVM_w
	addi	VirtualReg_1429, VirtualReg_1428, 1
	la	VirtualReg_1430, fuckLLVM_w
	sw	VirtualReg_1429, 0(VirtualReg_1430)
	lw	VirtualReg_1431, fuckLLVM_w
	lw	VirtualReg_1432, fuckLLVM_w
	addi	VirtualReg_1433, VirtualReg_1432, 1
	la	VirtualReg_1434, fuckLLVM_w
	sw	VirtualReg_1433, 0(VirtualReg_1434)
	lw	VirtualReg_1435, fuckLLVM_w
	addi	VirtualReg_1436, VirtualReg_1435, 1
	la	VirtualReg_1437, fuckLLVM_w
	sw	VirtualReg_1436, 0(VirtualReg_1437)
	lw	VirtualReg_1438, fuckLLVM_w
	lw	VirtualReg_1439, fuckLLVM_w
	addi	VirtualReg_1440, VirtualReg_1439, 1
	la	VirtualReg_1441, fuckLLVM_w
	sw	VirtualReg_1440, 0(VirtualReg_1441)
	lw	VirtualReg_1442, fuckLLVM_w
	addi	VirtualReg_1443, VirtualReg_1442, 1
	la	VirtualReg_1444, fuckLLVM_w
	sw	VirtualReg_1443, 0(VirtualReg_1444)
	lw	VirtualReg_1445, fuckLLVM_w
	lw	VirtualReg_1446, fuckLLVM_w
	addi	VirtualReg_1447, VirtualReg_1446, 1
	la	VirtualReg_1448, fuckLLVM_w
	sw	VirtualReg_1447, 0(VirtualReg_1448)
	lw	VirtualReg_1449, fuckLLVM_w
	addi	VirtualReg_1450, VirtualReg_1449, 1
	la	VirtualReg_1451, fuckLLVM_w
	sw	VirtualReg_1450, 0(VirtualReg_1451)
	lw	VirtualReg_1452, fuckLLVM_w
	lw	VirtualReg_1453, fuckLLVM_w
	addi	VirtualReg_1454, VirtualReg_1453, 1
	la	VirtualReg_1455, fuckLLVM_w
	sw	VirtualReg_1454, 0(VirtualReg_1455)
	lw	VirtualReg_1456, fuckLLVM_w
	addi	VirtualReg_1457, VirtualReg_1456, 1
	la	VirtualReg_1458, fuckLLVM_w
	sw	VirtualReg_1457, 0(VirtualReg_1458)
	lw	VirtualReg_1459, fuckLLVM_w
	lw	VirtualReg_1460, fuckLLVM_w
	addi	VirtualReg_1461, VirtualReg_1460, 1
	la	VirtualReg_1462, fuckLLVM_w
	sw	VirtualReg_1461, 0(VirtualReg_1462)
	lw	VirtualReg_1463, fuckLLVM_w
	addi	VirtualReg_1464, VirtualReg_1463, 1
	la	VirtualReg_1465, fuckLLVM_w
	sw	VirtualReg_1464, 0(VirtualReg_1465)
	lw	VirtualReg_1466, fuckLLVM_w
	lw	VirtualReg_1467, fuckLLVM_w
	addi	VirtualReg_1468, VirtualReg_1467, 1
	la	VirtualReg_1469, fuckLLVM_w
	sw	VirtualReg_1468, 0(VirtualReg_1469)
	lw	VirtualReg_1470, fuckLLVM_w
	addi	VirtualReg_1471, VirtualReg_1470, 1
	la	VirtualReg_1472, fuckLLVM_w
	sw	VirtualReg_1471, 0(VirtualReg_1472)
	lw	VirtualReg_1473, fuckLLVM_w
	lw	VirtualReg_1474, fuckLLVM_w
	addi	VirtualReg_1475, VirtualReg_1474, 1
	la	VirtualReg_1476, fuckLLVM_w
	sw	VirtualReg_1475, 0(VirtualReg_1476)
	lw	VirtualReg_1477, fuckLLVM_w
	addi	VirtualReg_1478, VirtualReg_1477, 1
	la	VirtualReg_1479, fuckLLVM_w
	sw	VirtualReg_1478, 0(VirtualReg_1479)
	lw	VirtualReg_1480, fuckLLVM_w
	lw	VirtualReg_1481, fuckLLVM_w
	addi	VirtualReg_1482, VirtualReg_1481, 1
	la	VirtualReg_1483, fuckLLVM_w
	sw	VirtualReg_1482, 0(VirtualReg_1483)
	lw	VirtualReg_1484, fuckLLVM_w
	addi	VirtualReg_1485, VirtualReg_1484, 1
	la	VirtualReg_1486, fuckLLVM_w
	sw	VirtualReg_1485, 0(VirtualReg_1486)
	lw	VirtualReg_1487, fuckLLVM_w
	call	bblock
	mv	VirtualReg_1488, a0
	call	bblock
	mv	VirtualReg_1489, a0
	mv	VirtualReg_13, VirtualReg_1489
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_return
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_return:
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_out
.main_return:
	mv	a0, VirtualReg_14
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

	.section	.sbss
	.type	fuckLLVM_w,@object
	.globl	fuckLLVM_w
	.p2align	2
fuckLLVM_w:
	.word	0
	.size	fuckLLVM_w, 8

	.section	.sbss
	.type	fuckLLVM_N,@object
	.globl	fuckLLVM_N
	.p2align	2
fuckLLVM_N:
	.word	1
	.size	fuckLLVM_N, 8

