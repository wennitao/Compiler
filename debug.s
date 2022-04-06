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
	call	__init
	li	VirtualReg_21, 1
	mv	VirtualReg_12, VirtualReg_21
	li	VirtualReg_22, 0
	mv	VirtualReg_13, VirtualReg_22
	j	.main_ID4_while_condition
.main_ID4_while_condition:
	li	VirtualReg_14, 100
	slt	fuckLLVM_5, VirtualReg_13, VirtualReg_14
	bnez	fuckLLVM_5, .main_ID6_while_suite
	j	.main_ID6_while_out
.main_ID7_if_true:
	li	VirtualReg_15, 1
	add	fuckLLVM_10, VirtualReg_13, VirtualReg_15
	li	VirtualReg_23, 1
	mv	VirtualReg_17, VirtualReg_23
	mv	VirtualReg_18, fuckLLVM_10
	j	.main_ID7_if_out
.main_ID7_if_false:
	li	VirtualReg_16, 2
	add	fuckLLVM_13, VirtualReg_13, VirtualReg_16
	mv	VirtualReg_17, VirtualReg_13
	mv	VirtualReg_18, fuckLLVM_13
	j	.main_ID7_if_out
.main_ID7_if_out:
	mv	VirtualReg_12, VirtualReg_17
	mv	VirtualReg_13, VirtualReg_18
	j	.main_ID4_while_condition
.main_ID6_while_suite:
	li	VirtualReg_19, 20
	slt	fuckLLVM_7, VirtualReg_12, VirtualReg_19
	bnez	fuckLLVM_7, .main_ID7_if_true
	j	.main_ID7_if_false
.main_ID6_while_out:
	mv	a0, VirtualReg_12
	call	printlnInt
	j	.main_return
.main_return:
	li	VirtualReg_20, 0
	mv	a0, VirtualReg_20
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

