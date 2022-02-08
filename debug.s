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
	call	getInt
	mv	VirtualReg_16, a0
	li	VirtualReg_17, 0
	sw	VirtualReg_16, fuckLLVM_t, VirtualReg_17
	li	VirtualReg_18, 0
	li	VirtualReg_19, 0
	sw	VirtualReg_18, fuckLLVM_i, VirtualReg_19
	j	.main_ID1_for_condition
.main_ID1_for_condition:
	lw	VirtualReg_20, fuckLLVM_i
	lw	VirtualReg_21, fuckLLVM_t
	slt	fuckLLVM_4, VirtualReg_20, VirtualReg_21
	bnez	fuckLLVM_4, .main_ID1_for_suite
	j	.main_ID1_for_out
.main_ID1_for_suite:
	call	getString
	mv	VirtualReg_22, a0
	li	VirtualReg_23, 0
	sw	VirtualReg_22, fuckLLVM_s, VirtualReg_23
	lw	VirtualReg_24, fuckLLVM_s
	mv	a0, VirtualReg_24
	call	length
	mv	VirtualReg_25, a0
	li	VirtualReg_26, 0
	sw	VirtualReg_25, fuckLLVM_l, VirtualReg_26
	lw	VirtualReg_27, fuckLLVM_l
	li	VirtualReg_28, 10
	slt	fuckLLVM_10, VirtualReg_28, VirtualReg_27
	bnez	fuckLLVM_10, .main_ID10_if_true
	j	.main_ID10_if_false
.main_ID10_if_true:
	lw	VirtualReg_29, fuckLLVM_s
	mv	a0, VirtualReg_29
	li	VirtualReg_30, 0
	mv	a1, VirtualReg_30
	li	VirtualReg_31, 1
	mv	a2, VirtualReg_31
	call	substring
	mv	VirtualReg_32, a0
	lw	VirtualReg_33, fuckLLVM_l
	li	VirtualReg_34, 2
	sub	fuckLLVM_14, VirtualReg_33, VirtualReg_34
	mv	a0, fuckLLVM_14
	call	toString
	mv	VirtualReg_35, a0
	mv	a0, VirtualReg_32
	mv	a1, VirtualReg_35
	call	string_add
	mv	VirtualReg_36, a0
	lw	VirtualReg_37, fuckLLVM_s
	lw	VirtualReg_38, fuckLLVM_l
	li	VirtualReg_39, 1
	sub	fuckLLVM_21, VirtualReg_38, VirtualReg_39
	lw	VirtualReg_40, fuckLLVM_l
	mv	a0, VirtualReg_37
	mv	a1, fuckLLVM_21
	mv	a2, VirtualReg_40
	call	substring
	mv	VirtualReg_41, a0
	mv	a0, VirtualReg_36
	mv	a1, VirtualReg_41
	call	string_add
	mv	VirtualReg_42, a0
	mv	a0, VirtualReg_42
	call	println
	j	.main_ID10_if_out
.main_ID10_if_false:
	lw	VirtualReg_43, fuckLLVM_s
	mv	a0, VirtualReg_43
	call	println
	j	.main_ID10_if_out
.main_ID10_if_out:
	j	.main_ID1_for_incr
.main_ID1_for_incr:
	lw	VirtualReg_44, fuckLLVM_i
	li	VirtualReg_45, 1
	add	fuckLLVM_33, VirtualReg_44, VirtualReg_45
	li	VirtualReg_46, 0
	sw	fuckLLVM_33, fuckLLVM_i, VirtualReg_46
	j	.main_ID1_for_condition
.main_ID1_for_out:
	j	.main_return
.main_return:
	li	VirtualReg_48, -12
	add	VirtualReg_48, s0, VirtualReg_48
	lw	VirtualReg_47, 0(VirtualReg_48)
	mv	a0, VirtualReg_47
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

	.section	.sbss
	.type	fuckLLVM_t,@object
	.globl	fuckLLVM_t
	.p2align	2
fuckLLVM_t:
	.word	0
	.size	fuckLLVM_t, 8

	.section	.sbss
	.type	fuckLLVM_l,@object
	.globl	fuckLLVM_l
	.p2align	2
fuckLLVM_l:
	.word	0
	.size	fuckLLVM_l, 8

	.section	.sbss
	.type	fuckLLVM_i,@object
	.globl	fuckLLVM_i
	.p2align	2
fuckLLVM_i:
	.word	0
	.size	fuckLLVM_i, 8

	.section	.sbss
	.type	fuckLLVM_s,@object
	.globl	fuckLLVM_s
	.p2align	2
fuckLLVM_s:
	.word	0
	.size	fuckLLVM_s, 8

