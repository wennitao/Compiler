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

	.globl	test
	.p2align	2
	.type	test,@function
test:
.test_assemblyInit:
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
	j	.test_entry
.test_entry:
	lw	VirtualReg_12, fuckLLVM_n
	li	VirtualReg_20, 0
	mv	VirtualReg_13, VirtualReg_20
	li	VirtualReg_21, 0
	mv	VirtualReg_14, VirtualReg_21
	j	.test_ID4_for_condition
.test_ID4_for_condition:
	slt	fuckLLVM_7, VirtualReg_13, VirtualReg_12
	bnez	fuckLLVM_7, .test_ID4_for_suite
	j	.test_ID4_for_out
.test_ID4_for_suite:
	li	VirtualReg_16, 0
	xor	fuckLLVM_453, VirtualReg_15, VirtualReg_16
	sltiu	fuckLLVM_453, fuckLLVM_453, 1
	xori	fuckLLVM_453, fuckLLVM_453, 1
	mv	VirtualReg_17, VirtualReg_14
	bnez	fuckLLVM_453, .test_ID453_if_true
	mv	VirtualReg_17, VirtualReg_14
	j	.test_ID453_if_out
.test_ID453_if_true:
	mv	VirtualReg_17, VirtualReg_15
	j	.test_ID453_if_out
.test_ID453_if_out:
	j	.test_ID4_for_incr
.test_ID4_for_incr:
	li	VirtualReg_18, 1
	add	fuckLLVM_456, VirtualReg_13, VirtualReg_18
	mv	VirtualReg_13, fuckLLVM_456
	mv	VirtualReg_14, VirtualReg_17
	j	.test_ID4_for_condition
.test_ID4_for_out:
	j	.test_return
.test_return:
	mv	a0, VirtualReg_19
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
	call	test
	mv	VirtualReg_12, a0
	mv	a0, VirtualReg_12
	call	printlnInt
	call	test
	mv	VirtualReg_13, a0
	add	fuckLLVM_7, VirtualReg_12, VirtualReg_13
	li	VirtualReg_14, 300
	sub	fuckLLVM_8, fuckLLVM_7, VirtualReg_14
	mv	a0, fuckLLVM_8
	call	printlnInt
	j	.main_return
.main_return:
	li	VirtualReg_15, 0
	mv	a0, VirtualReg_15
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
	.type	fuckLLVM_n,@object
	.globl	fuckLLVM_n
	.p2align	2
fuckLLVM_n:
	.word	0
	.size	fuckLLVM_n, 8

