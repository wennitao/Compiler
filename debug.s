	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
.__init_entry:
	j	.__init_return
.__init_return:

	.globl	node
	.p2align	2
	.type	node,@function
node:
.node_assemblyInit:
	mv	VirtualReg_0, a0
.node:
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_0, 0(VirtualReg_2)
	j	.node_return
.node_return:

	.globl	getHash
	.p2align	2
	.type	getHash,@function
getHash:
.getHash_assemblyInit:
	mv	VirtualReg_0, a0
.getHash_entry:
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_0, 0(VirtualReg_2)
	li	VirtualReg_5, -12
	add	VirtualReg_5, s0, VirtualReg_5
	lw	VirtualReg_4, 0(VirtualReg_5)
	li	VirtualReg_6, 237
	mul	fuckLLVM_4, VirtualReg_4, VirtualReg_6
	lw	VirtualReg_7, fuckLLVM_hashsize
	rem	fuckLLVM_6, fuckLLVM_4, VirtualReg_7
	li	VirtualReg_8, -16
	add	VirtualReg_8, s0, VirtualReg_8
	sw	fuckLLVM_6, 0(VirtualReg_8)
	j	.getHash_return
	j	.getHash_return
.getHash_return:
	li	VirtualReg_10, -16
	add	VirtualReg_10, s0, VirtualReg_10
	lw	VirtualReg_9, 0(VirtualReg_10)
	mv	a0, VirtualReg_9

	.globl	put
	.p2align	2
	.type	put,@function
put:
.put_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
.put_entry:
	li	VirtualReg_3, -12
	add	VirtualReg_3, s0, VirtualReg_3
	sw	VirtualReg_0, 0(VirtualReg_3)
	li	VirtualReg_5, -16
	add	VirtualReg_5, s0, VirtualReg_5
	sw	VirtualReg_1, 0(VirtualReg_5)
	li	VirtualReg_8, 0
	li	VirtualReg_9, -24
	add	VirtualReg_9, s0, VirtualReg_9
	sw	VirtualReg_8, 0(VirtualReg_9)
	li	VirtualReg_11, -12
	add	VirtualReg_11, s0, VirtualReg_11
	lw	VirtualReg_10, 0(VirtualReg_11)
	mv	a0, VirtualReg_10
	call	getHash
	mv	VirtualReg_12, a0
	li	VirtualReg_13, -20
	add	VirtualReg_13, s0, VirtualReg_13
	sw	VirtualReg_12, 0(VirtualReg_13)
	lw	VirtualReg_14, fuckLLVM_table
	li	VirtualReg_16, -20
	add	VirtualReg_16, s0, VirtualReg_16
	lw	VirtualReg_15, 0(VirtualReg_16)
	li	VirtualReg_19, 16
	mul	VirtualReg_18, VirtualReg_15, VirtualReg_19
	add	VirtualReg_17, VirtualReg_14, VirtualReg_18
	lw	VirtualReg_20, 0(VirtualReg_17)
	li	VirtualReg_21, 0
	xor	fuckLLVM_13, VirtualReg_20, VirtualReg_21
	sltiu	fuckLLVM_13, fuckLLVM_13, 1
	bnez	fuckLLVM_13, .put_ID13_if_true
	j	.put_ID13_if_out
.put_ID13_if_true:
	lw	VirtualReg_22, fuckLLVM_table
	li	VirtualReg_24, -20
	add	VirtualReg_24, s0, VirtualReg_24
	lw	VirtualReg_23, 0(VirtualReg_24)
	li	VirtualReg_27, 16
	mul	VirtualReg_26, VirtualReg_23, VirtualReg_27
	add	VirtualReg_25, VirtualReg_22, VirtualReg_26
	li	VirtualReg_28, 16
	mv	a0, VirtualReg_28
	call	malloc
	mv	VirtualReg_29, a0
	mv	a0, VirtualReg_29
	call	node
	sw	VirtualReg_29, 0(VirtualReg_25)
	lw	VirtualReg_30, fuckLLVM_table
	li	VirtualReg_32, -20
	add	VirtualReg_32, s0, VirtualReg_32
	lw	VirtualReg_31, 0(VirtualReg_32)
	li	VirtualReg_35, 16
	mul	VirtualReg_34, VirtualReg_31, VirtualReg_35
	add	VirtualReg_33, VirtualReg_30, VirtualReg_34
	lw	VirtualReg_36, 0(VirtualReg_33)
	addi	VirtualReg_37, VirtualReg_36, 0
	li	VirtualReg_39, -12
	add	VirtualReg_39, s0, VirtualReg_39
	lw	VirtualReg_38, 0(VirtualReg_39)
	sw	VirtualReg_38, 0(VirtualReg_37)
	lw	VirtualReg_40, fuckLLVM_table
	li	VirtualReg_42, -20
	add	VirtualReg_42, s0, VirtualReg_42
	lw	VirtualReg_41, 0(VirtualReg_42)
	li	VirtualReg_45, 16
	mul	VirtualReg_44, VirtualReg_41, VirtualReg_45
	add	VirtualReg_43, VirtualReg_40, VirtualReg_44
	lw	VirtualReg_46, 0(VirtualReg_43)
	addi	VirtualReg_47, VirtualReg_46, 4
	li	VirtualReg_49, -16
	add	VirtualReg_49, s0, VirtualReg_49
	lw	VirtualReg_48, 0(VirtualReg_49)
	sw	VirtualReg_48, 0(VirtualReg_47)
	lw	VirtualReg_50, fuckLLVM_table
	li	VirtualReg_52, -20
	add	VirtualReg_52, s0, VirtualReg_52
	lw	VirtualReg_51, 0(VirtualReg_52)
	li	VirtualReg_55, 16
	mul	VirtualReg_54, VirtualReg_51, VirtualReg_55
	add	VirtualReg_53, VirtualReg_50, VirtualReg_54
	lw	VirtualReg_56, 0(VirtualReg_53)
	addi	VirtualReg_57, VirtualReg_56, 8
	li	VirtualReg_58, 0
	sw	VirtualReg_58, 0(VirtualReg_57)
	j	.put_return
	j	.put_ID13_if_out
.put_ID13_if_out:
	lw	VirtualReg_59, fuckLLVM_table
	li	VirtualReg_61, -20
	add	VirtualReg_61, s0, VirtualReg_61
	lw	VirtualReg_60, 0(VirtualReg_61)
	li	VirtualReg_64, 16
	mul	VirtualReg_63, VirtualReg_60, VirtualReg_64
	add	VirtualReg_62, VirtualReg_59, VirtualReg_63
	lw	VirtualReg_65, 0(VirtualReg_62)
	li	VirtualReg_66, -24
	add	VirtualReg_66, s0, VirtualReg_66
	sw	VirtualReg_65, 0(VirtualReg_66)
	j	.put_ID42_while_condition
.put_ID42_while_condition:
	li	VirtualReg_68, -24
	add	VirtualReg_68, s0, VirtualReg_68
	lw	VirtualReg_67, 0(VirtualReg_68)
	addi	VirtualReg_69, VirtualReg_67, 0
	lw	VirtualReg_70, 0(VirtualReg_69)
	li	VirtualReg_72, -12
	add	VirtualReg_72, s0, VirtualReg_72
	lw	VirtualReg_71, 0(VirtualReg_72)
	xor	fuckLLVM_46, VirtualReg_70, VirtualReg_71
	sltiu	fuckLLVM_46, fuckLLVM_46, 1
	xori	fuckLLVM_46, fuckLLVM_46, 1
	bnez	fuckLLVM_46, .put_ID47_while_suite
	j	.put_ID47_while_out
.put_ID50_if_true:
	li	VirtualReg_74, -24
	add	VirtualReg_74, s0, VirtualReg_74
	lw	VirtualReg_73, 0(VirtualReg_74)
	addi	VirtualReg_75, VirtualReg_73, 8
	li	VirtualReg_76, 16
	mv	a0, VirtualReg_76
	call	malloc
	mv	VirtualReg_77, a0
	mv	a0, VirtualReg_77
	call	node
	sw	VirtualReg_77, 0(VirtualReg_75)
	li	VirtualReg_79, -24
	add	VirtualReg_79, s0, VirtualReg_79
	lw	VirtualReg_78, 0(VirtualReg_79)
	addi	VirtualReg_80, VirtualReg_78, 8
	lw	VirtualReg_81, 0(VirtualReg_80)
	addi	VirtualReg_82, VirtualReg_81, 0
	li	VirtualReg_84, -12
	add	VirtualReg_84, s0, VirtualReg_84
	lw	VirtualReg_83, 0(VirtualReg_84)
	sw	VirtualReg_83, 0(VirtualReg_82)
	li	VirtualReg_86, -24
	add	VirtualReg_86, s0, VirtualReg_86
	lw	VirtualReg_85, 0(VirtualReg_86)
	addi	VirtualReg_87, VirtualReg_85, 8
	lw	VirtualReg_88, 0(VirtualReg_87)
	addi	VirtualReg_89, VirtualReg_88, 8
	li	VirtualReg_90, 0
	sw	VirtualReg_90, 0(VirtualReg_89)
	j	.put_ID50_if_out
.put_ID50_if_out:
	li	VirtualReg_92, -24
	add	VirtualReg_92, s0, VirtualReg_92
	lw	VirtualReg_91, 0(VirtualReg_92)
	addi	VirtualReg_93, VirtualReg_91, 8
	lw	VirtualReg_94, 0(VirtualReg_93)
	li	VirtualReg_95, -24
	add	VirtualReg_95, s0, VirtualReg_95
	sw	VirtualReg_94, 0(VirtualReg_95)
	j	.put_ID42_while_condition
.put_ID47_while_suite:
	li	VirtualReg_97, -24
	add	VirtualReg_97, s0, VirtualReg_97
	lw	VirtualReg_96, 0(VirtualReg_97)
	addi	VirtualReg_98, VirtualReg_96, 8
	lw	VirtualReg_99, 0(VirtualReg_98)
	li	VirtualReg_100, 0
	xor	fuckLLVM_50, VirtualReg_99, VirtualReg_100
	sltiu	fuckLLVM_50, fuckLLVM_50, 1
	bnez	fuckLLVM_50, .put_ID50_if_true
	j	.put_ID50_if_out
.put_ID47_while_out:
	li	VirtualReg_102, -24
	add	VirtualReg_102, s0, VirtualReg_102
	lw	VirtualReg_101, 0(VirtualReg_102)
	addi	VirtualReg_103, VirtualReg_101, 4
	li	VirtualReg_105, -16
	add	VirtualReg_105, s0, VirtualReg_105
	lw	VirtualReg_104, 0(VirtualReg_105)
	sw	VirtualReg_104, 0(VirtualReg_103)
	j	.put_return
.put_return:

	.globl	get
	.p2align	2
	.type	get,@function
get:
.get_assemblyInit:
	mv	VirtualReg_0, a0
.get_entry:
	li	VirtualReg_2, -12
	add	VirtualReg_2, s0, VirtualReg_2
	sw	VirtualReg_0, 0(VirtualReg_2)
	li	VirtualReg_5, 0
	li	VirtualReg_6, -20
	add	VirtualReg_6, s0, VirtualReg_6
	sw	VirtualReg_5, 0(VirtualReg_6)
	lw	VirtualReg_7, fuckLLVM_table
	li	VirtualReg_9, -12
	add	VirtualReg_9, s0, VirtualReg_9
	lw	VirtualReg_8, 0(VirtualReg_9)
	mv	a0, VirtualReg_8
	call	getHash
	mv	VirtualReg_10, a0
	li	VirtualReg_13, 16
	mul	VirtualReg_12, VirtualReg_10, VirtualReg_13
	add	VirtualReg_11, VirtualReg_7, VirtualReg_12
	lw	VirtualReg_14, 0(VirtualReg_11)
	li	VirtualReg_15, -20
	add	VirtualReg_15, s0, VirtualReg_15
	sw	VirtualReg_14, 0(VirtualReg_15)
	j	.get_ID10_while_condition
.get_ID10_while_condition:
	li	VirtualReg_17, -20
	add	VirtualReg_17, s0, VirtualReg_17
	lw	VirtualReg_16, 0(VirtualReg_17)
	addi	VirtualReg_18, VirtualReg_16, 0
	lw	VirtualReg_19, 0(VirtualReg_18)
	li	VirtualReg_21, -12
	add	VirtualReg_21, s0, VirtualReg_21
	lw	VirtualReg_20, 0(VirtualReg_21)
	xor	fuckLLVM_14, VirtualReg_19, VirtualReg_20
	sltiu	fuckLLVM_14, fuckLLVM_14, 1
	xori	fuckLLVM_14, fuckLLVM_14, 1
	bnez	fuckLLVM_14, .get_ID15_while_suite
	j	.get_ID15_while_out
.get_ID15_while_suite:
	li	VirtualReg_23, -20
	add	VirtualReg_23, s0, VirtualReg_23
	lw	VirtualReg_22, 0(VirtualReg_23)
	addi	VirtualReg_24, VirtualReg_22, 8
	lw	VirtualReg_25, 0(VirtualReg_24)
	li	VirtualReg_26, -20
	add	VirtualReg_26, s0, VirtualReg_26
	sw	VirtualReg_25, 0(VirtualReg_26)
	j	.get_ID10_while_condition
.get_ID15_while_out:
	li	VirtualReg_28, -20
	add	VirtualReg_28, s0, VirtualReg_28
	lw	VirtualReg_27, 0(VirtualReg_28)
	addi	VirtualReg_29, VirtualReg_27, 4
	lw	VirtualReg_30, 0(VirtualReg_29)
	li	VirtualReg_31, -16
	add	VirtualReg_31, s0, VirtualReg_31
	sw	VirtualReg_30, 0(VirtualReg_31)
	j	.get_return
	j	.get_return
.get_return:
	li	VirtualReg_33, -16
	add	VirtualReg_33, s0, VirtualReg_33
	lw	VirtualReg_32, 0(VirtualReg_33)
	mv	a0, VirtualReg_32

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
	li	VirtualReg_4, 100
	li	VirtualReg_5, 16
	mul	fuckLLVM_2, VirtualReg_4, VirtualReg_5
	li	VirtualReg_6, 4
	add	fuckLLVM_3, fuckLLVM_2, VirtualReg_6
	mv	a0, fuckLLVM_3
	call	malloc
	mv	VirtualReg_7, a0
	li	VirtualReg_8, 100
	sw	VirtualReg_8, 0(VirtualReg_7)
	li	VirtualReg_11, 1
	li	VirtualReg_12, 4
	mul	VirtualReg_10, VirtualReg_11, VirtualReg_12
	add	VirtualReg_9, VirtualReg_7, VirtualReg_10
	sw	VirtualReg_9, fuckLLVM_table, VirtualReg_13
	li	VirtualReg_14, 0
	li	VirtualReg_15, -16
	add	VirtualReg_15, s0, VirtualReg_15
	sw	VirtualReg_14, 0(VirtualReg_15)
	j	.main_ID8_for_condition
.main_ID8_for_condition:
	li	VirtualReg_17, -16
	add	VirtualReg_17, s0, VirtualReg_17
	lw	VirtualReg_16, 0(VirtualReg_17)
	lw	VirtualReg_18, fuckLLVM_hashsize
	slt	fuckLLVM_11, VirtualReg_16, VirtualReg_18
	bnez	fuckLLVM_11, .main_ID8_for_suite
	j	.main_ID8_for_out
.main_ID8_for_suite:
	lw	VirtualReg_19, fuckLLVM_table
	li	VirtualReg_21, -16
	add	VirtualReg_21, s0, VirtualReg_21
	lw	VirtualReg_20, 0(VirtualReg_21)
	li	VirtualReg_24, 16
	mul	VirtualReg_23, VirtualReg_20, VirtualReg_24
	add	VirtualReg_22, VirtualReg_19, VirtualReg_23
	li	VirtualReg_25, 0
	sw	VirtualReg_25, 0(VirtualReg_22)
	j	.main_ID8_for_incr
.main_ID8_for_incr:
	li	VirtualReg_27, -16
	add	VirtualReg_27, s0, VirtualReg_27
	lw	VirtualReg_26, 0(VirtualReg_27)
	li	VirtualReg_28, 1
	add	fuckLLVM_16, VirtualReg_26, VirtualReg_28
	li	VirtualReg_29, -16
	add	VirtualReg_29, s0, VirtualReg_29
	sw	fuckLLVM_16, 0(VirtualReg_29)
	j	.main_ID8_for_condition
.main_ID8_for_out:
	li	VirtualReg_30, 0
	li	VirtualReg_31, -16
	add	VirtualReg_31, s0, VirtualReg_31
	sw	VirtualReg_30, 0(VirtualReg_31)
	j	.main_ID16_for_condition
.main_ID16_for_condition:
	li	VirtualReg_33, -16
	add	VirtualReg_33, s0, VirtualReg_33
	lw	VirtualReg_32, 0(VirtualReg_33)
	li	VirtualReg_34, 1000
	slt	fuckLLVM_18, VirtualReg_32, VirtualReg_34
	bnez	fuckLLVM_18, .main_ID16_for_suite
	j	.main_ID16_for_out
.main_ID16_for_suite:
	li	VirtualReg_36, -16
	add	VirtualReg_36, s0, VirtualReg_36
	lw	VirtualReg_35, 0(VirtualReg_36)
	li	VirtualReg_38, -16
	add	VirtualReg_38, s0, VirtualReg_38
	lw	VirtualReg_37, 0(VirtualReg_38)
	mv	a0, VirtualReg_35
	mv	a1, VirtualReg_37
	call	put
	j	.main_ID16_for_incr
.main_ID16_for_incr:
	li	VirtualReg_40, -16
	add	VirtualReg_40, s0, VirtualReg_40
	lw	VirtualReg_39, 0(VirtualReg_40)
	li	VirtualReg_41, 1
	add	fuckLLVM_23, VirtualReg_39, VirtualReg_41
	li	VirtualReg_42, -16
	add	VirtualReg_42, s0, VirtualReg_42
	sw	fuckLLVM_23, 0(VirtualReg_42)
	j	.main_ID16_for_condition
.main_ID16_for_out:
	li	VirtualReg_43, 0
	li	VirtualReg_44, -16
	add	VirtualReg_44, s0, VirtualReg_44
	sw	VirtualReg_43, 0(VirtualReg_44)
	j	.main_ID23_for_condition
.main_ID23_for_condition:
	li	VirtualReg_46, -16
	add	VirtualReg_46, s0, VirtualReg_46
	lw	VirtualReg_45, 0(VirtualReg_46)
	li	VirtualReg_47, 1000
	slt	fuckLLVM_25, VirtualReg_45, VirtualReg_47
	bnez	fuckLLVM_25, .main_ID23_for_suite
	j	.main_ID23_for_out
.main_ID23_for_suite:
	li	VirtualReg_49, -16
	add	VirtualReg_49, s0, VirtualReg_49
	lw	VirtualReg_48, 0(VirtualReg_49)
	mv	a0, VirtualReg_48
	call	toString
	mv	VirtualReg_50, a0
	la	VirtualReg_51, fuckLLVM_.str.0
	mv	a0, VirtualReg_50
	mv	a1, VirtualReg_51
	call	string_add
	mv	VirtualReg_52, a0
	li	VirtualReg_54, -16
	add	VirtualReg_54, s0, VirtualReg_54
	lw	VirtualReg_53, 0(VirtualReg_54)
	mv	a0, VirtualReg_53
	call	get
	mv	VirtualReg_55, a0
	mv	a0, VirtualReg_55
	call	toString
	mv	VirtualReg_56, a0
	mv	a0, VirtualReg_52
	mv	a1, VirtualReg_56
	call	string_add
	mv	VirtualReg_57, a0
	mv	a0, VirtualReg_57
	call	println
	j	.main_ID23_for_incr
.main_ID23_for_incr:
	li	VirtualReg_59, -16
	add	VirtualReg_59, s0, VirtualReg_59
	lw	VirtualReg_58, 0(VirtualReg_59)
	li	VirtualReg_60, 1
	add	fuckLLVM_40, VirtualReg_58, VirtualReg_60
	li	VirtualReg_61, -16
	add	VirtualReg_61, s0, VirtualReg_61
	sw	fuckLLVM_40, 0(VirtualReg_61)
	j	.main_ID23_for_condition
.main_ID23_for_out:
	li	VirtualReg_62, 0
	li	VirtualReg_63, -12
	add	VirtualReg_63, s0, VirtualReg_63
	sw	VirtualReg_62, 0(VirtualReg_63)
	j	.main_return
	j	.main_return
.main_return:
	li	VirtualReg_65, -12
	add	VirtualReg_65, s0, VirtualReg_65
	lw	VirtualReg_64, 0(VirtualReg_65)
	mv	a0, VirtualReg_64

	.section	.sbss
	.type	fuckLLVM_hashsize,@object
	.globl	fuckLLVM_hashsize
	.p2align	2
fuckLLVM_hashsize:
	.word	100
	.size	fuckLLVM_hashsize, 8

	.section	.sbss
	.type	fuckLLVM_table,@object
	.globl	fuckLLVM_table
	.p2align	2
fuckLLVM_table:
	.word	0
	.size	fuckLLVM_table, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"  "
	.size	fuckLLVM_.str.0, 2

