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
	li	VirtualReg_1, 0
	li	VirtualReg_2, -12
	add	VirtualReg_2, null, VirtualReg_2
	sw	VirtualReg_1, 0(VirtualReg_2)
	call	getInt
	mv	VirtualReg_3, null
	sw	VirtualReg_3, fuckLLVM_n, VirtualReg_4
	call	getInt
	mv	VirtualReg_5, null
	sw	VirtualReg_5, fuckLLVM_p, VirtualReg_6
	call	getInt
	mv	VirtualReg_7, null
	sw	VirtualReg_7, fuckLLVM_k, VirtualReg_8
	lw	VirtualReg_9, fuckLLVM_p
	lw	VirtualReg_10, fuckLLVM_k
	sub	fuckLLVM_6, VirtualReg_9, VirtualReg_10
	li	VirtualReg_11, 1
	slt	fuckLLVM_7, VirtualReg_11, fuckLLVM_6
	bnez	fuckLLVM_7, .main_ID7_if_true
	j	.main_ID7_if_out
.main_ID7_if_true:
	la	VirtualReg_12, fuckLLVM_.str.0
	mv	null, VirtualReg_12
	call	print
	j	.main_ID7_if_out
.main_ID7_if_out:
	lw	VirtualReg_13, fuckLLVM_p
	lw	VirtualReg_14, fuckLLVM_k
	sub	fuckLLVM_12, VirtualReg_13, VirtualReg_14
	sw	fuckLLVM_12, fuckLLVM_i, VirtualReg_15
	j	.main_ID12_for_condition
.main_ID12_for_condition:
	lw	VirtualReg_16, fuckLLVM_i
	lw	VirtualReg_17, fuckLLVM_p
	lw	VirtualReg_18, fuckLLVM_k
	add	fuckLLVM_16, VirtualReg_17, VirtualReg_18
	slt	fuckLLVM_17, fuckLLVM_16, VirtualReg_16
	xori	fuckLLVM_17, fuckLLVM_17, 1
	bnez	fuckLLVM_17, .main_ID12_for_suite
	j	.main_ID12_for_out
.main_ID12_for_suite:
	lw	VirtualReg_19, fuckLLVM_i
	li	VirtualReg_20, 1
	slt	fuckLLVM_19, VirtualReg_19, VirtualReg_20
	xori	fuckLLVM_19, fuckLLVM_19, 1
	li	VirtualReg_43, 0
	mv	VirtualReg_23, VirtualReg_43
	bnez	fuckLLVM_19, .main_ID19_AndAnd_true
	mv	VirtualReg_23, VirtualReg_43
	j	.main_ID19_AndAnd_out
.main_ID19_AndAnd_true:
	lw	VirtualReg_21, fuckLLVM_i
	lw	VirtualReg_22, fuckLLVM_n
	slt	fuckLLVM_22, VirtualReg_22, VirtualReg_21
	xori	fuckLLVM_22, fuckLLVM_22, 1
	mv	VirtualReg_23, fuckLLVM_22
	j	.main_ID19_AndAnd_out
.main_ID19_AndAnd_out:
	bnez	VirtualReg_23, .main_ID23_if_true
	j	.main_ID23_if_out
.main_ID26_if_true:
	la	VirtualReg_24, fuckLLVM_.str.1
	mv	null, VirtualReg_24
	call	print
	lw	VirtualReg_25, fuckLLVM_i
	mv	null, VirtualReg_25
	call	toString
	mv	VirtualReg_26, null
	mv	null, VirtualReg_26
	call	print
	la	VirtualReg_27, fuckLLVM_.str.2
	mv	null, VirtualReg_27
	call	print
	j	.main_ID26_if_out
.main_ID26_if_false:
	lw	VirtualReg_28, fuckLLVM_i
	mv	null, VirtualReg_28
	call	printInt
	la	VirtualReg_29, fuckLLVM_.str.3
	mv	null, VirtualReg_29
	call	print
	j	.main_ID26_if_out
.main_ID26_if_out:
	j	.main_ID23_if_out
.main_ID23_if_true:
	lw	VirtualReg_30, fuckLLVM_i
	lw	VirtualReg_31, fuckLLVM_p
	xor	fuckLLVM_26, VirtualReg_30, VirtualReg_31
	sltiu	fuckLLVM_26, fuckLLVM_26, 1
	bnez	fuckLLVM_26, .main_ID26_if_true
	j	.main_ID26_if_false
.main_ID23_if_out:
	j	.main_ID12_for_incr
.main_ID12_for_incr:
	lw	VirtualReg_32, fuckLLVM_i
	li	VirtualReg_33, 1
	add	fuckLLVM_40, VirtualReg_32, VirtualReg_33
	sw	fuckLLVM_40, fuckLLVM_i, VirtualReg_34
	j	.main_ID12_for_condition
.main_ID12_for_out:
	lw	VirtualReg_35, fuckLLVM_p
	lw	VirtualReg_36, fuckLLVM_k
	add	fuckLLVM_43, VirtualReg_35, VirtualReg_36
	lw	VirtualReg_37, fuckLLVM_n
	slt	fuckLLVM_45, fuckLLVM_43, VirtualReg_37
	bnez	fuckLLVM_45, .main_ID45_if_true
	j	.main_ID45_if_out
.main_ID45_if_true:
	la	VirtualReg_38, fuckLLVM_.str.4
	mv	null, VirtualReg_38
	call	print
	j	.main_ID45_if_out
.main_ID45_if_out:
	li	VirtualReg_39, 0
	li	VirtualReg_40, -12
	add	VirtualReg_40, null, VirtualReg_40
	sw	VirtualReg_39, 0(VirtualReg_40)
	j	.main_return
	j	.main_return
.main_return:
	li	VirtualReg_42, -12
	add	VirtualReg_42, null, VirtualReg_42
	lw	VirtualReg_41, 0(VirtualReg_42)
	mv	null, VirtualReg_41

	.section	.sbss
	.type	fuckLLVM_n,@object
	.globl	fuckLLVM_n
	.p2align	2
fuckLLVM_n:
	.word	0
	.size	fuckLLVM_n, 8

	.section	.sbss
	.type	fuckLLVM_p,@object
	.globl	fuckLLVM_p
	.p2align	2
fuckLLVM_p:
	.word	0
	.size	fuckLLVM_p, 8

	.section	.sbss
	.type	fuckLLVM_k,@object
	.globl	fuckLLVM_k
	.p2align	2
fuckLLVM_k:
	.word	0
	.size	fuckLLVM_k, 8

	.section	.sbss
	.type	fuckLLVM_i,@object
	.globl	fuckLLVM_i
	.p2align	2
fuckLLVM_i:
	.word	0
	.size	fuckLLVM_i, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"<<  "
	.size	fuckLLVM_.str.0, 4

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"( "
	.size	fuckLLVM_.str.1, 2

	.section	.rodata
	.type	fuckLLVM_.str.2,@object
fuckLLVM_.str.2:
	.asciz	")  "
	.size	fuckLLVM_.str.2, 3

	.section	.rodata
	.type	fuckLLVM_.str.3,@object
fuckLLVM_.str.3:
	.asciz	"  "
	.size	fuckLLVM_.str.3, 2

	.section	.rodata
	.type	fuckLLVM_.str.4,@object
fuckLLVM_.str.4:
	.asciz	">>  "
	.size	fuckLLVM_.str.4, 4

