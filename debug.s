	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
.__init_entry:
	li	VirtualReg_0, 20
	li	VirtualReg_1, 4
	mul	fuckLLVM_0, VirtualReg_0, VirtualReg_1
	li	VirtualReg_2, 4
	add	fuckLLVM_1, fuckLLVM_0, VirtualReg_2
	mv	a0, fuckLLVM_1
	call	malloc
	mv	VirtualReg_3, a0
	li	VirtualReg_4, 20
	sw	VirtualReg_4, 0(VirtualReg_3)
	li	VirtualReg_7, 1
	li	VirtualReg_8, 4
	mul	VirtualReg_6, VirtualReg_7, VirtualReg_8
	add	VirtualReg_5, VirtualReg_3, VirtualReg_6
	sw	VirtualReg_5, fuckLLVM_a, VirtualReg_9
	j	.__init_return
.__init_return:

	.globl	jud
	.p2align	2
	.type	jud,@function
jud:
.jud_assemblyInit:
	mv	VirtualReg_0, a0
.jud_entry:
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_0, 0(VirtualReg_2)
	li	VirtualReg_6, 0
	li	VirtualReg_7, -20
	add	VirtualReg_7, s0, VirtualReg_7
	sw	VirtualReg_6, 0(VirtualReg_7)
	j	.jud_ID4_for_condition
.jud_ID4_for_condition:
	li	VirtualReg_9, -20
	add	VirtualReg_9, s0, VirtualReg_9
	lw	VirtualReg_8, 0(VirtualReg_9)
	lw	VirtualReg_10, fuckLLVM_n
	li	VirtualReg_12, -12
	add	VirtualReg_12, s0, VirtualReg_12
	lw	VirtualReg_11, 0(VirtualReg_12)
	div	fuckLLVM_8, VirtualReg_10, VirtualReg_11
	slt	fuckLLVM_9, VirtualReg_8, fuckLLVM_8
	bnez	fuckLLVM_9, .jud_ID4_for_suite
	j	.jud_ID4_for_out
.jud_ID4_for_suite:
	li	VirtualReg_14, 0
	li	VirtualReg_15, -28
	add	VirtualReg_15, s0, VirtualReg_15
	sb	VirtualReg_14, 0(VirtualReg_15)
	li	VirtualReg_16, 0
	li	VirtualReg_17, -24
	add	VirtualReg_17, s0, VirtualReg_17
	sw	VirtualReg_16, 0(VirtualReg_17)
	j	.jud_ID10_for_condition
.jud_ID10_for_condition:
	li	VirtualReg_19, -24
	add	VirtualReg_19, s0, VirtualReg_19
	lw	VirtualReg_18, 0(VirtualReg_19)
	li	VirtualReg_21, -12
	add	VirtualReg_21, s0, VirtualReg_21
	lw	VirtualReg_20, 0(VirtualReg_21)
	li	VirtualReg_22, 1
	sub	fuckLLVM_13, VirtualReg_20, VirtualReg_22
	slt	fuckLLVM_14, VirtualReg_18, fuckLLVM_13
	bnez	fuckLLVM_14, .jud_ID10_for_suite
	j	.jud_ID10_for_out
.jud_ID10_for_suite:
	lw	VirtualReg_23, fuckLLVM_a
	li	VirtualReg_25, -20
	add	VirtualReg_25, s0, VirtualReg_25
	lw	VirtualReg_24, 0(VirtualReg_25)
	li	VirtualReg_27, -12
	add	VirtualReg_27, s0, VirtualReg_27
	lw	VirtualReg_26, 0(VirtualReg_27)
	mul	fuckLLVM_18, VirtualReg_24, VirtualReg_26
	li	VirtualReg_29, -24
	add	VirtualReg_29, s0, VirtualReg_29
	lw	VirtualReg_28, 0(VirtualReg_29)
	add	fuckLLVM_20, fuckLLVM_18, VirtualReg_28
	li	VirtualReg_32, 4
	mul	VirtualReg_31, fuckLLVM_20, VirtualReg_32
	add	VirtualReg_30, VirtualReg_23, VirtualReg_31
	lw	VirtualReg_33, 0(VirtualReg_30)
	lw	VirtualReg_34, fuckLLVM_a
	li	VirtualReg_36, -20
	add	VirtualReg_36, s0, VirtualReg_36
	lw	VirtualReg_35, 0(VirtualReg_36)
	li	VirtualReg_38, -12
	add	VirtualReg_38, s0, VirtualReg_38
	lw	VirtualReg_37, 0(VirtualReg_38)
	mul	fuckLLVM_26, VirtualReg_35, VirtualReg_37
	li	VirtualReg_40, -24
	add	VirtualReg_40, s0, VirtualReg_40
	lw	VirtualReg_39, 0(VirtualReg_40)
	add	fuckLLVM_28, fuckLLVM_26, VirtualReg_39
	li	VirtualReg_41, 1
	add	fuckLLVM_29, fuckLLVM_28, VirtualReg_41
	li	VirtualReg_44, 4
	mul	VirtualReg_43, fuckLLVM_29, VirtualReg_44
	add	VirtualReg_42, VirtualReg_34, VirtualReg_43
	lw	VirtualReg_45, 0(VirtualReg_42)
	slt	fuckLLVM_32, VirtualReg_45, VirtualReg_33
	bnez	fuckLLVM_32, .jud_ID32_if_true
	j	.jud_ID32_if_out
.jud_ID32_if_true:
	li	VirtualReg_46, 1
	li	VirtualReg_47, -28
	add	VirtualReg_47, s0, VirtualReg_47
	sb	VirtualReg_46, 0(VirtualReg_47)
	j	.jud_ID32_if_out
.jud_ID32_if_out:
	j	.jud_ID10_for_incr
.jud_ID10_for_incr:
	li	VirtualReg_49, -24
	add	VirtualReg_49, s0, VirtualReg_49
	lw	VirtualReg_48, 0(VirtualReg_49)
	li	VirtualReg_50, 1
	add	fuckLLVM_34, VirtualReg_48, VirtualReg_50
	li	VirtualReg_51, -24
	add	VirtualReg_51, s0, VirtualReg_51
	sw	fuckLLVM_34, 0(VirtualReg_51)
	j	.jud_ID10_for_condition
.jud_ID10_for_out:
	li	VirtualReg_53, -28
	add	VirtualReg_53, s0, VirtualReg_53
	lb	VirtualReg_52, 0(VirtualReg_53)
	li	VirtualReg_54, 1
	xor	fuckLLVM_37, VirtualReg_52, VirtualReg_54
	bnez	fuckLLVM_37, .jud_ID37_if_true
	j	.jud_ID37_if_out
.jud_ID37_if_true:
	li	VirtualReg_55, 1
	li	VirtualReg_56, -16
	add	VirtualReg_56, s0, VirtualReg_56
	sw	VirtualReg_55, 0(VirtualReg_56)
	j	.jud_return
	j	.jud_ID37_if_out
.jud_ID37_if_out:
	j	.jud_ID4_for_incr
.jud_ID4_for_incr:
	li	VirtualReg_58, -20
	add	VirtualReg_58, s0, VirtualReg_58
	lw	VirtualReg_57, 0(VirtualReg_58)
	li	VirtualReg_59, 1
	add	fuckLLVM_39, VirtualReg_57, VirtualReg_59
	li	VirtualReg_60, -20
	add	VirtualReg_60, s0, VirtualReg_60
	sw	fuckLLVM_39, 0(VirtualReg_60)
	j	.jud_ID4_for_condition
.jud_ID4_for_out:
	li	VirtualReg_61, 0
	li	VirtualReg_62, -16
	add	VirtualReg_62, s0, VirtualReg_62
	sw	VirtualReg_61, 0(VirtualReg_62)
	j	.jud_return
	j	.jud_return
.jud_return:
	li	VirtualReg_64, -16
	add	VirtualReg_64, s0, VirtualReg_64
	lw	VirtualReg_63, 0(VirtualReg_64)
	mv	a0, VirtualReg_63

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
	li	VirtualReg_5, 0
	sw	VirtualReg_5, fuckLLVM_i, VirtualReg_6
	j	.main_ID1_for_condition
.main_ID1_for_condition:
	lw	VirtualReg_7, fuckLLVM_i
	lw	VirtualReg_8, fuckLLVM_n
	slt	fuckLLVM_4, VirtualReg_7, VirtualReg_8
	bnez	fuckLLVM_4, .main_ID1_for_suite
	j	.main_ID1_for_out
.main_ID1_for_suite:
	lw	VirtualReg_9, fuckLLVM_a
	lw	VirtualReg_10, fuckLLVM_i
	li	VirtualReg_13, 4
	mul	VirtualReg_12, VirtualReg_10, VirtualReg_13
	add	VirtualReg_11, VirtualReg_9, VirtualReg_12
	call	getInt
	mv	VirtualReg_14, a0
	sw	VirtualReg_14, 0(VirtualReg_11)
	j	.main_ID1_for_incr
.main_ID1_for_incr:
	lw	VirtualReg_15, fuckLLVM_i
	li	VirtualReg_16, 1
	add	fuckLLVM_10, VirtualReg_15, VirtualReg_16
	sw	fuckLLVM_10, fuckLLVM_i, VirtualReg_17
	j	.main_ID1_for_condition
.main_ID1_for_out:
	lw	VirtualReg_18, fuckLLVM_n
	sw	VirtualReg_18, fuckLLVM_i, VirtualReg_19
	j	.main_ID11_for_condition
.main_ID11_for_condition:
	lw	VirtualReg_20, fuckLLVM_i
	li	VirtualReg_21, 0
	slt	fuckLLVM_13, VirtualReg_21, VirtualReg_20
	bnez	fuckLLVM_13, .main_ID11_for_suite
	j	.main_ID11_for_out
.main_ID11_for_suite:
	lw	VirtualReg_22, fuckLLVM_i
	mv	a0, VirtualReg_22
	call	jud
	mv	VirtualReg_23, a0
	li	VirtualReg_24, 0
	slt	fuckLLVM_16, VirtualReg_24, VirtualReg_23
	bnez	fuckLLVM_16, .main_ID16_if_true
	j	.main_ID16_if_out
.main_ID16_if_true:
	lw	VirtualReg_25, fuckLLVM_i
	mv	a0, VirtualReg_25
	call	toString
	mv	VirtualReg_26, a0
	mv	a0, VirtualReg_26
	call	print
	li	VirtualReg_27, 0
	li	VirtualReg_28, -12
	add	VirtualReg_28, s0, VirtualReg_28
	sw	VirtualReg_27, 0(VirtualReg_28)
	j	.main_return
	j	.main_ID16_if_out
.main_ID16_if_out:
	j	.main_ID11_for_incr
.main_ID11_for_incr:
	lw	VirtualReg_29, fuckLLVM_i
	li	VirtualReg_30, 2
	div	fuckLLVM_22, VirtualReg_29, VirtualReg_30
	sw	fuckLLVM_22, fuckLLVM_i, VirtualReg_31
	j	.main_ID11_for_condition
.main_ID11_for_out:
	li	VirtualReg_32, 0
	li	VirtualReg_33, -12
	add	VirtualReg_33, s0, VirtualReg_33
	sw	VirtualReg_32, 0(VirtualReg_33)
	j	.main_return
	j	.main_return
.main_return:
	li	VirtualReg_35, -12
	add	VirtualReg_35, s0, VirtualReg_35
	lw	VirtualReg_34, 0(VirtualReg_35)
	mv	a0, VirtualReg_34

	.section	.sbss
	.type	fuckLLVM_n,@object
	.globl	fuckLLVM_n
	.p2align	2
fuckLLVM_n:
	.word	0
	.size	fuckLLVM_n, 8

	.section	.sbss
	.type	fuckLLVM_a,@object
	.globl	fuckLLVM_a
	.p2align	2
fuckLLVM_a:
	.word	0
	.size	fuckLLVM_a, 8

	.section	.sbss
	.type	fuckLLVM_i,@object
	.globl	fuckLLVM_i
	.p2align	2
fuckLLVM_i:
	.word	0
	.size	fuckLLVM_i, 8

