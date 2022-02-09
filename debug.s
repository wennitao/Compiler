	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	mv	VirtualReg_0, s1
	mv	VirtualReg_1, s2
	mv	VirtualReg_2, s3
	mv	VirtualReg_3, s4
	mv	VirtualReg_4, s5
	mv	VirtualReg_5, s6
	mv	VirtualReg_6, s7
	mv	VirtualReg_7, s8
	mv	VirtualReg_8, s9
	mv	VirtualReg_9, s10
	mv	VirtualReg_10, s11
	j	.__init_alloca
.__init_alloca:
	j	.__init_entry
.__init_entry:
	j	.__init_return
.__init_return:
	mv	s1, VirtualReg_0
	mv	s2, VirtualReg_1
	mv	s3, VirtualReg_2
	mv	s4, VirtualReg_3
	mv	s5, VirtualReg_4
	mv	s6, VirtualReg_5
	mv	s7, VirtualReg_6
	mv	s8, VirtualReg_7
	mv	s9, VirtualReg_8
	mv	s10, VirtualReg_9
	mv	s11, VirtualReg_10

	.globl	Edge
	.p2align	2
	.type	Edge,@function
Edge:
.Edge_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.Edge_alloca
.Edge_alloca:
.Edge_entry:
	mv	VirtualReg_12, VirtualReg_0
	j	.Edge_return
.Edge_return:
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

	.globl	EdgeList
	.p2align	2
	.type	EdgeList,@function
EdgeList:
.EdgeList_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.EdgeList_alloca
.EdgeList_alloca:
.EdgeList_entry:
	mv	VirtualReg_12, VirtualReg_0
	j	.EdgeList_return
.EdgeList_return:
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

	.globl	classEdgeList_init
	.p2align	2
	.type	classEdgeList_init,@function
classEdgeList_init:
.classEdgeList_init_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
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
	j	.classEdgeList_init_alloca
.classEdgeList_init_alloca:
	j	.classEdgeList_init_entry
.classEdgeList_init_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_18, VirtualReg_14
	mv	VirtualReg_15, VirtualReg_1
	mv	VirtualReg_16, VirtualReg_2
	addi	VirtualReg_19, VirtualReg_18, 0
	mv	VirtualReg_20, VirtualReg_16
	li	VirtualReg_21, 12
	mul	fuckLLVM_11, VirtualReg_20, VirtualReg_21
	li	VirtualReg_22, 4
	add	fuckLLVM_12, fuckLLVM_11, VirtualReg_22
	mv	a0, fuckLLVM_12
	call	malloc
	mv	VirtualReg_23, a0
	sw	VirtualReg_20, 0(VirtualReg_23)
	li	VirtualReg_26, 1
	li	VirtualReg_27, 4
	mul	VirtualReg_25, VirtualReg_26, VirtualReg_27
	add	VirtualReg_24, VirtualReg_23, VirtualReg_25
	sw	VirtualReg_24, 0(VirtualReg_19)
	addi	VirtualReg_28, VirtualReg_18, 8
	mv	VirtualReg_29, VirtualReg_16
	li	VirtualReg_30, 4
	mul	fuckLLVM_21, VirtualReg_29, VirtualReg_30
	li	VirtualReg_31, 4
	add	fuckLLVM_22, fuckLLVM_21, VirtualReg_31
	mv	a0, fuckLLVM_22
	call	malloc
	mv	VirtualReg_32, a0
	sw	VirtualReg_29, 0(VirtualReg_32)
	li	VirtualReg_35, 1
	li	VirtualReg_36, 4
	mul	VirtualReg_34, VirtualReg_35, VirtualReg_36
	add	VirtualReg_33, VirtualReg_32, VirtualReg_34
	sw	VirtualReg_33, 0(VirtualReg_28)
	addi	VirtualReg_37, VirtualReg_18, 16
	mv	VirtualReg_38, VirtualReg_15
	li	VirtualReg_39, 4
	mul	fuckLLVM_31, VirtualReg_38, VirtualReg_39
	li	VirtualReg_40, 4
	add	fuckLLVM_32, fuckLLVM_31, VirtualReg_40
	mv	a0, fuckLLVM_32
	call	malloc
	mv	VirtualReg_41, a0
	sw	VirtualReg_38, 0(VirtualReg_41)
	li	VirtualReg_44, 1
	li	VirtualReg_45, 4
	mul	VirtualReg_43, VirtualReg_44, VirtualReg_45
	add	VirtualReg_42, VirtualReg_41, VirtualReg_43
	sw	VirtualReg_42, 0(VirtualReg_37)
	li	VirtualReg_46, 0
	mv	VirtualReg_17, VirtualReg_46
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_condition:
	mv	VirtualReg_47, VirtualReg_17
	mv	VirtualReg_48, VirtualReg_16
	slt	fuckLLVM_41, VirtualReg_47, VirtualReg_48
	bnez	fuckLLVM_41, .classEdgeList_init_ID38_for_suite
	j	.classEdgeList_init_ID38_for_out
.classEdgeList_init_ID38_for_suite:
	addi	VirtualReg_49, VirtualReg_18, 8
	lw	VirtualReg_50, 0(VirtualReg_49)
	mv	VirtualReg_51, VirtualReg_17
	li	VirtualReg_54, 4
	mul	VirtualReg_53, VirtualReg_51, VirtualReg_54
	add	VirtualReg_52, VirtualReg_50, VirtualReg_53
	li	VirtualReg_55, 0
	li	VirtualReg_56, 1
	sub	fuckLLVM_46, VirtualReg_55, VirtualReg_56
	sw	fuckLLVM_46, 0(VirtualReg_52)
	j	.classEdgeList_init_ID38_for_incr
.classEdgeList_init_ID38_for_incr:
	mv	VirtualReg_57, VirtualReg_17
	li	VirtualReg_58, 1
	add	fuckLLVM_48, VirtualReg_57, VirtualReg_58
	mv	VirtualReg_17, fuckLLVM_48
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_out:
	li	VirtualReg_59, 0
	mv	VirtualReg_17, VirtualReg_59
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_condition:
	mv	VirtualReg_60, VirtualReg_17
	mv	VirtualReg_61, VirtualReg_15
	slt	fuckLLVM_51, VirtualReg_60, VirtualReg_61
	bnez	fuckLLVM_51, .classEdgeList_init_ID48_for_suite
	j	.classEdgeList_init_ID48_for_out
.classEdgeList_init_ID48_for_suite:
	addi	VirtualReg_62, VirtualReg_18, 16
	lw	VirtualReg_63, 0(VirtualReg_62)
	mv	VirtualReg_64, VirtualReg_17
	li	VirtualReg_67, 4
	mul	VirtualReg_66, VirtualReg_64, VirtualReg_67
	add	VirtualReg_65, VirtualReg_63, VirtualReg_66
	li	VirtualReg_68, 0
	li	VirtualReg_69, 1
	sub	fuckLLVM_56, VirtualReg_68, VirtualReg_69
	sw	fuckLLVM_56, 0(VirtualReg_65)
	j	.classEdgeList_init_ID48_for_incr
.classEdgeList_init_ID48_for_incr:
	mv	VirtualReg_70, VirtualReg_17
	li	VirtualReg_71, 1
	add	fuckLLVM_58, VirtualReg_70, VirtualReg_71
	mv	VirtualReg_17, fuckLLVM_58
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_out:
	addi	VirtualReg_72, VirtualReg_18, 24
	li	VirtualReg_73, 0
	sw	VirtualReg_73, 0(VirtualReg_72)
	j	.classEdgeList_init_return
.classEdgeList_init_return:
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

	.globl	classEdgeList_addEdge
	.p2align	2
	.type	classEdgeList_addEdge,@function
classEdgeList_addEdge:
.classEdgeList_addEdge_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
	mv	VirtualReg_3, a3
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
	j	.classEdgeList_addEdge_alloca
.classEdgeList_addEdge_alloca:
	j	.classEdgeList_addEdge_entry
.classEdgeList_addEdge_entry:
	mv	VirtualReg_15, VirtualReg_0
	mv	VirtualReg_20, VirtualReg_15
	mv	VirtualReg_16, VirtualReg_1
	mv	VirtualReg_17, VirtualReg_2
	mv	VirtualReg_18, VirtualReg_3
	li	VirtualReg_21, 12
	mv	a0, VirtualReg_21
	call	malloc
	mv	VirtualReg_22, a0
	mv	a0, VirtualReg_22
	call	Edge
	mv	VirtualReg_19, VirtualReg_22
	mv	VirtualReg_23, VirtualReg_19
	addi	VirtualReg_24, VirtualReg_23, 0
	mv	VirtualReg_25, VirtualReg_16
	sw	VirtualReg_25, 0(VirtualReg_24)
	mv	VirtualReg_26, VirtualReg_19
	addi	VirtualReg_27, VirtualReg_26, 4
	mv	VirtualReg_28, VirtualReg_17
	sw	VirtualReg_28, 0(VirtualReg_27)
	mv	VirtualReg_29, VirtualReg_19
	addi	VirtualReg_30, VirtualReg_29, 8
	mv	VirtualReg_31, VirtualReg_18
	sw	VirtualReg_31, 0(VirtualReg_30)
	addi	VirtualReg_32, VirtualReg_20, 0
	lw	VirtualReg_33, 0(VirtualReg_32)
	addi	VirtualReg_34, VirtualReg_20, 24
	lw	VirtualReg_35, 0(VirtualReg_34)
	li	VirtualReg_38, 12
	mul	VirtualReg_37, VirtualReg_35, VirtualReg_38
	add	VirtualReg_36, VirtualReg_33, VirtualReg_37
	mv	VirtualReg_39, VirtualReg_19
	sw	VirtualReg_39, 0(VirtualReg_36)
	addi	VirtualReg_40, VirtualReg_20, 8
	lw	VirtualReg_41, 0(VirtualReg_40)
	addi	VirtualReg_42, VirtualReg_20, 24
	lw	VirtualReg_43, 0(VirtualReg_42)
	li	VirtualReg_46, 4
	mul	VirtualReg_45, VirtualReg_43, VirtualReg_46
	add	VirtualReg_44, VirtualReg_41, VirtualReg_45
	addi	VirtualReg_47, VirtualReg_20, 16
	lw	VirtualReg_48, 0(VirtualReg_47)
	mv	VirtualReg_49, VirtualReg_16
	li	VirtualReg_52, 4
	mul	VirtualReg_51, VirtualReg_49, VirtualReg_52
	add	VirtualReg_50, VirtualReg_48, VirtualReg_51
	lw	VirtualReg_53, 0(VirtualReg_50)
	sw	VirtualReg_53, 0(VirtualReg_44)
	addi	VirtualReg_54, VirtualReg_20, 16
	lw	VirtualReg_55, 0(VirtualReg_54)
	mv	VirtualReg_56, VirtualReg_16
	li	VirtualReg_59, 4
	mul	VirtualReg_58, VirtualReg_56, VirtualReg_59
	add	VirtualReg_57, VirtualReg_55, VirtualReg_58
	addi	VirtualReg_60, VirtualReg_20, 24
	lw	VirtualReg_61, 0(VirtualReg_60)
	sw	VirtualReg_61, 0(VirtualReg_57)
	addi	VirtualReg_62, VirtualReg_20, 24
	lw	VirtualReg_63, 0(VirtualReg_62)
	li	VirtualReg_64, 1
	add	fuckLLVM_48, VirtualReg_63, VirtualReg_64
	sw	fuckLLVM_48, 0(VirtualReg_62)
	j	.classEdgeList_addEdge_return
.classEdgeList_addEdge_return:
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

	.globl	classEdgeList_nVertices
	.p2align	2
	.type	classEdgeList_nVertices,@function
classEdgeList_nVertices:
.classEdgeList_nVertices_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classEdgeList_nVertices_alloca
.classEdgeList_nVertices_alloca:
	j	.classEdgeList_nVertices_entry
.classEdgeList_nVertices_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_12
	addi	VirtualReg_15, VirtualReg_14, 16
	lw	VirtualReg_16, 0(VirtualReg_15)
	li	VirtualReg_19, -1
	li	VirtualReg_20, 4
	mul	VirtualReg_18, VirtualReg_19, VirtualReg_20
	add	VirtualReg_17, VirtualReg_16, VirtualReg_18
	lw	VirtualReg_21, 0(VirtualReg_17)
	mv	VirtualReg_13, VirtualReg_21
	j	.classEdgeList_nVertices_return
.classEdgeList_nVertices_return:
	mv	VirtualReg_22, VirtualReg_13
	mv	a0, VirtualReg_22
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

	.globl	classEdgeList_nEdges
	.p2align	2
	.type	classEdgeList_nEdges,@function
classEdgeList_nEdges:
.classEdgeList_nEdges_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classEdgeList_nEdges_alloca
.classEdgeList_nEdges_alloca:
	j	.classEdgeList_nEdges_entry
.classEdgeList_nEdges_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_12
	addi	VirtualReg_15, VirtualReg_14, 0
	lw	VirtualReg_16, 0(VirtualReg_15)
	li	VirtualReg_19, -1
	li	VirtualReg_20, 4
	mul	VirtualReg_18, VirtualReg_19, VirtualReg_20
	add	VirtualReg_17, VirtualReg_16, VirtualReg_18
	lw	VirtualReg_21, 0(VirtualReg_17)
	mv	VirtualReg_13, VirtualReg_21
	j	.classEdgeList_nEdges_return
.classEdgeList_nEdges_return:
	mv	VirtualReg_22, VirtualReg_13
	mv	a0, VirtualReg_22
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

	.globl	Array_Node
	.p2align	2
	.type	Array_Node,@function
Array_Node:
.Array_Node_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.Array_Node_alloca
.Array_Node_alloca:
.Array_Node_entry:
	mv	VirtualReg_12, VirtualReg_0
	addi	VirtualReg_13, VirtualReg_0, 8
	li	VirtualReg_14, 0
	sw	VirtualReg_14, 0(VirtualReg_13)
	addi	VirtualReg_15, VirtualReg_0, 0
	li	VirtualReg_16, 16
	li	VirtualReg_17, 8
	mul	fuckLLVM_4, VirtualReg_16, VirtualReg_17
	li	VirtualReg_18, 4
	add	fuckLLVM_5, fuckLLVM_4, VirtualReg_18
	mv	a0, fuckLLVM_5
	call	malloc
	mv	VirtualReg_19, a0
	li	VirtualReg_20, 16
	sw	VirtualReg_20, 0(VirtualReg_19)
	li	VirtualReg_23, 1
	li	VirtualReg_24, 4
	mul	VirtualReg_22, VirtualReg_23, VirtualReg_24
	add	VirtualReg_21, VirtualReg_19, VirtualReg_22
	sw	VirtualReg_21, 0(VirtualReg_15)
	j	.Array_Node_return
.Array_Node_return:
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

	.globl	classArray_Node_push_back
	.p2align	2
	.type	classArray_Node_push_back,@function
classArray_Node_push_back:
.classArray_Node_push_back_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
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
	j	.classArray_Node_push_back_alloca
.classArray_Node_push_back_alloca:
	j	.classArray_Node_push_back_entry
.classArray_Node_push_back_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	mv	a0, VirtualReg_15
	call	classArray_Node_size
	mv	VirtualReg_16, a0
	addi	VirtualReg_17, VirtualReg_15, 0
	lw	VirtualReg_18, 0(VirtualReg_17)
	li	VirtualReg_21, -1
	li	VirtualReg_22, 4
	mul	VirtualReg_20, VirtualReg_21, VirtualReg_22
	add	VirtualReg_19, VirtualReg_18, VirtualReg_20
	lw	VirtualReg_23, 0(VirtualReg_19)
	xor	fuckLLVM_12, VirtualReg_16, VirtualReg_23
	sltiu	fuckLLVM_12, fuckLLVM_12, 1
	bnez	fuckLLVM_12, .classArray_Node_push_back_ID12_if_true
	j	.classArray_Node_push_back_ID12_if_out
.classArray_Node_push_back_ID12_if_true:
	mv	a0, VirtualReg_15
	call	classArray_Node_doubleStorage
	j	.classArray_Node_push_back_ID12_if_out
.classArray_Node_push_back_ID12_if_out:
	addi	VirtualReg_24, VirtualReg_15, 0
	lw	VirtualReg_25, 0(VirtualReg_24)
	addi	VirtualReg_26, VirtualReg_15, 8
	lw	VirtualReg_27, 0(VirtualReg_26)
	li	VirtualReg_30, 8
	mul	VirtualReg_29, VirtualReg_27, VirtualReg_30
	add	VirtualReg_28, VirtualReg_25, VirtualReg_29
	mv	VirtualReg_31, VirtualReg_14
	sw	VirtualReg_31, 0(VirtualReg_28)
	addi	VirtualReg_32, VirtualReg_15, 8
	lw	VirtualReg_33, 0(VirtualReg_32)
	li	VirtualReg_34, 1
	add	fuckLLVM_23, VirtualReg_33, VirtualReg_34
	sw	fuckLLVM_23, 0(VirtualReg_32)
	j	.classArray_Node_push_back_return
.classArray_Node_push_back_return:
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

	.globl	classArray_Node_pop_back
	.p2align	2
	.type	classArray_Node_pop_back,@function
classArray_Node_pop_back:
.classArray_Node_pop_back_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classArray_Node_pop_back_alloca
.classArray_Node_pop_back_alloca:
	j	.classArray_Node_pop_back_entry
.classArray_Node_pop_back_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_12
	addi	VirtualReg_15, VirtualReg_14, 8
	lw	VirtualReg_16, 0(VirtualReg_15)
	li	VirtualReg_17, 1
	sub	fuckLLVM_6, VirtualReg_16, VirtualReg_17
	sw	fuckLLVM_6, 0(VirtualReg_15)
	addi	VirtualReg_18, VirtualReg_14, 0
	lw	VirtualReg_19, 0(VirtualReg_18)
	addi	VirtualReg_20, VirtualReg_14, 8
	lw	VirtualReg_21, 0(VirtualReg_20)
	li	VirtualReg_24, 8
	mul	VirtualReg_23, VirtualReg_21, VirtualReg_24
	add	VirtualReg_22, VirtualReg_19, VirtualReg_23
	lw	VirtualReg_25, 0(VirtualReg_22)
	mv	VirtualReg_13, VirtualReg_25
	j	.classArray_Node_pop_back_return
.classArray_Node_pop_back_return:
	mv	VirtualReg_26, VirtualReg_13
	mv	a0, VirtualReg_26
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

	.globl	classArray_Node_back
	.p2align	2
	.type	classArray_Node_back,@function
classArray_Node_back:
.classArray_Node_back_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classArray_Node_back_alloca
.classArray_Node_back_alloca:
	j	.classArray_Node_back_entry
.classArray_Node_back_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_12
	addi	VirtualReg_15, VirtualReg_14, 0
	lw	VirtualReg_16, 0(VirtualReg_15)
	addi	VirtualReg_17, VirtualReg_14, 8
	lw	VirtualReg_18, 0(VirtualReg_17)
	li	VirtualReg_19, 1
	sub	fuckLLVM_8, VirtualReg_18, VirtualReg_19
	li	VirtualReg_22, 8
	mul	VirtualReg_21, fuckLLVM_8, VirtualReg_22
	add	VirtualReg_20, VirtualReg_16, VirtualReg_21
	lw	VirtualReg_23, 0(VirtualReg_20)
	mv	VirtualReg_13, VirtualReg_23
	j	.classArray_Node_back_return
.classArray_Node_back_return:
	mv	VirtualReg_24, VirtualReg_13
	mv	a0, VirtualReg_24
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

	.globl	classArray_Node_front
	.p2align	2
	.type	classArray_Node_front,@function
classArray_Node_front:
.classArray_Node_front_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classArray_Node_front_alloca
.classArray_Node_front_alloca:
	j	.classArray_Node_front_entry
.classArray_Node_front_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_12
	addi	VirtualReg_15, VirtualReg_14, 0
	lw	VirtualReg_16, 0(VirtualReg_15)
	li	VirtualReg_19, 0
	li	VirtualReg_20, 8
	mul	VirtualReg_18, VirtualReg_19, VirtualReg_20
	add	VirtualReg_17, VirtualReg_16, VirtualReg_18
	lw	VirtualReg_21, 0(VirtualReg_17)
	mv	VirtualReg_13, VirtualReg_21
	j	.classArray_Node_front_return
.classArray_Node_front_return:
	mv	VirtualReg_22, VirtualReg_13
	mv	a0, VirtualReg_22
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

	.globl	classArray_Node_size
	.p2align	2
	.type	classArray_Node_size,@function
classArray_Node_size:
.classArray_Node_size_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classArray_Node_size_alloca
.classArray_Node_size_alloca:
	j	.classArray_Node_size_entry
.classArray_Node_size_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_12
	addi	VirtualReg_15, VirtualReg_14, 8
	lw	VirtualReg_16, 0(VirtualReg_15)
	mv	VirtualReg_13, VirtualReg_16
	j	.classArray_Node_size_return
.classArray_Node_size_return:
	mv	VirtualReg_17, VirtualReg_13
	mv	a0, VirtualReg_17
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

	.globl	classArray_Node_resize
	.p2align	2
	.type	classArray_Node_resize,@function
classArray_Node_resize:
.classArray_Node_resize_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
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
	j	.classArray_Node_resize_alloca
.classArray_Node_resize_alloca:
	j	.classArray_Node_resize_entry
.classArray_Node_resize_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	j	.classArray_Node_resize_ID6_while_condition
.classArray_Node_resize_ID6_while_condition:
	addi	VirtualReg_16, VirtualReg_15, 0
	lw	VirtualReg_17, 0(VirtualReg_16)
	li	VirtualReg_20, -1
	li	VirtualReg_21, 4
	mul	VirtualReg_19, VirtualReg_20, VirtualReg_21
	add	VirtualReg_18, VirtualReg_17, VirtualReg_19
	lw	VirtualReg_22, 0(VirtualReg_18)
	mv	VirtualReg_23, VirtualReg_14
	slt	fuckLLVM_12, VirtualReg_22, VirtualReg_23
	bnez	fuckLLVM_12, .classArray_Node_resize_ID13_while_suite
	j	.classArray_Node_resize_ID13_while_out
.classArray_Node_resize_ID13_while_suite:
	mv	a0, VirtualReg_15
	call	classArray_Node_doubleStorage
	j	.classArray_Node_resize_ID6_while_condition
.classArray_Node_resize_ID13_while_out:
	addi	VirtualReg_24, VirtualReg_15, 8
	mv	VirtualReg_25, VirtualReg_14
	sw	VirtualReg_25, 0(VirtualReg_24)
	j	.classArray_Node_resize_return
.classArray_Node_resize_return:
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

	.globl	classArray_Node_get
	.p2align	2
	.type	classArray_Node_get,@function
classArray_Node_get:
.classArray_Node_get_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
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
	j	.classArray_Node_get_alloca
.classArray_Node_get_alloca:
	j	.classArray_Node_get_entry
.classArray_Node_get_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_16, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	addi	VirtualReg_17, VirtualReg_16, 0
	lw	VirtualReg_18, 0(VirtualReg_17)
	mv	VirtualReg_19, VirtualReg_14
	li	VirtualReg_22, 8
	mul	VirtualReg_21, VirtualReg_19, VirtualReg_22
	add	VirtualReg_20, VirtualReg_18, VirtualReg_21
	lw	VirtualReg_23, 0(VirtualReg_20)
	mv	VirtualReg_15, VirtualReg_23
	j	.classArray_Node_get_return
.classArray_Node_get_return:
	mv	VirtualReg_24, VirtualReg_15
	mv	a0, VirtualReg_24
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

	.globl	classArray_Node_set
	.p2align	2
	.type	classArray_Node_set,@function
classArray_Node_set:
.classArray_Node_set_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
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
	j	.classArray_Node_set_alloca
.classArray_Node_set_alloca:
	j	.classArray_Node_set_entry
.classArray_Node_set_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_17, VirtualReg_14
	mv	VirtualReg_15, VirtualReg_1
	mv	VirtualReg_16, VirtualReg_2
	addi	VirtualReg_18, VirtualReg_17, 0
	lw	VirtualReg_19, 0(VirtualReg_18)
	mv	VirtualReg_20, VirtualReg_15
	li	VirtualReg_23, 8
	mul	VirtualReg_22, VirtualReg_20, VirtualReg_23
	add	VirtualReg_21, VirtualReg_19, VirtualReg_22
	mv	VirtualReg_24, VirtualReg_16
	sw	VirtualReg_24, 0(VirtualReg_21)
	j	.classArray_Node_set_return
.classArray_Node_set_return:
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

	.globl	classArray_Node_swap
	.p2align	2
	.type	classArray_Node_swap,@function
classArray_Node_swap:
.classArray_Node_swap_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
	mv	VirtualReg_2, a2
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
	j	.classArray_Node_swap_alloca
.classArray_Node_swap_alloca:
	j	.classArray_Node_swap_entry
.classArray_Node_swap_entry:
	mv	VirtualReg_14, VirtualReg_0
	mv	VirtualReg_18, VirtualReg_14
	mv	VirtualReg_15, VirtualReg_1
	mv	VirtualReg_16, VirtualReg_2
	addi	VirtualReg_19, VirtualReg_18, 0
	lw	VirtualReg_20, 0(VirtualReg_19)
	mv	VirtualReg_21, VirtualReg_15
	li	VirtualReg_24, 8
	mul	VirtualReg_23, VirtualReg_21, VirtualReg_24
	add	VirtualReg_22, VirtualReg_20, VirtualReg_23
	lw	VirtualReg_25, 0(VirtualReg_22)
	mv	VirtualReg_17, VirtualReg_25
	addi	VirtualReg_26, VirtualReg_18, 0
	lw	VirtualReg_27, 0(VirtualReg_26)
	mv	VirtualReg_28, VirtualReg_15
	li	VirtualReg_31, 8
	mul	VirtualReg_30, VirtualReg_28, VirtualReg_31
	add	VirtualReg_29, VirtualReg_27, VirtualReg_30
	addi	VirtualReg_32, VirtualReg_18, 0
	lw	VirtualReg_33, 0(VirtualReg_32)
	mv	VirtualReg_34, VirtualReg_16
	li	VirtualReg_37, 8
	mul	VirtualReg_36, VirtualReg_34, VirtualReg_37
	add	VirtualReg_35, VirtualReg_33, VirtualReg_36
	lw	VirtualReg_38, 0(VirtualReg_35)
	sw	VirtualReg_38, 0(VirtualReg_29)
	addi	VirtualReg_39, VirtualReg_18, 0
	lw	VirtualReg_40, 0(VirtualReg_39)
	mv	VirtualReg_41, VirtualReg_16
	li	VirtualReg_44, 8
	mul	VirtualReg_43, VirtualReg_41, VirtualReg_44
	add	VirtualReg_42, VirtualReg_40, VirtualReg_43
	mv	VirtualReg_45, VirtualReg_17
	sw	VirtualReg_45, 0(VirtualReg_42)
	j	.classArray_Node_swap_return
.classArray_Node_swap_return:
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

	.globl	classArray_Node_doubleStorage
	.p2align	2
	.type	classArray_Node_doubleStorage,@function
classArray_Node_doubleStorage:
.classArray_Node_doubleStorage_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classArray_Node_doubleStorage_alloca
.classArray_Node_doubleStorage_alloca:
	j	.classArray_Node_doubleStorage_entry
.classArray_Node_doubleStorage_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_12
	addi	VirtualReg_16, VirtualReg_15, 0
	lw	VirtualReg_17, 0(VirtualReg_16)
	mv	VirtualReg_13, VirtualReg_17
	addi	VirtualReg_18, VirtualReg_15, 8
	lw	VirtualReg_19, 0(VirtualReg_18)
	mv	VirtualReg_14, VirtualReg_19
	addi	VirtualReg_20, VirtualReg_15, 0
	mv	VirtualReg_21, VirtualReg_13
	li	VirtualReg_24, -1
	li	VirtualReg_25, 4
	mul	VirtualReg_23, VirtualReg_24, VirtualReg_25
	add	VirtualReg_22, VirtualReg_21, VirtualReg_23
	lw	VirtualReg_26, 0(VirtualReg_22)
	li	VirtualReg_27, 2
	mul	fuckLLVM_16, VirtualReg_26, VirtualReg_27
	li	VirtualReg_28, 8
	mul	fuckLLVM_18, fuckLLVM_16, VirtualReg_28
	li	VirtualReg_29, 4
	add	fuckLLVM_19, fuckLLVM_18, VirtualReg_29
	mv	a0, fuckLLVM_19
	call	malloc
	mv	VirtualReg_30, a0
	sw	fuckLLVM_16, 0(VirtualReg_30)
	li	VirtualReg_33, 1
	li	VirtualReg_34, 4
	mul	VirtualReg_32, VirtualReg_33, VirtualReg_34
	add	VirtualReg_31, VirtualReg_30, VirtualReg_32
	sw	VirtualReg_31, 0(VirtualReg_20)
	addi	VirtualReg_35, VirtualReg_15, 8
	li	VirtualReg_36, 0
	sw	VirtualReg_36, 0(VirtualReg_35)
	j	.classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_doubleStorage_ID25_for_condition:
	addi	VirtualReg_37, VirtualReg_15, 8
	lw	VirtualReg_38, 0(VirtualReg_37)
	mv	VirtualReg_39, VirtualReg_14
	xor	fuckLLVM_29, VirtualReg_38, VirtualReg_39
	sltiu	fuckLLVM_29, fuckLLVM_29, 1
	xori	fuckLLVM_29, fuckLLVM_29, 1
	bnez	fuckLLVM_29, .classArray_Node_doubleStorage_ID25_for_suite
	j	.classArray_Node_doubleStorage_ID25_for_out
.classArray_Node_doubleStorage_ID25_for_suite:
	addi	VirtualReg_40, VirtualReg_15, 0
	lw	VirtualReg_41, 0(VirtualReg_40)
	addi	VirtualReg_42, VirtualReg_15, 8
	lw	VirtualReg_43, 0(VirtualReg_42)
	li	VirtualReg_46, 8
	mul	VirtualReg_45, VirtualReg_43, VirtualReg_46
	add	VirtualReg_44, VirtualReg_41, VirtualReg_45
	mv	VirtualReg_47, VirtualReg_13
	addi	VirtualReg_48, VirtualReg_15, 8
	lw	VirtualReg_49, 0(VirtualReg_48)
	li	VirtualReg_52, 8
	mul	VirtualReg_51, VirtualReg_49, VirtualReg_52
	add	VirtualReg_50, VirtualReg_47, VirtualReg_51
	lw	VirtualReg_53, 0(VirtualReg_50)
	sw	VirtualReg_53, 0(VirtualReg_44)
	j	.classArray_Node_doubleStorage_ID25_for_incr
.classArray_Node_doubleStorage_ID25_for_incr:
	addi	VirtualReg_54, VirtualReg_15, 8
	lw	VirtualReg_55, 0(VirtualReg_54)
	li	VirtualReg_56, 1
	add	fuckLLVM_43, VirtualReg_55, VirtualReg_56
	sw	fuckLLVM_43, 0(VirtualReg_54)
	j	.classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_doubleStorage_ID25_for_out:
	j	.classArray_Node_doubleStorage_return
.classArray_Node_doubleStorage_return:
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

	.globl	Heap_Node
	.p2align	2
	.type	Heap_Node,@function
Heap_Node:
.Heap_Node_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.Heap_Node_alloca
.Heap_Node_alloca:
.Heap_Node_entry:
	mv	VirtualReg_12, VirtualReg_0
	addi	VirtualReg_13, VirtualReg_0, 0
	li	VirtualReg_14, 12
	mv	a0, VirtualReg_14
	call	malloc
	mv	VirtualReg_15, a0
	mv	a0, VirtualReg_15
	call	Array_Node
	sw	VirtualReg_15, 0(VirtualReg_13)
	j	.Heap_Node_return
.Heap_Node_return:
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

	.globl	classHeap_Node_push
	.p2align	2
	.type	classHeap_Node_push,@function
classHeap_Node_push:
.classHeap_Node_push_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
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
	j	.classHeap_Node_push_alloca
.classHeap_Node_push_alloca:
	j	.classHeap_Node_push_entry
.classHeap_Node_push_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_17, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	addi	VirtualReg_18, VirtualReg_17, 0
	lw	VirtualReg_19, 0(VirtualReg_18)
	mv	VirtualReg_20, VirtualReg_14
	mv	a0, VirtualReg_19
	mv	a1, VirtualReg_20
	call	classArray_Node_push_back
	mv	a0, VirtualReg_17
	call	classHeap_Node_size
	mv	VirtualReg_21, a0
	li	VirtualReg_22, 1
	sub	fuckLLVM_13, VirtualReg_21, VirtualReg_22
	mv	VirtualReg_15, fuckLLVM_13
	j	.classHeap_Node_push_ID14_while_condition
.classHeap_Node_push_ID14_while_condition:
	mv	VirtualReg_23, VirtualReg_15
	li	VirtualReg_24, 0
	slt	fuckLLVM_15, VirtualReg_24, VirtualReg_23
	bnez	fuckLLVM_15, .classHeap_Node_push_ID16_while_suite
	j	.classHeap_Node_push_ID16_while_out
.classHeap_Node_push_ID29_if_true:
	j	.classHeap_Node_push_ID16_while_out
.classHeap_Node_push_ID29_if_out:
	addi	VirtualReg_25, VirtualReg_17, 0
	lw	VirtualReg_26, 0(VirtualReg_25)
	mv	VirtualReg_27, VirtualReg_16
	mv	VirtualReg_28, VirtualReg_15
	mv	a0, VirtualReg_26
	mv	a1, VirtualReg_27
	mv	a2, VirtualReg_28
	call	classArray_Node_swap
	mv	VirtualReg_29, VirtualReg_16
	mv	VirtualReg_15, VirtualReg_29
	j	.classHeap_Node_push_ID14_while_condition
.classHeap_Node_push_ID16_while_suite:
	mv	VirtualReg_30, VirtualReg_15
	mv	a0, VirtualReg_17
	mv	a1, VirtualReg_30
	call	classHeap_Node_pnt
	mv	VirtualReg_31, a0
	mv	VirtualReg_16, VirtualReg_31
	addi	VirtualReg_32, VirtualReg_17, 0
	lw	VirtualReg_33, 0(VirtualReg_32)
	mv	VirtualReg_34, VirtualReg_16
	mv	a0, VirtualReg_33
	mv	a1, VirtualReg_34
	call	classArray_Node_get
	mv	VirtualReg_35, a0
	mv	a0, VirtualReg_35
	call	classNode_key_
	mv	VirtualReg_36, a0
	addi	VirtualReg_37, VirtualReg_17, 0
	lw	VirtualReg_38, 0(VirtualReg_37)
	mv	VirtualReg_39, VirtualReg_15
	mv	a0, VirtualReg_38
	mv	a1, VirtualReg_39
	call	classArray_Node_get
	mv	VirtualReg_40, a0
	mv	a0, VirtualReg_40
	call	classNode_key_
	mv	VirtualReg_41, a0
	slt	fuckLLVM_29, VirtualReg_36, VirtualReg_41
	xori	fuckLLVM_29, fuckLLVM_29, 1
	bnez	fuckLLVM_29, .classHeap_Node_push_ID29_if_true
	j	.classHeap_Node_push_ID29_if_out
.classHeap_Node_push_ID16_while_out:
	j	.classHeap_Node_push_return
.classHeap_Node_push_return:
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

	.globl	classHeap_Node_pop
	.p2align	2
	.type	classHeap_Node_pop,@function
classHeap_Node_pop:
.classHeap_Node_pop_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classHeap_Node_pop_alloca
.classHeap_Node_pop_alloca:
	j	.classHeap_Node_pop_entry
.classHeap_Node_pop_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_15, VirtualReg_12
	addi	VirtualReg_16, VirtualReg_15, 0
	lw	VirtualReg_17, 0(VirtualReg_16)
	mv	a0, VirtualReg_17
	call	classArray_Node_front
	mv	VirtualReg_18, a0
	mv	VirtualReg_14, VirtualReg_18
	addi	VirtualReg_19, VirtualReg_15, 0
	lw	VirtualReg_20, 0(VirtualReg_19)
	mv	a0, VirtualReg_15
	call	classHeap_Node_size
	mv	VirtualReg_21, a0
	li	VirtualReg_22, 1
	sub	fuckLLVM_12, VirtualReg_21, VirtualReg_22
	mv	a0, VirtualReg_20
	li	VirtualReg_23, 0
	mv	a1, VirtualReg_23
	mv	a2, fuckLLVM_12
	call	classArray_Node_swap
	addi	VirtualReg_24, VirtualReg_15, 0
	lw	VirtualReg_25, 0(VirtualReg_24)
	mv	a0, VirtualReg_25
	call	classArray_Node_pop_back
	mv	VirtualReg_26, a0
	mv	a0, VirtualReg_15
	li	VirtualReg_27, 0
	mv	a1, VirtualReg_27
	call	classHeap_Node_maxHeapify
	mv	VirtualReg_28, VirtualReg_14
	mv	VirtualReg_13, VirtualReg_28
	j	.classHeap_Node_pop_return
.classHeap_Node_pop_return:
	mv	VirtualReg_29, VirtualReg_13
	mv	a0, VirtualReg_29
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

	.globl	classHeap_Node_top
	.p2align	2
	.type	classHeap_Node_top,@function
classHeap_Node_top:
.classHeap_Node_top_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classHeap_Node_top_alloca
.classHeap_Node_top_alloca:
	j	.classHeap_Node_top_entry
.classHeap_Node_top_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_12
	addi	VirtualReg_15, VirtualReg_14, 0
	lw	VirtualReg_16, 0(VirtualReg_15)
	mv	a0, VirtualReg_16
	call	classArray_Node_front
	mv	VirtualReg_17, a0
	mv	VirtualReg_13, VirtualReg_17
	j	.classHeap_Node_top_return
.classHeap_Node_top_return:
	mv	VirtualReg_18, VirtualReg_13
	mv	a0, VirtualReg_18
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

	.globl	classHeap_Node_size
	.p2align	2
	.type	classHeap_Node_size,@function
classHeap_Node_size:
.classHeap_Node_size_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classHeap_Node_size_alloca
.classHeap_Node_size_alloca:
	j	.classHeap_Node_size_entry
.classHeap_Node_size_entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_12
	addi	VirtualReg_15, VirtualReg_14, 0
	lw	VirtualReg_16, 0(VirtualReg_15)
	mv	a0, VirtualReg_16
	call	classArray_Node_size
	mv	VirtualReg_17, a0
	mv	VirtualReg_13, VirtualReg_17
	j	.classHeap_Node_size_return
.classHeap_Node_size_return:
	mv	VirtualReg_18, VirtualReg_13
	mv	a0, VirtualReg_18
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

	.globl	classHeap_Node_lchild
	.p2align	2
	.type	classHeap_Node_lchild,@function
classHeap_Node_lchild:
.classHeap_Node_lchild_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
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
	j	.classHeap_Node_lchild_alloca
.classHeap_Node_lchild_alloca:
	j	.classHeap_Node_lchild_entry
.classHeap_Node_lchild_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_16, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	mv	VirtualReg_17, VirtualReg_14
	li	VirtualReg_18, 2
	mul	fuckLLVM_7, VirtualReg_17, VirtualReg_18
	li	VirtualReg_19, 1
	add	fuckLLVM_8, fuckLLVM_7, VirtualReg_19
	mv	VirtualReg_15, fuckLLVM_8
	j	.classHeap_Node_lchild_return
.classHeap_Node_lchild_return:
	mv	VirtualReg_20, VirtualReg_15
	mv	a0, VirtualReg_20
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

	.globl	classHeap_Node_rchild
	.p2align	2
	.type	classHeap_Node_rchild,@function
classHeap_Node_rchild:
.classHeap_Node_rchild_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
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
	j	.classHeap_Node_rchild_alloca
.classHeap_Node_rchild_alloca:
	j	.classHeap_Node_rchild_entry
.classHeap_Node_rchild_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_16, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	mv	VirtualReg_17, VirtualReg_14
	li	VirtualReg_18, 2
	mul	fuckLLVM_7, VirtualReg_17, VirtualReg_18
	li	VirtualReg_19, 2
	add	fuckLLVM_8, fuckLLVM_7, VirtualReg_19
	mv	VirtualReg_15, fuckLLVM_8
	j	.classHeap_Node_rchild_return
.classHeap_Node_rchild_return:
	mv	VirtualReg_20, VirtualReg_15
	mv	a0, VirtualReg_20
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

	.globl	classHeap_Node_pnt
	.p2align	2
	.type	classHeap_Node_pnt,@function
classHeap_Node_pnt:
.classHeap_Node_pnt_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
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
	j	.classHeap_Node_pnt_alloca
.classHeap_Node_pnt_alloca:
	j	.classHeap_Node_pnt_entry
.classHeap_Node_pnt_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_16, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	mv	VirtualReg_17, VirtualReg_14
	li	VirtualReg_18, 1
	sub	fuckLLVM_7, VirtualReg_17, VirtualReg_18
	li	VirtualReg_19, 2
	div	fuckLLVM_8, fuckLLVM_7, VirtualReg_19
	mv	VirtualReg_15, fuckLLVM_8
	j	.classHeap_Node_pnt_return
.classHeap_Node_pnt_return:
	mv	VirtualReg_20, VirtualReg_15
	mv	a0, VirtualReg_20
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

	.globl	classHeap_Node_maxHeapify
	.p2align	2
	.type	classHeap_Node_maxHeapify,@function
classHeap_Node_maxHeapify:
.classHeap_Node_maxHeapify_assemblyInit:
	mv	VirtualReg_0, a0
	mv	VirtualReg_1, a1
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
	j	.classHeap_Node_maxHeapify_alloca
.classHeap_Node_maxHeapify_alloca:
	j	.classHeap_Node_maxHeapify_entry
.classHeap_Node_maxHeapify_entry:
	mv	VirtualReg_13, VirtualReg_0
	mv	VirtualReg_18, VirtualReg_13
	mv	VirtualReg_14, VirtualReg_1
	mv	VirtualReg_19, VirtualReg_14
	mv	a0, VirtualReg_18
	mv	a1, VirtualReg_19
	call	classHeap_Node_lchild
	mv	VirtualReg_20, a0
	mv	VirtualReg_15, VirtualReg_20
	mv	VirtualReg_21, VirtualReg_14
	mv	a0, VirtualReg_18
	mv	a1, VirtualReg_21
	call	classHeap_Node_rchild
	mv	VirtualReg_22, a0
	mv	VirtualReg_16, VirtualReg_22
	mv	VirtualReg_23, VirtualReg_14
	mv	VirtualReg_17, VirtualReg_23
	mv	VirtualReg_24, VirtualReg_15
	mv	a0, VirtualReg_18
	call	classHeap_Node_size
	mv	VirtualReg_25, a0
	slt	fuckLLVM_16, VirtualReg_24, VirtualReg_25
	li	VirtualReg_59, 0
	mv	VirtualReg_36, VirtualReg_59
	bnez	fuckLLVM_16, .classHeap_Node_maxHeapify_ID16_AndAnd_true
	mv	VirtualReg_36, VirtualReg_59
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_maxHeapify_ID16_AndAnd_true:
	addi	VirtualReg_26, VirtualReg_18, 0
	lw	VirtualReg_27, 0(VirtualReg_26)
	mv	VirtualReg_28, VirtualReg_15
	mv	a0, VirtualReg_27
	mv	a1, VirtualReg_28
	call	classArray_Node_get
	mv	VirtualReg_29, a0
	mv	a0, VirtualReg_29
	call	classNode_key_
	mv	VirtualReg_30, a0
	addi	VirtualReg_31, VirtualReg_18, 0
	lw	VirtualReg_32, 0(VirtualReg_31)
	mv	VirtualReg_33, VirtualReg_17
	mv	a0, VirtualReg_32
	mv	a1, VirtualReg_33
	call	classArray_Node_get
	mv	VirtualReg_34, a0
	mv	a0, VirtualReg_34
	call	classNode_key_
	mv	VirtualReg_35, a0
	slt	fuckLLVM_27, VirtualReg_35, VirtualReg_30
	mv	VirtualReg_36, fuckLLVM_27
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_maxHeapify_ID16_AndAnd_out:
	bnez	VirtualReg_36, .classHeap_Node_maxHeapify_ID28_if_true
	j	.classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_maxHeapify_ID28_if_true:
	mv	VirtualReg_37, VirtualReg_15
	mv	VirtualReg_17, VirtualReg_37
	j	.classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_maxHeapify_ID28_if_out:
	mv	VirtualReg_38, VirtualReg_16
	mv	a0, VirtualReg_18
	call	classHeap_Node_size
	mv	VirtualReg_39, a0
	slt	fuckLLVM_32, VirtualReg_38, VirtualReg_39
	li	VirtualReg_60, 0
	mv	VirtualReg_50, VirtualReg_60
	bnez	fuckLLVM_32, .classHeap_Node_maxHeapify_ID32_AndAnd_true
	mv	VirtualReg_50, VirtualReg_60
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_maxHeapify_ID32_AndAnd_true:
	addi	VirtualReg_40, VirtualReg_18, 0
	lw	VirtualReg_41, 0(VirtualReg_40)
	mv	VirtualReg_42, VirtualReg_16
	mv	a0, VirtualReg_41
	mv	a1, VirtualReg_42
	call	classArray_Node_get
	mv	VirtualReg_43, a0
	mv	a0, VirtualReg_43
	call	classNode_key_
	mv	VirtualReg_44, a0
	addi	VirtualReg_45, VirtualReg_18, 0
	lw	VirtualReg_46, 0(VirtualReg_45)
	mv	VirtualReg_47, VirtualReg_17
	mv	a0, VirtualReg_46
	mv	a1, VirtualReg_47
	call	classArray_Node_get
	mv	VirtualReg_48, a0
	mv	a0, VirtualReg_48
	call	classNode_key_
	mv	VirtualReg_49, a0
	slt	fuckLLVM_43, VirtualReg_49, VirtualReg_44
	mv	VirtualReg_50, fuckLLVM_43
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_maxHeapify_ID32_AndAnd_out:
	bnez	VirtualReg_50, .classHeap_Node_maxHeapify_ID44_if_true
	j	.classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_maxHeapify_ID44_if_true:
	mv	VirtualReg_51, VirtualReg_16
	mv	VirtualReg_17, VirtualReg_51
	j	.classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_maxHeapify_ID44_if_out:
	mv	VirtualReg_52, VirtualReg_17
	mv	VirtualReg_53, VirtualReg_14
	xor	fuckLLVM_48, VirtualReg_52, VirtualReg_53
	sltiu	fuckLLVM_48, fuckLLVM_48, 1
	bnez	fuckLLVM_48, .classHeap_Node_maxHeapify_ID48_if_true
	j	.classHeap_Node_maxHeapify_ID48_if_out
.classHeap_Node_maxHeapify_ID48_if_true:
	j	.classHeap_Node_maxHeapify_return
.classHeap_Node_maxHeapify_ID48_if_out:
	addi	VirtualReg_54, VirtualReg_18, 0
	lw	VirtualReg_55, 0(VirtualReg_54)
	mv	VirtualReg_56, VirtualReg_14
	mv	VirtualReg_57, VirtualReg_17
	mv	a0, VirtualReg_55
	mv	a1, VirtualReg_56
	mv	a2, VirtualReg_57
	call	classArray_Node_swap
	mv	VirtualReg_58, VirtualReg_17
	mv	a0, VirtualReg_18
	mv	a1, VirtualReg_58
	call	classHeap_Node_maxHeapify
	j	.classHeap_Node_maxHeapify_return
.classHeap_Node_maxHeapify_return:
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

	.globl	init
	.p2align	2
	.type	init,@function
init:
.init_assemblyInit:
	mv	VirtualReg_0, s1
	mv	VirtualReg_1, s2
	mv	VirtualReg_2, s3
	mv	VirtualReg_3, s4
	mv	VirtualReg_4, s5
	mv	VirtualReg_5, s6
	mv	VirtualReg_6, s7
	mv	VirtualReg_7, s8
	mv	VirtualReg_8, s9
	mv	VirtualReg_9, s10
	mv	VirtualReg_10, s11
	j	.init_alloca
.init_alloca:
	j	.init_entry
.init_entry:
	call	getInt
	mv	VirtualReg_15, a0
	li	VirtualReg_16, 0
	sw	VirtualReg_15, fuckLLVM_n, VirtualReg_16
	call	getInt
	mv	VirtualReg_17, a0
	li	VirtualReg_18, 0
	sw	VirtualReg_17, fuckLLVM_m, VirtualReg_18
	li	VirtualReg_19, 28
	mv	a0, VirtualReg_19
	call	malloc
	mv	VirtualReg_20, a0
	mv	a0, VirtualReg_20
	call	EdgeList
	li	VirtualReg_21, 0
	sw	VirtualReg_20, fuckLLVM_g, VirtualReg_21
	lw	VirtualReg_22, fuckLLVM_g
	lw	VirtualReg_23, fuckLLVM_n
	lw	VirtualReg_24, fuckLLVM_m
	mv	a0, VirtualReg_22
	mv	a1, VirtualReg_23
	mv	a2, VirtualReg_24
	call	classEdgeList_init
	li	VirtualReg_25, 0
	mv	VirtualReg_11, VirtualReg_25
	j	.init_ID10_for_condition
.init_ID10_for_condition:
	mv	VirtualReg_26, VirtualReg_11
	lw	VirtualReg_27, fuckLLVM_m
	slt	fuckLLVM_13, VirtualReg_26, VirtualReg_27
	bnez	fuckLLVM_13, .init_ID10_for_suite
	j	.init_ID10_for_out
.init_ID10_for_suite:
	call	getInt
	mv	VirtualReg_28, a0
	mv	VirtualReg_12, VirtualReg_28
	call	getInt
	mv	VirtualReg_29, a0
	mv	VirtualReg_13, VirtualReg_29
	call	getInt
	mv	VirtualReg_30, a0
	mv	VirtualReg_14, VirtualReg_30
	lw	VirtualReg_31, fuckLLVM_g
	mv	VirtualReg_32, VirtualReg_12
	mv	VirtualReg_33, VirtualReg_13
	mv	VirtualReg_34, VirtualReg_14
	mv	a0, VirtualReg_31
	mv	a1, VirtualReg_32
	mv	a2, VirtualReg_33
	mv	a3, VirtualReg_34
	call	classEdgeList_addEdge
	j	.init_ID10_for_incr
.init_ID10_for_incr:
	mv	VirtualReg_35, VirtualReg_11
	li	VirtualReg_36, 1
	add	fuckLLVM_26, VirtualReg_35, VirtualReg_36
	mv	VirtualReg_11, fuckLLVM_26
	j	.init_ID10_for_condition
.init_ID10_for_out:
	j	.init_return
.init_return:
	mv	s1, VirtualReg_0
	mv	s2, VirtualReg_1
	mv	s3, VirtualReg_2
	mv	s4, VirtualReg_3
	mv	s5, VirtualReg_4
	mv	s6, VirtualReg_5
	mv	s7, VirtualReg_6
	mv	s8, VirtualReg_7
	mv	s9, VirtualReg_8
	mv	s10, VirtualReg_9
	mv	s11, VirtualReg_10

	.globl	Node
	.p2align	2
	.type	Node,@function
Node:
.Node_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.Node_alloca
.Node_alloca:
.Node_entry:
	mv	VirtualReg_12, VirtualReg_0
	j	.Node_return
.Node_return:
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

	.globl	classNode_key_
	.p2align	2
	.type	classNode_key_,@function
classNode_key_:
.classNode_key__assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.classNode_key__alloca
.classNode_key__alloca:
	j	.classNode_key__entry
.classNode_key__entry:
	mv	VirtualReg_12, VirtualReg_0
	mv	VirtualReg_14, VirtualReg_12
	addi	VirtualReg_15, VirtualReg_14, 4
	lw	VirtualReg_16, 0(VirtualReg_15)
	li	VirtualReg_17, 0
	sub	fuckLLVM_6, VirtualReg_17, VirtualReg_16
	mv	VirtualReg_13, fuckLLVM_6
	j	.classNode_key__return
.classNode_key__return:
	mv	VirtualReg_18, VirtualReg_13
	mv	a0, VirtualReg_18
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

	.globl	dijkstra
	.p2align	2
	.type	dijkstra,@function
dijkstra:
.dijkstra_assemblyInit:
	mv	VirtualReg_0, a0
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
	j	.dijkstra_alloca
.dijkstra_alloca:
	j	.dijkstra_entry
.dijkstra_entry:
	mv	VirtualReg_12, VirtualReg_0
	lw	VirtualReg_25, fuckLLVM_n
	li	VirtualReg_26, 4
	mul	fuckLLVM_6, VirtualReg_25, VirtualReg_26
	li	VirtualReg_27, 4
	add	fuckLLVM_7, fuckLLVM_6, VirtualReg_27
	mv	a0, fuckLLVM_7
	call	malloc
	mv	VirtualReg_28, a0
	sw	VirtualReg_25, 0(VirtualReg_28)
	li	VirtualReg_31, 1
	li	VirtualReg_32, 4
	mul	VirtualReg_30, VirtualReg_31, VirtualReg_32
	add	VirtualReg_29, VirtualReg_28, VirtualReg_30
	mv	VirtualReg_14, VirtualReg_29
	lw	VirtualReg_33, fuckLLVM_n
	li	VirtualReg_34, 4
	mul	fuckLLVM_16, VirtualReg_33, VirtualReg_34
	li	VirtualReg_35, 4
	add	fuckLLVM_17, fuckLLVM_16, VirtualReg_35
	mv	a0, fuckLLVM_17
	call	malloc
	mv	VirtualReg_36, a0
	sw	VirtualReg_33, 0(VirtualReg_36)
	li	VirtualReg_39, 1
	li	VirtualReg_40, 4
	mul	VirtualReg_38, VirtualReg_39, VirtualReg_40
	add	VirtualReg_37, VirtualReg_36, VirtualReg_38
	mv	VirtualReg_15, VirtualReg_37
	li	VirtualReg_41, 0
	mv	VirtualReg_16, VirtualReg_41
	j	.dijkstra_ID23_for_condition
.dijkstra_ID23_for_condition:
	mv	VirtualReg_42, VirtualReg_16
	lw	VirtualReg_43, fuckLLVM_n
	slt	fuckLLVM_26, VirtualReg_42, VirtualReg_43
	bnez	fuckLLVM_26, .dijkstra_ID23_for_suite
	j	.dijkstra_ID23_for_out
.dijkstra_ID23_for_suite:
	mv	VirtualReg_44, VirtualReg_15
	mv	VirtualReg_45, VirtualReg_16
	li	VirtualReg_48, 4
	mul	VirtualReg_47, VirtualReg_45, VirtualReg_48
	add	VirtualReg_46, VirtualReg_44, VirtualReg_47
	lw	VirtualReg_49, fuckLLVM_INF
	sw	VirtualReg_49, 0(VirtualReg_46)
	mv	VirtualReg_50, VirtualReg_14
	mv	VirtualReg_51, VirtualReg_16
	li	VirtualReg_54, 4
	mul	VirtualReg_53, VirtualReg_51, VirtualReg_54
	add	VirtualReg_52, VirtualReg_50, VirtualReg_53
	li	VirtualReg_55, 0
	sw	VirtualReg_55, 0(VirtualReg_52)
	j	.dijkstra_ID23_for_incr
.dijkstra_ID23_for_incr:
	mv	VirtualReg_56, VirtualReg_16
	li	VirtualReg_57, 1
	add	fuckLLVM_35, VirtualReg_56, VirtualReg_57
	mv	VirtualReg_16, fuckLLVM_35
	j	.dijkstra_ID23_for_condition
.dijkstra_ID23_for_out:
	mv	VirtualReg_58, VirtualReg_15
	mv	VirtualReg_59, VirtualReg_12
	li	VirtualReg_62, 4
	mul	VirtualReg_61, VirtualReg_59, VirtualReg_62
	add	VirtualReg_60, VirtualReg_58, VirtualReg_61
	li	VirtualReg_63, 0
	sw	VirtualReg_63, 0(VirtualReg_60)
	li	VirtualReg_64, 8
	mv	a0, VirtualReg_64
	call	malloc
	mv	VirtualReg_65, a0
	mv	a0, VirtualReg_65
	call	Heap_Node
	mv	VirtualReg_17, VirtualReg_65
	li	VirtualReg_66, 8
	mv	a0, VirtualReg_66
	call	malloc
	mv	VirtualReg_67, a0
	mv	a0, VirtualReg_67
	call	Node
	mv	VirtualReg_18, VirtualReg_67
	mv	VirtualReg_68, VirtualReg_18
	addi	VirtualReg_69, VirtualReg_68, 4
	li	VirtualReg_70, 0
	sw	VirtualReg_70, 0(VirtualReg_69)
	mv	VirtualReg_71, VirtualReg_18
	addi	VirtualReg_72, VirtualReg_71, 0
	mv	VirtualReg_73, VirtualReg_12
	sw	VirtualReg_73, 0(VirtualReg_72)
	mv	VirtualReg_74, VirtualReg_17
	mv	VirtualReg_75, VirtualReg_18
	mv	a0, VirtualReg_74
	mv	a1, VirtualReg_75
	call	classHeap_Node_push
	j	.dijkstra_ID56_while_condition
.dijkstra_ID56_while_condition:
	mv	VirtualReg_76, VirtualReg_17
	mv	a0, VirtualReg_76
	call	classHeap_Node_size
	mv	VirtualReg_77, a0
	li	VirtualReg_78, 0
	xor	fuckLLVM_58, VirtualReg_77, VirtualReg_78
	sltiu	fuckLLVM_58, fuckLLVM_58, 1
	xori	fuckLLVM_58, fuckLLVM_58, 1
	bnez	fuckLLVM_58, .dijkstra_ID59_while_suite
	j	.dijkstra_ID59_while_out
.dijkstra_ID71_if_true:
	j	.dijkstra_ID56_while_condition
.dijkstra_ID71_if_out:
	mv	VirtualReg_79, VirtualReg_14
	mv	VirtualReg_80, VirtualReg_20
	li	VirtualReg_83, 4
	mul	VirtualReg_82, VirtualReg_80, VirtualReg_83
	add	VirtualReg_81, VirtualReg_79, VirtualReg_82
	li	VirtualReg_84, 1
	sw	VirtualReg_84, 0(VirtualReg_81)
	lw	VirtualReg_85, fuckLLVM_g
	addi	VirtualReg_86, VirtualReg_85, 16
	lw	VirtualReg_87, 0(VirtualReg_86)
	mv	VirtualReg_88, VirtualReg_20
	li	VirtualReg_91, 4
	mul	VirtualReg_90, VirtualReg_88, VirtualReg_91
	add	VirtualReg_89, VirtualReg_87, VirtualReg_90
	lw	VirtualReg_92, 0(VirtualReg_89)
	mv	VirtualReg_21, VirtualReg_92
	j	.dijkstra_ID81_for_condition
.dijkstra_ID81_for_condition:
	mv	VirtualReg_93, VirtualReg_21
	li	VirtualReg_94, 0
	li	VirtualReg_95, 1
	sub	fuckLLVM_83, VirtualReg_94, VirtualReg_95
	xor	fuckLLVM_84, VirtualReg_93, fuckLLVM_83
	sltiu	fuckLLVM_84, fuckLLVM_84, 1
	xori	fuckLLVM_84, fuckLLVM_84, 1
	bnez	fuckLLVM_84, .dijkstra_ID81_for_suite
	j	.dijkstra_ID81_for_out
.dijkstra_ID81_for_suite:
	lw	VirtualReg_96, fuckLLVM_g
	addi	VirtualReg_97, VirtualReg_96, 0
	lw	VirtualReg_98, 0(VirtualReg_97)
	mv	VirtualReg_99, VirtualReg_21
	li	VirtualReg_102, 12
	mul	VirtualReg_101, VirtualReg_99, VirtualReg_102
	add	VirtualReg_100, VirtualReg_98, VirtualReg_101
	lw	VirtualReg_103, 0(VirtualReg_100)
	addi	VirtualReg_104, VirtualReg_103, 4
	lw	VirtualReg_105, 0(VirtualReg_104)
	mv	VirtualReg_22, VirtualReg_105
	lw	VirtualReg_106, fuckLLVM_g
	addi	VirtualReg_107, VirtualReg_106, 0
	lw	VirtualReg_108, 0(VirtualReg_107)
	mv	VirtualReg_109, VirtualReg_21
	li	VirtualReg_112, 12
	mul	VirtualReg_111, VirtualReg_109, VirtualReg_112
	add	VirtualReg_110, VirtualReg_108, VirtualReg_111
	lw	VirtualReg_113, 0(VirtualReg_110)
	addi	VirtualReg_114, VirtualReg_113, 8
	lw	VirtualReg_115, 0(VirtualReg_114)
	mv	VirtualReg_23, VirtualReg_115
	mv	VirtualReg_116, VirtualReg_15
	mv	VirtualReg_117, VirtualReg_20
	li	VirtualReg_120, 4
	mul	VirtualReg_119, VirtualReg_117, VirtualReg_120
	add	VirtualReg_118, VirtualReg_116, VirtualReg_119
	lw	VirtualReg_121, 0(VirtualReg_118)
	mv	VirtualReg_122, VirtualReg_23
	add	fuckLLVM_109, VirtualReg_121, VirtualReg_122
	mv	VirtualReg_24, fuckLLVM_109
	mv	VirtualReg_123, VirtualReg_24
	mv	VirtualReg_124, VirtualReg_15
	mv	VirtualReg_125, VirtualReg_22
	li	VirtualReg_128, 4
	mul	VirtualReg_127, VirtualReg_125, VirtualReg_128
	add	VirtualReg_126, VirtualReg_124, VirtualReg_127
	lw	VirtualReg_129, 0(VirtualReg_126)
	slt	fuckLLVM_115, VirtualReg_123, VirtualReg_129
	xori	fuckLLVM_115, fuckLLVM_115, 1
	bnez	fuckLLVM_115, .dijkstra_ID115_if_true
	j	.dijkstra_ID115_if_out
.dijkstra_ID115_if_true:
	j	.dijkstra_ID81_for_incr
.dijkstra_ID115_if_out:
	mv	VirtualReg_130, VirtualReg_15
	mv	VirtualReg_131, VirtualReg_22
	li	VirtualReg_134, 4
	mul	VirtualReg_133, VirtualReg_131, VirtualReg_134
	add	VirtualReg_132, VirtualReg_130, VirtualReg_133
	mv	VirtualReg_135, VirtualReg_24
	sw	VirtualReg_135, 0(VirtualReg_132)
	li	VirtualReg_136, 8
	mv	a0, VirtualReg_136
	call	malloc
	mv	VirtualReg_137, a0
	mv	a0, VirtualReg_137
	call	Node
	mv	VirtualReg_19, VirtualReg_137
	mv	VirtualReg_138, VirtualReg_19
	addi	VirtualReg_139, VirtualReg_138, 0
	mv	VirtualReg_140, VirtualReg_22
	sw	VirtualReg_140, 0(VirtualReg_139)
	mv	VirtualReg_141, VirtualReg_19
	addi	VirtualReg_142, VirtualReg_141, 4
	mv	VirtualReg_143, VirtualReg_15
	mv	VirtualReg_144, VirtualReg_22
	li	VirtualReg_147, 4
	mul	VirtualReg_146, VirtualReg_144, VirtualReg_147
	add	VirtualReg_145, VirtualReg_143, VirtualReg_146
	lw	VirtualReg_148, 0(VirtualReg_145)
	sw	VirtualReg_148, 0(VirtualReg_142)
	mv	VirtualReg_149, VirtualReg_17
	mv	VirtualReg_150, VirtualReg_19
	mv	a0, VirtualReg_149
	mv	a1, VirtualReg_150
	call	classHeap_Node_push
	j	.dijkstra_ID81_for_incr
.dijkstra_ID81_for_incr:
	lw	VirtualReg_151, fuckLLVM_g
	addi	VirtualReg_152, VirtualReg_151, 8
	lw	VirtualReg_153, 0(VirtualReg_152)
	mv	VirtualReg_154, VirtualReg_21
	li	VirtualReg_157, 4
	mul	VirtualReg_156, VirtualReg_154, VirtualReg_157
	add	VirtualReg_155, VirtualReg_153, VirtualReg_156
	lw	VirtualReg_158, 0(VirtualReg_155)
	mv	VirtualReg_21, VirtualReg_158
	j	.dijkstra_ID81_for_condition
.dijkstra_ID81_for_out:
	j	.dijkstra_ID56_while_condition
.dijkstra_ID59_while_suite:
	mv	VirtualReg_159, VirtualReg_17
	mv	a0, VirtualReg_159
	call	classHeap_Node_pop
	mv	VirtualReg_160, a0
	mv	VirtualReg_19, VirtualReg_160
	mv	VirtualReg_161, VirtualReg_19
	addi	VirtualReg_162, VirtualReg_161, 0
	lw	VirtualReg_163, 0(VirtualReg_162)
	mv	VirtualReg_20, VirtualReg_163
	mv	VirtualReg_164, VirtualReg_14
	mv	VirtualReg_165, VirtualReg_20
	li	VirtualReg_168, 4
	mul	VirtualReg_167, VirtualReg_165, VirtualReg_168
	add	VirtualReg_166, VirtualReg_164, VirtualReg_167
	lw	VirtualReg_169, 0(VirtualReg_166)
	li	VirtualReg_170, 1
	xor	fuckLLVM_71, VirtualReg_169, VirtualReg_170
	sltiu	fuckLLVM_71, fuckLLVM_71, 1
	bnez	fuckLLVM_71, .dijkstra_ID71_if_true
	j	.dijkstra_ID71_if_out
.dijkstra_ID59_while_out:
	mv	VirtualReg_171, VirtualReg_15
	mv	VirtualReg_13, VirtualReg_171
	j	.dijkstra_return
.dijkstra_return:
	mv	VirtualReg_172, VirtualReg_13
	mv	a0, VirtualReg_172
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

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
	mv	VirtualReg_0, s1
	mv	VirtualReg_1, s2
	mv	VirtualReg_2, s3
	mv	VirtualReg_3, s4
	mv	VirtualReg_4, s5
	mv	VirtualReg_5, s6
	mv	VirtualReg_6, s7
	mv	VirtualReg_7, s8
	mv	VirtualReg_8, s9
	mv	VirtualReg_9, s10
	mv	VirtualReg_10, s11
	j	.main_alloca
.main_alloca:
	j	.main_entry
.main_entry:
	call	__init
	li	VirtualReg_15, 0
	mv	VirtualReg_11, VirtualReg_15
	call	init
	li	VirtualReg_16, 0
	mv	VirtualReg_12, VirtualReg_16
	j	.main_ID3_for_condition
.main_ID3_for_condition:
	mv	VirtualReg_17, VirtualReg_12
	lw	VirtualReg_18, fuckLLVM_n
	slt	fuckLLVM_6, VirtualReg_17, VirtualReg_18
	bnez	fuckLLVM_6, .main_ID3_for_suite
	j	.main_ID3_for_out
.main_ID3_for_suite:
	mv	VirtualReg_19, VirtualReg_12
	mv	a0, VirtualReg_19
	call	dijkstra
	mv	VirtualReg_20, a0
	mv	VirtualReg_14, VirtualReg_20
	li	VirtualReg_21, 0
	mv	VirtualReg_13, VirtualReg_21
	j	.main_ID10_for_condition
.main_ID10_for_condition:
	mv	VirtualReg_22, VirtualReg_13
	lw	VirtualReg_23, fuckLLVM_n
	slt	fuckLLVM_13, VirtualReg_22, VirtualReg_23
	bnez	fuckLLVM_13, .main_ID10_for_suite
	j	.main_ID10_for_out
.main_ID10_for_suite:
	mv	VirtualReg_24, VirtualReg_14
	mv	VirtualReg_25, VirtualReg_13
	li	VirtualReg_28, 4
	mul	VirtualReg_27, VirtualReg_25, VirtualReg_28
	add	VirtualReg_26, VirtualReg_24, VirtualReg_27
	lw	VirtualReg_29, 0(VirtualReg_26)
	lw	VirtualReg_30, fuckLLVM_INF
	xor	fuckLLVM_19, VirtualReg_29, VirtualReg_30
	sltiu	fuckLLVM_19, fuckLLVM_19, 1
	bnez	fuckLLVM_19, .main_ID19_if_true
	j	.main_ID19_if_false
.main_ID19_if_true:
	la	VirtualReg_31, fuckLLVM_.str.0
	mv	a0, VirtualReg_31
	call	print
	j	.main_ID19_if_out
.main_ID19_if_false:
	mv	VirtualReg_32, VirtualReg_14
	mv	VirtualReg_33, VirtualReg_13
	li	VirtualReg_36, 4
	mul	VirtualReg_35, VirtualReg_33, VirtualReg_36
	add	VirtualReg_34, VirtualReg_32, VirtualReg_35
	lw	VirtualReg_37, 0(VirtualReg_34)
	mv	a0, VirtualReg_37
	call	toString
	mv	VirtualReg_38, a0
	mv	a0, VirtualReg_38
	call	print
	j	.main_ID19_if_out
.main_ID19_if_out:
	la	VirtualReg_39, fuckLLVM_.str.1
	mv	a0, VirtualReg_39
	call	print
	j	.main_ID10_for_incr
.main_ID10_for_incr:
	mv	VirtualReg_40, VirtualReg_13
	li	VirtualReg_41, 1
	add	fuckLLVM_32, VirtualReg_40, VirtualReg_41
	mv	VirtualReg_13, fuckLLVM_32
	j	.main_ID10_for_condition
.main_ID10_for_out:
	la	VirtualReg_42, fuckLLVM_.str.2
	mv	a0, VirtualReg_42
	call	println
	j	.main_ID3_for_incr
.main_ID3_for_incr:
	mv	VirtualReg_43, VirtualReg_12
	li	VirtualReg_44, 1
	add	fuckLLVM_36, VirtualReg_43, VirtualReg_44
	mv	VirtualReg_12, fuckLLVM_36
	j	.main_ID3_for_condition
.main_ID3_for_out:
	li	VirtualReg_45, 0
	mv	VirtualReg_11, VirtualReg_45
	j	.main_return
.main_return:
	mv	VirtualReg_46, VirtualReg_11
	mv	a0, VirtualReg_46
	mv	s1, VirtualReg_0
	mv	s2, VirtualReg_1
	mv	s3, VirtualReg_2
	mv	s4, VirtualReg_3
	mv	s5, VirtualReg_4
	mv	s6, VirtualReg_5
	mv	s7, VirtualReg_6
	mv	s8, VirtualReg_7
	mv	s9, VirtualReg_8
	mv	s10, VirtualReg_9
	mv	s11, VirtualReg_10

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

