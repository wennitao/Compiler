	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
.__init_entry:
	li	VirtualReg_0, 12000
	li	VirtualReg_1, 4
	mul	fuckLLVM_0, VirtualReg_0, VirtualReg_1
	li	VirtualReg_2, 4
	add	fuckLLVM_1, fuckLLVM_0, VirtualReg_2
	mv	a0, fuckLLVM_1
	call	malloc
	mv	VirtualReg_3, a0
	li	VirtualReg_4, 12000
	sw	VirtualReg_4, 0(VirtualReg_3)
	li	VirtualReg_7, 1
	li	VirtualReg_8, 4
	mul	VirtualReg_6, VirtualReg_7, VirtualReg_8
	add	VirtualReg_5, VirtualReg_3, VirtualReg_6
	sw	VirtualReg_5, fuckLLVM_xlist, VirtualReg_9
	li	VirtualReg_10, 12000
	li	VirtualReg_11, 4
	mul	fuckLLVM_7, VirtualReg_10, VirtualReg_11
	li	VirtualReg_12, 4
	add	fuckLLVM_8, fuckLLVM_7, VirtualReg_12
	mv	a0, fuckLLVM_8
	call	malloc
	mv	VirtualReg_13, a0
	li	VirtualReg_14, 12000
	sw	VirtualReg_14, 0(VirtualReg_13)
	li	VirtualReg_17, 1
	li	VirtualReg_18, 4
	mul	VirtualReg_16, VirtualReg_17, VirtualReg_18
	add	VirtualReg_15, VirtualReg_13, VirtualReg_16
	sw	VirtualReg_15, fuckLLVM_ylist, VirtualReg_19
	li	VirtualReg_20, 8
	li	VirtualReg_21, 4
	mul	fuckLLVM_14, VirtualReg_20, VirtualReg_21
	li	VirtualReg_22, 4
	add	fuckLLVM_15, fuckLLVM_14, VirtualReg_22
	mv	a0, fuckLLVM_15
	call	malloc
	mv	VirtualReg_23, a0
	li	VirtualReg_24, 8
	sw	VirtualReg_24, 0(VirtualReg_23)
	li	VirtualReg_27, 1
	li	VirtualReg_28, 4
	mul	VirtualReg_26, VirtualReg_27, VirtualReg_28
	add	VirtualReg_25, VirtualReg_23, VirtualReg_26
	sw	VirtualReg_25, fuckLLVM_dx, VirtualReg_29
	li	VirtualReg_30, 9
	li	VirtualReg_31, 4
	mul	fuckLLVM_21, VirtualReg_30, VirtualReg_31
	li	VirtualReg_32, 4
	add	fuckLLVM_22, fuckLLVM_21, VirtualReg_32
	mv	a0, fuckLLVM_22
	call	malloc
	mv	VirtualReg_33, a0
	li	VirtualReg_34, 9
	sw	VirtualReg_34, 0(VirtualReg_33)
	li	VirtualReg_37, 1
	li	VirtualReg_38, 4
	mul	VirtualReg_36, VirtualReg_37, VirtualReg_38
	add	VirtualReg_35, VirtualReg_33, VirtualReg_36
	sw	VirtualReg_35, fuckLLVM_dy, VirtualReg_39
	j	.__init_return
.__init_return:

	.globl	origin
	.p2align	2
	.type	origin,@function
origin:
.origin_assemblyInit:
	mv	VirtualReg_0, a0
.origin_entry:
	sw	VirtualReg_0, -12(s0)
	li	VirtualReg_2, 0
	sw	VirtualReg_2, fuckLLVM_head, VirtualReg_3
	li	VirtualReg_4, 0
	sw	VirtualReg_4, fuckLLVM_tail, VirtualReg_5
	lw	VirtualReg_6, -12(s0)
	li	VirtualReg_7, 8
	mul	fuckLLVM_5, VirtualReg_6, VirtualReg_7
	li	VirtualReg_8, 4
	add	fuckLLVM_6, fuckLLVM_5, VirtualReg_8
	mv	a0, fuckLLVM_6
	call	malloc
	mv	VirtualReg_9, a0
	sw	VirtualReg_6, 0(VirtualReg_9)
	li	VirtualReg_12, 1
	li	VirtualReg_13, 4
	mul	VirtualReg_11, VirtualReg_12, VirtualReg_13
	add	VirtualReg_10, VirtualReg_9, VirtualReg_11
	sw	VirtualReg_10, fuckLLVM_step, VirtualReg_14
	li	VirtualReg_15, 0
	sw	VirtualReg_15, fuckLLVM_i, VirtualReg_16
	j	.origin_ID11_for_condition
.origin_ID11_for_condition:
	lw	VirtualReg_17, fuckLLVM_i
	lw	VirtualReg_18, -12(s0)
	slt	fuckLLVM_14, VirtualReg_17, VirtualReg_18
	bnez	fuckLLVM_14, .origin_ID11_for_suite
	j	.origin_ID11_for_out
.origin_ID11_for_suite:
	lw	VirtualReg_19, fuckLLVM_step
	lw	VirtualReg_20, fuckLLVM_i
	li	VirtualReg_23, 8
	mul	VirtualReg_22, VirtualReg_20, VirtualReg_23
	add	VirtualReg_21, VirtualReg_19, VirtualReg_22
	lw	VirtualReg_24, -12(s0)
	li	VirtualReg_25, 4
	mul	fuckLLVM_20, VirtualReg_24, VirtualReg_25
	li	VirtualReg_26, 4
	add	fuckLLVM_21, fuckLLVM_20, VirtualReg_26
	mv	a0, fuckLLVM_21
	call	malloc
	mv	VirtualReg_27, a0
	sw	VirtualReg_24, 0(VirtualReg_27)
	li	VirtualReg_30, 1
	li	VirtualReg_31, 4
	mul	VirtualReg_29, VirtualReg_30, VirtualReg_31
	add	VirtualReg_28, VirtualReg_27, VirtualReg_29
	sw	VirtualReg_28, 0(VirtualReg_21)
	li	VirtualReg_32, 0
	sw	VirtualReg_32, fuckLLVM_j, VirtualReg_33
	j	.origin_ID26_for_condition
.origin_ID26_for_condition:
	lw	VirtualReg_34, fuckLLVM_j
	lw	VirtualReg_35, -12(s0)
	slt	fuckLLVM_29, VirtualReg_34, VirtualReg_35
	bnez	fuckLLVM_29, .origin_ID26_for_suite
	j	.origin_ID26_for_out
.origin_ID26_for_suite:
	lw	VirtualReg_36, fuckLLVM_step
	lw	VirtualReg_37, fuckLLVM_i
	li	VirtualReg_40, 8
	mul	VirtualReg_39, VirtualReg_37, VirtualReg_40
	add	VirtualReg_38, VirtualReg_36, VirtualReg_39
	lw	VirtualReg_41, 0(VirtualReg_38)
	lw	VirtualReg_42, fuckLLVM_j
	li	VirtualReg_45, 4
	mul	VirtualReg_44, VirtualReg_42, VirtualReg_45
	add	VirtualReg_43, VirtualReg_41, VirtualReg_44
	li	VirtualReg_46, 0
	sw	VirtualReg_46, 0(VirtualReg_43)
	j	.origin_ID26_for_incr
.origin_ID26_for_incr:
	lw	VirtualReg_47, fuckLLVM_j
	li	VirtualReg_48, 1
	add	fuckLLVM_37, VirtualReg_47, VirtualReg_48
	sw	fuckLLVM_37, fuckLLVM_j, VirtualReg_49
	j	.origin_ID26_for_condition
.origin_ID26_for_out:
	j	.origin_ID11_for_incr
.origin_ID11_for_incr:
	lw	VirtualReg_50, fuckLLVM_i
	li	VirtualReg_51, 1
	add	fuckLLVM_39, VirtualReg_50, VirtualReg_51
	sw	fuckLLVM_39, fuckLLVM_i, VirtualReg_52
	j	.origin_ID11_for_condition
.origin_ID11_for_out:
	j	.origin_return
.origin_return:

	.globl	check
	.p2align	2
	.type	check,@function
check:
.check_assemblyInit:
	mv	VirtualReg_0, a0
.check_entry:
	sw	VirtualReg_0, -12(s0)
	lw	VirtualReg_3, -12(s0)
	lw	VirtualReg_4, fuckLLVM_N
	slt	fuckLLVM_5, VirtualReg_3, VirtualReg_4
	li	VirtualReg_9, 0
	mv	VirtualReg_7, VirtualReg_9
	bnez	fuckLLVM_5, .check_ID5_AndAnd_true
	mv	VirtualReg_7, VirtualReg_9
	j	.check_ID5_AndAnd_out
.check_ID5_AndAnd_true:
	lw	VirtualReg_5, -12(s0)
	li	VirtualReg_6, 0
	slt	fuckLLVM_7, VirtualReg_5, VirtualReg_6
	xori	fuckLLVM_7, fuckLLVM_7, 1
	mv	VirtualReg_7, fuckLLVM_7
	j	.check_ID5_AndAnd_out
.check_ID5_AndAnd_out:
	sb	VirtualReg_7, -16(s0)
	j	.check_return
	j	.check_return
.check_return:
	lb	VirtualReg_8, -16(s0)
	mv	a0, VirtualReg_8

	.globl	addList
	.p2align	2
	.type	addList,@function
addList:
.addList_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
.addList_entry:
	sw	VirtualReg_0, -12(s0)
	sw	VirtualReg_1, -16(s0)
	lw	VirtualReg_4, -12(s0)
	mv	a0, VirtualReg_4
	call	check
	mv	VirtualReg_5, a0
	li	VirtualReg_57, 0
	mv	VirtualReg_8, VirtualReg_57
	bnez	VirtualReg_5, .addList_ID6_AndAnd_true
	mv	VirtualReg_8, VirtualReg_57
	j	.addList_ID6_AndAnd_out
.addList_ID6_AndAnd_true:
	lw	VirtualReg_6, -16(s0)
	mv	a0, VirtualReg_6
	call	check
	mv	VirtualReg_7, a0
	mv	VirtualReg_8, VirtualReg_7
	j	.addList_ID6_AndAnd_out
.addList_ID6_AndAnd_out:
	li	VirtualReg_58, 0
	mv	VirtualReg_22, VirtualReg_58
	bnez	VirtualReg_8, .addList_ID11_AndAnd_true
	mv	VirtualReg_22, VirtualReg_58
	j	.addList_ID11_AndAnd_out
.addList_ID11_AndAnd_true:
	lw	VirtualReg_9, fuckLLVM_step
	lw	VirtualReg_10, -12(s0)
	li	VirtualReg_13, 8
	mul	VirtualReg_12, VirtualReg_10, VirtualReg_13
	add	VirtualReg_11, VirtualReg_9, VirtualReg_12
	lw	VirtualReg_14, 0(VirtualReg_11)
	lw	VirtualReg_15, -16(s0)
	li	VirtualReg_18, 4
	mul	VirtualReg_17, VirtualReg_15, VirtualReg_18
	add	VirtualReg_16, VirtualReg_14, VirtualReg_17
	lw	VirtualReg_19, 0(VirtualReg_16)
	li	VirtualReg_20, 0
	li	VirtualReg_21, 1
	sub	fuckLLVM_19, VirtualReg_20, VirtualReg_21
	xor	fuckLLVM_20, VirtualReg_19, fuckLLVM_19
	sltiu	fuckLLVM_20, fuckLLVM_20, 1
	mv	VirtualReg_22, fuckLLVM_20
	j	.addList_ID11_AndAnd_out
.addList_ID11_AndAnd_out:
	bnez	VirtualReg_22, .addList_ID21_if_true
	j	.addList_ID21_if_out
.addList_ID42_AndAnd_true:
	lw	VirtualReg_23, -16(s0)
	lw	VirtualReg_24, fuckLLVM_targety
	xor	fuckLLVM_45, VirtualReg_23, VirtualReg_24
	sltiu	fuckLLVM_45, fuckLLVM_45, 1
	mv	VirtualReg_25, fuckLLVM_45
	j	.addList_ID42_AndAnd_out
.addList_ID42_AndAnd_out:
	bnez	VirtualReg_25, .addList_ID46_if_true
	j	.addList_ID46_if_out
.addList_ID46_if_true:
	li	VirtualReg_26, 1
	sw	VirtualReg_26, fuckLLVM_ok, VirtualReg_27
	j	.addList_ID46_if_out
.addList_ID46_if_out:
	j	.addList_ID21_if_out
.addList_ID21_if_true:
	lw	VirtualReg_28, fuckLLVM_tail
	li	VirtualReg_29, 1
	add	fuckLLVM_23, VirtualReg_28, VirtualReg_29
	sw	fuckLLVM_23, fuckLLVM_tail, VirtualReg_30
	lw	VirtualReg_31, fuckLLVM_xlist
	lw	VirtualReg_32, fuckLLVM_tail
	li	VirtualReg_35, 4
	mul	VirtualReg_34, VirtualReg_32, VirtualReg_35
	add	VirtualReg_33, VirtualReg_31, VirtualReg_34
	lw	VirtualReg_36, -12(s0)
	sw	VirtualReg_36, 0(VirtualReg_33)
	lw	VirtualReg_37, fuckLLVM_ylist
	lw	VirtualReg_38, fuckLLVM_tail
	li	VirtualReg_41, 4
	mul	VirtualReg_40, VirtualReg_38, VirtualReg_41
	add	VirtualReg_39, VirtualReg_37, VirtualReg_40
	lw	VirtualReg_42, -16(s0)
	sw	VirtualReg_42, 0(VirtualReg_39)
	lw	VirtualReg_43, fuckLLVM_step
	lw	VirtualReg_44, -12(s0)
	li	VirtualReg_47, 8
	mul	VirtualReg_46, VirtualReg_44, VirtualReg_47
	add	VirtualReg_45, VirtualReg_43, VirtualReg_46
	lw	VirtualReg_48, 0(VirtualReg_45)
	lw	VirtualReg_49, -16(s0)
	li	VirtualReg_52, 4
	mul	VirtualReg_51, VirtualReg_49, VirtualReg_52
	add	VirtualReg_50, VirtualReg_48, VirtualReg_51
	lw	VirtualReg_53, fuckLLVM_now
	li	VirtualReg_54, 1
	add	fuckLLVM_39, VirtualReg_53, VirtualReg_54
	sw	fuckLLVM_39, 0(VirtualReg_50)
	lw	VirtualReg_55, -12(s0)
	lw	VirtualReg_56, fuckLLVM_targetx
	xor	fuckLLVM_42, VirtualReg_55, VirtualReg_56
	sltiu	fuckLLVM_42, fuckLLVM_42, 1
	li	VirtualReg_59, 0
	mv	VirtualReg_25, VirtualReg_59
	bnez	fuckLLVM_42, .addList_ID42_AndAnd_true
	mv	VirtualReg_25, VirtualReg_59
	j	.addList_ID42_AndAnd_out
.addList_ID21_if_out:
	j	.addList_return
.addList_return:

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
.main_entry:
	call	__init
	li	VirtualReg_1, 0
	sw	VirtualReg_1, -12(s0)
	li	VirtualReg_2, 106
	mv	a0, VirtualReg_2
	call	origin
	call	getInt
	mv	VirtualReg_3, a0
	sw	VirtualReg_3, fuckLLVM_N, VirtualReg_4
	lw	VirtualReg_5, fuckLLVM_N
	li	VirtualReg_6, 1
	sub	fuckLLVM_4, VirtualReg_5, VirtualReg_6
	sw	fuckLLVM_4, fuckLLVM_targety, VirtualReg_7
	lw	VirtualReg_8, fuckLLVM_targety
	sw	VirtualReg_8, fuckLLVM_targetx, VirtualReg_9
	li	VirtualReg_10, 0
	sw	VirtualReg_10, fuckLLVM_i, VirtualReg_11
	j	.main_ID5_for_condition
.main_ID5_for_condition:
	lw	VirtualReg_12, fuckLLVM_i
	lw	VirtualReg_13, fuckLLVM_N
	slt	fuckLLVM_8, VirtualReg_12, VirtualReg_13
	bnez	fuckLLVM_8, .main_ID5_for_suite
	j	.main_ID5_for_out
.main_ID5_for_suite:
	li	VirtualReg_14, 0
	sw	VirtualReg_14, fuckLLVM_j, VirtualReg_15
	j	.main_ID8_for_condition
.main_ID8_for_condition:
	lw	VirtualReg_16, fuckLLVM_j
	lw	VirtualReg_17, fuckLLVM_N
	slt	fuckLLVM_11, VirtualReg_16, VirtualReg_17
	bnez	fuckLLVM_11, .main_ID8_for_suite
	j	.main_ID8_for_out
.main_ID8_for_suite:
	lw	VirtualReg_18, fuckLLVM_step
	lw	VirtualReg_19, fuckLLVM_i
	li	VirtualReg_22, 8
	mul	VirtualReg_21, VirtualReg_19, VirtualReg_22
	add	VirtualReg_20, VirtualReg_18, VirtualReg_21
	lw	VirtualReg_23, 0(VirtualReg_20)
	lw	VirtualReg_24, fuckLLVM_j
	li	VirtualReg_27, 4
	mul	VirtualReg_26, VirtualReg_24, VirtualReg_27
	add	VirtualReg_25, VirtualReg_23, VirtualReg_26
	li	VirtualReg_28, 0
	li	VirtualReg_29, 1
	sub	fuckLLVM_18, VirtualReg_28, VirtualReg_29
	sw	fuckLLVM_18, 0(VirtualReg_25)
	j	.main_ID8_for_incr
.main_ID8_for_incr:
	lw	VirtualReg_30, fuckLLVM_j
	li	VirtualReg_31, 1
	add	fuckLLVM_20, VirtualReg_30, VirtualReg_31
	sw	fuckLLVM_20, fuckLLVM_j, VirtualReg_32
	j	.main_ID8_for_condition
.main_ID8_for_out:
	j	.main_ID5_for_incr
.main_ID5_for_incr:
	lw	VirtualReg_33, fuckLLVM_i
	li	VirtualReg_34, 1
	add	fuckLLVM_22, VirtualReg_33, VirtualReg_34
	sw	fuckLLVM_22, fuckLLVM_i, VirtualReg_35
	j	.main_ID5_for_condition
.main_ID5_for_out:
	lw	VirtualReg_36, fuckLLVM_dx
	li	VirtualReg_39, 0
	li	VirtualReg_40, 4
	mul	VirtualReg_38, VirtualReg_39, VirtualReg_40
	add	VirtualReg_37, VirtualReg_36, VirtualReg_38
	li	VirtualReg_41, 0
	li	VirtualReg_42, 2
	sub	fuckLLVM_25, VirtualReg_41, VirtualReg_42
	sw	fuckLLVM_25, 0(VirtualReg_37)
	lw	VirtualReg_43, fuckLLVM_dy
	li	VirtualReg_46, 0
	li	VirtualReg_47, 4
	mul	VirtualReg_45, VirtualReg_46, VirtualReg_47
	add	VirtualReg_44, VirtualReg_43, VirtualReg_45
	li	VirtualReg_48, 0
	li	VirtualReg_49, 1
	sub	fuckLLVM_28, VirtualReg_48, VirtualReg_49
	sw	fuckLLVM_28, 0(VirtualReg_44)
	lw	VirtualReg_50, fuckLLVM_dx
	li	VirtualReg_53, 1
	li	VirtualReg_54, 4
	mul	VirtualReg_52, VirtualReg_53, VirtualReg_54
	add	VirtualReg_51, VirtualReg_50, VirtualReg_52
	li	VirtualReg_55, 0
	li	VirtualReg_56, 2
	sub	fuckLLVM_31, VirtualReg_55, VirtualReg_56
	sw	fuckLLVM_31, 0(VirtualReg_51)
	lw	VirtualReg_57, fuckLLVM_dy
	li	VirtualReg_60, 1
	li	VirtualReg_61, 4
	mul	VirtualReg_59, VirtualReg_60, VirtualReg_61
	add	VirtualReg_58, VirtualReg_57, VirtualReg_59
	li	VirtualReg_62, 1
	sw	VirtualReg_62, 0(VirtualReg_58)
	lw	VirtualReg_63, fuckLLVM_dx
	li	VirtualReg_66, 2
	li	VirtualReg_67, 4
	mul	VirtualReg_65, VirtualReg_66, VirtualReg_67
	add	VirtualReg_64, VirtualReg_63, VirtualReg_65
	li	VirtualReg_68, 2
	sw	VirtualReg_68, 0(VirtualReg_64)
	lw	VirtualReg_69, fuckLLVM_dy
	li	VirtualReg_72, 2
	li	VirtualReg_73, 4
	mul	VirtualReg_71, VirtualReg_72, VirtualReg_73
	add	VirtualReg_70, VirtualReg_69, VirtualReg_71
	li	VirtualReg_74, 0
	li	VirtualReg_75, 1
	sub	fuckLLVM_38, VirtualReg_74, VirtualReg_75
	sw	fuckLLVM_38, 0(VirtualReg_70)
	lw	VirtualReg_76, fuckLLVM_dx
	li	VirtualReg_79, 3
	li	VirtualReg_80, 4
	mul	VirtualReg_78, VirtualReg_79, VirtualReg_80
	add	VirtualReg_77, VirtualReg_76, VirtualReg_78
	li	VirtualReg_81, 2
	sw	VirtualReg_81, 0(VirtualReg_77)
	lw	VirtualReg_82, fuckLLVM_dy
	li	VirtualReg_85, 3
	li	VirtualReg_86, 4
	mul	VirtualReg_84, VirtualReg_85, VirtualReg_86
	add	VirtualReg_83, VirtualReg_82, VirtualReg_84
	li	VirtualReg_87, 1
	sw	VirtualReg_87, 0(VirtualReg_83)
	lw	VirtualReg_88, fuckLLVM_dx
	li	VirtualReg_91, 4
	li	VirtualReg_92, 4
	mul	VirtualReg_90, VirtualReg_91, VirtualReg_92
	add	VirtualReg_89, VirtualReg_88, VirtualReg_90
	li	VirtualReg_93, 0
	li	VirtualReg_94, 1
	sub	fuckLLVM_45, VirtualReg_93, VirtualReg_94
	sw	fuckLLVM_45, 0(VirtualReg_89)
	lw	VirtualReg_95, fuckLLVM_dy
	li	VirtualReg_98, 4
	li	VirtualReg_99, 4
	mul	VirtualReg_97, VirtualReg_98, VirtualReg_99
	add	VirtualReg_96, VirtualReg_95, VirtualReg_97
	li	VirtualReg_100, 0
	li	VirtualReg_101, 2
	sub	fuckLLVM_48, VirtualReg_100, VirtualReg_101
	sw	fuckLLVM_48, 0(VirtualReg_96)
	lw	VirtualReg_102, fuckLLVM_dx
	li	VirtualReg_105, 5
	li	VirtualReg_106, 4
	mul	VirtualReg_104, VirtualReg_105, VirtualReg_106
	add	VirtualReg_103, VirtualReg_102, VirtualReg_104
	li	VirtualReg_107, 0
	li	VirtualReg_108, 1
	sub	fuckLLVM_51, VirtualReg_107, VirtualReg_108
	sw	fuckLLVM_51, 0(VirtualReg_103)
	lw	VirtualReg_109, fuckLLVM_dy
	li	VirtualReg_112, 5
	li	VirtualReg_113, 4
	mul	VirtualReg_111, VirtualReg_112, VirtualReg_113
	add	VirtualReg_110, VirtualReg_109, VirtualReg_111
	li	VirtualReg_114, 2
	sw	VirtualReg_114, 0(VirtualReg_110)
	lw	VirtualReg_115, fuckLLVM_dx
	li	VirtualReg_118, 6
	li	VirtualReg_119, 4
	mul	VirtualReg_117, VirtualReg_118, VirtualReg_119
	add	VirtualReg_116, VirtualReg_115, VirtualReg_117
	li	VirtualReg_120, 1
	sw	VirtualReg_120, 0(VirtualReg_116)
	lw	VirtualReg_121, fuckLLVM_dy
	li	VirtualReg_124, 6
	li	VirtualReg_125, 4
	mul	VirtualReg_123, VirtualReg_124, VirtualReg_125
	add	VirtualReg_122, VirtualReg_121, VirtualReg_123
	li	VirtualReg_126, 0
	li	VirtualReg_127, 2
	sub	fuckLLVM_58, VirtualReg_126, VirtualReg_127
	sw	fuckLLVM_58, 0(VirtualReg_122)
	lw	VirtualReg_128, fuckLLVM_dx
	li	VirtualReg_131, 7
	li	VirtualReg_132, 4
	mul	VirtualReg_130, VirtualReg_131, VirtualReg_132
	add	VirtualReg_129, VirtualReg_128, VirtualReg_130
	li	VirtualReg_133, 1
	sw	VirtualReg_133, 0(VirtualReg_129)
	lw	VirtualReg_134, fuckLLVM_dy
	li	VirtualReg_137, 7
	li	VirtualReg_138, 4
	mul	VirtualReg_136, VirtualReg_137, VirtualReg_138
	add	VirtualReg_135, VirtualReg_134, VirtualReg_136
	li	VirtualReg_139, 2
	sw	VirtualReg_139, 0(VirtualReg_135)
	j	.main_ID63_while_condition
.main_ID63_while_condition:
	lw	VirtualReg_140, fuckLLVM_head
	lw	VirtualReg_141, fuckLLVM_tail
	slt	fuckLLVM_65, VirtualReg_141, VirtualReg_140
	xori	fuckLLVM_65, fuckLLVM_65, 1
	bnez	fuckLLVM_65, .main_ID66_while_suite
	j	.main_ID66_while_out
.main_ID80_for_condition:
	lw	VirtualReg_142, fuckLLVM_j
	li	VirtualReg_143, 8
	slt	fuckLLVM_82, VirtualReg_142, VirtualReg_143
	bnez	fuckLLVM_82, .main_ID80_for_suite
	j	.main_ID80_for_out
.main_ID80_for_suite:
	lw	VirtualReg_144, fuckLLVM_x
	lw	VirtualReg_145, fuckLLVM_dx
	lw	VirtualReg_146, fuckLLVM_j
	li	VirtualReg_149, 4
	mul	VirtualReg_148, VirtualReg_146, VirtualReg_149
	add	VirtualReg_147, VirtualReg_145, VirtualReg_148
	lw	VirtualReg_150, 0(VirtualReg_147)
	add	fuckLLVM_88, VirtualReg_144, VirtualReg_150
	lw	VirtualReg_151, fuckLLVM_y
	lw	VirtualReg_152, fuckLLVM_dy
	lw	VirtualReg_153, fuckLLVM_j
	li	VirtualReg_156, 4
	mul	VirtualReg_155, VirtualReg_153, VirtualReg_156
	add	VirtualReg_154, VirtualReg_152, VirtualReg_155
	lw	VirtualReg_157, 0(VirtualReg_154)
	add	fuckLLVM_94, VirtualReg_151, VirtualReg_157
	mv	a0, fuckLLVM_88
	mv	a1, fuckLLVM_94
	call	addList
	j	.main_ID80_for_incr
.main_ID80_for_incr:
	lw	VirtualReg_158, fuckLLVM_j
	li	VirtualReg_159, 1
	add	fuckLLVM_97, VirtualReg_158, VirtualReg_159
	sw	fuckLLVM_97, fuckLLVM_j, VirtualReg_160
	j	.main_ID80_for_condition
.main_ID80_for_out:
	lw	VirtualReg_161, fuckLLVM_ok
	li	VirtualReg_162, 1
	xor	fuckLLVM_99, VirtualReg_161, VirtualReg_162
	sltiu	fuckLLVM_99, fuckLLVM_99, 1
	bnez	fuckLLVM_99, .main_ID99_if_true
	j	.main_ID99_if_out
.main_ID99_if_true:
	j	.main_ID66_while_out
	j	.main_ID99_if_out
.main_ID99_if_out:
	lw	VirtualReg_163, fuckLLVM_head
	li	VirtualReg_164, 1
	add	fuckLLVM_101, VirtualReg_163, VirtualReg_164
	sw	fuckLLVM_101, fuckLLVM_head, VirtualReg_165
	j	.main_ID63_while_condition
.main_ID66_while_suite:
	lw	VirtualReg_166, fuckLLVM_xlist
	lw	VirtualReg_167, fuckLLVM_head
	li	VirtualReg_170, 4
	mul	VirtualReg_169, VirtualReg_167, VirtualReg_170
	add	VirtualReg_168, VirtualReg_166, VirtualReg_169
	lw	VirtualReg_171, 0(VirtualReg_168)
	sw	VirtualReg_171, fuckLLVM_x, VirtualReg_172
	lw	VirtualReg_173, fuckLLVM_ylist
	lw	VirtualReg_174, fuckLLVM_head
	li	VirtualReg_177, 4
	mul	VirtualReg_176, VirtualReg_174, VirtualReg_177
	add	VirtualReg_175, VirtualReg_173, VirtualReg_176
	lw	VirtualReg_178, 0(VirtualReg_175)
	sw	VirtualReg_178, fuckLLVM_y, VirtualReg_179
	lw	VirtualReg_180, fuckLLVM_step
	lw	VirtualReg_181, fuckLLVM_x
	li	VirtualReg_184, 8
	mul	VirtualReg_183, VirtualReg_181, VirtualReg_184
	add	VirtualReg_182, VirtualReg_180, VirtualReg_183
	lw	VirtualReg_185, 0(VirtualReg_182)
	lw	VirtualReg_186, fuckLLVM_y
	li	VirtualReg_189, 4
	mul	VirtualReg_188, VirtualReg_186, VirtualReg_189
	add	VirtualReg_187, VirtualReg_185, VirtualReg_188
	lw	VirtualReg_190, 0(VirtualReg_187)
	sw	VirtualReg_190, fuckLLVM_now, VirtualReg_191
	li	VirtualReg_192, 0
	sw	VirtualReg_192, fuckLLVM_j, VirtualReg_193
	j	.main_ID80_for_condition
.main_ID66_while_out:
	lw	VirtualReg_194, fuckLLVM_ok
	li	VirtualReg_195, 1
	xor	fuckLLVM_103, VirtualReg_194, VirtualReg_195
	sltiu	fuckLLVM_103, fuckLLVM_103, 1
	bnez	fuckLLVM_103, .main_ID103_if_true
	j	.main_ID103_if_false
.main_ID103_if_true:
	lw	VirtualReg_196, fuckLLVM_step
	lw	VirtualReg_197, fuckLLVM_targetx
	li	VirtualReg_200, 8
	mul	VirtualReg_199, VirtualReg_197, VirtualReg_200
	add	VirtualReg_198, VirtualReg_196, VirtualReg_199
	lw	VirtualReg_201, 0(VirtualReg_198)
	lw	VirtualReg_202, fuckLLVM_targety
	li	VirtualReg_205, 4
	mul	VirtualReg_204, VirtualReg_202, VirtualReg_205
	add	VirtualReg_203, VirtualReg_201, VirtualReg_204
	lw	VirtualReg_206, 0(VirtualReg_203)
	mv	a0, VirtualReg_206
	call	toString
	mv	VirtualReg_207, a0
	mv	a0, VirtualReg_207
	call	println
	j	.main_ID103_if_out
.main_ID103_if_false:
	la	VirtualReg_208, fuckLLVM_.str.0
	mv	a0, VirtualReg_208
	call	print
	j	.main_ID103_if_out
.main_ID103_if_out:
	li	VirtualReg_209, 0
	sw	VirtualReg_209, -12(s0)
	j	.main_return
	j	.main_return
.main_return:
	lw	VirtualReg_210, -12(s0)
	mv	a0, VirtualReg_210

	.section	.sbss
	.type	fuckLLVM_N,@object
	.globl	fuckLLVM_N
	.p2align	2
fuckLLVM_N:
	.word	0
	.size	fuckLLVM_N, 8

	.section	.sbss
	.type	fuckLLVM_head,@object
	.globl	fuckLLVM_head
	.p2align	2
fuckLLVM_head:
	.word	0
	.size	fuckLLVM_head, 8

	.section	.sbss
	.type	fuckLLVM_startx,@object
	.globl	fuckLLVM_startx
	.p2align	2
fuckLLVM_startx:
	.word	0
	.size	fuckLLVM_startx, 8

	.section	.sbss
	.type	fuckLLVM_starty,@object
	.globl	fuckLLVM_starty
	.p2align	2
fuckLLVM_starty:
	.word	0
	.size	fuckLLVM_starty, 8

	.section	.sbss
	.type	fuckLLVM_targetx,@object
	.globl	fuckLLVM_targetx
	.p2align	2
fuckLLVM_targetx:
	.word	0
	.size	fuckLLVM_targetx, 8

	.section	.sbss
	.type	fuckLLVM_targety,@object
	.globl	fuckLLVM_targety
	.p2align	2
fuckLLVM_targety:
	.word	0
	.size	fuckLLVM_targety, 8

	.section	.sbss
	.type	fuckLLVM_x,@object
	.globl	fuckLLVM_x
	.p2align	2
fuckLLVM_x:
	.word	0
	.size	fuckLLVM_x, 8

	.section	.sbss
	.type	fuckLLVM_y,@object
	.globl	fuckLLVM_y
	.p2align	2
fuckLLVM_y:
	.word	0
	.size	fuckLLVM_y, 8

	.section	.sbss
	.type	fuckLLVM_xlist,@object
	.globl	fuckLLVM_xlist
	.p2align	2
fuckLLVM_xlist:
	.word	0
	.size	fuckLLVM_xlist, 8

	.section	.sbss
	.type	fuckLLVM_ylist,@object
	.globl	fuckLLVM_ylist
	.p2align	2
fuckLLVM_ylist:
	.word	0
	.size	fuckLLVM_ylist, 8

	.section	.sbss
	.type	fuckLLVM_tail,@object
	.globl	fuckLLVM_tail
	.p2align	2
fuckLLVM_tail:
	.word	0
	.size	fuckLLVM_tail, 8

	.section	.sbss
	.type	fuckLLVM_ok,@object
	.globl	fuckLLVM_ok
	.p2align	2
fuckLLVM_ok:
	.word	0
	.size	fuckLLVM_ok, 8

	.section	.sbss
	.type	fuckLLVM_now,@object
	.globl	fuckLLVM_now
	.p2align	2
fuckLLVM_now:
	.word	0
	.size	fuckLLVM_now, 8

	.section	.sbss
	.type	fuckLLVM_dx,@object
	.globl	fuckLLVM_dx
	.p2align	2
fuckLLVM_dx:
	.word	0
	.size	fuckLLVM_dx, 8

	.section	.sbss
	.type	fuckLLVM_dy,@object
	.globl	fuckLLVM_dy
	.p2align	2
fuckLLVM_dy:
	.word	0
	.size	fuckLLVM_dy, 8

	.section	.sbss
	.type	fuckLLVM_step,@object
	.globl	fuckLLVM_step
	.p2align	2
fuckLLVM_step:
	.word	0
	.size	fuckLLVM_step, 8

	.section	.sbss
	.type	fuckLLVM_i,@object
	.globl	fuckLLVM_i
	.p2align	2
fuckLLVM_i:
	.word	0
	.size	fuckLLVM_i, 8

	.section	.sbss
	.type	fuckLLVM_j,@object
	.globl	fuckLLVM_j
	.p2align	2
fuckLLVM_j:
	.word	0
	.size	fuckLLVM_j, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"no solution!\n "
	.size	fuckLLVM_.str.0, 15

