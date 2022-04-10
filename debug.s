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
	j	.Edge_entry
.Edge_entry:
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
	j	.EdgeList_entry
.EdgeList_entry:
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
	j	.classEdgeList_init_entry
.classEdgeList_init_entry:
	addi	VirtualReg_15, VirtualReg_0, 0
	li	VirtualReg_16, 12
	mul	VirtualReg_17, VirtualReg_2, VirtualReg_16
	li	VirtualReg_18, 4
	add	VirtualReg_19, VirtualReg_17, VirtualReg_18
	mv	a0, VirtualReg_19
	call	malloc
	mv	VirtualReg_20, a0
	sw	VirtualReg_2, 0(VirtualReg_20)
	li	VirtualReg_23, 1
	li	VirtualReg_24, 4
	mul	VirtualReg_22, VirtualReg_23, VirtualReg_24
	add	VirtualReg_21, VirtualReg_20, VirtualReg_22
	sw	VirtualReg_21, 0(VirtualReg_15)
	addi	VirtualReg_25, VirtualReg_0, 8
	li	VirtualReg_26, 4
	mul	VirtualReg_27, VirtualReg_2, VirtualReg_26
	li	VirtualReg_28, 4
	add	VirtualReg_29, VirtualReg_27, VirtualReg_28
	mv	a0, VirtualReg_29
	call	malloc
	mv	VirtualReg_30, a0
	sw	VirtualReg_2, 0(VirtualReg_30)
	li	VirtualReg_33, 1
	li	VirtualReg_34, 4
	mul	VirtualReg_32, VirtualReg_33, VirtualReg_34
	add	VirtualReg_31, VirtualReg_30, VirtualReg_32
	sw	VirtualReg_31, 0(VirtualReg_25)
	addi	VirtualReg_35, VirtualReg_0, 16
	li	VirtualReg_36, 4
	mul	VirtualReg_37, VirtualReg_1, VirtualReg_36
	li	VirtualReg_38, 4
	add	VirtualReg_39, VirtualReg_37, VirtualReg_38
	mv	a0, VirtualReg_39
	call	malloc
	mv	VirtualReg_40, a0
	sw	VirtualReg_1, 0(VirtualReg_40)
	li	VirtualReg_43, 1
	li	VirtualReg_44, 4
	mul	VirtualReg_42, VirtualReg_43, VirtualReg_44
	add	VirtualReg_41, VirtualReg_40, VirtualReg_42
	sw	VirtualReg_41, 0(VirtualReg_35)
	li	VirtualReg_71, 0
	mv	VirtualReg_45, VirtualReg_71
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_condition:
	slt	VirtualReg_46, VirtualReg_45, VirtualReg_2
	bnez	VirtualReg_46, .classEdgeList_init_ID38_for_suite
	j	.classEdgeList_init_ID38_for_out
.classEdgeList_init_ID38_for_suite:
	addi	VirtualReg_47, VirtualReg_0, 8
	lw	VirtualReg_48, 0(VirtualReg_47)
	li	VirtualReg_51, 4
	mul	VirtualReg_50, VirtualReg_45, VirtualReg_51
	add	VirtualReg_49, VirtualReg_48, VirtualReg_50
	li	VirtualReg_52, 0
	li	VirtualReg_53, 1
	sub	VirtualReg_54, VirtualReg_52, VirtualReg_53
	sw	VirtualReg_54, 0(VirtualReg_49)
	j	.classEdgeList_init_ID38_for_incr
.classEdgeList_init_ID38_for_incr:
	li	VirtualReg_55, 1
	add	VirtualReg_56, VirtualReg_45, VirtualReg_55
	mv	VirtualReg_45, VirtualReg_56
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_out:
	li	VirtualReg_72, 0
	mv	VirtualReg_57, VirtualReg_72
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_condition:
	slt	VirtualReg_58, VirtualReg_57, VirtualReg_1
	bnez	VirtualReg_58, .classEdgeList_init_ID48_for_suite
	j	.classEdgeList_init_ID48_for_out
.classEdgeList_init_ID48_for_suite:
	addi	VirtualReg_59, VirtualReg_0, 16
	lw	VirtualReg_60, 0(VirtualReg_59)
	li	VirtualReg_63, 4
	mul	VirtualReg_62, VirtualReg_57, VirtualReg_63
	add	VirtualReg_61, VirtualReg_60, VirtualReg_62
	li	VirtualReg_64, 0
	li	VirtualReg_65, 1
	sub	VirtualReg_66, VirtualReg_64, VirtualReg_65
	sw	VirtualReg_66, 0(VirtualReg_61)
	j	.classEdgeList_init_ID48_for_incr
.classEdgeList_init_ID48_for_incr:
	li	VirtualReg_67, 1
	add	VirtualReg_68, VirtualReg_57, VirtualReg_67
	mv	VirtualReg_57, VirtualReg_68
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_out:
	addi	VirtualReg_69, VirtualReg_0, 24
	li	VirtualReg_70, 0
	sw	VirtualReg_70, 0(VirtualReg_69)
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
	j	.classEdgeList_addEdge_entry
.classEdgeList_addEdge_entry:
	li	VirtualReg_16, 12
	mv	a0, VirtualReg_16
	call	malloc
	mv	VirtualReg_17, a0
	mv	a0, VirtualReg_17
	call	Edge
	addi	VirtualReg_18, VirtualReg_17, 0
	sw	VirtualReg_1, 0(VirtualReg_18)
	addi	VirtualReg_19, VirtualReg_17, 4
	sw	VirtualReg_2, 0(VirtualReg_19)
	addi	VirtualReg_20, VirtualReg_17, 8
	sw	VirtualReg_3, 0(VirtualReg_20)
	addi	VirtualReg_21, VirtualReg_0, 0
	lw	VirtualReg_22, 0(VirtualReg_21)
	addi	VirtualReg_23, VirtualReg_0, 24
	lw	VirtualReg_24, 0(VirtualReg_23)
	li	VirtualReg_27, 12
	mul	VirtualReg_26, VirtualReg_24, VirtualReg_27
	add	VirtualReg_25, VirtualReg_22, VirtualReg_26
	sw	VirtualReg_17, 0(VirtualReg_25)
	addi	VirtualReg_28, VirtualReg_0, 8
	lw	VirtualReg_29, 0(VirtualReg_28)
	addi	VirtualReg_30, VirtualReg_0, 24
	lw	VirtualReg_31, 0(VirtualReg_30)
	li	VirtualReg_34, 4
	mul	VirtualReg_33, VirtualReg_31, VirtualReg_34
	add	VirtualReg_32, VirtualReg_29, VirtualReg_33
	addi	VirtualReg_35, VirtualReg_0, 16
	lw	VirtualReg_36, 0(VirtualReg_35)
	li	VirtualReg_39, 4
	mul	VirtualReg_38, VirtualReg_1, VirtualReg_39
	add	VirtualReg_37, VirtualReg_36, VirtualReg_38
	lw	VirtualReg_40, 0(VirtualReg_37)
	sw	VirtualReg_40, 0(VirtualReg_32)
	addi	VirtualReg_41, VirtualReg_0, 16
	lw	VirtualReg_42, 0(VirtualReg_41)
	li	VirtualReg_45, 4
	mul	VirtualReg_44, VirtualReg_1, VirtualReg_45
	add	VirtualReg_43, VirtualReg_42, VirtualReg_44
	addi	VirtualReg_46, VirtualReg_0, 24
	lw	VirtualReg_47, 0(VirtualReg_46)
	sw	VirtualReg_47, 0(VirtualReg_43)
	addi	VirtualReg_48, VirtualReg_0, 24
	lw	VirtualReg_49, 0(VirtualReg_48)
	li	VirtualReg_50, 1
	add	VirtualReg_51, VirtualReg_49, VirtualReg_50
	sw	VirtualReg_51, 0(VirtualReg_48)
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
	j	.classEdgeList_nVertices_entry
.classEdgeList_nVertices_entry:
	addi	VirtualReg_13, VirtualReg_0, 16
	lw	VirtualReg_14, 0(VirtualReg_13)
	li	VirtualReg_17, -1
	li	VirtualReg_18, 4
	mul	VirtualReg_16, VirtualReg_17, VirtualReg_18
	add	VirtualReg_15, VirtualReg_14, VirtualReg_16
	lw	VirtualReg_19, 0(VirtualReg_15)
	j	.classEdgeList_nVertices_return
.classEdgeList_nVertices_return:
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
	j	.classEdgeList_nEdges_entry
.classEdgeList_nEdges_entry:
	addi	VirtualReg_13, VirtualReg_0, 0
	lw	VirtualReg_14, 0(VirtualReg_13)
	li	VirtualReg_17, -1
	li	VirtualReg_18, 4
	mul	VirtualReg_16, VirtualReg_17, VirtualReg_18
	add	VirtualReg_15, VirtualReg_14, VirtualReg_16
	lw	VirtualReg_19, 0(VirtualReg_15)
	j	.classEdgeList_nEdges_return
.classEdgeList_nEdges_return:
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
	j	.Array_Node_entry
.Array_Node_entry:
	addi	VirtualReg_13, VirtualReg_0, 8
	li	VirtualReg_14, 0
	sw	VirtualReg_14, 0(VirtualReg_13)
	addi	VirtualReg_15, VirtualReg_0, 0
	li	VirtualReg_16, 16
	li	VirtualReg_17, 8
	mul	VirtualReg_18, VirtualReg_16, VirtualReg_17
	li	VirtualReg_19, 4
	add	VirtualReg_20, VirtualReg_18, VirtualReg_19
	mv	a0, VirtualReg_20
	call	malloc
	mv	VirtualReg_21, a0
	li	VirtualReg_22, 16
	sw	VirtualReg_22, 0(VirtualReg_21)
	li	VirtualReg_25, 1
	li	VirtualReg_26, 4
	mul	VirtualReg_24, VirtualReg_25, VirtualReg_26
	add	VirtualReg_23, VirtualReg_21, VirtualReg_24
	sw	VirtualReg_23, 0(VirtualReg_15)
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
	j	.classArray_Node_push_back_entry
.classArray_Node_push_back_entry:
	mv	a0, VirtualReg_0
	call	classArray_Node_size
	mv	VirtualReg_14, a0
	addi	VirtualReg_15, VirtualReg_0, 0
	lw	VirtualReg_16, 0(VirtualReg_15)
	li	VirtualReg_19, -1
	li	VirtualReg_20, 4
	mul	VirtualReg_18, VirtualReg_19, VirtualReg_20
	add	VirtualReg_17, VirtualReg_16, VirtualReg_18
	lw	VirtualReg_21, 0(VirtualReg_17)
	xor	VirtualReg_22, VirtualReg_14, VirtualReg_21
	sltiu	VirtualReg_22, VirtualReg_22, 1
	bnez	VirtualReg_22, .classArray_Node_push_back_ID12_if_true
	j	.classArray_Node_push_back_entry_mid
.classArray_Node_push_back_entry_mid:
	j	.classArray_Node_push_back_ID12_if_out
.classArray_Node_push_back_ID12_if_true:
	mv	a0, VirtualReg_0
	call	classArray_Node_doubleStorage
	j	.classArray_Node_push_back_ID12_if_out
.classArray_Node_push_back_ID12_if_out:
	addi	VirtualReg_23, VirtualReg_0, 0
	lw	VirtualReg_24, 0(VirtualReg_23)
	addi	VirtualReg_25, VirtualReg_0, 8
	lw	VirtualReg_26, 0(VirtualReg_25)
	li	VirtualReg_29, 8
	mul	VirtualReg_28, VirtualReg_26, VirtualReg_29
	add	VirtualReg_27, VirtualReg_24, VirtualReg_28
	sw	VirtualReg_1, 0(VirtualReg_27)
	addi	VirtualReg_30, VirtualReg_0, 8
	lw	VirtualReg_31, 0(VirtualReg_30)
	li	VirtualReg_32, 1
	add	VirtualReg_33, VirtualReg_31, VirtualReg_32
	sw	VirtualReg_33, 0(VirtualReg_30)
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
	j	.classArray_Node_pop_back_entry
.classArray_Node_pop_back_entry:
	addi	VirtualReg_13, VirtualReg_0, 8
	lw	VirtualReg_14, 0(VirtualReg_13)
	li	VirtualReg_15, 1
	sub	VirtualReg_16, VirtualReg_14, VirtualReg_15
	sw	VirtualReg_16, 0(VirtualReg_13)
	addi	VirtualReg_17, VirtualReg_0, 0
	lw	VirtualReg_18, 0(VirtualReg_17)
	addi	VirtualReg_19, VirtualReg_0, 8
	lw	VirtualReg_20, 0(VirtualReg_19)
	li	VirtualReg_23, 8
	mul	VirtualReg_22, VirtualReg_20, VirtualReg_23
	add	VirtualReg_21, VirtualReg_18, VirtualReg_22
	lw	VirtualReg_24, 0(VirtualReg_21)
	j	.classArray_Node_pop_back_return
.classArray_Node_pop_back_return:
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
	j	.classArray_Node_back_entry
.classArray_Node_back_entry:
	addi	VirtualReg_13, VirtualReg_0, 0
	lw	VirtualReg_14, 0(VirtualReg_13)
	addi	VirtualReg_15, VirtualReg_0, 8
	lw	VirtualReg_16, 0(VirtualReg_15)
	li	VirtualReg_17, 1
	sub	VirtualReg_18, VirtualReg_16, VirtualReg_17
	li	VirtualReg_21, 8
	mul	VirtualReg_20, VirtualReg_18, VirtualReg_21
	add	VirtualReg_19, VirtualReg_14, VirtualReg_20
	lw	VirtualReg_22, 0(VirtualReg_19)
	j	.classArray_Node_back_return
.classArray_Node_back_return:
	mv	a0, VirtualReg_22
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
	j	.classArray_Node_front_entry
.classArray_Node_front_entry:
	addi	VirtualReg_13, VirtualReg_0, 0
	lw	VirtualReg_14, 0(VirtualReg_13)
	li	VirtualReg_17, 0
	li	VirtualReg_18, 8
	mul	VirtualReg_16, VirtualReg_17, VirtualReg_18
	add	VirtualReg_15, VirtualReg_14, VirtualReg_16
	lw	VirtualReg_19, 0(VirtualReg_15)
	j	.classArray_Node_front_return
.classArray_Node_front_return:
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
	j	.classArray_Node_size_entry
.classArray_Node_size_entry:
	addi	VirtualReg_13, VirtualReg_0, 8
	lw	VirtualReg_14, 0(VirtualReg_13)
	j	.classArray_Node_size_return
.classArray_Node_size_return:
	mv	a0, VirtualReg_14
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
	j	.classArray_Node_resize_entry
.classArray_Node_resize_entry:
	j	.classArray_Node_resize_ID6_while_condition
.classArray_Node_resize_ID6_while_condition:
	addi	VirtualReg_14, VirtualReg_0, 0
	lw	VirtualReg_15, 0(VirtualReg_14)
	li	VirtualReg_18, -1
	li	VirtualReg_19, 4
	mul	VirtualReg_17, VirtualReg_18, VirtualReg_19
	add	VirtualReg_16, VirtualReg_15, VirtualReg_17
	lw	VirtualReg_20, 0(VirtualReg_16)
	slt	VirtualReg_21, VirtualReg_20, VirtualReg_1
	bnez	VirtualReg_21, .classArray_Node_resize_ID13_while_suite
	j	.classArray_Node_resize_ID13_while_out
.classArray_Node_resize_ID13_while_suite:
	mv	a0, VirtualReg_0
	call	classArray_Node_doubleStorage
	j	.classArray_Node_resize_ID6_while_condition
.classArray_Node_resize_ID13_while_out:
	addi	VirtualReg_22, VirtualReg_0, 8
	sw	VirtualReg_1, 0(VirtualReg_22)
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
	j	.classArray_Node_get_entry
.classArray_Node_get_entry:
	addi	VirtualReg_14, VirtualReg_0, 0
	lw	VirtualReg_15, 0(VirtualReg_14)
	li	VirtualReg_18, 8
	mul	VirtualReg_17, VirtualReg_1, VirtualReg_18
	add	VirtualReg_16, VirtualReg_15, VirtualReg_17
	lw	VirtualReg_19, 0(VirtualReg_16)
	j	.classArray_Node_get_return
.classArray_Node_get_return:
	mv	a0, VirtualReg_19
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
	j	.classArray_Node_set_entry
.classArray_Node_set_entry:
	addi	VirtualReg_15, VirtualReg_0, 0
	lw	VirtualReg_16, 0(VirtualReg_15)
	li	VirtualReg_19, 8
	mul	VirtualReg_18, VirtualReg_1, VirtualReg_19
	add	VirtualReg_17, VirtualReg_16, VirtualReg_18
	sw	VirtualReg_2, 0(VirtualReg_17)
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
	j	.classArray_Node_swap_entry
.classArray_Node_swap_entry:
	addi	VirtualReg_15, VirtualReg_0, 0
	lw	VirtualReg_16, 0(VirtualReg_15)
	li	VirtualReg_19, 8
	mul	VirtualReg_18, VirtualReg_1, VirtualReg_19
	add	VirtualReg_17, VirtualReg_16, VirtualReg_18
	lw	VirtualReg_20, 0(VirtualReg_17)
	addi	VirtualReg_21, VirtualReg_0, 0
	lw	VirtualReg_22, 0(VirtualReg_21)
	li	VirtualReg_25, 8
	mul	VirtualReg_24, VirtualReg_1, VirtualReg_25
	add	VirtualReg_23, VirtualReg_22, VirtualReg_24
	addi	VirtualReg_26, VirtualReg_0, 0
	lw	VirtualReg_27, 0(VirtualReg_26)
	li	VirtualReg_30, 8
	mul	VirtualReg_29, VirtualReg_2, VirtualReg_30
	add	VirtualReg_28, VirtualReg_27, VirtualReg_29
	lw	VirtualReg_31, 0(VirtualReg_28)
	sw	VirtualReg_31, 0(VirtualReg_23)
	addi	VirtualReg_32, VirtualReg_0, 0
	lw	VirtualReg_33, 0(VirtualReg_32)
	li	VirtualReg_36, 8
	mul	VirtualReg_35, VirtualReg_2, VirtualReg_36
	add	VirtualReg_34, VirtualReg_33, VirtualReg_35
	sw	VirtualReg_20, 0(VirtualReg_34)
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
	j	.classArray_Node_doubleStorage_entry
.classArray_Node_doubleStorage_entry:
	addi	VirtualReg_13, VirtualReg_0, 0
	lw	VirtualReg_14, 0(VirtualReg_13)
	addi	VirtualReg_15, VirtualReg_0, 8
	lw	VirtualReg_16, 0(VirtualReg_15)
	addi	VirtualReg_17, VirtualReg_0, 0
	li	VirtualReg_20, -1
	li	VirtualReg_21, 4
	mul	VirtualReg_19, VirtualReg_20, VirtualReg_21
	add	VirtualReg_18, VirtualReg_14, VirtualReg_19
	lw	VirtualReg_22, 0(VirtualReg_18)
	li	VirtualReg_23, 2
	mul	VirtualReg_24, VirtualReg_22, VirtualReg_23
	li	VirtualReg_25, 8
	mul	VirtualReg_26, VirtualReg_24, VirtualReg_25
	li	VirtualReg_27, 4
	add	VirtualReg_28, VirtualReg_26, VirtualReg_27
	mv	a0, VirtualReg_28
	call	malloc
	mv	VirtualReg_29, a0
	sw	VirtualReg_24, 0(VirtualReg_29)
	li	VirtualReg_32, 1
	li	VirtualReg_33, 4
	mul	VirtualReg_31, VirtualReg_32, VirtualReg_33
	add	VirtualReg_30, VirtualReg_29, VirtualReg_31
	sw	VirtualReg_30, 0(VirtualReg_17)
	addi	VirtualReg_34, VirtualReg_0, 8
	li	VirtualReg_35, 0
	sw	VirtualReg_35, 0(VirtualReg_34)
	j	.classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_doubleStorage_ID25_for_condition:
	addi	VirtualReg_36, VirtualReg_0, 8
	lw	VirtualReg_37, 0(VirtualReg_36)
	xor	VirtualReg_38, VirtualReg_37, VirtualReg_16
	sltiu	VirtualReg_38, VirtualReg_38, 1
	xori	VirtualReg_38, VirtualReg_38, 1
	bnez	VirtualReg_38, .classArray_Node_doubleStorage_ID25_for_suite
	j	.classArray_Node_doubleStorage_ID25_for_out
.classArray_Node_doubleStorage_ID25_for_suite:
	addi	VirtualReg_39, VirtualReg_0, 0
	lw	VirtualReg_40, 0(VirtualReg_39)
	addi	VirtualReg_41, VirtualReg_0, 8
	lw	VirtualReg_42, 0(VirtualReg_41)
	li	VirtualReg_45, 8
	mul	VirtualReg_44, VirtualReg_42, VirtualReg_45
	add	VirtualReg_43, VirtualReg_40, VirtualReg_44
	addi	VirtualReg_46, VirtualReg_0, 8
	lw	VirtualReg_47, 0(VirtualReg_46)
	li	VirtualReg_50, 8
	mul	VirtualReg_49, VirtualReg_47, VirtualReg_50
	add	VirtualReg_48, VirtualReg_14, VirtualReg_49
	lw	VirtualReg_51, 0(VirtualReg_48)
	sw	VirtualReg_51, 0(VirtualReg_43)
	j	.classArray_Node_doubleStorage_ID25_for_incr
.classArray_Node_doubleStorage_ID25_for_incr:
	addi	VirtualReg_52, VirtualReg_0, 8
	lw	VirtualReg_53, 0(VirtualReg_52)
	li	VirtualReg_54, 1
	add	VirtualReg_55, VirtualReg_53, VirtualReg_54
	sw	VirtualReg_55, 0(VirtualReg_52)
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
	j	.Heap_Node_entry
.Heap_Node_entry:
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
	j	.classHeap_Node_push_entry
.classHeap_Node_push_entry:
	addi	VirtualReg_14, VirtualReg_0, 0
	lw	VirtualReg_15, 0(VirtualReg_14)
	mv	a0, VirtualReg_15
	mv	a1, VirtualReg_1
	call	classArray_Node_push_back
	mv	a0, VirtualReg_0
	call	classHeap_Node_size
	mv	VirtualReg_16, a0
	li	VirtualReg_17, 1
	sub	VirtualReg_18, VirtualReg_16, VirtualReg_17
	mv	VirtualReg_19, VirtualReg_18
	j	.classHeap_Node_push_ID14_while_condition
.classHeap_Node_push_ID14_while_condition:
	li	VirtualReg_20, 0
	slt	VirtualReg_21, VirtualReg_20, VirtualReg_19
	bnez	VirtualReg_21, .classHeap_Node_push_ID16_while_suite
	j	.classHeap_Node_push_ID14_while_condition_mid
.classHeap_Node_push_ID14_while_condition_mid:
	j	.classHeap_Node_push_ID16_while_out
.classHeap_Node_push_ID29_if_true:
	j	.classHeap_Node_push_ID16_while_out
.classHeap_Node_push_ID29_if_out:
	addi	VirtualReg_22, VirtualReg_0, 0
	lw	VirtualReg_23, 0(VirtualReg_22)
	mv	a0, VirtualReg_23
	mv	a1, VirtualReg_24
	mv	a2, VirtualReg_19
	call	classArray_Node_swap
	mv	VirtualReg_19, VirtualReg_24
	j	.classHeap_Node_push_ID14_while_condition
.classHeap_Node_push_ID16_while_suite:
	mv	a0, VirtualReg_0
	mv	a1, VirtualReg_19
	call	classHeap_Node_pnt
	mv	VirtualReg_24, a0
	addi	VirtualReg_25, VirtualReg_0, 0
	lw	VirtualReg_26, 0(VirtualReg_25)
	mv	a0, VirtualReg_26
	mv	a1, VirtualReg_24
	call	classArray_Node_get
	mv	VirtualReg_27, a0
	mv	a0, VirtualReg_27
	call	classNode_key_
	mv	VirtualReg_28, a0
	addi	VirtualReg_29, VirtualReg_0, 0
	lw	VirtualReg_30, 0(VirtualReg_29)
	mv	a0, VirtualReg_30
	mv	a1, VirtualReg_19
	call	classArray_Node_get
	mv	VirtualReg_31, a0
	mv	a0, VirtualReg_31
	call	classNode_key_
	mv	VirtualReg_32, a0
	slt	VirtualReg_33, VirtualReg_28, VirtualReg_32
	xori	VirtualReg_33, VirtualReg_33, 1
	bnez	VirtualReg_33, .classHeap_Node_push_ID29_if_true
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
	j	.classHeap_Node_pop_entry
.classHeap_Node_pop_entry:
	addi	VirtualReg_13, VirtualReg_0, 0
	lw	VirtualReg_14, 0(VirtualReg_13)
	mv	a0, VirtualReg_14
	call	classArray_Node_front
	mv	VirtualReg_15, a0
	addi	VirtualReg_16, VirtualReg_0, 0
	lw	VirtualReg_17, 0(VirtualReg_16)
	mv	a0, VirtualReg_0
	call	classHeap_Node_size
	mv	VirtualReg_18, a0
	li	VirtualReg_19, 1
	sub	VirtualReg_20, VirtualReg_18, VirtualReg_19
	mv	a0, VirtualReg_17
	li	VirtualReg_21, 0
	mv	a1, VirtualReg_21
	mv	a2, VirtualReg_20
	call	classArray_Node_swap
	addi	VirtualReg_22, VirtualReg_0, 0
	lw	VirtualReg_23, 0(VirtualReg_22)
	mv	a0, VirtualReg_23
	call	classArray_Node_pop_back
	mv	VirtualReg_24, a0
	mv	a0, VirtualReg_0
	li	VirtualReg_25, 0
	mv	a1, VirtualReg_25
	call	classHeap_Node_maxHeapify
	j	.classHeap_Node_pop_return
.classHeap_Node_pop_return:
	mv	a0, VirtualReg_15
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
	j	.classHeap_Node_top_entry
.classHeap_Node_top_entry:
	addi	VirtualReg_13, VirtualReg_0, 0
	lw	VirtualReg_14, 0(VirtualReg_13)
	mv	a0, VirtualReg_14
	call	classArray_Node_front
	mv	VirtualReg_15, a0
	j	.classHeap_Node_top_return
.classHeap_Node_top_return:
	mv	a0, VirtualReg_15
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
	j	.classHeap_Node_size_entry
.classHeap_Node_size_entry:
	addi	VirtualReg_13, VirtualReg_0, 0
	lw	VirtualReg_14, 0(VirtualReg_13)
	mv	a0, VirtualReg_14
	call	classArray_Node_size
	mv	VirtualReg_15, a0
	j	.classHeap_Node_size_return
.classHeap_Node_size_return:
	mv	a0, VirtualReg_15
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
	j	.classHeap_Node_lchild_entry
.classHeap_Node_lchild_entry:
	li	VirtualReg_14, 2
	mul	VirtualReg_15, VirtualReg_1, VirtualReg_14
	li	VirtualReg_16, 1
	add	VirtualReg_17, VirtualReg_15, VirtualReg_16
	j	.classHeap_Node_lchild_return
.classHeap_Node_lchild_return:
	mv	a0, VirtualReg_17
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
	j	.classHeap_Node_rchild_entry
.classHeap_Node_rchild_entry:
	li	VirtualReg_14, 2
	mul	VirtualReg_15, VirtualReg_1, VirtualReg_14
	li	VirtualReg_16, 2
	add	VirtualReg_17, VirtualReg_15, VirtualReg_16
	j	.classHeap_Node_rchild_return
.classHeap_Node_rchild_return:
	mv	a0, VirtualReg_17
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
	j	.classHeap_Node_pnt_entry
.classHeap_Node_pnt_entry:
	li	VirtualReg_14, 1
	sub	VirtualReg_15, VirtualReg_1, VirtualReg_14
	li	VirtualReg_16, 2
	div	VirtualReg_17, VirtualReg_15, VirtualReg_16
	j	.classHeap_Node_pnt_return
.classHeap_Node_pnt_return:
	mv	a0, VirtualReg_17
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
	j	.classHeap_Node_maxHeapify_entry
.classHeap_Node_maxHeapify_entry:
	mv	a0, VirtualReg_0
	mv	a1, VirtualReg_1
	call	classHeap_Node_lchild
	mv	VirtualReg_14, a0
	mv	a0, VirtualReg_0
	mv	a1, VirtualReg_1
	call	classHeap_Node_rchild
	mv	VirtualReg_15, a0
	mv	a0, VirtualReg_0
	call	classHeap_Node_size
	mv	VirtualReg_16, a0
	slt	VirtualReg_17, VirtualReg_14, VirtualReg_16
	bnez	VirtualReg_17, .classHeap_Node_maxHeapify_ID16_AndAnd_true
	j	.classHeap_Node_maxHeapify_entry_mid
.classHeap_Node_maxHeapify_entry_mid:
	li	VirtualReg_45, 0
	mv	VirtualReg_27, VirtualReg_45
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_maxHeapify_ID16_AndAnd_true:
	addi	VirtualReg_18, VirtualReg_0, 0
	lw	VirtualReg_19, 0(VirtualReg_18)
	mv	a0, VirtualReg_19
	mv	a1, VirtualReg_14
	call	classArray_Node_get
	mv	VirtualReg_20, a0
	mv	a0, VirtualReg_20
	call	classNode_key_
	mv	VirtualReg_21, a0
	addi	VirtualReg_22, VirtualReg_0, 0
	lw	VirtualReg_23, 0(VirtualReg_22)
	mv	a0, VirtualReg_23
	mv	a1, VirtualReg_1
	call	classArray_Node_get
	mv	VirtualReg_24, a0
	mv	a0, VirtualReg_24
	call	classNode_key_
	mv	VirtualReg_25, a0
	slt	VirtualReg_26, VirtualReg_25, VirtualReg_21
	mv	VirtualReg_27, VirtualReg_26
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_maxHeapify_ID16_AndAnd_out_mid:
	mv	VirtualReg_28, VirtualReg_1
	j	.classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_maxHeapify_ID16_AndAnd_out:
	bnez	VirtualReg_27, .classHeap_Node_maxHeapify_ID28_if_true
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out_mid
.classHeap_Node_maxHeapify_ID28_if_out_mid:
	li	VirtualReg_46, 0
	mv	VirtualReg_40, VirtualReg_46
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_maxHeapify_ID28_if_true:
	mv	VirtualReg_28, VirtualReg_14
	j	.classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_maxHeapify_ID32_AndAnd_out_mid:
	mv	VirtualReg_41, VirtualReg_28
	j	.classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_maxHeapify_ID28_if_out:
	mv	a0, VirtualReg_0
	call	classHeap_Node_size
	mv	VirtualReg_29, a0
	slt	VirtualReg_30, VirtualReg_15, VirtualReg_29
	bnez	VirtualReg_30, .classHeap_Node_maxHeapify_ID32_AndAnd_true
	j	.classHeap_Node_maxHeapify_ID28_if_out_mid
.classHeap_Node_maxHeapify_ID32_AndAnd_true:
	addi	VirtualReg_31, VirtualReg_0, 0
	lw	VirtualReg_32, 0(VirtualReg_31)
	mv	a0, VirtualReg_32
	mv	a1, VirtualReg_15
	call	classArray_Node_get
	mv	VirtualReg_33, a0
	mv	a0, VirtualReg_33
	call	classNode_key_
	mv	VirtualReg_34, a0
	addi	VirtualReg_35, VirtualReg_0, 0
	lw	VirtualReg_36, 0(VirtualReg_35)
	mv	a0, VirtualReg_36
	mv	a1, VirtualReg_28
	call	classArray_Node_get
	mv	VirtualReg_37, a0
	mv	a0, VirtualReg_37
	call	classNode_key_
	mv	VirtualReg_38, a0
	slt	VirtualReg_39, VirtualReg_38, VirtualReg_34
	mv	VirtualReg_40, VirtualReg_39
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_maxHeapify_ID32_AndAnd_out:
	bnez	VirtualReg_40, .classHeap_Node_maxHeapify_ID44_if_true
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out_mid
.classHeap_Node_maxHeapify_ID44_if_true:
	mv	VirtualReg_41, VirtualReg_15
	j	.classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_maxHeapify_ID44_if_out:
	xor	VirtualReg_42, VirtualReg_41, VirtualReg_1
	sltiu	VirtualReg_42, VirtualReg_42, 1
	bnez	VirtualReg_42, .classHeap_Node_maxHeapify_ID48_if_true
	j	.classHeap_Node_maxHeapify_ID48_if_out
.classHeap_Node_maxHeapify_ID48_if_true:
	j	.classHeap_Node_maxHeapify_return
.classHeap_Node_maxHeapify_ID48_if_out:
	addi	VirtualReg_43, VirtualReg_0, 0
	lw	VirtualReg_44, 0(VirtualReg_43)
	mv	a0, VirtualReg_44
	mv	a1, VirtualReg_1
	mv	a2, VirtualReg_41
	call	classArray_Node_swap
	mv	a0, VirtualReg_0
	mv	a1, VirtualReg_41
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
	j	.init_entry
.init_entry:
	call	getInt
	mv	VirtualReg_12, a0
	li	VirtualReg_13, 0
	sw	VirtualReg_12, fuckLLVM_n, VirtualReg_13
	call	getInt
	mv	VirtualReg_14, a0
	li	VirtualReg_15, 0
	sw	VirtualReg_14, fuckLLVM_m, VirtualReg_15
	li	VirtualReg_16, 28
	mv	a0, VirtualReg_16
	call	malloc
	mv	VirtualReg_17, a0
	mv	a0, VirtualReg_17
	call	EdgeList
	li	VirtualReg_18, 0
	sw	VirtualReg_17, fuckLLVM_g, VirtualReg_18
	lw	VirtualReg_19, fuckLLVM_g
	lw	VirtualReg_20, fuckLLVM_n
	lw	VirtualReg_21, fuckLLVM_m
	mv	a0, VirtualReg_19
	mv	a1, VirtualReg_20
	mv	a2, VirtualReg_21
	call	classEdgeList_init
	li	VirtualReg_31, 0
	mv	VirtualReg_22, VirtualReg_31
	j	.init_ID10_for_condition
.init_ID10_for_condition:
	lw	VirtualReg_23, fuckLLVM_m
	slt	VirtualReg_24, VirtualReg_22, VirtualReg_23
	bnez	VirtualReg_24, .init_ID10_for_suite
	j	.init_ID10_for_out
.init_ID10_for_suite:
	call	getInt
	mv	VirtualReg_25, a0
	call	getInt
	mv	VirtualReg_26, a0
	call	getInt
	mv	VirtualReg_27, a0
	lw	VirtualReg_28, fuckLLVM_g
	mv	a0, VirtualReg_28
	mv	a1, VirtualReg_25
	mv	a2, VirtualReg_26
	mv	a3, VirtualReg_27
	call	classEdgeList_addEdge
	j	.init_ID10_for_incr
.init_ID10_for_incr:
	li	VirtualReg_29, 1
	add	VirtualReg_30, VirtualReg_22, VirtualReg_29
	mv	VirtualReg_22, VirtualReg_30
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
	j	.Node_entry
.Node_entry:
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
	j	.classNode_key__entry
.classNode_key__entry:
	addi	VirtualReg_13, VirtualReg_0, 4
	lw	VirtualReg_14, 0(VirtualReg_13)
	li	VirtualReg_15, 0
	sub	VirtualReg_16, VirtualReg_15, VirtualReg_14
	j	.classNode_key__return
.classNode_key__return:
	mv	a0, VirtualReg_16
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
	j	.dijkstra_entry
.dijkstra_entry:
	lw	VirtualReg_13, fuckLLVM_n
	li	VirtualReg_14, 4
	mul	VirtualReg_15, VirtualReg_13, VirtualReg_14
	li	VirtualReg_16, 4
	add	VirtualReg_17, VirtualReg_15, VirtualReg_16
	mv	a0, VirtualReg_17
	call	malloc
	mv	VirtualReg_18, a0
	sw	VirtualReg_13, 0(VirtualReg_18)
	li	VirtualReg_21, 1
	li	VirtualReg_22, 4
	mul	VirtualReg_20, VirtualReg_21, VirtualReg_22
	add	VirtualReg_19, VirtualReg_18, VirtualReg_20
	lw	VirtualReg_23, fuckLLVM_n
	li	VirtualReg_24, 4
	mul	VirtualReg_25, VirtualReg_23, VirtualReg_24
	li	VirtualReg_26, 4
	add	VirtualReg_27, VirtualReg_25, VirtualReg_26
	mv	a0, VirtualReg_27
	call	malloc
	mv	VirtualReg_28, a0
	sw	VirtualReg_23, 0(VirtualReg_28)
	li	VirtualReg_31, 1
	li	VirtualReg_32, 4
	mul	VirtualReg_30, VirtualReg_31, VirtualReg_32
	add	VirtualReg_29, VirtualReg_28, VirtualReg_30
	li	VirtualReg_140, 0
	mv	VirtualReg_33, VirtualReg_140
	j	.dijkstra_ID23_for_condition
.dijkstra_ID23_for_condition:
	lw	VirtualReg_34, fuckLLVM_n
	slt	VirtualReg_35, VirtualReg_33, VirtualReg_34
	bnez	VirtualReg_35, .dijkstra_ID23_for_suite
	j	.dijkstra_ID23_for_out
.dijkstra_ID23_for_suite:
	li	VirtualReg_38, 4
	mul	VirtualReg_37, VirtualReg_33, VirtualReg_38
	add	VirtualReg_36, VirtualReg_29, VirtualReg_37
	lw	VirtualReg_39, fuckLLVM_INF
	sw	VirtualReg_39, 0(VirtualReg_36)
	li	VirtualReg_42, 4
	mul	VirtualReg_41, VirtualReg_33, VirtualReg_42
	add	VirtualReg_40, VirtualReg_19, VirtualReg_41
	li	VirtualReg_43, 0
	sw	VirtualReg_43, 0(VirtualReg_40)
	j	.dijkstra_ID23_for_incr
.dijkstra_ID23_for_incr:
	li	VirtualReg_44, 1
	add	VirtualReg_45, VirtualReg_33, VirtualReg_44
	mv	VirtualReg_33, VirtualReg_45
	j	.dijkstra_ID23_for_condition
.dijkstra_ID23_for_out:
	li	VirtualReg_48, 4
	mul	VirtualReg_47, VirtualReg_0, VirtualReg_48
	add	VirtualReg_46, VirtualReg_29, VirtualReg_47
	li	VirtualReg_49, 0
	sw	VirtualReg_49, 0(VirtualReg_46)
	li	VirtualReg_50, 8
	mv	a0, VirtualReg_50
	call	malloc
	mv	VirtualReg_51, a0
	mv	a0, VirtualReg_51
	call	Heap_Node
	li	VirtualReg_52, 8
	mv	a0, VirtualReg_52
	call	malloc
	mv	VirtualReg_53, a0
	mv	a0, VirtualReg_53
	call	Node
	addi	VirtualReg_54, VirtualReg_53, 4
	li	VirtualReg_55, 0
	sw	VirtualReg_55, 0(VirtualReg_54)
	addi	VirtualReg_56, VirtualReg_53, 0
	sw	VirtualReg_0, 0(VirtualReg_56)
	mv	a0, VirtualReg_51
	mv	a1, VirtualReg_53
	call	classHeap_Node_push
	li	VirtualReg_141, 0
	mv	VirtualReg_57, VirtualReg_141
	li	VirtualReg_142, 0
	mv	VirtualReg_58, VirtualReg_142
	li	VirtualReg_143, 0
	mv	VirtualReg_59, VirtualReg_143
	li	VirtualReg_144, 0
	mv	VirtualReg_60, VirtualReg_144
	j	.dijkstra_ID56_while_condition
.dijkstra_ID56_while_condition:
	mv	a0, VirtualReg_51
	call	classHeap_Node_size
	mv	VirtualReg_61, a0
	li	VirtualReg_62, 0
	xor	VirtualReg_63, VirtualReg_61, VirtualReg_62
	sltiu	VirtualReg_63, VirtualReg_63, 1
	xori	VirtualReg_63, VirtualReg_63, 1
	bnez	VirtualReg_63, .dijkstra_ID59_while_suite
	j	.dijkstra_ID59_while_out
.dijkstra_ID71_if_true:
	j	.dijkstra_ID56_while_condition
.dijkstra_ID71_if_out:
	li	VirtualReg_67, 4
	mul	VirtualReg_65, VirtualReg_66, VirtualReg_67
	add	VirtualReg_64, VirtualReg_19, VirtualReg_65
	li	VirtualReg_68, 1
	sw	VirtualReg_68, 0(VirtualReg_64)
	lw	VirtualReg_69, fuckLLVM_g
	addi	VirtualReg_70, VirtualReg_69, 16
	lw	VirtualReg_71, 0(VirtualReg_70)
	li	VirtualReg_74, 4
	mul	VirtualReg_73, VirtualReg_66, VirtualReg_74
	add	VirtualReg_72, VirtualReg_71, VirtualReg_73
	lw	VirtualReg_75, 0(VirtualReg_72)
	mv	VirtualReg_76, VirtualReg_57
	mv	VirtualReg_77, VirtualReg_58
	mv	VirtualReg_78, VirtualReg_75
	mv	VirtualReg_79, VirtualReg_60
	mv	VirtualReg_80, VirtualReg_132
	j	.dijkstra_ID81_for_condition
.dijkstra_ID81_for_condition:
	li	VirtualReg_81, 0
	li	VirtualReg_82, 1
	sub	VirtualReg_83, VirtualReg_81, VirtualReg_82
	xor	VirtualReg_84, VirtualReg_78, VirtualReg_83
	sltiu	VirtualReg_84, VirtualReg_84, 1
	xori	VirtualReg_84, VirtualReg_84, 1
	bnez	VirtualReg_84, .dijkstra_ID81_for_suite
	j	.dijkstra_ID81_for_out
.dijkstra_ID81_for_suite:
	lw	VirtualReg_85, fuckLLVM_g
	addi	VirtualReg_86, VirtualReg_85, 0
	lw	VirtualReg_87, 0(VirtualReg_86)
	li	VirtualReg_90, 12
	mul	VirtualReg_89, VirtualReg_78, VirtualReg_90
	add	VirtualReg_88, VirtualReg_87, VirtualReg_89
	lw	VirtualReg_91, 0(VirtualReg_88)
	addi	VirtualReg_92, VirtualReg_91, 4
	lw	VirtualReg_93, 0(VirtualReg_92)
	lw	VirtualReg_94, fuckLLVM_g
	addi	VirtualReg_95, VirtualReg_94, 0
	lw	VirtualReg_96, 0(VirtualReg_95)
	li	VirtualReg_99, 12
	mul	VirtualReg_98, VirtualReg_78, VirtualReg_99
	add	VirtualReg_97, VirtualReg_96, VirtualReg_98
	lw	VirtualReg_100, 0(VirtualReg_97)
	addi	VirtualReg_101, VirtualReg_100, 8
	lw	VirtualReg_102, 0(VirtualReg_101)
	li	VirtualReg_105, 4
	mul	VirtualReg_104, VirtualReg_66, VirtualReg_105
	add	VirtualReg_103, VirtualReg_29, VirtualReg_104
	lw	VirtualReg_106, 0(VirtualReg_103)
	add	VirtualReg_107, VirtualReg_106, VirtualReg_102
	li	VirtualReg_110, 4
	mul	VirtualReg_109, VirtualReg_93, VirtualReg_110
	add	VirtualReg_108, VirtualReg_29, VirtualReg_109
	lw	VirtualReg_111, 0(VirtualReg_108)
	slt	VirtualReg_112, VirtualReg_107, VirtualReg_111
	xori	VirtualReg_112, VirtualReg_112, 1
	bnez	VirtualReg_112, .dijkstra_ID115_if_true
	j	.dijkstra_ID115_if_out
.dijkstra_ID115_if_true:
	mv	VirtualReg_124, VirtualReg_80
	j	.dijkstra_ID81_for_incr
.dijkstra_ID115_if_out:
	li	VirtualReg_115, 4
	mul	VirtualReg_114, VirtualReg_93, VirtualReg_115
	add	VirtualReg_113, VirtualReg_29, VirtualReg_114
	sw	VirtualReg_107, 0(VirtualReg_113)
	li	VirtualReg_116, 8
	mv	a0, VirtualReg_116
	call	malloc
	mv	VirtualReg_117, a0
	mv	a0, VirtualReg_117
	call	Node
	addi	VirtualReg_118, VirtualReg_117, 0
	sw	VirtualReg_93, 0(VirtualReg_118)
	addi	VirtualReg_119, VirtualReg_117, 4
	li	VirtualReg_122, 4
	mul	VirtualReg_121, VirtualReg_93, VirtualReg_122
	add	VirtualReg_120, VirtualReg_29, VirtualReg_121
	lw	VirtualReg_123, 0(VirtualReg_120)
	sw	VirtualReg_123, 0(VirtualReg_119)
	mv	a0, VirtualReg_51
	mv	a1, VirtualReg_117
	call	classHeap_Node_push
	mv	VirtualReg_124, VirtualReg_117
	j	.dijkstra_ID81_for_incr
.dijkstra_ID81_for_incr:
	lw	VirtualReg_125, fuckLLVM_g
	addi	VirtualReg_126, VirtualReg_125, 8
	lw	VirtualReg_127, 0(VirtualReg_126)
	li	VirtualReg_130, 4
	mul	VirtualReg_129, VirtualReg_78, VirtualReg_130
	add	VirtualReg_128, VirtualReg_127, VirtualReg_129
	lw	VirtualReg_131, 0(VirtualReg_128)
	mv	VirtualReg_76, VirtualReg_102
	mv	VirtualReg_77, VirtualReg_107
	mv	VirtualReg_78, VirtualReg_131
	mv	VirtualReg_79, VirtualReg_93
	mv	VirtualReg_80, VirtualReg_124
	j	.dijkstra_ID81_for_condition
.dijkstra_ID81_for_out:
	mv	VirtualReg_57, VirtualReg_76
	mv	VirtualReg_58, VirtualReg_77
	mv	VirtualReg_59, VirtualReg_78
	mv	VirtualReg_60, VirtualReg_79
	j	.dijkstra_ID56_while_condition
.dijkstra_ID59_while_suite:
	mv	a0, VirtualReg_51
	call	classHeap_Node_pop
	mv	VirtualReg_132, a0
	addi	VirtualReg_133, VirtualReg_132, 0
	lw	VirtualReg_66, 0(VirtualReg_133)
	li	VirtualReg_136, 4
	mul	VirtualReg_135, VirtualReg_66, VirtualReg_136
	add	VirtualReg_134, VirtualReg_19, VirtualReg_135
	lw	VirtualReg_137, 0(VirtualReg_134)
	li	VirtualReg_138, 1
	xor	VirtualReg_139, VirtualReg_137, VirtualReg_138
	sltiu	VirtualReg_139, VirtualReg_139, 1
	bnez	VirtualReg_139, .dijkstra_ID71_if_true
	j	.dijkstra_ID71_if_out
.dijkstra_ID59_while_out:
	j	.dijkstra_return
.dijkstra_return:
	mv	a0, VirtualReg_29
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
	j	.main_entry
.main_entry:
	call	__init
	call	init
	li	VirtualReg_38, 0
	mv	VirtualReg_12, VirtualReg_38
	j	.main_ID3_for_condition
.main_ID3_for_condition:
	lw	VirtualReg_13, fuckLLVM_n
	slt	VirtualReg_14, VirtualReg_12, VirtualReg_13
	bnez	VirtualReg_14, .main_ID3_for_suite
	j	.main_ID3_for_out
.main_ID3_for_suite:
	mv	a0, VirtualReg_12
	call	dijkstra
	mv	VirtualReg_15, a0
	li	VirtualReg_39, 0
	mv	VirtualReg_16, VirtualReg_39
	j	.main_ID10_for_condition
.main_ID10_for_condition:
	lw	VirtualReg_17, fuckLLVM_n
	slt	VirtualReg_18, VirtualReg_16, VirtualReg_17
	bnez	VirtualReg_18, .main_ID10_for_suite
	j	.main_ID10_for_out
.main_ID10_for_suite:
	li	VirtualReg_21, 4
	mul	VirtualReg_20, VirtualReg_16, VirtualReg_21
	add	VirtualReg_19, VirtualReg_15, VirtualReg_20
	lw	VirtualReg_22, 0(VirtualReg_19)
	lw	VirtualReg_23, fuckLLVM_INF
	xor	VirtualReg_24, VirtualReg_22, VirtualReg_23
	sltiu	VirtualReg_24, VirtualReg_24, 1
	bnez	VirtualReg_24, .main_ID19_if_true
	j	.main_ID19_if_false
.main_ID19_if_true:
	la	VirtualReg_25, fuckLLVM_.str.0
	mv	a0, VirtualReg_25
	call	print
	j	.main_ID19_if_out
.main_ID19_if_false:
	li	VirtualReg_28, 4
	mul	VirtualReg_27, VirtualReg_16, VirtualReg_28
	add	VirtualReg_26, VirtualReg_15, VirtualReg_27
	lw	VirtualReg_29, 0(VirtualReg_26)
	mv	a0, VirtualReg_29
	call	toString
	mv	VirtualReg_30, a0
	mv	a0, VirtualReg_30
	call	print
	j	.main_ID19_if_out
.main_ID19_if_out:
	la	VirtualReg_31, fuckLLVM_.str.1
	mv	a0, VirtualReg_31
	call	print
	j	.main_ID10_for_incr
.main_ID10_for_incr:
	li	VirtualReg_32, 1
	add	VirtualReg_33, VirtualReg_16, VirtualReg_32
	mv	VirtualReg_16, VirtualReg_33
	j	.main_ID10_for_condition
.main_ID10_for_out:
	la	VirtualReg_34, fuckLLVM_.str.2
	mv	a0, VirtualReg_34
	call	println
	j	.main_ID3_for_incr
.main_ID3_for_incr:
	li	VirtualReg_35, 1
	add	VirtualReg_36, VirtualReg_12, VirtualReg_35
	mv	VirtualReg_12, VirtualReg_36
	j	.main_ID3_for_condition
.main_ID3_for_out:
	j	.main_return
.main_return:
	li	VirtualReg_37, 0
	mv	a0, VirtualReg_37
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

