	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
.__init_entry:
	li	VirtualReg_0, 10100
	li	VirtualReg_1, 4
	mul	fuckLLVM_0, VirtualReg_0, VirtualReg_1
	li	VirtualReg_2, 4
	add	fuckLLVM_1, fuckLLVM_0, VirtualReg_2
	mv	a0, fuckLLVM_1
	call	malloc
	mv	VirtualReg_3, a0
	li	VirtualReg_4, 10100
	sw	VirtualReg_4, 0(VirtualReg_3)
	li	VirtualReg_7, 1
	li	VirtualReg_8, 4
	mul	VirtualReg_6, VirtualReg_7, VirtualReg_8
	add	VirtualReg_5, VirtualReg_3, VirtualReg_6
	sw	VirtualReg_5, fuckLLVM_a, VirtualReg_9
	j	.__init_return
.__init_return:

	.globl	qsrt
	.p2align	2
	.type	qsrt,@function
qsrt:
.qsrt_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
.qsrt_entry:
	sw	VirtualReg_0, -12(s0)
	sw	VirtualReg_1, -16(s0)
	lw	VirtualReg_6, -12(s0)
	sw	VirtualReg_6, -24(s0)
	lw	VirtualReg_8, -16(s0)
	sw	VirtualReg_8, -28(s0)
	lw	VirtualReg_10, fuckLLVM_a
	lw	VirtualReg_11, -12(s0)
	lw	VirtualReg_12, -16(s0)
	add	fuckLLVM_13, VirtualReg_11, VirtualReg_12
	li	VirtualReg_13, 2
	div	fuckLLVM_14, fuckLLVM_13, VirtualReg_13
	li	VirtualReg_16, 4
	mul	VirtualReg_15, fuckLLVM_14, VirtualReg_16
	add	VirtualReg_14, VirtualReg_10, VirtualReg_15
	lw	VirtualReg_17, 0(VirtualReg_14)
	sw	VirtualReg_17, -32(s0)
	j	.qsrt_ID17_while_condition
.qsrt_ID17_while_condition:
	lw	VirtualReg_18, -24(s0)
	lw	VirtualReg_19, -28(s0)
	slt	fuckLLVM_19, VirtualReg_19, VirtualReg_18
	xori	fuckLLVM_19, fuckLLVM_19, 1
	bnez	fuckLLVM_19, .qsrt_ID20_while_suite
	j	.qsrt_ID20_while_out
.qsrt_ID20_while_condition:
	lw	VirtualReg_20, fuckLLVM_a
	lw	VirtualReg_21, -24(s0)
	li	VirtualReg_24, 4
	mul	VirtualReg_23, VirtualReg_21, VirtualReg_24
	add	VirtualReg_22, VirtualReg_20, VirtualReg_23
	lw	VirtualReg_25, 0(VirtualReg_22)
	lw	VirtualReg_26, -32(s0)
	slt	fuckLLVM_25, VirtualReg_25, VirtualReg_26
	bnez	fuckLLVM_25, .qsrt_ID26_while_suite
	j	.qsrt_ID26_while_out
.qsrt_ID26_while_suite:
	lw	VirtualReg_27, -24(s0)
	li	VirtualReg_28, 1
	add	fuckLLVM_27, VirtualReg_27, VirtualReg_28
	sw	fuckLLVM_27, -24(s0)
	j	.qsrt_ID20_while_condition
.qsrt_ID26_while_out:
	j	.qsrt_ID28_while_condition
.qsrt_ID28_while_condition:
	lw	VirtualReg_29, fuckLLVM_a
	lw	VirtualReg_30, -28(s0)
	li	VirtualReg_33, 4
	mul	VirtualReg_32, VirtualReg_30, VirtualReg_33
	add	VirtualReg_31, VirtualReg_29, VirtualReg_32
	lw	VirtualReg_34, 0(VirtualReg_31)
	lw	VirtualReg_35, -32(s0)
	slt	fuckLLVM_33, VirtualReg_35, VirtualReg_34
	bnez	fuckLLVM_33, .qsrt_ID34_while_suite
	j	.qsrt_ID34_while_out
.qsrt_ID34_while_suite:
	lw	VirtualReg_36, -28(s0)
	li	VirtualReg_37, 1
	sub	fuckLLVM_35, VirtualReg_36, VirtualReg_37
	sw	fuckLLVM_35, -28(s0)
	j	.qsrt_ID28_while_condition
.qsrt_ID34_while_out:
	lw	VirtualReg_38, -24(s0)
	lw	VirtualReg_39, -28(s0)
	slt	fuckLLVM_38, VirtualReg_39, VirtualReg_38
	xori	fuckLLVM_38, fuckLLVM_38, 1
	bnez	fuckLLVM_38, .qsrt_ID38_if_true
	j	.qsrt_ID38_if_out
.qsrt_ID38_if_true:
	lw	VirtualReg_41, fuckLLVM_a
	lw	VirtualReg_42, -24(s0)
	li	VirtualReg_45, 4
	mul	VirtualReg_44, VirtualReg_42, VirtualReg_45
	add	VirtualReg_43, VirtualReg_41, VirtualReg_44
	lw	VirtualReg_46, 0(VirtualReg_43)
	sw	VirtualReg_46, -36(s0)
	lw	VirtualReg_47, fuckLLVM_a
	lw	VirtualReg_48, -24(s0)
	li	VirtualReg_51, 4
	mul	VirtualReg_50, VirtualReg_48, VirtualReg_51
	add	VirtualReg_49, VirtualReg_47, VirtualReg_50
	lw	VirtualReg_52, fuckLLVM_a
	lw	VirtualReg_53, -28(s0)
	li	VirtualReg_56, 4
	mul	VirtualReg_55, VirtualReg_53, VirtualReg_56
	add	VirtualReg_54, VirtualReg_52, VirtualReg_55
	lw	VirtualReg_57, 0(VirtualReg_54)
	sw	VirtualReg_57, 0(VirtualReg_49)
	lw	VirtualReg_58, fuckLLVM_a
	lw	VirtualReg_59, -28(s0)
	li	VirtualReg_62, 4
	mul	VirtualReg_61, VirtualReg_59, VirtualReg_62
	add	VirtualReg_60, VirtualReg_58, VirtualReg_61
	lw	VirtualReg_63, -36(s0)
	sw	VirtualReg_63, 0(VirtualReg_60)
	lw	VirtualReg_64, -24(s0)
	li	VirtualReg_65, 1
	add	fuckLLVM_56, VirtualReg_64, VirtualReg_65
	sw	fuckLLVM_56, -24(s0)
	lw	VirtualReg_66, -28(s0)
	li	VirtualReg_67, 1
	sub	fuckLLVM_58, VirtualReg_66, VirtualReg_67
	sw	fuckLLVM_58, -28(s0)
	j	.qsrt_ID38_if_out
.qsrt_ID38_if_out:
	j	.qsrt_ID17_while_condition
.qsrt_ID20_while_suite:
	j	.qsrt_ID20_while_condition
.qsrt_ID20_while_out:
	lw	VirtualReg_68, -12(s0)
	lw	VirtualReg_69, -28(s0)
	slt	fuckLLVM_61, VirtualReg_68, VirtualReg_69
	bnez	fuckLLVM_61, .qsrt_ID61_if_true
	j	.qsrt_ID61_if_out
.qsrt_ID61_if_true:
	lw	VirtualReg_70, -12(s0)
	lw	VirtualReg_71, -28(s0)
	mv	a0, VirtualReg_70
	mv	a1, VirtualReg_71
	call	qsrt
	mv	VirtualReg_72, a0
	j	.qsrt_ID61_if_out
.qsrt_ID61_if_out:
	lw	VirtualReg_73, -24(s0)
	lw	VirtualReg_74, -16(s0)
	slt	fuckLLVM_67, VirtualReg_73, VirtualReg_74
	bnez	fuckLLVM_67, .qsrt_ID67_if_true
	j	.qsrt_ID67_if_out
.qsrt_ID67_if_true:
	lw	VirtualReg_75, -24(s0)
	lw	VirtualReg_76, -16(s0)
	mv	a0, VirtualReg_75
	mv	a1, VirtualReg_76
	call	qsrt
	mv	VirtualReg_77, a0
	j	.qsrt_ID67_if_out
.qsrt_ID67_if_out:
	li	VirtualReg_78, 0
	sw	VirtualReg_78, -20(s0)
	j	.qsrt_return
	j	.qsrt_return
.qsrt_return:
	lw	VirtualReg_79, -20(s0)
	mv	a0, VirtualReg_79

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
.main_entry:
	call	__init
	li	VirtualReg_1, 0
	sw	VirtualReg_1, -12(s0)
	li	VirtualReg_3, 1
	sw	VirtualReg_3, -16(s0)
	j	.main_ID1_for_condition
.main_ID1_for_condition:
	lw	VirtualReg_4, -16(s0)
	lw	VirtualReg_5, fuckLLVM_n
	slt	fuckLLVM_4, VirtualReg_5, VirtualReg_4
	xori	fuckLLVM_4, fuckLLVM_4, 1
	bnez	fuckLLVM_4, .main_ID1_for_suite
	j	.main_ID1_for_out
.main_ID1_for_suite:
	lw	VirtualReg_6, fuckLLVM_a
	lw	VirtualReg_7, -16(s0)
	li	VirtualReg_10, 4
	mul	VirtualReg_9, VirtualReg_7, VirtualReg_10
	add	VirtualReg_8, VirtualReg_6, VirtualReg_9
	lw	VirtualReg_11, fuckLLVM_n
	li	VirtualReg_12, 1
	add	fuckLLVM_9, VirtualReg_11, VirtualReg_12
	lw	VirtualReg_13, -16(s0)
	sub	fuckLLVM_11, fuckLLVM_9, VirtualReg_13
	sw	fuckLLVM_11, 0(VirtualReg_8)
	j	.main_ID1_for_incr
.main_ID1_for_incr:
	lw	VirtualReg_14, -16(s0)
	li	VirtualReg_15, 1
	add	fuckLLVM_13, VirtualReg_14, VirtualReg_15
	sw	fuckLLVM_13, -16(s0)
	j	.main_ID1_for_condition
.main_ID1_for_out:
	lw	VirtualReg_16, fuckLLVM_n
	li	VirtualReg_17, 1
	mv	a0, VirtualReg_17
	mv	a1, VirtualReg_16
	call	qsrt
	mv	VirtualReg_18, a0
	li	VirtualReg_19, 1
	sw	VirtualReg_19, -16(s0)
	j	.main_ID15_for_condition
.main_ID15_for_condition:
	lw	VirtualReg_20, -16(s0)
	lw	VirtualReg_21, fuckLLVM_n
	slt	fuckLLVM_18, VirtualReg_21, VirtualReg_20
	xori	fuckLLVM_18, fuckLLVM_18, 1
	bnez	fuckLLVM_18, .main_ID15_for_suite
	j	.main_ID15_for_out
.main_ID15_for_suite:
	lw	VirtualReg_22, fuckLLVM_a
	lw	VirtualReg_23, -16(s0)
	li	VirtualReg_26, 4
	mul	VirtualReg_25, VirtualReg_23, VirtualReg_26
	add	VirtualReg_24, VirtualReg_22, VirtualReg_25
	lw	VirtualReg_27, 0(VirtualReg_24)
	mv	a0, VirtualReg_27
	call	toString
	mv	VirtualReg_28, a0
	mv	a0, VirtualReg_28
	call	print
	la	VirtualReg_29, fuckLLVM_.str.0
	mv	a0, VirtualReg_29
	call	print
	j	.main_ID15_for_incr
.main_ID15_for_incr:
	lw	VirtualReg_30, -16(s0)
	li	VirtualReg_31, 1
	add	fuckLLVM_29, VirtualReg_30, VirtualReg_31
	sw	fuckLLVM_29, -16(s0)
	j	.main_ID15_for_condition
.main_ID15_for_out:
	la	VirtualReg_32, fuckLLVM_.str.1
	mv	a0, VirtualReg_32
	call	print
	li	VirtualReg_33, 0
	sw	VirtualReg_33, -12(s0)
	j	.main_return
	j	.main_return
.main_return:
	lw	VirtualReg_34, -12(s0)
	mv	a0, VirtualReg_34

	.section	.sbss
	.type	fuckLLVM_a,@object
	.globl	fuckLLVM_a
	.p2align	2
fuckLLVM_a:
	.word	0
	.size	fuckLLVM_a, 8

	.section	.sbss
	.type	fuckLLVM_n,@object
	.globl	fuckLLVM_n
	.p2align	2
fuckLLVM_n:
	.word	10000
	.size	fuckLLVM_n, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"  "
	.size	fuckLLVM_.str.0, 2

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"\n "
	.size	fuckLLVM_.str.1, 3

