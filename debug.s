	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	mv	VirtualReg_0, s0
	mv	VirtualReg_1, s1
	mv	VirtualReg_2, s2
	mv	VirtualReg_3, s3
	mv	VirtualReg_4, s4
	mv	VirtualReg_5, s5
	mv	VirtualReg_6, s6
	mv	VirtualReg_7, s7
	mv	VirtualReg_8, s8
	mv	VirtualReg_9, s9
	mv	VirtualReg_10, s10
	mv	VirtualReg_11, s11
	j	.__init_alloca
.__init_alloca:
	j	.__init_entry
.__init_entry:
	j	.__init_return
.__init_return:
	mv	s1, VirtualReg_1
	mv	s2, VirtualReg_2
	mv	s3, VirtualReg_3
	mv	s4, VirtualReg_4
	mv	s5, VirtualReg_5
	mv	s6, VirtualReg_6
	mv	s7, VirtualReg_7
	mv	s8, VirtualReg_8
	mv	s9, VirtualReg_9
	mv	s10, VirtualReg_10
	mv	s11, VirtualReg_11

	.globl	Edge
	.p2align	2
	.type	Edge,@function
Edge:
.Edge_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.Edge_alloca
.Edge_alloca:
.Edge_entry:
	mv	VirtualReg_13, VirtualReg_0
	j	.Edge_return
.Edge_return:
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

	.globl	EdgeList
	.p2align	2
	.type	EdgeList,@function
EdgeList:
.EdgeList_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.EdgeList_alloca
.EdgeList_alloca:
.EdgeList_entry:
	mv	VirtualReg_13, VirtualReg_0
	j	.EdgeList_return
.EdgeList_return:
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

	.globl	classEdgeList_init
	.p2align	2
	.type	classEdgeList_init,@function
classEdgeList_init:
.classEdgeList_init_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, s0
	mv	VirtualReg_4, s1
	mv	VirtualReg_5, s2
	mv	VirtualReg_6, s3
	mv	VirtualReg_7, s4
	mv	VirtualReg_8, s5
	mv	VirtualReg_9, s6
	mv	VirtualReg_10, s7
	mv	VirtualReg_11, s8
	mv	VirtualReg_12, s9
	mv	VirtualReg_13, s10
	mv	VirtualReg_14, s11
	j	.classEdgeList_init_alloca
.classEdgeList_init_alloca:
	j	.classEdgeList_init_entry
.classEdgeList_init_entry:
	mv	VirtualReg_15, VirtualReg_0
	mv	VirtualReg_19, VirtualReg_15
	mv	VirtualReg_16, VirtualReg_1
	mv	VirtualReg_17, VirtualReg_2
	addi	VirtualReg_20, VirtualReg_19, 0
	mv	VirtualReg_21, VirtualReg_17
	li	VirtualReg_22, 12
	mul	fuckLLVM_11, VirtualReg_21, VirtualReg_22
	li	VirtualReg_23, 4
	add	fuckLLVM_12, fuckLLVM_11, VirtualReg_23
	mv	a0, fuckLLVM_12
	call	malloc
	mv	VirtualReg_24, a0
	sw	VirtualReg_21, 0(VirtualReg_24)
	li	VirtualReg_27, 1
	li	VirtualReg_28, 4
	mul	VirtualReg_26, VirtualReg_27, VirtualReg_28
	add	VirtualReg_25, VirtualReg_24, VirtualReg_26
	sw	VirtualReg_25, 0(VirtualReg_20)
	addi	VirtualReg_29, VirtualReg_19, 8
	mv	VirtualReg_30, VirtualReg_17
	li	VirtualReg_31, 4
	mul	fuckLLVM_21, VirtualReg_30, VirtualReg_31
	li	VirtualReg_32, 4
	add	fuckLLVM_22, fuckLLVM_21, VirtualReg_32
	mv	a0, fuckLLVM_22
	call	malloc
	mv	VirtualReg_33, a0
	sw	VirtualReg_30, 0(VirtualReg_33)
	li	VirtualReg_36, 1
	li	VirtualReg_37, 4
	mul	VirtualReg_35, VirtualReg_36, VirtualReg_37
	add	VirtualReg_34, VirtualReg_33, VirtualReg_35
	sw	VirtualReg_34, 0(VirtualReg_29)
	addi	VirtualReg_38, VirtualReg_19, 16
	mv	VirtualReg_39, VirtualReg_16
	li	VirtualReg_40, 4
	mul	fuckLLVM_31, VirtualReg_39, VirtualReg_40
	li	VirtualReg_41, 4
	add	fuckLLVM_32, fuckLLVM_31, VirtualReg_41
	mv	a0, fuckLLVM_32
	call	malloc
	mv	VirtualReg_42, a0
	sw	VirtualReg_39, 0(VirtualReg_42)
	li	VirtualReg_45, 1
	li	VirtualReg_46, 4
	mul	VirtualReg_44, VirtualReg_45, VirtualReg_46
	add	VirtualReg_43, VirtualReg_42, VirtualReg_44
	sw	VirtualReg_43, 0(VirtualReg_38)
	li	VirtualReg_47, 0
	mv	VirtualReg_18, VirtualReg_47
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_condition:
	mv	VirtualReg_48, VirtualReg_18
	mv	VirtualReg_49, VirtualReg_17
	slt	fuckLLVM_41, VirtualReg_48, VirtualReg_49
	bnez	fuckLLVM_41, .classEdgeList_init_ID38_for_suite
	j	.classEdgeList_init_ID38_for_out
.classEdgeList_init_ID38_for_suite:
	addi	VirtualReg_50, VirtualReg_19, 8
	lw	VirtualReg_51, 0(VirtualReg_50)
	mv	VirtualReg_52, VirtualReg_18
	li	VirtualReg_55, 4
	mul	VirtualReg_54, VirtualReg_52, VirtualReg_55
	add	VirtualReg_53, VirtualReg_51, VirtualReg_54
	li	VirtualReg_56, 0
	li	VirtualReg_57, 1
	sub	fuckLLVM_46, VirtualReg_56, VirtualReg_57
	sw	fuckLLVM_46, 0(VirtualReg_53)
	j	.classEdgeList_init_ID38_for_incr
.classEdgeList_init_ID38_for_incr:
	mv	VirtualReg_58, VirtualReg_18
	li	VirtualReg_59, 1
	add	fuckLLVM_48, VirtualReg_58, VirtualReg_59
	mv	VirtualReg_18, fuckLLVM_48
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_out:
	li	VirtualReg_60, 0
	mv	VirtualReg_18, VirtualReg_60
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_condition:
	mv	VirtualReg_61, VirtualReg_18
	mv	VirtualReg_62, VirtualReg_16
	slt	fuckLLVM_51, VirtualReg_61, VirtualReg_62
	bnez	fuckLLVM_51, .classEdgeList_init_ID48_for_suite
	j	.classEdgeList_init_ID48_for_out
.classEdgeList_init_ID48_for_suite:
	addi	VirtualReg_63, VirtualReg_19, 16
	lw	VirtualReg_64, 0(VirtualReg_63)
	mv	VirtualReg_65, VirtualReg_18
	li	VirtualReg_68, 4
	mul	VirtualReg_67, VirtualReg_65, VirtualReg_68
	add	VirtualReg_66, VirtualReg_64, VirtualReg_67
	li	VirtualReg_69, 0
	li	VirtualReg_70, 1
	sub	fuckLLVM_56, VirtualReg_69, VirtualReg_70
	sw	fuckLLVM_56, 0(VirtualReg_66)
	j	.classEdgeList_init_ID48_for_incr
.classEdgeList_init_ID48_for_incr:
	mv	VirtualReg_71, VirtualReg_18
	li	VirtualReg_72, 1
	add	fuckLLVM_58, VirtualReg_71, VirtualReg_72
	mv	VirtualReg_18, fuckLLVM_58
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_out:
	addi	VirtualReg_73, VirtualReg_19, 24
	li	VirtualReg_74, 0
	sw	VirtualReg_74, 0(VirtualReg_73)
	j	.classEdgeList_init_return
.classEdgeList_init_return:
	mv	s1, VirtualReg_4
	mv	s2, VirtualReg_5
	mv	s3, VirtualReg_6
	mv	s4, VirtualReg_7
	mv	s5, VirtualReg_8
	mv	s6, VirtualReg_9
	mv	s7, VirtualReg_10
	mv	s8, VirtualReg_11
	mv	s9, VirtualReg_12
	mv	s10, VirtualReg_13
	mv	s11, VirtualReg_14

	.globl	classEdgeList_addEdge
	.p2align	2
	.type	classEdgeList_addEdge,@function
classEdgeList_addEdge:
.classEdgeList_addEdge_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, a3
	mv	VirtualReg_4, s0
	mv	VirtualReg_5, s1
	mv	VirtualReg_6, s2
	mv	VirtualReg_7, s3
	mv	VirtualReg_8, s4
	mv	VirtualReg_9, s5
	mv	VirtualReg_10, s6
	mv	VirtualReg_11, s7
	mv	VirtualReg_12, s8
	mv	VirtualReg_13, s9
	mv	VirtualReg_14, s10
	mv	VirtualReg_15, s11
	j	.classEdgeList_addEdge_alloca
.classEdgeList_addEdge_alloca:
	j	.classEdgeList_addEdge_entry
.classEdgeList_addEdge_entry:
	mv	VirtualReg_16, VirtualReg_0
	mv	VirtualReg_21, VirtualReg_16
	mv	VirtualReg_17, VirtualReg_1
	mv	VirtualReg_18, VirtualReg_2
	mv	VirtualReg_19, VirtualReg_3
	li	VirtualReg_22, 12
	mv	a0, VirtualReg_22
	call	malloc
	mv	VirtualReg_23, a0
	mv	a0, VirtualReg_23
	call	Edge
	mv	VirtualReg_20, VirtualReg_23
	mv	VirtualReg_24, VirtualReg_20
	addi	VirtualReg_25, VirtualReg_24, 0
	mv	VirtualReg_26, VirtualReg_17
	sw	VirtualReg_26, 0(VirtualReg_25)
	mv	VirtualReg_27, VirtualReg_20
	addi	VirtualReg_28, VirtualReg_27, 4
	mv	VirtualReg_29, VirtualReg_18
	sw	VirtualReg_29, 0(VirtualReg_28)
	mv	VirtualReg_30, VirtualReg_20
	addi	VirtualReg_31, VirtualReg_30, 8
	mv	VirtualReg_32, VirtualReg_19
	sw	VirtualReg_32, 0(VirtualReg_31)
	addi	VirtualReg_33, VirtualReg_21, 0
	lw	VirtualReg_34, 0(VirtualReg_33)
	addi	VirtualReg_35, VirtualReg_21, 24
	lw	VirtualReg_36, 0(VirtualReg_35)
	li	VirtualReg_39, 12
	mul	VirtualReg_38, VirtualReg_36, VirtualReg_39
	add	VirtualReg_37, VirtualReg_34, VirtualReg_38
	mv	VirtualReg_40, VirtualReg_20
	sw	VirtualReg_40, 0(VirtualReg_37)
	addi	VirtualReg_41, VirtualReg_21, 8
	lw	VirtualReg_42, 0(VirtualReg_41)
	addi	VirtualReg_43, VirtualReg_21, 24
	lw	VirtualReg_44, 0(VirtualReg_43)
	li	VirtualReg_47, 4
	mul	VirtualReg_46, VirtualReg_44, VirtualReg_47
	add	VirtualReg_45, VirtualReg_42, VirtualReg_46
	addi	VirtualReg_48, VirtualReg_21, 16
	lw	VirtualReg_49, 0(VirtualReg_48)
	mv	VirtualReg_50, VirtualReg_17
	li	VirtualReg_53, 4
	mul	VirtualReg_52, VirtualReg_50, VirtualReg_53
	add	VirtualReg_51, VirtualReg_49, VirtualReg_52
	lw	VirtualReg_54, 0(VirtualReg_51)
	sw	VirtualReg_54, 0(VirtualReg_45)
	addi	VirtualReg_55, VirtualReg_21, 16
	lw	VirtualReg_56, 0(VirtualReg_55)
	mv	VirtualReg_57, VirtualReg_17
	li	VirtualReg_60, 4
	mul	VirtualReg_59, VirtualReg_57, VirtualReg_60
	add	VirtualReg_58, VirtualReg_56, VirtualReg_59
	addi	VirtualReg_61, VirtualReg_21, 24
	lw	VirtualReg_62, 0(VirtualReg_61)
	sw	VirtualReg_62, 0(VirtualReg_58)
	addi	VirtualReg_63, VirtualReg_21, 24
	lw	VirtualReg_64, 0(VirtualReg_63)
	li	VirtualReg_65, 1
	add	fuckLLVM_48, VirtualReg_64, VirtualReg_65
	sw	fuckLLVM_48, 0(VirtualReg_63)
	j	.classEdgeList_addEdge_return
.classEdgeList_addEdge_return:
	mv	s1, VirtualReg_5
	mv	s2, VirtualReg_6
	mv	s3, VirtualReg_7
	mv	s4, VirtualReg_8
	mv	s5, VirtualReg_9
	mv	s6, VirtualReg_10
	mv	s7, VirtualReg_11
	mv	s8, VirtualReg_12
	mv	s9, VirtualReg_13
	mv	s10, VirtualReg_14
	mv	s11, VirtualReg_15

	.globl	classEdgeList_nVertices
	.p2align	2
	.type	classEdgeList_nVertices,@function
classEdgeList_nVertices:
.classEdgeList_nVertices_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classEdgeList_nVertices_alloca
.classEdgeList_nVertices_alloca:
	j	.classEdgeList_nVertices_entry
.classEdgeList_nVertices_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_13
	addi	VirtualReg_16, VirtualReg_15, 16
	lw	VirtualReg_17, 0(VirtualReg_16)
	li	VirtualReg_20, -1
	li	VirtualReg_21, 4
	mul	VirtualReg_19, VirtualReg_20, VirtualReg_21
	add	VirtualReg_18, VirtualReg_17, VirtualReg_19
	lw	VirtualReg_22, 0(VirtualReg_18)
	mv	VirtualReg_14, VirtualReg_22
	j	.classEdgeList_nVertices_return
.classEdgeList_nVertices_return:
	mv	VirtualReg_23, VirtualReg_14
	mv	a0, VirtualReg_23
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

	.globl	classEdgeList_nEdges
	.p2align	2
	.type	classEdgeList_nEdges,@function
classEdgeList_nEdges:
.classEdgeList_nEdges_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classEdgeList_nEdges_alloca
.classEdgeList_nEdges_alloca:
	j	.classEdgeList_nEdges_entry
.classEdgeList_nEdges_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_13
	addi	VirtualReg_16, VirtualReg_15, 0
	lw	VirtualReg_17, 0(VirtualReg_16)
	li	VirtualReg_20, -1
	li	VirtualReg_21, 4
	mul	VirtualReg_19, VirtualReg_20, VirtualReg_21
	add	VirtualReg_18, VirtualReg_17, VirtualReg_19
	lw	VirtualReg_22, 0(VirtualReg_18)
	mv	VirtualReg_14, VirtualReg_22
	j	.classEdgeList_nEdges_return
.classEdgeList_nEdges_return:
	mv	VirtualReg_23, VirtualReg_14
	mv	a0, VirtualReg_23
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

	.globl	Array_Node
	.p2align	2
	.type	Array_Node,@function
Array_Node:
.Array_Node_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.Array_Node_alloca
.Array_Node_alloca:
.Array_Node_entry:
	mv	VirtualReg_13, VirtualReg_0
	addi	VirtualReg_14, VirtualReg_0, 8
	li	VirtualReg_15, 0
	sw	VirtualReg_15, 0(VirtualReg_14)
	addi	VirtualReg_16, VirtualReg_0, 0
	li	VirtualReg_17, 16
	li	VirtualReg_18, 8
	mul	fuckLLVM_4, VirtualReg_17, VirtualReg_18
	li	VirtualReg_19, 4
	add	fuckLLVM_5, fuckLLVM_4, VirtualReg_19
	mv	a0, fuckLLVM_5
	call	malloc
	mv	VirtualReg_20, a0
	li	VirtualReg_21, 16
	sw	VirtualReg_21, 0(VirtualReg_20)
	li	VirtualReg_24, 1
	li	VirtualReg_25, 4
	mul	VirtualReg_23, VirtualReg_24, VirtualReg_25
	add	VirtualReg_22, VirtualReg_20, VirtualReg_23
	sw	VirtualReg_22, 0(VirtualReg_16)
	j	.Array_Node_return
.Array_Node_return:
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

	.globl	classArray_Node_push_back
	.p2align	2
	.type	classArray_Node_push_back,@function
classArray_Node_push_back:
.classArray_Node_push_back_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s0
	mv	VirtualReg_3, s1
	mv	VirtualReg_4, s2
	mv	VirtualReg_5, s3
	mv	VirtualReg_6, s4
	mv	VirtualReg_7, s5
	mv	VirtualReg_8, s6
	mv	VirtualReg_9, s7
	mv	VirtualReg_10, s8
	mv	VirtualReg_11, s9
	mv	VirtualReg_12, s10
	mv	VirtualReg_13, s11
	j	.classArray_Node_push_back_alloca
.classArray_Node_push_back_alloca:
	j	.classArray_Node_push_back_entry
.classArray_Node_push_back_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_16, VirtualReg_14
	mv	VirtualReg_15, VirtualReg_1
	mv	a0, VirtualReg_16
	call	classArray_Node_size
	mv	VirtualReg_17, a0
	addi	VirtualReg_18, VirtualReg_16, 0
	lw	VirtualReg_19, 0(VirtualReg_18)
	li	VirtualReg_22, -1
	li	VirtualReg_23, 4
	mul	VirtualReg_21, VirtualReg_22, VirtualReg_23
	add	VirtualReg_20, VirtualReg_19, VirtualReg_21
	lw	VirtualReg_24, 0(VirtualReg_20)
	xor	fuckLLVM_12, VirtualReg_17, VirtualReg_24
	sltiu	fuckLLVM_12, fuckLLVM_12, 1
	bnez	fuckLLVM_12, .classArray_Node_push_back_ID12_if_true
	j	.classArray_Node_push_back_ID12_if_out
.classArray_Node_push_back_ID12_if_true:
	mv	a0, VirtualReg_16
	call	classArray_Node_doubleStorage
	j	.classArray_Node_push_back_ID12_if_out
.classArray_Node_push_back_ID12_if_out:
	addi	VirtualReg_25, VirtualReg_16, 0
	lw	VirtualReg_26, 0(VirtualReg_25)
	addi	VirtualReg_27, VirtualReg_16, 8
	lw	VirtualReg_28, 0(VirtualReg_27)
	li	VirtualReg_31, 8
	mul	VirtualReg_30, VirtualReg_28, VirtualReg_31
	add	VirtualReg_29, VirtualReg_26, VirtualReg_30
	mv	VirtualReg_32, VirtualReg_15
	sw	VirtualReg_32, 0(VirtualReg_29)
	addi	VirtualReg_33, VirtualReg_16, 8
	lw	VirtualReg_34, 0(VirtualReg_33)
	li	VirtualReg_35, 1
	add	fuckLLVM_23, VirtualReg_34, VirtualReg_35
	sw	fuckLLVM_23, 0(VirtualReg_33)
	j	.classArray_Node_push_back_return
.classArray_Node_push_back_return:
	mv	s1, VirtualReg_3
	mv	s2, VirtualReg_4
	mv	s3, VirtualReg_5
	mv	s4, VirtualReg_6
	mv	s5, VirtualReg_7
	mv	s6, VirtualReg_8
	mv	s7, VirtualReg_9
	mv	s8, VirtualReg_10
	mv	s9, VirtualReg_11
	mv	s10, VirtualReg_12
	mv	s11, VirtualReg_13

	.globl	classArray_Node_pop_back
	.p2align	2
	.type	classArray_Node_pop_back,@function
classArray_Node_pop_back:
.classArray_Node_pop_back_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classArray_Node_pop_back_alloca
.classArray_Node_pop_back_alloca:
	j	.classArray_Node_pop_back_entry
.classArray_Node_pop_back_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_13
	addi	VirtualReg_16, VirtualReg_15, 8
	lw	VirtualReg_17, 0(VirtualReg_16)
	li	VirtualReg_18, 1
	sub	fuckLLVM_6, VirtualReg_17, VirtualReg_18
	sw	fuckLLVM_6, 0(VirtualReg_16)
	addi	VirtualReg_19, VirtualReg_15, 0
	lw	VirtualReg_20, 0(VirtualReg_19)
	addi	VirtualReg_21, VirtualReg_15, 8
	lw	VirtualReg_22, 0(VirtualReg_21)
	li	VirtualReg_25, 8
	mul	VirtualReg_24, VirtualReg_22, VirtualReg_25
	add	VirtualReg_23, VirtualReg_20, VirtualReg_24
	lw	VirtualReg_26, 0(VirtualReg_23)
	mv	VirtualReg_14, VirtualReg_26
	j	.classArray_Node_pop_back_return
.classArray_Node_pop_back_return:
	mv	VirtualReg_27, VirtualReg_14
	mv	a0, VirtualReg_27
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

	.globl	classArray_Node_back
	.p2align	2
	.type	classArray_Node_back,@function
classArray_Node_back:
.classArray_Node_back_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classArray_Node_back_alloca
.classArray_Node_back_alloca:
	j	.classArray_Node_back_entry
.classArray_Node_back_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_13
	addi	VirtualReg_16, VirtualReg_15, 0
	lw	VirtualReg_17, 0(VirtualReg_16)
	addi	VirtualReg_18, VirtualReg_15, 8
	lw	VirtualReg_19, 0(VirtualReg_18)
	li	VirtualReg_20, 1
	sub	fuckLLVM_8, VirtualReg_19, VirtualReg_20
	li	VirtualReg_23, 8
	mul	VirtualReg_22, fuckLLVM_8, VirtualReg_23
	add	VirtualReg_21, VirtualReg_17, VirtualReg_22
	lw	VirtualReg_24, 0(VirtualReg_21)
	mv	VirtualReg_14, VirtualReg_24
	j	.classArray_Node_back_return
.classArray_Node_back_return:
	mv	VirtualReg_25, VirtualReg_14
	mv	a0, VirtualReg_25
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

	.globl	classArray_Node_front
	.p2align	2
	.type	classArray_Node_front,@function
classArray_Node_front:
.classArray_Node_front_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classArray_Node_front_alloca
.classArray_Node_front_alloca:
	j	.classArray_Node_front_entry
.classArray_Node_front_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_13
	addi	VirtualReg_16, VirtualReg_15, 0
	lw	VirtualReg_17, 0(VirtualReg_16)
	li	VirtualReg_20, 0
	li	VirtualReg_21, 8
	mul	VirtualReg_19, VirtualReg_20, VirtualReg_21
	add	VirtualReg_18, VirtualReg_17, VirtualReg_19
	lw	VirtualReg_22, 0(VirtualReg_18)
	mv	VirtualReg_14, VirtualReg_22
	j	.classArray_Node_front_return
.classArray_Node_front_return:
	mv	VirtualReg_23, VirtualReg_14
	mv	a0, VirtualReg_23
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

	.globl	classArray_Node_size
	.p2align	2
	.type	classArray_Node_size,@function
classArray_Node_size:
.classArray_Node_size_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classArray_Node_size_alloca
.classArray_Node_size_alloca:
	j	.classArray_Node_size_entry
.classArray_Node_size_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_13
	addi	VirtualReg_16, VirtualReg_15, 8
	lw	VirtualReg_17, 0(VirtualReg_16)
	mv	VirtualReg_14, VirtualReg_17
	j	.classArray_Node_size_return
.classArray_Node_size_return:
	mv	VirtualReg_18, VirtualReg_14
	mv	a0, VirtualReg_18
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

	.globl	classArray_Node_resize
	.p2align	2
	.type	classArray_Node_resize,@function
classArray_Node_resize:
.classArray_Node_resize_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s0
	mv	VirtualReg_3, s1
	mv	VirtualReg_4, s2
	mv	VirtualReg_5, s3
	mv	VirtualReg_6, s4
	mv	VirtualReg_7, s5
	mv	VirtualReg_8, s6
	mv	VirtualReg_9, s7
	mv	VirtualReg_10, s8
	mv	VirtualReg_11, s9
	mv	VirtualReg_12, s10
	mv	VirtualReg_13, s11
	j	.classArray_Node_resize_alloca
.classArray_Node_resize_alloca:
	j	.classArray_Node_resize_entry
.classArray_Node_resize_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_16, VirtualReg_14
	mv	VirtualReg_15, VirtualReg_1
	j	.classArray_Node_resize_ID6_while_condition
.classArray_Node_resize_ID6_while_condition:
	addi	VirtualReg_17, VirtualReg_16, 0
	lw	VirtualReg_18, 0(VirtualReg_17)
	li	VirtualReg_21, -1
	li	VirtualReg_22, 4
	mul	VirtualReg_20, VirtualReg_21, VirtualReg_22
	add	VirtualReg_19, VirtualReg_18, VirtualReg_20
	lw	VirtualReg_23, 0(VirtualReg_19)
	mv	VirtualReg_24, VirtualReg_15
	slt	fuckLLVM_12, VirtualReg_23, VirtualReg_24
	bnez	fuckLLVM_12, .classArray_Node_resize_ID13_while_suite
	j	.classArray_Node_resize_ID13_while_out
.classArray_Node_resize_ID13_while_suite:
	mv	a0, VirtualReg_16
	call	classArray_Node_doubleStorage
	j	.classArray_Node_resize_ID6_while_condition
.classArray_Node_resize_ID13_while_out:
	addi	VirtualReg_25, VirtualReg_16, 8
	mv	VirtualReg_26, VirtualReg_15
	sw	VirtualReg_26, 0(VirtualReg_25)
	j	.classArray_Node_resize_return
.classArray_Node_resize_return:
	mv	s1, VirtualReg_3
	mv	s2, VirtualReg_4
	mv	s3, VirtualReg_5
	mv	s4, VirtualReg_6
	mv	s5, VirtualReg_7
	mv	s6, VirtualReg_8
	mv	s7, VirtualReg_9
	mv	s8, VirtualReg_10
	mv	s9, VirtualReg_11
	mv	s10, VirtualReg_12
	mv	s11, VirtualReg_13

	.globl	classArray_Node_get
	.p2align	2
	.type	classArray_Node_get,@function
classArray_Node_get:
.classArray_Node_get_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s0
	mv	VirtualReg_3, s1
	mv	VirtualReg_4, s2
	mv	VirtualReg_5, s3
	mv	VirtualReg_6, s4
	mv	VirtualReg_7, s5
	mv	VirtualReg_8, s6
	mv	VirtualReg_9, s7
	mv	VirtualReg_10, s8
	mv	VirtualReg_11, s9
	mv	VirtualReg_12, s10
	mv	VirtualReg_13, s11
	j	.classArray_Node_get_alloca
.classArray_Node_get_alloca:
	j	.classArray_Node_get_entry
.classArray_Node_get_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_17, VirtualReg_14
	mv	VirtualReg_15, VirtualReg_1
	addi	VirtualReg_18, VirtualReg_17, 0
	lw	VirtualReg_19, 0(VirtualReg_18)
	mv	VirtualReg_20, VirtualReg_15
	li	VirtualReg_23, 8
	mul	VirtualReg_22, VirtualReg_20, VirtualReg_23
	add	VirtualReg_21, VirtualReg_19, VirtualReg_22
	lw	VirtualReg_24, 0(VirtualReg_21)
	mv	VirtualReg_16, VirtualReg_24
	j	.classArray_Node_get_return
.classArray_Node_get_return:
	mv	VirtualReg_25, VirtualReg_16
	mv	a0, VirtualReg_25
	mv	s1, VirtualReg_3
	mv	s2, VirtualReg_4
	mv	s3, VirtualReg_5
	mv	s4, VirtualReg_6
	mv	s5, VirtualReg_7
	mv	s6, VirtualReg_8
	mv	s7, VirtualReg_9
	mv	s8, VirtualReg_10
	mv	s9, VirtualReg_11
	mv	s10, VirtualReg_12
	mv	s11, VirtualReg_13

	.globl	classArray_Node_set
	.p2align	2
	.type	classArray_Node_set,@function
classArray_Node_set:
.classArray_Node_set_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, s0
	mv	VirtualReg_4, s1
	mv	VirtualReg_5, s2
	mv	VirtualReg_6, s3
	mv	VirtualReg_7, s4
	mv	VirtualReg_8, s5
	mv	VirtualReg_9, s6
	mv	VirtualReg_10, s7
	mv	VirtualReg_11, s8
	mv	VirtualReg_12, s9
	mv	VirtualReg_13, s10
	mv	VirtualReg_14, s11
	j	.classArray_Node_set_alloca
.classArray_Node_set_alloca:
	j	.classArray_Node_set_entry
.classArray_Node_set_entry:
	mv	VirtualReg_15, VirtualReg_0
	mv	VirtualReg_18, VirtualReg_15
	mv	VirtualReg_16, VirtualReg_1
	mv	VirtualReg_17, VirtualReg_2
	addi	VirtualReg_19, VirtualReg_18, 0
	lw	VirtualReg_20, 0(VirtualReg_19)
	mv	VirtualReg_21, VirtualReg_16
	li	VirtualReg_24, 8
	mul	VirtualReg_23, VirtualReg_21, VirtualReg_24
	add	VirtualReg_22, VirtualReg_20, VirtualReg_23
	mv	VirtualReg_25, VirtualReg_17
	sw	VirtualReg_25, 0(VirtualReg_22)
	j	.classArray_Node_set_return
.classArray_Node_set_return:
	mv	s1, VirtualReg_4
	mv	s2, VirtualReg_5
	mv	s3, VirtualReg_6
	mv	s4, VirtualReg_7
	mv	s5, VirtualReg_8
	mv	s6, VirtualReg_9
	mv	s7, VirtualReg_10
	mv	s8, VirtualReg_11
	mv	s9, VirtualReg_12
	mv	s10, VirtualReg_13
	mv	s11, VirtualReg_14

	.globl	classArray_Node_swap
	.p2align	2
	.type	classArray_Node_swap,@function
classArray_Node_swap:
.classArray_Node_swap_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, s0
	mv	VirtualReg_4, s1
	mv	VirtualReg_5, s2
	mv	VirtualReg_6, s3
	mv	VirtualReg_7, s4
	mv	VirtualReg_8, s5
	mv	VirtualReg_9, s6
	mv	VirtualReg_10, s7
	mv	VirtualReg_11, s8
	mv	VirtualReg_12, s9
	mv	VirtualReg_13, s10
	mv	VirtualReg_14, s11
	j	.classArray_Node_swap_alloca
.classArray_Node_swap_alloca:
	j	.classArray_Node_swap_entry
.classArray_Node_swap_entry:
	mv	VirtualReg_15, VirtualReg_0
	mv	VirtualReg_19, VirtualReg_15
	mv	VirtualReg_16, VirtualReg_1
	mv	VirtualReg_17, VirtualReg_2
	addi	VirtualReg_20, VirtualReg_19, 0
	lw	VirtualReg_21, 0(VirtualReg_20)
	mv	VirtualReg_22, VirtualReg_16
	li	VirtualReg_25, 8
	mul	VirtualReg_24, VirtualReg_22, VirtualReg_25
	add	VirtualReg_23, VirtualReg_21, VirtualReg_24
	lw	VirtualReg_26, 0(VirtualReg_23)
	mv	VirtualReg_18, VirtualReg_26
	addi	VirtualReg_27, VirtualReg_19, 0
	lw	VirtualReg_28, 0(VirtualReg_27)
	mv	VirtualReg_29, VirtualReg_16
	li	VirtualReg_32, 8
	mul	VirtualReg_31, VirtualReg_29, VirtualReg_32
	add	VirtualReg_30, VirtualReg_28, VirtualReg_31
	addi	VirtualReg_33, VirtualReg_19, 0
	lw	VirtualReg_34, 0(VirtualReg_33)
	mv	VirtualReg_35, VirtualReg_17
	li	VirtualReg_38, 8
	mul	VirtualReg_37, VirtualReg_35, VirtualReg_38
	add	VirtualReg_36, VirtualReg_34, VirtualReg_37
	lw	VirtualReg_39, 0(VirtualReg_36)
	sw	VirtualReg_39, 0(VirtualReg_30)
	addi	VirtualReg_40, VirtualReg_19, 0
	lw	VirtualReg_41, 0(VirtualReg_40)
	mv	VirtualReg_42, VirtualReg_17
	li	VirtualReg_45, 8
	mul	VirtualReg_44, VirtualReg_42, VirtualReg_45
	add	VirtualReg_43, VirtualReg_41, VirtualReg_44
	mv	VirtualReg_46, VirtualReg_18
	sw	VirtualReg_46, 0(VirtualReg_43)
	j	.classArray_Node_swap_return
.classArray_Node_swap_return:
	mv	s1, VirtualReg_4
	mv	s2, VirtualReg_5
	mv	s3, VirtualReg_6
	mv	s4, VirtualReg_7
	mv	s5, VirtualReg_8
	mv	s6, VirtualReg_9
	mv	s7, VirtualReg_10
	mv	s8, VirtualReg_11
	mv	s9, VirtualReg_12
	mv	s10, VirtualReg_13
	mv	s11, VirtualReg_14

	.globl	classArray_Node_doubleStorage
	.p2align	2
	.type	classArray_Node_doubleStorage,@function
classArray_Node_doubleStorage:
.classArray_Node_doubleStorage_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classArray_Node_doubleStorage_alloca
.classArray_Node_doubleStorage_alloca:
	j	.classArray_Node_doubleStorage_entry
.classArray_Node_doubleStorage_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_16, VirtualReg_13
	addi	VirtualReg_17, VirtualReg_16, 0
	lw	VirtualReg_18, 0(VirtualReg_17)
	mv	VirtualReg_14, VirtualReg_18
	addi	VirtualReg_19, VirtualReg_16, 8
	lw	VirtualReg_20, 0(VirtualReg_19)
	mv	VirtualReg_15, VirtualReg_20
	addi	VirtualReg_21, VirtualReg_16, 0
	mv	VirtualReg_22, VirtualReg_14
	li	VirtualReg_25, -1
	li	VirtualReg_26, 4
	mul	VirtualReg_24, VirtualReg_25, VirtualReg_26
	add	VirtualReg_23, VirtualReg_22, VirtualReg_24
	lw	VirtualReg_27, 0(VirtualReg_23)
	li	VirtualReg_28, 2
	mul	fuckLLVM_16, VirtualReg_27, VirtualReg_28
	li	VirtualReg_29, 8
	mul	fuckLLVM_18, fuckLLVM_16, VirtualReg_29
	li	VirtualReg_30, 4
	add	fuckLLVM_19, fuckLLVM_18, VirtualReg_30
	mv	a0, fuckLLVM_19
	call	malloc
	mv	VirtualReg_31, a0
	sw	fuckLLVM_16, 0(VirtualReg_31)
	li	VirtualReg_34, 1
	li	VirtualReg_35, 4
	mul	VirtualReg_33, VirtualReg_34, VirtualReg_35
	add	VirtualReg_32, VirtualReg_31, VirtualReg_33
	sw	VirtualReg_32, 0(VirtualReg_21)
	addi	VirtualReg_36, VirtualReg_16, 8
	li	VirtualReg_37, 0
	sw	VirtualReg_37, 0(VirtualReg_36)
	j	.classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_doubleStorage_ID25_for_condition:
	addi	VirtualReg_38, VirtualReg_16, 8
	lw	VirtualReg_39, 0(VirtualReg_38)
	mv	VirtualReg_40, VirtualReg_15
	xor	fuckLLVM_29, VirtualReg_39, VirtualReg_40
	sltiu	fuckLLVM_29, fuckLLVM_29, 1
	xori	fuckLLVM_29, fuckLLVM_29, 1
	bnez	fuckLLVM_29, .classArray_Node_doubleStorage_ID25_for_suite
	j	.classArray_Node_doubleStorage_ID25_for_out
.classArray_Node_doubleStorage_ID25_for_suite:
	addi	VirtualReg_41, VirtualReg_16, 0
	lw	VirtualReg_42, 0(VirtualReg_41)
	addi	VirtualReg_43, VirtualReg_16, 8
	lw	VirtualReg_44, 0(VirtualReg_43)
	li	VirtualReg_47, 8
	mul	VirtualReg_46, VirtualReg_44, VirtualReg_47
	add	VirtualReg_45, VirtualReg_42, VirtualReg_46
	mv	VirtualReg_48, VirtualReg_14
	addi	VirtualReg_49, VirtualReg_16, 8
	lw	VirtualReg_50, 0(VirtualReg_49)
	li	VirtualReg_53, 8
	mul	VirtualReg_52, VirtualReg_50, VirtualReg_53
	add	VirtualReg_51, VirtualReg_48, VirtualReg_52
	lw	VirtualReg_54, 0(VirtualReg_51)
	sw	VirtualReg_54, 0(VirtualReg_45)
	j	.classArray_Node_doubleStorage_ID25_for_incr
.classArray_Node_doubleStorage_ID25_for_incr:
	addi	VirtualReg_55, VirtualReg_16, 8
	lw	VirtualReg_56, 0(VirtualReg_55)
	li	VirtualReg_57, 1
	add	fuckLLVM_43, VirtualReg_56, VirtualReg_57
	sw	fuckLLVM_43, 0(VirtualReg_55)
	j	.classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_doubleStorage_ID25_for_out:
	j	.classArray_Node_doubleStorage_return
.classArray_Node_doubleStorage_return:
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

	.globl	Heap_Node
	.p2align	2
	.type	Heap_Node,@function
Heap_Node:
.Heap_Node_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.Heap_Node_alloca
.Heap_Node_alloca:
.Heap_Node_entry:
	mv	VirtualReg_13, VirtualReg_0
	addi	VirtualReg_14, VirtualReg_0, 0
	li	VirtualReg_15, 12
	mv	a0, VirtualReg_15
	call	malloc
	mv	VirtualReg_16, a0
	mv	a0, VirtualReg_16
	call	Array_Node
	sw	VirtualReg_16, 0(VirtualReg_14)
	j	.Heap_Node_return
.Heap_Node_return:
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

	.globl	classHeap_Node_push
	.p2align	2
	.type	classHeap_Node_push,@function
classHeap_Node_push:
.classHeap_Node_push_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s0
	mv	VirtualReg_3, s1
	mv	VirtualReg_4, s2
	mv	VirtualReg_5, s3
	mv	VirtualReg_6, s4
	mv	VirtualReg_7, s5
	mv	VirtualReg_8, s6
	mv	VirtualReg_9, s7
	mv	VirtualReg_10, s8
	mv	VirtualReg_11, s9
	mv	VirtualReg_12, s10
	mv	VirtualReg_13, s11
	j	.classHeap_Node_push_alloca
.classHeap_Node_push_alloca:
	j	.classHeap_Node_push_entry
.classHeap_Node_push_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_18, VirtualReg_14
	mv	VirtualReg_15, VirtualReg_1
	addi	VirtualReg_19, VirtualReg_18, 0
	lw	VirtualReg_20, 0(VirtualReg_19)
	mv	VirtualReg_21, VirtualReg_15
	mv	a0, VirtualReg_20
	mv	a1, VirtualReg_21
	call	classArray_Node_push_back
	mv	a0, VirtualReg_18
	call	classHeap_Node_size
	mv	VirtualReg_22, a0
	li	VirtualReg_23, 1
	sub	fuckLLVM_13, VirtualReg_22, VirtualReg_23
	mv	VirtualReg_16, fuckLLVM_13
	j	.classHeap_Node_push_ID14_while_condition
.classHeap_Node_push_ID14_while_condition:
	mv	VirtualReg_24, VirtualReg_16
	li	VirtualReg_25, 0
	slt	fuckLLVM_15, VirtualReg_25, VirtualReg_24
	bnez	fuckLLVM_15, .classHeap_Node_push_ID16_while_suite
	j	.classHeap_Node_push_ID16_while_out
.classHeap_Node_push_ID29_if_true:
	j	.classHeap_Node_push_ID16_while_out
.classHeap_Node_push_ID29_if_out:
	addi	VirtualReg_26, VirtualReg_18, 0
	lw	VirtualReg_27, 0(VirtualReg_26)
	mv	VirtualReg_28, VirtualReg_17
	mv	VirtualReg_29, VirtualReg_16
	mv	a0, VirtualReg_27
	mv	a1, VirtualReg_28
	mv	a2, VirtualReg_29
	call	classArray_Node_swap
	mv	VirtualReg_30, VirtualReg_17
	mv	VirtualReg_16, VirtualReg_30
	j	.classHeap_Node_push_ID14_while_condition
.classHeap_Node_push_ID16_while_suite:
	mv	VirtualReg_31, VirtualReg_16
	mv	a0, VirtualReg_18
	mv	a1, VirtualReg_31
	call	classHeap_Node_pnt
	mv	VirtualReg_32, a0
	mv	VirtualReg_17, VirtualReg_32
	addi	VirtualReg_33, VirtualReg_18, 0
	lw	VirtualReg_34, 0(VirtualReg_33)
	mv	VirtualReg_35, VirtualReg_17
	mv	a0, VirtualReg_34
	mv	a1, VirtualReg_35
	call	classArray_Node_get
	mv	VirtualReg_36, a0
	mv	a0, VirtualReg_36
	call	classNode_key_
	mv	VirtualReg_37, a0
	addi	VirtualReg_38, VirtualReg_18, 0
	lw	VirtualReg_39, 0(VirtualReg_38)
	mv	VirtualReg_40, VirtualReg_16
	mv	a0, VirtualReg_39
	mv	a1, VirtualReg_40
	call	classArray_Node_get
	mv	VirtualReg_41, a0
	mv	a0, VirtualReg_41
	call	classNode_key_
	mv	VirtualReg_42, a0
	slt	fuckLLVM_29, VirtualReg_37, VirtualReg_42
	xori	fuckLLVM_29, fuckLLVM_29, 1
	bnez	fuckLLVM_29, .classHeap_Node_push_ID29_if_true
	j	.classHeap_Node_push_ID29_if_out
.classHeap_Node_push_ID16_while_out:
	j	.classHeap_Node_push_return
.classHeap_Node_push_return:
	mv	s1, VirtualReg_3
	mv	s2, VirtualReg_4
	mv	s3, VirtualReg_5
	mv	s4, VirtualReg_6
	mv	s5, VirtualReg_7
	mv	s6, VirtualReg_8
	mv	s7, VirtualReg_9
	mv	s8, VirtualReg_10
	mv	s9, VirtualReg_11
	mv	s10, VirtualReg_12
	mv	s11, VirtualReg_13

	.globl	classHeap_Node_pop
	.p2align	2
	.type	classHeap_Node_pop,@function
classHeap_Node_pop:
.classHeap_Node_pop_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classHeap_Node_pop_alloca
.classHeap_Node_pop_alloca:
	j	.classHeap_Node_pop_entry
.classHeap_Node_pop_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_16, VirtualReg_13
	addi	VirtualReg_17, VirtualReg_16, 0
	lw	VirtualReg_18, 0(VirtualReg_17)
	mv	a0, VirtualReg_18
	call	classArray_Node_front
	mv	VirtualReg_19, a0
	mv	VirtualReg_15, VirtualReg_19
	addi	VirtualReg_20, VirtualReg_16, 0
	lw	VirtualReg_21, 0(VirtualReg_20)
	mv	a0, VirtualReg_16
	call	classHeap_Node_size
	mv	VirtualReg_22, a0
	li	VirtualReg_23, 1
	sub	fuckLLVM_12, VirtualReg_22, VirtualReg_23
	mv	a0, VirtualReg_21
	li	VirtualReg_24, 0
	mv	a1, VirtualReg_24
	mv	a2, fuckLLVM_12
	call	classArray_Node_swap
	addi	VirtualReg_25, VirtualReg_16, 0
	lw	VirtualReg_26, 0(VirtualReg_25)
	mv	a0, VirtualReg_26
	call	classArray_Node_pop_back
	mv	VirtualReg_27, a0
	mv	a0, VirtualReg_16
	li	VirtualReg_28, 0
	mv	a1, VirtualReg_28
	call	classHeap_Node_maxHeapify
	mv	VirtualReg_29, VirtualReg_15
	mv	VirtualReg_14, VirtualReg_29
	j	.classHeap_Node_pop_return
.classHeap_Node_pop_return:
	mv	VirtualReg_30, VirtualReg_14
	mv	a0, VirtualReg_30
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

	.globl	classHeap_Node_top
	.p2align	2
	.type	classHeap_Node_top,@function
classHeap_Node_top:
.classHeap_Node_top_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classHeap_Node_top_alloca
.classHeap_Node_top_alloca:
	j	.classHeap_Node_top_entry
.classHeap_Node_top_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_13
	addi	VirtualReg_16, VirtualReg_15, 0
	lw	VirtualReg_17, 0(VirtualReg_16)
	mv	a0, VirtualReg_17
	call	classArray_Node_front
	mv	VirtualReg_18, a0
	mv	VirtualReg_14, VirtualReg_18
	j	.classHeap_Node_top_return
.classHeap_Node_top_return:
	mv	VirtualReg_19, VirtualReg_14
	mv	a0, VirtualReg_19
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

	.globl	classHeap_Node_size
	.p2align	2
	.type	classHeap_Node_size,@function
classHeap_Node_size:
.classHeap_Node_size_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classHeap_Node_size_alloca
.classHeap_Node_size_alloca:
	j	.classHeap_Node_size_entry
.classHeap_Node_size_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_13
	addi	VirtualReg_16, VirtualReg_15, 0
	lw	VirtualReg_17, 0(VirtualReg_16)
	mv	a0, VirtualReg_17
	call	classArray_Node_size
	mv	VirtualReg_18, a0
	mv	VirtualReg_14, VirtualReg_18
	j	.classHeap_Node_size_return
.classHeap_Node_size_return:
	mv	VirtualReg_19, VirtualReg_14
	mv	a0, VirtualReg_19
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

	.globl	classHeap_Node_lchild
	.p2align	2
	.type	classHeap_Node_lchild,@function
classHeap_Node_lchild:
.classHeap_Node_lchild_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s0
	mv	VirtualReg_3, s1
	mv	VirtualReg_4, s2
	mv	VirtualReg_5, s3
	mv	VirtualReg_6, s4
	mv	VirtualReg_7, s5
	mv	VirtualReg_8, s6
	mv	VirtualReg_9, s7
	mv	VirtualReg_10, s8
	mv	VirtualReg_11, s9
	mv	VirtualReg_12, s10
	mv	VirtualReg_13, s11
	j	.classHeap_Node_lchild_alloca
.classHeap_Node_lchild_alloca:
	j	.classHeap_Node_lchild_entry
.classHeap_Node_lchild_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_17, VirtualReg_14
	mv	VirtualReg_15, VirtualReg_1
	mv	VirtualReg_18, VirtualReg_15
	li	VirtualReg_19, 2
	mul	fuckLLVM_7, VirtualReg_18, VirtualReg_19
	li	VirtualReg_20, 1
	add	fuckLLVM_8, fuckLLVM_7, VirtualReg_20
	mv	VirtualReg_16, fuckLLVM_8
	j	.classHeap_Node_lchild_return
.classHeap_Node_lchild_return:
	mv	VirtualReg_21, VirtualReg_16
	mv	a0, VirtualReg_21
	mv	s1, VirtualReg_3
	mv	s2, VirtualReg_4
	mv	s3, VirtualReg_5
	mv	s4, VirtualReg_6
	mv	s5, VirtualReg_7
	mv	s6, VirtualReg_8
	mv	s7, VirtualReg_9
	mv	s8, VirtualReg_10
	mv	s9, VirtualReg_11
	mv	s10, VirtualReg_12
	mv	s11, VirtualReg_13

	.globl	classHeap_Node_rchild
	.p2align	2
	.type	classHeap_Node_rchild,@function
classHeap_Node_rchild:
.classHeap_Node_rchild_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s0
	mv	VirtualReg_3, s1
	mv	VirtualReg_4, s2
	mv	VirtualReg_5, s3
	mv	VirtualReg_6, s4
	mv	VirtualReg_7, s5
	mv	VirtualReg_8, s6
	mv	VirtualReg_9, s7
	mv	VirtualReg_10, s8
	mv	VirtualReg_11, s9
	mv	VirtualReg_12, s10
	mv	VirtualReg_13, s11
	j	.classHeap_Node_rchild_alloca
.classHeap_Node_rchild_alloca:
	j	.classHeap_Node_rchild_entry
.classHeap_Node_rchild_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_17, VirtualReg_14
	mv	VirtualReg_15, VirtualReg_1
	mv	VirtualReg_18, VirtualReg_15
	li	VirtualReg_19, 2
	mul	fuckLLVM_7, VirtualReg_18, VirtualReg_19
	li	VirtualReg_20, 2
	add	fuckLLVM_8, fuckLLVM_7, VirtualReg_20
	mv	VirtualReg_16, fuckLLVM_8
	j	.classHeap_Node_rchild_return
.classHeap_Node_rchild_return:
	mv	VirtualReg_21, VirtualReg_16
	mv	a0, VirtualReg_21
	mv	s1, VirtualReg_3
	mv	s2, VirtualReg_4
	mv	s3, VirtualReg_5
	mv	s4, VirtualReg_6
	mv	s5, VirtualReg_7
	mv	s6, VirtualReg_8
	mv	s7, VirtualReg_9
	mv	s8, VirtualReg_10
	mv	s9, VirtualReg_11
	mv	s10, VirtualReg_12
	mv	s11, VirtualReg_13

	.globl	classHeap_Node_pnt
	.p2align	2
	.type	classHeap_Node_pnt,@function
classHeap_Node_pnt:
.classHeap_Node_pnt_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s0
	mv	VirtualReg_3, s1
	mv	VirtualReg_4, s2
	mv	VirtualReg_5, s3
	mv	VirtualReg_6, s4
	mv	VirtualReg_7, s5
	mv	VirtualReg_8, s6
	mv	VirtualReg_9, s7
	mv	VirtualReg_10, s8
	mv	VirtualReg_11, s9
	mv	VirtualReg_12, s10
	mv	VirtualReg_13, s11
	j	.classHeap_Node_pnt_alloca
.classHeap_Node_pnt_alloca:
	j	.classHeap_Node_pnt_entry
.classHeap_Node_pnt_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_17, VirtualReg_14
	mv	VirtualReg_15, VirtualReg_1
	mv	VirtualReg_18, VirtualReg_15
	li	VirtualReg_19, 1
	sub	fuckLLVM_7, VirtualReg_18, VirtualReg_19
	li	VirtualReg_20, 2
	div	fuckLLVM_8, fuckLLVM_7, VirtualReg_20
	mv	VirtualReg_16, fuckLLVM_8
	j	.classHeap_Node_pnt_return
.classHeap_Node_pnt_return:
	mv	VirtualReg_21, VirtualReg_16
	mv	a0, VirtualReg_21
	mv	s1, VirtualReg_3
	mv	s2, VirtualReg_4
	mv	s3, VirtualReg_5
	mv	s4, VirtualReg_6
	mv	s5, VirtualReg_7
	mv	s6, VirtualReg_8
	mv	s7, VirtualReg_9
	mv	s8, VirtualReg_10
	mv	s9, VirtualReg_11
	mv	s10, VirtualReg_12
	mv	s11, VirtualReg_13

	.globl	classHeap_Node_maxHeapify
	.p2align	2
	.type	classHeap_Node_maxHeapify,@function
classHeap_Node_maxHeapify:
.classHeap_Node_maxHeapify_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, s0
	mv	VirtualReg_3, s1
	mv	VirtualReg_4, s2
	mv	VirtualReg_5, s3
	mv	VirtualReg_6, s4
	mv	VirtualReg_7, s5
	mv	VirtualReg_8, s6
	mv	VirtualReg_9, s7
	mv	VirtualReg_10, s8
	mv	VirtualReg_11, s9
	mv	VirtualReg_12, s10
	mv	VirtualReg_13, s11
	j	.classHeap_Node_maxHeapify_alloca
.classHeap_Node_maxHeapify_alloca:
	j	.classHeap_Node_maxHeapify_entry
.classHeap_Node_maxHeapify_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_19, VirtualReg_14
	mv	VirtualReg_15, VirtualReg_1
	mv	VirtualReg_20, VirtualReg_15
	mv	a0, VirtualReg_19
	mv	a1, VirtualReg_20
	call	classHeap_Node_lchild
	mv	VirtualReg_21, a0
	mv	VirtualReg_16, VirtualReg_21
	mv	VirtualReg_22, VirtualReg_15
	mv	a0, VirtualReg_19
	mv	a1, VirtualReg_22
	call	classHeap_Node_rchild
	mv	VirtualReg_23, a0
	mv	VirtualReg_17, VirtualReg_23
	mv	VirtualReg_24, VirtualReg_15
	mv	VirtualReg_18, VirtualReg_24
	mv	VirtualReg_25, VirtualReg_16
	mv	a0, VirtualReg_19
	call	classHeap_Node_size
	mv	VirtualReg_26, a0
	slt	fuckLLVM_16, VirtualReg_25, VirtualReg_26
	li	VirtualReg_60, 0
	mv	VirtualReg_37, VirtualReg_60
	bnez	fuckLLVM_16, .classHeap_Node_maxHeapify_ID16_AndAnd_true
	mv	VirtualReg_37, VirtualReg_60
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_maxHeapify_ID16_AndAnd_true:
	addi	VirtualReg_27, VirtualReg_19, 0
	lw	VirtualReg_28, 0(VirtualReg_27)
	mv	VirtualReg_29, VirtualReg_16
	mv	a0, VirtualReg_28
	mv	a1, VirtualReg_29
	call	classArray_Node_get
	mv	VirtualReg_30, a0
	mv	a0, VirtualReg_30
	call	classNode_key_
	mv	VirtualReg_31, a0
	addi	VirtualReg_32, VirtualReg_19, 0
	lw	VirtualReg_33, 0(VirtualReg_32)
	mv	VirtualReg_34, VirtualReg_18
	mv	a0, VirtualReg_33
	mv	a1, VirtualReg_34
	call	classArray_Node_get
	mv	VirtualReg_35, a0
	mv	a0, VirtualReg_35
	call	classNode_key_
	mv	VirtualReg_36, a0
	slt	fuckLLVM_27, VirtualReg_36, VirtualReg_31
	mv	VirtualReg_37, fuckLLVM_27
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_maxHeapify_ID16_AndAnd_out:
	bnez	VirtualReg_37, .classHeap_Node_maxHeapify_ID28_if_true
	j	.classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_maxHeapify_ID28_if_true:
	mv	VirtualReg_38, VirtualReg_16
	mv	VirtualReg_18, VirtualReg_38
	j	.classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_maxHeapify_ID28_if_out:
	mv	VirtualReg_39, VirtualReg_17
	mv	a0, VirtualReg_19
	call	classHeap_Node_size
	mv	VirtualReg_40, a0
	slt	fuckLLVM_32, VirtualReg_39, VirtualReg_40
	li	VirtualReg_61, 0
	mv	VirtualReg_51, VirtualReg_61
	bnez	fuckLLVM_32, .classHeap_Node_maxHeapify_ID32_AndAnd_true
	mv	VirtualReg_51, VirtualReg_61
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_maxHeapify_ID32_AndAnd_true:
	addi	VirtualReg_41, VirtualReg_19, 0
	lw	VirtualReg_42, 0(VirtualReg_41)
	mv	VirtualReg_43, VirtualReg_17
	mv	a0, VirtualReg_42
	mv	a1, VirtualReg_43
	call	classArray_Node_get
	mv	VirtualReg_44, a0
	mv	a0, VirtualReg_44
	call	classNode_key_
	mv	VirtualReg_45, a0
	addi	VirtualReg_46, VirtualReg_19, 0
	lw	VirtualReg_47, 0(VirtualReg_46)
	mv	VirtualReg_48, VirtualReg_18
	mv	a0, VirtualReg_47
	mv	a1, VirtualReg_48
	call	classArray_Node_get
	mv	VirtualReg_49, a0
	mv	a0, VirtualReg_49
	call	classNode_key_
	mv	VirtualReg_50, a0
	slt	fuckLLVM_43, VirtualReg_50, VirtualReg_45
	mv	VirtualReg_51, fuckLLVM_43
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_maxHeapify_ID32_AndAnd_out:
	bnez	VirtualReg_51, .classHeap_Node_maxHeapify_ID44_if_true
	j	.classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_maxHeapify_ID44_if_true:
	mv	VirtualReg_52, VirtualReg_17
	mv	VirtualReg_18, VirtualReg_52
	j	.classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_maxHeapify_ID44_if_out:
	mv	VirtualReg_53, VirtualReg_18
	mv	VirtualReg_54, VirtualReg_15
	xor	fuckLLVM_48, VirtualReg_53, VirtualReg_54
	sltiu	fuckLLVM_48, fuckLLVM_48, 1
	bnez	fuckLLVM_48, .classHeap_Node_maxHeapify_ID48_if_true
	j	.classHeap_Node_maxHeapify_ID48_if_out
.classHeap_Node_maxHeapify_ID48_if_true:
	j	.classHeap_Node_maxHeapify_return
.classHeap_Node_maxHeapify_ID48_if_out:
	addi	VirtualReg_55, VirtualReg_19, 0
	lw	VirtualReg_56, 0(VirtualReg_55)
	mv	VirtualReg_57, VirtualReg_15
	mv	VirtualReg_58, VirtualReg_18
	mv	a0, VirtualReg_56
	mv	a1, VirtualReg_57
	mv	a2, VirtualReg_58
	call	classArray_Node_swap
	mv	VirtualReg_59, VirtualReg_18
	mv	a0, VirtualReg_19
	mv	a1, VirtualReg_59
	call	classHeap_Node_maxHeapify
	j	.classHeap_Node_maxHeapify_return
.classHeap_Node_maxHeapify_return:
	mv	s1, VirtualReg_3
	mv	s2, VirtualReg_4
	mv	s3, VirtualReg_5
	mv	s4, VirtualReg_6
	mv	s5, VirtualReg_7
	mv	s6, VirtualReg_8
	mv	s7, VirtualReg_9
	mv	s8, VirtualReg_10
	mv	s9, VirtualReg_11
	mv	s10, VirtualReg_12
	mv	s11, VirtualReg_13

	.globl	init
	.p2align	2
	.type	init,@function
init:
.init_assemblyInit:
	mv	VirtualReg_0, s0
	mv	VirtualReg_1, s1
	mv	VirtualReg_2, s2
	mv	VirtualReg_3, s3
	mv	VirtualReg_4, s4
	mv	VirtualReg_5, s5
	mv	VirtualReg_6, s6
	mv	VirtualReg_7, s7
	mv	VirtualReg_8, s8
	mv	VirtualReg_9, s9
	mv	VirtualReg_10, s10
	mv	VirtualReg_11, s11
	j	.init_alloca
.init_alloca:
	j	.init_entry
.init_entry:
	call	getInt
	mv	VirtualReg_16, a0
	li	VirtualReg_17, 0
	sw	VirtualReg_16, fuckLLVM_n, VirtualReg_17
	call	getInt
	mv	VirtualReg_18, a0
	li	VirtualReg_19, 0
	sw	VirtualReg_18, fuckLLVM_m, VirtualReg_19
	li	VirtualReg_20, 28
	mv	a0, VirtualReg_20
	call	malloc
	mv	VirtualReg_21, a0
	mv	a0, VirtualReg_21
	call	EdgeList
	li	VirtualReg_22, 0
	sw	VirtualReg_21, fuckLLVM_g, VirtualReg_22
	lw	VirtualReg_23, fuckLLVM_g
	lw	VirtualReg_24, fuckLLVM_n
	lw	VirtualReg_25, fuckLLVM_m
	mv	a0, VirtualReg_23
	mv	a1, VirtualReg_24
	mv	a2, VirtualReg_25
	call	classEdgeList_init
	li	VirtualReg_26, 0
	mv	VirtualReg_12, VirtualReg_26
	j	.init_ID10_for_condition
.init_ID10_for_condition:
	mv	VirtualReg_27, VirtualReg_12
	lw	VirtualReg_28, fuckLLVM_m
	slt	fuckLLVM_13, VirtualReg_27, VirtualReg_28
	bnez	fuckLLVM_13, .init_ID10_for_suite
	j	.init_ID10_for_out
.init_ID10_for_suite:
	call	getInt
	mv	VirtualReg_29, a0
	mv	VirtualReg_13, VirtualReg_29
	call	getInt
	mv	VirtualReg_30, a0
	mv	VirtualReg_14, VirtualReg_30
	call	getInt
	mv	VirtualReg_31, a0
	mv	VirtualReg_15, VirtualReg_31
	lw	VirtualReg_32, fuckLLVM_g
	mv	VirtualReg_33, VirtualReg_13
	mv	VirtualReg_34, VirtualReg_14
	mv	VirtualReg_35, VirtualReg_15
	mv	a0, VirtualReg_32
	mv	a1, VirtualReg_33
	mv	a2, VirtualReg_34
	mv	a3, VirtualReg_35
	call	classEdgeList_addEdge
	j	.init_ID10_for_incr
.init_ID10_for_incr:
	mv	VirtualReg_36, VirtualReg_12
	li	VirtualReg_37, 1
	add	fuckLLVM_26, VirtualReg_36, VirtualReg_37
	mv	VirtualReg_12, fuckLLVM_26
	j	.init_ID10_for_condition
.init_ID10_for_out:
	j	.init_return
.init_return:
	mv	s1, VirtualReg_1
	mv	s2, VirtualReg_2
	mv	s3, VirtualReg_3
	mv	s4, VirtualReg_4
	mv	s5, VirtualReg_5
	mv	s6, VirtualReg_6
	mv	s7, VirtualReg_7
	mv	s8, VirtualReg_8
	mv	s9, VirtualReg_9
	mv	s10, VirtualReg_10
	mv	s11, VirtualReg_11

	.globl	Node
	.p2align	2
	.type	Node,@function
Node:
.Node_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.Node_alloca
.Node_alloca:
.Node_entry:
	mv	VirtualReg_13, VirtualReg_0
	j	.Node_return
.Node_return:
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

	.globl	classNode_key_
	.p2align	2
	.type	classNode_key_,@function
classNode_key_:
.classNode_key__assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classNode_key__alloca
.classNode_key__alloca:
	j	.classNode_key__entry
.classNode_key__entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_13
	addi	VirtualReg_16, VirtualReg_15, 4
	lw	VirtualReg_17, 0(VirtualReg_16)
	li	VirtualReg_18, 0
	sub	fuckLLVM_6, VirtualReg_18, VirtualReg_17
	mv	VirtualReg_14, fuckLLVM_6
	j	.classNode_key__return
.classNode_key__return:
	mv	VirtualReg_19, VirtualReg_14
	mv	a0, VirtualReg_19
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

	.globl	dijkstra
	.p2align	2
	.type	dijkstra,@function
dijkstra:
.dijkstra_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.dijkstra_alloca
.dijkstra_alloca:
	j	.dijkstra_entry
.dijkstra_entry:
	mv	VirtualReg_13, VirtualReg_0
	lw	VirtualReg_26, fuckLLVM_n
	li	VirtualReg_27, 4
	mul	fuckLLVM_6, VirtualReg_26, VirtualReg_27
	li	VirtualReg_28, 4
	add	fuckLLVM_7, fuckLLVM_6, VirtualReg_28
	mv	a0, fuckLLVM_7
	call	malloc
	mv	VirtualReg_29, a0
	sw	VirtualReg_26, 0(VirtualReg_29)
	li	VirtualReg_32, 1
	li	VirtualReg_33, 4
	mul	VirtualReg_31, VirtualReg_32, VirtualReg_33
	add	VirtualReg_30, VirtualReg_29, VirtualReg_31
	mv	VirtualReg_15, VirtualReg_30
	lw	VirtualReg_34, fuckLLVM_n
	li	VirtualReg_35, 4
	mul	fuckLLVM_16, VirtualReg_34, VirtualReg_35
	li	VirtualReg_36, 4
	add	fuckLLVM_17, fuckLLVM_16, VirtualReg_36
	mv	a0, fuckLLVM_17
	call	malloc
	mv	VirtualReg_37, a0
	sw	VirtualReg_34, 0(VirtualReg_37)
	li	VirtualReg_40, 1
	li	VirtualReg_41, 4
	mul	VirtualReg_39, VirtualReg_40, VirtualReg_41
	add	VirtualReg_38, VirtualReg_37, VirtualReg_39
	mv	VirtualReg_16, VirtualReg_38
	li	VirtualReg_42, 0
	mv	VirtualReg_17, VirtualReg_42
	j	.dijkstra_ID23_for_condition
.dijkstra_ID23_for_condition:
	mv	VirtualReg_43, VirtualReg_17
	lw	VirtualReg_44, fuckLLVM_n
	slt	fuckLLVM_26, VirtualReg_43, VirtualReg_44
	bnez	fuckLLVM_26, .dijkstra_ID23_for_suite
	j	.dijkstra_ID23_for_out
.dijkstra_ID23_for_suite:
	mv	VirtualReg_45, VirtualReg_16
	mv	VirtualReg_46, VirtualReg_17
	li	VirtualReg_49, 4
	mul	VirtualReg_48, VirtualReg_46, VirtualReg_49
	add	VirtualReg_47, VirtualReg_45, VirtualReg_48
	lw	VirtualReg_50, fuckLLVM_INF
	sw	VirtualReg_50, 0(VirtualReg_47)
	mv	VirtualReg_51, VirtualReg_15
	mv	VirtualReg_52, VirtualReg_17
	li	VirtualReg_55, 4
	mul	VirtualReg_54, VirtualReg_52, VirtualReg_55
	add	VirtualReg_53, VirtualReg_51, VirtualReg_54
	li	VirtualReg_56, 0
	sw	VirtualReg_56, 0(VirtualReg_53)
	j	.dijkstra_ID23_for_incr
.dijkstra_ID23_for_incr:
	mv	VirtualReg_57, VirtualReg_17
	li	VirtualReg_58, 1
	add	fuckLLVM_35, VirtualReg_57, VirtualReg_58
	mv	VirtualReg_17, fuckLLVM_35
	j	.dijkstra_ID23_for_condition
.dijkstra_ID23_for_out:
	mv	VirtualReg_59, VirtualReg_16
	mv	VirtualReg_60, VirtualReg_13
	li	VirtualReg_63, 4
	mul	VirtualReg_62, VirtualReg_60, VirtualReg_63
	add	VirtualReg_61, VirtualReg_59, VirtualReg_62
	li	VirtualReg_64, 0
	sw	VirtualReg_64, 0(VirtualReg_61)
	li	VirtualReg_65, 8
	mv	a0, VirtualReg_65
	call	malloc
	mv	VirtualReg_66, a0
	mv	a0, VirtualReg_66
	call	Heap_Node
	mv	VirtualReg_18, VirtualReg_66
	li	VirtualReg_67, 8
	mv	a0, VirtualReg_67
	call	malloc
	mv	VirtualReg_68, a0
	mv	a0, VirtualReg_68
	call	Node
	mv	VirtualReg_19, VirtualReg_68
	mv	VirtualReg_69, VirtualReg_19
	addi	VirtualReg_70, VirtualReg_69, 4
	li	VirtualReg_71, 0
	sw	VirtualReg_71, 0(VirtualReg_70)
	mv	VirtualReg_72, VirtualReg_19
	addi	VirtualReg_73, VirtualReg_72, 0
	mv	VirtualReg_74, VirtualReg_13
	sw	VirtualReg_74, 0(VirtualReg_73)
	mv	VirtualReg_75, VirtualReg_18
	mv	VirtualReg_76, VirtualReg_19
	mv	a0, VirtualReg_75
	mv	a1, VirtualReg_76
	call	classHeap_Node_push
	j	.dijkstra_ID56_while_condition
.dijkstra_ID56_while_condition:
	mv	VirtualReg_77, VirtualReg_18
	mv	a0, VirtualReg_77
	call	classHeap_Node_size
	mv	VirtualReg_78, a0
	li	VirtualReg_79, 0
	xor	fuckLLVM_58, VirtualReg_78, VirtualReg_79
	sltiu	fuckLLVM_58, fuckLLVM_58, 1
	xori	fuckLLVM_58, fuckLLVM_58, 1
	bnez	fuckLLVM_58, .dijkstra_ID59_while_suite
	j	.dijkstra_ID59_while_out
.dijkstra_ID71_if_true:
	j	.dijkstra_ID56_while_condition
.dijkstra_ID71_if_out:
	mv	VirtualReg_80, VirtualReg_15
	mv	VirtualReg_81, VirtualReg_21
	li	VirtualReg_84, 4
	mul	VirtualReg_83, VirtualReg_81, VirtualReg_84
	add	VirtualReg_82, VirtualReg_80, VirtualReg_83
	li	VirtualReg_85, 1
	sw	VirtualReg_85, 0(VirtualReg_82)
	lw	VirtualReg_86, fuckLLVM_g
	addi	VirtualReg_87, VirtualReg_86, 16
	lw	VirtualReg_88, 0(VirtualReg_87)
	mv	VirtualReg_89, VirtualReg_21
	li	VirtualReg_92, 4
	mul	VirtualReg_91, VirtualReg_89, VirtualReg_92
	add	VirtualReg_90, VirtualReg_88, VirtualReg_91
	lw	VirtualReg_93, 0(VirtualReg_90)
	mv	VirtualReg_22, VirtualReg_93
	j	.dijkstra_ID81_for_condition
.dijkstra_ID81_for_condition:
	mv	VirtualReg_94, VirtualReg_22
	li	VirtualReg_95, 0
	li	VirtualReg_96, 1
	sub	fuckLLVM_83, VirtualReg_95, VirtualReg_96
	xor	fuckLLVM_84, VirtualReg_94, fuckLLVM_83
	sltiu	fuckLLVM_84, fuckLLVM_84, 1
	xori	fuckLLVM_84, fuckLLVM_84, 1
	bnez	fuckLLVM_84, .dijkstra_ID81_for_suite
	j	.dijkstra_ID81_for_out
.dijkstra_ID81_for_suite:
	lw	VirtualReg_97, fuckLLVM_g
	addi	VirtualReg_98, VirtualReg_97, 0
	lw	VirtualReg_99, 0(VirtualReg_98)
	mv	VirtualReg_100, VirtualReg_22
	li	VirtualReg_103, 12
	mul	VirtualReg_102, VirtualReg_100, VirtualReg_103
	add	VirtualReg_101, VirtualReg_99, VirtualReg_102
	lw	VirtualReg_104, 0(VirtualReg_101)
	addi	VirtualReg_105, VirtualReg_104, 4
	lw	VirtualReg_106, 0(VirtualReg_105)
	mv	VirtualReg_23, VirtualReg_106
	lw	VirtualReg_107, fuckLLVM_g
	addi	VirtualReg_108, VirtualReg_107, 0
	lw	VirtualReg_109, 0(VirtualReg_108)
	mv	VirtualReg_110, VirtualReg_22
	li	VirtualReg_113, 12
	mul	VirtualReg_112, VirtualReg_110, VirtualReg_113
	add	VirtualReg_111, VirtualReg_109, VirtualReg_112
	lw	VirtualReg_114, 0(VirtualReg_111)
	addi	VirtualReg_115, VirtualReg_114, 8
	lw	VirtualReg_116, 0(VirtualReg_115)
	mv	VirtualReg_24, VirtualReg_116
	mv	VirtualReg_117, VirtualReg_16
	mv	VirtualReg_118, VirtualReg_21
	li	VirtualReg_121, 4
	mul	VirtualReg_120, VirtualReg_118, VirtualReg_121
	add	VirtualReg_119, VirtualReg_117, VirtualReg_120
	lw	VirtualReg_122, 0(VirtualReg_119)
	mv	VirtualReg_123, VirtualReg_24
	add	fuckLLVM_109, VirtualReg_122, VirtualReg_123
	mv	VirtualReg_25, fuckLLVM_109
	mv	VirtualReg_124, VirtualReg_25
	mv	VirtualReg_125, VirtualReg_16
	mv	VirtualReg_126, VirtualReg_23
	li	VirtualReg_129, 4
	mul	VirtualReg_128, VirtualReg_126, VirtualReg_129
	add	VirtualReg_127, VirtualReg_125, VirtualReg_128
	lw	VirtualReg_130, 0(VirtualReg_127)
	slt	fuckLLVM_115, VirtualReg_124, VirtualReg_130
	xori	fuckLLVM_115, fuckLLVM_115, 1
	bnez	fuckLLVM_115, .dijkstra_ID115_if_true
	j	.dijkstra_ID115_if_out
.dijkstra_ID115_if_true:
	j	.dijkstra_ID81_for_incr
.dijkstra_ID115_if_out:
	mv	VirtualReg_131, VirtualReg_16
	mv	VirtualReg_132, VirtualReg_23
	li	VirtualReg_135, 4
	mul	VirtualReg_134, VirtualReg_132, VirtualReg_135
	add	VirtualReg_133, VirtualReg_131, VirtualReg_134
	mv	VirtualReg_136, VirtualReg_25
	sw	VirtualReg_136, 0(VirtualReg_133)
	li	VirtualReg_137, 8
	mv	a0, VirtualReg_137
	call	malloc
	mv	VirtualReg_138, a0
	mv	a0, VirtualReg_138
	call	Node
	mv	VirtualReg_20, VirtualReg_138
	mv	VirtualReg_139, VirtualReg_20
	addi	VirtualReg_140, VirtualReg_139, 0
	mv	VirtualReg_141, VirtualReg_23
	sw	VirtualReg_141, 0(VirtualReg_140)
	mv	VirtualReg_142, VirtualReg_20
	addi	VirtualReg_143, VirtualReg_142, 4
	mv	VirtualReg_144, VirtualReg_16
	mv	VirtualReg_145, VirtualReg_23
	li	VirtualReg_148, 4
	mul	VirtualReg_147, VirtualReg_145, VirtualReg_148
	add	VirtualReg_146, VirtualReg_144, VirtualReg_147
	lw	VirtualReg_149, 0(VirtualReg_146)
	sw	VirtualReg_149, 0(VirtualReg_143)
	mv	VirtualReg_150, VirtualReg_18
	mv	VirtualReg_151, VirtualReg_20
	mv	a0, VirtualReg_150
	mv	a1, VirtualReg_151
	call	classHeap_Node_push
	j	.dijkstra_ID81_for_incr
.dijkstra_ID81_for_incr:
	lw	VirtualReg_152, fuckLLVM_g
	addi	VirtualReg_153, VirtualReg_152, 8
	lw	VirtualReg_154, 0(VirtualReg_153)
	mv	VirtualReg_155, VirtualReg_22
	li	VirtualReg_158, 4
	mul	VirtualReg_157, VirtualReg_155, VirtualReg_158
	add	VirtualReg_156, VirtualReg_154, VirtualReg_157
	lw	VirtualReg_159, 0(VirtualReg_156)
	mv	VirtualReg_22, VirtualReg_159
	j	.dijkstra_ID81_for_condition
.dijkstra_ID81_for_out:
	j	.dijkstra_ID56_while_condition
.dijkstra_ID59_while_suite:
	mv	VirtualReg_160, VirtualReg_18
	mv	a0, VirtualReg_160
	call	classHeap_Node_pop
	mv	VirtualReg_161, a0
	mv	VirtualReg_20, VirtualReg_161
	mv	VirtualReg_162, VirtualReg_20
	addi	VirtualReg_163, VirtualReg_162, 0
	lw	VirtualReg_164, 0(VirtualReg_163)
	mv	VirtualReg_21, VirtualReg_164
	mv	VirtualReg_165, VirtualReg_15
	mv	VirtualReg_166, VirtualReg_21
	li	VirtualReg_169, 4
	mul	VirtualReg_168, VirtualReg_166, VirtualReg_169
	add	VirtualReg_167, VirtualReg_165, VirtualReg_168
	lw	VirtualReg_170, 0(VirtualReg_167)
	li	VirtualReg_171, 1
	xor	fuckLLVM_71, VirtualReg_170, VirtualReg_171
	sltiu	fuckLLVM_71, fuckLLVM_71, 1
	bnez	fuckLLVM_71, .dijkstra_ID71_if_true
	j	.dijkstra_ID71_if_out
.dijkstra_ID59_while_out:
	mv	VirtualReg_172, VirtualReg_16
	mv	VirtualReg_14, VirtualReg_172
	j	.dijkstra_return
.dijkstra_return:
	mv	VirtualReg_173, VirtualReg_14
	mv	a0, VirtualReg_173
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
	mv	VirtualReg_0, s0
	mv	VirtualReg_1, s1
	mv	VirtualReg_2, s2
	mv	VirtualReg_3, s3
	mv	VirtualReg_4, s4
	mv	VirtualReg_5, s5
	mv	VirtualReg_6, s6
	mv	VirtualReg_7, s7
	mv	VirtualReg_8, s8
	mv	VirtualReg_9, s9
	mv	VirtualReg_10, s10
	mv	VirtualReg_11, s11
	j	.main_alloca
.main_alloca:
	j	.main_entry
.main_entry:
	call	__init
	li	VirtualReg_16, 0
	mv	VirtualReg_12, VirtualReg_16
	call	init
	li	VirtualReg_17, 0
	mv	VirtualReg_13, VirtualReg_17
	j	.main_ID3_for_condition
.main_ID3_for_condition:
	mv	VirtualReg_18, VirtualReg_13
	lw	VirtualReg_19, fuckLLVM_n
	slt	fuckLLVM_6, VirtualReg_18, VirtualReg_19
	bnez	fuckLLVM_6, .main_ID3_for_suite
	j	.main_ID3_for_out
.main_ID3_for_suite:
	mv	VirtualReg_20, VirtualReg_13
	mv	a0, VirtualReg_20
	call	dijkstra
	mv	VirtualReg_21, a0
	mv	VirtualReg_15, VirtualReg_21
	li	VirtualReg_22, 0
	mv	VirtualReg_14, VirtualReg_22
	j	.main_ID10_for_condition
.main_ID10_for_condition:
	mv	VirtualReg_23, VirtualReg_14
	lw	VirtualReg_24, fuckLLVM_n
	slt	fuckLLVM_13, VirtualReg_23, VirtualReg_24
	bnez	fuckLLVM_13, .main_ID10_for_suite
	j	.main_ID10_for_out
.main_ID10_for_suite:
	mv	VirtualReg_25, VirtualReg_15
	mv	VirtualReg_26, VirtualReg_14
	li	VirtualReg_29, 4
	mul	VirtualReg_28, VirtualReg_26, VirtualReg_29
	add	VirtualReg_27, VirtualReg_25, VirtualReg_28
	lw	VirtualReg_30, 0(VirtualReg_27)
	lw	VirtualReg_31, fuckLLVM_INF
	xor	fuckLLVM_19, VirtualReg_30, VirtualReg_31
	sltiu	fuckLLVM_19, fuckLLVM_19, 1
	bnez	fuckLLVM_19, .main_ID19_if_true
	j	.main_ID19_if_false
.main_ID19_if_true:
	la	VirtualReg_32, fuckLLVM_.str.0
	mv	a0, VirtualReg_32
	call	print
	j	.main_ID19_if_out
.main_ID19_if_false:
	mv	VirtualReg_33, VirtualReg_15
	mv	VirtualReg_34, VirtualReg_14
	li	VirtualReg_37, 4
	mul	VirtualReg_36, VirtualReg_34, VirtualReg_37
	add	VirtualReg_35, VirtualReg_33, VirtualReg_36
	lw	VirtualReg_38, 0(VirtualReg_35)
	mv	a0, VirtualReg_38
	call	toString
	mv	VirtualReg_39, a0
	mv	a0, VirtualReg_39
	call	print
	j	.main_ID19_if_out
.main_ID19_if_out:
	la	VirtualReg_40, fuckLLVM_.str.1
	mv	a0, VirtualReg_40
	call	print
	j	.main_ID10_for_incr
.main_ID10_for_incr:
	mv	VirtualReg_41, VirtualReg_14
	li	VirtualReg_42, 1
	add	fuckLLVM_32, VirtualReg_41, VirtualReg_42
	mv	VirtualReg_14, fuckLLVM_32
	j	.main_ID10_for_condition
.main_ID10_for_out:
	la	VirtualReg_43, fuckLLVM_.str.2
	mv	a0, VirtualReg_43
	call	println
	j	.main_ID3_for_incr
.main_ID3_for_incr:
	mv	VirtualReg_44, VirtualReg_13
	li	VirtualReg_45, 1
	add	fuckLLVM_36, VirtualReg_44, VirtualReg_45
	mv	VirtualReg_13, fuckLLVM_36
	j	.main_ID3_for_condition
.main_ID3_for_out:
	li	VirtualReg_46, 0
	mv	VirtualReg_12, VirtualReg_46
	j	.main_return
.main_return:
	mv	VirtualReg_47, VirtualReg_12
	mv	a0, VirtualReg_47
	mv	s1, VirtualReg_1
	mv	s2, VirtualReg_2
	mv	s3, VirtualReg_3
	mv	s4, VirtualReg_4
	mv	s5, VirtualReg_5
	mv	s6, VirtualReg_6
	mv	s7, VirtualReg_7
	mv	s8, VirtualReg_8
	mv	s9, VirtualReg_9
	mv	s10, VirtualReg_10
	mv	s11, VirtualReg_11

	.section	.sbss
	.type	fuckLLVM_n,@object
	.globl	fuckLLVM_n
	.p2align	2
fuckLLVM_n:
	.word	0
	.size	fuckLLVM_n, 8

	.section	.sbss
	.type	fuckLLVM_m,@object
	.globl	fuckLLVM_m
	.p2align	2
fuckLLVM_m:
	.word	0
	.size	fuckLLVM_m, 8

	.section	.sbss
	.type	fuckLLVM_g,@object
	.globl	fuckLLVM_g
	.p2align	2
fuckLLVM_g:
	.word	0
	.size	fuckLLVM_g, 8

	.section	.sbss
	.type	fuckLLVM_INF,@object
	.globl	fuckLLVM_INF
	.p2align	2
fuckLLVM_INF:
	.word	10000000
	.size	fuckLLVM_INF, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"-1 "
	.size	fuckLLVM_.str.0, 3

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"  "
	.size	fuckLLVM_.str.1, 2

	.section	.rodata
	.type	fuckLLVM_.str.2,@object
fuckLLVM_.str.2:
	.asciz	" "
	.size	fuckLLVM_.str.2, 1

