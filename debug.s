	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
.__init_entry:
	li	VirtualReg_0, 0
	sw	VirtualReg_0, fuckLLVM_root, VirtualReg_1
	li	VirtualReg_2, 1
	li	VirtualReg_3, 31
	sll	fuckLLVM_0, VirtualReg_2, VirtualReg_3
	li	VirtualReg_4, -1
	xor	fuckLLVM_1, fuckLLVM_0, VirtualReg_4
	sw	fuckLLVM_1, fuckLLVM_MaxRandInt, VirtualReg_5
	j	.__init_return
.__init_return:

	.globl	Node
	.p2align	2
	.type	Node,@function
Node:
.Node_assemblyInit:
	mv	VirtualReg_0, a0
.Node:
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_0, 0(VirtualReg_2)
	j	.Node_return
.Node_return:

	.globl	constructNode
	.p2align	2
	.type	constructNode,@function
constructNode:
.constructNode_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, a3
.constructNode_entry:
	li	VirtualReg_5, -12
	add	VirtualReg_5, s0, VirtualReg_5
	sw	VirtualReg_0, 0(VirtualReg_5)
	li	VirtualReg_7, -16
	add	VirtualReg_7, s0, VirtualReg_7
	sw	VirtualReg_1, 0(VirtualReg_7)
	li	VirtualReg_9, -20
	add	VirtualReg_9, s0, VirtualReg_9
	sw	VirtualReg_2, 0(VirtualReg_9)
	li	VirtualReg_11, -24
	add	VirtualReg_11, s0, VirtualReg_11
	sw	VirtualReg_3, 0(VirtualReg_11)
	li	VirtualReg_14, 24
	mv	a0, VirtualReg_14
	call	malloc
	mv	VirtualReg_15, a0
	mv	a0, VirtualReg_15
	call	Node
	li	VirtualReg_16, -32
	add	VirtualReg_16, s0, VirtualReg_16
	sw	VirtualReg_15, 0(VirtualReg_16)
	li	VirtualReg_18, -32
	add	VirtualReg_18, s0, VirtualReg_18
	lw	VirtualReg_17, 0(VirtualReg_18)
	addi	VirtualReg_19, VirtualReg_17, 8
	li	VirtualReg_20, 2
	li	VirtualReg_21, 24
	mul	fuckLLVM_15, VirtualReg_20, VirtualReg_21
	li	VirtualReg_22, 4
	add	fuckLLVM_16, fuckLLVM_15, VirtualReg_22
	mv	a0, fuckLLVM_16
	call	malloc
	mv	VirtualReg_23, a0
	li	VirtualReg_24, 2
	sw	VirtualReg_24, 0(VirtualReg_23)
	li	VirtualReg_27, 1
	li	VirtualReg_28, 4
	mul	VirtualReg_26, VirtualReg_27, VirtualReg_28
	add	VirtualReg_25, VirtualReg_23, VirtualReg_26
	sw	VirtualReg_25, 0(VirtualReg_19)
	li	VirtualReg_30, -32
	add	VirtualReg_30, s0, VirtualReg_30
	lw	VirtualReg_29, 0(VirtualReg_30)
	addi	VirtualReg_31, VirtualReg_29, 16
	li	VirtualReg_33, -12
	add	VirtualReg_33, s0, VirtualReg_33
	lw	VirtualReg_32, 0(VirtualReg_33)
	sw	VirtualReg_32, 0(VirtualReg_31)
	li	VirtualReg_35, -32
	add	VirtualReg_35, s0, VirtualReg_35
	lw	VirtualReg_34, 0(VirtualReg_35)
	addi	VirtualReg_36, VirtualReg_34, 20
	li	VirtualReg_37, 1
	sw	VirtualReg_37, 0(VirtualReg_36)
	li	VirtualReg_39, -32
	add	VirtualReg_39, s0, VirtualReg_39
	lw	VirtualReg_38, 0(VirtualReg_39)
	addi	VirtualReg_40, VirtualReg_38, 0
	li	VirtualReg_42, -16
	add	VirtualReg_42, s0, VirtualReg_42
	lw	VirtualReg_41, 0(VirtualReg_42)
	sw	VirtualReg_41, 0(VirtualReg_40)
	li	VirtualReg_44, -32
	add	VirtualReg_44, s0, VirtualReg_44
	lw	VirtualReg_43, 0(VirtualReg_44)
	addi	VirtualReg_45, VirtualReg_43, 8
	lw	VirtualReg_46, 0(VirtualReg_45)
	li	VirtualReg_49, 0
	li	VirtualReg_50, 24
	mul	VirtualReg_48, VirtualReg_49, VirtualReg_50
	add	VirtualReg_47, VirtualReg_46, VirtualReg_48
	li	VirtualReg_52, -20
	add	VirtualReg_52, s0, VirtualReg_52
	lw	VirtualReg_51, 0(VirtualReg_52)
	sw	VirtualReg_51, 0(VirtualReg_47)
	li	VirtualReg_54, -32
	add	VirtualReg_54, s0, VirtualReg_54
	lw	VirtualReg_53, 0(VirtualReg_54)
	addi	VirtualReg_55, VirtualReg_53, 8
	lw	VirtualReg_56, 0(VirtualReg_55)
	li	VirtualReg_59, 1
	li	VirtualReg_60, 24
	mul	VirtualReg_58, VirtualReg_59, VirtualReg_60
	add	VirtualReg_57, VirtualReg_56, VirtualReg_58
	li	VirtualReg_62, -24
	add	VirtualReg_62, s0, VirtualReg_62
	lw	VirtualReg_61, 0(VirtualReg_62)
	sw	VirtualReg_61, 0(VirtualReg_57)
	li	VirtualReg_64, -32
	add	VirtualReg_64, s0, VirtualReg_64
	lw	VirtualReg_63, 0(VirtualReg_64)
	li	VirtualReg_65, -28
	add	VirtualReg_65, s0, VirtualReg_65
	sw	VirtualReg_63, 0(VirtualReg_65)
	j	.constructNode_return
	j	.constructNode_return
.constructNode_return:
	li	VirtualReg_67, -28
	add	VirtualReg_67, s0, VirtualReg_67
	lw	VirtualReg_66, 0(VirtualReg_67)
	mv	a0, VirtualReg_66

	.globl	insertImpl
	.p2align	2
	.type	insertImpl,@function
insertImpl:
.insertImpl_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, a3
.insertImpl_entry:
	li	VirtualReg_5, -12
	add	VirtualReg_5, s0, VirtualReg_5
	sw	VirtualReg_0, 0(VirtualReg_5)
	li	VirtualReg_7, -16
	add	VirtualReg_7, s0, VirtualReg_7
	sw	VirtualReg_1, 0(VirtualReg_7)
	li	VirtualReg_9, -20
	add	VirtualReg_9, s0, VirtualReg_9
	sw	VirtualReg_2, 0(VirtualReg_9)
	li	VirtualReg_11, -24
	add	VirtualReg_11, s0, VirtualReg_11
	sw	VirtualReg_3, 0(VirtualReg_11)
	li	VirtualReg_14, -12
	add	VirtualReg_14, s0, VirtualReg_14
	lw	VirtualReg_13, 0(VirtualReg_14)
	li	VirtualReg_15, 0
	xor	fuckLLVM_10, VirtualReg_13, VirtualReg_15
	sltiu	fuckLLVM_10, fuckLLVM_10, 1
	bnez	fuckLLVM_10, .insertImpl_ID10_if_true
	j	.insertImpl_ID10_if_out
.insertImpl_ID10_if_true:
	li	VirtualReg_17, -24
	add	VirtualReg_17, s0, VirtualReg_17
	lw	VirtualReg_16, 0(VirtualReg_17)
	li	VirtualReg_19, -16
	add	VirtualReg_19, s0, VirtualReg_19
	lw	VirtualReg_18, 0(VirtualReg_19)
	mv	a0, VirtualReg_16
	mv	a1, VirtualReg_18
	li	VirtualReg_20, 0
	mv	a2, VirtualReg_20
	li	VirtualReg_21, 0
	mv	a3, VirtualReg_21
	call	constructNode
	mv	VirtualReg_22, a0
	li	VirtualReg_23, -12
	add	VirtualReg_23, s0, VirtualReg_23
	sw	VirtualReg_22, 0(VirtualReg_23)
	li	VirtualReg_25, -16
	add	VirtualReg_25, s0, VirtualReg_25
	lw	VirtualReg_24, 0(VirtualReg_25)
	addi	VirtualReg_26, VirtualReg_24, 8
	lw	VirtualReg_27, 0(VirtualReg_26)
	li	VirtualReg_29, -20
	add	VirtualReg_29, s0, VirtualReg_29
	lw	VirtualReg_28, 0(VirtualReg_29)
	li	VirtualReg_32, 24
	mul	VirtualReg_31, VirtualReg_28, VirtualReg_32
	add	VirtualReg_30, VirtualReg_27, VirtualReg_31
	li	VirtualReg_34, -12
	add	VirtualReg_34, s0, VirtualReg_34
	lw	VirtualReg_33, 0(VirtualReg_34)
	sw	VirtualReg_33, 0(VirtualReg_30)
	li	VirtualReg_35, 0
	li	VirtualReg_36, -28
	add	VirtualReg_36, s0, VirtualReg_36
	sw	VirtualReg_35, 0(VirtualReg_36)
	j	.insertImpl_return
	j	.insertImpl_ID10_if_out
.insertImpl_ID10_if_out:
	li	VirtualReg_38, -12
	add	VirtualReg_38, s0, VirtualReg_38
	lw	VirtualReg_37, 0(VirtualReg_38)
	addi	VirtualReg_39, VirtualReg_37, 16
	lw	VirtualReg_40, 0(VirtualReg_39)
	li	VirtualReg_42, -24
	add	VirtualReg_42, s0, VirtualReg_42
	lw	VirtualReg_41, 0(VirtualReg_42)
	xor	fuckLLVM_27, VirtualReg_40, VirtualReg_41
	sltiu	fuckLLVM_27, fuckLLVM_27, 1
	bnez	fuckLLVM_27, .insertImpl_ID27_if_true
	j	.insertImpl_ID27_if_out
.insertImpl_ID27_if_true:
	li	VirtualReg_44, -12
	add	VirtualReg_44, s0, VirtualReg_44
	lw	VirtualReg_43, 0(VirtualReg_44)
	addi	VirtualReg_45, VirtualReg_43, 20
	lw	VirtualReg_46, 0(VirtualReg_45)
	li	VirtualReg_47, 1
	add	fuckLLVM_31, VirtualReg_46, VirtualReg_47
	sw	fuckLLVM_31, 0(VirtualReg_45)
	li	VirtualReg_48, 1
	li	VirtualReg_49, -28
	add	VirtualReg_49, s0, VirtualReg_49
	sw	VirtualReg_48, 0(VirtualReg_49)
	j	.insertImpl_return
	j	.insertImpl_ID27_if_out
.insertImpl_ID27_if_out:
	li	VirtualReg_51, 0
	li	VirtualReg_52, -32
	add	VirtualReg_52, s0, VirtualReg_52
	sw	VirtualReg_51, 0(VirtualReg_52)
	li	VirtualReg_54, -12
	add	VirtualReg_54, s0, VirtualReg_54
	lw	VirtualReg_53, 0(VirtualReg_54)
	addi	VirtualReg_55, VirtualReg_53, 16
	lw	VirtualReg_56, 0(VirtualReg_55)
	li	VirtualReg_58, -24
	add	VirtualReg_58, s0, VirtualReg_58
	lw	VirtualReg_57, 0(VirtualReg_58)
	slt	fuckLLVM_37, VirtualReg_56, VirtualReg_57
	bnez	fuckLLVM_37, .insertImpl_ID37_if_true
	j	.insertImpl_ID37_if_out
.insertImpl_ID37_if_true:
	li	VirtualReg_59, 1
	li	VirtualReg_60, -32
	add	VirtualReg_60, s0, VirtualReg_60
	sw	VirtualReg_59, 0(VirtualReg_60)
	j	.insertImpl_ID37_if_out
.insertImpl_ID37_if_out:
	li	VirtualReg_62, -12
	add	VirtualReg_62, s0, VirtualReg_62
	lw	VirtualReg_61, 0(VirtualReg_62)
	addi	VirtualReg_63, VirtualReg_61, 8
	lw	VirtualReg_64, 0(VirtualReg_63)
	li	VirtualReg_66, -32
	add	VirtualReg_66, s0, VirtualReg_66
	lw	VirtualReg_65, 0(VirtualReg_66)
	li	VirtualReg_69, 24
	mul	VirtualReg_68, VirtualReg_65, VirtualReg_69
	add	VirtualReg_67, VirtualReg_64, VirtualReg_68
	lw	VirtualReg_70, 0(VirtualReg_67)
	li	VirtualReg_72, -12
	add	VirtualReg_72, s0, VirtualReg_72
	lw	VirtualReg_71, 0(VirtualReg_72)
	li	VirtualReg_74, -32
	add	VirtualReg_74, s0, VirtualReg_74
	lw	VirtualReg_73, 0(VirtualReg_74)
	li	VirtualReg_76, -24
	add	VirtualReg_76, s0, VirtualReg_76
	lw	VirtualReg_75, 0(VirtualReg_76)
	mv	a0, VirtualReg_70
	mv	a1, VirtualReg_71
	mv	a2, VirtualReg_73
	mv	a3, VirtualReg_75
	call	insertImpl
	mv	VirtualReg_77, a0
	li	VirtualReg_78, -28
	add	VirtualReg_78, s0, VirtualReg_78
	sw	VirtualReg_77, 0(VirtualReg_78)
	j	.insertImpl_return
	j	.insertImpl_return
.insertImpl_return:
	li	VirtualReg_80, -28
	add	VirtualReg_80, s0, VirtualReg_80
	lw	VirtualReg_79, 0(VirtualReg_80)
	mv	a0, VirtualReg_79

	.globl	insert
	.p2align	2
	.type	insert,@function
insert:
.insert_assemblyInit:
	mv	VirtualReg_0, a0
.insert_entry:
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_0, 0(VirtualReg_2)
	lw	VirtualReg_4, fuckLLVM_root
	li	VirtualReg_5, 0
	xor	fuckLLVM_4, VirtualReg_4, VirtualReg_5
	sltiu	fuckLLVM_4, fuckLLVM_4, 1
	xori	fuckLLVM_4, fuckLLVM_4, 1
	bnez	fuckLLVM_4, .insert_ID4_if_true
	j	.insert_ID4_if_out
.insert_ID4_if_true:
	lw	VirtualReg_6, fuckLLVM_root
	li	VirtualReg_7, 0
	li	VirtualReg_8, 1
	sub	fuckLLVM_7, VirtualReg_7, VirtualReg_8
	li	VirtualReg_10, -12
	add	VirtualReg_10, s0, VirtualReg_10
	lw	VirtualReg_9, 0(VirtualReg_10)
	mv	a0, VirtualReg_6
	li	VirtualReg_11, 0
	mv	a1, VirtualReg_11
	mv	a2, fuckLLVM_7
	mv	a3, VirtualReg_9
	call	insertImpl
	mv	VirtualReg_12, a0
	li	VirtualReg_13, -16
	add	VirtualReg_13, s0, VirtualReg_13
	sw	VirtualReg_12, 0(VirtualReg_13)
	j	.insert_return
	j	.insert_ID4_if_out
.insert_ID4_if_out:
	li	VirtualReg_15, -12
	add	VirtualReg_15, s0, VirtualReg_15
	lw	VirtualReg_14, 0(VirtualReg_15)
	mv	a0, VirtualReg_14
	li	VirtualReg_16, 0
	mv	a1, VirtualReg_16
	li	VirtualReg_17, 0
	mv	a2, VirtualReg_17
	li	VirtualReg_18, 0
	mv	a3, VirtualReg_18
	call	constructNode
	mv	VirtualReg_19, a0
	sw	VirtualReg_19, fuckLLVM_root, VirtualReg_20
	li	VirtualReg_21, 0
	li	VirtualReg_22, -16
	add	VirtualReg_22, s0, VirtualReg_22
	sw	VirtualReg_21, 0(VirtualReg_22)
	j	.insert_return
	j	.insert_return
.insert_return:
	li	VirtualReg_24, -16
	add	VirtualReg_24, s0, VirtualReg_24
	lw	VirtualReg_23, 0(VirtualReg_24)
	mv	a0, VirtualReg_23

	.globl	findLargest
	.p2align	2
	.type	findLargest,@function
findLargest:
.findLargest_assemblyInit:
	mv	VirtualReg_0, a0
.findLargest_entry:
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_0, 0(VirtualReg_2)
	li	VirtualReg_5, -12
	add	VirtualReg_5, s0, VirtualReg_5
	lw	VirtualReg_4, 0(VirtualReg_5)
	addi	VirtualReg_6, VirtualReg_4, 8
	lw	VirtualReg_7, 0(VirtualReg_6)
	li	VirtualReg_10, 1
	li	VirtualReg_11, 24
	mul	VirtualReg_9, VirtualReg_10, VirtualReg_11
	add	VirtualReg_8, VirtualReg_7, VirtualReg_9
	lw	VirtualReg_12, 0(VirtualReg_8)
	li	VirtualReg_13, 0
	xor	fuckLLVM_8, VirtualReg_12, VirtualReg_13
	sltiu	fuckLLVM_8, fuckLLVM_8, 1
	bnez	fuckLLVM_8, .findLargest_ID8_if_true
	j	.findLargest_ID8_if_out
.findLargest_ID8_if_true:
	li	VirtualReg_15, -12
	add	VirtualReg_15, s0, VirtualReg_15
	lw	VirtualReg_14, 0(VirtualReg_15)
	li	VirtualReg_16, -16
	add	VirtualReg_16, s0, VirtualReg_16
	sw	VirtualReg_14, 0(VirtualReg_16)
	j	.findLargest_return
	j	.findLargest_ID8_if_out
.findLargest_ID8_if_out:
	li	VirtualReg_18, -12
	add	VirtualReg_18, s0, VirtualReg_18
	lw	VirtualReg_17, 0(VirtualReg_18)
	addi	VirtualReg_19, VirtualReg_17, 8
	lw	VirtualReg_20, 0(VirtualReg_19)
	li	VirtualReg_23, 1
	li	VirtualReg_24, 24
	mul	VirtualReg_22, VirtualReg_23, VirtualReg_24
	add	VirtualReg_21, VirtualReg_20, VirtualReg_22
	lw	VirtualReg_25, 0(VirtualReg_21)
	mv	a0, VirtualReg_25
	call	findLargest
	mv	VirtualReg_26, a0
	li	VirtualReg_27, -16
	add	VirtualReg_27, s0, VirtualReg_27
	sw	VirtualReg_26, 0(VirtualReg_27)
	j	.findLargest_return
	j	.findLargest_return
.findLargest_return:
	li	VirtualReg_29, -16
	add	VirtualReg_29, s0, VirtualReg_29
	lw	VirtualReg_28, 0(VirtualReg_29)
	mv	a0, VirtualReg_28

	.globl	eraseImpl
	.p2align	2
	.type	eraseImpl,@function
eraseImpl:
.eraseImpl_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, a3
.eraseImpl_entry:
	li	VirtualReg_5, -12
	add	VirtualReg_5, s0, VirtualReg_5
	sw	VirtualReg_0, 0(VirtualReg_5)
	li	VirtualReg_7, -16
	add	VirtualReg_7, s0, VirtualReg_7
	sw	VirtualReg_1, 0(VirtualReg_7)
	li	VirtualReg_9, -20
	add	VirtualReg_9, s0, VirtualReg_9
	sw	VirtualReg_2, 0(VirtualReg_9)
	li	VirtualReg_11, -24
	add	VirtualReg_11, s0, VirtualReg_11
	sw	VirtualReg_3, 0(VirtualReg_11)
	li	VirtualReg_14, -12
	add	VirtualReg_14, s0, VirtualReg_14
	lw	VirtualReg_13, 0(VirtualReg_14)
	li	VirtualReg_15, 0
	xor	fuckLLVM_10, VirtualReg_13, VirtualReg_15
	sltiu	fuckLLVM_10, fuckLLVM_10, 1
	bnez	fuckLLVM_10, .eraseImpl_ID10_if_true
	j	.eraseImpl_ID10_if_out
.eraseImpl_ID10_if_true:
	li	VirtualReg_16, 0
	li	VirtualReg_17, -28
	add	VirtualReg_17, s0, VirtualReg_17
	sw	VirtualReg_16, 0(VirtualReg_17)
	j	.eraseImpl_return
	j	.eraseImpl_ID10_if_out
.eraseImpl_ID10_if_out:
	li	VirtualReg_19, -12
	add	VirtualReg_19, s0, VirtualReg_19
	lw	VirtualReg_18, 0(VirtualReg_19)
	addi	VirtualReg_20, VirtualReg_18, 16
	lw	VirtualReg_21, 0(VirtualReg_20)
	li	VirtualReg_23, -24
	add	VirtualReg_23, s0, VirtualReg_23
	lw	VirtualReg_22, 0(VirtualReg_23)
	slt	fuckLLVM_15, VirtualReg_22, VirtualReg_21
	bnez	fuckLLVM_15, .eraseImpl_ID15_if_true
	j	.eraseImpl_ID15_if_out
.eraseImpl_ID15_if_true:
	li	VirtualReg_25, -12
	add	VirtualReg_25, s0, VirtualReg_25
	lw	VirtualReg_24, 0(VirtualReg_25)
	addi	VirtualReg_26, VirtualReg_24, 8
	lw	VirtualReg_27, 0(VirtualReg_26)
	li	VirtualReg_30, 0
	li	VirtualReg_31, 24
	mul	VirtualReg_29, VirtualReg_30, VirtualReg_31
	add	VirtualReg_28, VirtualReg_27, VirtualReg_29
	lw	VirtualReg_32, 0(VirtualReg_28)
	li	VirtualReg_34, -12
	add	VirtualReg_34, s0, VirtualReg_34
	lw	VirtualReg_33, 0(VirtualReg_34)
	li	VirtualReg_36, -24
	add	VirtualReg_36, s0, VirtualReg_36
	lw	VirtualReg_35, 0(VirtualReg_36)
	mv	a0, VirtualReg_32
	mv	a1, VirtualReg_33
	li	VirtualReg_37, 0
	mv	a2, VirtualReg_37
	mv	a3, VirtualReg_35
	call	eraseImpl
	mv	VirtualReg_38, a0
	li	VirtualReg_39, -28
	add	VirtualReg_39, s0, VirtualReg_39
	sw	VirtualReg_38, 0(VirtualReg_39)
	j	.eraseImpl_return
	j	.eraseImpl_ID15_if_out
.eraseImpl_ID15_if_out:
	li	VirtualReg_41, -12
	add	VirtualReg_41, s0, VirtualReg_41
	lw	VirtualReg_40, 0(VirtualReg_41)
	addi	VirtualReg_42, VirtualReg_40, 16
	lw	VirtualReg_43, 0(VirtualReg_42)
	li	VirtualReg_45, -24
	add	VirtualReg_45, s0, VirtualReg_45
	lw	VirtualReg_44, 0(VirtualReg_45)
	slt	fuckLLVM_30, VirtualReg_43, VirtualReg_44
	bnez	fuckLLVM_30, .eraseImpl_ID30_if_true
	j	.eraseImpl_ID30_if_out
.eraseImpl_ID30_if_true:
	li	VirtualReg_47, -12
	add	VirtualReg_47, s0, VirtualReg_47
	lw	VirtualReg_46, 0(VirtualReg_47)
	addi	VirtualReg_48, VirtualReg_46, 8
	lw	VirtualReg_49, 0(VirtualReg_48)
	li	VirtualReg_52, 1
	li	VirtualReg_53, 24
	mul	VirtualReg_51, VirtualReg_52, VirtualReg_53
	add	VirtualReg_50, VirtualReg_49, VirtualReg_51
	lw	VirtualReg_54, 0(VirtualReg_50)
	li	VirtualReg_56, -12
	add	VirtualReg_56, s0, VirtualReg_56
	lw	VirtualReg_55, 0(VirtualReg_56)
	li	VirtualReg_58, -24
	add	VirtualReg_58, s0, VirtualReg_58
	lw	VirtualReg_57, 0(VirtualReg_58)
	mv	a0, VirtualReg_54
	mv	a1, VirtualReg_55
	li	VirtualReg_59, 1
	mv	a2, VirtualReg_59
	mv	a3, VirtualReg_57
	call	eraseImpl
	mv	VirtualReg_60, a0
	li	VirtualReg_61, -28
	add	VirtualReg_61, s0, VirtualReg_61
	sw	VirtualReg_60, 0(VirtualReg_61)
	j	.eraseImpl_return
	j	.eraseImpl_ID30_if_out
.eraseImpl_ID30_if_out:
	li	VirtualReg_63, -12
	add	VirtualReg_63, s0, VirtualReg_63
	lw	VirtualReg_62, 0(VirtualReg_63)
	addi	VirtualReg_64, VirtualReg_62, 20
	lw	VirtualReg_65, 0(VirtualReg_64)
	li	VirtualReg_66, 1
	sub	fuckLLVM_44, VirtualReg_65, VirtualReg_66
	sw	fuckLLVM_44, 0(VirtualReg_64)
	li	VirtualReg_68, -12
	add	VirtualReg_68, s0, VirtualReg_68
	lw	VirtualReg_67, 0(VirtualReg_68)
	addi	VirtualReg_69, VirtualReg_67, 20
	lw	VirtualReg_70, 0(VirtualReg_69)
	li	VirtualReg_71, 0
	slt	fuckLLVM_48, VirtualReg_71, VirtualReg_70
	bnez	fuckLLVM_48, .eraseImpl_ID48_if_true
	j	.eraseImpl_ID48_if_out
.eraseImpl_ID48_if_true:
	li	VirtualReg_72, 1
	li	VirtualReg_73, -28
	add	VirtualReg_73, s0, VirtualReg_73
	sw	VirtualReg_72, 0(VirtualReg_73)
	j	.eraseImpl_return
	j	.eraseImpl_ID48_if_out
.eraseImpl_ID48_if_out:
	li	VirtualReg_75, -12
	add	VirtualReg_75, s0, VirtualReg_75
	lw	VirtualReg_74, 0(VirtualReg_75)
	addi	VirtualReg_76, VirtualReg_74, 8
	lw	VirtualReg_77, 0(VirtualReg_76)
	li	VirtualReg_80, 0
	li	VirtualReg_81, 24
	mul	VirtualReg_79, VirtualReg_80, VirtualReg_81
	add	VirtualReg_78, VirtualReg_77, VirtualReg_79
	lw	VirtualReg_82, 0(VirtualReg_78)
	li	VirtualReg_83, 0
	xor	fuckLLVM_54, VirtualReg_82, VirtualReg_83
	sltiu	fuckLLVM_54, fuckLLVM_54, 1
	bnez	fuckLLVM_54, .eraseImpl_ID54_if_true
	j	.eraseImpl_ID54_if_out
.eraseImpl_ID56_if_true:
	li	VirtualReg_85, -16
	add	VirtualReg_85, s0, VirtualReg_85
	lw	VirtualReg_84, 0(VirtualReg_85)
	addi	VirtualReg_86, VirtualReg_84, 8
	lw	VirtualReg_87, 0(VirtualReg_86)
	li	VirtualReg_89, -20
	add	VirtualReg_89, s0, VirtualReg_89
	lw	VirtualReg_88, 0(VirtualReg_89)
	li	VirtualReg_92, 24
	mul	VirtualReg_91, VirtualReg_88, VirtualReg_92
	add	VirtualReg_90, VirtualReg_87, VirtualReg_91
	li	VirtualReg_94, -12
	add	VirtualReg_94, s0, VirtualReg_94
	lw	VirtualReg_93, 0(VirtualReg_94)
	addi	VirtualReg_95, VirtualReg_93, 8
	lw	VirtualReg_96, 0(VirtualReg_95)
	li	VirtualReg_99, 1
	li	VirtualReg_100, 24
	mul	VirtualReg_98, VirtualReg_99, VirtualReg_100
	add	VirtualReg_97, VirtualReg_96, VirtualReg_98
	lw	VirtualReg_101, 0(VirtualReg_97)
	sw	VirtualReg_101, 0(VirtualReg_90)
	j	.eraseImpl_ID56_if_out
.eraseImpl_ID56_if_out:
	li	VirtualReg_103, -12
	add	VirtualReg_103, s0, VirtualReg_103
	lw	VirtualReg_102, 0(VirtualReg_103)
	addi	VirtualReg_104, VirtualReg_102, 8
	lw	VirtualReg_105, 0(VirtualReg_104)
	li	VirtualReg_108, 1
	li	VirtualReg_109, 24
	mul	VirtualReg_107, VirtualReg_108, VirtualReg_109
	add	VirtualReg_106, VirtualReg_105, VirtualReg_107
	lw	VirtualReg_110, 0(VirtualReg_106)
	li	VirtualReg_111, 0
	xor	fuckLLVM_73, VirtualReg_110, VirtualReg_111
	sltiu	fuckLLVM_73, fuckLLVM_73, 1
	xori	fuckLLVM_73, fuckLLVM_73, 1
	bnez	fuckLLVM_73, .eraseImpl_ID73_if_true
	j	.eraseImpl_ID73_if_out
.eraseImpl_ID73_if_true:
	li	VirtualReg_113, -12
	add	VirtualReg_113, s0, VirtualReg_113
	lw	VirtualReg_112, 0(VirtualReg_113)
	addi	VirtualReg_114, VirtualReg_112, 8
	lw	VirtualReg_115, 0(VirtualReg_114)
	li	VirtualReg_118, 1
	li	VirtualReg_119, 24
	mul	VirtualReg_117, VirtualReg_118, VirtualReg_119
	add	VirtualReg_116, VirtualReg_115, VirtualReg_117
	lw	VirtualReg_120, 0(VirtualReg_116)
	addi	VirtualReg_121, VirtualReg_120, 0
	li	VirtualReg_123, -16
	add	VirtualReg_123, s0, VirtualReg_123
	lw	VirtualReg_122, 0(VirtualReg_123)
	sw	VirtualReg_122, 0(VirtualReg_121)
	j	.eraseImpl_ID73_if_out
.eraseImpl_ID73_if_out:
	li	VirtualReg_125, -24
	add	VirtualReg_125, s0, VirtualReg_125
	lw	VirtualReg_124, 0(VirtualReg_125)
	lw	VirtualReg_126, fuckLLVM_root
	addi	VirtualReg_127, VirtualReg_126, 16
	lw	VirtualReg_128, 0(VirtualReg_127)
	xor	fuckLLVM_86, VirtualReg_124, VirtualReg_128
	sltiu	fuckLLVM_86, fuckLLVM_86, 1
	bnez	fuckLLVM_86, .eraseImpl_ID86_if_true
	j	.eraseImpl_ID86_if_out
.eraseImpl_ID86_if_true:
	li	VirtualReg_130, -12
	add	VirtualReg_130, s0, VirtualReg_130
	lw	VirtualReg_129, 0(VirtualReg_130)
	addi	VirtualReg_131, VirtualReg_129, 8
	lw	VirtualReg_132, 0(VirtualReg_131)
	li	VirtualReg_135, 1
	li	VirtualReg_136, 24
	mul	VirtualReg_134, VirtualReg_135, VirtualReg_136
	add	VirtualReg_133, VirtualReg_132, VirtualReg_134
	lw	VirtualReg_137, 0(VirtualReg_133)
	sw	VirtualReg_137, fuckLLVM_root, VirtualReg_138
	j	.eraseImpl_ID86_if_out
.eraseImpl_ID86_if_out:
	li	VirtualReg_139, 1
	li	VirtualReg_140, -28
	add	VirtualReg_140, s0, VirtualReg_140
	sw	VirtualReg_139, 0(VirtualReg_140)
	j	.eraseImpl_return
	j	.eraseImpl_ID54_if_out
.eraseImpl_ID54_if_true:
	li	VirtualReg_142, -16
	add	VirtualReg_142, s0, VirtualReg_142
	lw	VirtualReg_141, 0(VirtualReg_142)
	li	VirtualReg_143, 0
	xor	fuckLLVM_56, VirtualReg_141, VirtualReg_143
	sltiu	fuckLLVM_56, fuckLLVM_56, 1
	xori	fuckLLVM_56, fuckLLVM_56, 1
	bnez	fuckLLVM_56, .eraseImpl_ID56_if_true
	j	.eraseImpl_ID56_if_out
.eraseImpl_ID54_if_out:
	li	VirtualReg_146, -12
	add	VirtualReg_146, s0, VirtualReg_146
	lw	VirtualReg_145, 0(VirtualReg_146)
	addi	VirtualReg_147, VirtualReg_145, 8
	lw	VirtualReg_148, 0(VirtualReg_147)
	li	VirtualReg_151, 0
	li	VirtualReg_152, 24
	mul	VirtualReg_150, VirtualReg_151, VirtualReg_152
	add	VirtualReg_149, VirtualReg_148, VirtualReg_150
	lw	VirtualReg_153, 0(VirtualReg_149)
	mv	a0, VirtualReg_153
	call	findLargest
	mv	VirtualReg_154, a0
	li	VirtualReg_155, -32
	add	VirtualReg_155, s0, VirtualReg_155
	sw	VirtualReg_154, 0(VirtualReg_155)
	li	VirtualReg_157, -24
	add	VirtualReg_157, s0, VirtualReg_157
	lw	VirtualReg_156, 0(VirtualReg_157)
	lw	VirtualReg_158, fuckLLVM_root
	addi	VirtualReg_159, VirtualReg_158, 16
	lw	VirtualReg_160, 0(VirtualReg_159)
	xor	fuckLLVM_106, VirtualReg_156, VirtualReg_160
	sltiu	fuckLLVM_106, fuckLLVM_106, 1
	bnez	fuckLLVM_106, .eraseImpl_ID106_if_true
	j	.eraseImpl_ID106_if_out
.eraseImpl_ID106_if_true:
	li	VirtualReg_162, -32
	add	VirtualReg_162, s0, VirtualReg_162
	lw	VirtualReg_161, 0(VirtualReg_162)
	sw	VirtualReg_161, fuckLLVM_root, VirtualReg_163
	j	.eraseImpl_ID106_if_out
.eraseImpl_ID106_if_out:
	li	VirtualReg_165, -32
	add	VirtualReg_165, s0, VirtualReg_165
	lw	VirtualReg_164, 0(VirtualReg_165)
	addi	VirtualReg_166, VirtualReg_164, 16
	lw	VirtualReg_167, 0(VirtualReg_166)
	li	VirtualReg_169, -12
	add	VirtualReg_169, s0, VirtualReg_169
	lw	VirtualReg_168, 0(VirtualReg_169)
	addi	VirtualReg_170, VirtualReg_168, 8
	lw	VirtualReg_171, 0(VirtualReg_170)
	li	VirtualReg_174, 0
	li	VirtualReg_175, 24
	mul	VirtualReg_173, VirtualReg_174, VirtualReg_175
	add	VirtualReg_172, VirtualReg_171, VirtualReg_173
	lw	VirtualReg_176, 0(VirtualReg_172)
	addi	VirtualReg_177, VirtualReg_176, 16
	lw	VirtualReg_178, 0(VirtualReg_177)
	xor	fuckLLVM_119, VirtualReg_167, VirtualReg_178
	sltiu	fuckLLVM_119, fuckLLVM_119, 1
	xori	fuckLLVM_119, fuckLLVM_119, 1
	bnez	fuckLLVM_119, .eraseImpl_ID119_if_true
	j	.eraseImpl_ID119_if_out
.eraseImpl_ID137_if_true:
	li	VirtualReg_180, -32
	add	VirtualReg_180, s0, VirtualReg_180
	lw	VirtualReg_179, 0(VirtualReg_180)
	addi	VirtualReg_181, VirtualReg_179, 8
	lw	VirtualReg_182, 0(VirtualReg_181)
	li	VirtualReg_185, 0
	li	VirtualReg_186, 24
	mul	VirtualReg_184, VirtualReg_185, VirtualReg_186
	add	VirtualReg_183, VirtualReg_182, VirtualReg_184
	lw	VirtualReg_187, 0(VirtualReg_183)
	addi	VirtualReg_188, VirtualReg_187, 0
	li	VirtualReg_190, -32
	add	VirtualReg_190, s0, VirtualReg_190
	lw	VirtualReg_189, 0(VirtualReg_190)
	addi	VirtualReg_191, VirtualReg_189, 0
	lw	VirtualReg_192, 0(VirtualReg_191)
	sw	VirtualReg_192, 0(VirtualReg_188)
	j	.eraseImpl_ID137_if_out
.eraseImpl_ID137_if_out:
	j	.eraseImpl_ID119_if_out
.eraseImpl_ID119_if_true:
	li	VirtualReg_194, -32
	add	VirtualReg_194, s0, VirtualReg_194
	lw	VirtualReg_193, 0(VirtualReg_194)
	addi	VirtualReg_195, VirtualReg_193, 0
	lw	VirtualReg_196, 0(VirtualReg_195)
	addi	VirtualReg_197, VirtualReg_196, 8
	lw	VirtualReg_198, 0(VirtualReg_197)
	li	VirtualReg_201, 1
	li	VirtualReg_202, 24
	mul	VirtualReg_200, VirtualReg_201, VirtualReg_202
	add	VirtualReg_199, VirtualReg_198, VirtualReg_200
	li	VirtualReg_204, -32
	add	VirtualReg_204, s0, VirtualReg_204
	lw	VirtualReg_203, 0(VirtualReg_204)
	addi	VirtualReg_205, VirtualReg_203, 8
	lw	VirtualReg_206, 0(VirtualReg_205)
	li	VirtualReg_209, 0
	li	VirtualReg_210, 24
	mul	VirtualReg_208, VirtualReg_209, VirtualReg_210
	add	VirtualReg_207, VirtualReg_206, VirtualReg_208
	lw	VirtualReg_211, 0(VirtualReg_207)
	sw	VirtualReg_211, 0(VirtualReg_199)
	li	VirtualReg_213, -32
	add	VirtualReg_213, s0, VirtualReg_213
	lw	VirtualReg_212, 0(VirtualReg_213)
	addi	VirtualReg_214, VirtualReg_212, 8
	lw	VirtualReg_215, 0(VirtualReg_214)
	li	VirtualReg_218, 0
	li	VirtualReg_219, 24
	mul	VirtualReg_217, VirtualReg_218, VirtualReg_219
	add	VirtualReg_216, VirtualReg_215, VirtualReg_217
	lw	VirtualReg_220, 0(VirtualReg_216)
	li	VirtualReg_221, 0
	xor	fuckLLVM_137, VirtualReg_220, VirtualReg_221
	sltiu	fuckLLVM_137, fuckLLVM_137, 1
	xori	fuckLLVM_137, fuckLLVM_137, 1
	bnez	fuckLLVM_137, .eraseImpl_ID137_if_true
	j	.eraseImpl_ID137_if_out
.eraseImpl_ID119_if_out:
	li	VirtualReg_223, -16
	add	VirtualReg_223, s0, VirtualReg_223
	lw	VirtualReg_222, 0(VirtualReg_223)
	li	VirtualReg_224, 0
	xor	fuckLLVM_149, VirtualReg_222, VirtualReg_224
	sltiu	fuckLLVM_149, fuckLLVM_149, 1
	xori	fuckLLVM_149, fuckLLVM_149, 1
	bnez	fuckLLVM_149, .eraseImpl_ID149_if_true
	j	.eraseImpl_ID149_if_out
.eraseImpl_ID149_if_true:
	li	VirtualReg_226, -16
	add	VirtualReg_226, s0, VirtualReg_226
	lw	VirtualReg_225, 0(VirtualReg_226)
	addi	VirtualReg_227, VirtualReg_225, 8
	lw	VirtualReg_228, 0(VirtualReg_227)
	li	VirtualReg_230, -20
	add	VirtualReg_230, s0, VirtualReg_230
	lw	VirtualReg_229, 0(VirtualReg_230)
	li	VirtualReg_233, 24
	mul	VirtualReg_232, VirtualReg_229, VirtualReg_233
	add	VirtualReg_231, VirtualReg_228, VirtualReg_232
	li	VirtualReg_235, -32
	add	VirtualReg_235, s0, VirtualReg_235
	lw	VirtualReg_234, 0(VirtualReg_235)
	sw	VirtualReg_234, 0(VirtualReg_231)
	j	.eraseImpl_ID149_if_out
.eraseImpl_ID149_if_out:
	li	VirtualReg_237, -32
	add	VirtualReg_237, s0, VirtualReg_237
	lw	VirtualReg_236, 0(VirtualReg_237)
	addi	VirtualReg_238, VirtualReg_236, 0
	li	VirtualReg_240, -16
	add	VirtualReg_240, s0, VirtualReg_240
	lw	VirtualReg_239, 0(VirtualReg_240)
	sw	VirtualReg_239, 0(VirtualReg_238)
	li	VirtualReg_242, -32
	add	VirtualReg_242, s0, VirtualReg_242
	lw	VirtualReg_241, 0(VirtualReg_242)
	addi	VirtualReg_243, VirtualReg_241, 8
	lw	VirtualReg_244, 0(VirtualReg_243)
	li	VirtualReg_247, 1
	li	VirtualReg_248, 24
	mul	VirtualReg_246, VirtualReg_247, VirtualReg_248
	add	VirtualReg_245, VirtualReg_244, VirtualReg_246
	li	VirtualReg_250, -12
	add	VirtualReg_250, s0, VirtualReg_250
	lw	VirtualReg_249, 0(VirtualReg_250)
	addi	VirtualReg_251, VirtualReg_249, 8
	lw	VirtualReg_252, 0(VirtualReg_251)
	li	VirtualReg_255, 1
	li	VirtualReg_256, 24
	mul	VirtualReg_254, VirtualReg_255, VirtualReg_256
	add	VirtualReg_253, VirtualReg_252, VirtualReg_254
	lw	VirtualReg_257, 0(VirtualReg_253)
	sw	VirtualReg_257, 0(VirtualReg_245)
	li	VirtualReg_259, -12
	add	VirtualReg_259, s0, VirtualReg_259
	lw	VirtualReg_258, 0(VirtualReg_259)
	addi	VirtualReg_260, VirtualReg_258, 8
	lw	VirtualReg_261, 0(VirtualReg_260)
	li	VirtualReg_264, 1
	li	VirtualReg_265, 24
	mul	VirtualReg_263, VirtualReg_264, VirtualReg_265
	add	VirtualReg_262, VirtualReg_261, VirtualReg_263
	lw	VirtualReg_266, 0(VirtualReg_262)
	li	VirtualReg_267, 0
	xor	fuckLLVM_176, VirtualReg_266, VirtualReg_267
	sltiu	fuckLLVM_176, fuckLLVM_176, 1
	xori	fuckLLVM_176, fuckLLVM_176, 1
	bnez	fuckLLVM_176, .eraseImpl_ID176_if_true
	j	.eraseImpl_ID176_if_out
.eraseImpl_ID176_if_true:
	li	VirtualReg_269, -12
	add	VirtualReg_269, s0, VirtualReg_269
	lw	VirtualReg_268, 0(VirtualReg_269)
	addi	VirtualReg_270, VirtualReg_268, 8
	lw	VirtualReg_271, 0(VirtualReg_270)
	li	VirtualReg_274, 1
	li	VirtualReg_275, 24
	mul	VirtualReg_273, VirtualReg_274, VirtualReg_275
	add	VirtualReg_272, VirtualReg_271, VirtualReg_273
	lw	VirtualReg_276, 0(VirtualReg_272)
	addi	VirtualReg_277, VirtualReg_276, 0
	li	VirtualReg_279, -32
	add	VirtualReg_279, s0, VirtualReg_279
	lw	VirtualReg_278, 0(VirtualReg_279)
	sw	VirtualReg_278, 0(VirtualReg_277)
	j	.eraseImpl_ID176_if_out
.eraseImpl_ID176_if_out:
	li	VirtualReg_281, -32
	add	VirtualReg_281, s0, VirtualReg_281
	lw	VirtualReg_280, 0(VirtualReg_281)
	addi	VirtualReg_282, VirtualReg_280, 16
	lw	VirtualReg_283, 0(VirtualReg_282)
	li	VirtualReg_285, -12
	add	VirtualReg_285, s0, VirtualReg_285
	lw	VirtualReg_284, 0(VirtualReg_285)
	addi	VirtualReg_286, VirtualReg_284, 8
	lw	VirtualReg_287, 0(VirtualReg_286)
	li	VirtualReg_290, 0
	li	VirtualReg_291, 24
	mul	VirtualReg_289, VirtualReg_290, VirtualReg_291
	add	VirtualReg_288, VirtualReg_287, VirtualReg_289
	lw	VirtualReg_292, 0(VirtualReg_288)
	addi	VirtualReg_293, VirtualReg_292, 16
	lw	VirtualReg_294, 0(VirtualReg_293)
	xor	fuckLLVM_195, VirtualReg_283, VirtualReg_294
	sltiu	fuckLLVM_195, fuckLLVM_195, 1
	xori	fuckLLVM_195, fuckLLVM_195, 1
	bnez	fuckLLVM_195, .eraseImpl_ID195_if_true
	j	.eraseImpl_ID195_if_out
.eraseImpl_ID195_if_true:
	li	VirtualReg_296, -32
	add	VirtualReg_296, s0, VirtualReg_296
	lw	VirtualReg_295, 0(VirtualReg_296)
	addi	VirtualReg_297, VirtualReg_295, 8
	lw	VirtualReg_298, 0(VirtualReg_297)
	li	VirtualReg_301, 0
	li	VirtualReg_302, 24
	mul	VirtualReg_300, VirtualReg_301, VirtualReg_302
	add	VirtualReg_299, VirtualReg_298, VirtualReg_300
	li	VirtualReg_304, -12
	add	VirtualReg_304, s0, VirtualReg_304
	lw	VirtualReg_303, 0(VirtualReg_304)
	addi	VirtualReg_305, VirtualReg_303, 8
	lw	VirtualReg_306, 0(VirtualReg_305)
	li	VirtualReg_309, 0
	li	VirtualReg_310, 24
	mul	VirtualReg_308, VirtualReg_309, VirtualReg_310
	add	VirtualReg_307, VirtualReg_306, VirtualReg_308
	lw	VirtualReg_311, 0(VirtualReg_307)
	sw	VirtualReg_311, 0(VirtualReg_299)
	li	VirtualReg_313, -12
	add	VirtualReg_313, s0, VirtualReg_313
	lw	VirtualReg_312, 0(VirtualReg_313)
	addi	VirtualReg_314, VirtualReg_312, 8
	lw	VirtualReg_315, 0(VirtualReg_314)
	li	VirtualReg_318, 0
	li	VirtualReg_319, 24
	mul	VirtualReg_317, VirtualReg_318, VirtualReg_319
	add	VirtualReg_316, VirtualReg_315, VirtualReg_317
	lw	VirtualReg_320, 0(VirtualReg_316)
	addi	VirtualReg_321, VirtualReg_320, 0
	li	VirtualReg_323, -32
	add	VirtualReg_323, s0, VirtualReg_323
	lw	VirtualReg_322, 0(VirtualReg_323)
	sw	VirtualReg_322, 0(VirtualReg_321)
	j	.eraseImpl_ID195_if_out
.eraseImpl_ID195_if_out:
	li	VirtualReg_324, 1
	li	VirtualReg_325, -28
	add	VirtualReg_325, s0, VirtualReg_325
	sw	VirtualReg_324, 0(VirtualReg_325)
	j	.eraseImpl_return
	j	.eraseImpl_return
.eraseImpl_return:
	li	VirtualReg_327, -28
	add	VirtualReg_327, s0, VirtualReg_327
	lw	VirtualReg_326, 0(VirtualReg_327)
	mv	a0, VirtualReg_326

	.globl	erase
	.p2align	2
	.type	erase,@function
erase:
.erase_assemblyInit:
	mv	VirtualReg_0, a0
.erase_entry:
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_0, 0(VirtualReg_2)
	lw	VirtualReg_4, fuckLLVM_root
	li	VirtualReg_5, 0
	xor	fuckLLVM_4, VirtualReg_4, VirtualReg_5
	sltiu	fuckLLVM_4, fuckLLVM_4, 1
	bnez	fuckLLVM_4, .erase_ID4_if_true
	j	.erase_ID4_if_out
.erase_ID4_if_true:
	li	VirtualReg_6, 0
	li	VirtualReg_7, -16
	add	VirtualReg_7, s0, VirtualReg_7
	sw	VirtualReg_6, 0(VirtualReg_7)
	j	.erase_return
	j	.erase_ID4_if_out
.erase_ID4_if_out:
	lw	VirtualReg_8, fuckLLVM_root
	li	VirtualReg_9, 0
	li	VirtualReg_10, 1
	sub	fuckLLVM_7, VirtualReg_9, VirtualReg_10
	li	VirtualReg_12, -12
	add	VirtualReg_12, s0, VirtualReg_12
	lw	VirtualReg_11, 0(VirtualReg_12)
	mv	a0, VirtualReg_8
	li	VirtualReg_13, 0
	mv	a1, VirtualReg_13
	mv	a2, fuckLLVM_7
	mv	a3, VirtualReg_11
	call	eraseImpl
	mv	VirtualReg_14, a0
	li	VirtualReg_15, -16
	add	VirtualReg_15, s0, VirtualReg_15
	sw	VirtualReg_14, 0(VirtualReg_15)
	j	.erase_return
	j	.erase_return
.erase_return:
	li	VirtualReg_17, -16
	add	VirtualReg_17, s0, VirtualReg_17
	lw	VirtualReg_16, 0(VirtualReg_17)
	mv	a0, VirtualReg_16

	.globl	printTree
	.p2align	2
	.type	printTree,@function
printTree:
.printTree_assemblyInit:
	mv	VirtualReg_0, a0
.printTree_entry:
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_0, 0(VirtualReg_2)
	li	VirtualReg_4, -12
	add	VirtualReg_4, s0, VirtualReg_4
	lw	VirtualReg_3, 0(VirtualReg_4)
	li	VirtualReg_5, 0
	xor	fuckLLVM_4, VirtualReg_3, VirtualReg_5
	sltiu	fuckLLVM_4, fuckLLVM_4, 1
	bnez	fuckLLVM_4, .printTree_ID4_if_true
	j	.printTree_ID4_if_out
.printTree_ID4_if_true:
	j	.printTree_return
	j	.printTree_ID4_if_out
.printTree_ID4_if_out:
	li	VirtualReg_7, -12
	add	VirtualReg_7, s0, VirtualReg_7
	lw	VirtualReg_6, 0(VirtualReg_7)
	addi	VirtualReg_8, VirtualReg_6, 8
	lw	VirtualReg_9, 0(VirtualReg_8)
	li	VirtualReg_12, 0
	li	VirtualReg_13, 24
	mul	VirtualReg_11, VirtualReg_12, VirtualReg_13
	add	VirtualReg_10, VirtualReg_9, VirtualReg_11
	lw	VirtualReg_14, 0(VirtualReg_10)
	mv	a0, VirtualReg_14
	call	printTree
	li	VirtualReg_16, -12
	add	VirtualReg_16, s0, VirtualReg_16
	lw	VirtualReg_15, 0(VirtualReg_16)
	addi	VirtualReg_17, VirtualReg_15, 16
	lw	VirtualReg_18, 0(VirtualReg_17)
	mv	a0, VirtualReg_18
	call	toString
	mv	VirtualReg_19, a0
	la	VirtualReg_20, fuckLLVM_.str.0
	mv	a0, VirtualReg_19
	mv	a1, VirtualReg_20
	call	string_add
	mv	VirtualReg_21, a0
	li	VirtualReg_23, -12
	add	VirtualReg_23, s0, VirtualReg_23
	lw	VirtualReg_22, 0(VirtualReg_23)
	addi	VirtualReg_24, VirtualReg_22, 20
	lw	VirtualReg_25, 0(VirtualReg_24)
	mv	a0, VirtualReg_25
	call	toString
	mv	VirtualReg_26, a0
	mv	a0, VirtualReg_21
	mv	a1, VirtualReg_26
	call	string_add
	mv	VirtualReg_27, a0
	mv	a0, VirtualReg_27
	call	println
	li	VirtualReg_29, -12
	add	VirtualReg_29, s0, VirtualReg_29
	lw	VirtualReg_28, 0(VirtualReg_29)
	addi	VirtualReg_30, VirtualReg_28, 8
	lw	VirtualReg_31, 0(VirtualReg_30)
	li	VirtualReg_34, 1
	li	VirtualReg_35, 24
	mul	VirtualReg_33, VirtualReg_34, VirtualReg_35
	add	VirtualReg_32, VirtualReg_31, VirtualReg_33
	lw	VirtualReg_36, 0(VirtualReg_32)
	mv	a0, VirtualReg_36
	call	printTree
	j	.printTree_return
.printTree_return:

	.globl	randInt31
	.p2align	2
	.type	randInt31,@function
randInt31:
.randInt31_assemblyInit:
.randInt31_entry:
	lw	VirtualReg_2, fuckLLVM_seed
	li	VirtualReg_3, -16
	add	VirtualReg_3, s0, VirtualReg_3
	sw	VirtualReg_2, 0(VirtualReg_3)
	li	VirtualReg_5, -16
	add	VirtualReg_5, s0, VirtualReg_5
	lw	VirtualReg_4, 0(VirtualReg_5)
	li	VirtualReg_7, -16
	add	VirtualReg_7, s0, VirtualReg_7
	lw	VirtualReg_6, 0(VirtualReg_7)
	li	VirtualReg_8, 13
	sll	fuckLLVM_5, VirtualReg_6, VirtualReg_8
	xor	fuckLLVM_6, VirtualReg_4, fuckLLVM_5
	li	VirtualReg_9, -16
	add	VirtualReg_9, s0, VirtualReg_9
	sw	fuckLLVM_6, 0(VirtualReg_9)
	li	VirtualReg_11, -16
	add	VirtualReg_11, s0, VirtualReg_11
	lw	VirtualReg_10, 0(VirtualReg_11)
	li	VirtualReg_12, 1
	li	VirtualReg_13, 31
	sll	fuckLLVM_8, VirtualReg_12, VirtualReg_13
	li	VirtualReg_14, -1
	xor	fuckLLVM_9, fuckLLVM_8, VirtualReg_14
	and	fuckLLVM_10, VirtualReg_10, fuckLLVM_9
	li	VirtualReg_15, -16
	add	VirtualReg_15, s0, VirtualReg_15
	sw	fuckLLVM_10, 0(VirtualReg_15)
	li	VirtualReg_17, -16
	add	VirtualReg_17, s0, VirtualReg_17
	lw	VirtualReg_16, 0(VirtualReg_17)
	li	VirtualReg_19, -16
	add	VirtualReg_19, s0, VirtualReg_19
	lw	VirtualReg_18, 0(VirtualReg_19)
	li	VirtualReg_20, 17
	sra	fuckLLVM_13, VirtualReg_18, VirtualReg_20
	xor	fuckLLVM_14, VirtualReg_16, fuckLLVM_13
	li	VirtualReg_21, -16
	add	VirtualReg_21, s0, VirtualReg_21
	sw	fuckLLVM_14, 0(VirtualReg_21)
	li	VirtualReg_23, -16
	add	VirtualReg_23, s0, VirtualReg_23
	lw	VirtualReg_22, 0(VirtualReg_23)
	li	VirtualReg_25, -16
	add	VirtualReg_25, s0, VirtualReg_25
	lw	VirtualReg_24, 0(VirtualReg_25)
	li	VirtualReg_26, 5
	sll	fuckLLVM_17, VirtualReg_24, VirtualReg_26
	xor	fuckLLVM_18, VirtualReg_22, fuckLLVM_17
	li	VirtualReg_27, -16
	add	VirtualReg_27, s0, VirtualReg_27
	sw	fuckLLVM_18, 0(VirtualReg_27)
	li	VirtualReg_29, -16
	add	VirtualReg_29, s0, VirtualReg_29
	lw	VirtualReg_28, 0(VirtualReg_29)
	li	VirtualReg_30, 1
	li	VirtualReg_31, 31
	sll	fuckLLVM_20, VirtualReg_30, VirtualReg_31
	li	VirtualReg_32, -1
	xor	fuckLLVM_21, fuckLLVM_20, VirtualReg_32
	and	fuckLLVM_22, VirtualReg_28, fuckLLVM_21
	li	VirtualReg_33, -16
	add	VirtualReg_33, s0, VirtualReg_33
	sw	fuckLLVM_22, 0(VirtualReg_33)
	li	VirtualReg_35, -16
	add	VirtualReg_35, s0, VirtualReg_35
	lw	VirtualReg_34, 0(VirtualReg_35)
	sw	VirtualReg_34, fuckLLVM_seed, VirtualReg_36
	li	VirtualReg_38, -16
	add	VirtualReg_38, s0, VirtualReg_38
	lw	VirtualReg_37, 0(VirtualReg_38)
	li	VirtualReg_39, -12
	add	VirtualReg_39, s0, VirtualReg_39
	sw	VirtualReg_37, 0(VirtualReg_39)
	j	.randInt31_return
	j	.randInt31_return
.randInt31_return:
	li	VirtualReg_41, -12
	add	VirtualReg_41, s0, VirtualReg_41
	lw	VirtualReg_40, 0(VirtualReg_41)
	mv	a0, VirtualReg_40

	.globl	randOp
	.p2align	2
	.type	randOp,@function
randOp:
.randOp_assemblyInit:
	mv	VirtualReg_0, a0
.randOp_entry:
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_0, 0(VirtualReg_2)
	call	randInt31
	mv	VirtualReg_4, a0
	li	VirtualReg_6, -12
	add	VirtualReg_6, s0, VirtualReg_6
	lw	VirtualReg_5, 0(VirtualReg_6)
	slt	fuckLLVM_5, VirtualReg_4, VirtualReg_5
	bnez	fuckLLVM_5, .randOp_ID5_if_true
	j	.randOp_ID5_if_out
.randOp_ID5_if_true:
	li	VirtualReg_7, 1
	li	VirtualReg_8, -16
	add	VirtualReg_8, s0, VirtualReg_8
	sw	VirtualReg_7, 0(VirtualReg_8)
	j	.randOp_return
	j	.randOp_ID5_if_out
.randOp_ID5_if_out:
	li	VirtualReg_9, 2
	li	VirtualReg_10, -16
	add	VirtualReg_10, s0, VirtualReg_10
	sw	VirtualReg_9, 0(VirtualReg_10)
	j	.randOp_return
	j	.randOp_return
.randOp_return:
	li	VirtualReg_12, -16
	add	VirtualReg_12, s0, VirtualReg_12
	lw	VirtualReg_11, 0(VirtualReg_12)
	mv	a0, VirtualReg_11

	.globl	generateOperations
	.p2align	2
	.type	generateOperations,@function
generateOperations:
.generateOperations_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
.generateOperations_entry:
	li	VirtualReg_3, -12
	add	VirtualReg_3, s0, VirtualReg_3
	sw	VirtualReg_0, 0(VirtualReg_3)
	li	VirtualReg_5, -16
	add	VirtualReg_5, s0, VirtualReg_5
	sw	VirtualReg_1, 0(VirtualReg_5)
	li	VirtualReg_7, 0
	li	VirtualReg_8, -20
	add	VirtualReg_8, s0, VirtualReg_8
	sw	VirtualReg_7, 0(VirtualReg_8)
	j	.generateOperations_ID5_for_condition
.generateOperations_ID5_for_condition:
	li	VirtualReg_10, -20
	add	VirtualReg_10, s0, VirtualReg_10
	lw	VirtualReg_9, 0(VirtualReg_10)
	li	VirtualReg_12, -16
	add	VirtualReg_12, s0, VirtualReg_12
	lw	VirtualReg_11, 0(VirtualReg_12)
	slt	fuckLLVM_8, VirtualReg_9, VirtualReg_11
	bnez	fuckLLVM_8, .generateOperations_ID5_for_suite
	j	.generateOperations_ID5_for_out
.generateOperations_ID5_for_suite:
	call	randInt31
	mv	VirtualReg_14, a0
	lw	VirtualReg_15, fuckLLVM_MAX
	rem	fuckLLVM_12, VirtualReg_14, VirtualReg_15
	li	VirtualReg_16, -24
	add	VirtualReg_16, s0, VirtualReg_16
	sw	fuckLLVM_12, 0(VirtualReg_16)
	li	VirtualReg_18, -12
	add	VirtualReg_18, s0, VirtualReg_18
	lw	VirtualReg_17, 0(VirtualReg_18)
	mv	a0, VirtualReg_17
	call	randOp
	mv	VirtualReg_19, a0
	li	VirtualReg_20, 1
	xor	fuckLLVM_15, VirtualReg_19, VirtualReg_20
	sltiu	fuckLLVM_15, fuckLLVM_15, 1
	bnez	fuckLLVM_15, .generateOperations_ID15_if_true
	j	.generateOperations_ID15_if_false
.generateOperations_ID15_if_true:
	li	VirtualReg_22, -24
	add	VirtualReg_22, s0, VirtualReg_22
	lw	VirtualReg_21, 0(VirtualReg_22)
	mv	a0, VirtualReg_21
	call	insert
	mv	VirtualReg_23, a0
	j	.generateOperations_ID15_if_out
.generateOperations_ID15_if_false:
	li	VirtualReg_25, -24
	add	VirtualReg_25, s0, VirtualReg_25
	lw	VirtualReg_24, 0(VirtualReg_25)
	mv	a0, VirtualReg_24
	call	erase
	mv	VirtualReg_26, a0
	j	.generateOperations_ID15_if_out
.generateOperations_ID15_if_out:
	j	.generateOperations_ID5_for_incr
.generateOperations_ID5_for_incr:
	li	VirtualReg_28, -20
	add	VirtualReg_28, s0, VirtualReg_28
	lw	VirtualReg_27, 0(VirtualReg_28)
	li	VirtualReg_29, 1
	add	fuckLLVM_21, VirtualReg_27, VirtualReg_29
	li	VirtualReg_30, -20
	add	VirtualReg_30, s0, VirtualReg_30
	sw	fuckLLVM_21, 0(VirtualReg_30)
	j	.generateOperations_ID5_for_condition
.generateOperations_ID5_for_out:
	j	.generateOperations_return
.generateOperations_return:

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
	sw	VirtualReg_3, fuckLLVM_seed, VirtualReg_4
	li	VirtualReg_6, 500
	li	VirtualReg_7, -16
	add	VirtualReg_7, s0, VirtualReg_7
	sw	VirtualReg_6, 0(VirtualReg_7)
	lw	VirtualReg_8, fuckLLVM_MaxRandInt
	li	VirtualReg_9, 10
	div	fuckLLVM_4, VirtualReg_8, VirtualReg_9
	li	VirtualReg_10, 8
	mul	fuckLLVM_5, VirtualReg_10, fuckLLVM_4
	li	VirtualReg_12, -16
	add	VirtualReg_12, s0, VirtualReg_12
	lw	VirtualReg_11, 0(VirtualReg_12)
	mv	a0, fuckLLVM_5
	mv	a1, VirtualReg_11
	call	generateOperations
	lw	VirtualReg_13, fuckLLVM_MaxRandInt
	li	VirtualReg_14, 10
	div	fuckLLVM_9, VirtualReg_13, VirtualReg_14
	li	VirtualReg_15, 2
	mul	fuckLLVM_10, VirtualReg_15, fuckLLVM_9
	li	VirtualReg_17, -16
	add	VirtualReg_17, s0, VirtualReg_17
	lw	VirtualReg_16, 0(VirtualReg_17)
	li	VirtualReg_18, 2
	mul	fuckLLVM_12, VirtualReg_18, VirtualReg_16
	mv	a0, fuckLLVM_10
	mv	a1, fuckLLVM_12
	call	generateOperations
	lw	VirtualReg_19, fuckLLVM_MaxRandInt
	li	VirtualReg_20, 10
	div	fuckLLVM_15, VirtualReg_19, VirtualReg_20
	li	VirtualReg_21, 4
	mul	fuckLLVM_16, VirtualReg_21, fuckLLVM_15
	li	VirtualReg_23, -16
	add	VirtualReg_23, s0, VirtualReg_23
	lw	VirtualReg_22, 0(VirtualReg_23)
	mv	a0, fuckLLVM_16
	mv	a1, VirtualReg_22
	call	generateOperations
	lw	VirtualReg_24, fuckLLVM_root
	mv	a0, VirtualReg_24
	call	printTree
	li	VirtualReg_25, 0
	li	VirtualReg_26, -12
	add	VirtualReg_26, s0, VirtualReg_26
	sw	VirtualReg_25, 0(VirtualReg_26)
	j	.main_return
	j	.main_return
.main_return:
	li	VirtualReg_28, -12
	add	VirtualReg_28, s0, VirtualReg_28
	lw	VirtualReg_27, 0(VirtualReg_28)
	mv	a0, VirtualReg_27

	.section	.sbss
	.type	fuckLLVM_root,@object
	.globl	fuckLLVM_root
	.p2align	2
fuckLLVM_root:
	.word	0
	.size	fuckLLVM_root, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	":  "
	.size	fuckLLVM_.str.0, 3

	.section	.sbss
	.type	fuckLLVM_MAX,@object
	.globl	fuckLLVM_MAX
	.p2align	2
fuckLLVM_MAX:
	.word	128
	.size	fuckLLVM_MAX, 8

	.section	.sbss
	.type	fuckLLVM_MaxRandInt,@object
	.globl	fuckLLVM_MaxRandInt
	.p2align	2
fuckLLVM_MaxRandInt:
	.word	0
	.size	fuckLLVM_MaxRandInt, 8

	.section	.sbss
	.type	fuckLLVM_seed,@object
	.globl	fuckLLVM_seed
	.p2align	2
fuckLLVM_seed:
	.word	0
	.size	fuckLLVM_seed, 8

