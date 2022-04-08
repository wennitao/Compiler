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
	li	VirtualReg_22, 0
	mv	VirtualReg_12, VirtualReg_22
	li	VirtualReg_23, 0
	mv	VirtualReg_13, VirtualReg_23
	j	.test_ID2_for_condition
.test_ID2_for_condition:
	li	VirtualReg_14, 200
	slt	fuckLLVM_4, VirtualReg_12, VirtualReg_14
	bnez	fuckLLVM_4, .test_ID2_for_suite
	j	.test_ID2_for_out
.test_ID2_for_suite:
	li	VirtualReg_24, 0
	mv	VirtualReg_15, VirtualReg_24
	j	.test_ID4_AndAnd_true
.test_ID4_AndAnd_true:
	li	VirtualReg_25, 1
	mv	VirtualReg_15, VirtualReg_25
	j	.test_ID4_AndAnd_out
.test_ID4_AndAnd_out:
	li	VirtualReg_26, 0
	mv	VirtualReg_16, VirtualReg_26
	bnez	VirtualReg_15, .test_ID5_AndAnd_true
	mv	VirtualReg_16, VirtualReg_26
	j	.test_ID5_AndAnd_out
.test_ID5_AndAnd_true:
	li	VirtualReg_27, 1
	mv	VirtualReg_16, VirtualReg_27
	j	.test_ID5_AndAnd_out
.test_ID5_AndAnd_out:
	bnez	VirtualReg_16, .test_ID6_if_true
	j	.test_ID6_if_false
.test_ID6_if_true:
	li	VirtualReg_17, 1
	add	fuckLLVM_8, VirtualReg_12, VirtualReg_17
	li	VirtualReg_18, 1
	add	fuckLLVM_10, VirtualReg_13, VirtualReg_18
	mv	VirtualReg_19, fuckLLVM_8
	mv	VirtualReg_20, fuckLLVM_10
	j	.test_ID6_if_out
.test_ID6_if_false:
	mv	VirtualReg_19, VirtualReg_12
	li	VirtualReg_28, -1
	mv	VirtualReg_20, VirtualReg_28
	j	.test_ID6_if_out
.test_ID6_if_out:
	j	.test_ID2_for_incr
.test_ID2_for_incr:
	li	VirtualReg_21, 1
	add	fuckLLVM_12, VirtualReg_19, VirtualReg_21
	mv	VirtualReg_12, fuckLLVM_12
	mv	VirtualReg_13, VirtualReg_20
	j	.test_ID2_for_condition
.test_ID2_for_out:
	j	.test_return
.test_return:
	mv	a0, VirtualReg_13
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
	li	VirtualReg_13, 100
	sub	fuckLLVM_2, VirtualReg_12, VirtualReg_13
	j	.main_return
.main_return:
	mv	a0, fuckLLVM_2
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

