	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
.__init_entry:
	li	VirtualReg_0, 15001
	li	VirtualReg_1, 1
	mul	fuckLLVM_0, VirtualReg_0, VirtualReg_1
	li	VirtualReg_2, 4
	add	fuckLLVM_1, fuckLLVM_0, VirtualReg_2
	mv	a0, fuckLLVM_1
	call	malloc
	mv	VirtualReg_3, a0
	li	VirtualReg_4, 15001
	sw	VirtualReg_4, 0(VirtualReg_3)
	li	VirtualReg_7, 1
	li	VirtualReg_8, 4
	mul	VirtualReg_6, VirtualReg_7, VirtualReg_8
	add	VirtualReg_5, VirtualReg_3, VirtualReg_6
	sw	VirtualReg_5, fuckLLVM_b, VirtualReg_9
	j	.__init_return
.__init_return:

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
.main_entry:
	call	__init
	li	VirtualReg_0, 0
	sw	VirtualReg_0, 0(fuckLLVM_0)
	li	VirtualReg_1, 1
	sw	VirtualReg_1, 0(fuckLLVM_1)
	j	.main_ID1_for_condition
.main_ID1_for_condition:
	lw	VirtualReg_2, 0(fuckLLVM_1)
	lw	VirtualReg_3, fuckLLVM_N
	slt	fuckLLVM_4, VirtualReg_3, VirtualReg_2
	xori	fuckLLVM_4, fuckLLVM_4, 1
	bnez	fuckLLVM_4, .main_ID1_for_suite
	j	.main_ID1_for_out
.main_ID1_for_suite:
	lw	VirtualReg_4, fuckLLVM_b
	lw	VirtualReg_5, 0(fuckLLVM_1)
	li	VirtualReg_8, 1
	mul	VirtualReg_7, VirtualReg_5, VirtualReg_8
	add	VirtualReg_6, VirtualReg_4, VirtualReg_7
	li	VirtualReg_9, 1
	sb	VirtualReg_9, 0(VirtualReg_6)
	j	.main_ID1_for_incr
.main_ID1_for_incr:
	lw	VirtualReg_10, 0(fuckLLVM_1)
	li	VirtualReg_11, 1
	add	fuckLLVM_9, VirtualReg_10, VirtualReg_11
	sw	fuckLLVM_9, 0(fuckLLVM_1)
	j	.main_ID1_for_condition
.main_ID1_for_out:
	li	VirtualReg_12, 2
	sw	VirtualReg_12, 0(fuckLLVM_1)
	j	.main_ID9_for_condition
.main_ID9_for_condition:
	lw	VirtualReg_13, 0(fuckLLVM_1)
	lw	VirtualReg_14, fuckLLVM_N
	slt	fuckLLVM_12, VirtualReg_14, VirtualReg_13
	xori	fuckLLVM_12, fuckLLVM_12, 1
	bnez	fuckLLVM_12, .main_ID9_for_suite
	j	.main_ID9_for_out
.main_ID9_for_suite:
	lw	VirtualReg_15, fuckLLVM_b
	lw	VirtualReg_16, 0(fuckLLVM_1)
	li	VirtualReg_19, 1
	mul	VirtualReg_18, VirtualReg_16, VirtualReg_19
	add	VirtualReg_17, VirtualReg_15, VirtualReg_18
	lb	VirtualReg_20, 0(VirtualReg_17)
	bnez	VirtualReg_20, .main_ID17_if_true
	j	.main_ID17_if_out
.main_ID20_AndAnd_true:
	lw	VirtualReg_21, fuckLLVM_b
	lw	VirtualReg_22, 0(fuckLLVM_1)
	li	VirtualReg_23, 2
	sub	fuckLLVM_23, VirtualReg_22, VirtualReg_23
	li	VirtualReg_26, 1
	mul	VirtualReg_25, fuckLLVM_23, VirtualReg_26
	add	VirtualReg_24, VirtualReg_21, VirtualReg_25
	lb	VirtualReg_27, 0(VirtualReg_24)
	mv	VirtualReg_28, VirtualReg_27
	j	.main_ID20_AndAnd_out
.main_ID20_AndAnd_out:
	li	VirtualReg_29, 0
	bnez	VirtualReg_28, .main_ID27_if_true
	j	.main_ID27_if_out
.main_ID27_if_true:
	lw	VirtualReg_30, fuckLLVM_resultCount
	li	VirtualReg_31, 1
	add	fuckLLVM_29, VirtualReg_30, VirtualReg_31
	sw	fuckLLVM_29, fuckLLVM_resultCount, VirtualReg_32
	lw	VirtualReg_33, 0(fuckLLVM_1)
	li	VirtualReg_34, 2
	sub	fuckLLVM_31, VirtualReg_33, VirtualReg_34
	mv	a0, fuckLLVM_31
	call	toString
	mv	VirtualReg_35, a0
	la	VirtualReg_36, fuckLLVM_.str.0
	mv	a0, VirtualReg_35
	mv	a1, VirtualReg_36
	call	string_add
	mv	VirtualReg_37, a0
	lw	VirtualReg_38, 0(fuckLLVM_1)
	mv	a0, VirtualReg_38
	call	toString
	mv	VirtualReg_39, a0
	mv	a0, VirtualReg_37
	mv	a1, VirtualReg_39
	call	string_add
	mv	VirtualReg_40, a0
	mv	a0, VirtualReg_40
	call	println
	j	.main_ID27_if_out
.main_ID27_if_out:
	j	.main_ID43_while_condition
.main_ID43_while_condition:
	lw	VirtualReg_41, 0(fuckLLVM_1)
	lw	VirtualReg_42, -12(s0)
	mul	fuckLLVM_45, VirtualReg_41, VirtualReg_42
	lw	VirtualReg_44, fuckLLVM_N
	slt	fuckLLVM_47, VirtualReg_44, fuckLLVM_45
	xori	fuckLLVM_47, fuckLLVM_47, 1
	bnez	fuckLLVM_47, .main_ID48_while_suite
	j	.main_ID48_while_out
.main_ID48_while_suite:
	lw	VirtualReg_45, fuckLLVM_b
	lw	VirtualReg_46, 0(fuckLLVM_1)
	lw	VirtualReg_47, -12(s0)
	mul	fuckLLVM_51, VirtualReg_46, VirtualReg_47
	li	VirtualReg_50, 1
	mul	VirtualReg_49, fuckLLVM_51, VirtualReg_50
	add	VirtualReg_48, VirtualReg_45, VirtualReg_49
	li	VirtualReg_51, 0
	sb	VirtualReg_51, 0(VirtualReg_48)
	lw	VirtualReg_52, -12(s0)
	li	VirtualReg_53, 1
	add	fuckLLVM_54, VirtualReg_52, VirtualReg_53
	sw	fuckLLVM_54, -12(s0)
	j	.main_ID43_while_condition
.main_ID48_while_out:
	j	.main_ID17_if_out
.main_ID17_if_true:
	li	VirtualReg_54, 2
	sw	VirtualReg_54, -12(s0)
	lw	VirtualReg_55, 0(fuckLLVM_1)
	li	VirtualReg_56, 3
	slt	fuckLLVM_20, VirtualReg_56, VirtualReg_55
	mv	VirtualReg_28, VirtualReg_29
	bnez	fuckLLVM_20, .main_ID20_AndAnd_true
	mv	VirtualReg_28, VirtualReg_29
	j	.main_ID20_AndAnd_out
.main_ID17_if_out:
	j	.main_ID9_for_incr
.main_ID9_for_incr:
	lw	VirtualReg_57, 0(fuckLLVM_1)
	li	VirtualReg_58, 1
	add	fuckLLVM_56, VirtualReg_57, VirtualReg_58
	sw	fuckLLVM_56, 0(fuckLLVM_1)
	j	.main_ID9_for_condition
.main_ID9_for_out:
	lw	VirtualReg_59, fuckLLVM_resultCount
	mv	a0, VirtualReg_59
	call	toString
	mv	VirtualReg_60, a0
	la	VirtualReg_61, fuckLLVM_.str.1
	mv	a0, VirtualReg_61
	mv	a1, VirtualReg_60
	call	string_add
	mv	VirtualReg_62, a0
	mv	a0, VirtualReg_62
	call	println
	li	VirtualReg_63, 0
	sw	VirtualReg_63, 0(fuckLLVM_0)
	j	.main_return
	j	.main_return
.main_return:
	lw	VirtualReg_64, 0(fuckLLVM_0)
	mv	a0, VirtualReg_64

	.section	.sbss
	.type	fuckLLVM_N,@object
	.globl	fuckLLVM_N
	.p2align	2
fuckLLVM_N:
	.word	15000
	.size	fuckLLVM_N, 8

	.section	.sbss
	.type	fuckLLVM_b,@object
	.globl	fuckLLVM_b
	.p2align	2
fuckLLVM_b:
	.word	0
	.size	fuckLLVM_b, 8

	.section	.sbss
	.type	fuckLLVM_resultCount,@object
	.globl	fuckLLVM_resultCount
	.p2align	2
fuckLLVM_resultCount:
	.word	0
	.size	fuckLLVM_resultCount, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"  "
	.size	fuckLLVM_.str.0, 2

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"Total:  "
	.size	fuckLLVM_.str.1, 8

