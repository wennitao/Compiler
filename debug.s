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
	mv	VirtualReg_16, VirtualReg_2
	li	VirtualReg_17, 12
	mul	VirtualReg_18, VirtualReg_16, VirtualReg_17
	li	VirtualReg_19, 4
	add	VirtualReg_20, VirtualReg_18, VirtualReg_19
	mv	a0, VirtualReg_20
	call	malloc
	mv	VirtualReg_21, a0
	mv	VirtualReg_22, VirtualReg_21
	sw	VirtualReg_2, 0(VirtualReg_22)
	li	VirtualReg_25, 1
	li	VirtualReg_26, 4
	mul	VirtualReg_24, VirtualReg_25, VirtualReg_26
	add	VirtualReg_23, VirtualReg_22, VirtualReg_24
	mv	VirtualReg_27, VirtualReg_23
	mv	VirtualReg_28, VirtualReg_27
	sw	VirtualReg_28, 0(VirtualReg_15)
	addi	VirtualReg_29, VirtualReg_0, 8
	mv	VirtualReg_30, VirtualReg_2
	li	VirtualReg_31, 4
	mul	VirtualReg_32, VirtualReg_30, VirtualReg_31
	li	VirtualReg_33, 4
	add	VirtualReg_34, VirtualReg_32, VirtualReg_33
	mv	a0, VirtualReg_34
	call	malloc
	mv	VirtualReg_35, a0
	mv	VirtualReg_36, VirtualReg_35
	sw	VirtualReg_2, 0(VirtualReg_36)
	li	VirtualReg_39, 1
	li	VirtualReg_40, 4
	mul	VirtualReg_38, VirtualReg_39, VirtualReg_40
	add	VirtualReg_37, VirtualReg_36, VirtualReg_38
	mv	VirtualReg_41, VirtualReg_37
	mv	VirtualReg_42, VirtualReg_41
	sw	VirtualReg_42, 0(VirtualReg_29)
	addi	VirtualReg_43, VirtualReg_0, 16
	mv	VirtualReg_44, VirtualReg_1
	li	VirtualReg_45, 4
	mul	VirtualReg_46, VirtualReg_44, VirtualReg_45
	li	VirtualReg_47, 4
	add	VirtualReg_48, VirtualReg_46, VirtualReg_47
	mv	a0, VirtualReg_48
	call	malloc
	mv	VirtualReg_49, a0
	mv	VirtualReg_50, VirtualReg_49
	sw	VirtualReg_1, 0(VirtualReg_50)
	li	VirtualReg_53, 1
	li	VirtualReg_54, 4
	mul	VirtualReg_52, VirtualReg_53, VirtualReg_54
	add	VirtualReg_51, VirtualReg_50, VirtualReg_52
	mv	VirtualReg_55, VirtualReg_51
	mv	VirtualReg_56, VirtualReg_55
	sw	VirtualReg_56, 0(VirtualReg_43)
	li	VirtualReg_79, 0
	mv	VirtualReg_57, VirtualReg_79
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_condition:
	slt	VirtualReg_58, VirtualReg_57, VirtualReg_2
	bnez	VirtualReg_58, .classEdgeList_init_ID38_for_suite
	j	.classEdgeList_init_ID38_for_out
.classEdgeList_init_ID38_for_suite:
	addi	VirtualReg_59, VirtualReg_0, 8
	lw	VirtualReg_60, 0(VirtualReg_59)
	li	VirtualReg_63, 4
	mul	VirtualReg_62, VirtualReg_57, VirtualReg_63
	add	VirtualReg_61, VirtualReg_60, VirtualReg_62
	li	VirtualReg_64, -1
	sw	VirtualReg_64, 0(VirtualReg_61)
	j	.classEdgeList_init_ID38_for_incr
.classEdgeList_init_ID38_for_incr:
	li	VirtualReg_65, 1
	add	VirtualReg_66, VirtualReg_57, VirtualReg_65
	mv	VirtualReg_57, VirtualReg_66
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_out:
	li	VirtualReg_80, 0
	mv	VirtualReg_67, VirtualReg_80
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_condition:
	slt	VirtualReg_68, VirtualReg_67, VirtualReg_1
	bnez	VirtualReg_68, .classEdgeList_init_ID48_for_suite
	j	.classEdgeList_init_ID48_for_out
.classEdgeList_init_ID48_for_suite:
	addi	VirtualReg_69, VirtualReg_0, 16
	lw	VirtualReg_70, 0(VirtualReg_69)
	li	VirtualReg_73, 4
	mul	VirtualReg_72, VirtualReg_67, VirtualReg_73
	add	VirtualReg_71, VirtualReg_70, VirtualReg_72
	li	VirtualReg_74, -1
	sw	VirtualReg_74, 0(VirtualReg_71)
	j	.classEdgeList_init_ID48_for_incr
.classEdgeList_init_ID48_for_incr:
	li	VirtualReg_75, 1
	add	VirtualReg_76, VirtualReg_67, VirtualReg_75
	mv	VirtualReg_67, VirtualReg_76
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_out:
	addi	VirtualReg_77, VirtualReg_0, 24
	li	VirtualReg_78, 0
	sw	VirtualReg_78, 0(VirtualReg_77)
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
	mv	VirtualReg_18, VirtualReg_17
	j	.classEdgeList_addEdge_call_Edge_0_out
.classEdgeList_addEdge_call_Edge_0_out:
	mv	VirtualReg_19, VirtualReg_18
	addi	VirtualReg_20, VirtualReg_19, 0
	sw	VirtualReg_1, 0(VirtualReg_20)
	addi	VirtualReg_21, VirtualReg_19, 4
	sw	VirtualReg_2, 0(VirtualReg_21)
	addi	VirtualReg_22, VirtualReg_19, 8
	sw	VirtualReg_3, 0(VirtualReg_22)
	addi	VirtualReg_23, VirtualReg_0, 0
	lw	VirtualReg_24, 0(VirtualReg_23)
	addi	VirtualReg_25, VirtualReg_0, 24
	lw	VirtualReg_26, 0(VirtualReg_25)
	li	VirtualReg_29, 12
	mul	VirtualReg_28, VirtualReg_26, VirtualReg_29
	add	VirtualReg_27, VirtualReg_24, VirtualReg_28
	mv	VirtualReg_30, VirtualReg_19
	sw	VirtualReg_30, 0(VirtualReg_27)
	addi	VirtualReg_31, VirtualReg_0, 8
	lw	VirtualReg_32, 0(VirtualReg_31)
	addi	VirtualReg_33, VirtualReg_0, 24
	lw	VirtualReg_34, 0(VirtualReg_33)
	li	VirtualReg_37, 4
	mul	VirtualReg_36, VirtualReg_34, VirtualReg_37
	add	VirtualReg_35, VirtualReg_32, VirtualReg_36
	addi	VirtualReg_38, VirtualReg_0, 16
	lw	VirtualReg_39, 0(VirtualReg_38)
	li	VirtualReg_42, 4
	mul	VirtualReg_41, VirtualReg_1, VirtualReg_42
	add	VirtualReg_40, VirtualReg_39, VirtualReg_41
	lw	VirtualReg_43, 0(VirtualReg_40)
	sw	VirtualReg_43, 0(VirtualReg_35)
	addi	VirtualReg_44, VirtualReg_0, 16
	lw	VirtualReg_45, 0(VirtualReg_44)
	li	VirtualReg_48, 4
	mul	VirtualReg_47, VirtualReg_1, VirtualReg_48
	add	VirtualReg_46, VirtualReg_45, VirtualReg_47
	addi	VirtualReg_49, VirtualReg_0, 24
	lw	VirtualReg_50, 0(VirtualReg_49)
	sw	VirtualReg_50, 0(VirtualReg_46)
	addi	VirtualReg_51, VirtualReg_0, 24
	lw	VirtualReg_52, 0(VirtualReg_51)
	li	VirtualReg_53, 1
	add	VirtualReg_54, VirtualReg_52, VirtualReg_53
	sw	VirtualReg_54, 0(VirtualReg_51)
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
	mv	VirtualReg_15, VirtualReg_14
	li	VirtualReg_18, -1
	li	VirtualReg_19, 4
	mul	VirtualReg_17, VirtualReg_18, VirtualReg_19
	add	VirtualReg_16, VirtualReg_15, VirtualReg_17
	lw	VirtualReg_20, 0(VirtualReg_16)
	j	.classEdgeList_nVertices_return
.classEdgeList_nVertices_return:
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
	mv	VirtualReg_15, VirtualReg_14
	li	VirtualReg_18, -1
	li	VirtualReg_19, 4
	mul	VirtualReg_17, VirtualReg_18, VirtualReg_19
	add	VirtualReg_16, VirtualReg_15, VirtualReg_17
	lw	VirtualReg_20, 0(VirtualReg_16)
	j	.classEdgeList_nEdges_return
.classEdgeList_nEdges_return:
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
	li	VirtualReg_16, 132
	mv	a0, VirtualReg_16
	call	malloc
	mv	VirtualReg_17, a0
	mv	VirtualReg_18, VirtualReg_17
	li	VirtualReg_19, 16
	sw	VirtualReg_19, 0(VirtualReg_18)
	li	VirtualReg_22, 1
	li	VirtualReg_23, 4
	mul	VirtualReg_21, VirtualReg_22, VirtualReg_23
	add	VirtualReg_20, VirtualReg_18, VirtualReg_21
	mv	VirtualReg_24, VirtualReg_20
	mv	VirtualReg_25, VirtualReg_24
	sw	VirtualReg_25, 0(VirtualReg_15)
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
	j	.classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry
.classArray_Node_push_back_call_classArray_Node_size_1_out:
	addi	VirtualReg_14, VirtualReg_0, 0
	lw	VirtualReg_15, 0(VirtualReg_14)
	mv	VirtualReg_16, VirtualReg_15
	li	VirtualReg_19, -1
	li	VirtualReg_20, 4
	mul	VirtualReg_18, VirtualReg_19, VirtualReg_20
	add	VirtualReg_17, VirtualReg_16, VirtualReg_18
	lw	VirtualReg_21, 0(VirtualReg_17)
	xor	VirtualReg_23, VirtualReg_22, VirtualReg_21
	sltiu	VirtualReg_23, VirtualReg_23, 1
	bnez	VirtualReg_23, .classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry
	j	.classArray_Node_push_back_ID12_if_out
.classArray_Node_push_back_ID12_if_out:
	addi	VirtualReg_24, VirtualReg_0, 0
	lw	VirtualReg_25, 0(VirtualReg_24)
	addi	VirtualReg_26, VirtualReg_0, 8
	lw	VirtualReg_27, 0(VirtualReg_26)
	li	VirtualReg_30, 8
	mul	VirtualReg_29, VirtualReg_27, VirtualReg_30
	add	VirtualReg_28, VirtualReg_25, VirtualReg_29
	mv	VirtualReg_31, VirtualReg_1
	sw	VirtualReg_31, 0(VirtualReg_28)
	addi	VirtualReg_32, VirtualReg_0, 8
	lw	VirtualReg_33, 0(VirtualReg_32)
	li	VirtualReg_34, 1
	add	VirtualReg_35, VirtualReg_33, VirtualReg_34
	sw	VirtualReg_35, 0(VirtualReg_32)
	j	.classArray_Node_push_back_return
.classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry:
	addi	VirtualReg_36, VirtualReg_0, 8
	lw	VirtualReg_22, 0(VirtualReg_36)
	j	.classArray_Node_push_back_call_classArray_Node_size_1_out
.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry:
	addi	VirtualReg_37, VirtualReg_0, 0
	lw	VirtualReg_38, 0(VirtualReg_37)
	mv	VirtualReg_39, VirtualReg_38
	addi	VirtualReg_40, VirtualReg_0, 8
	lw	VirtualReg_41, 0(VirtualReg_40)
	addi	VirtualReg_42, VirtualReg_0, 0
	mv	VirtualReg_43, VirtualReg_39
	li	VirtualReg_46, -1
	li	VirtualReg_47, 4
	mul	VirtualReg_45, VirtualReg_46, VirtualReg_47
	add	VirtualReg_44, VirtualReg_43, VirtualReg_45
	lw	VirtualReg_48, 0(VirtualReg_44)
	li	VirtualReg_49, 2
	mul	VirtualReg_50, VirtualReg_48, VirtualReg_49
	mv	VirtualReg_51, VirtualReg_50
	li	VirtualReg_52, 8
	mul	VirtualReg_53, VirtualReg_51, VirtualReg_52
	li	VirtualReg_54, 4
	add	VirtualReg_55, VirtualReg_53, VirtualReg_54
	mv	a0, VirtualReg_55
	call	malloc
	mv	VirtualReg_56, a0
	mv	VirtualReg_57, VirtualReg_56
	sw	VirtualReg_50, 0(VirtualReg_57)
	li	VirtualReg_60, 1
	li	VirtualReg_61, 4
	mul	VirtualReg_59, VirtualReg_60, VirtualReg_61
	add	VirtualReg_58, VirtualReg_57, VirtualReg_59
	mv	VirtualReg_62, VirtualReg_58
	mv	VirtualReg_63, VirtualReg_62
	sw	VirtualReg_63, 0(VirtualReg_42)
	addi	VirtualReg_64, VirtualReg_0, 8
	li	VirtualReg_65, 0
	sw	VirtualReg_65, 0(VirtualReg_64)
	j	.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition:
	addi	VirtualReg_66, VirtualReg_0, 8
	lw	VirtualReg_67, 0(VirtualReg_66)
	xor	VirtualReg_68, VirtualReg_67, VirtualReg_41
	sltiu	VirtualReg_68, VirtualReg_68, 1
	xori	VirtualReg_68, VirtualReg_68, 1
	bnez	VirtualReg_68, .classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite
	j	.classArray_Node_push_back_ID12_if_out
.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite:
	addi	VirtualReg_69, VirtualReg_0, 0
	lw	VirtualReg_70, 0(VirtualReg_69)
	addi	VirtualReg_71, VirtualReg_0, 8
	lw	VirtualReg_72, 0(VirtualReg_71)
	li	VirtualReg_75, 8
	mul	VirtualReg_74, VirtualReg_72, VirtualReg_75
	add	VirtualReg_73, VirtualReg_70, VirtualReg_74
	addi	VirtualReg_76, VirtualReg_0, 8
	lw	VirtualReg_77, 0(VirtualReg_76)
	li	VirtualReg_80, 8
	mul	VirtualReg_79, VirtualReg_77, VirtualReg_80
	add	VirtualReg_78, VirtualReg_39, VirtualReg_79
	lw	VirtualReg_81, 0(VirtualReg_78)
	mv	VirtualReg_82, VirtualReg_81
	sw	VirtualReg_82, 0(VirtualReg_73)
	j	.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr
.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr:
	addi	VirtualReg_83, VirtualReg_0, 8
	lw	VirtualReg_84, 0(VirtualReg_83)
	li	VirtualReg_85, 1
	add	VirtualReg_86, VirtualReg_84, VirtualReg_85
	sw	VirtualReg_86, 0(VirtualReg_83)
	j	.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
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
	mv	VirtualReg_25, VirtualReg_24
	j	.classArray_Node_pop_back_return
.classArray_Node_pop_back_return:
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
	mv	VirtualReg_23, VirtualReg_22
	j	.classArray_Node_back_return
.classArray_Node_back_return:
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
	mv	VirtualReg_20, VirtualReg_19
	j	.classArray_Node_front_return
.classArray_Node_front_return:
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
	mv	VirtualReg_16, VirtualReg_15
	li	VirtualReg_19, -1
	li	VirtualReg_20, 4
	mul	VirtualReg_18, VirtualReg_19, VirtualReg_20
	add	VirtualReg_17, VirtualReg_16, VirtualReg_18
	lw	VirtualReg_21, 0(VirtualReg_17)
	slt	VirtualReg_22, VirtualReg_21, VirtualReg_1
	bnez	VirtualReg_22, .classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_entry
	j	.classArray_Node_resize_ID13_while_out
.classArray_Node_resize_ID13_while_out:
	addi	VirtualReg_23, VirtualReg_0, 8
	sw	VirtualReg_1, 0(VirtualReg_23)
	j	.classArray_Node_resize_return
.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_entry:
	addi	VirtualReg_24, VirtualReg_0, 0
	lw	VirtualReg_25, 0(VirtualReg_24)
	mv	VirtualReg_26, VirtualReg_25
	addi	VirtualReg_27, VirtualReg_0, 8
	lw	VirtualReg_28, 0(VirtualReg_27)
	addi	VirtualReg_29, VirtualReg_0, 0
	mv	VirtualReg_30, VirtualReg_26
	li	VirtualReg_33, -1
	li	VirtualReg_34, 4
	mul	VirtualReg_32, VirtualReg_33, VirtualReg_34
	add	VirtualReg_31, VirtualReg_30, VirtualReg_32
	lw	VirtualReg_35, 0(VirtualReg_31)
	li	VirtualReg_36, 2
	mul	VirtualReg_37, VirtualReg_35, VirtualReg_36
	mv	VirtualReg_38, VirtualReg_37
	li	VirtualReg_39, 8
	mul	VirtualReg_40, VirtualReg_38, VirtualReg_39
	li	VirtualReg_41, 4
	add	VirtualReg_42, VirtualReg_40, VirtualReg_41
	mv	a0, VirtualReg_42
	call	malloc
	mv	VirtualReg_43, a0
	mv	VirtualReg_44, VirtualReg_43
	sw	VirtualReg_37, 0(VirtualReg_44)
	li	VirtualReg_47, 1
	li	VirtualReg_48, 4
	mul	VirtualReg_46, VirtualReg_47, VirtualReg_48
	add	VirtualReg_45, VirtualReg_44, VirtualReg_46
	mv	VirtualReg_49, VirtualReg_45
	mv	VirtualReg_50, VirtualReg_49
	sw	VirtualReg_50, 0(VirtualReg_29)
	addi	VirtualReg_51, VirtualReg_0, 8
	li	VirtualReg_52, 0
	sw	VirtualReg_52, 0(VirtualReg_51)
	j	.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_condition:
	addi	VirtualReg_53, VirtualReg_0, 8
	lw	VirtualReg_54, 0(VirtualReg_53)
	xor	VirtualReg_55, VirtualReg_54, VirtualReg_28
	sltiu	VirtualReg_55, VirtualReg_55, 1
	xori	VirtualReg_55, VirtualReg_55, 1
	bnez	VirtualReg_55, .classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_suite
	j	.classArray_Node_resize_ID6_while_condition
.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_suite:
	addi	VirtualReg_56, VirtualReg_0, 0
	lw	VirtualReg_57, 0(VirtualReg_56)
	addi	VirtualReg_58, VirtualReg_0, 8
	lw	VirtualReg_59, 0(VirtualReg_58)
	li	VirtualReg_62, 8
	mul	VirtualReg_61, VirtualReg_59, VirtualReg_62
	add	VirtualReg_60, VirtualReg_57, VirtualReg_61
	addi	VirtualReg_63, VirtualReg_0, 8
	lw	VirtualReg_64, 0(VirtualReg_63)
	li	VirtualReg_67, 8
	mul	VirtualReg_66, VirtualReg_64, VirtualReg_67
	add	VirtualReg_65, VirtualReg_26, VirtualReg_66
	lw	VirtualReg_68, 0(VirtualReg_65)
	mv	VirtualReg_69, VirtualReg_68
	sw	VirtualReg_69, 0(VirtualReg_60)
	j	.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_incr
.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_incr:
	addi	VirtualReg_70, VirtualReg_0, 8
	lw	VirtualReg_71, 0(VirtualReg_70)
	li	VirtualReg_72, 1
	add	VirtualReg_73, VirtualReg_71, VirtualReg_72
	sw	VirtualReg_73, 0(VirtualReg_70)
	j	.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_condition
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
	mv	VirtualReg_20, VirtualReg_19
	j	.classArray_Node_get_return
.classArray_Node_get_return:
	mv	a0, VirtualReg_20
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
	mv	VirtualReg_20, VirtualReg_2
	sw	VirtualReg_20, 0(VirtualReg_17)
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
	mv	VirtualReg_21, VirtualReg_20
	addi	VirtualReg_22, VirtualReg_0, 0
	lw	VirtualReg_23, 0(VirtualReg_22)
	li	VirtualReg_26, 8
	mul	VirtualReg_25, VirtualReg_1, VirtualReg_26
	add	VirtualReg_24, VirtualReg_23, VirtualReg_25
	addi	VirtualReg_27, VirtualReg_0, 0
	lw	VirtualReg_28, 0(VirtualReg_27)
	li	VirtualReg_31, 8
	mul	VirtualReg_30, VirtualReg_2, VirtualReg_31
	add	VirtualReg_29, VirtualReg_28, VirtualReg_30
	lw	VirtualReg_32, 0(VirtualReg_29)
	mv	VirtualReg_33, VirtualReg_32
	sw	VirtualReg_33, 0(VirtualReg_24)
	addi	VirtualReg_34, VirtualReg_0, 0
	lw	VirtualReg_35, 0(VirtualReg_34)
	li	VirtualReg_38, 8
	mul	VirtualReg_37, VirtualReg_2, VirtualReg_38
	add	VirtualReg_36, VirtualReg_35, VirtualReg_37
	mv	VirtualReg_39, VirtualReg_21
	sw	VirtualReg_39, 0(VirtualReg_36)
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
	mv	VirtualReg_15, VirtualReg_14
	addi	VirtualReg_16, VirtualReg_0, 8
	lw	VirtualReg_17, 0(VirtualReg_16)
	addi	VirtualReg_18, VirtualReg_0, 0
	mv	VirtualReg_19, VirtualReg_15
	li	VirtualReg_22, -1
	li	VirtualReg_23, 4
	mul	VirtualReg_21, VirtualReg_22, VirtualReg_23
	add	VirtualReg_20, VirtualReg_19, VirtualReg_21
	lw	VirtualReg_24, 0(VirtualReg_20)
	li	VirtualReg_25, 2
	mul	VirtualReg_26, VirtualReg_24, VirtualReg_25
	mv	VirtualReg_27, VirtualReg_26
	li	VirtualReg_28, 8
	mul	VirtualReg_29, VirtualReg_27, VirtualReg_28
	li	VirtualReg_30, 4
	add	VirtualReg_31, VirtualReg_29, VirtualReg_30
	mv	a0, VirtualReg_31
	call	malloc
	mv	VirtualReg_32, a0
	mv	VirtualReg_33, VirtualReg_32
	sw	VirtualReg_26, 0(VirtualReg_33)
	li	VirtualReg_36, 1
	li	VirtualReg_37, 4
	mul	VirtualReg_35, VirtualReg_36, VirtualReg_37
	add	VirtualReg_34, VirtualReg_33, VirtualReg_35
	mv	VirtualReg_38, VirtualReg_34
	mv	VirtualReg_39, VirtualReg_38
	sw	VirtualReg_39, 0(VirtualReg_18)
	addi	VirtualReg_40, VirtualReg_0, 8
	li	VirtualReg_41, 0
	sw	VirtualReg_41, 0(VirtualReg_40)
	j	.classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_doubleStorage_ID25_for_condition:
	addi	VirtualReg_42, VirtualReg_0, 8
	lw	VirtualReg_43, 0(VirtualReg_42)
	xor	VirtualReg_44, VirtualReg_43, VirtualReg_17
	sltiu	VirtualReg_44, VirtualReg_44, 1
	xori	VirtualReg_44, VirtualReg_44, 1
	bnez	VirtualReg_44, .classArray_Node_doubleStorage_ID25_for_suite
	j	.classArray_Node_doubleStorage_return
.classArray_Node_doubleStorage_ID25_for_suite:
	addi	VirtualReg_45, VirtualReg_0, 0
	lw	VirtualReg_46, 0(VirtualReg_45)
	addi	VirtualReg_47, VirtualReg_0, 8
	lw	VirtualReg_48, 0(VirtualReg_47)
	li	VirtualReg_51, 8
	mul	VirtualReg_50, VirtualReg_48, VirtualReg_51
	add	VirtualReg_49, VirtualReg_46, VirtualReg_50
	addi	VirtualReg_52, VirtualReg_0, 8
	lw	VirtualReg_53, 0(VirtualReg_52)
	li	VirtualReg_56, 8
	mul	VirtualReg_55, VirtualReg_53, VirtualReg_56
	add	VirtualReg_54, VirtualReg_15, VirtualReg_55
	lw	VirtualReg_57, 0(VirtualReg_54)
	mv	VirtualReg_58, VirtualReg_57
	sw	VirtualReg_58, 0(VirtualReg_49)
	j	.classArray_Node_doubleStorage_ID25_for_incr
.classArray_Node_doubleStorage_ID25_for_incr:
	addi	VirtualReg_59, VirtualReg_0, 8
	lw	VirtualReg_60, 0(VirtualReg_59)
	li	VirtualReg_61, 1
	add	VirtualReg_62, VirtualReg_60, VirtualReg_61
	sw	VirtualReg_62, 0(VirtualReg_59)
	j	.classArray_Node_doubleStorage_ID25_for_condition
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
	mv	VirtualReg_16, VirtualReg_15
	j	.Heap_Node_call_Array_Node_4_Array_Node_entry
.Heap_Node_call_Array_Node_4_out:
	mv	VirtualReg_17, VirtualReg_16
	sw	VirtualReg_17, 0(VirtualReg_13)
	j	.Heap_Node_return
.Heap_Node_call_Array_Node_4_Array_Node_entry:
	addi	VirtualReg_18, VirtualReg_16, 8
	li	VirtualReg_19, 0
	sw	VirtualReg_19, 0(VirtualReg_18)
	addi	VirtualReg_20, VirtualReg_16, 0
	li	VirtualReg_21, 132
	mv	a0, VirtualReg_21
	call	malloc
	mv	VirtualReg_22, a0
	mv	VirtualReg_23, VirtualReg_22
	li	VirtualReg_24, 16
	sw	VirtualReg_24, 0(VirtualReg_23)
	li	VirtualReg_27, 1
	li	VirtualReg_28, 4
	mul	VirtualReg_26, VirtualReg_27, VirtualReg_28
	add	VirtualReg_25, VirtualReg_23, VirtualReg_26
	mv	VirtualReg_29, VirtualReg_25
	mv	VirtualReg_30, VirtualReg_29
	sw	VirtualReg_30, 0(VirtualReg_20)
	j	.Heap_Node_call_Array_Node_4_out
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
	mv	VirtualReg_16, VirtualReg_1
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry
.classHeap_Node_push_call_classHeap_Node_size_6_out:
	li	VirtualReg_18, 1
	sub	VirtualReg_19, VirtualReg_17, VirtualReg_18
	mv	VirtualReg_20, VirtualReg_19
	j	.classHeap_Node_push_ID14_while_condition
.classHeap_Node_push_ID14_while_condition:
	li	VirtualReg_21, 0
	slt	VirtualReg_22, VirtualReg_21, VirtualReg_20
	bnez	VirtualReg_22, .classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry
	j	.classHeap_Node_push_return
.classHeap_Node_push_ID29_if_out:
	addi	VirtualReg_23, VirtualReg_0, 0
	lw	VirtualReg_24, 0(VirtualReg_23)
	j	.classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry
.classHeap_Node_push_call_classArray_Node_swap_7_out:
	mv	VirtualReg_20, VirtualReg_111
	j	.classHeap_Node_push_ID14_while_condition
.classHeap_Node_push_call_classHeap_Node_pnt_8_out:
	addi	VirtualReg_25, VirtualReg_0, 0
	lw	VirtualReg_26, 0(VirtualReg_25)
	j	.classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry
.classHeap_Node_push_call_classNode_key__10_out:
	addi	VirtualReg_27, VirtualReg_0, 0
	lw	VirtualReg_28, 0(VirtualReg_27)
	j	.classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry
.classHeap_Node_push_call_classNode_key__12_out:
	slt	VirtualReg_31, VirtualReg_29, VirtualReg_30
	xori	VirtualReg_31, VirtualReg_31, 1
	bnez	VirtualReg_31, .classHeap_Node_push_return
	j	.classHeap_Node_push_ID29_if_out
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out:
	addi	VirtualReg_32, VirtualReg_15, 0
	lw	VirtualReg_33, 0(VirtualReg_32)
	mv	VirtualReg_34, VirtualReg_33
	li	VirtualReg_37, -1
	li	VirtualReg_38, 4
	mul	VirtualReg_36, VirtualReg_37, VirtualReg_38
	add	VirtualReg_35, VirtualReg_34, VirtualReg_36
	lw	VirtualReg_39, 0(VirtualReg_35)
	xor	VirtualReg_41, VirtualReg_40, VirtualReg_39
	sltiu	VirtualReg_41, VirtualReg_41, 1
	bnez	VirtualReg_41, .classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out:
	addi	VirtualReg_42, VirtualReg_15, 0
	lw	VirtualReg_43, 0(VirtualReg_42)
	addi	VirtualReg_44, VirtualReg_15, 8
	lw	VirtualReg_45, 0(VirtualReg_44)
	li	VirtualReg_48, 8
	mul	VirtualReg_47, VirtualReg_45, VirtualReg_48
	add	VirtualReg_46, VirtualReg_43, VirtualReg_47
	mv	VirtualReg_49, VirtualReg_16
	sw	VirtualReg_49, 0(VirtualReg_46)
	addi	VirtualReg_50, VirtualReg_15, 8
	lw	VirtualReg_51, 0(VirtualReg_50)
	li	VirtualReg_52, 1
	add	VirtualReg_53, VirtualReg_51, VirtualReg_52
	sw	VirtualReg_53, 0(VirtualReg_50)
	j	.classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry:
	addi	VirtualReg_54, VirtualReg_15, 8
	lw	VirtualReg_40, 0(VirtualReg_54)
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry:
	addi	VirtualReg_55, VirtualReg_15, 0
	lw	VirtualReg_56, 0(VirtualReg_55)
	mv	VirtualReg_57, VirtualReg_56
	addi	VirtualReg_58, VirtualReg_15, 8
	lw	VirtualReg_59, 0(VirtualReg_58)
	addi	VirtualReg_60, VirtualReg_15, 0
	mv	VirtualReg_61, VirtualReg_57
	li	VirtualReg_64, -1
	li	VirtualReg_65, 4
	mul	VirtualReg_63, VirtualReg_64, VirtualReg_65
	add	VirtualReg_62, VirtualReg_61, VirtualReg_63
	lw	VirtualReg_66, 0(VirtualReg_62)
	li	VirtualReg_67, 2
	mul	VirtualReg_68, VirtualReg_66, VirtualReg_67
	mv	VirtualReg_69, VirtualReg_68
	li	VirtualReg_70, 8
	mul	VirtualReg_71, VirtualReg_69, VirtualReg_70
	li	VirtualReg_72, 4
	add	VirtualReg_73, VirtualReg_71, VirtualReg_72
	mv	a0, VirtualReg_73
	call	malloc
	mv	VirtualReg_74, a0
	mv	VirtualReg_75, VirtualReg_74
	sw	VirtualReg_68, 0(VirtualReg_75)
	li	VirtualReg_78, 1
	li	VirtualReg_79, 4
	mul	VirtualReg_77, VirtualReg_78, VirtualReg_79
	add	VirtualReg_76, VirtualReg_75, VirtualReg_77
	mv	VirtualReg_80, VirtualReg_76
	mv	VirtualReg_81, VirtualReg_80
	sw	VirtualReg_81, 0(VirtualReg_60)
	addi	VirtualReg_82, VirtualReg_15, 8
	li	VirtualReg_83, 0
	sw	VirtualReg_83, 0(VirtualReg_82)
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition:
	addi	VirtualReg_84, VirtualReg_15, 8
	lw	VirtualReg_85, 0(VirtualReg_84)
	xor	VirtualReg_86, VirtualReg_85, VirtualReg_59
	sltiu	VirtualReg_86, VirtualReg_86, 1
	xori	VirtualReg_86, VirtualReg_86, 1
	bnez	VirtualReg_86, .classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite:
	addi	VirtualReg_87, VirtualReg_15, 0
	lw	VirtualReg_88, 0(VirtualReg_87)
	addi	VirtualReg_89, VirtualReg_15, 8
	lw	VirtualReg_90, 0(VirtualReg_89)
	li	VirtualReg_93, 8
	mul	VirtualReg_92, VirtualReg_90, VirtualReg_93
	add	VirtualReg_91, VirtualReg_88, VirtualReg_92
	addi	VirtualReg_94, VirtualReg_15, 8
	lw	VirtualReg_95, 0(VirtualReg_94)
	li	VirtualReg_98, 8
	mul	VirtualReg_97, VirtualReg_95, VirtualReg_98
	add	VirtualReg_96, VirtualReg_57, VirtualReg_97
	lw	VirtualReg_99, 0(VirtualReg_96)
	mv	VirtualReg_100, VirtualReg_99
	sw	VirtualReg_100, 0(VirtualReg_91)
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr:
	addi	VirtualReg_101, VirtualReg_15, 8
	lw	VirtualReg_102, 0(VirtualReg_101)
	li	VirtualReg_103, 1
	add	VirtualReg_104, VirtualReg_102, VirtualReg_103
	sw	VirtualReg_104, 0(VirtualReg_101)
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry:
	addi	VirtualReg_105, VirtualReg_0, 0
	lw	VirtualReg_106, 0(VirtualReg_105)
	mv	a0, VirtualReg_106
	call	classArray_Node_size
	mv	VirtualReg_17, a0
	j	.classHeap_Node_push_call_classHeap_Node_size_6_out
.classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry:
	addi	VirtualReg_107, VirtualReg_24, 0
	lw	VirtualReg_108, 0(VirtualReg_107)
	li	VirtualReg_112, 8
	mul	VirtualReg_110, VirtualReg_111, VirtualReg_112
	add	VirtualReg_109, VirtualReg_108, VirtualReg_110
	lw	VirtualReg_113, 0(VirtualReg_109)
	mv	VirtualReg_114, VirtualReg_113
	addi	VirtualReg_115, VirtualReg_24, 0
	lw	VirtualReg_116, 0(VirtualReg_115)
	li	VirtualReg_119, 8
	mul	VirtualReg_118, VirtualReg_111, VirtualReg_119
	add	VirtualReg_117, VirtualReg_116, VirtualReg_118
	addi	VirtualReg_120, VirtualReg_24, 0
	lw	VirtualReg_121, 0(VirtualReg_120)
	li	VirtualReg_124, 8
	mul	VirtualReg_123, VirtualReg_20, VirtualReg_124
	add	VirtualReg_122, VirtualReg_121, VirtualReg_123
	lw	VirtualReg_125, 0(VirtualReg_122)
	mv	VirtualReg_126, VirtualReg_125
	sw	VirtualReg_126, 0(VirtualReg_117)
	addi	VirtualReg_127, VirtualReg_24, 0
	lw	VirtualReg_128, 0(VirtualReg_127)
	li	VirtualReg_131, 8
	mul	VirtualReg_130, VirtualReg_20, VirtualReg_131
	add	VirtualReg_129, VirtualReg_128, VirtualReg_130
	mv	VirtualReg_132, VirtualReg_114
	sw	VirtualReg_132, 0(VirtualReg_129)
	j	.classHeap_Node_push_call_classArray_Node_swap_7_out
.classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry:
	li	VirtualReg_133, 1
	sub	VirtualReg_134, VirtualReg_20, VirtualReg_133
	li	VirtualReg_135, 2
	div	VirtualReg_111, VirtualReg_134, VirtualReg_135
	j	.classHeap_Node_push_call_classHeap_Node_pnt_8_out
.classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry:
	addi	VirtualReg_136, VirtualReg_26, 0
	lw	VirtualReg_137, 0(VirtualReg_136)
	li	VirtualReg_140, 8
	mul	VirtualReg_139, VirtualReg_111, VirtualReg_140
	add	VirtualReg_138, VirtualReg_137, VirtualReg_139
	lw	VirtualReg_141, 0(VirtualReg_138)
	mv	VirtualReg_142, VirtualReg_141
	j	.classHeap_Node_push_call_classNode_key__10_classNode_key__entry
.classHeap_Node_push_call_classNode_key__10_classNode_key__entry:
	addi	VirtualReg_143, VirtualReg_142, 4
	lw	VirtualReg_144, 0(VirtualReg_143)
	li	VirtualReg_145, 0
	sub	VirtualReg_29, VirtualReg_145, VirtualReg_144
	j	.classHeap_Node_push_call_classNode_key__10_out
.classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry:
	addi	VirtualReg_146, VirtualReg_28, 0
	lw	VirtualReg_147, 0(VirtualReg_146)
	li	VirtualReg_150, 8
	mul	VirtualReg_149, VirtualReg_20, VirtualReg_150
	add	VirtualReg_148, VirtualReg_147, VirtualReg_149
	lw	VirtualReg_151, 0(VirtualReg_148)
	mv	VirtualReg_152, VirtualReg_151
	j	.classHeap_Node_push_call_classNode_key__12_classNode_key__entry
.classHeap_Node_push_call_classNode_key__12_classNode_key__entry:
	addi	VirtualReg_153, VirtualReg_152, 4
	lw	VirtualReg_154, 0(VirtualReg_153)
	li	VirtualReg_155, 0
	sub	VirtualReg_30, VirtualReg_155, VirtualReg_154
	j	.classHeap_Node_push_call_classNode_key__12_out
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
	j	.classHeap_Node_pop_call_classArray_Node_front_13_classArray_Node_front_entry
.classHeap_Node_pop_call_classArray_Node_front_13_out:
	mv	VirtualReg_16, VirtualReg_15
	addi	VirtualReg_17, VirtualReg_0, 0
	lw	VirtualReg_18, 0(VirtualReg_17)
	j	.classHeap_Node_pop_call_classHeap_Node_size_14_classHeap_Node_size_entry
.classHeap_Node_pop_call_classHeap_Node_size_14_out:
	li	VirtualReg_20, 1
	sub	VirtualReg_21, VirtualReg_19, VirtualReg_20
	j	.classHeap_Node_pop_call_classArray_Node_swap_15_classArray_Node_swap_entry
.classHeap_Node_pop_call_classArray_Node_swap_15_out:
	addi	VirtualReg_22, VirtualReg_0, 0
	lw	VirtualReg_23, 0(VirtualReg_22)
	j	.classHeap_Node_pop_call_classArray_Node_pop_back_16_classArray_Node_pop_back_entry
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out:
	mv	VirtualReg_24, VirtualReg_16
	j	.classHeap_Node_pop_return
.classHeap_Node_pop_call_classArray_Node_front_13_classArray_Node_front_entry:
	addi	VirtualReg_25, VirtualReg_14, 0
	lw	VirtualReg_26, 0(VirtualReg_25)
	li	VirtualReg_29, 0
	li	VirtualReg_30, 8
	mul	VirtualReg_28, VirtualReg_29, VirtualReg_30
	add	VirtualReg_27, VirtualReg_26, VirtualReg_28
	lw	VirtualReg_31, 0(VirtualReg_27)
	mv	VirtualReg_15, VirtualReg_31
	j	.classHeap_Node_pop_call_classArray_Node_front_13_out
.classHeap_Node_pop_call_classHeap_Node_size_14_classHeap_Node_size_entry:
	addi	VirtualReg_32, VirtualReg_0, 0
	lw	VirtualReg_33, 0(VirtualReg_32)
	mv	a0, VirtualReg_33
	call	classArray_Node_size
	mv	VirtualReg_19, a0
	j	.classHeap_Node_pop_call_classHeap_Node_size_14_out
.classHeap_Node_pop_call_classArray_Node_swap_15_classArray_Node_swap_entry:
	addi	VirtualReg_34, VirtualReg_18, 0
	lw	VirtualReg_35, 0(VirtualReg_34)
	li	VirtualReg_38, 0
	li	VirtualReg_39, 8
	mul	VirtualReg_37, VirtualReg_38, VirtualReg_39
	add	VirtualReg_36, VirtualReg_35, VirtualReg_37
	lw	VirtualReg_40, 0(VirtualReg_36)
	mv	VirtualReg_41, VirtualReg_40
	addi	VirtualReg_42, VirtualReg_18, 0
	lw	VirtualReg_43, 0(VirtualReg_42)
	li	VirtualReg_46, 0
	li	VirtualReg_47, 8
	mul	VirtualReg_45, VirtualReg_46, VirtualReg_47
	add	VirtualReg_44, VirtualReg_43, VirtualReg_45
	addi	VirtualReg_48, VirtualReg_18, 0
	lw	VirtualReg_49, 0(VirtualReg_48)
	li	VirtualReg_52, 8
	mul	VirtualReg_51, VirtualReg_21, VirtualReg_52
	add	VirtualReg_50, VirtualReg_49, VirtualReg_51
	lw	VirtualReg_53, 0(VirtualReg_50)
	mv	VirtualReg_54, VirtualReg_53
	sw	VirtualReg_54, 0(VirtualReg_44)
	addi	VirtualReg_55, VirtualReg_18, 0
	lw	VirtualReg_56, 0(VirtualReg_55)
	li	VirtualReg_59, 8
	mul	VirtualReg_58, VirtualReg_21, VirtualReg_59
	add	VirtualReg_57, VirtualReg_56, VirtualReg_58
	mv	VirtualReg_60, VirtualReg_41
	sw	VirtualReg_60, 0(VirtualReg_57)
	j	.classHeap_Node_pop_call_classArray_Node_swap_15_out
.classHeap_Node_pop_call_classArray_Node_pop_back_16_classArray_Node_pop_back_entry:
	addi	VirtualReg_61, VirtualReg_23, 8
	lw	VirtualReg_62, 0(VirtualReg_61)
	li	VirtualReg_63, 1
	sub	VirtualReg_64, VirtualReg_62, VirtualReg_63
	sw	VirtualReg_64, 0(VirtualReg_61)
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry:
	mv	a0, VirtualReg_0
	li	VirtualReg_65, 0
	mv	a1, VirtualReg_65
	call	classHeap_Node_lchild
	mv	VirtualReg_66, a0
	mv	a0, VirtualReg_0
	li	VirtualReg_67, 0
	mv	a1, VirtualReg_67
	call	classHeap_Node_rchild
	mv	VirtualReg_68, a0
	mv	a0, VirtualReg_0
	call	classHeap_Node_size
	mv	VirtualReg_69, a0
	slt	VirtualReg_70, VirtualReg_66, VirtualReg_69
	bnez	VirtualReg_70, .classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_true
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry_mid
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry_mid:
	li	VirtualReg_101, 0
	mv	VirtualReg_81, VirtualReg_101
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_true:
	addi	VirtualReg_71, VirtualReg_0, 0
	lw	VirtualReg_72, 0(VirtualReg_71)
	mv	a0, VirtualReg_72
	mv	a1, VirtualReg_66
	call	classArray_Node_get
	mv	VirtualReg_73, a0
	mv	a0, VirtualReg_73
	call	classNode_key_
	mv	VirtualReg_74, a0
	addi	VirtualReg_75, VirtualReg_0, 0
	lw	VirtualReg_76, 0(VirtualReg_75)
	mv	a0, VirtualReg_76
	li	VirtualReg_77, 0
	mv	a1, VirtualReg_77
	call	classArray_Node_get
	mv	VirtualReg_78, a0
	mv	a0, VirtualReg_78
	call	classNode_key_
	mv	VirtualReg_79, a0
	slt	VirtualReg_80, VirtualReg_79, VirtualReg_74
	mv	VirtualReg_81, VirtualReg_80
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out_mid:
	li	VirtualReg_102, 0
	mv	VirtualReg_82, VirtualReg_102
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out:
	bnez	VirtualReg_81, .classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_true
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out_mid
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out_mid:
	li	VirtualReg_103, 0
	mv	VirtualReg_94, VirtualReg_103
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_true:
	mv	VirtualReg_82, VirtualReg_66
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out_mid:
	mv	VirtualReg_95, VirtualReg_82
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out:
	mv	a0, VirtualReg_0
	call	classHeap_Node_size
	mv	VirtualReg_83, a0
	slt	VirtualReg_84, VirtualReg_68, VirtualReg_83
	bnez	VirtualReg_84, .classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_true
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out_mid
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_true:
	addi	VirtualReg_85, VirtualReg_0, 0
	lw	VirtualReg_86, 0(VirtualReg_85)
	mv	a0, VirtualReg_86
	mv	a1, VirtualReg_68
	call	classArray_Node_get
	mv	VirtualReg_87, a0
	mv	a0, VirtualReg_87
	call	classNode_key_
	mv	VirtualReg_88, a0
	addi	VirtualReg_89, VirtualReg_0, 0
	lw	VirtualReg_90, 0(VirtualReg_89)
	mv	a0, VirtualReg_90
	mv	a1, VirtualReg_82
	call	classArray_Node_get
	mv	VirtualReg_91, a0
	mv	a0, VirtualReg_91
	call	classNode_key_
	mv	VirtualReg_92, a0
	slt	VirtualReg_93, VirtualReg_92, VirtualReg_88
	mv	VirtualReg_94, VirtualReg_93
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out:
	bnez	VirtualReg_94, .classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_true
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out_mid
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_true:
	mv	VirtualReg_95, VirtualReg_68
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out:
	li	VirtualReg_96, 0
	xor	VirtualReg_97, VirtualReg_95, VirtualReg_96
	sltiu	VirtualReg_97, VirtualReg_97, 1
	bnez	VirtualReg_97, .classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID48_if_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID48_if_out:
	addi	VirtualReg_98, VirtualReg_0, 0
	lw	VirtualReg_99, 0(VirtualReg_98)
	mv	a0, VirtualReg_99
	li	VirtualReg_100, 0
	mv	a1, VirtualReg_100
	mv	a2, VirtualReg_95
	call	classArray_Node_swap
	mv	a0, VirtualReg_0
	mv	a1, VirtualReg_95
	call	classHeap_Node_maxHeapify
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out
.classHeap_Node_pop_return:
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
	j	.classHeap_Node_top_call_classArray_Node_front_18_classArray_Node_front_entry
.classHeap_Node_top_call_classArray_Node_front_18_out:
	mv	VirtualReg_16, VirtualReg_15
	j	.classHeap_Node_top_return
.classHeap_Node_top_call_classArray_Node_front_18_classArray_Node_front_entry:
	addi	VirtualReg_17, VirtualReg_14, 0
	lw	VirtualReg_18, 0(VirtualReg_17)
	li	VirtualReg_21, 0
	li	VirtualReg_22, 8
	mul	VirtualReg_20, VirtualReg_21, VirtualReg_22
	add	VirtualReg_19, VirtualReg_18, VirtualReg_20
	lw	VirtualReg_23, 0(VirtualReg_19)
	mv	VirtualReg_15, VirtualReg_23
	j	.classHeap_Node_top_call_classArray_Node_front_18_out
.classHeap_Node_top_return:
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
	j	.classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry
.classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry:
	addi	VirtualReg_15, VirtualReg_14, 8
	lw	VirtualReg_16, 0(VirtualReg_15)
	j	.classHeap_Node_size_return
.classHeap_Node_size_return:
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
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_lchild_20_classHeap_Node_lchild_entry
.classHeap_Node_maxHeapify_call_classHeap_Node_size_22_out:
	slt	VirtualReg_16, VirtualReg_14, VirtualReg_15
	bnez	VirtualReg_16, .classHeap_Node_maxHeapify_ID16_AndAnd_true
	j	.classHeap_Node_maxHeapify_entry_mid
.classHeap_Node_maxHeapify_entry_mid:
	li	VirtualReg_118, 0
	mv	VirtualReg_24, VirtualReg_118
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_maxHeapify_ID16_AndAnd_true:
	addi	VirtualReg_17, VirtualReg_0, 0
	lw	VirtualReg_18, 0(VirtualReg_17)
	j	.classHeap_Node_maxHeapify_call_classArray_Node_get_23_classArray_Node_get_entry
.classHeap_Node_maxHeapify_call_classNode_key__24_out:
	addi	VirtualReg_19, VirtualReg_0, 0
	lw	VirtualReg_20, 0(VirtualReg_19)
	j	.classHeap_Node_maxHeapify_call_classArray_Node_get_25_classArray_Node_get_entry
.classHeap_Node_maxHeapify_call_classNode_key__26_out:
	slt	VirtualReg_23, VirtualReg_22, VirtualReg_21
	mv	VirtualReg_24, VirtualReg_23
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_maxHeapify_ID16_AndAnd_out_mid:
	mv	VirtualReg_25, VirtualReg_1
	j	.classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_maxHeapify_ID16_AndAnd_out:
	bnez	VirtualReg_24, .classHeap_Node_maxHeapify_ID28_if_true
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out_mid
.classHeap_Node_maxHeapify_ID28_if_out_mid:
	li	VirtualReg_119, 0
	mv	VirtualReg_36, VirtualReg_119
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_maxHeapify_ID28_if_true:
	mv	VirtualReg_25, VirtualReg_14
	j	.classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_maxHeapify_ID32_AndAnd_out_mid:
	mv	VirtualReg_37, VirtualReg_25
	j	.classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_maxHeapify_ID28_if_out:
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_size_27_classHeap_Node_size_entry
.classHeap_Node_maxHeapify_call_classHeap_Node_size_27_out:
	slt	VirtualReg_28, VirtualReg_26, VirtualReg_27
	bnez	VirtualReg_28, .classHeap_Node_maxHeapify_ID32_AndAnd_true
	j	.classHeap_Node_maxHeapify_ID28_if_out_mid
.classHeap_Node_maxHeapify_ID32_AndAnd_true:
	addi	VirtualReg_29, VirtualReg_0, 0
	lw	VirtualReg_30, 0(VirtualReg_29)
	j	.classHeap_Node_maxHeapify_call_classArray_Node_get_28_classArray_Node_get_entry
.classHeap_Node_maxHeapify_call_classNode_key__29_out:
	addi	VirtualReg_31, VirtualReg_0, 0
	lw	VirtualReg_32, 0(VirtualReg_31)
	j	.classHeap_Node_maxHeapify_call_classArray_Node_get_30_classArray_Node_get_entry
.classHeap_Node_maxHeapify_call_classNode_key__31_out:
	slt	VirtualReg_35, VirtualReg_34, VirtualReg_33
	mv	VirtualReg_36, VirtualReg_35
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_maxHeapify_ID32_AndAnd_out:
	bnez	VirtualReg_36, .classHeap_Node_maxHeapify_ID44_if_true
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out_mid
.classHeap_Node_maxHeapify_ID44_if_true:
	mv	VirtualReg_37, VirtualReg_26
	j	.classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_maxHeapify_ID44_if_out:
	xor	VirtualReg_38, VirtualReg_37, VirtualReg_1
	sltiu	VirtualReg_38, VirtualReg_38, 1
	bnez	VirtualReg_38, .classHeap_Node_maxHeapify_return
	j	.classHeap_Node_maxHeapify_ID48_if_out
.classHeap_Node_maxHeapify_ID48_if_out:
	addi	VirtualReg_39, VirtualReg_0, 0
	lw	VirtualReg_40, 0(VirtualReg_39)
	j	.classHeap_Node_maxHeapify_call_classArray_Node_swap_32_classArray_Node_swap_entry
.classHeap_Node_maxHeapify_call_classArray_Node_swap_32_out:
	mv	a0, VirtualReg_0
	mv	a1, VirtualReg_37
	call	classHeap_Node_maxHeapify
	j	.classHeap_Node_maxHeapify_return
.classHeap_Node_maxHeapify_call_classHeap_Node_lchild_20_classHeap_Node_lchild_entry:
	li	VirtualReg_41, 2
	mul	VirtualReg_42, VirtualReg_1, VirtualReg_41
	li	VirtualReg_43, 1
	add	VirtualReg_14, VirtualReg_42, VirtualReg_43
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_rchild_21_classHeap_Node_rchild_entry
.classHeap_Node_maxHeapify_call_classHeap_Node_rchild_21_classHeap_Node_rchild_entry:
	li	VirtualReg_44, 2
	mul	VirtualReg_45, VirtualReg_1, VirtualReg_44
	li	VirtualReg_46, 2
	add	VirtualReg_26, VirtualReg_45, VirtualReg_46
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_size_22_classHeap_Node_size_entry
.classHeap_Node_maxHeapify_call_classHeap_Node_size_22_classHeap_Node_size_entry:
	addi	VirtualReg_47, VirtualReg_0, 0
	lw	VirtualReg_48, 0(VirtualReg_47)
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_size_22_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry
.classHeap_Node_maxHeapify_call_classHeap_Node_size_22_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry:
	addi	VirtualReg_49, VirtualReg_48, 8
	lw	VirtualReg_15, 0(VirtualReg_49)
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_size_22_out
.classHeap_Node_maxHeapify_call_classArray_Node_get_23_classArray_Node_get_entry:
	addi	VirtualReg_50, VirtualReg_18, 0
	lw	VirtualReg_51, 0(VirtualReg_50)
	li	VirtualReg_54, 8
	mul	VirtualReg_53, VirtualReg_14, VirtualReg_54
	add	VirtualReg_52, VirtualReg_51, VirtualReg_53
	lw	VirtualReg_55, 0(VirtualReg_52)
	mv	VirtualReg_56, VirtualReg_55
	j	.classHeap_Node_maxHeapify_call_classNode_key__24_classNode_key__entry
.classHeap_Node_maxHeapify_call_classNode_key__24_classNode_key__entry:
	addi	VirtualReg_57, VirtualReg_56, 4
	lw	VirtualReg_58, 0(VirtualReg_57)
	li	VirtualReg_59, 0
	sub	VirtualReg_21, VirtualReg_59, VirtualReg_58
	j	.classHeap_Node_maxHeapify_call_classNode_key__24_out
.classHeap_Node_maxHeapify_call_classArray_Node_get_25_classArray_Node_get_entry:
	addi	VirtualReg_60, VirtualReg_20, 0
	lw	VirtualReg_61, 0(VirtualReg_60)
	li	VirtualReg_64, 8
	mul	VirtualReg_63, VirtualReg_1, VirtualReg_64
	add	VirtualReg_62, VirtualReg_61, VirtualReg_63
	lw	VirtualReg_65, 0(VirtualReg_62)
	mv	VirtualReg_66, VirtualReg_65
	j	.classHeap_Node_maxHeapify_call_classNode_key__26_classNode_key__entry
.classHeap_Node_maxHeapify_call_classNode_key__26_classNode_key__entry:
	addi	VirtualReg_67, VirtualReg_66, 4
	lw	VirtualReg_68, 0(VirtualReg_67)
	li	VirtualReg_69, 0
	sub	VirtualReg_22, VirtualReg_69, VirtualReg_68
	j	.classHeap_Node_maxHeapify_call_classNode_key__26_out
.classHeap_Node_maxHeapify_call_classHeap_Node_size_27_classHeap_Node_size_entry:
	addi	VirtualReg_70, VirtualReg_0, 0
	lw	VirtualReg_71, 0(VirtualReg_70)
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_size_27_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry
.classHeap_Node_maxHeapify_call_classHeap_Node_size_27_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry:
	addi	VirtualReg_72, VirtualReg_71, 8
	lw	VirtualReg_27, 0(VirtualReg_72)
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_size_27_out
.classHeap_Node_maxHeapify_call_classArray_Node_get_28_classArray_Node_get_entry:
	addi	VirtualReg_73, VirtualReg_30, 0
	lw	VirtualReg_74, 0(VirtualReg_73)
	li	VirtualReg_77, 8
	mul	VirtualReg_76, VirtualReg_26, VirtualReg_77
	add	VirtualReg_75, VirtualReg_74, VirtualReg_76
	lw	VirtualReg_78, 0(VirtualReg_75)
	mv	VirtualReg_79, VirtualReg_78
	j	.classHeap_Node_maxHeapify_call_classNode_key__29_classNode_key__entry
.classHeap_Node_maxHeapify_call_classNode_key__29_classNode_key__entry:
	addi	VirtualReg_80, VirtualReg_79, 4
	lw	VirtualReg_81, 0(VirtualReg_80)
	li	VirtualReg_82, 0
	sub	VirtualReg_33, VirtualReg_82, VirtualReg_81
	j	.classHeap_Node_maxHeapify_call_classNode_key__29_out
.classHeap_Node_maxHeapify_call_classArray_Node_get_30_classArray_Node_get_entry:
	addi	VirtualReg_83, VirtualReg_32, 0
	lw	VirtualReg_84, 0(VirtualReg_83)
	li	VirtualReg_87, 8
	mul	VirtualReg_86, VirtualReg_25, VirtualReg_87
	add	VirtualReg_85, VirtualReg_84, VirtualReg_86
	lw	VirtualReg_88, 0(VirtualReg_85)
	mv	VirtualReg_89, VirtualReg_88
	j	.classHeap_Node_maxHeapify_call_classNode_key__31_classNode_key__entry
.classHeap_Node_maxHeapify_call_classNode_key__31_classNode_key__entry:
	addi	VirtualReg_90, VirtualReg_89, 4
	lw	VirtualReg_91, 0(VirtualReg_90)
	li	VirtualReg_92, 0
	sub	VirtualReg_34, VirtualReg_92, VirtualReg_91
	j	.classHeap_Node_maxHeapify_call_classNode_key__31_out
.classHeap_Node_maxHeapify_call_classArray_Node_swap_32_classArray_Node_swap_entry:
	addi	VirtualReg_93, VirtualReg_40, 0
	lw	VirtualReg_94, 0(VirtualReg_93)
	li	VirtualReg_97, 8
	mul	VirtualReg_96, VirtualReg_1, VirtualReg_97
	add	VirtualReg_95, VirtualReg_94, VirtualReg_96
	lw	VirtualReg_98, 0(VirtualReg_95)
	mv	VirtualReg_99, VirtualReg_98
	addi	VirtualReg_100, VirtualReg_40, 0
	lw	VirtualReg_101, 0(VirtualReg_100)
	li	VirtualReg_104, 8
	mul	VirtualReg_103, VirtualReg_1, VirtualReg_104
	add	VirtualReg_102, VirtualReg_101, VirtualReg_103
	addi	VirtualReg_105, VirtualReg_40, 0
	lw	VirtualReg_106, 0(VirtualReg_105)
	li	VirtualReg_109, 8
	mul	VirtualReg_108, VirtualReg_37, VirtualReg_109
	add	VirtualReg_107, VirtualReg_106, VirtualReg_108
	lw	VirtualReg_110, 0(VirtualReg_107)
	mv	VirtualReg_111, VirtualReg_110
	sw	VirtualReg_111, 0(VirtualReg_102)
	addi	VirtualReg_112, VirtualReg_40, 0
	lw	VirtualReg_113, 0(VirtualReg_112)
	li	VirtualReg_116, 8
	mul	VirtualReg_115, VirtualReg_37, VirtualReg_116
	add	VirtualReg_114, VirtualReg_113, VirtualReg_115
	mv	VirtualReg_117, VirtualReg_99
	sw	VirtualReg_117, 0(VirtualReg_114)
	j	.classHeap_Node_maxHeapify_call_classArray_Node_swap_32_out
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
	mv	VirtualReg_18, VirtualReg_17
	j	.init_call_EdgeList_33_out
.init_call_EdgeList_33_out:
	mv	VirtualReg_19, VirtualReg_18
	li	VirtualReg_20, 0
	sw	VirtualReg_19, fuckLLVM_g, VirtualReg_20
	lw	VirtualReg_21, fuckLLVM_g
	lw	VirtualReg_22, fuckLLVM_n
	lw	VirtualReg_23, fuckLLVM_m
	j	.init_call_classEdgeList_init_34_classEdgeList_init_entry
.init_call_classEdgeList_init_34_out:
	li	VirtualReg_136, 0
	mv	VirtualReg_24, VirtualReg_136
	j	.init_ID10_for_condition
.init_ID10_for_condition:
	lw	VirtualReg_25, fuckLLVM_m
	slt	VirtualReg_26, VirtualReg_24, VirtualReg_25
	bnez	VirtualReg_26, .init_ID10_for_suite
	j	.init_return
.init_ID10_for_suite:
	call	getInt
	mv	VirtualReg_27, a0
	call	getInt
	mv	VirtualReg_28, a0
	call	getInt
	mv	VirtualReg_29, a0
	lw	VirtualReg_30, fuckLLVM_g
	j	.init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_entry
.init_ID10_for_incr:
	li	VirtualReg_31, 1
	add	VirtualReg_32, VirtualReg_24, VirtualReg_31
	mv	VirtualReg_24, VirtualReg_32
	j	.init_ID10_for_condition
.init_call_classEdgeList_init_34_classEdgeList_init_entry:
	addi	VirtualReg_33, VirtualReg_21, 0
	mv	VirtualReg_34, VirtualReg_23
	li	VirtualReg_35, 12
	mul	VirtualReg_36, VirtualReg_34, VirtualReg_35
	li	VirtualReg_37, 4
	add	VirtualReg_38, VirtualReg_36, VirtualReg_37
	mv	a0, VirtualReg_38
	call	malloc
	mv	VirtualReg_39, a0
	mv	VirtualReg_40, VirtualReg_39
	sw	VirtualReg_23, 0(VirtualReg_40)
	li	VirtualReg_43, 1
	li	VirtualReg_44, 4
	mul	VirtualReg_42, VirtualReg_43, VirtualReg_44
	add	VirtualReg_41, VirtualReg_40, VirtualReg_42
	mv	VirtualReg_45, VirtualReg_41
	mv	VirtualReg_46, VirtualReg_45
	sw	VirtualReg_46, 0(VirtualReg_33)
	addi	VirtualReg_47, VirtualReg_21, 8
	mv	VirtualReg_48, VirtualReg_23
	li	VirtualReg_49, 4
	mul	VirtualReg_50, VirtualReg_48, VirtualReg_49
	li	VirtualReg_51, 4
	add	VirtualReg_52, VirtualReg_50, VirtualReg_51
	mv	a0, VirtualReg_52
	call	malloc
	mv	VirtualReg_53, a0
	mv	VirtualReg_54, VirtualReg_53
	sw	VirtualReg_23, 0(VirtualReg_54)
	li	VirtualReg_57, 1
	li	VirtualReg_58, 4
	mul	VirtualReg_56, VirtualReg_57, VirtualReg_58
	add	VirtualReg_55, VirtualReg_54, VirtualReg_56
	mv	VirtualReg_59, VirtualReg_55
	mv	VirtualReg_60, VirtualReg_59
	sw	VirtualReg_60, 0(VirtualReg_47)
	addi	VirtualReg_61, VirtualReg_21, 16
	mv	VirtualReg_62, VirtualReg_22
	li	VirtualReg_63, 4
	mul	VirtualReg_64, VirtualReg_62, VirtualReg_63
	li	VirtualReg_65, 4
	add	VirtualReg_66, VirtualReg_64, VirtualReg_65
	mv	a0, VirtualReg_66
	call	malloc
	mv	VirtualReg_67, a0
	mv	VirtualReg_68, VirtualReg_67
	sw	VirtualReg_22, 0(VirtualReg_68)
	li	VirtualReg_71, 1
	li	VirtualReg_72, 4
	mul	VirtualReg_70, VirtualReg_71, VirtualReg_72
	add	VirtualReg_69, VirtualReg_68, VirtualReg_70
	mv	VirtualReg_73, VirtualReg_69
	mv	VirtualReg_74, VirtualReg_73
	sw	VirtualReg_74, 0(VirtualReg_61)
	li	VirtualReg_137, 0
	mv	VirtualReg_75, VirtualReg_137
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_condition
.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_condition:
	slt	VirtualReg_76, VirtualReg_75, VirtualReg_23
	bnez	VirtualReg_76, .init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_suite
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_out
.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_suite:
	addi	VirtualReg_77, VirtualReg_21, 8
	lw	VirtualReg_78, 0(VirtualReg_77)
	li	VirtualReg_81, 4
	mul	VirtualReg_80, VirtualReg_75, VirtualReg_81
	add	VirtualReg_79, VirtualReg_78, VirtualReg_80
	li	VirtualReg_82, -1
	sw	VirtualReg_82, 0(VirtualReg_79)
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_incr
.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_incr:
	li	VirtualReg_83, 1
	add	VirtualReg_84, VirtualReg_75, VirtualReg_83
	mv	VirtualReg_75, VirtualReg_84
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_condition
.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_out:
	li	VirtualReg_138, 0
	mv	VirtualReg_85, VirtualReg_138
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_condition
.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_condition:
	slt	VirtualReg_86, VirtualReg_85, VirtualReg_22
	bnez	VirtualReg_86, .init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_suite
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_out
.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_suite:
	addi	VirtualReg_87, VirtualReg_21, 16
	lw	VirtualReg_88, 0(VirtualReg_87)
	li	VirtualReg_91, 4
	mul	VirtualReg_90, VirtualReg_85, VirtualReg_91
	add	VirtualReg_89, VirtualReg_88, VirtualReg_90
	li	VirtualReg_92, -1
	sw	VirtualReg_92, 0(VirtualReg_89)
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_incr
.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_incr:
	li	VirtualReg_93, 1
	add	VirtualReg_94, VirtualReg_85, VirtualReg_93
	mv	VirtualReg_85, VirtualReg_94
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_condition
.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_out:
	addi	VirtualReg_95, VirtualReg_21, 24
	li	VirtualReg_96, 0
	sw	VirtualReg_96, 0(VirtualReg_95)
	j	.init_call_classEdgeList_init_34_out
.init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_entry:
	li	VirtualReg_97, 12
	mv	a0, VirtualReg_97
	call	malloc
	mv	VirtualReg_98, a0
	mv	VirtualReg_99, VirtualReg_98
	j	.init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_call_Edge_0_out
.init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_call_Edge_0_out:
	mv	VirtualReg_100, VirtualReg_99
	addi	VirtualReg_101, VirtualReg_100, 0
	sw	VirtualReg_27, 0(VirtualReg_101)
	addi	VirtualReg_102, VirtualReg_100, 4
	sw	VirtualReg_28, 0(VirtualReg_102)
	addi	VirtualReg_103, VirtualReg_100, 8
	sw	VirtualReg_29, 0(VirtualReg_103)
	addi	VirtualReg_104, VirtualReg_30, 0
	lw	VirtualReg_105, 0(VirtualReg_104)
	addi	VirtualReg_106, VirtualReg_30, 24
	lw	VirtualReg_107, 0(VirtualReg_106)
	li	VirtualReg_110, 12
	mul	VirtualReg_109, VirtualReg_107, VirtualReg_110
	add	VirtualReg_108, VirtualReg_105, VirtualReg_109
	mv	VirtualReg_111, VirtualReg_100
	sw	VirtualReg_111, 0(VirtualReg_108)
	addi	VirtualReg_112, VirtualReg_30, 8
	lw	VirtualReg_113, 0(VirtualReg_112)
	addi	VirtualReg_114, VirtualReg_30, 24
	lw	VirtualReg_115, 0(VirtualReg_114)
	li	VirtualReg_118, 4
	mul	VirtualReg_117, VirtualReg_115, VirtualReg_118
	add	VirtualReg_116, VirtualReg_113, VirtualReg_117
	addi	VirtualReg_119, VirtualReg_30, 16
	lw	VirtualReg_120, 0(VirtualReg_119)
	li	VirtualReg_123, 4
	mul	VirtualReg_122, VirtualReg_27, VirtualReg_123
	add	VirtualReg_121, VirtualReg_120, VirtualReg_122
	lw	VirtualReg_124, 0(VirtualReg_121)
	sw	VirtualReg_124, 0(VirtualReg_116)
	addi	VirtualReg_125, VirtualReg_30, 16
	lw	VirtualReg_126, 0(VirtualReg_125)
	li	VirtualReg_129, 4
	mul	VirtualReg_128, VirtualReg_27, VirtualReg_129
	add	VirtualReg_127, VirtualReg_126, VirtualReg_128
	addi	VirtualReg_130, VirtualReg_30, 24
	lw	VirtualReg_131, 0(VirtualReg_130)
	sw	VirtualReg_131, 0(VirtualReg_127)
	addi	VirtualReg_132, VirtualReg_30, 24
	lw	VirtualReg_133, 0(VirtualReg_132)
	li	VirtualReg_134, 1
	add	VirtualReg_135, VirtualReg_133, VirtualReg_134
	sw	VirtualReg_135, 0(VirtualReg_132)
	j	.init_ID10_for_incr
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
	mv	VirtualReg_14, VirtualReg_13
	li	VirtualReg_15, 4
	mul	VirtualReg_16, VirtualReg_14, VirtualReg_15
	li	VirtualReg_17, 4
	add	VirtualReg_18, VirtualReg_16, VirtualReg_17
	mv	a0, VirtualReg_18
	call	malloc
	mv	VirtualReg_19, a0
	mv	VirtualReg_20, VirtualReg_19
	sw	VirtualReg_13, 0(VirtualReg_20)
	li	VirtualReg_23, 1
	li	VirtualReg_24, 4
	mul	VirtualReg_22, VirtualReg_23, VirtualReg_24
	add	VirtualReg_21, VirtualReg_20, VirtualReg_22
	mv	VirtualReg_25, VirtualReg_21
	mv	VirtualReg_26, VirtualReg_25
	lw	VirtualReg_27, fuckLLVM_n
	mv	VirtualReg_28, VirtualReg_27
	li	VirtualReg_29, 4
	mul	VirtualReg_30, VirtualReg_28, VirtualReg_29
	li	VirtualReg_31, 4
	add	VirtualReg_32, VirtualReg_30, VirtualReg_31
	mv	a0, VirtualReg_32
	call	malloc
	mv	VirtualReg_33, a0
	mv	VirtualReg_34, VirtualReg_33
	sw	VirtualReg_27, 0(VirtualReg_34)
	li	VirtualReg_37, 1
	li	VirtualReg_38, 4
	mul	VirtualReg_36, VirtualReg_37, VirtualReg_38
	add	VirtualReg_35, VirtualReg_34, VirtualReg_36
	mv	VirtualReg_39, VirtualReg_35
	mv	VirtualReg_40, VirtualReg_39
	li	VirtualReg_539, 0
	mv	VirtualReg_41, VirtualReg_539
	j	.dijkstra_ID23_for_condition
.dijkstra_ID23_for_condition:
	lw	VirtualReg_42, fuckLLVM_n
	slt	VirtualReg_43, VirtualReg_41, VirtualReg_42
	bnez	VirtualReg_43, .dijkstra_ID23_for_suite
	j	.dijkstra_ID23_for_out
.dijkstra_ID23_for_suite:
	li	VirtualReg_46, 4
	mul	VirtualReg_45, VirtualReg_41, VirtualReg_46
	add	VirtualReg_44, VirtualReg_40, VirtualReg_45
	lw	VirtualReg_47, fuckLLVM_INF
	sw	VirtualReg_47, 0(VirtualReg_44)
	li	VirtualReg_50, 4
	mul	VirtualReg_49, VirtualReg_41, VirtualReg_50
	add	VirtualReg_48, VirtualReg_26, VirtualReg_49
	li	VirtualReg_51, 0
	sw	VirtualReg_51, 0(VirtualReg_48)
	j	.dijkstra_ID23_for_incr
.dijkstra_ID23_for_incr:
	li	VirtualReg_52, 1
	add	VirtualReg_53, VirtualReg_41, VirtualReg_52
	mv	VirtualReg_41, VirtualReg_53
	j	.dijkstra_ID23_for_condition
.dijkstra_ID23_for_out:
	li	VirtualReg_56, 4
	mul	VirtualReg_55, VirtualReg_0, VirtualReg_56
	add	VirtualReg_54, VirtualReg_40, VirtualReg_55
	li	VirtualReg_57, 0
	sw	VirtualReg_57, 0(VirtualReg_54)
	li	VirtualReg_58, 8
	mv	a0, VirtualReg_58
	call	malloc
	mv	VirtualReg_59, a0
	mv	VirtualReg_60, VirtualReg_59
	j	.dijkstra_call_Heap_Node_36_Heap_Node_entry
.dijkstra_call_Heap_Node_36_out:
	mv	VirtualReg_61, VirtualReg_60
	li	VirtualReg_62, 8
	mv	a0, VirtualReg_62
	call	malloc
	mv	VirtualReg_63, a0
	mv	VirtualReg_64, VirtualReg_63
	j	.dijkstra_call_Node_37_out
.dijkstra_call_Node_37_out:
	mv	VirtualReg_65, VirtualReg_64
	addi	VirtualReg_66, VirtualReg_65, 4
	li	VirtualReg_67, 0
	sw	VirtualReg_67, 0(VirtualReg_66)
	addi	VirtualReg_68, VirtualReg_65, 0
	sw	VirtualReg_0, 0(VirtualReg_68)
	mv	VirtualReg_69, VirtualReg_65
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_entry
.dijkstra_call_classHeap_Node_size_39_out:
	li	VirtualReg_71, 0
	xor	VirtualReg_72, VirtualReg_70, VirtualReg_71
	sltiu	VirtualReg_72, VirtualReg_72, 1
	xori	VirtualReg_72, VirtualReg_72, 1
	bnez	VirtualReg_72, .dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_entry
	j	.dijkstra_ID59_while_out
.dijkstra_ID71_if_out:
	li	VirtualReg_76, 4
	mul	VirtualReg_74, VirtualReg_75, VirtualReg_76
	add	VirtualReg_73, VirtualReg_26, VirtualReg_74
	li	VirtualReg_77, 1
	sw	VirtualReg_77, 0(VirtualReg_73)
	lw	VirtualReg_78, fuckLLVM_g
	addi	VirtualReg_79, VirtualReg_78, 16
	lw	VirtualReg_80, 0(VirtualReg_79)
	li	VirtualReg_83, 4
	mul	VirtualReg_82, VirtualReg_75, VirtualReg_83
	add	VirtualReg_81, VirtualReg_80, VirtualReg_82
	lw	VirtualReg_84, 0(VirtualReg_81)
	mv	VirtualReg_85, VirtualReg_84
	j	.dijkstra_ID81_for_condition
.dijkstra_ID81_for_condition:
	li	VirtualReg_86, -1
	xor	VirtualReg_87, VirtualReg_85, VirtualReg_86
	sltiu	VirtualReg_87, VirtualReg_87, 1
	xori	VirtualReg_87, VirtualReg_87, 1
	bnez	VirtualReg_87, .dijkstra_ID81_for_suite
	j	.dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
.dijkstra_ID81_for_suite:
	lw	VirtualReg_88, fuckLLVM_g
	addi	VirtualReg_89, VirtualReg_88, 0
	lw	VirtualReg_90, 0(VirtualReg_89)
	li	VirtualReg_93, 12
	mul	VirtualReg_92, VirtualReg_85, VirtualReg_93
	add	VirtualReg_91, VirtualReg_90, VirtualReg_92
	lw	VirtualReg_94, 0(VirtualReg_91)
	addi	VirtualReg_95, VirtualReg_94, 4
	lw	VirtualReg_96, 0(VirtualReg_95)
	lw	VirtualReg_97, fuckLLVM_g
	addi	VirtualReg_98, VirtualReg_97, 0
	lw	VirtualReg_99, 0(VirtualReg_98)
	li	VirtualReg_102, 12
	mul	VirtualReg_101, VirtualReg_85, VirtualReg_102
	add	VirtualReg_100, VirtualReg_99, VirtualReg_101
	lw	VirtualReg_103, 0(VirtualReg_100)
	addi	VirtualReg_104, VirtualReg_103, 8
	lw	VirtualReg_105, 0(VirtualReg_104)
	li	VirtualReg_108, 4
	mul	VirtualReg_107, VirtualReg_75, VirtualReg_108
	add	VirtualReg_106, VirtualReg_40, VirtualReg_107
	lw	VirtualReg_109, 0(VirtualReg_106)
	add	VirtualReg_110, VirtualReg_109, VirtualReg_105
	li	VirtualReg_113, 4
	mul	VirtualReg_112, VirtualReg_96, VirtualReg_113
	add	VirtualReg_111, VirtualReg_40, VirtualReg_112
	lw	VirtualReg_114, 0(VirtualReg_111)
	slt	VirtualReg_115, VirtualReg_110, VirtualReg_114
	xori	VirtualReg_115, VirtualReg_115, 1
	bnez	VirtualReg_115, .dijkstra_ID81_for_incr
	j	.dijkstra_ID115_if_out
.dijkstra_ID115_if_out:
	li	VirtualReg_118, 4
	mul	VirtualReg_117, VirtualReg_96, VirtualReg_118
	add	VirtualReg_116, VirtualReg_40, VirtualReg_117
	sw	VirtualReg_110, 0(VirtualReg_116)
	li	VirtualReg_119, 8
	mv	a0, VirtualReg_119
	call	malloc
	mv	VirtualReg_120, a0
	mv	VirtualReg_121, VirtualReg_120
	j	.dijkstra_call_Node_40_out
.dijkstra_call_Node_40_out:
	mv	VirtualReg_122, VirtualReg_121
	addi	VirtualReg_123, VirtualReg_122, 0
	sw	VirtualReg_96, 0(VirtualReg_123)
	addi	VirtualReg_124, VirtualReg_122, 4
	li	VirtualReg_127, 4
	mul	VirtualReg_126, VirtualReg_96, VirtualReg_127
	add	VirtualReg_125, VirtualReg_40, VirtualReg_126
	lw	VirtualReg_128, 0(VirtualReg_125)
	sw	VirtualReg_128, 0(VirtualReg_124)
	mv	VirtualReg_129, VirtualReg_122
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_entry
.dijkstra_ID81_for_incr:
	lw	VirtualReg_130, fuckLLVM_g
	addi	VirtualReg_131, VirtualReg_130, 8
	lw	VirtualReg_132, 0(VirtualReg_131)
	li	VirtualReg_135, 4
	mul	VirtualReg_134, VirtualReg_85, VirtualReg_135
	add	VirtualReg_133, VirtualReg_132, VirtualReg_134
	lw	VirtualReg_136, 0(VirtualReg_133)
	mv	VirtualReg_85, VirtualReg_136
	j	.dijkstra_ID81_for_condition
.dijkstra_call_classHeap_Node_pop_42_out:
	mv	VirtualReg_138, VirtualReg_137
	addi	VirtualReg_139, VirtualReg_138, 0
	lw	VirtualReg_75, 0(VirtualReg_139)
	li	VirtualReg_142, 4
	mul	VirtualReg_141, VirtualReg_75, VirtualReg_142
	add	VirtualReg_140, VirtualReg_26, VirtualReg_141
	lw	VirtualReg_143, 0(VirtualReg_140)
	li	VirtualReg_144, 1
	xor	VirtualReg_145, VirtualReg_143, VirtualReg_144
	sltiu	VirtualReg_145, VirtualReg_145, 1
	bnez	VirtualReg_145, .dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
	j	.dijkstra_ID71_if_out
.dijkstra_ID59_while_out:
	mv	VirtualReg_146, VirtualReg_40
	j	.dijkstra_return
.dijkstra_call_Heap_Node_36_Heap_Node_entry:
	addi	VirtualReg_147, VirtualReg_60, 0
	li	VirtualReg_148, 12
	mv	a0, VirtualReg_148
	call	malloc
	mv	VirtualReg_149, a0
	mv	VirtualReg_150, VirtualReg_149
	j	.dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_Array_Node_entry
.dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_out:
	mv	VirtualReg_151, VirtualReg_150
	sw	VirtualReg_151, 0(VirtualReg_147)
	j	.dijkstra_call_Heap_Node_36_out
.dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_Array_Node_entry:
	addi	VirtualReg_152, VirtualReg_150, 8
	li	VirtualReg_153, 0
	sw	VirtualReg_153, 0(VirtualReg_152)
	addi	VirtualReg_154, VirtualReg_150, 0
	li	VirtualReg_155, 132
	mv	a0, VirtualReg_155
	call	malloc
	mv	VirtualReg_156, a0
	mv	VirtualReg_157, VirtualReg_156
	li	VirtualReg_158, 16
	sw	VirtualReg_158, 0(VirtualReg_157)
	li	VirtualReg_161, 1
	li	VirtualReg_162, 4
	mul	VirtualReg_160, VirtualReg_161, VirtualReg_162
	add	VirtualReg_159, VirtualReg_157, VirtualReg_160
	mv	VirtualReg_163, VirtualReg_159
	mv	VirtualReg_164, VirtualReg_163
	sw	VirtualReg_164, 0(VirtualReg_154)
	j	.dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_entry:
	addi	VirtualReg_165, VirtualReg_61, 0
	lw	VirtualReg_166, 0(VirtualReg_165)
	mv	VirtualReg_167, VirtualReg_69
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_out:
	li	VirtualReg_169, 1
	sub	VirtualReg_170, VirtualReg_168, VirtualReg_169
	mv	VirtualReg_171, VirtualReg_170
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID14_while_condition
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID14_while_condition:
	li	VirtualReg_172, 0
	slt	VirtualReg_173, VirtualReg_172, VirtualReg_171
	bnez	VirtualReg_173, .dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry
	j	.dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID29_if_out:
	addi	VirtualReg_174, VirtualReg_61, 0
	lw	VirtualReg_175, 0(VirtualReg_174)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_out:
	mv	VirtualReg_171, VirtualReg_262
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID14_while_condition
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_out:
	addi	VirtualReg_176, VirtualReg_61, 0
	lw	VirtualReg_177, 0(VirtualReg_176)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_out:
	addi	VirtualReg_178, VirtualReg_61, 0
	lw	VirtualReg_179, 0(VirtualReg_178)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_out:
	slt	VirtualReg_182, VirtualReg_180, VirtualReg_181
	xori	VirtualReg_182, VirtualReg_182, 1
	bnez	VirtualReg_182, .dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID29_if_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out:
	addi	VirtualReg_183, VirtualReg_166, 0
	lw	VirtualReg_184, 0(VirtualReg_183)
	mv	VirtualReg_185, VirtualReg_184
	li	VirtualReg_188, -1
	li	VirtualReg_189, 4
	mul	VirtualReg_187, VirtualReg_188, VirtualReg_189
	add	VirtualReg_186, VirtualReg_185, VirtualReg_187
	lw	VirtualReg_190, 0(VirtualReg_186)
	xor	VirtualReg_192, VirtualReg_191, VirtualReg_190
	sltiu	VirtualReg_192, VirtualReg_192, 1
	bnez	VirtualReg_192, .dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out:
	addi	VirtualReg_193, VirtualReg_166, 0
	lw	VirtualReg_194, 0(VirtualReg_193)
	addi	VirtualReg_195, VirtualReg_166, 8
	lw	VirtualReg_196, 0(VirtualReg_195)
	li	VirtualReg_199, 8
	mul	VirtualReg_198, VirtualReg_196, VirtualReg_199
	add	VirtualReg_197, VirtualReg_194, VirtualReg_198
	mv	VirtualReg_200, VirtualReg_167
	sw	VirtualReg_200, 0(VirtualReg_197)
	addi	VirtualReg_201, VirtualReg_166, 8
	lw	VirtualReg_202, 0(VirtualReg_201)
	li	VirtualReg_203, 1
	add	VirtualReg_204, VirtualReg_202, VirtualReg_203
	sw	VirtualReg_204, 0(VirtualReg_201)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry:
	addi	VirtualReg_205, VirtualReg_166, 8
	lw	VirtualReg_191, 0(VirtualReg_205)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry:
	addi	VirtualReg_206, VirtualReg_166, 0
	lw	VirtualReg_207, 0(VirtualReg_206)
	mv	VirtualReg_208, VirtualReg_207
	addi	VirtualReg_209, VirtualReg_166, 8
	lw	VirtualReg_210, 0(VirtualReg_209)
	addi	VirtualReg_211, VirtualReg_166, 0
	mv	VirtualReg_212, VirtualReg_208
	li	VirtualReg_215, -1
	li	VirtualReg_216, 4
	mul	VirtualReg_214, VirtualReg_215, VirtualReg_216
	add	VirtualReg_213, VirtualReg_212, VirtualReg_214
	lw	VirtualReg_217, 0(VirtualReg_213)
	li	VirtualReg_218, 2
	mul	VirtualReg_219, VirtualReg_217, VirtualReg_218
	mv	VirtualReg_220, VirtualReg_219
	li	VirtualReg_221, 8
	mul	VirtualReg_222, VirtualReg_220, VirtualReg_221
	li	VirtualReg_223, 4
	add	VirtualReg_224, VirtualReg_222, VirtualReg_223
	mv	a0, VirtualReg_224
	call	malloc
	mv	VirtualReg_225, a0
	mv	VirtualReg_226, VirtualReg_225
	sw	VirtualReg_219, 0(VirtualReg_226)
	li	VirtualReg_229, 1
	li	VirtualReg_230, 4
	mul	VirtualReg_228, VirtualReg_229, VirtualReg_230
	add	VirtualReg_227, VirtualReg_226, VirtualReg_228
	mv	VirtualReg_231, VirtualReg_227
	mv	VirtualReg_232, VirtualReg_231
	sw	VirtualReg_232, 0(VirtualReg_211)
	addi	VirtualReg_233, VirtualReg_166, 8
	li	VirtualReg_234, 0
	sw	VirtualReg_234, 0(VirtualReg_233)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition:
	addi	VirtualReg_235, VirtualReg_166, 8
	lw	VirtualReg_236, 0(VirtualReg_235)
	xor	VirtualReg_237, VirtualReg_236, VirtualReg_210
	sltiu	VirtualReg_237, VirtualReg_237, 1
	xori	VirtualReg_237, VirtualReg_237, 1
	bnez	VirtualReg_237, .dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite:
	addi	VirtualReg_238, VirtualReg_166, 0
	lw	VirtualReg_239, 0(VirtualReg_238)
	addi	VirtualReg_240, VirtualReg_166, 8
	lw	VirtualReg_241, 0(VirtualReg_240)
	li	VirtualReg_244, 8
	mul	VirtualReg_243, VirtualReg_241, VirtualReg_244
	add	VirtualReg_242, VirtualReg_239, VirtualReg_243
	addi	VirtualReg_245, VirtualReg_166, 8
	lw	VirtualReg_246, 0(VirtualReg_245)
	li	VirtualReg_249, 8
	mul	VirtualReg_248, VirtualReg_246, VirtualReg_249
	add	VirtualReg_247, VirtualReg_208, VirtualReg_248
	lw	VirtualReg_250, 0(VirtualReg_247)
	mv	VirtualReg_251, VirtualReg_250
	sw	VirtualReg_251, 0(VirtualReg_242)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr:
	addi	VirtualReg_252, VirtualReg_166, 8
	lw	VirtualReg_253, 0(VirtualReg_252)
	li	VirtualReg_254, 1
	add	VirtualReg_255, VirtualReg_253, VirtualReg_254
	sw	VirtualReg_255, 0(VirtualReg_252)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry:
	addi	VirtualReg_256, VirtualReg_61, 0
	lw	VirtualReg_257, 0(VirtualReg_256)
	mv	a0, VirtualReg_257
	call	classArray_Node_size
	mv	VirtualReg_168, a0
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry:
	addi	VirtualReg_258, VirtualReg_175, 0
	lw	VirtualReg_259, 0(VirtualReg_258)
	li	VirtualReg_263, 8
	mul	VirtualReg_261, VirtualReg_262, VirtualReg_263
	add	VirtualReg_260, VirtualReg_259, VirtualReg_261
	lw	VirtualReg_264, 0(VirtualReg_260)
	mv	VirtualReg_265, VirtualReg_264
	addi	VirtualReg_266, VirtualReg_175, 0
	lw	VirtualReg_267, 0(VirtualReg_266)
	li	VirtualReg_270, 8
	mul	VirtualReg_269, VirtualReg_262, VirtualReg_270
	add	VirtualReg_268, VirtualReg_267, VirtualReg_269
	addi	VirtualReg_271, VirtualReg_175, 0
	lw	VirtualReg_272, 0(VirtualReg_271)
	li	VirtualReg_275, 8
	mul	VirtualReg_274, VirtualReg_171, VirtualReg_275
	add	VirtualReg_273, VirtualReg_272, VirtualReg_274
	lw	VirtualReg_276, 0(VirtualReg_273)
	mv	VirtualReg_277, VirtualReg_276
	sw	VirtualReg_277, 0(VirtualReg_268)
	addi	VirtualReg_278, VirtualReg_175, 0
	lw	VirtualReg_279, 0(VirtualReg_278)
	li	VirtualReg_282, 8
	mul	VirtualReg_281, VirtualReg_171, VirtualReg_282
	add	VirtualReg_280, VirtualReg_279, VirtualReg_281
	mv	VirtualReg_283, VirtualReg_265
	sw	VirtualReg_283, 0(VirtualReg_280)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry:
	li	VirtualReg_284, 1
	sub	VirtualReg_285, VirtualReg_171, VirtualReg_284
	li	VirtualReg_286, 2
	div	VirtualReg_262, VirtualReg_285, VirtualReg_286
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry:
	addi	VirtualReg_287, VirtualReg_177, 0
	lw	VirtualReg_288, 0(VirtualReg_287)
	li	VirtualReg_291, 8
	mul	VirtualReg_290, VirtualReg_262, VirtualReg_291
	add	VirtualReg_289, VirtualReg_288, VirtualReg_290
	lw	VirtualReg_292, 0(VirtualReg_289)
	mv	VirtualReg_293, VirtualReg_292
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_classNode_key__entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_classNode_key__entry:
	addi	VirtualReg_294, VirtualReg_293, 4
	lw	VirtualReg_295, 0(VirtualReg_294)
	li	VirtualReg_296, 0
	sub	VirtualReg_180, VirtualReg_296, VirtualReg_295
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry:
	addi	VirtualReg_297, VirtualReg_179, 0
	lw	VirtualReg_298, 0(VirtualReg_297)
	li	VirtualReg_301, 8
	mul	VirtualReg_300, VirtualReg_171, VirtualReg_301
	add	VirtualReg_299, VirtualReg_298, VirtualReg_300
	lw	VirtualReg_302, 0(VirtualReg_299)
	mv	VirtualReg_303, VirtualReg_302
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_classNode_key__entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_classNode_key__entry:
	addi	VirtualReg_304, VirtualReg_303, 4
	lw	VirtualReg_305, 0(VirtualReg_304)
	li	VirtualReg_306, 0
	sub	VirtualReg_181, VirtualReg_306, VirtualReg_305
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_out
.dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry:
	addi	VirtualReg_307, VirtualReg_61, 0
	lw	VirtualReg_308, 0(VirtualReg_307)
	j	.dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry
.dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry:
	addi	VirtualReg_309, VirtualReg_308, 8
	lw	VirtualReg_70, 0(VirtualReg_309)
	j	.dijkstra_call_classHeap_Node_size_39_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_entry:
	addi	VirtualReg_310, VirtualReg_61, 0
	lw	VirtualReg_311, 0(VirtualReg_310)
	mv	VirtualReg_312, VirtualReg_129
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_out:
	li	VirtualReg_314, 1
	sub	VirtualReg_315, VirtualReg_313, VirtualReg_314
	mv	VirtualReg_316, VirtualReg_315
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID14_while_condition
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID14_while_condition:
	li	VirtualReg_317, 0
	slt	VirtualReg_318, VirtualReg_317, VirtualReg_316
	bnez	VirtualReg_318, .dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry
	j	.dijkstra_ID81_for_incr
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID29_if_out:
	addi	VirtualReg_319, VirtualReg_61, 0
	lw	VirtualReg_320, 0(VirtualReg_319)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_out:
	mv	VirtualReg_316, VirtualReg_407
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID14_while_condition
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_out:
	addi	VirtualReg_321, VirtualReg_61, 0
	lw	VirtualReg_322, 0(VirtualReg_321)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_out:
	addi	VirtualReg_323, VirtualReg_61, 0
	lw	VirtualReg_324, 0(VirtualReg_323)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_out:
	slt	VirtualReg_327, VirtualReg_325, VirtualReg_326
	xori	VirtualReg_327, VirtualReg_327, 1
	bnez	VirtualReg_327, .dijkstra_ID81_for_incr
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID29_if_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out:
	addi	VirtualReg_328, VirtualReg_311, 0
	lw	VirtualReg_329, 0(VirtualReg_328)
	mv	VirtualReg_330, VirtualReg_329
	li	VirtualReg_333, -1
	li	VirtualReg_334, 4
	mul	VirtualReg_332, VirtualReg_333, VirtualReg_334
	add	VirtualReg_331, VirtualReg_330, VirtualReg_332
	lw	VirtualReg_335, 0(VirtualReg_331)
	xor	VirtualReg_337, VirtualReg_336, VirtualReg_335
	sltiu	VirtualReg_337, VirtualReg_337, 1
	bnez	VirtualReg_337, .dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out:
	addi	VirtualReg_338, VirtualReg_311, 0
	lw	VirtualReg_339, 0(VirtualReg_338)
	addi	VirtualReg_340, VirtualReg_311, 8
	lw	VirtualReg_341, 0(VirtualReg_340)
	li	VirtualReg_344, 8
	mul	VirtualReg_343, VirtualReg_341, VirtualReg_344
	add	VirtualReg_342, VirtualReg_339, VirtualReg_343
	mv	VirtualReg_345, VirtualReg_312
	sw	VirtualReg_345, 0(VirtualReg_342)
	addi	VirtualReg_346, VirtualReg_311, 8
	lw	VirtualReg_347, 0(VirtualReg_346)
	li	VirtualReg_348, 1
	add	VirtualReg_349, VirtualReg_347, VirtualReg_348
	sw	VirtualReg_349, 0(VirtualReg_346)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry:
	addi	VirtualReg_350, VirtualReg_311, 8
	lw	VirtualReg_336, 0(VirtualReg_350)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry:
	addi	VirtualReg_351, VirtualReg_311, 0
	lw	VirtualReg_352, 0(VirtualReg_351)
	mv	VirtualReg_353, VirtualReg_352
	addi	VirtualReg_354, VirtualReg_311, 8
	lw	VirtualReg_355, 0(VirtualReg_354)
	addi	VirtualReg_356, VirtualReg_311, 0
	mv	VirtualReg_357, VirtualReg_353
	li	VirtualReg_360, -1
	li	VirtualReg_361, 4
	mul	VirtualReg_359, VirtualReg_360, VirtualReg_361
	add	VirtualReg_358, VirtualReg_357, VirtualReg_359
	lw	VirtualReg_362, 0(VirtualReg_358)
	li	VirtualReg_363, 2
	mul	VirtualReg_364, VirtualReg_362, VirtualReg_363
	mv	VirtualReg_365, VirtualReg_364
	li	VirtualReg_366, 8
	mul	VirtualReg_367, VirtualReg_365, VirtualReg_366
	li	VirtualReg_368, 4
	add	VirtualReg_369, VirtualReg_367, VirtualReg_368
	mv	a0, VirtualReg_369
	call	malloc
	mv	VirtualReg_370, a0
	mv	VirtualReg_371, VirtualReg_370
	sw	VirtualReg_364, 0(VirtualReg_371)
	li	VirtualReg_374, 1
	li	VirtualReg_375, 4
	mul	VirtualReg_373, VirtualReg_374, VirtualReg_375
	add	VirtualReg_372, VirtualReg_371, VirtualReg_373
	mv	VirtualReg_376, VirtualReg_372
	mv	VirtualReg_377, VirtualReg_376
	sw	VirtualReg_377, 0(VirtualReg_356)
	addi	VirtualReg_378, VirtualReg_311, 8
	li	VirtualReg_379, 0
	sw	VirtualReg_379, 0(VirtualReg_378)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition:
	addi	VirtualReg_380, VirtualReg_311, 8
	lw	VirtualReg_381, 0(VirtualReg_380)
	xor	VirtualReg_382, VirtualReg_381, VirtualReg_355
	sltiu	VirtualReg_382, VirtualReg_382, 1
	xori	VirtualReg_382, VirtualReg_382, 1
	bnez	VirtualReg_382, .dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite:
	addi	VirtualReg_383, VirtualReg_311, 0
	lw	VirtualReg_384, 0(VirtualReg_383)
	addi	VirtualReg_385, VirtualReg_311, 8
	lw	VirtualReg_386, 0(VirtualReg_385)
	li	VirtualReg_389, 8
	mul	VirtualReg_388, VirtualReg_386, VirtualReg_389
	add	VirtualReg_387, VirtualReg_384, VirtualReg_388
	addi	VirtualReg_390, VirtualReg_311, 8
	lw	VirtualReg_391, 0(VirtualReg_390)
	li	VirtualReg_394, 8
	mul	VirtualReg_393, VirtualReg_391, VirtualReg_394
	add	VirtualReg_392, VirtualReg_353, VirtualReg_393
	lw	VirtualReg_395, 0(VirtualReg_392)
	mv	VirtualReg_396, VirtualReg_395
	sw	VirtualReg_396, 0(VirtualReg_387)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr:
	addi	VirtualReg_397, VirtualReg_311, 8
	lw	VirtualReg_398, 0(VirtualReg_397)
	li	VirtualReg_399, 1
	add	VirtualReg_400, VirtualReg_398, VirtualReg_399
	sw	VirtualReg_400, 0(VirtualReg_397)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry:
	addi	VirtualReg_401, VirtualReg_61, 0
	lw	VirtualReg_402, 0(VirtualReg_401)
	mv	a0, VirtualReg_402
	call	classArray_Node_size
	mv	VirtualReg_313, a0
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry:
	addi	VirtualReg_403, VirtualReg_320, 0
	lw	VirtualReg_404, 0(VirtualReg_403)
	li	VirtualReg_408, 8
	mul	VirtualReg_406, VirtualReg_407, VirtualReg_408
	add	VirtualReg_405, VirtualReg_404, VirtualReg_406
	lw	VirtualReg_409, 0(VirtualReg_405)
	mv	VirtualReg_410, VirtualReg_409
	addi	VirtualReg_411, VirtualReg_320, 0
	lw	VirtualReg_412, 0(VirtualReg_411)
	li	VirtualReg_415, 8
	mul	VirtualReg_414, VirtualReg_407, VirtualReg_415
	add	VirtualReg_413, VirtualReg_412, VirtualReg_414
	addi	VirtualReg_416, VirtualReg_320, 0
	lw	VirtualReg_417, 0(VirtualReg_416)
	li	VirtualReg_420, 8
	mul	VirtualReg_419, VirtualReg_316, VirtualReg_420
	add	VirtualReg_418, VirtualReg_417, VirtualReg_419
	lw	VirtualReg_421, 0(VirtualReg_418)
	mv	VirtualReg_422, VirtualReg_421
	sw	VirtualReg_422, 0(VirtualReg_413)
	addi	VirtualReg_423, VirtualReg_320, 0
	lw	VirtualReg_424, 0(VirtualReg_423)
	li	VirtualReg_427, 8
	mul	VirtualReg_426, VirtualReg_316, VirtualReg_427
	add	VirtualReg_425, VirtualReg_424, VirtualReg_426
	mv	VirtualReg_428, VirtualReg_410
	sw	VirtualReg_428, 0(VirtualReg_425)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry:
	li	VirtualReg_429, 1
	sub	VirtualReg_430, VirtualReg_316, VirtualReg_429
	li	VirtualReg_431, 2
	div	VirtualReg_407, VirtualReg_430, VirtualReg_431
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry:
	addi	VirtualReg_432, VirtualReg_322, 0
	lw	VirtualReg_433, 0(VirtualReg_432)
	li	VirtualReg_436, 8
	mul	VirtualReg_435, VirtualReg_407, VirtualReg_436
	add	VirtualReg_434, VirtualReg_433, VirtualReg_435
	lw	VirtualReg_437, 0(VirtualReg_434)
	mv	VirtualReg_438, VirtualReg_437
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_classNode_key__entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_classNode_key__entry:
	addi	VirtualReg_439, VirtualReg_438, 4
	lw	VirtualReg_440, 0(VirtualReg_439)
	li	VirtualReg_441, 0
	sub	VirtualReg_325, VirtualReg_441, VirtualReg_440
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry:
	addi	VirtualReg_442, VirtualReg_324, 0
	lw	VirtualReg_443, 0(VirtualReg_442)
	li	VirtualReg_446, 8
	mul	VirtualReg_445, VirtualReg_316, VirtualReg_446
	add	VirtualReg_444, VirtualReg_443, VirtualReg_445
	lw	VirtualReg_447, 0(VirtualReg_444)
	mv	VirtualReg_448, VirtualReg_447
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_classNode_key__entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_classNode_key__entry:
	addi	VirtualReg_449, VirtualReg_448, 4
	lw	VirtualReg_450, 0(VirtualReg_449)
	li	VirtualReg_451, 0
	sub	VirtualReg_326, VirtualReg_451, VirtualReg_450
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_entry:
	addi	VirtualReg_452, VirtualReg_61, 0
	lw	VirtualReg_453, 0(VirtualReg_452)
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_classArray_Node_front_entry
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_out:
	mv	VirtualReg_455, VirtualReg_454
	addi	VirtualReg_456, VirtualReg_61, 0
	lw	VirtualReg_457, 0(VirtualReg_456)
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_classHeap_Node_size_entry
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_out:
	li	VirtualReg_459, 1
	sub	VirtualReg_460, VirtualReg_458, VirtualReg_459
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_classArray_Node_swap_entry
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_out:
	addi	VirtualReg_461, VirtualReg_61, 0
	lw	VirtualReg_462, 0(VirtualReg_461)
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_pop_back_16_classArray_Node_pop_back_entry
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out:
	mv	VirtualReg_137, VirtualReg_455
	j	.dijkstra_call_classHeap_Node_pop_42_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_classArray_Node_front_entry:
	addi	VirtualReg_463, VirtualReg_453, 0
	lw	VirtualReg_464, 0(VirtualReg_463)
	li	VirtualReg_467, 0
	li	VirtualReg_468, 8
	mul	VirtualReg_466, VirtualReg_467, VirtualReg_468
	add	VirtualReg_465, VirtualReg_464, VirtualReg_466
	lw	VirtualReg_469, 0(VirtualReg_465)
	mv	VirtualReg_454, VirtualReg_469
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_classHeap_Node_size_entry:
	addi	VirtualReg_470, VirtualReg_61, 0
	lw	VirtualReg_471, 0(VirtualReg_470)
	mv	a0, VirtualReg_471
	call	classArray_Node_size
	mv	VirtualReg_458, a0
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_classArray_Node_swap_entry:
	addi	VirtualReg_472, VirtualReg_457, 0
	lw	VirtualReg_473, 0(VirtualReg_472)
	li	VirtualReg_476, 0
	li	VirtualReg_477, 8
	mul	VirtualReg_475, VirtualReg_476, VirtualReg_477
	add	VirtualReg_474, VirtualReg_473, VirtualReg_475
	lw	VirtualReg_478, 0(VirtualReg_474)
	mv	VirtualReg_479, VirtualReg_478
	addi	VirtualReg_480, VirtualReg_457, 0
	lw	VirtualReg_481, 0(VirtualReg_480)
	li	VirtualReg_484, 0
	li	VirtualReg_485, 8
	mul	VirtualReg_483, VirtualReg_484, VirtualReg_485
	add	VirtualReg_482, VirtualReg_481, VirtualReg_483
	addi	VirtualReg_486, VirtualReg_457, 0
	lw	VirtualReg_487, 0(VirtualReg_486)
	li	VirtualReg_490, 8
	mul	VirtualReg_489, VirtualReg_460, VirtualReg_490
	add	VirtualReg_488, VirtualReg_487, VirtualReg_489
	lw	VirtualReg_491, 0(VirtualReg_488)
	mv	VirtualReg_492, VirtualReg_491
	sw	VirtualReg_492, 0(VirtualReg_482)
	addi	VirtualReg_493, VirtualReg_457, 0
	lw	VirtualReg_494, 0(VirtualReg_493)
	li	VirtualReg_497, 8
	mul	VirtualReg_496, VirtualReg_460, VirtualReg_497
	add	VirtualReg_495, VirtualReg_494, VirtualReg_496
	mv	VirtualReg_498, VirtualReg_479
	sw	VirtualReg_498, 0(VirtualReg_495)
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_pop_back_16_classArray_Node_pop_back_entry:
	addi	VirtualReg_499, VirtualReg_462, 8
	lw	VirtualReg_500, 0(VirtualReg_499)
	li	VirtualReg_501, 1
	sub	VirtualReg_502, VirtualReg_500, VirtualReg_501
	sw	VirtualReg_502, 0(VirtualReg_499)
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry:
	mv	a0, VirtualReg_61
	li	VirtualReg_503, 0
	mv	a1, VirtualReg_503
	call	classHeap_Node_lchild
	mv	VirtualReg_504, a0
	mv	a0, VirtualReg_61
	li	VirtualReg_505, 0
	mv	a1, VirtualReg_505
	call	classHeap_Node_rchild
	mv	VirtualReg_506, a0
	mv	a0, VirtualReg_61
	call	classHeap_Node_size
	mv	VirtualReg_507, a0
	slt	VirtualReg_508, VirtualReg_504, VirtualReg_507
	bnez	VirtualReg_508, .dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_true
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry_mid
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry_mid:
	li	VirtualReg_540, 0
	mv	VirtualReg_519, VirtualReg_540
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_true:
	addi	VirtualReg_509, VirtualReg_61, 0
	lw	VirtualReg_510, 0(VirtualReg_509)
	mv	a0, VirtualReg_510
	mv	a1, VirtualReg_504
	call	classArray_Node_get
	mv	VirtualReg_511, a0
	mv	a0, VirtualReg_511
	call	classNode_key_
	mv	VirtualReg_512, a0
	addi	VirtualReg_513, VirtualReg_61, 0
	lw	VirtualReg_514, 0(VirtualReg_513)
	mv	a0, VirtualReg_514
	li	VirtualReg_515, 0
	mv	a1, VirtualReg_515
	call	classArray_Node_get
	mv	VirtualReg_516, a0
	mv	a0, VirtualReg_516
	call	classNode_key_
	mv	VirtualReg_517, a0
	slt	VirtualReg_518, VirtualReg_517, VirtualReg_512
	mv	VirtualReg_519, VirtualReg_518
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out_mid:
	li	VirtualReg_541, 0
	mv	VirtualReg_520, VirtualReg_541
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out:
	bnez	VirtualReg_519, .dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_true
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out_mid
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out_mid:
	li	VirtualReg_542, 0
	mv	VirtualReg_532, VirtualReg_542
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_true:
	mv	VirtualReg_520, VirtualReg_504
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out_mid:
	mv	VirtualReg_533, VirtualReg_520
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out:
	mv	a0, VirtualReg_61
	call	classHeap_Node_size
	mv	VirtualReg_521, a0
	slt	VirtualReg_522, VirtualReg_506, VirtualReg_521
	bnez	VirtualReg_522, .dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_true
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out_mid
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_true:
	addi	VirtualReg_523, VirtualReg_61, 0
	lw	VirtualReg_524, 0(VirtualReg_523)
	mv	a0, VirtualReg_524
	mv	a1, VirtualReg_506
	call	classArray_Node_get
	mv	VirtualReg_525, a0
	mv	a0, VirtualReg_525
	call	classNode_key_
	mv	VirtualReg_526, a0
	addi	VirtualReg_527, VirtualReg_61, 0
	lw	VirtualReg_528, 0(VirtualReg_527)
	mv	a0, VirtualReg_528
	mv	a1, VirtualReg_520
	call	classArray_Node_get
	mv	VirtualReg_529, a0
	mv	a0, VirtualReg_529
	call	classNode_key_
	mv	VirtualReg_530, a0
	slt	VirtualReg_531, VirtualReg_530, VirtualReg_526
	mv	VirtualReg_532, VirtualReg_531
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out:
	bnez	VirtualReg_532, .dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_true
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out_mid
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_true:
	mv	VirtualReg_533, VirtualReg_506
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out:
	li	VirtualReg_534, 0
	xor	VirtualReg_535, VirtualReg_533, VirtualReg_534
	sltiu	VirtualReg_535, VirtualReg_535, 1
	bnez	VirtualReg_535, .dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID48_if_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID48_if_out:
	addi	VirtualReg_536, VirtualReg_61, 0
	lw	VirtualReg_537, 0(VirtualReg_536)
	mv	a0, VirtualReg_537
	li	VirtualReg_538, 0
	mv	a1, VirtualReg_538
	mv	a2, VirtualReg_533
	call	classArray_Node_swap
	mv	a0, VirtualReg_61
	mv	a1, VirtualReg_533
	call	classHeap_Node_maxHeapify
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out
.dijkstra_return:
	mv	a0, VirtualReg_146
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
	j	.main_call_init_44_init_entry
.main_call_init_44_out:
	li	VirtualReg_692, 0
	mv	VirtualReg_12, VirtualReg_692
	j	.main_ID3_for_condition
.main_ID3_for_condition:
	lw	VirtualReg_13, fuckLLVM_n
	slt	VirtualReg_14, VirtualReg_12, VirtualReg_13
	bnez	VirtualReg_14, .main_call_dijkstra_45_dijkstra_entry
	j	.main_return
.main_call_dijkstra_45_out:
	mv	VirtualReg_16, VirtualReg_15
	li	VirtualReg_693, 0
	mv	VirtualReg_17, VirtualReg_693
	j	.main_ID10_for_condition
.main_ID10_for_condition:
	lw	VirtualReg_18, fuckLLVM_n
	slt	VirtualReg_19, VirtualReg_17, VirtualReg_18
	bnez	VirtualReg_19, .main_ID10_for_suite
	j	.main_ID10_for_out
.main_ID10_for_suite:
	li	VirtualReg_22, 4
	mul	VirtualReg_21, VirtualReg_17, VirtualReg_22
	add	VirtualReg_20, VirtualReg_16, VirtualReg_21
	lw	VirtualReg_23, 0(VirtualReg_20)
	lw	VirtualReg_24, fuckLLVM_INF
	xor	VirtualReg_25, VirtualReg_23, VirtualReg_24
	sltiu	VirtualReg_25, VirtualReg_25, 1
	bnez	VirtualReg_25, .main_ID19_if_true
	j	.main_ID19_if_false
.main_ID19_if_true:
	la	VirtualReg_26, fuckLLVM_.str.0
	mv	VirtualReg_27, VirtualReg_26
	mv	a0, VirtualReg_27
	call	print
	j	.main_ID19_if_out
.main_ID19_if_false:
	li	VirtualReg_30, 4
	mul	VirtualReg_29, VirtualReg_17, VirtualReg_30
	add	VirtualReg_28, VirtualReg_16, VirtualReg_29
	lw	VirtualReg_31, 0(VirtualReg_28)
	mv	a0, VirtualReg_31
	call	toString
	mv	VirtualReg_32, a0
	mv	VirtualReg_33, VirtualReg_32
	mv	a0, VirtualReg_33
	call	print
	j	.main_ID19_if_out
.main_ID19_if_out:
	la	VirtualReg_34, fuckLLVM_.str.1
	mv	VirtualReg_35, VirtualReg_34
	mv	a0, VirtualReg_35
	call	print
	j	.main_ID10_for_incr
.main_ID10_for_incr:
	li	VirtualReg_36, 1
	add	VirtualReg_37, VirtualReg_17, VirtualReg_36
	mv	VirtualReg_17, VirtualReg_37
	j	.main_ID10_for_condition
.main_ID10_for_out:
	la	VirtualReg_38, fuckLLVM_.str.2
	mv	VirtualReg_39, VirtualReg_38
	mv	a0, VirtualReg_39
	call	println
	j	.main_ID3_for_incr
.main_ID3_for_incr:
	li	VirtualReg_40, 1
	add	VirtualReg_41, VirtualReg_12, VirtualReg_40
	mv	VirtualReg_12, VirtualReg_41
	j	.main_ID3_for_condition
.main_call_init_44_init_entry:
	call	getInt
	mv	VirtualReg_42, a0
	li	VirtualReg_43, 0
	sw	VirtualReg_42, fuckLLVM_n, VirtualReg_43
	call	getInt
	mv	VirtualReg_44, a0
	li	VirtualReg_45, 0
	sw	VirtualReg_44, fuckLLVM_m, VirtualReg_45
	li	VirtualReg_46, 28
	mv	a0, VirtualReg_46
	call	malloc
	mv	VirtualReg_47, a0
	mv	VirtualReg_48, VirtualReg_47
	j	.main_call_init_44_init_call_EdgeList_33_out
.main_call_init_44_init_call_EdgeList_33_out:
	mv	VirtualReg_49, VirtualReg_48
	li	VirtualReg_50, 0
	sw	VirtualReg_49, fuckLLVM_g, VirtualReg_50
	lw	VirtualReg_51, fuckLLVM_g
	lw	VirtualReg_52, fuckLLVM_n
	lw	VirtualReg_53, fuckLLVM_m
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_entry
.main_call_init_44_init_call_classEdgeList_init_34_out:
	li	VirtualReg_694, 0
	mv	VirtualReg_54, VirtualReg_694
	j	.main_call_init_44_init_ID10_for_condition
.main_call_init_44_init_ID10_for_condition:
	lw	VirtualReg_55, fuckLLVM_m
	slt	VirtualReg_56, VirtualReg_54, VirtualReg_55
	bnez	VirtualReg_56, .main_call_init_44_init_ID10_for_suite
	j	.main_call_init_44_out
.main_call_init_44_init_ID10_for_suite:
	call	getInt
	mv	VirtualReg_57, a0
	call	getInt
	mv	VirtualReg_58, a0
	call	getInt
	mv	VirtualReg_59, a0
	lw	VirtualReg_60, fuckLLVM_g
	j	.main_call_init_44_init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_entry
.main_call_init_44_init_ID10_for_incr:
	li	VirtualReg_61, 1
	add	VirtualReg_62, VirtualReg_54, VirtualReg_61
	mv	VirtualReg_54, VirtualReg_62
	j	.main_call_init_44_init_ID10_for_condition
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_entry:
	addi	VirtualReg_63, VirtualReg_51, 0
	mv	VirtualReg_64, VirtualReg_53
	li	VirtualReg_65, 12
	mul	VirtualReg_66, VirtualReg_64, VirtualReg_65
	li	VirtualReg_67, 4
	add	VirtualReg_68, VirtualReg_66, VirtualReg_67
	mv	a0, VirtualReg_68
	call	malloc
	mv	VirtualReg_69, a0
	mv	VirtualReg_70, VirtualReg_69
	sw	VirtualReg_53, 0(VirtualReg_70)
	li	VirtualReg_73, 1
	li	VirtualReg_74, 4
	mul	VirtualReg_72, VirtualReg_73, VirtualReg_74
	add	VirtualReg_71, VirtualReg_70, VirtualReg_72
	mv	VirtualReg_75, VirtualReg_71
	mv	VirtualReg_76, VirtualReg_75
	sw	VirtualReg_76, 0(VirtualReg_63)
	addi	VirtualReg_77, VirtualReg_51, 8
	mv	VirtualReg_78, VirtualReg_53
	li	VirtualReg_79, 4
	mul	VirtualReg_80, VirtualReg_78, VirtualReg_79
	li	VirtualReg_81, 4
	add	VirtualReg_82, VirtualReg_80, VirtualReg_81
	mv	a0, VirtualReg_82
	call	malloc
	mv	VirtualReg_83, a0
	mv	VirtualReg_84, VirtualReg_83
	sw	VirtualReg_53, 0(VirtualReg_84)
	li	VirtualReg_87, 1
	li	VirtualReg_88, 4
	mul	VirtualReg_86, VirtualReg_87, VirtualReg_88
	add	VirtualReg_85, VirtualReg_84, VirtualReg_86
	mv	VirtualReg_89, VirtualReg_85
	mv	VirtualReg_90, VirtualReg_89
	sw	VirtualReg_90, 0(VirtualReg_77)
	addi	VirtualReg_91, VirtualReg_51, 16
	mv	VirtualReg_92, VirtualReg_52
	li	VirtualReg_93, 4
	mul	VirtualReg_94, VirtualReg_92, VirtualReg_93
	li	VirtualReg_95, 4
	add	VirtualReg_96, VirtualReg_94, VirtualReg_95
	mv	a0, VirtualReg_96
	call	malloc
	mv	VirtualReg_97, a0
	mv	VirtualReg_98, VirtualReg_97
	sw	VirtualReg_52, 0(VirtualReg_98)
	li	VirtualReg_101, 1
	li	VirtualReg_102, 4
	mul	VirtualReg_100, VirtualReg_101, VirtualReg_102
	add	VirtualReg_99, VirtualReg_98, VirtualReg_100
	mv	VirtualReg_103, VirtualReg_99
	mv	VirtualReg_104, VirtualReg_103
	sw	VirtualReg_104, 0(VirtualReg_91)
	li	VirtualReg_695, 0
	mv	VirtualReg_105, VirtualReg_695
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_condition
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_condition:
	slt	VirtualReg_106, VirtualReg_105, VirtualReg_53
	bnez	VirtualReg_106, .main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_suite
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_out
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_suite:
	addi	VirtualReg_107, VirtualReg_51, 8
	lw	VirtualReg_108, 0(VirtualReg_107)
	li	VirtualReg_111, 4
	mul	VirtualReg_110, VirtualReg_105, VirtualReg_111
	add	VirtualReg_109, VirtualReg_108, VirtualReg_110
	li	VirtualReg_112, -1
	sw	VirtualReg_112, 0(VirtualReg_109)
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_incr
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_incr:
	li	VirtualReg_113, 1
	add	VirtualReg_114, VirtualReg_105, VirtualReg_113
	mv	VirtualReg_105, VirtualReg_114
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_condition
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_out:
	li	VirtualReg_696, 0
	mv	VirtualReg_115, VirtualReg_696
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_condition
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_condition:
	slt	VirtualReg_116, VirtualReg_115, VirtualReg_52
	bnez	VirtualReg_116, .main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_suite
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_out
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_suite:
	addi	VirtualReg_117, VirtualReg_51, 16
	lw	VirtualReg_118, 0(VirtualReg_117)
	li	VirtualReg_121, 4
	mul	VirtualReg_120, VirtualReg_115, VirtualReg_121
	add	VirtualReg_119, VirtualReg_118, VirtualReg_120
	li	VirtualReg_122, -1
	sw	VirtualReg_122, 0(VirtualReg_119)
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_incr
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_incr:
	li	VirtualReg_123, 1
	add	VirtualReg_124, VirtualReg_115, VirtualReg_123
	mv	VirtualReg_115, VirtualReg_124
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_condition
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_out:
	addi	VirtualReg_125, VirtualReg_51, 24
	li	VirtualReg_126, 0
	sw	VirtualReg_126, 0(VirtualReg_125)
	j	.main_call_init_44_init_call_classEdgeList_init_34_out
.main_call_init_44_init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_entry:
	li	VirtualReg_127, 12
	mv	a0, VirtualReg_127
	call	malloc
	mv	VirtualReg_128, a0
	mv	VirtualReg_129, VirtualReg_128
	j	.main_call_init_44_init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_call_Edge_0_out
.main_call_init_44_init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_call_Edge_0_out:
	mv	VirtualReg_130, VirtualReg_129
	addi	VirtualReg_131, VirtualReg_130, 0
	sw	VirtualReg_57, 0(VirtualReg_131)
	addi	VirtualReg_132, VirtualReg_130, 4
	sw	VirtualReg_58, 0(VirtualReg_132)
	addi	VirtualReg_133, VirtualReg_130, 8
	sw	VirtualReg_59, 0(VirtualReg_133)
	addi	VirtualReg_134, VirtualReg_60, 0
	lw	VirtualReg_135, 0(VirtualReg_134)
	addi	VirtualReg_136, VirtualReg_60, 24
	lw	VirtualReg_137, 0(VirtualReg_136)
	li	VirtualReg_140, 12
	mul	VirtualReg_139, VirtualReg_137, VirtualReg_140
	add	VirtualReg_138, VirtualReg_135, VirtualReg_139
	mv	VirtualReg_141, VirtualReg_130
	sw	VirtualReg_141, 0(VirtualReg_138)
	addi	VirtualReg_142, VirtualReg_60, 8
	lw	VirtualReg_143, 0(VirtualReg_142)
	addi	VirtualReg_144, VirtualReg_60, 24
	lw	VirtualReg_145, 0(VirtualReg_144)
	li	VirtualReg_148, 4
	mul	VirtualReg_147, VirtualReg_145, VirtualReg_148
	add	VirtualReg_146, VirtualReg_143, VirtualReg_147
	addi	VirtualReg_149, VirtualReg_60, 16
	lw	VirtualReg_150, 0(VirtualReg_149)
	li	VirtualReg_153, 4
	mul	VirtualReg_152, VirtualReg_57, VirtualReg_153
	add	VirtualReg_151, VirtualReg_150, VirtualReg_152
	lw	VirtualReg_154, 0(VirtualReg_151)
	sw	VirtualReg_154, 0(VirtualReg_146)
	addi	VirtualReg_155, VirtualReg_60, 16
	lw	VirtualReg_156, 0(VirtualReg_155)
	li	VirtualReg_159, 4
	mul	VirtualReg_158, VirtualReg_57, VirtualReg_159
	add	VirtualReg_157, VirtualReg_156, VirtualReg_158
	addi	VirtualReg_160, VirtualReg_60, 24
	lw	VirtualReg_161, 0(VirtualReg_160)
	sw	VirtualReg_161, 0(VirtualReg_157)
	addi	VirtualReg_162, VirtualReg_60, 24
	lw	VirtualReg_163, 0(VirtualReg_162)
	li	VirtualReg_164, 1
	add	VirtualReg_165, VirtualReg_163, VirtualReg_164
	sw	VirtualReg_165, 0(VirtualReg_162)
	j	.main_call_init_44_init_ID10_for_incr
.main_call_dijkstra_45_dijkstra_entry:
	lw	VirtualReg_166, fuckLLVM_n
	mv	VirtualReg_167, VirtualReg_166
	li	VirtualReg_168, 4
	mul	VirtualReg_169, VirtualReg_167, VirtualReg_168
	li	VirtualReg_170, 4
	add	VirtualReg_171, VirtualReg_169, VirtualReg_170
	mv	a0, VirtualReg_171
	call	malloc
	mv	VirtualReg_172, a0
	mv	VirtualReg_173, VirtualReg_172
	sw	VirtualReg_166, 0(VirtualReg_173)
	li	VirtualReg_176, 1
	li	VirtualReg_177, 4
	mul	VirtualReg_175, VirtualReg_176, VirtualReg_177
	add	VirtualReg_174, VirtualReg_173, VirtualReg_175
	mv	VirtualReg_178, VirtualReg_174
	mv	VirtualReg_179, VirtualReg_178
	lw	VirtualReg_180, fuckLLVM_n
	mv	VirtualReg_181, VirtualReg_180
	li	VirtualReg_182, 4
	mul	VirtualReg_183, VirtualReg_181, VirtualReg_182
	li	VirtualReg_184, 4
	add	VirtualReg_185, VirtualReg_183, VirtualReg_184
	mv	a0, VirtualReg_185
	call	malloc
	mv	VirtualReg_186, a0
	mv	VirtualReg_187, VirtualReg_186
	sw	VirtualReg_180, 0(VirtualReg_187)
	li	VirtualReg_190, 1
	li	VirtualReg_191, 4
	mul	VirtualReg_189, VirtualReg_190, VirtualReg_191
	add	VirtualReg_188, VirtualReg_187, VirtualReg_189
	mv	VirtualReg_192, VirtualReg_188
	mv	VirtualReg_193, VirtualReg_192
	li	VirtualReg_697, 0
	mv	VirtualReg_194, VirtualReg_697
	j	.main_call_dijkstra_45_dijkstra_ID23_for_condition
.main_call_dijkstra_45_dijkstra_ID23_for_condition:
	lw	VirtualReg_195, fuckLLVM_n
	slt	VirtualReg_196, VirtualReg_194, VirtualReg_195
	bnez	VirtualReg_196, .main_call_dijkstra_45_dijkstra_ID23_for_suite
	j	.main_call_dijkstra_45_dijkstra_ID23_for_out
.main_call_dijkstra_45_dijkstra_ID23_for_suite:
	li	VirtualReg_199, 4
	mul	VirtualReg_198, VirtualReg_194, VirtualReg_199
	add	VirtualReg_197, VirtualReg_193, VirtualReg_198
	lw	VirtualReg_200, fuckLLVM_INF
	sw	VirtualReg_200, 0(VirtualReg_197)
	li	VirtualReg_203, 4
	mul	VirtualReg_202, VirtualReg_194, VirtualReg_203
	add	VirtualReg_201, VirtualReg_179, VirtualReg_202
	li	VirtualReg_204, 0
	sw	VirtualReg_204, 0(VirtualReg_201)
	j	.main_call_dijkstra_45_dijkstra_ID23_for_incr
.main_call_dijkstra_45_dijkstra_ID23_for_incr:
	li	VirtualReg_205, 1
	add	VirtualReg_206, VirtualReg_194, VirtualReg_205
	mv	VirtualReg_194, VirtualReg_206
	j	.main_call_dijkstra_45_dijkstra_ID23_for_condition
.main_call_dijkstra_45_dijkstra_ID23_for_out:
	li	VirtualReg_209, 4
	mul	VirtualReg_208, VirtualReg_12, VirtualReg_209
	add	VirtualReg_207, VirtualReg_193, VirtualReg_208
	li	VirtualReg_210, 0
	sw	VirtualReg_210, 0(VirtualReg_207)
	li	VirtualReg_211, 8
	mv	a0, VirtualReg_211
	call	malloc
	mv	VirtualReg_212, a0
	mv	VirtualReg_213, VirtualReg_212
	j	.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_Heap_Node_entry
.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_out:
	mv	VirtualReg_214, VirtualReg_213
	li	VirtualReg_215, 8
	mv	a0, VirtualReg_215
	call	malloc
	mv	VirtualReg_216, a0
	mv	VirtualReg_217, VirtualReg_216
	j	.main_call_dijkstra_45_dijkstra_call_Node_37_out
.main_call_dijkstra_45_dijkstra_call_Node_37_out:
	mv	VirtualReg_218, VirtualReg_217
	addi	VirtualReg_219, VirtualReg_218, 4
	li	VirtualReg_220, 0
	sw	VirtualReg_220, 0(VirtualReg_219)
	addi	VirtualReg_221, VirtualReg_218, 0
	sw	VirtualReg_12, 0(VirtualReg_221)
	mv	VirtualReg_222, VirtualReg_218
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_out:
	li	VirtualReg_224, 0
	xor	VirtualReg_225, VirtualReg_223, VirtualReg_224
	sltiu	VirtualReg_225, VirtualReg_225, 1
	xori	VirtualReg_225, VirtualReg_225, 1
	bnez	VirtualReg_225, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_entry
	j	.main_call_dijkstra_45_dijkstra_ID59_while_out
.main_call_dijkstra_45_dijkstra_ID71_if_out:
	li	VirtualReg_229, 4
	mul	VirtualReg_227, VirtualReg_228, VirtualReg_229
	add	VirtualReg_226, VirtualReg_179, VirtualReg_227
	li	VirtualReg_230, 1
	sw	VirtualReg_230, 0(VirtualReg_226)
	lw	VirtualReg_231, fuckLLVM_g
	addi	VirtualReg_232, VirtualReg_231, 16
	lw	VirtualReg_233, 0(VirtualReg_232)
	li	VirtualReg_236, 4
	mul	VirtualReg_235, VirtualReg_228, VirtualReg_236
	add	VirtualReg_234, VirtualReg_233, VirtualReg_235
	lw	VirtualReg_237, 0(VirtualReg_234)
	mv	VirtualReg_238, VirtualReg_237
	j	.main_call_dijkstra_45_dijkstra_ID81_for_condition
.main_call_dijkstra_45_dijkstra_ID81_for_condition:
	li	VirtualReg_239, -1
	xor	VirtualReg_240, VirtualReg_238, VirtualReg_239
	sltiu	VirtualReg_240, VirtualReg_240, 1
	xori	VirtualReg_240, VirtualReg_240, 1
	bnez	VirtualReg_240, .main_call_dijkstra_45_dijkstra_ID81_for_suite
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
.main_call_dijkstra_45_dijkstra_ID81_for_suite:
	lw	VirtualReg_241, fuckLLVM_g
	addi	VirtualReg_242, VirtualReg_241, 0
	lw	VirtualReg_243, 0(VirtualReg_242)
	li	VirtualReg_246, 12
	mul	VirtualReg_245, VirtualReg_238, VirtualReg_246
	add	VirtualReg_244, VirtualReg_243, VirtualReg_245
	lw	VirtualReg_247, 0(VirtualReg_244)
	addi	VirtualReg_248, VirtualReg_247, 4
	lw	VirtualReg_249, 0(VirtualReg_248)
	lw	VirtualReg_250, fuckLLVM_g
	addi	VirtualReg_251, VirtualReg_250, 0
	lw	VirtualReg_252, 0(VirtualReg_251)
	li	VirtualReg_255, 12
	mul	VirtualReg_254, VirtualReg_238, VirtualReg_255
	add	VirtualReg_253, VirtualReg_252, VirtualReg_254
	lw	VirtualReg_256, 0(VirtualReg_253)
	addi	VirtualReg_257, VirtualReg_256, 8
	lw	VirtualReg_258, 0(VirtualReg_257)
	li	VirtualReg_261, 4
	mul	VirtualReg_260, VirtualReg_228, VirtualReg_261
	add	VirtualReg_259, VirtualReg_193, VirtualReg_260
	lw	VirtualReg_262, 0(VirtualReg_259)
	add	VirtualReg_263, VirtualReg_262, VirtualReg_258
	li	VirtualReg_266, 4
	mul	VirtualReg_265, VirtualReg_249, VirtualReg_266
	add	VirtualReg_264, VirtualReg_193, VirtualReg_265
	lw	VirtualReg_267, 0(VirtualReg_264)
	slt	VirtualReg_268, VirtualReg_263, VirtualReg_267
	xori	VirtualReg_268, VirtualReg_268, 1
	bnez	VirtualReg_268, .main_call_dijkstra_45_dijkstra_ID81_for_incr
	j	.main_call_dijkstra_45_dijkstra_ID115_if_out
.main_call_dijkstra_45_dijkstra_ID115_if_out:
	li	VirtualReg_271, 4
	mul	VirtualReg_270, VirtualReg_249, VirtualReg_271
	add	VirtualReg_269, VirtualReg_193, VirtualReg_270
	sw	VirtualReg_263, 0(VirtualReg_269)
	li	VirtualReg_272, 8
	mv	a0, VirtualReg_272
	call	malloc
	mv	VirtualReg_273, a0
	mv	VirtualReg_274, VirtualReg_273
	j	.main_call_dijkstra_45_dijkstra_call_Node_40_out
.main_call_dijkstra_45_dijkstra_call_Node_40_out:
	mv	VirtualReg_275, VirtualReg_274
	addi	VirtualReg_276, VirtualReg_275, 0
	sw	VirtualReg_249, 0(VirtualReg_276)
	addi	VirtualReg_277, VirtualReg_275, 4
	li	VirtualReg_280, 4
	mul	VirtualReg_279, VirtualReg_249, VirtualReg_280
	add	VirtualReg_278, VirtualReg_193, VirtualReg_279
	lw	VirtualReg_281, 0(VirtualReg_278)
	sw	VirtualReg_281, 0(VirtualReg_277)
	mv	VirtualReg_282, VirtualReg_275
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_entry
.main_call_dijkstra_45_dijkstra_ID81_for_incr:
	lw	VirtualReg_283, fuckLLVM_g
	addi	VirtualReg_284, VirtualReg_283, 8
	lw	VirtualReg_285, 0(VirtualReg_284)
	li	VirtualReg_288, 4
	mul	VirtualReg_287, VirtualReg_238, VirtualReg_288
	add	VirtualReg_286, VirtualReg_285, VirtualReg_287
	lw	VirtualReg_289, 0(VirtualReg_286)
	mv	VirtualReg_238, VirtualReg_289
	j	.main_call_dijkstra_45_dijkstra_ID81_for_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_out:
	mv	VirtualReg_291, VirtualReg_290
	addi	VirtualReg_292, VirtualReg_291, 0
	lw	VirtualReg_228, 0(VirtualReg_292)
	li	VirtualReg_295, 4
	mul	VirtualReg_294, VirtualReg_228, VirtualReg_295
	add	VirtualReg_293, VirtualReg_179, VirtualReg_294
	lw	VirtualReg_296, 0(VirtualReg_293)
	li	VirtualReg_297, 1
	xor	VirtualReg_298, VirtualReg_296, VirtualReg_297
	sltiu	VirtualReg_298, VirtualReg_298, 1
	bnez	VirtualReg_298, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
	j	.main_call_dijkstra_45_dijkstra_ID71_if_out
.main_call_dijkstra_45_dijkstra_ID59_while_out:
	mv	VirtualReg_15, VirtualReg_193
	j	.main_call_dijkstra_45_out
.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_Heap_Node_entry:
	addi	VirtualReg_299, VirtualReg_213, 0
	li	VirtualReg_300, 12
	mv	a0, VirtualReg_300
	call	malloc
	mv	VirtualReg_301, a0
	mv	VirtualReg_302, VirtualReg_301
	j	.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_Array_Node_entry
.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_out:
	mv	VirtualReg_303, VirtualReg_302
	sw	VirtualReg_303, 0(VirtualReg_299)
	j	.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_out
.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_Array_Node_entry:
	addi	VirtualReg_304, VirtualReg_302, 8
	li	VirtualReg_305, 0
	sw	VirtualReg_305, 0(VirtualReg_304)
	addi	VirtualReg_306, VirtualReg_302, 0
	li	VirtualReg_307, 132
	mv	a0, VirtualReg_307
	call	malloc
	mv	VirtualReg_308, a0
	mv	VirtualReg_309, VirtualReg_308
	li	VirtualReg_310, 16
	sw	VirtualReg_310, 0(VirtualReg_309)
	li	VirtualReg_313, 1
	li	VirtualReg_314, 4
	mul	VirtualReg_312, VirtualReg_313, VirtualReg_314
	add	VirtualReg_311, VirtualReg_309, VirtualReg_312
	mv	VirtualReg_315, VirtualReg_311
	mv	VirtualReg_316, VirtualReg_315
	sw	VirtualReg_316, 0(VirtualReg_306)
	j	.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_entry:
	addi	VirtualReg_317, VirtualReg_214, 0
	lw	VirtualReg_318, 0(VirtualReg_317)
	mv	VirtualReg_319, VirtualReg_222
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_out:
	li	VirtualReg_321, 1
	sub	VirtualReg_322, VirtualReg_320, VirtualReg_321
	mv	VirtualReg_323, VirtualReg_322
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID14_while_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID14_while_condition:
	li	VirtualReg_324, 0
	slt	VirtualReg_325, VirtualReg_324, VirtualReg_323
	bnez	VirtualReg_325, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID29_if_out:
	addi	VirtualReg_326, VirtualReg_214, 0
	lw	VirtualReg_327, 0(VirtualReg_326)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_out:
	mv	VirtualReg_323, VirtualReg_414
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID14_while_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_out:
	addi	VirtualReg_328, VirtualReg_214, 0
	lw	VirtualReg_329, 0(VirtualReg_328)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_out:
	addi	VirtualReg_330, VirtualReg_214, 0
	lw	VirtualReg_331, 0(VirtualReg_330)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_out:
	slt	VirtualReg_334, VirtualReg_332, VirtualReg_333
	xori	VirtualReg_334, VirtualReg_334, 1
	bnez	VirtualReg_334, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID29_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out:
	addi	VirtualReg_335, VirtualReg_318, 0
	lw	VirtualReg_336, 0(VirtualReg_335)
	mv	VirtualReg_337, VirtualReg_336
	li	VirtualReg_340, -1
	li	VirtualReg_341, 4
	mul	VirtualReg_339, VirtualReg_340, VirtualReg_341
	add	VirtualReg_338, VirtualReg_337, VirtualReg_339
	lw	VirtualReg_342, 0(VirtualReg_338)
	xor	VirtualReg_344, VirtualReg_343, VirtualReg_342
	sltiu	VirtualReg_344, VirtualReg_344, 1
	bnez	VirtualReg_344, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out:
	addi	VirtualReg_345, VirtualReg_318, 0
	lw	VirtualReg_346, 0(VirtualReg_345)
	addi	VirtualReg_347, VirtualReg_318, 8
	lw	VirtualReg_348, 0(VirtualReg_347)
	li	VirtualReg_351, 8
	mul	VirtualReg_350, VirtualReg_348, VirtualReg_351
	add	VirtualReg_349, VirtualReg_346, VirtualReg_350
	mv	VirtualReg_352, VirtualReg_319
	sw	VirtualReg_352, 0(VirtualReg_349)
	addi	VirtualReg_353, VirtualReg_318, 8
	lw	VirtualReg_354, 0(VirtualReg_353)
	li	VirtualReg_355, 1
	add	VirtualReg_356, VirtualReg_354, VirtualReg_355
	sw	VirtualReg_356, 0(VirtualReg_353)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry:
	addi	VirtualReg_357, VirtualReg_318, 8
	lw	VirtualReg_343, 0(VirtualReg_357)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry:
	addi	VirtualReg_358, VirtualReg_318, 0
	lw	VirtualReg_359, 0(VirtualReg_358)
	mv	VirtualReg_360, VirtualReg_359
	addi	VirtualReg_361, VirtualReg_318, 8
	lw	VirtualReg_362, 0(VirtualReg_361)
	addi	VirtualReg_363, VirtualReg_318, 0
	mv	VirtualReg_364, VirtualReg_360
	li	VirtualReg_367, -1
	li	VirtualReg_368, 4
	mul	VirtualReg_366, VirtualReg_367, VirtualReg_368
	add	VirtualReg_365, VirtualReg_364, VirtualReg_366
	lw	VirtualReg_369, 0(VirtualReg_365)
	li	VirtualReg_370, 2
	mul	VirtualReg_371, VirtualReg_369, VirtualReg_370
	mv	VirtualReg_372, VirtualReg_371
	li	VirtualReg_373, 8
	mul	VirtualReg_374, VirtualReg_372, VirtualReg_373
	li	VirtualReg_375, 4
	add	VirtualReg_376, VirtualReg_374, VirtualReg_375
	mv	a0, VirtualReg_376
	call	malloc
	mv	VirtualReg_377, a0
	mv	VirtualReg_378, VirtualReg_377
	sw	VirtualReg_371, 0(VirtualReg_378)
	li	VirtualReg_381, 1
	li	VirtualReg_382, 4
	mul	VirtualReg_380, VirtualReg_381, VirtualReg_382
	add	VirtualReg_379, VirtualReg_378, VirtualReg_380
	mv	VirtualReg_383, VirtualReg_379
	mv	VirtualReg_384, VirtualReg_383
	sw	VirtualReg_384, 0(VirtualReg_363)
	addi	VirtualReg_385, VirtualReg_318, 8
	li	VirtualReg_386, 0
	sw	VirtualReg_386, 0(VirtualReg_385)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition:
	addi	VirtualReg_387, VirtualReg_318, 8
	lw	VirtualReg_388, 0(VirtualReg_387)
	xor	VirtualReg_389, VirtualReg_388, VirtualReg_362
	sltiu	VirtualReg_389, VirtualReg_389, 1
	xori	VirtualReg_389, VirtualReg_389, 1
	bnez	VirtualReg_389, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite:
	addi	VirtualReg_390, VirtualReg_318, 0
	lw	VirtualReg_391, 0(VirtualReg_390)
	addi	VirtualReg_392, VirtualReg_318, 8
	lw	VirtualReg_393, 0(VirtualReg_392)
	li	VirtualReg_396, 8
	mul	VirtualReg_395, VirtualReg_393, VirtualReg_396
	add	VirtualReg_394, VirtualReg_391, VirtualReg_395
	addi	VirtualReg_397, VirtualReg_318, 8
	lw	VirtualReg_398, 0(VirtualReg_397)
	li	VirtualReg_401, 8
	mul	VirtualReg_400, VirtualReg_398, VirtualReg_401
	add	VirtualReg_399, VirtualReg_360, VirtualReg_400
	lw	VirtualReg_402, 0(VirtualReg_399)
	mv	VirtualReg_403, VirtualReg_402
	sw	VirtualReg_403, 0(VirtualReg_394)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr:
	addi	VirtualReg_404, VirtualReg_318, 8
	lw	VirtualReg_405, 0(VirtualReg_404)
	li	VirtualReg_406, 1
	add	VirtualReg_407, VirtualReg_405, VirtualReg_406
	sw	VirtualReg_407, 0(VirtualReg_404)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry:
	addi	VirtualReg_408, VirtualReg_214, 0
	lw	VirtualReg_409, 0(VirtualReg_408)
	mv	a0, VirtualReg_409
	call	classArray_Node_size
	mv	VirtualReg_320, a0
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry:
	addi	VirtualReg_410, VirtualReg_327, 0
	lw	VirtualReg_411, 0(VirtualReg_410)
	li	VirtualReg_415, 8
	mul	VirtualReg_413, VirtualReg_414, VirtualReg_415
	add	VirtualReg_412, VirtualReg_411, VirtualReg_413
	lw	VirtualReg_416, 0(VirtualReg_412)
	mv	VirtualReg_417, VirtualReg_416
	addi	VirtualReg_418, VirtualReg_327, 0
	lw	VirtualReg_419, 0(VirtualReg_418)
	li	VirtualReg_422, 8
	mul	VirtualReg_421, VirtualReg_414, VirtualReg_422
	add	VirtualReg_420, VirtualReg_419, VirtualReg_421
	addi	VirtualReg_423, VirtualReg_327, 0
	lw	VirtualReg_424, 0(VirtualReg_423)
	li	VirtualReg_427, 8
	mul	VirtualReg_426, VirtualReg_323, VirtualReg_427
	add	VirtualReg_425, VirtualReg_424, VirtualReg_426
	lw	VirtualReg_428, 0(VirtualReg_425)
	mv	VirtualReg_429, VirtualReg_428
	sw	VirtualReg_429, 0(VirtualReg_420)
	addi	VirtualReg_430, VirtualReg_327, 0
	lw	VirtualReg_431, 0(VirtualReg_430)
	li	VirtualReg_434, 8
	mul	VirtualReg_433, VirtualReg_323, VirtualReg_434
	add	VirtualReg_432, VirtualReg_431, VirtualReg_433
	mv	VirtualReg_435, VirtualReg_417
	sw	VirtualReg_435, 0(VirtualReg_432)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry:
	li	VirtualReg_436, 1
	sub	VirtualReg_437, VirtualReg_323, VirtualReg_436
	li	VirtualReg_438, 2
	div	VirtualReg_414, VirtualReg_437, VirtualReg_438
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry:
	addi	VirtualReg_439, VirtualReg_329, 0
	lw	VirtualReg_440, 0(VirtualReg_439)
	li	VirtualReg_443, 8
	mul	VirtualReg_442, VirtualReg_414, VirtualReg_443
	add	VirtualReg_441, VirtualReg_440, VirtualReg_442
	lw	VirtualReg_444, 0(VirtualReg_441)
	mv	VirtualReg_445, VirtualReg_444
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_classNode_key__entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_classNode_key__entry:
	addi	VirtualReg_446, VirtualReg_445, 4
	lw	VirtualReg_447, 0(VirtualReg_446)
	li	VirtualReg_448, 0
	sub	VirtualReg_332, VirtualReg_448, VirtualReg_447
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry:
	addi	VirtualReg_449, VirtualReg_331, 0
	lw	VirtualReg_450, 0(VirtualReg_449)
	li	VirtualReg_453, 8
	mul	VirtualReg_452, VirtualReg_323, VirtualReg_453
	add	VirtualReg_451, VirtualReg_450, VirtualReg_452
	lw	VirtualReg_454, 0(VirtualReg_451)
	mv	VirtualReg_455, VirtualReg_454
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_classNode_key__entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_classNode_key__entry:
	addi	VirtualReg_456, VirtualReg_455, 4
	lw	VirtualReg_457, 0(VirtualReg_456)
	li	VirtualReg_458, 0
	sub	VirtualReg_333, VirtualReg_458, VirtualReg_457
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry:
	addi	VirtualReg_459, VirtualReg_214, 0
	lw	VirtualReg_460, 0(VirtualReg_459)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry:
	addi	VirtualReg_461, VirtualReg_460, 8
	lw	VirtualReg_223, 0(VirtualReg_461)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_entry:
	addi	VirtualReg_462, VirtualReg_214, 0
	lw	VirtualReg_463, 0(VirtualReg_462)
	mv	VirtualReg_464, VirtualReg_282
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_out:
	li	VirtualReg_466, 1
	sub	VirtualReg_467, VirtualReg_465, VirtualReg_466
	mv	VirtualReg_468, VirtualReg_467
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID14_while_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID14_while_condition:
	li	VirtualReg_469, 0
	slt	VirtualReg_470, VirtualReg_469, VirtualReg_468
	bnez	VirtualReg_470, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry
	j	.main_call_dijkstra_45_dijkstra_ID81_for_incr
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID29_if_out:
	addi	VirtualReg_471, VirtualReg_214, 0
	lw	VirtualReg_472, 0(VirtualReg_471)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_out:
	mv	VirtualReg_468, VirtualReg_559
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID14_while_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_out:
	addi	VirtualReg_473, VirtualReg_214, 0
	lw	VirtualReg_474, 0(VirtualReg_473)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_out:
	addi	VirtualReg_475, VirtualReg_214, 0
	lw	VirtualReg_476, 0(VirtualReg_475)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_out:
	slt	VirtualReg_479, VirtualReg_477, VirtualReg_478
	xori	VirtualReg_479, VirtualReg_479, 1
	bnez	VirtualReg_479, .main_call_dijkstra_45_dijkstra_ID81_for_incr
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID29_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out:
	addi	VirtualReg_480, VirtualReg_463, 0
	lw	VirtualReg_481, 0(VirtualReg_480)
	mv	VirtualReg_482, VirtualReg_481
	li	VirtualReg_485, -1
	li	VirtualReg_486, 4
	mul	VirtualReg_484, VirtualReg_485, VirtualReg_486
	add	VirtualReg_483, VirtualReg_482, VirtualReg_484
	lw	VirtualReg_487, 0(VirtualReg_483)
	xor	VirtualReg_489, VirtualReg_488, VirtualReg_487
	sltiu	VirtualReg_489, VirtualReg_489, 1
	bnez	VirtualReg_489, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out:
	addi	VirtualReg_490, VirtualReg_463, 0
	lw	VirtualReg_491, 0(VirtualReg_490)
	addi	VirtualReg_492, VirtualReg_463, 8
	lw	VirtualReg_493, 0(VirtualReg_492)
	li	VirtualReg_496, 8
	mul	VirtualReg_495, VirtualReg_493, VirtualReg_496
	add	VirtualReg_494, VirtualReg_491, VirtualReg_495
	mv	VirtualReg_497, VirtualReg_464
	sw	VirtualReg_497, 0(VirtualReg_494)
	addi	VirtualReg_498, VirtualReg_463, 8
	lw	VirtualReg_499, 0(VirtualReg_498)
	li	VirtualReg_500, 1
	add	VirtualReg_501, VirtualReg_499, VirtualReg_500
	sw	VirtualReg_501, 0(VirtualReg_498)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry:
	addi	VirtualReg_502, VirtualReg_463, 8
	lw	VirtualReg_488, 0(VirtualReg_502)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry:
	addi	VirtualReg_503, VirtualReg_463, 0
	lw	VirtualReg_504, 0(VirtualReg_503)
	mv	VirtualReg_505, VirtualReg_504
	addi	VirtualReg_506, VirtualReg_463, 8
	lw	VirtualReg_507, 0(VirtualReg_506)
	addi	VirtualReg_508, VirtualReg_463, 0
	mv	VirtualReg_509, VirtualReg_505
	li	VirtualReg_512, -1
	li	VirtualReg_513, 4
	mul	VirtualReg_511, VirtualReg_512, VirtualReg_513
	add	VirtualReg_510, VirtualReg_509, VirtualReg_511
	lw	VirtualReg_514, 0(VirtualReg_510)
	li	VirtualReg_515, 2
	mul	VirtualReg_516, VirtualReg_514, VirtualReg_515
	mv	VirtualReg_517, VirtualReg_516
	li	VirtualReg_518, 8
	mul	VirtualReg_519, VirtualReg_517, VirtualReg_518
	li	VirtualReg_520, 4
	add	VirtualReg_521, VirtualReg_519, VirtualReg_520
	mv	a0, VirtualReg_521
	call	malloc
	mv	VirtualReg_522, a0
	mv	VirtualReg_523, VirtualReg_522
	sw	VirtualReg_516, 0(VirtualReg_523)
	li	VirtualReg_526, 1
	li	VirtualReg_527, 4
	mul	VirtualReg_525, VirtualReg_526, VirtualReg_527
	add	VirtualReg_524, VirtualReg_523, VirtualReg_525
	mv	VirtualReg_528, VirtualReg_524
	mv	VirtualReg_529, VirtualReg_528
	sw	VirtualReg_529, 0(VirtualReg_508)
	addi	VirtualReg_530, VirtualReg_463, 8
	li	VirtualReg_531, 0
	sw	VirtualReg_531, 0(VirtualReg_530)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition:
	addi	VirtualReg_532, VirtualReg_463, 8
	lw	VirtualReg_533, 0(VirtualReg_532)
	xor	VirtualReg_534, VirtualReg_533, VirtualReg_507
	sltiu	VirtualReg_534, VirtualReg_534, 1
	xori	VirtualReg_534, VirtualReg_534, 1
	bnez	VirtualReg_534, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite:
	addi	VirtualReg_535, VirtualReg_463, 0
	lw	VirtualReg_536, 0(VirtualReg_535)
	addi	VirtualReg_537, VirtualReg_463, 8
	lw	VirtualReg_538, 0(VirtualReg_537)
	li	VirtualReg_541, 8
	mul	VirtualReg_540, VirtualReg_538, VirtualReg_541
	add	VirtualReg_539, VirtualReg_536, VirtualReg_540
	addi	VirtualReg_542, VirtualReg_463, 8
	lw	VirtualReg_543, 0(VirtualReg_542)
	li	VirtualReg_546, 8
	mul	VirtualReg_545, VirtualReg_543, VirtualReg_546
	add	VirtualReg_544, VirtualReg_505, VirtualReg_545
	lw	VirtualReg_547, 0(VirtualReg_544)
	mv	VirtualReg_548, VirtualReg_547
	sw	VirtualReg_548, 0(VirtualReg_539)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr:
	addi	VirtualReg_549, VirtualReg_463, 8
	lw	VirtualReg_550, 0(VirtualReg_549)
	li	VirtualReg_551, 1
	add	VirtualReg_552, VirtualReg_550, VirtualReg_551
	sw	VirtualReg_552, 0(VirtualReg_549)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry:
	addi	VirtualReg_553, VirtualReg_214, 0
	lw	VirtualReg_554, 0(VirtualReg_553)
	mv	a0, VirtualReg_554
	call	classArray_Node_size
	mv	VirtualReg_465, a0
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry:
	addi	VirtualReg_555, VirtualReg_472, 0
	lw	VirtualReg_556, 0(VirtualReg_555)
	li	VirtualReg_560, 8
	mul	VirtualReg_558, VirtualReg_559, VirtualReg_560
	add	VirtualReg_557, VirtualReg_556, VirtualReg_558
	lw	VirtualReg_561, 0(VirtualReg_557)
	mv	VirtualReg_562, VirtualReg_561
	addi	VirtualReg_563, VirtualReg_472, 0
	lw	VirtualReg_564, 0(VirtualReg_563)
	li	VirtualReg_567, 8
	mul	VirtualReg_566, VirtualReg_559, VirtualReg_567
	add	VirtualReg_565, VirtualReg_564, VirtualReg_566
	addi	VirtualReg_568, VirtualReg_472, 0
	lw	VirtualReg_569, 0(VirtualReg_568)
	li	VirtualReg_572, 8
	mul	VirtualReg_571, VirtualReg_468, VirtualReg_572
	add	VirtualReg_570, VirtualReg_569, VirtualReg_571
	lw	VirtualReg_573, 0(VirtualReg_570)
	mv	VirtualReg_574, VirtualReg_573
	sw	VirtualReg_574, 0(VirtualReg_565)
	addi	VirtualReg_575, VirtualReg_472, 0
	lw	VirtualReg_576, 0(VirtualReg_575)
	li	VirtualReg_579, 8
	mul	VirtualReg_578, VirtualReg_468, VirtualReg_579
	add	VirtualReg_577, VirtualReg_576, VirtualReg_578
	mv	VirtualReg_580, VirtualReg_562
	sw	VirtualReg_580, 0(VirtualReg_577)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry:
	li	VirtualReg_581, 1
	sub	VirtualReg_582, VirtualReg_468, VirtualReg_581
	li	VirtualReg_583, 2
	div	VirtualReg_559, VirtualReg_582, VirtualReg_583
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry:
	addi	VirtualReg_584, VirtualReg_474, 0
	lw	VirtualReg_585, 0(VirtualReg_584)
	li	VirtualReg_588, 8
	mul	VirtualReg_587, VirtualReg_559, VirtualReg_588
	add	VirtualReg_586, VirtualReg_585, VirtualReg_587
	lw	VirtualReg_589, 0(VirtualReg_586)
	mv	VirtualReg_590, VirtualReg_589
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_classNode_key__entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_classNode_key__entry:
	addi	VirtualReg_591, VirtualReg_590, 4
	lw	VirtualReg_592, 0(VirtualReg_591)
	li	VirtualReg_593, 0
	sub	VirtualReg_477, VirtualReg_593, VirtualReg_592
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry:
	addi	VirtualReg_594, VirtualReg_476, 0
	lw	VirtualReg_595, 0(VirtualReg_594)
	li	VirtualReg_598, 8
	mul	VirtualReg_597, VirtualReg_468, VirtualReg_598
	add	VirtualReg_596, VirtualReg_595, VirtualReg_597
	lw	VirtualReg_599, 0(VirtualReg_596)
	mv	VirtualReg_600, VirtualReg_599
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_classNode_key__entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_classNode_key__entry:
	addi	VirtualReg_601, VirtualReg_600, 4
	lw	VirtualReg_602, 0(VirtualReg_601)
	li	VirtualReg_603, 0
	sub	VirtualReg_478, VirtualReg_603, VirtualReg_602
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_entry:
	addi	VirtualReg_604, VirtualReg_214, 0
	lw	VirtualReg_605, 0(VirtualReg_604)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_classArray_Node_front_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_out:
	mv	VirtualReg_607, VirtualReg_606
	addi	VirtualReg_608, VirtualReg_214, 0
	lw	VirtualReg_609, 0(VirtualReg_608)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_classHeap_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_out:
	li	VirtualReg_611, 1
	sub	VirtualReg_612, VirtualReg_610, VirtualReg_611
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_classArray_Node_swap_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_out:
	addi	VirtualReg_613, VirtualReg_214, 0
	lw	VirtualReg_614, 0(VirtualReg_613)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_pop_back_16_classArray_Node_pop_back_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out:
	mv	VirtualReg_290, VirtualReg_607
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_classArray_Node_front_entry:
	addi	VirtualReg_615, VirtualReg_605, 0
	lw	VirtualReg_616, 0(VirtualReg_615)
	li	VirtualReg_619, 0
	li	VirtualReg_620, 8
	mul	VirtualReg_618, VirtualReg_619, VirtualReg_620
	add	VirtualReg_617, VirtualReg_616, VirtualReg_618
	lw	VirtualReg_621, 0(VirtualReg_617)
	mv	VirtualReg_606, VirtualReg_621
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_classHeap_Node_size_entry:
	addi	VirtualReg_622, VirtualReg_214, 0
	lw	VirtualReg_623, 0(VirtualReg_622)
	mv	a0, VirtualReg_623
	call	classArray_Node_size
	mv	VirtualReg_610, a0
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_classArray_Node_swap_entry:
	addi	VirtualReg_624, VirtualReg_609, 0
	lw	VirtualReg_625, 0(VirtualReg_624)
	li	VirtualReg_628, 0
	li	VirtualReg_629, 8
	mul	VirtualReg_627, VirtualReg_628, VirtualReg_629
	add	VirtualReg_626, VirtualReg_625, VirtualReg_627
	lw	VirtualReg_630, 0(VirtualReg_626)
	mv	VirtualReg_631, VirtualReg_630
	addi	VirtualReg_632, VirtualReg_609, 0
	lw	VirtualReg_633, 0(VirtualReg_632)
	li	VirtualReg_636, 0
	li	VirtualReg_637, 8
	mul	VirtualReg_635, VirtualReg_636, VirtualReg_637
	add	VirtualReg_634, VirtualReg_633, VirtualReg_635
	addi	VirtualReg_638, VirtualReg_609, 0
	lw	VirtualReg_639, 0(VirtualReg_638)
	li	VirtualReg_642, 8
	mul	VirtualReg_641, VirtualReg_612, VirtualReg_642
	add	VirtualReg_640, VirtualReg_639, VirtualReg_641
	lw	VirtualReg_643, 0(VirtualReg_640)
	mv	VirtualReg_644, VirtualReg_643
	sw	VirtualReg_644, 0(VirtualReg_634)
	addi	VirtualReg_645, VirtualReg_609, 0
	lw	VirtualReg_646, 0(VirtualReg_645)
	li	VirtualReg_649, 8
	mul	VirtualReg_648, VirtualReg_612, VirtualReg_649
	add	VirtualReg_647, VirtualReg_646, VirtualReg_648
	mv	VirtualReg_650, VirtualReg_631
	sw	VirtualReg_650, 0(VirtualReg_647)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_pop_back_16_classArray_Node_pop_back_entry:
	addi	VirtualReg_651, VirtualReg_614, 8
	lw	VirtualReg_652, 0(VirtualReg_651)
	li	VirtualReg_653, 1
	sub	VirtualReg_654, VirtualReg_652, VirtualReg_653
	sw	VirtualReg_654, 0(VirtualReg_651)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry:
	mv	a0, VirtualReg_214
	li	VirtualReg_655, 0
	mv	a1, VirtualReg_655
	call	classHeap_Node_lchild
	mv	VirtualReg_656, a0
	mv	a0, VirtualReg_214
	li	VirtualReg_657, 0
	mv	a1, VirtualReg_657
	call	classHeap_Node_rchild
	mv	VirtualReg_658, a0
	mv	a0, VirtualReg_214
	call	classHeap_Node_size
	mv	VirtualReg_659, a0
	slt	VirtualReg_660, VirtualReg_656, VirtualReg_659
	bnez	VirtualReg_660, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_true
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry_mid
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry_mid:
	li	VirtualReg_698, 0
	mv	VirtualReg_671, VirtualReg_698
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_true:
	addi	VirtualReg_661, VirtualReg_214, 0
	lw	VirtualReg_662, 0(VirtualReg_661)
	mv	a0, VirtualReg_662
	mv	a1, VirtualReg_656
	call	classArray_Node_get
	mv	VirtualReg_663, a0
	mv	a0, VirtualReg_663
	call	classNode_key_
	mv	VirtualReg_664, a0
	addi	VirtualReg_665, VirtualReg_214, 0
	lw	VirtualReg_666, 0(VirtualReg_665)
	mv	a0, VirtualReg_666
	li	VirtualReg_667, 0
	mv	a1, VirtualReg_667
	call	classArray_Node_get
	mv	VirtualReg_668, a0
	mv	a0, VirtualReg_668
	call	classNode_key_
	mv	VirtualReg_669, a0
	slt	VirtualReg_670, VirtualReg_669, VirtualReg_664
	mv	VirtualReg_671, VirtualReg_670
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out_mid:
	li	VirtualReg_699, 0
	mv	VirtualReg_672, VirtualReg_699
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out:
	bnez	VirtualReg_671, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_true
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out_mid
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out_mid:
	li	VirtualReg_700, 0
	mv	VirtualReg_684, VirtualReg_700
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_true:
	mv	VirtualReg_672, VirtualReg_656
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out_mid:
	mv	VirtualReg_685, VirtualReg_672
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out:
	mv	a0, VirtualReg_214
	call	classHeap_Node_size
	mv	VirtualReg_673, a0
	slt	VirtualReg_674, VirtualReg_658, VirtualReg_673
	bnez	VirtualReg_674, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_true
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out_mid
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_true:
	addi	VirtualReg_675, VirtualReg_214, 0
	lw	VirtualReg_676, 0(VirtualReg_675)
	mv	a0, VirtualReg_676
	mv	a1, VirtualReg_658
	call	classArray_Node_get
	mv	VirtualReg_677, a0
	mv	a0, VirtualReg_677
	call	classNode_key_
	mv	VirtualReg_678, a0
	addi	VirtualReg_679, VirtualReg_214, 0
	lw	VirtualReg_680, 0(VirtualReg_679)
	mv	a0, VirtualReg_680
	mv	a1, VirtualReg_672
	call	classArray_Node_get
	mv	VirtualReg_681, a0
	mv	a0, VirtualReg_681
	call	classNode_key_
	mv	VirtualReg_682, a0
	slt	VirtualReg_683, VirtualReg_682, VirtualReg_678
	mv	VirtualReg_684, VirtualReg_683
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out:
	bnez	VirtualReg_684, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_true
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out_mid
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_true:
	mv	VirtualReg_685, VirtualReg_658
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out:
	li	VirtualReg_686, 0
	xor	VirtualReg_687, VirtualReg_685, VirtualReg_686
	sltiu	VirtualReg_687, VirtualReg_687, 1
	bnez	VirtualReg_687, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID48_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID48_if_out:
	addi	VirtualReg_688, VirtualReg_214, 0
	lw	VirtualReg_689, 0(VirtualReg_688)
	mv	a0, VirtualReg_689
	li	VirtualReg_690, 0
	mv	a1, VirtualReg_690
	mv	a2, VirtualReg_685
	call	classArray_Node_swap
	mv	a0, VirtualReg_214
	mv	a1, VirtualReg_685
	call	classHeap_Node_maxHeapify
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out
.main_return:
	li	VirtualReg_691, 0
	mv	a0, VirtualReg_691
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

