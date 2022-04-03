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
	j	.__init_alloca
.__init_alloca:
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
	j	.main_alloca
.main_alloca:
	j	.main_entry
.main_entry:
	call	__init
	li	VirtualReg_17, 0
	mv	VirtualReg_12, VirtualReg_17
	li	VirtualReg_18, 1
	mv	VirtualReg_13, VirtualReg_18
	li	VirtualReg_19, 2
	mv	VirtualReg_14, VirtualReg_19
	mv	VirtualReg_20, VirtualReg_13
	mv	VirtualReg_21, VirtualReg_14
	add	fuckLLVM_6, VirtualReg_20, VirtualReg_21
	mv	VirtualReg_15, fuckLLVM_6
	mv	VirtualReg_22, VirtualReg_15
	li	VirtualReg_23, 3
	xor	fuckLLVM_9, VirtualReg_22, VirtualReg_23
	sltiu	fuckLLVM_9, fuckLLVM_9, 1
	bnez	fuckLLVM_9, .main_ID9_if_true
	j	.main_ID9_if_false
.main_ID9_if_true:
	li	VirtualReg_24, 4
	mv	VirtualReg_16, VirtualReg_24
	j	.main_ID9_if_out
.main_ID9_if_false:
	li	VirtualReg_25, 5
	mv	VirtualReg_16, VirtualReg_25
	j	.main_ID9_if_out
.main_ID9_if_out:
	mv	VirtualReg_26, VirtualReg_16
	mv	a0, VirtualReg_26
	call	printlnInt
	li	VirtualReg_27, 0
	mv	VirtualReg_12, VirtualReg_27
	j	.main_return
.main_return:
	mv	VirtualReg_28, VirtualReg_12
	mv	a0, VirtualReg_28
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

