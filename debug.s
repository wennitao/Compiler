	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
.__init_entry:
	addi	VirtualReg_0, zero, 4
	addi	VirtualReg_1, zero, 4
	mul	fuckLLVM_0, VirtualReg_0, VirtualReg_1
	addi	VirtualReg_2, zero, 4
	add	fuckLLVM_1, fuckLLVM_0, VirtualReg_2
	mv	a0, fuckLLVM_1
	call	malloc
	mv	VirtualReg_3, a0
	addi	VirtualReg_4, zero, 4
	sw	VirtualReg_4, 0(VirtualReg_3)
	addi	VirtualReg_5, VirtualReg_3, 4
	sw	VirtualReg_5, fuckLLVM_a, VirtualReg_6
	j	.__init_return
.__init_return:

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
.main_entry:
	call	__init
	addi	VirtualReg_1, zero, 0
	sw	VirtualReg_1, -12(s0)
	lw	VirtualReg_2, fuckLLVM_a
	addi	VirtualReg_3, VirtualReg_2, -4
	lw	VirtualReg_4, 0(VirtualReg_3)
	mv	a0, VirtualReg_4
	call	printlnInt
	lw	VirtualReg_6, fuckLLVM_a
	addi	VirtualReg_7, VirtualReg_6, -4
	lw	VirtualReg_8, 0(VirtualReg_7)
	addi	VirtualReg_9, zero, 4
	mul	fuckLLVM_12, VirtualReg_8, VirtualReg_9
	addi	VirtualReg_10, zero, 4
	add	fuckLLVM_13, fuckLLVM_12, VirtualReg_10
	mv	a0, fuckLLVM_13
	call	malloc
	mv	VirtualReg_11, a0
	sw	VirtualReg_8, 0(VirtualReg_11)
	addi	VirtualReg_12, VirtualReg_11, 4
	sw	VirtualReg_12, -16(s0)
	lw	VirtualReg_13, -16(s0)
	addi	VirtualReg_14, VirtualReg_13, -4
	lw	VirtualReg_15, 0(VirtualReg_14)
	mv	a0, VirtualReg_15
	call	printlnInt
	addi	VirtualReg_17, zero, 0
	sw	VirtualReg_17, -20(s0)
	j	.ID24_for_condition
.ID24_for_condition:
	lw	VirtualReg_18, -20(s0)
	lw	VirtualReg_19, fuckLLVM_a
	addi	VirtualReg_20, VirtualReg_19, -4
	lw	VirtualReg_21, 0(VirtualReg_20)
	slt	fuckLLVM_30, VirtualReg_18, VirtualReg_21
	bnez	fuckLLVM_30, .ID24_for_suite
	j	.ID24_for_out
.ID24_for_suite:
	lw	VirtualReg_22, fuckLLVM_a
	lw	VirtualReg_23, -20(s0)
	addi	VirtualReg_26, zero, 4
	mul	VirtualReg_25, VirtualReg_23, VirtualReg_26
	add	VirtualReg_24, VirtualReg_22, VirtualReg_25
	addi	VirtualReg_27, zero, 0
	sw	VirtualReg_27, 0(VirtualReg_24)
	lw	VirtualReg_28, -16(s0)
	lw	VirtualReg_29, -20(s0)
	addi	VirtualReg_32, zero, 4
	mul	VirtualReg_31, VirtualReg_29, VirtualReg_32
	add	VirtualReg_30, VirtualReg_28, VirtualReg_31
	call	getInt
	mv	VirtualReg_33, a0
	sw	VirtualReg_33, 0(VirtualReg_30)
	lw	VirtualReg_34, -16(s0)
	lw	VirtualReg_35, -20(s0)
	addi	VirtualReg_38, zero, 4
	mul	VirtualReg_37, VirtualReg_35, VirtualReg_38
	add	VirtualReg_36, VirtualReg_34, VirtualReg_37
	lw	VirtualReg_39, 0(VirtualReg_36)
	mv	a0, VirtualReg_39
	call	printlnInt
	j	.ID24_for_incr
.ID24_for_incr:
	lw	VirtualReg_40, -20(s0)
	addi	VirtualReg_41, zero, 1
	add	fuckLLVM_44, VirtualReg_40, VirtualReg_41
	sw	fuckLLVM_44, -20(s0)
	j	.ID24_for_condition
.ID24_for_out:
	addi	VirtualReg_42, zero, 0
	sw	VirtualReg_42, -20(s0)
	j	.ID44_for_condition
.ID44_for_condition:
	lw	VirtualReg_43, -20(s0)
	lw	VirtualReg_44, fuckLLVM_a
	addi	VirtualReg_45, VirtualReg_44, -4
	lw	VirtualReg_46, 0(VirtualReg_45)
	slt	fuckLLVM_50, VirtualReg_43, VirtualReg_46
	bnez	fuckLLVM_50, .ID44_for_suite
	j	.ID44_for_out
.ID44_for_suite:
	lw	VirtualReg_47, fuckLLVM_a
	lw	VirtualReg_48, -20(s0)
	addi	VirtualReg_51, zero, 4
	mul	VirtualReg_50, VirtualReg_48, VirtualReg_51
	add	VirtualReg_49, VirtualReg_47, VirtualReg_50
	lw	VirtualReg_52, 0(VirtualReg_49)
	mv	a0, VirtualReg_52
	call	toString
	mv	VirtualReg_53, a0
	mv	a0, VirtualReg_53
	call	print
	j	.ID44_for_incr
.ID44_for_incr:
	lw	VirtualReg_54, -20(s0)
	addi	VirtualReg_55, zero, 1
	add	fuckLLVM_59, VirtualReg_54, VirtualReg_55
	sw	fuckLLVM_59, -20(s0)
	j	.ID44_for_condition
.ID44_for_out:
	la	VirtualReg_56, fuckLLVM_.str.0
	mv	a0, VirtualReg_56
	call	println
	lw	VirtualReg_57, -16(s0)
	sw	VirtualReg_57, fuckLLVM_a, VirtualReg_58
	addi	VirtualReg_59, zero, 0
	sw	VirtualReg_59, -20(s0)
	j	.ID63_for_condition
.ID63_for_condition:
	lw	VirtualReg_60, -20(s0)
	lw	VirtualReg_61, fuckLLVM_a
	addi	VirtualReg_62, VirtualReg_61, -4
	lw	VirtualReg_63, 0(VirtualReg_62)
	slt	fuckLLVM_69, VirtualReg_60, VirtualReg_63
	bnez	fuckLLVM_69, .ID63_for_suite
	j	.ID63_for_out
.ID63_for_suite:
	lw	VirtualReg_64, fuckLLVM_a
	lw	VirtualReg_65, -20(s0)
	addi	VirtualReg_68, zero, 4
	mul	VirtualReg_67, VirtualReg_65, VirtualReg_68
	add	VirtualReg_66, VirtualReg_64, VirtualReg_67
	lw	VirtualReg_69, 0(VirtualReg_66)
	mv	a0, VirtualReg_69
	call	toString
	mv	VirtualReg_70, a0
	mv	a0, VirtualReg_70
	call	print
	j	.ID63_for_incr
.ID63_for_incr:
	lw	VirtualReg_71, -20(s0)
	addi	VirtualReg_72, zero, 1
	add	fuckLLVM_78, VirtualReg_71, VirtualReg_72
	sw	fuckLLVM_78, -20(s0)
	j	.ID63_for_condition
.ID63_for_out:
	addi	VirtualReg_73, zero, 0
	sw	VirtualReg_73, -12(s0)
	j	.main_return
	j	.main_return
.main_return:
	lw	VirtualReg_74, -12(s0)
	mv	a0, VirtualReg_74

	.section	.sbss
	.type	fuckLLVM_a,@object
	.globl	fuckLLVM_a
	.p2align	2
fuckLLVM_a:
	.word	0
	.size	fuckLLVM_a, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	" "
	.size	fuckLLVM_.str.0, 1

