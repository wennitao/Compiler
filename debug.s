	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
.__init_entry:
	j	.__init_return
.__init_return:

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
.main_entry:
	call	__init
	call	getInt
	mv	VirtualReg_1, a0
	la	VirtualReg_2, fuckLLVM_n
	sw	VirtualReg_1, 0(VirtualReg_2)
	la	VirtualReg_4, fuckLLVM_n
	lw	VirtualReg_3, 0(VirtualReg_4)
	addi	VirtualReg_5, zero, 4
	rem	fuckLLVM_3, VirtualReg_3, VirtualReg_5
	addi	VirtualReg_6, zero, 0
	xor	fuckLLVM_4, fuckLLVM_3, VirtualReg_6
	sltiu	fuckLLVM_4, fuckLLVM_4, 1
	mv	VirtualReg_11, VirtualReg_12
	bnez	fuckLLVM_4, .ID4_OrOr_out
	mv	VirtualReg_11, VirtualReg_12
	j	.ID4_OrOr_false
.ID4_OrOr_false:
	la	VirtualReg_8, fuckLLVM_n
	lw	VirtualReg_7, 0(VirtualReg_8)
	addi	VirtualReg_9, zero, 7
	rem	fuckLLVM_6, VirtualReg_7, VirtualReg_9
	addi	VirtualReg_10, zero, 0
	xor	fuckLLVM_7, fuckLLVM_6, VirtualReg_10
	sltiu	fuckLLVM_7, fuckLLVM_7, 1
	mv	VirtualReg_11, fuckLLVM_7
	j	.ID4_OrOr_out
.ID4_OrOr_out:
	addi	VirtualReg_12, zero, 1
	mv	VirtualReg_17, VirtualReg_18
	bnez	VirtualReg_11, .ID8_OrOr_out
	mv	VirtualReg_17, VirtualReg_18
	j	.ID8_OrOr_false
.ID8_OrOr_false:
	la	VirtualReg_14, fuckLLVM_n
	lw	VirtualReg_13, 0(VirtualReg_14)
	addi	VirtualReg_15, zero, 47
	rem	fuckLLVM_10, VirtualReg_13, VirtualReg_15
	addi	VirtualReg_16, zero, 0
	xor	fuckLLVM_11, fuckLLVM_10, VirtualReg_16
	sltiu	fuckLLVM_11, fuckLLVM_11, 1
	mv	VirtualReg_17, fuckLLVM_11
	j	.ID8_OrOr_out
.ID8_OrOr_out:
	addi	VirtualReg_18, zero, 1
	mv	VirtualReg_23, VirtualReg_24
	bnez	VirtualReg_17, .ID12_OrOr_out
	mv	VirtualReg_23, VirtualReg_24
	j	.ID12_OrOr_false
.ID12_OrOr_false:
	la	VirtualReg_20, fuckLLVM_n
	lw	VirtualReg_19, 0(VirtualReg_20)
	addi	VirtualReg_21, zero, 74
	rem	fuckLLVM_14, VirtualReg_19, VirtualReg_21
	addi	VirtualReg_22, zero, 0
	xor	fuckLLVM_15, fuckLLVM_14, VirtualReg_22
	sltiu	fuckLLVM_15, fuckLLVM_15, 1
	mv	VirtualReg_23, fuckLLVM_15
	j	.ID12_OrOr_out
.ID12_OrOr_out:
	addi	VirtualReg_24, zero, 1
	mv	VirtualReg_29, VirtualReg_30
	bnez	VirtualReg_23, .ID16_OrOr_out
	mv	VirtualReg_29, VirtualReg_30
	j	.ID16_OrOr_false
.ID16_OrOr_false:
	la	VirtualReg_26, fuckLLVM_n
	lw	VirtualReg_25, 0(VirtualReg_26)
	addi	VirtualReg_27, zero, 477
	rem	fuckLLVM_18, VirtualReg_25, VirtualReg_27
	addi	VirtualReg_28, zero, 0
	xor	fuckLLVM_19, fuckLLVM_18, VirtualReg_28
	sltiu	fuckLLVM_19, fuckLLVM_19, 1
	mv	VirtualReg_29, fuckLLVM_19
	j	.ID16_OrOr_out
.ID16_OrOr_out:
	addi	VirtualReg_30, zero, 1
	bnez	VirtualReg_29, .ID20_if_true
	j	.ID20_if_false
.ID20_if_true:
	la	VirtualReg_31, fuckLLVM_.str.0
	mv	a0, VirtualReg_31
	call	print
	j	.ID20_if_out
.ID20_if_false:
	la	VirtualReg_32, fuckLLVM_.str.1
	mv	a0, VirtualReg_32
	call	print
	j	.ID20_if_out
.ID20_if_out:
	j	.main_return
.main_return:
	lw	VirtualReg_33, -12(s0)
	mv	a0, VirtualReg_33

	.section	.sbss
	.type	fuckLLVM_n,@object
	.globl	fuckLLVM_n
	.p2align	2
fuckLLVM_n:
	.word	0
	.size	fuckLLVM_n, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"YES "
	.size	fuckLLVM_.str.0, 4

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"NO "
	.size	fuckLLVM_.str.1, 3

